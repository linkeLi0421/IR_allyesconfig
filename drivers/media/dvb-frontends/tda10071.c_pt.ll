; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/tda10071.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/tda10071.c"
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
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tda10071_reg_val_mask = type { i8, i8, i8 }
%struct.tda10071_modcod = type { i32, i32, i32, i8 }
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
%struct.tda10071_dev = type { %struct.dvb_frontend, ptr, ptr, %struct.mutex, i32, i16, i8, i8, i8, i8, i8, i32, i32, i32, i8, i64, i64 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.86], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.86 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.87 }>
%union.anon.87 = type { i64 }
%struct.tda10071_platform_data = type { i32, i16, i8, i8, i8, i8, ptr }
%struct.tda10071_cmd = type { [30 x i8], i8 }
%struct.firmware = type { i32, ptr, ptr }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }
%struct.dvb_diseqc_slave_reply = type { [4 x i8], i8, i32 }

@__initcall__kmod_tda10071__328_1250_tda10071_driver_init6 = internal global ptr @tda10071_driver_init, section ".initcall6.init", align 4
@tda10071_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tda10071_probe, ptr @tda10071_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tda10071_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tda10071_driver_exit = internal global ptr @tda10071_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author329 = internal constant [47 x i8] c"tda10071.author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description330 = internal constant [62 x i8] c"tda10071.description=NXP TDA10071 DVB-S/S2 demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file331 = internal constant [51 x i8] c"tda10071.file=drivers/media/dvb-frontends/tda10071\00", section ".modinfo", align 1
@__UNIQUE_ID_license332 = internal constant [21 x i8] c"tda10071.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware333 = internal constant [37 x i8] c"tda10071.firmware=dvb-fe-tda10071.fw\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tda10071\00", [23 x i8] zeroinitializer }, align 32
@tda10071_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tda10071_cx24118\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tda10071_probe.regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@tda10071_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&dev->cmd_execute_mutex\00", [40 x i8] zeroinitializer }, align 32
@tda10071_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"tda10071:1174:(&regmap_config)->lock\00", [59 x i8] zeroinitializer }, align 32
@tda10071_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"NXP TDA10071\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 0, i32 5000000, i32 1000000, i32 45000000, i32 0, i32 1342179327 }, [8 x i8] c"\05\06\00\00\00\00\00\00", ptr null, ptr null, ptr null, ptr @tda10071_init, ptr @tda10071_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tda10071_set_frontend, ptr @tda10071_get_tune_settings, ptr @tda10071_get_frontend, ptr @tda10071_read_status, ptr @tda10071_read_ber, ptr @tda10071_read_signal_strength, ptr @tda10071_read_snr, ptr @tda10071_read_ucblocks, ptr null, ptr @tda10071_diseqc_send_master_cmd, ptr @tda10071_diseqc_recv_slave_reply, ptr @tda10071_diseqc_send_burst, ptr @tda10071_set_tone, ptr @tda10071_set_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@tda10071_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1215, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"NXP TDA10071 successfully identified\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda10071_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/dvb-frontends/tda10071.c\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tda10071_probe._entry_ptr = internal global ptr @tda10071_probe._entry, section ".printk_index", align 4
@tda10071_probe.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.8, i8 1, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"failed=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dvb-fe-tda10071.fw\00", [45 x i8] zeroinitializer }, align 32
@__const.tda10071_init.tab = private unnamed_addr constant [10 x %struct.tda10071_reg_val_mask] [%struct.tda10071_reg_val_mask { i8 -51, i8 0, i8 7 }, %struct.tda10071_reg_val_mask { i8 -128, i8 0, i8 2 }, %struct.tda10071_reg_val_mask { i8 -51, i8 0, i8 -64 }, %struct.tda10071_reg_val_mask { i8 -50, i8 0, i8 27 }, %struct.tda10071_reg_val_mask { i8 -99, i8 0, i8 1 }, %struct.tda10071_reg_val_mask { i8 -99, i8 0, i8 2 }, %struct.tda10071_reg_val_mask { i8 -98, i8 0, i8 1 }, %struct.tda10071_reg_val_mask { i8 -121, i8 0, i8 -128 }, %struct.tda10071_reg_val_mask { i8 -50, i8 0, i8 8 }, %struct.tda10071_reg_val_mask { i8 -50, i8 0, i8 16 }], align 1
@tda10071_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.5, i32 844, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [120 x i8], [40 x i8] } { [120 x i8] c"did not find the firmware file '%s' (status %d). You can use <kernel_dir>/scripts/get_dvb_firmware to get the firmware\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tda10071_init\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@tda10071_init._entry_ptr = internal global ptr @tda10071_init._entry, section ".printk_index", align 4
@tda10071_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.5, i32 875, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"found a '%s' in cold state, will try to load a firmware\0A\00", [39 x i8] zeroinitializer }, align 32
@tda10071_init._entry_ptr.15 = internal global ptr @tda10071_init._entry.13, section ".printk_index", align 4
@tda10071_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.5, i32 877, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"downloading firmware from file '%s'\0A\00", [59 x i8] zeroinitializer }, align 32
@tda10071_init._entry_ptr.18 = internal global ptr @tda10071_init._entry.16, section ".printk_index", align 4
@tda10071_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.11, ptr @.str.5, i32 892, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"firmware download failed=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@tda10071_init._entry_ptr.21 = internal global ptr @tda10071_init._entry.19, section ".printk_index", align 4
@tda10071_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.11, ptr @.str.5, i32 915, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"firmware did not run\0A\00", [42 x i8] zeroinitializer }, align 32
@tda10071_init._entry_ptr.24 = internal global ptr @tda10071_init._entry.22, section ".printk_index", align 4
@tda10071_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.11, ptr @.str.5, i32 933, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"firmware version %d.%d.%d.%d\0A\00", [34 x i8] zeroinitializer }, align 32
@tda10071_init._entry_ptr.27 = internal global ptr @tda10071_init._entry.25, section ".printk_index", align 4
@tda10071_init._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.11, ptr @.str.5, i32 935, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"found a '%s' in warm state\0A\00", [36 x i8] zeroinitializer }, align 32
@tda10071_init._entry_ptr.30 = internal global ptr @tda10071_init._entry.28, section ".printk_index", align 4
@tda10071_init.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.5, ptr @.str.8, i8 1, i8 2, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@tda10071_cmd_execute.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.5, ptr @.str.32, i8 0, i8 18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tda10071_cmd_execute\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"loop=%d\0A\00", [23 x i8] zeroinitializer }, align 32
@tda10071_cmd_execute.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.5, ptr @.str.8, i8 0, i8 21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__const.tda10071_sleep.tab = private unnamed_addr constant [10 x %struct.tda10071_reg_val_mask] [%struct.tda10071_reg_val_mask { i8 -51, i8 7, i8 7 }, %struct.tda10071_reg_val_mask { i8 -128, i8 2, i8 2 }, %struct.tda10071_reg_val_mask { i8 -51, i8 -64, i8 -64 }, %struct.tda10071_reg_val_mask { i8 -50, i8 27, i8 27 }, %struct.tda10071_reg_val_mask { i8 -99, i8 1, i8 1 }, %struct.tda10071_reg_val_mask { i8 -99, i8 2, i8 2 }, %struct.tda10071_reg_val_mask { i8 -98, i8 1, i8 1 }, %struct.tda10071_reg_val_mask { i8 -121, i8 -128, i8 -128 }, %struct.tda10071_reg_val_mask { i8 -50, i8 8, i8 8 }, %struct.tda10071_reg_val_mask { i8 -50, i8 16, i8 16 }], align 1
@tda10071_sleep.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.5, ptr @.str.8, i8 1, i8 13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda10071_sleep\00", [17 x i8] zeroinitializer }, align 32
@tda10071_set_frontend.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.5, ptr @.str.35, i8 0, i8 -116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tda10071_set_frontend\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"delivery_system=%d modulation=%d frequency=%u symbol_rate=%d inversion=%d pilot=%d rolloff=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@tda10071_set_frontend.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.5, ptr @.str.36, i8 0, i8 -111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"invalid inversion\0A\00", [45 x i8] zeroinitializer }, align 32
@tda10071_set_frontend.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.5, ptr @.str.37, i8 0, i8 -104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"invalid rolloff\0A\00", [47 x i8] zeroinitializer }, align 32
@tda10071_set_frontend.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.5, ptr @.str.38, i8 0, i8 -100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"invalid pilot\0A\00", [17 x i8] zeroinitializer }, align 32
@tda10071_set_frontend.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.5, ptr @.str.39, i8 0, i8 -99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid delivery_system\0A\00", [39 x i8] zeroinitializer }, align 32
@TDA10071_MODCOD = internal constant { [22 x %struct.tda10071_modcod], [64 x i8] } { [22 x %struct.tda10071_modcod] [%struct.tda10071_modcod { i32 6, i32 0, i32 9, i8 0 }, %struct.tda10071_modcod { i32 6, i32 0, i32 1, i8 4 }, %struct.tda10071_modcod { i32 6, i32 0, i32 10, i8 5 }, %struct.tda10071_modcod { i32 6, i32 0, i32 2, i8 6 }, %struct.tda10071_modcod { i32 6, i32 0, i32 3, i8 7 }, %struct.tda10071_modcod { i32 6, i32 0, i32 4, i8 8 }, %struct.tda10071_modcod { i32 6, i32 0, i32 5, i8 9 }, %struct.tda10071_modcod { i32 6, i32 0, i32 8, i8 10 }, %struct.tda10071_modcod { i32 6, i32 0, i32 11, i8 11 }, %struct.tda10071_modcod { i32 6, i32 9, i32 9, i8 0 }, %struct.tda10071_modcod { i32 6, i32 9, i32 10, i8 12 }, %struct.tda10071_modcod { i32 6, i32 9, i32 2, i8 13 }, %struct.tda10071_modcod { i32 6, i32 9, i32 3, i8 14 }, %struct.tda10071_modcod { i32 6, i32 9, i32 5, i8 15 }, %struct.tda10071_modcod { i32 6, i32 9, i32 8, i8 16 }, %struct.tda10071_modcod { i32 6, i32 9, i32 11, i8 17 }, %struct.tda10071_modcod { i32 5, i32 0, i32 9, i8 45 }, %struct.tda10071_modcod { i32 5, i32 0, i32 1, i8 46 }, %struct.tda10071_modcod { i32 5, i32 0, i32 2, i8 47 }, %struct.tda10071_modcod { i32 5, i32 0, i32 3, i8 48 }, %struct.tda10071_modcod { i32 5, i32 0, i32 5, i8 49 }, %struct.tda10071_modcod { i32 5, i32 0, i32 7, i8 50 }], [64 x i8] zeroinitializer }, align 32
@tda10071_set_frontend.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.5, ptr @.str.40, i8 0, i8 -96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mode found=%02x\0A\00", [47 x i8] zeroinitializer }, align 32
@tda10071_set_frontend.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.5, ptr @.str.41, i8 0, i8 -95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid parameter combination\0A\00", [33 x i8] zeroinitializer }, align 32
@tda10071_set_frontend.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.5, ptr @.str.8, i8 0, i8 -84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@tda10071_get_frontend.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.5, ptr @.str.8, i8 0, i8 -70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tda10071_get_frontend\00", [42 x i8] zeroinitializer }, align 32
@tda10071_read_status.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.5, ptr @.str.44, i8 0, i8 113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tda10071_read_status\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"meas not ready=%02x\0A\00", [43 x i8] zeroinitializer }, align 32
@tda10071_read_status.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.5, ptr @.str.8, i8 0, i8 124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@tda10071_diseqc_send_master_cmd.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.5, ptr @.str.46, i8 0, i8 48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tda10071_diseqc_send_master_cmd\00", [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"msg_len=%d\0A\00", [20 x i8] zeroinitializer }, align 32
@tda10071_diseqc_send_master_cmd.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.5, ptr @.str.32, i8 0, i8 52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@tda10071_diseqc_send_master_cmd.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.5, ptr @.str.8, i8 0, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@tda10071_diseqc_recv_slave_reply.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.5, ptr @.str.48, i8 0, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tda10071_diseqc_recv_slave_reply\00", [63 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@tda10071_diseqc_recv_slave_reply.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.5, ptr @.str.32, i8 0, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@tda10071_diseqc_recv_slave_reply.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.5, ptr @.str.8, i8 0, i8 73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@tda10071_diseqc_send_burst.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.5, ptr @.str.50, i8 0, i8 78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tda10071_diseqc_send_burst\00", [37 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fe_sec_mini_cmd=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@tda10071_diseqc_send_burst.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.5, ptr @.str.51, i8 0, i8 81, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid fe_sec_mini_cmd\0A\00", [39 x i8] zeroinitializer }, align 32
@tda10071_diseqc_send_burst.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.5, ptr @.str.32, i8 0, i8 84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@tda10071_diseqc_send_burst.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.5, ptr @.str.8, i8 0, i8 89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@tda10071_set_tone.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.5, ptr @.str.53, i8 0, i8 25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tda10071_set_tone\00", [46 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tone_mode=%d\0A\00", [18 x i8] zeroinitializer }, align 32
@tda10071_set_tone.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.5, ptr @.str.54, i8 0, i8 28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid fe_sec_tone_mode\0A\00", [38 x i8] zeroinitializer }, align 32
@tda10071_set_tone.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.5, ptr @.str.8, i8 0, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@tda10071_set_voltage.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.5, ptr @.str.56, i8 0, i8 36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tda10071_set_voltage\00", [43 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"voltage=%d\0A\00", [20 x i8] zeroinitializer }, align 32
@tda10071_set_voltage.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.5, ptr @.str.57, i8 0, i8 40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid fe_sec_voltage\0A\00", [40 x i8] zeroinitializer }, align 32
@tda10071_set_voltage.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.5, ptr @.str.8, i8 0, i8 43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@tda10071_get_dvb_frontend.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.5, ptr @.str.48, i8 1, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tda10071_get_dvb_frontend\00", [38 x i8] zeroinitializer }, align 32
@tda10071_remove.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.5, ptr @.str.48, i8 1, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda10071_remove\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.64 = private unnamed_addr constant [16 x i8] c"tda10071_driver\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1240, i32 26 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1242, i32 11 }
@___asan_gen_.70 = private unnamed_addr constant [18 x i8] c"tda10071_id_table\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1234, i32 35 }
@___asan_gen_.73 = private unnamed_addr constant [14 x i8] c"regmap_config\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1155, i32 36 }
@___asan_gen_.76 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1167, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1174, i32 16 }
@___asan_gen_.88 = private unnamed_addr constant [13 x i8] c"tda10071_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1093, i32 38 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1215, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1220, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 759, i32 16 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 842, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 873, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 876, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 891, i32 5 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 915, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 932, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 934, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 73, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1079, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 557, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 582, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 608, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 624, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 630, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant [16 x i8] c"TDA10071_MODCOD\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [47 x i8] c"../drivers/media/dvb-frontends/tda10071_priv.h\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 42, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 640, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 646, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 746, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 453, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 193, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 253, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 314, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 324, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 102, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 112, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 147, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 160, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1143, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.251 = private constant [42 x i8] c"../drivers/media/dvb-frontends/tda10071.c\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1228, i32 2 }
@llvm.compiler.used = appending global [79 x ptr] [ptr @__UNIQUE_ID_author329, ptr @__UNIQUE_ID_description330, ptr @__UNIQUE_ID_file331, ptr @__UNIQUE_ID_firmware333, ptr @__UNIQUE_ID_license332, ptr @__exitcall_tda10071_driver_exit, ptr @__initcall__kmod_tda10071__328_1250_tda10071_driver_init6, ptr @tda10071_driver_exit, ptr @tda10071_init._entry, ptr @tda10071_init._entry.13, ptr @tda10071_init._entry.16, ptr @tda10071_init._entry.19, ptr @tda10071_init._entry.22, ptr @tda10071_init._entry.25, ptr @tda10071_init._entry.28, ptr @tda10071_init._entry_ptr, ptr @tda10071_init._entry_ptr.15, ptr @tda10071_init._entry_ptr.18, ptr @tda10071_init._entry_ptr.21, ptr @tda10071_init._entry_ptr.24, ptr @tda10071_init._entry_ptr.27, ptr @tda10071_init._entry_ptr.30, ptr @tda10071_probe._entry, ptr @tda10071_probe._entry_ptr, ptr @tda10071_driver, ptr @.str, ptr @tda10071_id_table, ptr @tda10071_probe.regmap_config, ptr @tda10071_probe.__key, ptr @.str.1, ptr @tda10071_probe._key, ptr @.str.2, ptr @tda10071_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @TDA10071_MODCOD, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10071_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10071_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10071_probe.regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10071_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10071_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10071_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10071_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10071_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10071_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10071_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10071_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10071_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10071_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10071_init._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TDA10071_MODCOD to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10071_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tda10071_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tda10071_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @i2c_del_driver(ptr noundef nonnull @tda10071_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10071_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %uitmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uitmp) #10
  %2 = ptrtoint ptr %uitmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %uitmp, align 4, !annotation !177
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 1184) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.do.body45_crit_edge, label %if.end

entry.do.body45_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body45

if.end:                                           ; preds = %entry
  %client2 = getelementptr inbounds %struct.tda10071_dev, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %client2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %client, ptr %client2, align 8
  %cmd_execute_mutex = getelementptr inbounds %struct.tda10071_dev, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %cmd_execute_mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @tda10071_probe.__key) #10
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %clk3 = getelementptr inbounds %struct.tda10071_dev, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %clk3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %clk3, align 4
  %i2c_wr_max = getelementptr inbounds %struct.tda10071_platform_data, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %i2c_wr_max to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %i2c_wr_max, align 4
  %i2c_wr_max4 = getelementptr inbounds %struct.tda10071_dev, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %i2c_wr_max4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %i2c_wr_max4, align 8
  %ts_mode = getelementptr inbounds %struct.tda10071_platform_data, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %ts_mode to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ts_mode, align 2
  %ts_mode5 = getelementptr inbounds %struct.tda10071_dev, ptr %call7.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %ts_mode5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %ts_mode5, align 2
  %spec_inv = getelementptr inbounds %struct.tda10071_platform_data, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %spec_inv to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %spec_inv, align 1, !range !178
  %spec_inv7 = getelementptr inbounds %struct.tda10071_dev, ptr %call7.i.i, i32 0, i32 7
  %16 = ptrtoint ptr %spec_inv7 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %spec_inv7, align 1
  %pll_multiplier = getelementptr inbounds %struct.tda10071_platform_data, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %pll_multiplier to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pll_multiplier, align 4
  %pll_multiplier8 = getelementptr inbounds %struct.tda10071_dev, ptr %call7.i.i, i32 0, i32 8
  %19 = ptrtoint ptr %pll_multiplier8 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %pll_multiplier8, align 4
  %tuner_i2c_addr = getelementptr inbounds %struct.tda10071_platform_data, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %tuner_i2c_addr to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tuner_i2c_addr, align 1
  %tuner_i2c_addr9 = getelementptr inbounds %struct.tda10071_dev, ptr %call7.i.i, i32 0, i32 9
  %22 = ptrtoint ptr %tuner_i2c_addr9 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %tuner_i2c_addr9, align 1
  %call10 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @tda10071_probe.regmap_config, ptr noundef nonnull @tda10071_probe._key, ptr noundef nonnull @.str.2) #10
  %regmap = getelementptr inbounds %struct.tda10071_dev, ptr %call7.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call10, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %call10 to i32
  br label %err_kfree

if.end16:                                         ; preds = %if.end
  %call18 = call i32 @regmap_read(ptr noundef %call10, i32 noundef 255, ptr noundef nonnull %uitmp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end16.err_kfree_crit_edge

if.end16.err_kfree_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_kfree

if.end21:                                         ; preds = %if.end16
  %25 = ptrtoint ptr %uitmp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %uitmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %26)
  %cmp.not = icmp eq i32 %26, 15
  br i1 %cmp.not, label %if.end23, label %if.end21.err_kfree_crit_edge

if.end21.err_kfree_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_kfree

if.end23:                                         ; preds = %if.end21
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %call25 = call i32 @regmap_read(ptr noundef %28, i32 noundef 221, ptr noundef nonnull %uitmp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end23.err_kfree_crit_edge

if.end23.err_kfree_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_kfree

if.end28:                                         ; preds = %if.end23
  %29 = ptrtoint ptr %uitmp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %uitmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp29.not = icmp eq i32 %30, 0
  br i1 %cmp29.not, label %if.end31, label %if.end28.err_kfree_crit_edge

if.end28.err_kfree_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_kfree

if.end31:                                         ; preds = %if.end28
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %call33 = call i32 @regmap_read(ptr noundef %32, i32 noundef 254, ptr noundef nonnull %uitmp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end31.err_kfree_crit_edge

if.end31.err_kfree_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_kfree

if.end36:                                         ; preds = %if.end31
  %33 = ptrtoint ptr %uitmp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %uitmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp37.not = icmp eq i32 %34, 1
  br i1 %cmp37.not, label %if.end39, label %if.end36.err_kfree_crit_edge

if.end36.err_kfree_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_kfree

if.end39:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %ops = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 1
  %35 = call ptr @memcpy(ptr %ops, ptr @tda10071_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 3
  %36 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %37 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %get_dvb_frontend = getelementptr inbounds %struct.tda10071_platform_data, ptr %1, i32 0, i32 6
  %38 = ptrtoint ptr %get_dvb_frontend to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @tda10071_get_dvb_frontend, ptr %get_dvb_frontend, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.3) #14
  br label %cleanup

err_kfree:                                        ; preds = %if.end36.err_kfree_crit_edge, %if.end31.err_kfree_crit_edge, %if.end28.err_kfree_crit_edge, %if.end23.err_kfree_crit_edge, %if.end21.err_kfree_crit_edge, %if.end16.err_kfree_crit_edge, %if.then13
  %ret.0 = phi i32 [ %24, %if.then13 ], [ %call18, %if.end16.err_kfree_crit_edge ], [ %call25, %if.end23.err_kfree_crit_edge ], [ %call33, %if.end31.err_kfree_crit_edge ], [ -19, %if.end21.err_kfree_crit_edge ], [ -19, %if.end28.err_kfree_crit_edge ], [ -19, %if.end36.err_kfree_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %do.body45

do.body45:                                        ; preds = %err_kfree, %entry.do.body45_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_kfree ], [ -12, %entry.do.body45_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda10071_probe.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda10071_probe, %if.then52)) #10
          to label %cleanup [label %if.then52], !srcloc !179

if.then52:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda10071_probe.__UNIQUE_ID_ddebug326, ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %ret.1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %do.body45, %if.end39
  %retval.0 = phi i32 [ 0, %if.end39 ], [ %ret.1, %if.then52 ], [ %ret.1, %do.body45 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uitmp) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10071_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda10071_remove.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda10071_remove, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !179

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda10071_remove.__UNIQUE_ID_ddebug327, ptr noundef %dev4, ptr noundef nonnull @.str.48) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @kfree(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tda10071_get_dvb_frontend(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda10071_get_dvb_frontend.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda10071_get_dvb_frontend, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !179

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda10071_get_dvb_frontend.__UNIQUE_ID_ddebug325, ptr noundef %dev4, ptr noundef nonnull @.str.48) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret ptr %1
}

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10071_init(ptr nocapture noundef %fe) #2 align 64 {
entry:
  %val.addr.i593 = alloca i8, align 1
  %tmp.i594 = alloca i8, align 1
  %val.addr.i = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  %cmd = alloca %struct.tda10071_cmd, align 1
  %uitmp = alloca i32, align 4
  %fw = alloca ptr, align 4
  %buf = alloca [4 x i8], align 4
  %tab2 = alloca [43 x %struct.tda10071_reg_val_mask], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %client1 = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 8
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %cmd) #10
  %4 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 1
  %5 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 2
  %6 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 3
  %7 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 4
  %8 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 5
  %9 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 6
  %10 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 7
  %11 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 8
  %12 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 9
  %13 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 10
  %14 = getelementptr inbounds %struct.tda10071_cmd, ptr %cmd, i32 0, i32 1
  %15 = call ptr @memset(ptr %cmd, i32 255, i32 31)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uitmp) #10
  %16 = ptrtoint ptr %uitmp to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %uitmp, align 4, !annotation !177
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #10
  %17 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !177
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #10
  %18 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %19 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %20 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %21 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %buf, align 4
  call void @llvm.lifetime.start.p0(i64 129, ptr nonnull %tab2) #10
  %22 = getelementptr inbounds i8, ptr %tab2, i32 89
  %23 = call ptr @memset(ptr %22, i32 255, i32 40)
  %24 = ptrtoint ptr %tab2 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -15, ptr %tab2, align 1
  %val = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 0, i32 1
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 112, ptr %val, align 1
  %mask = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 0, i32 2
  %26 = ptrtoint ptr %mask to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %mask, align 1
  %arrayinit.element = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 1
  %27 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -120, ptr %arrayinit.element, align 1
  %val3 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 1, i32 1
  %pll_multiplier = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 8
  %28 = ptrtoint ptr %pll_multiplier to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %pll_multiplier, align 4
  %30 = ptrtoint ptr %val3 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %val3, align 1
  %mask4 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 1, i32 2
  %31 = ptrtoint ptr %mask4 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 63, ptr %mask4, align 1
  %arrayinit.element5 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 2
  %32 = ptrtoint ptr %arrayinit.element5 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -119, ptr %arrayinit.element5, align 1
  %val7 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 2, i32 1
  %33 = ptrtoint ptr %val7 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %val7, align 1
  %mask8 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 2, i32 2
  %34 = ptrtoint ptr %mask8 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 16, ptr %mask8, align 1
  %arrayinit.element9 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 3
  %35 = ptrtoint ptr %arrayinit.element9 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -119, ptr %arrayinit.element9, align 1
  %val11 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 3, i32 1
  %36 = ptrtoint ptr %val11 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 16, ptr %val11, align 1
  %mask12 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 3, i32 2
  %37 = ptrtoint ptr %mask12 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 16, ptr %mask12, align 1
  %arrayinit.element13 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 4
  %38 = ptrtoint ptr %arrayinit.element13 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -64, ptr %arrayinit.element13, align 1
  %val15 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 4, i32 1
  %39 = ptrtoint ptr %val15 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %val15, align 1
  %mask16 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 4, i32 2
  %40 = ptrtoint ptr %mask16 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %mask16, align 1
  %arrayinit.element17 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 5
  %41 = ptrtoint ptr %arrayinit.element17 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -64, ptr %arrayinit.element17, align 1
  %val19 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 5, i32 1
  %42 = ptrtoint ptr %val19 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %val19, align 1
  %mask20 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 5, i32 2
  %43 = ptrtoint ptr %mask20 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %mask20, align 1
  %arrayinit.element21 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 6
  %44 = ptrtoint ptr %arrayinit.element21 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -32, ptr %arrayinit.element21, align 1
  %val23 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 6, i32 1
  %45 = ptrtoint ptr %val23 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -1, ptr %val23, align 1
  %mask24 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 6, i32 2
  %46 = ptrtoint ptr %mask24 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -1, ptr %mask24, align 1
  %arrayinit.element25 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 7
  %47 = ptrtoint ptr %arrayinit.element25 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -32, ptr %arrayinit.element25, align 1
  %val27 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 7, i32 1
  %48 = ptrtoint ptr %val27 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %val27, align 1
  %mask28 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 7, i32 2
  %49 = ptrtoint ptr %mask28 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -1, ptr %mask28, align 1
  %arrayinit.element29 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 8
  %50 = ptrtoint ptr %arrayinit.element29 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -106, ptr %arrayinit.element29, align 1
  %val31 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 8, i32 1
  %51 = ptrtoint ptr %val31 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 30, ptr %val31, align 1
  %mask32 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 8, i32 2
  %52 = ptrtoint ptr %mask32 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 126, ptr %mask32, align 1
  %arrayinit.element33 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 9
  %53 = ptrtoint ptr %arrayinit.element33 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -117, ptr %arrayinit.element33, align 1
  %val35 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 9, i32 1
  %54 = ptrtoint ptr %val35 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 8, ptr %val35, align 1
  %mask36 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 9, i32 2
  %55 = ptrtoint ptr %mask36 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 8, ptr %mask36, align 1
  %arrayinit.element37 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 10
  %56 = ptrtoint ptr %arrayinit.element37 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -117, ptr %arrayinit.element37, align 1
  %val39 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 10, i32 1
  %57 = ptrtoint ptr %val39 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %val39, align 1
  %mask40 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 10, i32 2
  %58 = ptrtoint ptr %mask40 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 8, ptr %mask40, align 1
  %arrayinit.element41 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 11
  %59 = ptrtoint ptr %arrayinit.element41 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 -113, ptr %arrayinit.element41, align 1
  %val43 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 11, i32 1
  %60 = ptrtoint ptr %val43 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 26, ptr %val43, align 1
  %mask44 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 11, i32 2
  %61 = ptrtoint ptr %mask44 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 126, ptr %mask44, align 1
  %arrayinit.element45 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 12
  %62 = ptrtoint ptr %arrayinit.element45 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -116, ptr %arrayinit.element45, align 1
  %val47 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 12, i32 1
  %63 = ptrtoint ptr %val47 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 104, ptr %val47, align 1
  %mask48 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 12, i32 2
  %64 = ptrtoint ptr %mask48 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 -1, ptr %mask48, align 1
  %arrayinit.element49 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 13
  %65 = ptrtoint ptr %arrayinit.element49 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 -115, ptr %arrayinit.element49, align 1
  %val51 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 13, i32 1
  %66 = ptrtoint ptr %val51 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 8, ptr %val51, align 1
  %mask52 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 13, i32 2
  %67 = ptrtoint ptr %mask52 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 -1, ptr %mask52, align 1
  %arrayinit.element53 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 14
  %68 = ptrtoint ptr %arrayinit.element53 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -114, ptr %arrayinit.element53, align 1
  %val55 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 14, i32 1
  %69 = ptrtoint ptr %val55 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 76, ptr %val55, align 1
  %mask56 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 14, i32 2
  %70 = ptrtoint ptr %mask56 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 -1, ptr %mask56, align 1
  %arrayinit.element57 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 15
  %71 = ptrtoint ptr %arrayinit.element57 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -113, ptr %arrayinit.element57, align 1
  %val59 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 15, i32 1
  %72 = ptrtoint ptr %val59 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %val59, align 1
  %mask60 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 15, i32 2
  %73 = ptrtoint ptr %mask60 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %mask60, align 1
  %arrayinit.element61 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 16
  %74 = ptrtoint ptr %arrayinit.element61 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -117, ptr %arrayinit.element61, align 1
  %val63 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 16, i32 1
  %75 = ptrtoint ptr %val63 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 4, ptr %val63, align 1
  %mask64 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 16, i32 2
  %76 = ptrtoint ptr %mask64 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 4, ptr %mask64, align 1
  %arrayinit.element65 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 17
  %77 = ptrtoint ptr %arrayinit.element65 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 -117, ptr %arrayinit.element65, align 1
  %val67 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 17, i32 1
  %78 = ptrtoint ptr %val67 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %val67, align 1
  %mask68 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 17, i32 2
  %79 = ptrtoint ptr %mask68 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 4, ptr %mask68, align 1
  %arrayinit.element69 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 18
  %80 = ptrtoint ptr %arrayinit.element69 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 -121, ptr %arrayinit.element69, align 1
  %val71 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 18, i32 1
  %81 = ptrtoint ptr %val71 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 5, ptr %val71, align 1
  %mask72 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 18, i32 2
  %82 = ptrtoint ptr %mask72 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 7, ptr %mask72, align 1
  %arrayinit.element73 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 19
  %83 = ptrtoint ptr %arrayinit.element73 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 -128, ptr %arrayinit.element73, align 1
  %val75 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 19, i32 1
  %84 = ptrtoint ptr %val75 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %val75, align 1
  %mask76 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 19, i32 2
  %85 = ptrtoint ptr %mask76 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 32, ptr %mask76, align 1
  %arrayinit.element77 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 20
  %86 = ptrtoint ptr %arrayinit.element77 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 -56, ptr %arrayinit.element77, align 1
  %val79 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 20, i32 1
  %87 = ptrtoint ptr %val79 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %val79, align 1
  %mask80 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 20, i32 2
  %88 = ptrtoint ptr %mask80 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 -1, ptr %mask80, align 1
  %arrayinit.element81 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 21
  %89 = ptrtoint ptr %arrayinit.element81 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 -76, ptr %arrayinit.element81, align 1
  %val83 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 21, i32 1
  %90 = ptrtoint ptr %val83 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 71, ptr %val83, align 1
  %mask84 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 21, i32 2
  %91 = ptrtoint ptr %mask84 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 -1, ptr %mask84, align 1
  %arrayinit.element85 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 22
  %92 = ptrtoint ptr %arrayinit.element85 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 -75, ptr %arrayinit.element85, align 1
  %val87 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 22, i32 1
  %93 = ptrtoint ptr %val87 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 -100, ptr %val87, align 1
  %mask88 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 22, i32 2
  %94 = ptrtoint ptr %mask88 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 -1, ptr %mask88, align 1
  %arrayinit.element89 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 23
  %95 = ptrtoint ptr %arrayinit.element89 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 -74, ptr %arrayinit.element89, align 1
  %val91 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 23, i32 1
  %96 = ptrtoint ptr %val91 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 125, ptr %val91, align 1
  %mask92 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 23, i32 2
  %97 = ptrtoint ptr %mask92 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 -1, ptr %mask92, align 1
  %arrayinit.element93 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 24
  %98 = ptrtoint ptr %arrayinit.element93 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 -70, ptr %arrayinit.element93, align 1
  %val95 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 24, i32 1
  %99 = ptrtoint ptr %val95 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %val95, align 1
  %mask96 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 24, i32 2
  %100 = ptrtoint ptr %mask96 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 3, ptr %mask96, align 1
  %arrayinit.element97 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 25
  %101 = ptrtoint ptr %arrayinit.element97 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 -73, ptr %arrayinit.element97, align 1
  %val99 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 25, i32 1
  %102 = ptrtoint ptr %val99 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 71, ptr %val99, align 1
  %mask100 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 25, i32 2
  %103 = ptrtoint ptr %mask100 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 -1, ptr %mask100, align 1
  %arrayinit.element101 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 26
  %104 = ptrtoint ptr %arrayinit.element101 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 -72, ptr %arrayinit.element101, align 1
  %val103 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 26, i32 1
  %105 = ptrtoint ptr %val103 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 -100, ptr %val103, align 1
  %mask104 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 26, i32 2
  %106 = ptrtoint ptr %mask104 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 -1, ptr %mask104, align 1
  %arrayinit.element105 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 27
  %107 = ptrtoint ptr %arrayinit.element105 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 -71, ptr %arrayinit.element105, align 1
  %val107 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 27, i32 1
  %108 = ptrtoint ptr %val107 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 125, ptr %val107, align 1
  %mask108 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 27, i32 2
  %109 = ptrtoint ptr %mask108 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 -1, ptr %mask108, align 1
  %arrayinit.element109 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 28
  %110 = ptrtoint ptr %arrayinit.element109 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 -70, ptr %arrayinit.element109, align 1
  %val111 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 28, i32 1
  %111 = ptrtoint ptr %val111 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %val111, align 1
  %mask112 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 28, i32 2
  %112 = ptrtoint ptr %mask112 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 12, ptr %mask112, align 1
  %arrayinit.element113 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 29
  %113 = ptrtoint ptr %arrayinit.element113 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 -56, ptr %arrayinit.element113, align 1
  %val115 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 29, i32 1
  %114 = ptrtoint ptr %val115 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %val115, align 1
  %mask116 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 29, i32 2
  %115 = ptrtoint ptr %mask116 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 -1, ptr %mask116, align 1
  %arrayinit.element117 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 30
  %116 = ptrtoint ptr %arrayinit.element117 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 -51, ptr %arrayinit.element117, align 1
  %val119 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 30, i32 1
  %117 = ptrtoint ptr %val119 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %val119, align 1
  %mask120 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 30, i32 2
  %118 = ptrtoint ptr %mask120 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 4, ptr %mask120, align 1
  %arrayinit.element121 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 31
  %119 = ptrtoint ptr %arrayinit.element121 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 -51, ptr %arrayinit.element121, align 1
  %val123 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 31, i32 1
  %120 = ptrtoint ptr %val123 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 0, ptr %val123, align 1
  %mask124 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 31, i32 2
  %121 = ptrtoint ptr %mask124 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 32, ptr %mask124, align 1
  %arrayinit.element125 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 32
  %122 = ptrtoint ptr %arrayinit.element125 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 -24, ptr %arrayinit.element125, align 1
  %val127 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 32, i32 1
  %123 = ptrtoint ptr %val127 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 2, ptr %val127, align 1
  %mask128 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 32, i32 2
  %124 = ptrtoint ptr %mask128 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 -1, ptr %mask128, align 1
  %arrayinit.element129 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 33
  %125 = ptrtoint ptr %arrayinit.element129 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 -49, ptr %arrayinit.element129, align 1
  %val131 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 33, i32 1
  %126 = ptrtoint ptr %val131 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 32, ptr %val131, align 1
  %mask132 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 33, i32 2
  %127 = ptrtoint ptr %mask132 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 -1, ptr %mask132, align 1
  %arrayinit.element133 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 34
  %128 = ptrtoint ptr %arrayinit.element133 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 -101, ptr %arrayinit.element133, align 1
  %val135 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 34, i32 1
  %129 = ptrtoint ptr %val135 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 -41, ptr %val135, align 1
  %mask136 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 34, i32 2
  %130 = ptrtoint ptr %mask136 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 -1, ptr %mask136, align 1
  %arrayinit.element137 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 35
  %131 = ptrtoint ptr %arrayinit.element137 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 -102, ptr %arrayinit.element137, align 1
  %val139 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 35, i32 1
  %132 = ptrtoint ptr %val139 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 1, ptr %val139, align 1
  %mask140 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 35, i32 2
  %133 = ptrtoint ptr %mask140 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 3, ptr %mask140, align 1
  %arrayinit.element141 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 36
  %134 = ptrtoint ptr %arrayinit.element141 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 -88, ptr %arrayinit.element141, align 1
  %val143 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 36, i32 1
  %135 = ptrtoint ptr %val143 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 5, ptr %val143, align 1
  %mask144 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 36, i32 2
  %136 = ptrtoint ptr %mask144 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 15, ptr %mask144, align 1
  %arrayinit.element145 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 37
  %137 = ptrtoint ptr %arrayinit.element145 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 -88, ptr %arrayinit.element145, align 1
  %val147 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 37, i32 1
  %138 = ptrtoint ptr %val147 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 101, ptr %val147, align 1
  %mask148 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 37, i32 2
  %139 = ptrtoint ptr %mask148 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 -16, ptr %mask148, align 1
  %arrayinit.element149 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 38
  %140 = ptrtoint ptr %arrayinit.element149 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 -90, ptr %arrayinit.element149, align 1
  %val151 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 38, i32 1
  %141 = ptrtoint ptr %val151 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 -96, ptr %val151, align 1
  %mask152 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 38, i32 2
  %142 = ptrtoint ptr %mask152 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 -16, ptr %mask152, align 1
  %arrayinit.element153 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 39
  %143 = ptrtoint ptr %arrayinit.element153 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 -99, ptr %arrayinit.element153, align 1
  %val155 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 39, i32 1
  %144 = ptrtoint ptr %val155 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 80, ptr %val155, align 1
  %mask156 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 39, i32 2
  %145 = ptrtoint ptr %mask156 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 -4, ptr %mask156, align 1
  %arrayinit.element157 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 40
  %146 = ptrtoint ptr %arrayinit.element157 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 -98, ptr %arrayinit.element157, align 1
  %val159 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 40, i32 1
  %147 = ptrtoint ptr %val159 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 32, ptr %val159, align 1
  %mask160 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 40, i32 2
  %148 = ptrtoint ptr %mask160 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 -32, ptr %mask160, align 1
  %arrayinit.element161 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 41
  %149 = ptrtoint ptr %arrayinit.element161 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 -93, ptr %arrayinit.element161, align 1
  %val163 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 41, i32 1
  %150 = ptrtoint ptr %val163 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 28, ptr %val163, align 1
  %mask164 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 41, i32 2
  %151 = ptrtoint ptr %mask164 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 124, ptr %mask164, align 1
  %arrayinit.element165 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 42
  %152 = ptrtoint ptr %arrayinit.element165 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 -43, ptr %arrayinit.element165, align 1
  %val167 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 42, i32 1
  %153 = ptrtoint ptr %val167 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 3, ptr %val167, align 1
  %mask168 = getelementptr inbounds %struct.tda10071_reg_val_mask, ptr %tab2, i32 42, i32 2
  %154 = ptrtoint ptr %mask168 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 3, ptr %mask168, align 1
  %warm = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 14
  %155 = ptrtoint ptr %warm to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %warm, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool.not = icmp eq i8 %156, 0
  br i1 %tobool.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %regmap.i = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 2
  br label %for.body

for.cond:                                         ; preds = %if.end.i
  %inc = add nuw nsw i32 %i.0621, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader
  %i.0621 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr [10 x %struct.tda10071_reg_val_mask], ptr @__const.tda10071_init.tab, i32 0, i32 %i.0621
  %157 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx, align 1
  %val171 = getelementptr [10 x %struct.tda10071_reg_val_mask], ptr @__const.tda10071_init.tab, i32 0, i32 %i.0621, i32 1
  %159 = ptrtoint ptr %val171 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %val171, align 1
  %mask173 = getelementptr [10 x %struct.tda10071_reg_val_mask], ptr @__const.tda10071_init.tab, i32 0, i32 %i.0621, i32 2
  %161 = ptrtoint ptr %mask173 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %mask173, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %163 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %160, ptr %val.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #10
  %164 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 -1, ptr %tmp.i, align 1, !annotation !177
  %165 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %regmap.i, align 4
  %conv2.i = zext i8 %158 to i32
  %call.i = call i32 @regmap_bulk_read(ptr noundef %166, i32 noundef %conv2.i, ptr noundef nonnull %tmp.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %tda10071_wr_reg_mask.exit.thread

tda10071_wr_reg_mask.exit.thread:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  br label %do.body476

if.end.i:                                         ; preds = %for.body
  %167 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %val.addr.i, align 1
  %and24.i = and i8 %168, %162
  %neg.i = xor i8 %162, -1
  %169 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %tmp.i, align 1
  %and9.i = and i8 %170, %neg.i
  store i8 %and9.i, ptr %tmp.i, align 1
  %or25.i = or i8 %and9.i, %and24.i
  store i8 %or25.i, ptr %val.addr.i, align 1
  %171 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %regmap.i, align 4
  %call17.i = call i32 @regmap_bulk_write(ptr noundef %172, i32 noundef %conv2.i, ptr noundef nonnull %val.addr.i, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool174.not = icmp eq i32 %call17.i, 0
  br i1 %tobool174.not, label %for.cond, label %if.end.i.do.body476_crit_edge

if.end.i.do.body476_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body476

for.end:                                          ; preds = %for.cond
  %173 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 54, ptr %cmd, align 1
  %174 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 0, ptr %4, align 1
  %175 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 0, ptr %5, align 1
  %176 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 3, ptr %14, align 1
  %call182 = call fastcc i32 @tda10071_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %for.end.if.end457_crit_edge, label %for.end.do.body476_crit_edge

for.end.do.body476_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body476

for.end.if.end457_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end457

if.else:                                          ; preds = %entry
  %dev186 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %call187 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @.str.9, ptr noundef %dev186) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %for.cond192.preheader, label %do.end

for.cond192.preheader:                            ; preds = %if.else
  %regmap.i598 = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 2
  br label %for.body194

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev186, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, i32 noundef %call187) #14
  br label %do.body476

for.cond192:                                      ; preds = %tda10071_wr_reg_mask.exit613
  %inc206 = add nuw nsw i32 %i.1622, 1
  %exitcond630.not = icmp eq i32 %inc206, 43
  br i1 %exitcond630.not, label %for.end207, label %for.cond192.for.body194_crit_edge

for.cond192.for.body194_crit_edge:                ; preds = %for.cond192
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body194

for.body194:                                      ; preds = %for.cond192.for.body194_crit_edge, %for.cond192.preheader
  %i.1622 = phi i32 [ 0, %for.cond192.preheader ], [ %inc206, %for.cond192.for.body194_crit_edge ]
  %arrayidx195 = getelementptr [43 x %struct.tda10071_reg_val_mask], ptr %tab2, i32 0, i32 %i.1622
  %177 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx195, align 1
  %val198 = getelementptr [43 x %struct.tda10071_reg_val_mask], ptr %tab2, i32 0, i32 %i.1622, i32 1
  %179 = ptrtoint ptr %val198 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %val198, align 1
  %mask200 = getelementptr [43 x %struct.tda10071_reg_val_mask], ptr %tab2, i32 0, i32 %i.1622, i32 2
  %181 = ptrtoint ptr %mask200 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %mask200, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i593)
  %183 = ptrtoint ptr %val.addr.i593 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %180, ptr %val.addr.i593, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i594) #10
  %184 = ptrtoint ptr %tmp.i594 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 -1, ptr %tmp.i594, align 1, !annotation !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %182)
  %cmp.not.i595 = icmp eq i8 %182, -1
  br i1 %cmp.not.i595, label %entry.if.end14_crit_edge.i597, label %if.then.i602

entry.if.end14_crit_edge.i597:                    ; preds = %for.body194
  call void @__sanitizer_cov_trace_pc() #12
  %.pre.i596 = zext i8 %178 to i32
  br label %tda10071_wr_reg_mask.exit613

if.then.i602:                                     ; preds = %for.body194
  %185 = ptrtoint ptr %regmap.i598 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %regmap.i598, align 4
  %conv2.i599 = zext i8 %178 to i32
  %call.i600 = call i32 @regmap_bulk_read(ptr noundef %186, i32 noundef %conv2.i599, ptr noundef nonnull %tmp.i594, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i600)
  %tobool.not.i601 = icmp eq i32 %call.i600, 0
  br i1 %tobool.not.i601, label %if.end.i607, label %tda10071_wr_reg_mask.exit613.thread

tda10071_wr_reg_mask.exit613.thread:              ; preds = %if.then.i602
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i594) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i593)
  br label %error_release_firmware

if.end.i607:                                      ; preds = %if.then.i602
  call void @__sanitizer_cov_trace_pc() #12
  %187 = ptrtoint ptr %val.addr.i593 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %val.addr.i593, align 1
  %and24.i603 = and i8 %188, %182
  %neg.i604 = xor i8 %182, -1
  %189 = ptrtoint ptr %tmp.i594 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %tmp.i594, align 1
  %and9.i605 = and i8 %190, %neg.i604
  store i8 %and9.i605, ptr %tmp.i594, align 1
  %or25.i606 = or i8 %and9.i605, %and24.i603
  store i8 %or25.i606, ptr %val.addr.i593, align 1
  br label %tda10071_wr_reg_mask.exit613

tda10071_wr_reg_mask.exit613:                     ; preds = %if.end.i607, %entry.if.end14_crit_edge.i597
  %conv16.pre-phi.i608 = phi i32 [ %.pre.i596, %entry.if.end14_crit_edge.i597 ], [ %conv2.i599, %if.end.i607 ]
  %191 = ptrtoint ptr %regmap.i598 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %regmap.i598, align 4
  %call17.i610 = call i32 @regmap_bulk_write(ptr noundef %192, i32 noundef %conv16.pre-phi.i608, ptr noundef nonnull %val.addr.i593, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i594) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i593)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i610)
  %tobool202.not = icmp eq i32 %call17.i610, 0
  br i1 %tobool202.not, label %for.cond192, label %tda10071_wr_reg_mask.exit613.error_release_firmware_crit_edge

tda10071_wr_reg_mask.exit613.error_release_firmware_crit_edge: ; preds = %tda10071_wr_reg_mask.exit613
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_release_firmware

for.end207:                                       ; preds = %for.cond192
  %193 = ptrtoint ptr %regmap.i598 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %regmap.i598, align 4
  %call208 = call i32 @regmap_write(ptr noundef %194, i32 noundef 224, i32 noundef 127) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call208)
  %tobool209.not = icmp eq i32 %call208, 0
  br i1 %tobool209.not, label %if.end211, label %for.end207.error_release_firmware_crit_edge

for.end207.error_release_firmware_crit_edge:      ; preds = %for.end207
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_release_firmware

if.end211:                                        ; preds = %for.end207
  %195 = ptrtoint ptr %regmap.i598 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %regmap.i598, align 4
  %call213 = call i32 @regmap_write(ptr noundef %196, i32 noundef 247, i32 noundef 129) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call213)
  %tobool214.not = icmp eq i32 %call213, 0
  br i1 %tobool214.not, label %if.end216, label %if.end211.error_release_firmware_crit_edge

if.end211.error_release_firmware_crit_edge:       ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_release_firmware

if.end216:                                        ; preds = %if.end211
  %197 = ptrtoint ptr %regmap.i598 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %regmap.i598, align 4
  %call218 = call i32 @regmap_write(ptr noundef %198, i32 noundef 248, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call218)
  %tobool219.not = icmp eq i32 %call218, 0
  br i1 %tobool219.not, label %if.end221, label %if.end216.error_release_firmware_crit_edge

if.end216.error_release_firmware_crit_edge:       ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_release_firmware

if.end221:                                        ; preds = %if.end216
  %199 = ptrtoint ptr %regmap.i598 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %regmap.i598, align 4
  %call223 = call i32 @regmap_write(ptr noundef %200, i32 noundef 249, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call223)
  %tobool224.not = icmp eq i32 %call223, 0
  br i1 %tobool224.not, label %do.end229, label %if.end221.error_release_firmware_crit_edge

if.end221.error_release_firmware_crit_edge:       ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_release_firmware

do.end229:                                        ; preds = %if.end221
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev186, ptr noundef nonnull @.str.14, ptr noundef nonnull @tda10071_ops) #14
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev186, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.9) #14
  %201 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %fw, align 4
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %202, align 4
  %sub = add i32 %204, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp236623 = icmp sgt i32 %sub, 0
  br i1 %cmp236623, label %for.body237.lr.ph, label %do.end229.for.end262_crit_edge

do.end229.for.end262_crit_edge:                   ; preds = %do.end229
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end262

for.body237.lr.ph:                                ; preds = %do.end229
  %i2c_wr_max = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 5
  br label %for.body237

for.body237:                                      ; preds = %for.inc257.for.body237_crit_edge, %for.body237.lr.ph
  %remaining.0624 = phi i32 [ %sub, %for.body237.lr.ph ], [ %sub261, %for.inc257.for.body237_crit_edge ]
  %205 = ptrtoint ptr %i2c_wr_max to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %i2c_wr_max, align 8
  %conv = zext i16 %206 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %remaining.0624, i32 %conv)
  %cmp239.not = icmp ult i32 %remaining.0624, %conv
  %sub238 = add nsw i32 %conv, -1
  %spec.select = select i1 %cmp239.not, i32 %remaining.0624, i32 %sub238
  %207 = ptrtoint ptr %regmap.i598 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %regmap.i598, align 4
  %209 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %210, i32 0, i32 1
  %211 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %data, align 4
  %sub247 = sub i32 %sub, %remaining.0624
  %arrayidx248 = getelementptr i8, ptr %212, i32 %sub247
  %call249 = call i32 @regmap_bulk_write(ptr noundef %208, i32 noundef 250, ptr noundef %arrayidx248, i32 noundef %spec.select) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call249)
  %tobool250.not = icmp eq i32 %call249, 0
  br i1 %tobool250.not, label %for.inc257, label %do.end254

do.end254:                                        ; preds = %for.body237
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev186, ptr noundef nonnull @.str.20, i32 noundef %call249) #14
  br label %error_release_firmware

for.inc257:                                       ; preds = %for.body237
  %213 = ptrtoint ptr %i2c_wr_max to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %i2c_wr_max, align 8
  %conv259 = zext i16 %214 to i32
  %sub260.neg = add nuw i32 %remaining.0624, 1
  %sub261 = sub i32 %sub260.neg, %conv259
  %cmp236 = icmp sgt i32 %sub261, 0
  br i1 %cmp236, label %for.inc257.for.body237_crit_edge, label %for.inc257.for.end262_crit_edge

for.inc257.for.end262_crit_edge:                  ; preds = %for.inc257
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end262

for.inc257.for.body237_crit_edge:                 ; preds = %for.inc257
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body237

for.end262:                                       ; preds = %for.inc257.for.end262_crit_edge, %do.end229.for.end262_crit_edge
  %215 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %216) #10
  %217 = ptrtoint ptr %regmap.i598 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %regmap.i598, align 4
  %call264 = call i32 @regmap_write(ptr noundef %218, i32 noundef 247, i32 noundef 12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call264)
  %tobool265.not = icmp eq i32 %call264, 0
  br i1 %tobool265.not, label %if.end267, label %for.end262.do.body476_crit_edge

for.end262.do.body476_crit_edge:                  ; preds = %for.end262
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body476

if.end267:                                        ; preds = %for.end262
  %219 = ptrtoint ptr %regmap.i598 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %regmap.i598, align 4
  %call269 = call i32 @regmap_write(ptr noundef %220, i32 noundef 224, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call269)
  %tobool270.not = icmp eq i32 %call269, 0
  br i1 %tobool270.not, label %if.end272, label %if.end267.do.body476_crit_edge

if.end267.do.body476_crit_edge:                   ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body476

if.end272:                                        ; preds = %if.end267
  call void @msleep(i32 noundef 250) #10
  %221 = ptrtoint ptr %regmap.i598 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %regmap.i598, align 4
  %call274 = call i32 @regmap_read(ptr noundef %222, i32 noundef 81, ptr noundef nonnull %uitmp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call274)
  %tobool275.not = icmp eq i32 %call274, 0
  br i1 %tobool275.not, label %if.end277, label %if.end272.do.body476_crit_edge

if.end272.do.body476_crit_edge:                   ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body476

if.end277:                                        ; preds = %if.end272
  %223 = ptrtoint ptr %uitmp to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %uitmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %tobool278.not = icmp eq i32 %224, 0
  br i1 %tobool278.not, label %if.else284, label %do.end282

do.end282:                                        ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev186, ptr noundef nonnull @.str.23) #14
  br label %do.body476

if.else284:                                       ; preds = %if.end277
  %225 = ptrtoint ptr %warm to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 1, ptr %warm, align 4
  %226 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 53, ptr %cmd, align 1
  %227 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 1, ptr %14, align 1
  %call290 = call fastcc i32 @tda10071_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call290)
  %tobool291.not = icmp eq i32 %call290, 0
  br i1 %tobool291.not, label %if.end293, label %if.else284.do.body476_crit_edge

if.else284.do.body476_crit_edge:                  ; preds = %if.else284
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body476

if.end293:                                        ; preds = %if.else284
  %228 = ptrtoint ptr %regmap.i598 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %regmap.i598, align 4
  %230 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %14, align 1
  %conv296 = zext i8 %231 to i32
  %call297 = call i32 @regmap_bulk_read(ptr noundef %229, i32 noundef %conv296, ptr noundef nonnull %buf, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call297)
  %tobool298.not = icmp eq i32 %call297, 0
  br i1 %tobool298.not, label %do.end303, label %if.end293.do.body476_crit_edge

if.end293.do.body476_crit_edge:                   ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body476

do.end303:                                        ; preds = %if.end293
  %232 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %buf, align 4
  %conv306 = zext i8 %233 to i32
  %234 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %18, align 1
  %conv308 = zext i8 %235 to i32
  %236 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %19, align 2
  %conv310 = zext i8 %237 to i32
  %238 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %20, align 1
  %conv312 = zext i8 %239 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev186, ptr noundef nonnull @.str.26, i32 noundef %conv306, i32 noundef %conv308, i32 noundef %conv310, i32 noundef %conv312) #14
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev186, ptr noundef nonnull @.str.29, ptr noundef nonnull @tda10071_ops) #14
  %240 = ptrtoint ptr %regmap.i598 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %regmap.i598, align 4
  %call319 = call i32 @regmap_bulk_read(ptr noundef %241, i32 noundef 129, ptr noundef nonnull %buf, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call319)
  %tobool320.not = icmp eq i32 %call319, 0
  br i1 %tobool320.not, label %if.end322, label %do.end303.do.body476_crit_edge

do.end303.do.body476_crit_edge:                   ; preds = %do.end303
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body476

if.end322:                                        ; preds = %do.end303
  %242 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 16, ptr %cmd, align 1
  %clk = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 4
  %243 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %clk, align 4
  %div = udiv i32 %244, 1000
  %shr = lshr i32 %div, 8
  %conv325 = trunc i32 %shr to i8
  %245 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 %conv325, ptr %4, align 1
  %conv332 = trunc i32 %div to i8
  %246 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 %conv332, ptr %5, align 1
  %247 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %buf, align 4
  %249 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %248, ptr %6, align 1
  %250 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %18, align 1
  %252 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 %251, ptr %7, align 1
  %253 = ptrtoint ptr %pll_multiplier to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %pll_multiplier, align 4
  %255 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 %254, ptr %8, align 1
  %spec_inv = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 7
  %256 = ptrtoint ptr %spec_inv to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %spec_inv, align 1, !range !178
  %258 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 %257, ptr %9, align 1
  %259 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 0, ptr %10, align 1
  %260 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 8, ptr %14, align 1
  %call351 = call fastcc i32 @tda10071_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call351)
  %tobool352.not = icmp eq i32 %call351, 0
  br i1 %tobool352.not, label %if.end354, label %if.end322.do.body476_crit_edge

if.end322.do.body476_crit_edge:                   ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body476

if.end354:                                        ; preds = %if.end322
  %tuner_i2c_addr = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 9
  %261 = ptrtoint ptr %tuner_i2c_addr to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %tuner_i2c_addr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %262)
  %tobool355.not = icmp eq i8 %262, 0
  %. = select i1 %tobool355.not, i8 20, i8 %262
  %263 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 21, ptr %cmd, align 1
  %264 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %264, i32 4)
  store i32 0, ptr %4, align 1
  %265 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 %., ptr %8, align 1
  %266 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 0, ptr %9, align 1
  %267 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 3, ptr %10, align 1
  %268 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 2, ptr %11, align 1
  %269 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 2, ptr %12, align 1
  %270 = call ptr @memset(ptr %13, i32 0, i32 5)
  %271 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 15, ptr %14, align 1
  %call391 = call fastcc i32 @tda10071_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call391)
  %tobool392.not = icmp eq i32 %call391, 0
  br i1 %tobool392.not, label %if.end394, label %if.end354.do.body476_crit_edge

if.end354.do.body476_crit_edge:                   ; preds = %if.end354
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body476

if.end394:                                        ; preds = %if.end354
  %272 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 19, ptr %cmd, align 1
  %273 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 0, ptr %4, align 1
  %ts_mode = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 6
  %274 = ptrtoint ptr %ts_mode to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %ts_mode, align 2
  %276 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 %275, ptr %5, align 1
  %277 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 0, ptr %6, align 1
  %278 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 4, ptr %7, align 1
  %279 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 0, ptr %8, align 1
  %280 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 6, ptr %14, align 1
  %call408 = call fastcc i32 @tda10071_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call408)
  %tobool409.not = icmp eq i32 %call408, 0
  br i1 %tobool409.not, label %if.end411, label %if.end394.do.body476_crit_edge

if.end394.do.body476_crit_edge:                   ; preds = %if.end394
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body476

if.end411:                                        ; preds = %if.end394
  %281 = ptrtoint ptr %regmap.i598 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %regmap.i598, align 4
  %call.i614 = call i32 @regmap_update_bits_base(ptr noundef %282, i32 noundef 240, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i614)
  %tobool414.not = icmp eq i32 %call.i614, 0
  br i1 %tobool414.not, label %if.end416, label %if.end411.do.body476_crit_edge

if.end411.do.body476_crit_edge:                   ; preds = %if.end411
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body476

if.end416:                                        ; preds = %if.end411
  %283 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 32, ptr %cmd, align 1
  %284 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %284)
  store i8 0, ptr %4, align 1
  %285 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 -106, ptr %5, align 1
  %286 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %286)
  store i8 3, ptr %6, align 1
  %287 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 22, ptr %7, align 1
  %288 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 1, ptr %8, align 1
  %289 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 1, ptr %9, align 1
  %290 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %290, i32 4)
  store i32 505290270, ptr %10, align 1
  %291 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 11, ptr %14, align 1
  %call440 = call fastcc i32 @tda10071_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call440)
  %tobool441.not = icmp eq i32 %call440, 0
  br i1 %tobool441.not, label %if.end443, label %if.end416.do.body476_crit_edge

if.end416.do.body476_crit_edge:                   ; preds = %if.end416
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body476

if.end443:                                        ; preds = %if.end416
  %292 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 62, ptr %cmd, align 1
  %293 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 0, ptr %4, align 1
  %294 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 14, ptr %5, align 1
  %295 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %295)
  store i8 14, ptr %6, align 1
  %296 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %296)
  store i8 4, ptr %14, align 1
  %call453 = call fastcc i32 @tda10071_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call453)
  %tobool454.not = icmp eq i32 %call453, 0
  br i1 %tobool454.not, label %if.end443.if.end457_crit_edge, label %if.end443.do.body476_crit_edge

if.end443.do.body476_crit_edge:                   ; preds = %if.end443
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body476

if.end443.if.end457_crit_edge:                    ; preds = %if.end443
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end457

if.end457:                                        ; preds = %if.end443.if.end457_crit_edge, %for.end.if.end457_crit_edge
  %strength = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42
  %297 = ptrtoint ptr %strength to i32
  call void @__asan_store1_noabort(i32 %297)
  store i8 1, ptr %strength, align 4
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1
  %298 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 0, ptr %stat, align 1
  %cnr = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43
  %299 = ptrtoint ptr %cnr to i32
  call void @__asan_store1_noabort(i32 %299)
  store i8 1, ptr %cnr, align 1
  %stat463 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %300 = ptrtoint ptr %stat463 to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 0, ptr %stat463, align 1
  %post_bit_error = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46
  %301 = ptrtoint ptr %post_bit_error to i32
  call void @__asan_store1_noabort(i32 %301)
  store i8 1, ptr %post_bit_error, align 4
  %stat468 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  %302 = ptrtoint ptr %stat468 to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 0, ptr %stat468, align 1
  %block_error = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48
  %303 = ptrtoint ptr %block_error to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 1, ptr %block_error, align 2
  %stat473 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1
  %304 = ptrtoint ptr %stat473 to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 0, ptr %stat473, align 1
  br label %cleanup

error_release_firmware:                           ; preds = %do.end254, %if.end221.error_release_firmware_crit_edge, %if.end216.error_release_firmware_crit_edge, %if.end211.error_release_firmware_crit_edge, %for.end207.error_release_firmware_crit_edge, %tda10071_wr_reg_mask.exit613.error_release_firmware_crit_edge, %tda10071_wr_reg_mask.exit613.thread
  %ret.1 = phi i32 [ %call208, %for.end207.error_release_firmware_crit_edge ], [ %call213, %if.end211.error_release_firmware_crit_edge ], [ %call218, %if.end216.error_release_firmware_crit_edge ], [ %call223, %if.end221.error_release_firmware_crit_edge ], [ %call249, %do.end254 ], [ %call.i600, %tda10071_wr_reg_mask.exit613.thread ], [ %call17.i610, %tda10071_wr_reg_mask.exit613.error_release_firmware_crit_edge ]
  %305 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %306) #10
  br label %do.body476

do.body476:                                       ; preds = %error_release_firmware, %if.end443.do.body476_crit_edge, %if.end416.do.body476_crit_edge, %if.end411.do.body476_crit_edge, %if.end394.do.body476_crit_edge, %if.end354.do.body476_crit_edge, %if.end322.do.body476_crit_edge, %do.end303.do.body476_crit_edge, %if.end293.do.body476_crit_edge, %if.else284.do.body476_crit_edge, %do.end282, %if.end272.do.body476_crit_edge, %if.end267.do.body476_crit_edge, %for.end262.do.body476_crit_edge, %do.end, %for.end.do.body476_crit_edge, %if.end.i.do.body476_crit_edge, %tda10071_wr_reg_mask.exit.thread
  %ret.2 = phi i32 [ %call182, %for.end.do.body476_crit_edge ], [ %call187, %do.end ], [ %ret.1, %error_release_firmware ], [ %call264, %for.end262.do.body476_crit_edge ], [ %call269, %if.end267.do.body476_crit_edge ], [ %call274, %if.end272.do.body476_crit_edge ], [ -14, %do.end282 ], [ %call290, %if.else284.do.body476_crit_edge ], [ %call297, %if.end293.do.body476_crit_edge ], [ %call319, %do.end303.do.body476_crit_edge ], [ %call351, %if.end322.do.body476_crit_edge ], [ %call391, %if.end354.do.body476_crit_edge ], [ %call408, %if.end394.do.body476_crit_edge ], [ %call.i614, %if.end411.do.body476_crit_edge ], [ %call440, %if.end416.do.body476_crit_edge ], [ %call453, %if.end443.do.body476_crit_edge ], [ %call.i, %tda10071_wr_reg_mask.exit.thread ], [ %call17.i, %if.end.i.do.body476_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda10071_init.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda10071_init, %if.then482)) #10
          to label %cleanup [label %if.then482], !srcloc !179

if.then482:                                       ; preds = %do.body476
  call void @__sanitizer_cov_trace_pc() #12
  %dev483 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda10071_init.__UNIQUE_ID_ddebug323, ptr noundef %dev483, ptr noundef nonnull @.str.8, i32 noundef %ret.2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then482, %do.body476, %if.end457
  %retval.0 = phi i32 [ 0, %if.end457 ], [ %ret.2, %if.then482 ], [ %ret.2, %do.body476 ]
  call void @llvm.lifetime.end.p0(i64 129, ptr nonnull %tab2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uitmp) #10
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %cmd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10071_sleep(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  %val.addr.i = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  %cmd = alloca %struct.tda10071_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %client1 = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 8
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %cmd) #10
  %warm = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 14
  %4 = call ptr @memset(ptr %cmd, i32 255, i32 31)
  %5 = ptrtoint ptr %warm to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %warm, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.end

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end:                                           ; preds = %entry
  %7 = getelementptr inbounds %struct.tda10071_cmd, ptr %cmd, i32 0, i32 1
  %8 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 2
  %9 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 1
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 54, ptr %cmd, align 1
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %9, align 1
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %8, align 1
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 3, ptr %7, align 1
  %call = call fastcc i32 @tda10071_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %for.cond.preheader, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.cond.preheader:                               ; preds = %if.end
  %regmap.i = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 2
  br label %for.body

for.cond:                                         ; preds = %if.end.i
  %inc = add nuw nsw i32 %i.044, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader
  %i.044 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx9 = getelementptr [10 x %struct.tda10071_reg_val_mask], ptr @__const.tda10071_sleep.tab, i32 0, i32 %i.044
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx9, align 1
  %val = getelementptr [10 x %struct.tda10071_reg_val_mask], ptr @__const.tda10071_sleep.tab, i32 0, i32 %i.044, i32 1
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %val, align 1
  %mask = getelementptr [10 x %struct.tda10071_reg_val_mask], ptr @__const.tda10071_sleep.tab, i32 0, i32 %i.044, i32 2
  %18 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mask, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %20 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %17, ptr %val.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #10
  %21 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %tmp.i, align 1, !annotation !177
  %22 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i, align 4
  %conv2.i = zext i8 %15 to i32
  %call.i = call i32 @regmap_bulk_read(ptr noundef %23, i32 noundef %conv2.i, ptr noundef nonnull %tmp.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %tda10071_wr_reg_mask.exit.thread

tda10071_wr_reg_mask.exit.thread:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  br label %do.body

if.end.i:                                         ; preds = %for.body
  %24 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %val.addr.i, align 1
  %and24.i = and i8 %25, %19
  %neg.i = xor i8 %19, -1
  %26 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %tmp.i, align 1
  %and9.i = and i8 %27, %neg.i
  store i8 %and9.i, ptr %tmp.i, align 1
  %or25.i = or i8 %and9.i, %and24.i
  store i8 %or25.i, ptr %val.addr.i, align 1
  %28 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i, align 4
  %call17.i = call i32 @regmap_bulk_write(ptr noundef %29, i32 noundef %conv2.i, ptr noundef nonnull %val.addr.i, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool13.not = icmp eq i32 %call17.i, 0
  br i1 %tobool13.not, label %for.cond, label %if.end.i.do.body_crit_edge

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %if.end.i.do.body_crit_edge, %tda10071_wr_reg_mask.exit.thread, %if.end.do.body_crit_edge, %entry.do.body_crit_edge
  %ret.1 = phi i32 [ %call, %if.end.do.body_crit_edge ], [ -14, %entry.do.body_crit_edge ], [ %call.i, %tda10071_wr_reg_mask.exit.thread ], [ %call17.i, %if.end.i.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda10071_sleep.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda10071_sleep, %if.then20)) #10
          to label %cleanup [label %if.then20], !srcloc !179

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev21 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda10071_sleep.__UNIQUE_ID_ddebug324, ptr noundef %dev21, ptr noundef nonnull @.str.8, i32 noundef %ret.1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %do.body, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.then20 ], [ %ret.1, %do.body ], [ 0, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %cmd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10071_set_frontend(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  %cmd = alloca %struct.tda10071_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %client1 = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 8
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %cmd) #10
  %4 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 1
  %5 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 2
  %6 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 3
  %7 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 4
  %8 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 5
  %9 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 6
  %10 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 7
  %11 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 8
  %12 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 9
  %13 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 10
  %14 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 11
  %15 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 12
  %16 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 13
  %17 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 14
  %18 = getelementptr inbounds %struct.tda10071_cmd, ptr %cmd, i32 0, i32 1
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %19 = call ptr @memset(ptr %cmd, i32 255, i32 31)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda10071_set_frontend.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda10071_set_frontend, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !179

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %20 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %delivery_system, align 4
  %modulation5 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %22 = ptrtoint ptr %modulation5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %modulation5, align 4
  %24 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dtv_property_cache, align 4
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %26 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %symbol_rate, align 4
  %inversion6 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 4
  %28 = ptrtoint ptr %inversion6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %inversion6, align 4
  %pilot7 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 13
  %30 = ptrtoint ptr %pilot7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pilot7, align 4
  %rolloff8 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 14
  %32 = ptrtoint ptr %rolloff8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rolloff8, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda10071_set_frontend.__UNIQUE_ID_ddebug314, ptr noundef %dev4, ptr noundef nonnull @.str.35, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %delivery_system9 = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 13
  %34 = ptrtoint ptr %delivery_system9 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %delivery_system9, align 8
  %warm = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 14
  %35 = ptrtoint ptr %warm to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %warm, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool10.not = icmp eq i8 %36, 0
  br i1 %tobool10.not, label %do.end.do.body233_crit_edge, label %if.end12

do.end.do.body233_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body233

if.end12:                                         ; preds = %do.end
  %inversion13 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 4
  %37 = ptrtoint ptr %inversion13 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %inversion13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %38)
  %39 = icmp ult i32 %38, 3
  br i1 %39, label %switch.lookup, label %do.body16

do.body16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda10071_set_frontend.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda10071_set_frontend, %if.then28)) #10
          to label %do.body233 [label %if.then28], !srcloc !179

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  %dev29 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda10071_set_frontend.__UNIQUE_ID_ddebug315, ptr noundef %dev29, ptr noundef nonnull @.str.36) #10
  br label %do.body233

switch.lookup:                                    ; preds = %if.end12
  %switch.cast = trunc i32 %38 to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 196609, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %delivery_system33 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %40 = ptrtoint ptr %delivery_system33 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %delivery_system33, align 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values)
  switch i32 %41, label %do.body85 [
    i32 5, label %switch.lookup.sw.epilog102_crit_edge
    i32 6, label %sw.bb35
  ]

switch.lookup.sw.epilog102_crit_edge:             ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog102

sw.bb35:                                          ; preds = %switch.lookup
  %modulation36 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %43 = ptrtoint ptr %modulation36 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %modulation36, align 4
  %rolloff37 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 14
  %45 = ptrtoint ptr %rolloff37 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rolloff37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %46)
  %47 = icmp ult i32 %46, 3
  br i1 %47, label %switch.lookup345, label %do.body43

do.body43:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda10071_set_frontend.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda10071_set_frontend, %if.then55)) #10
          to label %do.body233 [label %if.then55], !srcloc !179

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #12
  %dev56 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda10071_set_frontend.__UNIQUE_ID_ddebug316, ptr noundef %dev56, ptr noundef nonnull @.str.37) #10
  br label %do.body233

switch.lookup345:                                 ; preds = %sw.bb35
  %switch.cast346 = trunc i32 %46 to i24
  %switch.shiftamt347 = shl i24 %switch.cast346, 3
  %switch.downshift348 = lshr i24 66048, %switch.shiftamt347
  %switch.masked349 = trunc i24 %switch.downshift348 to i8
  %pilot61 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 13
  %48 = ptrtoint ptr %pilot61 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pilot61, align 4
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %49, label %do.body66 [
    i32 1, label %switch.lookup345.sw.epilog102_crit_edge
    i32 0, label %sw.bb63
    i32 2, label %sw.bb64
  ]

switch.lookup345.sw.epilog102_crit_edge:          ; preds = %switch.lookup345
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog102

sw.bb63:                                          ; preds = %switch.lookup345
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog102

sw.bb64:                                          ; preds = %switch.lookup345
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog102

do.body66:                                        ; preds = %switch.lookup345
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda10071_set_frontend.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda10071_set_frontend, %if.then78)) #10
          to label %do.body233 [label %if.then78], !srcloc !179

if.then78:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #12
  %dev79 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda10071_set_frontend.__UNIQUE_ID_ddebug317, ptr noundef %dev79, ptr noundef nonnull @.str.38) #10
  br label %do.body233

do.body85:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda10071_set_frontend.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda10071_set_frontend, %if.then97)) #10
          to label %do.body233 [label %if.then97], !srcloc !179

if.then97:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #12
  %dev98 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda10071_set_frontend.__UNIQUE_ID_ddebug318, ptr noundef %dev98, ptr noundef nonnull @.str.39) #10
  br label %do.body233

sw.epilog102:                                     ; preds = %sw.bb64, %sw.bb63, %switch.lookup345.sw.epilog102_crit_edge, %switch.lookup.sw.epilog102_crit_edge
  %modulation.0 = phi i32 [ %44, %sw.bb64 ], [ %44, %sw.bb63 ], [ 0, %switch.lookup.sw.epilog102_crit_edge ], [ %44, %switch.lookup345.sw.epilog102_crit_edge ]
  %pilot.0 = phi i8 [ 2, %sw.bb64 ], [ 1, %sw.bb63 ], [ 2, %switch.lookup.sw.epilog102_crit_edge ], [ 0, %switch.lookup345.sw.epilog102_crit_edge ]
  %rolloff.1 = phi i8 [ %switch.masked349, %sw.bb64 ], [ %switch.masked349, %sw.bb63 ], [ 0, %switch.lookup.sw.epilog102_crit_edge ], [ %switch.masked349, %switch.lookup345.sw.epilog102_crit_edge ]
  %fec_inner = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.epilog102
  %i.0340 = phi i32 [ 0, %sw.epilog102 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [22 x %struct.tda10071_modcod], ptr @TDA10071_MODCOD, i32 0, i32 %i.0340
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %52)
  %cmp105 = icmp eq i32 %41, %52
  br i1 %cmp105, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %modulation107 = getelementptr [22 x %struct.tda10071_modcod], ptr @TDA10071_MODCOD, i32 0, i32 %i.0340, i32 1
  %53 = ptrtoint ptr %modulation107 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %modulation107, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %modulation.0, i32 %54)
  %cmp108 = icmp eq i32 %modulation.0, %54
  br i1 %cmp108, label %land.lhs.true109, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true109:                                 ; preds = %land.lhs.true
  %55 = ptrtoint ptr %fec_inner to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fec_inner, align 4
  %fec = getelementptr [22 x %struct.tda10071_modcod], ptr @TDA10071_MODCOD, i32 0, i32 %i.0340, i32 2
  %57 = ptrtoint ptr %fec to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %fec, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp111 = icmp eq i32 %56, %58
  br i1 %cmp111, label %if.then112, label %land.lhs.true109.for.inc_crit_edge

land.lhs.true109.for.inc_crit_edge:               ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then112:                                       ; preds = %land.lhs.true109
  %val = getelementptr [22 x %struct.tda10071_modcod], ptr @TDA10071_MODCOD, i32 0, i32 %i.0340, i32 3
  %59 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %val, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda10071_set_frontend.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda10071_set_frontend, %if.then126)) #10
          to label %if.end153 [label %if.then126], !srcloc !179

if.then126:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #12
  %dev127 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %conv = zext i8 %60 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda10071_set_frontend.__UNIQUE_ID_ddebug319, ptr noundef %dev127, ptr noundef nonnull @.str.40, i32 noundef %conv) #10
  br label %if.end153

for.inc:                                          ; preds = %land.lhs.true109.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0340, 1
  %exitcond.not = icmp eq i32 %inc, 22
  br i1 %exitcond.not, label %do.body136, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.body136:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda10071_set_frontend.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda10071_set_frontend, %if.then148)) #10
          to label %do.body233 [label %if.then148], !srcloc !179

if.then148:                                       ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #12
  %dev149 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda10071_set_frontend.__UNIQUE_ID_ddebug320, ptr noundef %dev149, ptr noundef nonnull @.str.41) #10
  br label %do.body233

if.end153:                                        ; preds = %if.then126, %if.then112
  %symbol_rate154 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %61 = ptrtoint ptr %symbol_rate154 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %symbol_rate154, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000001, i32 %62)
  %cmp155 = icmp ult i32 %62, 5000001
  %. = select i1 %cmp155, i32 14, i32 4
  %regmap = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 2
  %63 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap, align 4
  %call160 = tail call i32 @regmap_write(ptr noundef %64, i32 noundef 129, i32 noundef %.) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %if.end163, label %if.end153.do.body233_crit_edge

if.end153.do.body233_crit_edge:                   ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body233

if.end163:                                        ; preds = %if.end153
  %65 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap, align 4
  %call166 = tail call i32 @regmap_write(ptr noundef %66, i32 noundef 227, i32 noundef %.) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166)
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %if.end169, label %if.end163.do.body233_crit_edge

if.end163.do.body233_crit_edge:                   ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body233

if.end169:                                        ; preds = %if.end163
  %67 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 17, ptr %cmd, align 1
  %68 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %4, align 1
  %69 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %60, ptr %5, align 1
  %70 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dtv_property_cache, align 4
  %shr = lshr i32 %71, 16
  %conv176 = trunc i32 %shr to i8
  %72 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv176, ptr %6, align 1
  %shr180 = lshr i32 %71, 8
  %conv182 = trunc i32 %shr180 to i8
  %73 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv182, ptr %7, align 1
  %conv188 = trunc i32 %71 to i8
  %74 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv188, ptr %8, align 1
  %75 = ptrtoint ptr %symbol_rate154 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %symbol_rate154, align 4
  %div192 = udiv i32 %76, 1000
  %shr193 = lshr i32 %div192, 8
  %conv195 = trunc i32 %shr193 to i8
  %77 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv195, ptr %9, align 1
  %conv202 = trunc i32 %div192 to i8
  %78 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv202, ptr %10, align 1
  %79 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 19, ptr %11, align 1
  %80 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 -120, ptr %12, align 1
  %81 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %rolloff.1, ptr %13, align 1
  %82 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %switch.masked, ptr %14, align 1
  %83 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %pilot.0, ptr %15, align 1
  %84 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %16, align 1
  %85 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %17, align 1
  %86 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 15, ptr %18, align 1
  %call227 = call fastcc i32 @tda10071_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call227)
  %tobool228.not = icmp eq i32 %call227, 0
  br i1 %tobool228.not, label %if.end230, label %if.end169.do.body233_crit_edge

if.end169.do.body233_crit_edge:                   ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body233

if.end230:                                        ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %delivery_system33 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %delivery_system33, align 4
  %89 = ptrtoint ptr %delivery_system9 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %delivery_system9, align 8
  br label %cleanup

do.body233:                                       ; preds = %if.end169.do.body233_crit_edge, %if.end163.do.body233_crit_edge, %if.end153.do.body233_crit_edge, %if.then148, %do.body136, %if.then97, %do.body85, %if.then78, %do.body66, %if.then55, %do.body43, %if.then28, %do.body16, %do.end.do.body233_crit_edge
  %ret.0 = phi i32 [ %call160, %if.end153.do.body233_crit_edge ], [ %call166, %if.end163.do.body233_crit_edge ], [ %call227, %if.end169.do.body233_crit_edge ], [ -14, %do.end.do.body233_crit_edge ], [ -22, %if.then28 ], [ -22, %if.then55 ], [ -22, %if.then78 ], [ -22, %if.then97 ], [ -22, %if.then148 ], [ -22, %do.body16 ], [ -22, %do.body43 ], [ -22, %do.body66 ], [ -22, %do.body85 ], [ -22, %do.body136 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda10071_set_frontend.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda10071_set_frontend, %if.then245)) #10
          to label %cleanup [label %if.then245], !srcloc !179

if.then245:                                       ; preds = %do.body233
  call void @__sanitizer_cov_trace_pc() #12
  %dev246 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda10071_set_frontend.__UNIQUE_ID_ddebug321, ptr noundef %dev246, ptr noundef nonnull @.str.8, i32 noundef %ret.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then245, %do.body233, %if.end230
  %retval.0 = phi i32 [ 0, %if.end230 ], [ %ret.0, %if.then245 ], [ %ret.0, %do.body233 ]
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %cmd) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @tda10071_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %s) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 8000, ptr %s, align 4
  %step_size = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %s, i32 0, i32 1
  %1 = ptrtoint ptr %step_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %step_size, align 4
  %max_drift = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %s, i32 0, i32 2
  %2 = ptrtoint ptr %max_drift to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %max_drift, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10071_get_frontend(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %c) #2 align 64 {
entry:
  %buf = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %client1 = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf) #10
  %4 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 1
  %5 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 2
  %6 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 3
  %7 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 4
  %warm = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 14
  %8 = call ptr @memset(ptr %buf, i32 255, i32 5)
  %9 = ptrtoint ptr %warm to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %warm, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %fe_status = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %fe_status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fe_status, align 4
  %and = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %lor.lhs.false.do.body_crit_edge, label %if.end

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end:                                           ; preds = %lor.lhs.false
  %regmap = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_bulk_read(ptr noundef %14, i32 noundef 48, ptr noundef nonnull %buf, i32 noundef 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end5:                                          ; preds = %if.end
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %buf, align 1
  %17 = and i8 %16, 63
  %modulation16 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 1
  %fec_inner = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 5
  %delivery_system19 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end5
  %i.099 = phi i32 [ 0, %if.end5 ], [ %inc, %for.inc.for.body_crit_edge ]
  %val = getelementptr [22 x %struct.tda10071_modcod], ptr @TDA10071_MODCOD, i32 0, i32 %i.099, i32 3
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %val, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp12 = icmp eq i8 %17, %19
  br i1 %cmp12, label %if.then14, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then14:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx10 = getelementptr [22 x %struct.tda10071_modcod], ptr @TDA10071_MODCOD, i32 0, i32 %i.099
  %modulation = getelementptr [22 x %struct.tda10071_modcod], ptr @TDA10071_MODCOD, i32 0, i32 %i.099, i32 1
  %20 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %modulation, align 4
  %22 = ptrtoint ptr %modulation16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %modulation16, align 4
  %fec = getelementptr [22 x %struct.tda10071_modcod], ptr @TDA10071_MODCOD, i32 0, i32 %i.099, i32 2
  %23 = ptrtoint ptr %fec to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fec, align 4
  %25 = ptrtoint ptr %fec_inner to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %fec_inner, align 4
  %26 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx10, align 4
  %28 = ptrtoint ptr %delivery_system19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %delivery_system19, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.099, 1
  %exitcond.not = icmp eq i32 %inc, 22
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %4, align 1
  %31 = and i8 %30, 1
  %32 = xor i8 %31, 1
  %33 = zext i8 %32 to i32
  %34 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %33, ptr %34, align 4
  %36 = xor i8 %30, -1
  %37 = lshr i8 %36, 7
  %.not = zext i8 %37 to i32
  %38 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 13
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %.not, ptr %38, align 4
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %5, align 1
  %conv35 = zext i8 %41 to i32
  %shl = shl nuw nsw i32 %conv35, 16
  %42 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %6, align 1
  %conv37 = zext i8 %43 to i32
  %shl38 = shl nuw nsw i32 %conv37, 8
  %or = or i32 %shl38, %shl
  %44 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %7, align 1
  %conv40 = zext i8 %45 to i32
  %or42 = or i32 %or, %conv40
  %46 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or42, ptr %c, align 4
  %47 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap, align 4
  %call45 = call i32 @regmap_bulk_read(ptr noundef %48, i32 noundef 82, ptr noundef nonnull %buf, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %for.end.do.body_crit_edge

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end48:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %buf, align 1
  %conv50 = zext i8 %50 to i32
  %shl51 = shl nuw nsw i32 %conv50, 16
  %51 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %4, align 1
  %conv53 = zext i8 %52 to i32
  %shl54 = shl nuw nsw i32 %conv53, 8
  %or55 = or i32 %shl54, %shl51
  %53 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %5, align 1
  %conv57 = zext i8 %54 to i32
  %or59 = or i32 %or55, %conv57
  %mul = mul i32 %or59, 1000
  %symbol_rate = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 10
  %55 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %mul, ptr %symbol_rate, align 4
  br label %cleanup

do.body:                                          ; preds = %for.end.do.body_crit_edge, %if.end.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  %ret.0 = phi i32 [ %call, %if.end.do.body_crit_edge ], [ %call45, %for.end.do.body_crit_edge ], [ 0, %lor.lhs.false.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda10071_get_frontend.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda10071_get_frontend, %if.then65)) #10
          to label %cleanup [label %if.then65], !srcloc !179

if.then65:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev66 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda10071_get_frontend.__UNIQUE_ID_ddebug322, ptr noundef %dev66, ptr noundef nonnull @.str.8, i32 noundef %ret.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %do.body, %if.end48
  %retval.0 = phi i32 [ 0, %if.end48 ], [ %ret.0, %if.then65 ], [ %ret.0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10071_read_status(ptr nocapture noundef %fe, ptr nocapture noundef %status) #2 align 64 {
entry:
  %cmd = alloca %struct.tda10071_cmd, align 1
  %uitmp = alloca i32, align 4
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %client1 = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 8
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %cmd) #10
  %4 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 1
  %5 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 2
  %6 = getelementptr inbounds %struct.tda10071_cmd, ptr %cmd, i32 0, i32 1
  %7 = call ptr @memset(ptr %cmd, i32 255, i32 31)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uitmp) #10
  %8 = ptrtoint ptr %uitmp to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %uitmp, align 4, !annotation !177
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #10
  %9 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 1
  %10 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 2
  %11 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 3
  %12 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 4
  %13 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 5
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 -1, ptr %buf, align 8
  %15 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %status, align 4
  %warm = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 14
  %16 = ptrtoint ptr %warm to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %warm, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %entry.do.body207_crit_edge, label %if.end

entry.do.body207_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body207

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %19, i32 noundef 57, ptr noundef nonnull %uitmp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.do.body207_crit_edge

if.end.do.body207_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body207

if.end4:                                          ; preds = %if.end
  %20 = ptrtoint ptr %uitmp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %uitmp, align 4
  %and = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end4.if.end7_crit_edge, label %if.then6

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %status, align 4
  %or = or i32 %23, 3
  store i32 %or, ptr %status, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.if.end7_crit_edge
  %and8 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end12_crit_edge, label %if.then10

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %status, align 4
  %or11 = or i32 %25, 4
  store i32 %or11, ptr %status, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end7.if.end12_crit_edge
  %and13 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end17_crit_edge, label %if.then15

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %status, align 4
  %or16 = or i32 %27, 24
  store i32 %or16, ptr %status, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end12.if.end17_crit_edge
  %28 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %status, align 4
  %fe_status = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 12
  %30 = ptrtoint ptr %fe_status to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %fe_status, align 4
  %and19 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end17
  %31 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 26, ptr %cmd, align 1
  %32 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %4, align 1
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 2, ptr %6, align 1
  %call24 = call fastcc i32 @tda10071_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.then21.do.body207_crit_edge

if.then21.do.body207_crit_edge:                   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body207

if.end27:                                         ; preds = %if.then21
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %call29 = call i32 @regmap_read(ptr noundef %35, i32 noundef 80, ptr noundef nonnull %uitmp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end27.do.body207_crit_edge

if.end27.do.body207_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body207

if.end32:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1
  %36 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %stat, align 1
  %37 = ptrtoint ptr %uitmp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %uitmp, align 4
  %39 = mul i32 %38, 1000
  %mul = add i32 %39, -256000
  %conv = sext i32 %mul to i64
  %40 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 %conv, ptr %40, align 1
  br label %if.end41

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %stat38 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1
  %42 = ptrtoint ptr %stat38 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %stat38, align 1
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.end32
  %43 = ptrtoint ptr %fe_status to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %fe_status, align 4
  %and43 = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.else65, label %if.then45

if.then45:                                        ; preds = %if.end41
  %45 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap, align 4
  %call47 = call i32 @regmap_bulk_read(ptr noundef %46, i32 noundef 58, ptr noundef nonnull %buf, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.then45.do.body207_crit_edge

if.then45.do.body207_crit_edge:                   ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body207

if.end50:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  %stat51 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %47 = ptrtoint ptr %stat51 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %stat51, align 1
  %48 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %buf, align 8
  %conv55 = zext i8 %49 to i32
  %shl = shl nuw nsw i32 %conv55, 8
  %50 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %9, align 1
  %conv57 = zext i8 %51 to i32
  %or59 = or i32 %shl, %conv57
  %mul60 = mul nuw nsw i32 %or59, 100
  %conv61 = zext i32 %mul60 to i64
  %52 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 8)
  store i64 %conv61, ptr %52, align 1
  br label %if.end70

if.else65:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %stat67 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %54 = ptrtoint ptr %stat67 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %stat67, align 1
  br label %if.end70

if.end70:                                         ; preds = %if.else65, %if.end50
  %55 = ptrtoint ptr %fe_status to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fe_status, align 4
  %and72 = and i32 %56, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.else197, label %if.then74

if.then74:                                        ; preds = %if.end70
  %delivery_system76 = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 13
  %57 = ptrtoint ptr %delivery_system76 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %delivery_system76, align 8
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %58, label %if.then74.do.body207_crit_edge [
    i32 5, label %if.then74.sw.epilog_crit_edge
    i32 6, label %sw.bb77
  ]

if.then74.sw.epilog_crit_edge:                    ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then74.do.body207_crit_edge:                   ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body207

sw.bb77:                                          ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb77, %if.then74.sw.epilog_crit_edge
  %delivery_system.0 = phi i8 [ 0, %sw.bb77 ], [ 1, %if.then74.sw.epilog_crit_edge ]
  %reg.0 = phi i32 [ 77, %sw.bb77 ], [ 76, %if.then74.sw.epilog_crit_edge ]
  %len75.0 = phi i32 [ 4, %sw.bb77 ], [ 8, %if.then74.sw.epilog_crit_edge ]
  %60 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap, align 4
  %call80 = call i32 @regmap_read(ptr noundef %61, i32 noundef %reg.0, ptr noundef nonnull %uitmp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %sw.epilog.do.body207_crit_edge

sw.epilog.do.body207_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body207

if.end83:                                         ; preds = %sw.epilog
  %meas_count = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 10
  %62 = ptrtoint ptr %meas_count to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %meas_count, align 2
  %conv84 = zext i8 %63 to i32
  %64 = ptrtoint ptr %uitmp to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %uitmp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %conv84)
  %cmp = icmp eq i32 %65, %conv84
  br i1 %cmp, label %do.body, label %if.else94

do.body:                                          ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda10071_read_status.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda10071_read_status, %if.then91)) #10
          to label %do.body207 [label %if.then91], !srcloc !179

if.then91:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev92 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %66 = ptrtoint ptr %uitmp to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %uitmp, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda10071_read_status.__UNIQUE_ID_ddebug308, ptr noundef %dev92, ptr noundef nonnull @.str.44, i32 noundef %67) #10
  br label %do.body207

if.else94:                                        ; preds = %if.end83
  %conv95 = trunc i32 %65 to i8
  %68 = ptrtoint ptr %meas_count to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv95, ptr %meas_count, align 2
  %69 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 63, ptr %cmd, align 1
  %70 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %4, align 1
  %71 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %delivery_system.0, ptr %5, align 1
  %72 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 3, ptr %6, align 1
  %call105 = call fastcc i32 @tda10071_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end108, label %if.else94.do.body207_crit_edge

if.else94.do.body207_crit_edge:                   ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body207

if.end108:                                        ; preds = %if.else94
  %73 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap, align 4
  %75 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %6, align 1
  %conv111 = zext i8 %76 to i32
  %call114 = call i32 @regmap_bulk_read(ptr noundef %74, i32 noundef %conv111, ptr noundef nonnull %buf, i32 noundef %len75.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end117, label %if.end108.do.body207_crit_edge

if.end108.do.body207_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body207

if.end117:                                        ; preds = %if.end108
  %77 = ptrtoint ptr %delivery_system76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %delivery_system76, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %78)
  %cmp119 = icmp eq i32 %78, 5
  %79 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %buf, align 8
  %conv123 = zext i8 %80 to i32
  br i1 %cmp119, label %if.then121, label %if.else163

if.then121:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  %shl124 = shl nuw i32 %conv123, 24
  %81 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %9, align 1
  %conv126 = zext i8 %82 to i32
  %shl127 = shl nuw nsw i32 %conv126, 16
  %or128 = or i32 %shl127, %shl124
  %83 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %10, align 2
  %conv130 = zext i8 %84 to i32
  %shl131 = shl nuw nsw i32 %conv130, 8
  %or132 = or i32 %or128, %shl131
  %85 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %11, align 1
  %conv134 = zext i8 %86 to i32
  %or136 = or i32 %or132, %conv134
  %dvbv3_ber = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 11
  %87 = ptrtoint ptr %dvbv3_ber to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %or136, ptr %dvbv3_ber, align 8
  %conv137 = zext i32 %or136 to i64
  %post_bit_error = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 15
  %88 = ptrtoint ptr %post_bit_error to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %post_bit_error, align 8
  %add = add i64 %89, %conv137
  store i64 %add, ptr %post_bit_error, align 8
  %stat139 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  %90 = ptrtoint ptr %stat139 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 3, ptr %stat139, align 1
  %91 = load i64, ptr %post_bit_error, align 8
  %92 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_storeN_noabort(i32 %93, i32 8)
  store i64 %91, ptr %92, align 1
  %94 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %12, align 4
  %conv147 = zext i8 %95 to i32
  %shl148 = shl nuw nsw i32 %conv147, 8
  %96 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %13, align 1
  %conv150 = zext i8 %97 to i32
  %or152 = or i32 %shl148, %conv150
  %conv153 = zext i32 %or152 to i64
  %block_error = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 16
  %98 = ptrtoint ptr %block_error to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %block_error, align 8
  %add154 = add i64 %99, %conv153
  store i64 %add154, ptr %block_error, align 8
  %stat156 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1
  %100 = ptrtoint ptr %stat156 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 3, ptr %stat156, align 1
  %101 = load i64, ptr %block_error, align 8
  %102 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1, i32 0, i32 1
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_storeN_noabort(i32 %103, i32 8)
  store i64 %101, ptr %102, align 1
  br label %cleanup224

if.else163:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  %shl166 = shl nuw nsw i32 %conv123, 8
  %104 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %9, align 1
  %conv168 = zext i8 %105 to i32
  %or170 = or i32 %shl166, %conv168
  %dvbv3_ber171 = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 11
  %106 = ptrtoint ptr %dvbv3_ber171 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %or170, ptr %dvbv3_ber171, align 8
  %conv179 = zext i32 %or170 to i64
  %post_bit_error180 = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 15
  %107 = ptrtoint ptr %post_bit_error180 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %post_bit_error180, align 8
  %add181 = add i64 %108, %conv179
  store i64 %add181, ptr %post_bit_error180, align 8
  %stat183 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  %109 = ptrtoint ptr %stat183 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 3, ptr %stat183, align 1
  %110 = load i64, ptr %post_bit_error180, align 8
  %111 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_storeN_noabort(i32 %112, i32 8)
  store i64 %110, ptr %111, align 1
  %stat191 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1
  %113 = ptrtoint ptr %stat191 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %stat191, align 1
  br label %cleanup224

if.else197:                                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  %stat199 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  %114 = ptrtoint ptr %stat199 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %stat199, align 1
  %stat203 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1
  %115 = ptrtoint ptr %stat203 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %stat203, align 1
  br label %cleanup224

do.body207:                                       ; preds = %if.end108.do.body207_crit_edge, %if.else94.do.body207_crit_edge, %if.then91, %do.body, %sw.epilog.do.body207_crit_edge, %if.then74.do.body207_crit_edge, %if.then45.do.body207_crit_edge, %if.end27.do.body207_crit_edge, %if.then21.do.body207_crit_edge, %if.end.do.body207_crit_edge, %entry.do.body207_crit_edge
  %ret.4 = phi i32 [ %call, %if.end.do.body207_crit_edge ], [ %call24, %if.then21.do.body207_crit_edge ], [ %call29, %if.end27.do.body207_crit_edge ], [ %call47, %if.then45.do.body207_crit_edge ], [ 0, %entry.do.body207_crit_edge ], [ 0, %do.body ], [ %call114, %if.end108.do.body207_crit_edge ], [ %call105, %if.else94.do.body207_crit_edge ], [ 0, %if.then91 ], [ %call80, %sw.epilog.do.body207_crit_edge ], [ -22, %if.then74.do.body207_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda10071_read_status.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda10071_read_status, %if.then219)) #10
          to label %cleanup224 [label %if.then219], !srcloc !179

if.then219:                                       ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #12
  %dev220 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda10071_read_status.__UNIQUE_ID_ddebug309, ptr noundef %dev220, ptr noundef nonnull @.str.8, i32 noundef %ret.4) #10
  br label %cleanup224

cleanup224:                                       ; preds = %if.then219, %do.body207, %if.else197, %if.else163, %if.then121
  %retval.0 = phi i32 [ 0, %if.else197 ], [ %ret.4, %if.then219 ], [ %ret.4, %do.body207 ], [ 0, %if.else163 ], [ 0, %if.then121 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uitmp) #10
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %cmd) #10
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tda10071_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %dvbv3_ber = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dvbv3_ber to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dvbv3_ber, align 8
  %4 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %ber, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10071_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #2 align 64 {
entry:
  %remainder.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1
  %0 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i) #10
  %5 = ptrtoint ptr %remainder.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %remainder.i, align 4, !annotation !177
  %call.i = call i64 @div_s64_rem(i64 noundef %4, i32 noundef 1000, ptr noundef nonnull %remainder.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i) #10
  %6 = trunc i64 %call.i to i32
  %conv6 = add i32 %6, 256
  %7 = call i32 @llvm.umax.i32(i32 %conv6, i32 181)
  %8 = call i32 @llvm.umin.i32(i32 %7, i32 236)
  %9 = mul nuw nsw i32 %8, 65535
  %mul = add nsw i32 %9, -11861835
  %div = udiv i32 %mul, 55
  %conv16 = trunc i32 %div to i16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %storemerge = phi i16 [ %conv16, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %10 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %storemerge, ptr %strength, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10071_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #2 align 64 {
entry:
  %remainder.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %0 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i) #10
  %5 = ptrtoint ptr %remainder.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %remainder.i, align 4, !annotation !177
  %call.i = call i64 @div_s64_rem(i64 noundef %4, i32 noundef 100, ptr noundef nonnull %remainder.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i) #10
  %conv5 = trunc i64 %call.i to i16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %storemerge = phi i16 [ %conv5, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %6 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %storemerge, ptr %snr, align 2
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tda10071_read_ucblocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ucblocks) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1
  %0 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp = icmp eq i8 %1, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %2, align 1
  %conv5 = trunc i64 %4 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %storemerge = phi i32 [ %conv5, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %5 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %storemerge, ptr %ucblocks, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10071_diseqc_send_master_cmd(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %diseqc_cmd) #2 align 64 {
entry:
  %cmd = alloca %struct.tda10071_cmd, align 1
  %uitmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %client1 = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 8
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %cmd) #10
  %4 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 1
  %5 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 2
  %6 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 3
  %7 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 4
  %8 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 5
  %9 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 6
  %10 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 7
  %11 = getelementptr inbounds %struct.tda10071_cmd, ptr %cmd, i32 0, i32 1
  %12 = call ptr @memset(ptr %cmd, i32 255, i32 31)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uitmp) #10
  %13 = ptrtoint ptr %uitmp to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %uitmp, align 4, !annotation !177
  %warm = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 14
  %14 = ptrtoint ptr %warm to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %warm, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %entry.do.body75_crit_edge, label %do.body

entry.do.body75_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body75

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda10071_diseqc_send_master_cmd.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda10071_diseqc_send_master_cmd, %if.then5)) #10
          to label %do.end [label %if.then5], !srcloc !179

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev6 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %diseqc_cmd, i32 0, i32 1
  %16 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %msg_len, align 1
  %conv = zext i8 %17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda10071_diseqc_send_master_cmd.__UNIQUE_ID_ddebug298, ptr noundef %dev6, ptr noundef nonnull @.str.46, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %msg_len8 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %diseqc_cmd, i32 0, i32 1
  %18 = ptrtoint ptr %msg_len8 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %msg_len8, align 1
  %20 = add i8 %19, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %20)
  %21 = icmp ult i8 %20, -4
  br i1 %21, label %do.end.do.body75_crit_edge, label %if.end16

do.end.do.body75_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body75

if.end16:                                         ; preds = %do.end
  %22 = ptrtoint ptr %uitmp to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %uitmp, align 4
  %regmap = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 2
  br label %for.body

land.rhsthread-pre-split:                         ; preds = %if.end24
  %23 = ptrtoint ptr %uitmp to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr = load i32, ptr %uitmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool18.not = icmp eq i32 %.pr, 0
  br i1 %tobool18.not, label %land.rhsthread-pre-split.for.body_crit_edge, label %land.rhsthread-pre-split.do.body25_crit_edge

land.rhsthread-pre-split.do.body25_crit_edge:     ; preds = %land.rhsthread-pre-split
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body25

land.rhsthread-pre-split.for.body_crit_edge:      ; preds = %land.rhsthread-pre-split
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %land.rhsthread-pre-split.for.body_crit_edge, %if.end16
  %tobool18.not133 = phi i1 [ true, %if.end16 ], [ %tobool18.not, %land.rhsthread-pre-split.for.body_crit_edge ]
  %i.0128132 = phi i32 [ 500, %if.end16 ], [ %dec, %land.rhsthread-pre-split.for.body_crit_edge ]
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call21 = call i32 @regmap_read(ptr noundef %25, i32 noundef 71, ptr noundef nonnull %uitmp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %for.body.do.body75_crit_edge

for.body.do.body75_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body75

if.end24:                                         ; preds = %for.body
  %26 = ptrtoint ptr %uitmp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %uitmp, align 4
  %and = and i32 %27, 1
  store i32 %and, ptr %uitmp, align 4
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #10
  %dec = add nsw i32 %i.0128132, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool17.not = icmp eq i32 %dec, 0
  br i1 %tobool17.not, label %if.end24.do.body25_crit_edge, label %land.rhsthread-pre-split

if.end24.do.body25_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body25

do.body25:                                        ; preds = %if.end24.do.body25_crit_edge, %land.rhsthread-pre-split.do.body25_crit_edge
  %tobool18.not.lcssa = phi i1 [ %tobool18.not, %land.rhsthread-pre-split.do.body25_crit_edge ], [ %tobool18.not133, %if.end24.do.body25_crit_edge ]
  %i.0.lcssa = phi i32 [ %dec, %land.rhsthread-pre-split.do.body25_crit_edge ], [ 0, %if.end24.do.body25_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda10071_diseqc_send_master_cmd.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda10071_diseqc_send_master_cmd, %if.then37)) #10
          to label %do.end41 [label %if.then37], !srcloc !179

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #12
  %dev38 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda10071_diseqc_send_master_cmd.__UNIQUE_ID_ddebug299, ptr noundef %dev38, ptr noundef nonnull @.str.32, i32 noundef %i.0.lcssa) #10
  br label %do.end41

do.end41:                                         ; preds = %if.then37, %do.body25
  br i1 %tobool18.not.lcssa, label %do.end41.do.body75_crit_edge, label %if.end45

do.end41.do.body75_crit_edge:                     ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body75

if.end45:                                         ; preds = %do.end41
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 71, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool48.not = icmp eq i32 %call.i, 0
  br i1 %tobool48.not, label %if.end50, label %if.end45.do.body75_crit_edge

if.end45.do.body75_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body75

if.end50:                                         ; preds = %if.end45
  %30 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 33, ptr %cmd, align 1
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %4, align 1
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %5, align 1
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %6, align 1
  %34 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 2, ptr %7, align 1
  %35 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %8, align 1
  %36 = ptrtoint ptr %msg_len8 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %msg_len8, align 1
  %38 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %9, align 1
  %conv67 = zext i8 %37 to i32
  %39 = call ptr @memcpy(ptr %10, ptr %diseqc_cmd, i32 %conv67)
  %add = add i8 %37, 7
  %40 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %add, ptr %11, align 1
  %call71 = call fastcc i32 @tda10071_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end50.cleanup_crit_edge, label %if.end50.do.body75_crit_edge

if.end50.do.body75_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body75

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body75:                                        ; preds = %if.end50.do.body75_crit_edge, %if.end45.do.body75_crit_edge, %do.end41.do.body75_crit_edge, %for.body.do.body75_crit_edge, %do.end.do.body75_crit_edge, %entry.do.body75_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end45.do.body75_crit_edge ], [ %call71, %if.end50.do.body75_crit_edge ], [ -14, %entry.do.body75_crit_edge ], [ -22, %do.end.do.body75_crit_edge ], [ -110, %do.end41.do.body75_crit_edge ], [ %call21, %for.body.do.body75_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda10071_diseqc_send_master_cmd.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda10071_diseqc_send_master_cmd, %if.then87)) #10
          to label %cleanup [label %if.then87], !srcloc !179

if.then87:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #12
  %dev88 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda10071_diseqc_send_master_cmd.__UNIQUE_ID_ddebug300, ptr noundef %dev88, ptr noundef nonnull @.str.8, i32 noundef %ret.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then87, %do.body75, %if.end50.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end50.cleanup_crit_edge ], [ %ret.0, %if.then87 ], [ %ret.0, %do.body75 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uitmp) #10
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %cmd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10071_diseqc_recv_slave_reply(ptr nocapture noundef readonly %fe, ptr noundef %reply) #2 align 64 {
entry:
  %cmd = alloca %struct.tda10071_cmd, align 1
  %uitmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %client1 = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 8
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %cmd) #10
  %4 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 1
  %5 = getelementptr inbounds %struct.tda10071_cmd, ptr %cmd, i32 0, i32 1
  %6 = call ptr @memset(ptr %cmd, i32 255, i32 31)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uitmp) #10
  %7 = ptrtoint ptr %uitmp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %uitmp, align 4, !annotation !177
  %warm = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %warm to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %warm, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.do.body63_crit_edge, label %do.body

entry.do.body63_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body63

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda10071_diseqc_recv_slave_reply.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda10071_diseqc_recv_slave_reply, %if.then5)) #10
          to label %do.end [label %if.then5], !srcloc !179

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev6 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda10071_diseqc_recv_slave_reply.__UNIQUE_ID_ddebug301, ptr noundef %dev6, ptr noundef nonnull @.str.48) #10
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %10 = ptrtoint ptr %uitmp to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %uitmp, align 4
  %regmap = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 2
  br label %for.body

land.rhsthread-pre-split:                         ; preds = %if.end15
  %11 = ptrtoint ptr %uitmp to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %uitmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool9.not = icmp eq i32 %.pr, 0
  br i1 %tobool9.not, label %land.rhsthread-pre-split.for.body_crit_edge, label %land.rhsthread-pre-split.do.body16_crit_edge

land.rhsthread-pre-split.do.body16_crit_edge:     ; preds = %land.rhsthread-pre-split
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body16

land.rhsthread-pre-split.for.body_crit_edge:      ; preds = %land.rhsthread-pre-split
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %land.rhsthread-pre-split.for.body_crit_edge, %do.end
  %tobool9.not121 = phi i1 [ true, %do.end ], [ %tobool9.not, %land.rhsthread-pre-split.for.body_crit_edge ]
  %i.0116120 = phi i32 [ 500, %do.end ], [ %dec, %land.rhsthread-pre-split.for.body_crit_edge ]
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call12 = call i32 @regmap_read(ptr noundef %13, i32 noundef 71, ptr noundef nonnull %uitmp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %for.body.do.body63_crit_edge

for.body.do.body63_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body63

if.end15:                                         ; preds = %for.body
  %14 = ptrtoint ptr %uitmp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %uitmp, align 4
  %shr = lshr i32 %15, 1
  %and = and i32 %shr, 1
  store i32 %and, ptr %uitmp, align 4
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #10
  %dec = add nsw i32 %i.0116120, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool8.not = icmp eq i32 %dec, 0
  br i1 %tobool8.not, label %if.end15.do.body16_crit_edge, label %land.rhsthread-pre-split

if.end15.do.body16_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body16

do.body16:                                        ; preds = %if.end15.do.body16_crit_edge, %land.rhsthread-pre-split.do.body16_crit_edge
  %tobool9.not.lcssa = phi i1 [ %tobool9.not, %land.rhsthread-pre-split.do.body16_crit_edge ], [ %tobool9.not121, %if.end15.do.body16_crit_edge ]
  %i.0.lcssa = phi i32 [ %dec, %land.rhsthread-pre-split.do.body16_crit_edge ], [ 0, %if.end15.do.body16_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda10071_diseqc_recv_slave_reply.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda10071_diseqc_recv_slave_reply, %if.then28)) #10
          to label %do.end32 [label %if.then28], !srcloc !179

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  %dev29 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda10071_diseqc_recv_slave_reply.__UNIQUE_ID_ddebug302, ptr noundef %dev29, ptr noundef nonnull @.str.32, i32 noundef %i.0.lcssa) #10
  br label %do.end32

do.end32:                                         ; preds = %if.then28, %do.body16
  br i1 %tobool9.not.lcssa, label %do.end32.do.body63_crit_edge, label %if.end34

do.end32.do.body63_crit_edge:                     ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body63

if.end34:                                         ; preds = %do.end32
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call36 = call i32 @regmap_read(ptr noundef %17, i32 noundef 70, ptr noundef nonnull %uitmp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end34.do.body63_crit_edge

if.end34.do.body63_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body63

if.end39:                                         ; preds = %if.end34
  %18 = ptrtoint ptr %uitmp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %uitmp, align 4
  %20 = trunc i32 %19 to i8
  %conv = and i8 %20, 31
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_slave_reply, ptr %reply, i32 0, i32 1
  %21 = call i8 @llvm.umin.i8(i8 %conv, i8 4)
  %22 = ptrtoint ptr %msg_len to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %msg_len, align 4
  %23 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 37, ptr %cmd, align 1
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %4, align 1
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %5, align 1
  %call50 = call fastcc i32 @tda10071_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end39.do.body63_crit_edge

if.end39.do.body63_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body63

if.end53:                                         ; preds = %if.end39
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %5, align 1
  %conv56 = zext i8 %29 to i32
  %30 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %msg_len, align 4
  %conv58 = zext i8 %31 to i32
  %call59 = call i32 @regmap_bulk_read(ptr noundef %27, i32 noundef %conv56, ptr noundef %reply, i32 noundef %conv58) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end53.cleanup_crit_edge, label %if.end53.do.body63_crit_edge

if.end53.do.body63_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body63

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body63:                                        ; preds = %if.end53.do.body63_crit_edge, %if.end39.do.body63_crit_edge, %if.end34.do.body63_crit_edge, %do.end32.do.body63_crit_edge, %for.body.do.body63_crit_edge, %entry.do.body63_crit_edge
  %ret.0 = phi i32 [ %call36, %if.end34.do.body63_crit_edge ], [ %call50, %if.end39.do.body63_crit_edge ], [ %call59, %if.end53.do.body63_crit_edge ], [ -14, %entry.do.body63_crit_edge ], [ -110, %do.end32.do.body63_crit_edge ], [ %call12, %for.body.do.body63_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda10071_diseqc_recv_slave_reply.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda10071_diseqc_recv_slave_reply, %if.then75)) #10
          to label %cleanup [label %if.then75], !srcloc !179

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #12
  %dev76 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda10071_diseqc_recv_slave_reply.__UNIQUE_ID_ddebug303, ptr noundef %dev76, ptr noundef nonnull @.str.8, i32 noundef %ret.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then75, %do.body63, %if.end53.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end53.cleanup_crit_edge ], [ %ret.0, %if.then75 ], [ %ret.0, %do.body63 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uitmp) #10
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %cmd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10071_diseqc_send_burst(ptr nocapture noundef readonly %fe, i32 noundef %fe_sec_mini_cmd) #2 align 64 {
entry:
  %cmd = alloca %struct.tda10071_cmd, align 1
  %uitmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %client1 = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 8
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %cmd) #10
  %4 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 1
  %5 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 2
  %6 = getelementptr inbounds %struct.tda10071_cmd, ptr %cmd, i32 0, i32 1
  %7 = call ptr @memset(ptr %cmd, i32 255, i32 31)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uitmp) #10
  %8 = ptrtoint ptr %uitmp to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %uitmp, align 4, !annotation !177
  %warm = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 14
  %9 = ptrtoint ptr %warm to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %warm, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %entry.do.body66_crit_edge, label %do.body

entry.do.body66_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body66

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda10071_diseqc_send_burst.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda10071_diseqc_send_burst, %if.then5)) #10
          to label %do.end [label %if.then5], !srcloc !179

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev6 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda10071_diseqc_send_burst.__UNIQUE_ID_ddebug304, ptr noundef %dev6, ptr noundef nonnull @.str.50, i32 noundef %fe_sec_mini_cmd) #10
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %11 = zext i32 %fe_sec_mini_cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %fe_sec_mini_cmd, label %do.body9 [
    i32 0, label %do.end.sw.epilog_crit_edge
    i32 1, label %sw.bb8
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda10071_diseqc_send_burst.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda10071_diseqc_send_burst, %if.then21)) #10
          to label %do.body66 [label %if.then21], !srcloc !179

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %dev22 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda10071_diseqc_send_burst.__UNIQUE_ID_ddebug305, ptr noundef %dev22, ptr noundef nonnull @.str.51) #10
  br label %do.body66

sw.epilog:                                        ; preds = %sw.bb8, %do.end.sw.epilog_crit_edge
  %burst.0 = phi i8 [ 1, %sw.bb8 ], [ 0, %do.end.sw.epilog_crit_edge ]
  %12 = ptrtoint ptr %uitmp to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %uitmp, align 4
  %regmap = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 2
  br label %for.body

land.rhsthread-pre-split:                         ; preds = %if.end33
  %13 = ptrtoint ptr %uitmp to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %uitmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool27.not = icmp eq i32 %.pr, 0
  br i1 %tobool27.not, label %land.rhsthread-pre-split.for.body_crit_edge, label %land.rhsthread-pre-split.do.body34_crit_edge

land.rhsthread-pre-split.do.body34_crit_edge:     ; preds = %land.rhsthread-pre-split
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body34

land.rhsthread-pre-split.for.body_crit_edge:      ; preds = %land.rhsthread-pre-split
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %land.rhsthread-pre-split.for.body_crit_edge, %sw.epilog
  %tobool27.not125 = phi i1 [ true, %sw.epilog ], [ %tobool27.not, %land.rhsthread-pre-split.for.body_crit_edge ]
  %i.0120124 = phi i32 [ 500, %sw.epilog ], [ %dec, %land.rhsthread-pre-split.for.body_crit_edge ]
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call30 = call i32 @regmap_read(ptr noundef %15, i32 noundef 71, ptr noundef nonnull %uitmp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %for.body.do.body66_crit_edge

for.body.do.body66_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body66

if.end33:                                         ; preds = %for.body
  %16 = ptrtoint ptr %uitmp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %uitmp, align 4
  %and = and i32 %17, 1
  store i32 %and, ptr %uitmp, align 4
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #10
  %dec = add nsw i32 %i.0120124, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool26.not = icmp eq i32 %dec, 0
  br i1 %tobool26.not, label %if.end33.do.body34_crit_edge, label %land.rhsthread-pre-split

if.end33.do.body34_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body34

do.body34:                                        ; preds = %if.end33.do.body34_crit_edge, %land.rhsthread-pre-split.do.body34_crit_edge
  %tobool27.not.lcssa = phi i1 [ %tobool27.not, %land.rhsthread-pre-split.do.body34_crit_edge ], [ %tobool27.not125, %if.end33.do.body34_crit_edge ]
  %i.0.lcssa = phi i32 [ %dec, %land.rhsthread-pre-split.do.body34_crit_edge ], [ 0, %if.end33.do.body34_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda10071_diseqc_send_burst.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda10071_diseqc_send_burst, %if.then46)) #10
          to label %do.end50 [label %if.then46], !srcloc !179

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #12
  %dev47 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda10071_diseqc_send_burst.__UNIQUE_ID_ddebug306, ptr noundef %dev47, ptr noundef nonnull @.str.32, i32 noundef %i.0.lcssa) #10
  br label %do.end50

do.end50:                                         ; preds = %if.then46, %do.body34
  br i1 %tobool27.not.lcssa, label %do.end50.do.body66_crit_edge, label %if.end52

do.end50.do.body66_crit_edge:                     ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body66

if.end52:                                         ; preds = %do.end50
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 71, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool55.not = icmp eq i32 %call.i, 0
  br i1 %tobool55.not, label %if.end57, label %if.end52.do.body66_crit_edge

if.end52.do.body66_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body66

if.end57:                                         ; preds = %if.end52
  %20 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 36, ptr %cmd, align 1
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %4, align 1
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %burst.0, ptr %5, align 1
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 3, ptr %6, align 1
  %call62 = call fastcc i32 @tda10071_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end57.cleanup_crit_edge, label %if.end57.do.body66_crit_edge

if.end57.do.body66_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body66

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body66:                                        ; preds = %if.end57.do.body66_crit_edge, %if.end52.do.body66_crit_edge, %do.end50.do.body66_crit_edge, %for.body.do.body66_crit_edge, %if.then21, %do.body9, %entry.do.body66_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end52.do.body66_crit_edge ], [ %call62, %if.end57.do.body66_crit_edge ], [ -14, %entry.do.body66_crit_edge ], [ -22, %if.then21 ], [ -110, %do.end50.do.body66_crit_edge ], [ -22, %do.body9 ], [ %call30, %for.body.do.body66_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda10071_diseqc_send_burst.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda10071_diseqc_send_burst, %if.then78)) #10
          to label %cleanup [label %if.then78], !srcloc !179

if.then78:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #12
  %dev79 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda10071_diseqc_send_burst.__UNIQUE_ID_ddebug307, ptr noundef %dev79, ptr noundef nonnull @.str.8, i32 noundef %ret.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then78, %do.body66, %if.end57.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end57.cleanup_crit_edge ], [ %ret.0, %if.then78 ], [ %ret.0, %do.body66 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uitmp) #10
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %cmd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10071_set_tone(ptr nocapture noundef readonly %fe, i32 noundef %fe_sec_tone_mode) #2 align 64 {
entry:
  %cmd = alloca %struct.tda10071_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %client1 = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 8
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %cmd) #10
  %4 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 1
  %5 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 2
  %6 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 3
  %7 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 4
  %8 = getelementptr inbounds %struct.tda10071_cmd, ptr %cmd, i32 0, i32 1
  %warm = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 14
  %9 = call ptr @memset(ptr %cmd, i32 255, i32 31)
  %10 = ptrtoint ptr %warm to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %warm, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %entry.do.body38_crit_edge, label %do.body

entry.do.body38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body38

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda10071_set_tone.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda10071_set_tone, %if.then5)) #10
          to label %do.end [label %if.then5], !srcloc !179

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev6 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda10071_set_tone.__UNIQUE_ID_ddebug292, ptr noundef %dev6, ptr noundef nonnull @.str.53, i32 noundef %fe_sec_tone_mode) #10
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %12 = zext i32 %fe_sec_tone_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %fe_sec_tone_mode, label %do.body9 [
    i32 0, label %do.end.sw.epilog_crit_edge
    i32 1, label %sw.bb8
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda10071_set_tone.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda10071_set_tone, %if.then21)) #10
          to label %do.body38 [label %if.then21], !srcloc !179

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %dev22 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda10071_set_tone.__UNIQUE_ID_ddebug293, ptr noundef %dev22, ptr noundef nonnull @.str.54) #10
  br label %do.body38

sw.epilog:                                        ; preds = %sw.bb8, %do.end.sw.epilog_crit_edge
  %tone.0 = phi i8 [ 0, %sw.bb8 ], [ 1, %do.end.sw.epilog_crit_edge ]
  %13 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 35, ptr %cmd, align 1
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %4, align 1
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %5, align 1
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %6, align 1
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %tone.0, ptr %7, align 1
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 5, ptr %8, align 1
  %call34 = call fastcc i32 @tda10071_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.do.body38_crit_edge

sw.epilog.do.body38_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body38

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body38:                                        ; preds = %sw.epilog.do.body38_crit_edge, %if.then21, %do.body9, %entry.do.body38_crit_edge
  %ret.0 = phi i32 [ %call34, %sw.epilog.do.body38_crit_edge ], [ -14, %entry.do.body38_crit_edge ], [ -22, %if.then21 ], [ -22, %do.body9 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda10071_set_tone.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda10071_set_tone, %if.then50)) #10
          to label %cleanup [label %if.then50], !srcloc !179

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #12
  %dev51 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda10071_set_tone.__UNIQUE_ID_ddebug294, ptr noundef %dev51, ptr noundef nonnull @.str.8, i32 noundef %ret.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %do.body38, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog.cleanup_crit_edge ], [ %ret.0, %if.then50 ], [ %ret.0, %do.body38 ]
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %cmd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10071_set_voltage(ptr nocapture noundef readonly %fe, i32 noundef %fe_sec_voltage) #2 align 64 {
entry:
  %cmd = alloca %struct.tda10071_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %client1 = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 8
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %cmd) #10
  %4 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 1
  %5 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 2
  %6 = getelementptr inbounds %struct.tda10071_cmd, ptr %cmd, i32 0, i32 1
  %warm = getelementptr inbounds %struct.tda10071_dev, ptr %1, i32 0, i32 14
  %7 = call ptr @memset(ptr %cmd, i32 255, i32 31)
  %8 = ptrtoint ptr %warm to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %warm, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.do.body35_crit_edge, label %do.body

entry.do.body35_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body35

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda10071_set_voltage.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda10071_set_voltage, %if.then5)) #10
          to label %do.end [label %if.then5], !srcloc !179

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev6 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda10071_set_voltage.__UNIQUE_ID_ddebug295, ptr noundef %dev6, ptr noundef nonnull @.str.56, i32 noundef %fe_sec_voltage) #10
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %fe_sec_voltage)
  %10 = icmp ult i32 %fe_sec_voltage, 3
  br i1 %10, label %switch.lookup, label %do.body10

do.body10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda10071_set_voltage.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda10071_set_voltage, %if.then22)) #10
          to label %do.body35 [label %if.then22], !srcloc !179

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  %dev23 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda10071_set_voltage.__UNIQUE_ID_ddebug296, ptr noundef %dev23, ptr noundef nonnull @.str.57) #10
  br label %do.body35

switch.lookup:                                    ; preds = %do.end
  %switch.cast = trunc i32 %fe_sec_voltage to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 256, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %11 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 34, ptr %cmd, align 1
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %4, align 1
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %switch.masked, ptr %5, align 1
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 3, ptr %6, align 1
  %call31 = call fastcc i32 @tda10071_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %switch.lookup.cleanup_crit_edge, label %switch.lookup.do.body35_crit_edge

switch.lookup.do.body35_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body35

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body35:                                        ; preds = %switch.lookup.do.body35_crit_edge, %if.then22, %do.body10, %entry.do.body35_crit_edge
  %ret.0 = phi i32 [ %call31, %switch.lookup.do.body35_crit_edge ], [ -14, %entry.do.body35_crit_edge ], [ -22, %if.then22 ], [ -22, %do.body10 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda10071_set_voltage.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda10071_set_voltage, %if.then47)) #10
          to label %cleanup [label %if.then47], !srcloc !179

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #12
  %dev48 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda10071_set_voltage.__UNIQUE_ID_ddebug297, ptr noundef %dev48, ptr noundef nonnull @.str.8, i32 noundef %ret.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %do.body35, %switch.lookup.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %switch.lookup.cleanup_crit_edge ], [ %ret.0, %if.then47 ], [ %ret.0, %do.body35 ]
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %cmd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tda10071_cmd_execute(ptr noundef %dev, ptr noundef %cmd) unnamed_addr #2 align 64 {
entry:
  %uitmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr inbounds %struct.tda10071_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uitmp) #10
  %2 = ptrtoint ptr %uitmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %uitmp, align 4, !annotation !177
  %warm = getelementptr inbounds %struct.tda10071_dev, ptr %dev, i32 0, i32 14
  %3 = ptrtoint ptr %warm to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %warm, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.do.body29_crit_edge, label %if.end

entry.do.body29_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body29

if.end:                                           ; preds = %entry
  %cmd_execute_mutex = getelementptr inbounds %struct.tda10071_dev, ptr %dev, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %cmd_execute_mutex, i32 noundef 0) #10
  %regmap = getelementptr inbounds %struct.tda10071_dev, ptr %dev, i32 0, i32 2
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %len = getelementptr inbounds %struct.tda10071_cmd, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %len, align 1
  %conv = zext i8 %8 to i32
  %call = tail call i32 @regmap_bulk_write(ptr noundef %6, i32 noundef 0, ptr noundef %cmd, i32 noundef %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.error_mutex_unlock_crit_edge

if.end.error_mutex_unlock_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_mutex_unlock

if.end4:                                          ; preds = %if.end
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call6 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 31, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end4.error_mutex_unlock_crit_edge

if.end4.error_mutex_unlock_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_mutex_unlock

if.end9:                                          ; preds = %if.end4
  %11 = ptrtoint ptr %uitmp to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %uitmp, align 4
  br label %for.body

land.rhsthread-pre-split:                         ; preds = %if.end16
  %12 = ptrtoint ptr %uitmp to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %uitmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool11.not = icmp eq i32 %.pr, 0
  br i1 %tobool11.not, label %land.rhsthread-pre-split.for.end_crit_edge, label %land.rhsthread-pre-split.for.body_crit_edge

land.rhsthread-pre-split.for.body_crit_edge:      ; preds = %land.rhsthread-pre-split
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

land.rhsthread-pre-split.for.end_crit_edge:       ; preds = %land.rhsthread-pre-split
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %land.rhsthread-pre-split.for.body_crit_edge, %if.end9
  %tobool11.not78 = phi i1 [ false, %if.end9 ], [ %tobool11.not, %land.rhsthread-pre-split.for.body_crit_edge ]
  %i.07377 = phi i32 [ 1000, %if.end9 ], [ %dec, %land.rhsthread-pre-split.for.body_crit_edge ]
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call13 = call i32 @regmap_read(ptr noundef %14, i32 noundef 31, ptr noundef nonnull %uitmp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %for.body.error_mutex_unlock_crit_edge

for.body.error_mutex_unlock_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_mutex_unlock

if.end16:                                         ; preds = %for.body
  call void @usleep_range_state(i32 noundef 200, i32 noundef 5000, i32 noundef 2) #10
  %dec = add nsw i32 %i.07377, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool10.not = icmp eq i32 %dec, 0
  br i1 %tobool10.not, label %if.end16.for.end_crit_edge, label %land.rhsthread-pre-split

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end16.for.end_crit_edge, %land.rhsthread-pre-split.for.end_crit_edge
  %tobool11.not.lcssa = phi i1 [ %tobool11.not78, %if.end16.for.end_crit_edge ], [ %tobool11.not, %land.rhsthread-pre-split.for.end_crit_edge ]
  %i.0.lcssa = phi i32 [ 0, %if.end16.for.end_crit_edge ], [ %dec, %land.rhsthread-pre-split.for.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %cmd_execute_mutex) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda10071_cmd_execute.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda10071_cmd_execute, %if.then22)) #10
          to label %do.end [label %if.then22], !srcloc !179

if.then22:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev23 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda10071_cmd_execute.__UNIQUE_ID_ddebug290, ptr noundef %dev23, ptr noundef nonnull @.str.32, i32 noundef %i.0.lcssa) #10
  br label %do.end

do.end:                                           ; preds = %if.then22, %for.end
  br i1 %tobool11.not.lcssa, label %do.end.cleanup_crit_edge, label %do.end.do.body29_crit_edge

do.end.do.body29_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body29

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

error_mutex_unlock:                               ; preds = %for.body.error_mutex_unlock_crit_edge, %if.end4.error_mutex_unlock_crit_edge, %if.end.error_mutex_unlock_crit_edge
  %ret.1 = phi i32 [ %call, %if.end.error_mutex_unlock_crit_edge ], [ %call6, %if.end4.error_mutex_unlock_crit_edge ], [ %call13, %for.body.error_mutex_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %cmd_execute_mutex) #10
  br label %do.body29

do.body29:                                        ; preds = %error_mutex_unlock, %do.end.do.body29_crit_edge, %entry.do.body29_crit_edge
  %ret.2 = phi i32 [ %ret.1, %error_mutex_unlock ], [ -14, %entry.do.body29_crit_edge ], [ -110, %do.end.do.body29_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda10071_cmd_execute.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda10071_cmd_execute, %if.then41)) #10
          to label %cleanup [label %if.then41], !srcloc !179

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  %dev42 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda10071_cmd_execute.__UNIQUE_ID_ddebug291, ptr noundef %dev42, ptr noundef nonnull @.str.8, i32 noundef %ret.2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %do.body29, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ %ret.2, %if.then41 ], [ %ret.2, %do.body29 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uitmp) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
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
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !23, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !37, !39, !41, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !73, !74, !75, !77, !79, !80, !82, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !106, !108, !109, !111, !112, !113, !115, !117, !118, !119, !121, !123, !125, !126, !127, !129, !131, !133, !134, !135, !137, !138, !140, !142, !144, !145, !146, !148, !149, !151, !153, !154, !155, !157, !158, !160, !162, !163, !165, !166}
!llvm.module.flags = !{!168, !169, !170, !171, !172, !173, !174, !175}
!llvm.ident = !{!176}

!0 = !{ptr @__initcall__kmod_tda10071__328_1250_tda10071_driver_init6, !1, !"__initcall__kmod_tda10071__328_1250_tda10071_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 1250, i32 1}
!2 = !{ptr @__exitcall_tda10071_driver_exit, !1, !"__exitcall_tda10071_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author329, !4, !"__UNIQUE_ID_author329", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 1252, i32 1}
!5 = !{ptr @__UNIQUE_ID_description330, !6, !"__UNIQUE_ID_description330", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 1253, i32 1}
!7 = !{ptr @__UNIQUE_ID_file331, !8, !"__UNIQUE_ID_file331", i1 false, i1 false}
!8 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 1254, i32 1}
!9 = !{ptr @__UNIQUE_ID_license332, !8, !"__UNIQUE_ID_license332", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_firmware333, !11, !"__UNIQUE_ID_firmware333", i1 false, i1 false}
!11 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 1255, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 1242, i32 11}
!14 = !{ptr @tda10071_driver, !15, !"tda10071_driver", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 1240, i32 26}
!16 = !{ptr @tda10071_probe.regmap_config, !17, !"regmap_config", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 1155, i32 36}
!18 = !{ptr @tda10071_probe.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 1167, i32 2}
!20 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @tda10071_probe._key, !22, !"_key", i1 false, i1 false}
!22 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 1174, i32 16}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 1215, i32 2}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @tda10071_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @tda10071_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 1220, i32 2}
!34 = !{ptr @tda10071_probe.__UNIQUE_ID_ddebug326, !33, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!35 = !{ptr @tda10071_ops, !36, !"tda10071_ops", i1 false, i1 false}
!36 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 1093, i32 38}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 759, i32 16}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 842, i32 4}
!41 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @tda10071_init._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @tda10071_init._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 873, i32 3}
!47 = !{ptr @tda10071_init._entry.13, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @tda10071_init._entry_ptr.15, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 876, i32 3}
!51 = !{ptr @tda10071_init._entry.16, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @tda10071_init._entry_ptr.18, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 891, i32 5}
!55 = !{ptr @tda10071_init._entry.19, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @tda10071_init._entry_ptr.21, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 915, i32 4}
!59 = !{ptr @tda10071_init._entry.22, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @tda10071_init._entry_ptr.24, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 932, i32 3}
!63 = !{ptr @tda10071_init._entry.25, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @tda10071_init._entry_ptr.27, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 934, i32 3}
!67 = !{ptr @tda10071_init._entry.28, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @tda10071_init._entry_ptr.30, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @tda10071_init.__UNIQUE_ID_ddebug323, !70, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!70 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 1034, i32 2}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 73, i32 2}
!73 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @tda10071_cmd_execute.__UNIQUE_ID_ddebug290, !72, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!75 = !{ptr @tda10071_cmd_execute.__UNIQUE_ID_ddebug291, !76, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!76 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 84, i32 2}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 1079, i32 2}
!79 = !{ptr @tda10071_sleep.__UNIQUE_ID_ddebug324, !78, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 557, i32 2}
!82 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @tda10071_set_frontend.__UNIQUE_ID_ddebug314, !81, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 582, i32 3}
!86 = !{ptr @tda10071_set_frontend.__UNIQUE_ID_ddebug315, !85, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 608, i32 4}
!89 = !{ptr @tda10071_set_frontend.__UNIQUE_ID_ddebug316, !88, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 624, i32 4}
!92 = !{ptr @tda10071_set_frontend.__UNIQUE_ID_ddebug317, !91, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 630, i32 3}
!95 = !{ptr @tda10071_set_frontend.__UNIQUE_ID_ddebug318, !94, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!96 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 640, i32 4}
!98 = !{ptr @tda10071_set_frontend.__UNIQUE_ID_ddebug319, !97, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 646, i32 3}
!101 = !{ptr @tda10071_set_frontend.__UNIQUE_ID_ddebug320, !100, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!102 = !{ptr @tda10071_set_frontend.__UNIQUE_ID_ddebug321, !103, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!103 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 688, i32 2}
!104 = !{ptr @TDA10071_MODCOD, !105, !"TDA10071_MODCOD", i1 false, i1 false}
!105 = !{!"../drivers/media/dvb-frontends/tda10071_priv.h", i32 42, i32 3}
!106 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 746, i32 2}
!108 = !{ptr @tda10071_get_frontend.__UNIQUE_ID_ddebug322, !107, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!109 = !{ptr @.str.43, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 453, i32 4}
!111 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @tda10071_read_status.__UNIQUE_ID_ddebug308, !110, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!113 = !{ptr @tda10071_read_status.__UNIQUE_ID_ddebug309, !114, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!114 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 497, i32 2}
!115 = !{ptr @.str.45, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 193, i32 2}
!117 = !{ptr @.str.46, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @tda10071_diseqc_send_master_cmd.__UNIQUE_ID_ddebug298, !116, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!119 = !{ptr @tda10071_diseqc_send_master_cmd.__UNIQUE_ID_ddebug299, !120, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!120 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 209, i32 2}
!121 = !{ptr @tda10071_diseqc_send_master_cmd.__UNIQUE_ID_ddebug300, !122, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!122 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 235, i32 2}
!123 = !{ptr @.str.47, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 253, i32 2}
!125 = !{ptr @.str.48, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @tda10071_diseqc_recv_slave_reply.__UNIQUE_ID_ddebug301, !124, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!127 = !{ptr @tda10071_diseqc_recv_slave_reply.__UNIQUE_ID_ddebug302, !128, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!128 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 264, i32 2}
!129 = !{ptr @tda10071_diseqc_recv_slave_reply.__UNIQUE_ID_ddebug303, !130, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!130 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 295, i32 2}
!131 = !{ptr @.str.49, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 314, i32 2}
!133 = !{ptr @.str.50, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @tda10071_diseqc_send_burst.__UNIQUE_ID_ddebug304, !132, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!135 = !{ptr @.str.51, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 324, i32 3}
!137 = !{ptr @tda10071_diseqc_send_burst.__UNIQUE_ID_ddebug305, !136, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!138 = !{ptr @tda10071_diseqc_send_burst.__UNIQUE_ID_ddebug306, !139, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!139 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 338, i32 2}
!140 = !{ptr @tda10071_diseqc_send_burst.__UNIQUE_ID_ddebug307, !141, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!141 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 359, i32 2}
!142 = !{ptr @.str.52, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 102, i32 2}
!144 = !{ptr @.str.53, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @tda10071_set_tone.__UNIQUE_ID_ddebug292, !143, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!146 = !{ptr @.str.54, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 112, i32 3}
!148 = !{ptr @tda10071_set_tone.__UNIQUE_ID_ddebug293, !147, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!149 = !{ptr @tda10071_set_tone.__UNIQUE_ID_ddebug294, !150, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!150 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 129, i32 2}
!151 = !{ptr @.str.55, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 147, i32 2}
!153 = !{ptr @.str.56, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @tda10071_set_voltage.__UNIQUE_ID_ddebug295, !152, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!155 = !{ptr @.str.57, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 160, i32 3}
!157 = !{ptr @tda10071_set_voltage.__UNIQUE_ID_ddebug296, !156, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!158 = !{ptr @tda10071_set_voltage.__UNIQUE_ID_ddebug297, !159, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!159 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 175, i32 2}
!160 = !{ptr @.str.58, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 1143, i32 2}
!162 = !{ptr @tda10071_get_dvb_frontend.__UNIQUE_ID_ddebug325, !161, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!163 = !{ptr @.str.59, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 1228, i32 2}
!165 = !{ptr @tda10071_remove.__UNIQUE_ID_ddebug327, !164, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!166 = !{ptr @tda10071_id_table, !167, !"tda10071_id_table", i1 false, i1 false}
!167 = !{!"../drivers/media/dvb-frontends/tda10071.c", i32 1234, i32 35}
!168 = !{i32 1, !"wchar_size", i32 2}
!169 = !{i32 1, !"min_enum_size", i32 4}
!170 = !{i32 8, !"branch-target-enforcement", i32 0}
!171 = !{i32 8, !"sign-return-address", i32 0}
!172 = !{i32 8, !"sign-return-address-all", i32 0}
!173 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!174 = !{i32 7, !"uwtable", i32 1}
!175 = !{i32 7, !"frame-pointer", i32 2}
!176 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!177 = !{!"auto-init"}
!178 = !{i8 0, i8 2}
!179 = !{i64 2148292430, i64 2148292435, i64 2148292448, i64 2148292492, i64 2148292526, i64 2148292547}
