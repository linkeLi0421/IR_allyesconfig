; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/si2168.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/si2168.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.si2168_cmd = type { [30 x i8], i32, i32 }
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
%struct.si2168_dev = type { %struct.mutex, ptr, %struct.dvb_frontend, i32, i32, i32, i32, ptr, i8, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.86], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.86 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.87 }>
%union.anon.87 = type { i64 }
%struct.i2c_mux_core = type { ptr, ptr, i8, ptr, ptr, ptr, i32, i32, [0 x ptr] }
%struct.si2168_config = type { ptr, ptr, i8, i8 }
%struct.firmware = type { i32, ptr, ptr }

@__initcall__kmod_si2168__314_809_si2168_driver_init6 = internal global ptr @si2168_driver_init, section ".initcall6.init", align 4
@si2168_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @si2168_probe, ptr @si2168_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @si2168_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_si2168_driver_exit = internal global ptr @si2168_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author315 = internal constant [45 x i8] c"si2168.author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description316 = internal constant [69 x i8] c"si2168.description=Silicon Labs Si2168 DVB-T/T2/C demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file317 = internal constant [47 x i8] c"si2168.file=drivers/media/dvb-frontends/si2168\00", section ".modinfo", align 1
@__UNIQUE_ID_license318 = internal constant [19 x i8] c"si2168.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware319 = internal constant [43 x i8] c"si2168.firmware=dvb-demod-si2168-a20-01.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware320 = internal constant [43 x i8] c"si2168.firmware=dvb-demod-si2168-a30-01.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware321 = internal constant [43 x i8] c"si2168.firmware=dvb-demod-si2168-b40-01.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware322 = internal constant [43 x i8] c"si2168.firmware=dvb-demod-si2168-d60-01.fw\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"si2168\00", [25 x i8] zeroinitializer }, align 32
@si2168_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"si2168\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@si2168_probe.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"si2168_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/media/dvb-frontends/si2168.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@si2168_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->i2c_mutex\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\C0\12\00\0C\00\0D\16\00\00\00\00\00\00\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dvb-demod-si2168-a20-01.fw\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dvb-demod-si2168-a30-01.fw\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dvb-demod-si2168-b40-01.fw\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dvb-demod-si2168-d60-01.fw\00", [37 x i8] zeroinitializer }, align 32
@si2168_probe.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.12, i8 0, i8 -74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unknown chip version Si21%d-%c%c%c\0A\00", [60 x i8] zeroinitializer }, align 32
@si2168_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Silicon Labs Si2168\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 48000000, i32 870000000, i32 62500, i32 0, i32 1000000, i32 7200000, i32 0, i32 -1810104658 }, [8 x i8] c"\03\10\01\00\00\00\00\00", ptr null, ptr null, ptr null, ptr @si2168_init, ptr @si2168_sleep, ptr null, ptr @si2168_resume, ptr null, ptr null, ptr null, ptr @si2168_set_frontend, ptr @si2168_get_tune_settings, ptr null, ptr @si2168_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@si2168_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 764, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Silicon Labs Si2168-%c%d%d successfully identified\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@si2168_probe._entry_ptr = internal global ptr @si2168_probe._entry, section ".printk_index", align 4
@si2168_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 767, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"firmware version: %c %d.%d.%d\0A\00", [33 x i8] zeroinitializer }, align 32
@si2168_probe._entry_ptr.18 = internal global ptr @si2168_probe._entry.16, section ".printk_index", align 4
@si2168_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 773, ptr @.str.21, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"probe failed = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@si2168_probe._entry_ptr.22 = internal global ptr @si2168_probe._entry.19, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@si2168_cmd_execute.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"si2168_cmd_execute\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cmd execution took %d ms\0A\00", [38 x i8] zeroinitializer }, align 32
@si2168_cmd_execute.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.25, i8 0, i8 19, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"failed=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\C0\0D\01\00", [28 x i8] zeroinitializer }, align 32
@si2168_select.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.25, i8 0, i8 -103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"si2168_select\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\C0\0D\00\00", [28 x i8] zeroinitializer }, align 32
@si2168_deselect.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.25, i8 0, i8 -99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"si2168_deselect\00", [16 x i8] zeroinitializer }, align 32
@si2168_init.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.3, i8 0, i8 104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"si2168_init\00", [20 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@si2168_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.30, ptr @.str.2, i32 453, ptr @.str.34, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"firmware file '%s' not found\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@si2168_init._entry_ptr = internal global ptr @si2168_init._entry, section ".printk_index", align 4
@si2168_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.30, ptr @.str.2, i32 458, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"downloading firmware from file '%s'\0A\00", [59 x i8] zeroinitializer }, align 32
@si2168_init._entry_ptr.37 = internal global ptr @si2168_init._entry.35, section ".printk_index", align 4
@si2168_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.30, ptr @.str.2, i32 488, ptr @.str.34, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"firmware download failed %d\0A\00", [35 x i8] zeroinitializer }, align 32
@si2168_init._entry_ptr.40 = internal global ptr @si2168_init._entry.38, section ".printk_index", align 4
@si2168_init._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.30, ptr @.str.2, i32 509, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@si2168_init._entry_ptr.44 = internal global ptr @si2168_init._entry.43, section ".printk_index", align 4
@si2168_init.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.25, i8 0, i8 -123, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@si2168_ts_bus_ctrl.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 0, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"si2168_ts_bus_ctrl\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s acquire: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\14\00\0D\10\E8\03\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\14\00\01\10\10\00\00", [25 x i8] zeroinitializer }, align 32
@si2168_sleep.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.3, i8 0, i8 -115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"si2168_sleep\00", [19 x i8] zeroinitializer }, align 32
@si2168_sleep.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.25, i8 0, i8 -110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@si2168_resume.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 0, i8 -118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"si2168_resume\00", [18 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"previously initialized, call si2168_init()\0A\00", [52 x i8] zeroinitializer }, align 32
@si2168_resume.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.53, i8 0, i8 -118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"not initialized yet, skipping init on resume\0A\00", [50 x i8] zeroinitializer }, align 32
@si2168_set_frontend.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.55, i8 0, i8 60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"si2168_set_frontend\00", [44 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"delivery_system=%u modulation=%u frequency=%u bandwidth_hz=%u symbol_rate=%u inversion=%u stream_id=%u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\88\02\02\02\02\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\89!\06\11\FF\98\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\89!\06\11\89\F0\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\89!\06\11\89 \00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\12\08\04\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\14\00\0C\10\12\00\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\14\00\06\10$\00\00", [25 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\14\00\07\10\00$\00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\14\00\0A\10\00\00\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\14\00\0F\10\10\00\00", [25 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\14\00\09\10\E3\08\00", [25 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\14\00\08\10\D7\05\00", [25 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\14\00\01\12\00\00\00", [25 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\14\00\01\03\0C\00\00", [25 x i8] zeroinitializer }, align 32
@si2168_set_frontend.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.25, i8 0, i8 101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@si2168_read_status.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.76, i8 0, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"si2168_read_status\00", [45 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"status=%02x args=%*ph\0A\00", [41 x i8] zeroinitializer }, align 32
@si2168_read_status.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.78, i8 0, i8 48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"post_bit_error=%u post_bit_count=%u ber=%u*10^-%u\0A\00", [45 x i8] zeroinitializer }, align 32
@si2168_read_status.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.80, i8 0, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"block_error=%u\0A\00", [16 x i8] zeroinitializer }, align 32
@si2168_read_status.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.25, i8 0, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@si2168_remove.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.2, ptr @.str.3, i8 0, i8 -61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"si2168_remove\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1094988336, i64 1094988592, i64 1111766064, i64 1145321008]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 16]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 16]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 16]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.86 = private unnamed_addr constant [14 x i8] c"si2168_driver\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 799, i32 26 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 801, i32 26 }
@___asan_gen_.92 = private unnamed_addr constant [16 x i8] c"si2168_id_table\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 793, i32 35 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 683, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 692, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 695, i32 17 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 718, i32 24 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 721, i32 24 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 724, i32 24 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 727, i32 24 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 730, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [11 x i8] c"si2168_ops\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 634, i32 38 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 762, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 765, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 773, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 59, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 79, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 605, i32 17 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 612, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 623, i32 17 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 630, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 417, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 451, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 457, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 488, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 507, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 90, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 94, i32 18 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 100, i32 17 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 566, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 552, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 555, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 239, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 292, i32 17 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 299, i32 18 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 301, i32 18 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 303, i32 18 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 325, i32 17 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 330, i32 17 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 335, i32 17 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 340, i32 17 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 345, i32 17 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 363, i32 17 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 368, i32 17 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 374, i32 17 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 380, i32 17 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 385, i32 17 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 170, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 191, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 212, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.291 = private constant [40 x i8] c"../drivers/media/dvb-frontends/si2168.c\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 781, i32 2 }
@llvm.compiler.used = appending global [87 x ptr] [ptr @__UNIQUE_ID_author315, ptr @__UNIQUE_ID_description316, ptr @__UNIQUE_ID_file317, ptr @__UNIQUE_ID_firmware319, ptr @__UNIQUE_ID_firmware320, ptr @__UNIQUE_ID_firmware321, ptr @__UNIQUE_ID_firmware322, ptr @__UNIQUE_ID_license318, ptr @__exitcall_si2168_driver_exit, ptr @__initcall__kmod_si2168__314_809_si2168_driver_init6, ptr @si2168_driver_exit, ptr @si2168_init._entry, ptr @si2168_init._entry.35, ptr @si2168_init._entry.38, ptr @si2168_init._entry.43, ptr @si2168_init._entry_ptr, ptr @si2168_init._entry_ptr.37, ptr @si2168_init._entry_ptr.40, ptr @si2168_init._entry_ptr.44, ptr @si2168_probe._entry, ptr @si2168_probe._entry.16, ptr @si2168_probe._entry.19, ptr @si2168_probe._entry_ptr, ptr @si2168_probe._entry_ptr.18, ptr @si2168_probe._entry_ptr.22, ptr @si2168_driver, ptr @.str, ptr @si2168_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @si2168_probe.__key, ptr @.str.4, ptr @.str.5, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @si2168_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.81], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2168_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2168_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2168_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2168_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2168_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2168_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2168_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2168_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2168_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2168_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2168_init._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @si2168_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @si2168_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @si2168_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @si2168_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si2168_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %cmd = alloca %struct.si2168_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %cmd) #7
  %2 = call ptr @memset(ptr %cmd, i32 255, i32 40)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2168_probe.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2168_probe, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !206

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2168_probe.__UNIQUE_ID_ddebug311, ptr noundef %dev, ptr noundef nonnull @.str.3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 1160) #10
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %do.end.do.end166_crit_edge, label %if.end8

do.end.do.end166_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end166

if.end8:                                          ; preds = %do.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @si2168_probe.__key) #7
  %5 = call ptr @memcpy(ptr %cmd, ptr @.str.5, i32 13)
  %wlen1.i = getelementptr inbounds %struct.si2168_cmd, ptr %cmd, i32 0, i32 1
  %6 = ptrtoint ptr %wlen1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 13, ptr %wlen1.i, align 8
  %rlen2.i = getelementptr inbounds %struct.si2168_cmd, ptr %cmd, i32 0, i32 2
  %7 = ptrtoint ptr %rlen2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %rlen2.i, align 4
  %call12 = call fastcc i32 @si2168_cmd_execute(ptr noundef %client, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end8.err_kfree_crit_edge

if.end8.err_kfree_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_kfree

if.end15:                                         ; preds = %if.end8
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -4609996004628881407, ptr %cmd, align 8
  %9 = ptrtoint ptr %wlen1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8, ptr %wlen1.i, align 8
  %10 = ptrtoint ptr %rlen2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %rlen2.i, align 4
  %call16 = call fastcc i32 @si2168_cmd_execute(ptr noundef %client, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.err_kfree_crit_edge

if.end15.err_kfree_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_kfree

if.end19:                                         ; preds = %if.end15
  %11 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %cmd, align 8
  %12 = ptrtoint ptr %wlen1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %wlen1.i, align 8
  %13 = ptrtoint ptr %rlen2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 13, ptr %rlen2.i, align 4
  %call20 = call fastcc i32 @si2168_cmd_execute(ptr noundef %client, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.err_kfree_crit_edge

if.end19.err_kfree_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_kfree

if.end23:                                         ; preds = %if.end19
  %arrayidx = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %15 to i32
  %shl = shl nuw i32 %conv, 24
  %arrayidx25 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx25, align 2
  %conv26 = zext i8 %17 to i32
  %shl27 = shl nuw nsw i32 %conv26, 16
  %or = or i32 %shl27, %shl
  %arrayidx29 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 3
  %18 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %19 to i32
  %shl31 = shl nuw nsw i32 %conv30, 8
  %or32 = or i32 %or, %shl31
  %arrayidx34 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 4
  %20 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx34, align 4
  %conv35 = zext i8 %21 to i32
  %or37 = or i32 %or32, %conv35
  %chip_id = getelementptr inbounds %struct.si2168_dev, ptr %call7.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %chip_id to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or37, ptr %chip_id, align 8
  %23 = zext i32 %or37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %or37, label %do.body45 [
    i32 1094988336, label %if.end23.sw.epilog_crit_edge
    i32 1094988592, label %sw.bb39
    i32 1111766064, label %sw.bb41
    i32 1145321008, label %sw.bb43
  ]

if.end23.sw.epilog_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body45:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2168_probe.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2168_probe, %if.then57)) #7
          to label %err_kfree [label %if.then57], !srcloc !206

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx25, align 2
  %conv61 = zext i8 %25 to i32
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx, align 1
  %conv64 = zext i8 %27 to i32
  %28 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx29, align 1
  %conv67 = zext i8 %29 to i32
  %30 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx34, align 4
  %conv70 = zext i8 %31 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2168_probe.__UNIQUE_ID_ddebug312, ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %conv61, i32 noundef %conv64, i32 noundef %conv67, i32 noundef %conv70) #7
  br label %err_kfree

sw.epilog:                                        ; preds = %sw.bb43, %sw.bb41, %sw.bb39, %if.end23.sw.epilog_crit_edge
  %.str.11.sink = phi ptr [ @.str.11, %sw.bb43 ], [ @.str.10, %sw.bb41 ], [ @.str.9, %sw.bb39 ], [ @.str.8, %if.end23.sw.epilog_crit_edge ]
  %firmware_name44 = getelementptr inbounds %struct.si2168_dev, ptr %call7.i.i, i32 0, i32 7
  %32 = ptrtoint ptr %firmware_name44 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %.str.11.sink, ptr %firmware_name44, align 8
  %sub = shl nuw nsw i32 %conv30, 16
  %shl81 = add nsw i32 %sub, -3145728
  %or82 = or i32 %shl81, %shl
  %sub86 = shl nuw nsw i32 %conv35, 8
  %shl87 = add nsw i32 %sub86, -12288
  %or88 = or i32 %or82, %shl87
  %arrayidx90 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 5
  %33 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx90, align 1
  %conv91 = zext i8 %34 to i32
  %or93 = or i32 %or88, %conv91
  %version = getelementptr inbounds %struct.si2168_dev, ptr %call7.i.i, i32 0, i32 6
  %35 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or93, ptr %version, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %36 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %adapter, align 8
  %call95 = call ptr @i2c_mux_alloc(ptr noundef %37, ptr noundef %dev, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @si2168_select, ptr noundef nonnull @si2168_deselect) #7
  %muxc = getelementptr inbounds %struct.si2168_dev, ptr %call7.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %muxc to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call95, ptr %muxc, align 4
  %tobool97.not = icmp eq ptr %call95, null
  br i1 %tobool97.not, label %sw.epilog.err_kfree_crit_edge, label %if.end99

sw.epilog.err_kfree_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_kfree

if.end99:                                         ; preds = %sw.epilog
  %priv = getelementptr inbounds %struct.i2c_mux_core, ptr %call95, i32 0, i32 3
  %39 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %client, ptr %priv, align 4
  %40 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %muxc, align 4
  %call102 = call i32 @i2c_mux_add_adapter(ptr noundef %41, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end105, label %if.end99.err_kfree_crit_edge

if.end99.err_kfree_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_kfree

if.end105:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  %fe = getelementptr inbounds %struct.si2168_dev, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.si2168_dev, ptr %call7.i.i, i32 0, i32 2, i32 1
  %42 = call ptr @memcpy(ptr %ops, ptr @si2168_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.si2168_dev, ptr %call7.i.i, i32 0, i32 2, i32 3
  %43 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %client, ptr %demodulator_priv, align 8
  %44 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %muxc, align 4
  %adapter108 = getelementptr inbounds %struct.i2c_mux_core, ptr %45, i32 0, i32 8
  %46 = ptrtoint ptr %adapter108 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %adapter108, align 4
  %i2c_adapter = getelementptr inbounds %struct.si2168_config, ptr %1, i32 0, i32 1
  %48 = ptrtoint ptr %i2c_adapter to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i2c_adapter, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %49, align 4
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %fe, ptr %52, align 4
  %ts_mode = getelementptr inbounds %struct.si2168_config, ptr %1, i32 0, i32 2
  %54 = ptrtoint ptr %ts_mode to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %ts_mode, align 4
  %ts_mode112 = getelementptr inbounds %struct.si2168_dev, ptr %call7.i.i, i32 0, i32 8
  %56 = ptrtoint ptr %ts_mode112 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %ts_mode112, align 4
  %ts_clock_inv = getelementptr inbounds %struct.si2168_config, ptr %1, i32 0, i32 3
  %57 = ptrtoint ptr %ts_clock_inv to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load = load i8, ptr %ts_clock_inv, align 1
  %ts_clock_inv113 = getelementptr inbounds %struct.si2168_dev, ptr %call7.i.i, i32 0, i32 9
  %58 = ptrtoint ptr %ts_clock_inv113 to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load114 = load i8, ptr %ts_clock_inv113, align 1
  %59 = lshr i8 %bf.load, 3
  %bf.shl = and i8 %59, 16
  %bf.clear = and i8 %bf.load114, -29
  %bf.set = or i8 %bf.clear, %bf.shl
  %bf.load115 = load i8, ptr %ts_clock_inv, align 1
  %60 = lshr i8 %bf.load115, 3
  %bf.shl122 = and i8 %60, 8
  %bf.set124 = or i8 %bf.shl122, %bf.set
  %61 = lshr i8 %bf.load115, 3
  %bf.shl133 = and i8 %61, 4
  %bf.set135 = or i8 %bf.set124, %bf.shl133
  store i8 %bf.set135, ptr %ts_clock_inv113, align 1
  %62 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %version, align 4
  %shr = lshr i32 %63, 24
  %shr143 = lshr i32 %63, 16
  %and144 = and i32 %shr143, 255
  %shr146 = lshr i32 %63, 8
  %and147 = and i32 %shr146, 255
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %shr, i32 noundef %and144, i32 noundef %and147) #11
  %64 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %version, align 4
  %shr153 = lshr i32 %65, 24
  %shr156 = lshr i32 %65, 16
  %and157 = and i32 %shr156, 255
  %shr159 = lshr i32 %65, 8
  %and160 = and i32 %shr159, 255
  %and163 = and i32 %65, 255
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %shr153, i32 noundef %and157, i32 noundef %and160, i32 noundef %and163) #11
  br label %cleanup

err_kfree:                                        ; preds = %if.end99.err_kfree_crit_edge, %sw.epilog.err_kfree_crit_edge, %if.then57, %do.body45, %if.end19.err_kfree_crit_edge, %if.end15.err_kfree_crit_edge, %if.end8.err_kfree_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end8.err_kfree_crit_edge ], [ %call16, %if.end15.err_kfree_crit_edge ], [ %call20, %if.end19.err_kfree_crit_edge ], [ %call102, %if.end99.err_kfree_crit_edge ], [ -19, %if.then57 ], [ -12, %sw.epilog.err_kfree_crit_edge ], [ -19, %do.body45 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %do.end166

do.end166:                                        ; preds = %err_kfree, %do.end.do.end166_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_kfree ], [ -12, %do.end.do.end166_crit_edge ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %ret.1) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end166, %if.end105
  %retval.0 = phi i32 [ %ret.1, %do.end166 ], [ 0, %if.end105 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si2168_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2168_remove.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2168_remove, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !206

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2168_remove.__UNIQUE_ID_ddebug313, ptr noundef %dev4, ptr noundef nonnull @.str.3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %muxc = getelementptr inbounds %struct.si2168_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %muxc, align 4
  tail call void @i2c_mux_del_adapters(ptr noundef %3) #7
  %release = getelementptr inbounds %struct.si2168_dev, ptr %1, i32 0, i32 2, i32 1, i32 3
  %4 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %release, align 4
  %demodulator_priv = getelementptr inbounds %struct.si2168_dev, ptr %1, i32 0, i32 2, i32 3
  %5 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %demodulator_priv, align 4
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
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si2168_cmd_execute(ptr noundef %client, ptr noundef %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  %wlen = getelementptr inbounds %struct.si2168_cmd, ptr %cmd, i32 0, i32 1
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
  %rlen = getelementptr inbounds %struct.si2168_cmd, ptr %cmd, i32 0, i32 2
  %6 = ptrtoint ptr %rlen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool9.not = icmp eq i32 %7, 0
  br i1 %tobool9.not, label %if.end8.if.end57_crit_edge, label %if.then10

if.end8.if.end57_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then10:                                        ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %8, 7
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
  %call.i104 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef %cmd, i32 noundef %11, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %cmp17 = icmp slt i32 %call.i104, 0
  br i1 %cmp17, label %while.body.err_mutex_unlock_crit_edge, label %if.else19

while.body.err_mutex_unlock_crit_edge:            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_mutex_unlock

if.else19:                                        ; preds = %while.body
  %12 = ptrtoint ptr %rlen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i104, i32 %13)
  %cmp21.not = icmp eq i32 %call.i104, %13
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2168_cmd_execute.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2168_cmd_execute, %if.then34)) #7
          to label %do.end [label %if.then34], !srcloc !206

if.then34:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev35 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %call36 = tail call i32 @jiffies_to_msecs(i32 noundef %16) #7
  %call37 = tail call i32 @jiffies_to_msecs(i32 noundef %add) #7
  %sub38.neg = add i32 %call36, 70
  %sub39 = sub i32 %sub38.neg, %call37
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2168_cmd_execute.__UNIQUE_ID_ddebug290, ptr noundef %dev35, ptr noundef nonnull @.str.24, i32 noundef %sub39) #7
  br label %do.end

do.end:                                           ; preds = %if.then34, %do.body
  %17 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %cmd, align 4
  %19 = and i8 %18, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool46.not = icmp eq i8 %19, 0
  br i1 %tobool46.not, label %if.end48, label %do.end.err_mutex_unlock_crit_edge

do.end.err_mutex_unlock_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_mutex_unlock

if.end48:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %tobool54.not = icmp sgt i8 %18, -1
  br i1 %tobool54.not, label %if.end48.err_mutex_unlock_crit_edge, label %if.end48.if.end57_crit_edge

if.end48.if.end57_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.end48.err_mutex_unlock_crit_edge:              ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_mutex_unlock

if.end57:                                         ; preds = %if.end48.if.end57_crit_edge, %if.end8.if.end57_crit_edge
  tail call void @mutex_unlock(ptr noundef %1) #7
  br label %cleanup

err_mutex_unlock:                                 ; preds = %if.end48.err_mutex_unlock_crit_edge, %do.end.err_mutex_unlock_crit_edge, %if.else19.err_mutex_unlock_crit_edge, %while.body.err_mutex_unlock_crit_edge, %if.else.err_mutex_unlock_crit_edge, %if.then.err_mutex_unlock_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.then.err_mutex_unlock_crit_edge ], [ -121, %if.else.err_mutex_unlock_crit_edge ], [ -121, %do.end.err_mutex_unlock_crit_edge ], [ -110, %if.end48.err_mutex_unlock_crit_edge ], [ -121, %if.else19.err_mutex_unlock_crit_edge ], [ %call.i104, %while.body.err_mutex_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %1) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2168_cmd_execute.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2168_cmd_execute, %if.then72)) #7
          to label %cleanup [label %if.then72], !srcloc !206

if.then72:                                        ; preds = %err_mutex_unlock
  call void @__sanitizer_cov_trace_pc() #9
  %dev73 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2168_cmd_execute.__UNIQUE_ID_ddebug291, ptr noundef %dev73, ptr noundef nonnull @.str.25, i32 noundef %ret.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then72, %err_mutex_unlock, %if.end57
  %retval.0 = phi i32 [ 0, %if.end57 ], [ %ret.0, %if.then72 ], [ %ret.0, %err_mutex_unlock ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_mux_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si2168_select(ptr nocapture noundef readonly %muxc, i32 noundef %chan) #2 align 64 {
entry:
  %cmd = alloca %struct.si2168_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.i2c_mux_core, ptr %muxc, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %cmd) #7
  %2 = getelementptr inbounds i8, ptr %cmd, i32 3
  %3 = call ptr @memset(ptr %2, i32 255, i32 29)
  %4 = call ptr @memcpy(ptr %cmd, ptr @.str.26, i32 3)
  %wlen1.i = getelementptr inbounds %struct.si2168_cmd, ptr %cmd, i32 0, i32 1
  %5 = ptrtoint ptr %wlen1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %wlen1.i, align 4
  %rlen2.i = getelementptr inbounds %struct.si2168_cmd, ptr %cmd, i32 0, i32 2
  %6 = ptrtoint ptr %rlen2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %rlen2.i, align 4
  %call1 = call fastcc i32 @si2168_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2168_select.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2168_select, %if.then6)) #7
          to label %cleanup [label %if.then6], !srcloc !206

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2168_select.__UNIQUE_ID_ddebug309, ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %call1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %do.body, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %cmd) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si2168_deselect(ptr nocapture noundef readonly %muxc, i32 noundef %chan) #2 align 64 {
entry:
  %cmd = alloca %struct.si2168_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.i2c_mux_core, ptr %muxc, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %cmd) #7
  %2 = getelementptr inbounds i8, ptr %cmd, i32 3
  %3 = call ptr @memset(ptr %2, i32 255, i32 29)
  %4 = call ptr @memcpy(ptr %cmd, ptr @.str.28, i32 3)
  %wlen1.i = getelementptr inbounds %struct.si2168_cmd, ptr %cmd, i32 0, i32 1
  %5 = ptrtoint ptr %wlen1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %wlen1.i, align 4
  %rlen2.i = getelementptr inbounds %struct.si2168_cmd, ptr %cmd, i32 0, i32 2
  %6 = ptrtoint ptr %rlen2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %rlen2.i, align 4
  %call1 = call fastcc i32 @si2168_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2168_deselect.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2168_deselect, %if.then6)) #7
          to label %cleanup [label %if.then6], !srcloc !206

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2168_deselect.__UNIQUE_ID_ddebug310, ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %call1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %do.body, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %cmd) #7
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_mux_add_adapter(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si2168_init(ptr nocapture noundef %fe) #2 align 64 {
entry:
  %fw = alloca ptr, align 4
  %cmd = alloca %struct.si2168_cmd, align 8
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #7
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !207
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %cmd) #7
  %5 = call ptr @memset(ptr %cmd, i32 255, i32 40)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2168_init.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2168_init, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !206

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2168_init.__UNIQUE_ID_ddebug303, ptr noundef %dev4, ptr noundef nonnull @.str.3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = call ptr @memcpy(ptr %cmd, ptr @.str.5, i32 13)
  %wlen1.i = getelementptr inbounds %struct.si2168_cmd, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %wlen1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 13, ptr %wlen1.i, align 8
  %rlen2.i = getelementptr inbounds %struct.si2168_cmd, ptr %cmd, i32 0, i32 2
  %8 = ptrtoint ptr %rlen2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %rlen2.i, align 4
  %call5 = call fastcc i32 @si2168_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.end.do.body166_crit_edge

do.end.do.body166_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body166

if.end8:                                          ; preds = %do.end
  %warm = getelementptr inbounds %struct.si2168_dev, ptr %3, i32 0, i32 9
  %9 = ptrtoint ptr %warm to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %warm, align 1
  %10 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool9.not = icmp eq i8 %10, 0
  br i1 %tobool9.not, label %if.end19, label %if.then10

if.then10:                                        ; preds = %if.end8
  %11 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 -4609988308047486719, ptr %cmd, align 8
  %12 = ptrtoint ptr %wlen1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8, ptr %wlen1.i, align 8
  %13 = ptrtoint ptr %rlen2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %rlen2.i, align 4
  %call11 = call fastcc i32 @si2168_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.then10.do.body166_crit_edge

if.then10.do.body166_crit_edge:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body166

if.end14:                                         ; preds = %if.then10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %14(i32 noundef 21474800) #7
  %15 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -123, ptr %cmd, align 8
  %16 = ptrtoint ptr %wlen1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %wlen1.i, align 8
  %17 = ptrtoint ptr %rlen2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %rlen2.i, align 4
  %call15 = call fastcc i32 @si2168_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end14.warm144_crit_edge, label %if.end14.do.body166_crit_edge

if.end14.do.body166_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body166

if.end14.warm144_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %warm144

if.end19:                                         ; preds = %if.end8
  %18 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 -4609996004628881407, ptr %cmd, align 8
  %19 = ptrtoint ptr %wlen1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8, ptr %wlen1.i, align 8
  %20 = ptrtoint ptr %rlen2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %rlen2.i, align 4
  %call20 = call fastcc i32 @si2168_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.do.body166_crit_edge

if.end19.do.body166_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body166

if.end23:                                         ; preds = %if.end19
  %firmware_name = getelementptr inbounds %struct.si2168_dev, ptr %3, i32 0, i32 7
  %21 = ptrtoint ptr %firmware_name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %firmware_name, align 4
  %dev24 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call25 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef %22, ptr noundef %dev24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  %23 = ptrtoint ptr %firmware_name to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %firmware_name, align 4
  br i1 %tobool26.not, label %do.end36, label %do.end30

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.33, ptr noundef %24) #11
  br label %err_release_firmware

do.end36:                                         ; preds = %if.end23
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev24, ptr noundef nonnull @.str.36, ptr noundef %24) #11
  %25 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fw, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %rem = urem i32 %28, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %land.lhs.true, label %do.end36.if.else_crit_edge

do.end36.if.else_crit_edge:                       ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %do.end36
  %data = getelementptr inbounds %struct.firmware, ptr %26, i32 0, i32 1
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %32)
  %cmp39 = icmp ugt i8 %32, 5
  br i1 %cmp39, label %for.cond.preheader, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

for.cond.preheader:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp43271 = icmp sgt i32 %28, 0
  br i1 %cmp43271, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end92_crit_edge

for.cond.preheader.if.end92_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond:                                         ; preds = %if.end52
  %sub61 = add nsw i32 %remaining.0272, -17
  %cmp43 = icmp sgt i32 %remaining.0272, 17
  br i1 %cmp43, label %for.cond.for.body_crit_edge, label %for.cond.if.end92_crit_edge

for.cond.if.end92_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %remaining.0272 = phi i32 [ %sub61, %for.cond.for.body_crit_edge ], [ %28, %for.cond.preheader.for.body_crit_edge ]
  %33 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fw, align 4
  %data45 = getelementptr inbounds %struct.firmware, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %data45 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data45, align 4
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %34, align 4
  %sub = sub i32 %38, %remaining.0272
  %arrayidx47 = getelementptr i8, ptr %36, i32 %sub
  %39 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx47, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %40)
  %cmp49 = icmp ugt i8 %40, 30
  br i1 %cmp49, label %for.body.do.end90_crit_edge, label %if.end52

for.body.do.end90_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end90

if.end52:                                         ; preds = %for.body
  %conv48 = zext i8 %40 to i32
  %add = add i32 %sub, 1
  %arrayidx56 = getelementptr i8, ptr %36, i32 %add
  %41 = call ptr @memcpy(ptr %cmd, ptr %arrayidx56, i32 %conv48)
  %42 = ptrtoint ptr %wlen1.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv48, ptr %wlen1.i, align 8
  %43 = ptrtoint ptr %rlen2.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %rlen2.i, align 4
  %call57 = call fastcc i32 @si2168_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %for.cond, label %if.end52.do.end90_crit_edge

if.end52.do.end90_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end90

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end36.if.else_crit_edge
  %rem63 = and i32 %28, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem63)
  %cmp64 = icmp eq i32 %rem63, 0
  br i1 %cmp64, label %for.cond68.preheader, label %if.else.do.end90_crit_edge

if.else.do.end90_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end90

for.cond68.preheader:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp69269 = icmp sgt i32 %28, 0
  br i1 %cmp69269, label %for.cond68.preheader.for.body71_crit_edge, label %for.cond68.preheader.if.end92_crit_edge

for.cond68.preheader.if.end92_crit_edge:          ; preds = %for.cond68.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92

for.cond68.preheader.for.body71_crit_edge:        ; preds = %for.cond68.preheader
  br label %for.body71

for.cond68:                                       ; preds = %for.body71
  %sub81 = add nsw i32 %remaining.1270, -8
  %cmp69 = icmp sgt i32 %remaining.1270, 8
  br i1 %cmp69, label %for.cond68.for.body71_crit_edge, label %for.cond68.if.end92_crit_edge

for.cond68.if.end92_crit_edge:                    ; preds = %for.cond68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92

for.cond68.for.body71_crit_edge:                  ; preds = %for.cond68
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body71

for.body71:                                       ; preds = %for.cond68.for.body71_crit_edge, %for.cond68.preheader.for.body71_crit_edge
  %remaining.1270 = phi i32 [ %sub81, %for.cond68.for.body71_crit_edge ], [ %28, %for.cond68.preheader.for.body71_crit_edge ]
  %44 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fw, align 4
  %data72 = getelementptr inbounds %struct.firmware, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %data72 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data72, align 4
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %45, align 4
  %sub74 = sub i32 %49, %remaining.1270
  %arrayidx75 = getelementptr i8, ptr %47, i32 %sub74
  %50 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 8)
  %51 = load i64, ptr %arrayidx75, align 1
  %52 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %cmd, align 8
  %53 = ptrtoint ptr %wlen1.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 8, ptr %wlen1.i, align 8
  %54 = ptrtoint ptr %rlen2.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %rlen2.i, align 4
  %call76 = call fastcc i32 @si2168_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %for.cond68, label %for.body71.do.end90_crit_edge

for.body71.do.end90_crit_edge:                    ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end90

do.end90:                                         ; preds = %for.body71.do.end90_crit_edge, %if.else.do.end90_crit_edge, %if.end52.do.end90_crit_edge, %for.body.do.end90_crit_edge
  %ret.2.ph = phi i32 [ -22, %if.else.do.end90_crit_edge ], [ %call57, %if.end52.do.end90_crit_edge ], [ -22, %for.body.do.end90_crit_edge ], [ %call76, %for.body71.do.end90_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.39, i32 noundef %ret.2.ph) #11
  br label %err_release_firmware

if.end92:                                         ; preds = %for.cond68.if.end92_crit_edge, %for.cond68.preheader.if.end92_crit_edge, %for.cond.if.end92_crit_edge, %for.cond.preheader.if.end92_crit_edge
  %55 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %56) #7
  %57 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 257, ptr %cmd, align 8
  %58 = ptrtoint ptr %wlen1.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 2, ptr %wlen1.i, align 8
  %59 = ptrtoint ptr %rlen2.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %rlen2.i, align 4
  %call93 = call fastcc i32 @si2168_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end96, label %if.end92.do.body166_crit_edge

if.end92.do.body166_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body166

if.end96:                                         ; preds = %if.end92
  %60 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 17, ptr %cmd, align 8
  %61 = ptrtoint ptr %wlen1.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %wlen1.i, align 8
  %62 = ptrtoint ptr %rlen2.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 10, ptr %rlen2.i, align 4
  %call97 = call fastcc i32 @si2168_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end100, label %if.end96.do.body166_crit_edge

if.end96.do.body166_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body166

if.end100:                                        ; preds = %if.end96
  %arrayidx101 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 9
  %63 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx101, align 1
  %conv102 = zext i8 %64 to i32
  %add103 = shl nuw i32 %conv102, 24
  %shl = add i32 %add103, 1073741824
  %arrayidx105 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 6
  %65 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx105, align 2
  %conv106 = zext i8 %66 to i32
  %sub107 = shl nuw nsw i32 %conv106, 16
  %shl108 = add nsw i32 %sub107, -3145728
  %or = or i32 %shl108, %shl
  %arrayidx110 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 7
  %67 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx110, align 1
  %conv111 = zext i8 %68 to i32
  %sub112 = shl nuw nsw i32 %conv111, 8
  %shl113 = add nsw i32 %sub112, -12288
  %or114 = or i32 %or, %shl113
  %arrayidx116 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 8
  %69 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx116, align 8
  %conv117 = zext i8 %70 to i32
  %or119 = or i32 %or114, %conv117
  %version = getelementptr inbounds %struct.si2168_dev, ptr %3, i32 0, i32 6
  %71 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %or119, ptr %version, align 4
  %shr = lshr i32 %or114, 24
  %shr126 = lshr i32 %or114, 16
  %and127 = and i32 %shr126, 255
  %shr129 = lshr exact i32 %shl113, 8
  %and130 = and i32 %shr129, 255
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev24, ptr noundef nonnull @.str.17, i32 noundef %shr, i32 noundef %and127, i32 noundef %and130, i32 noundef %conv117) #11
  %call134 = call fastcc i32 @si2168_ts_bus_ctrl(ptr noundef %fe, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.end137, label %if.end100.do.body166_crit_edge

if.end100.do.body166_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body166

if.end137:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %warm to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load139 = load i8, ptr %warm, align 1
  %bf.set143 = or i8 %bf.load139, 96
  store i8 %bf.set143, ptr %warm, align 1
  br label %warm144

warm144:                                          ; preds = %if.end137, %if.end14.warm144_crit_edge
  %cnr = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43
  %73 = ptrtoint ptr %cnr to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %cnr, align 1
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %74 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %stat, align 1
  %post_bit_error = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46
  %75 = ptrtoint ptr %post_bit_error to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %post_bit_error, align 4
  %stat150 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  %76 = ptrtoint ptr %stat150 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %stat150, align 1
  %post_bit_count = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47
  %77 = ptrtoint ptr %post_bit_count to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %post_bit_count, align 1
  %stat155 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1
  %78 = ptrtoint ptr %stat155 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %stat155, align 1
  %block_error = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48
  %79 = ptrtoint ptr %block_error to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %block_error, align 2
  %stat160 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1
  %80 = ptrtoint ptr %stat160 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %stat160, align 1
  %81 = ptrtoint ptr %warm to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load163 = load i8, ptr %warm, align 1
  %bf.set165 = or i8 %bf.load163, -128
  store i8 %bf.set165, ptr %warm, align 1
  br label %cleanup

err_release_firmware:                             ; preds = %do.end90, %do.end30
  %ret.3 = phi i32 [ %call25, %do.end30 ], [ %ret.2.ph, %do.end90 ]
  %82 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %83) #7
  br label %do.body166

do.body166:                                       ; preds = %err_release_firmware, %if.end100.do.body166_crit_edge, %if.end96.do.body166_crit_edge, %if.end92.do.body166_crit_edge, %if.end19.do.body166_crit_edge, %if.end14.do.body166_crit_edge, %if.then10.do.body166_crit_edge, %do.end.do.body166_crit_edge
  %ret.4 = phi i32 [ %call5, %do.end.do.body166_crit_edge ], [ %call11, %if.then10.do.body166_crit_edge ], [ %call15, %if.end14.do.body166_crit_edge ], [ %call20, %if.end19.do.body166_crit_edge ], [ %ret.3, %err_release_firmware ], [ %call93, %if.end92.do.body166_crit_edge ], [ %call97, %if.end96.do.body166_crit_edge ], [ %call134, %if.end100.do.body166_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2168_init.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2168_init, %if.then178)) #7
          to label %cleanup [label %if.then178], !srcloc !206

if.then178:                                       ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #9
  %dev179 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2168_init.__UNIQUE_ID_ddebug304, ptr noundef %dev179, ptr noundef nonnull @.str.25, i32 noundef %ret.4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then178, %do.body166, %warm144
  %retval.0 = phi i32 [ 0, %warm144 ], [ %ret.4, %if.then178 ], [ %ret.4, %do.body166 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %cmd) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si2168_sleep(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  %cmd = alloca %struct.si2168_cmd, align 4
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
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %cmd) #7
  %4 = call ptr @memset(ptr %cmd, i32 255, i32 40)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2168_sleep.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2168_sleep, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !206

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2168_sleep.__UNIQUE_ID_ddebug307, ptr noundef %dev4, ptr noundef nonnull @.str.3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %active = getelementptr inbounds %struct.si2168_dev, ptr %3, i32 0, i32 9
  %5 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %active, align 1
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %active, align 1
  %call5 = tail call fastcc i32 @si2168_ts_bus_ctrl(ptr noundef %fe, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.end.do.body18_crit_edge

do.end.do.body18_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body18

if.end8:                                          ; preds = %do.end
  %version = getelementptr inbounds %struct.si2168_dev, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1107558411, i32 %7)
  %cmp = icmp ugt i32 %7, 1107558411
  br i1 %cmp, label %if.then9, label %if.end8.if.end13_crit_edge

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then9:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load10 = load i8, ptr %active, align 1
  %bf.clear11 = and i8 %bf.load10, -65
  store i8 %bf.clear11, ptr %active, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end8.if.end13_crit_edge
  %9 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 19, ptr %cmd, align 4
  %wlen1.i = getelementptr inbounds %struct.si2168_cmd, ptr %cmd, i32 0, i32 1
  %10 = ptrtoint ptr %wlen1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %wlen1.i, align 4
  %rlen2.i = getelementptr inbounds %struct.si2168_cmd, ptr %cmd, i32 0, i32 2
  %11 = ptrtoint ptr %rlen2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %rlen2.i, align 4
  %call14 = call fastcc i32 @si2168_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.end13.do.body18_crit_edge

if.end13.do.body18_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body18:                                        ; preds = %if.end13.do.body18_crit_edge, %do.end.do.body18_crit_edge
  %ret.0 = phi i32 [ %call5, %do.end.do.body18_crit_edge ], [ %call14, %if.end13.do.body18_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2168_sleep.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2168_sleep, %if.then30)) #7
          to label %cleanup [label %if.then30], !srcloc !206

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  %dev31 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2168_sleep.__UNIQUE_ID_ddebug308, ptr noundef %dev31, ptr noundef nonnull @.str.25, i32 noundef %ret.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %do.body18, %if.end13.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13.cleanup_crit_edge ], [ %ret.0, %if.then30 ], [ %ret.0, %do.body18 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si2168_resume(ptr nocapture noundef %fe) #2 align 64 {
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
  %initialized = getelementptr inbounds %struct.si2168_dev, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %initialized, align 1
  %5 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %do.body9, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2168_resume.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2168_resume, %if.then5)) #7
          to label %do.end [label %if.then5], !srcloc !206

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev6 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2168_resume.__UNIQUE_ID_ddebug305, ptr noundef %dev6, ptr noundef nonnull @.str.52) #7
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %call7 = tail call i32 @si2168_init(ptr noundef %fe)
  br label %cleanup

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2168_resume.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2168_resume, %if.then21)) #7
          to label %cleanup [label %if.then21], !srcloc !206

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  %dev22 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2168_resume.__UNIQUE_ID_ddebug306, ptr noundef %dev22, ptr noundef nonnull @.str.53) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %do.body9, %do.end
  %retval.0 = phi i32 [ %call7, %do.end ], [ 0, %if.then21 ], [ 0, %do.body9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si2168_set_frontend(ptr noundef %fe) #2 align 64 {
entry:
  %cmd = alloca %struct.si2168_cmd, align 4
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
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %cmd) #7
  %4 = call ptr @memset(ptr %cmd, i32 255, i32 40)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2168_set_frontend.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2168_set_frontend, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !206

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %delivery_system5 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %5 = ptrtoint ptr %delivery_system5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %delivery_system5, align 4
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2168_set_frontend.__UNIQUE_ID_ddebug301, ptr noundef %dev4, ptr noundef nonnull @.str.55, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %active = getelementptr inbounds %struct.si2168_dev, ptr %3, i32 0, i32 9
  %19 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %active, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool6.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool6.not, label %do.end.do.body213_crit_edge, label %if.end8

do.end.do.body213_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body213

if.end8:                                          ; preds = %do.end
  %delivery_system9 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %20 = ptrtoint ptr %delivery_system9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %delivery_system9, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %21, label %if.end8.do.body213_crit_edge [
    i32 3, label %if.end8.sw.epilog_crit_edge
    i32 1, label %sw.bb10
    i32 16, label %sw.bb11
  ]

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end8.do.body213_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body213

sw.bb10:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb10, %if.end8.sw.epilog_crit_edge
  %delivery_system.0 = phi i8 [ 112, %sw.bb11 ], [ 48, %sw.bb10 ], [ 32, %if.end8.sw.epilog_crit_edge ]
  %bandwidth_hz12 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %23 = ptrtoint ptr %bandwidth_hz12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bandwidth_hz12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp = icmp eq i32 %24, 0
  br i1 %cmp, label %sw.epilog.do.body213_crit_edge, label %if.else

sw.epilog.do.body213_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body213

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000001, i32 %24)
  %cmp15 = icmp ult i32 %24, 2000001
  br i1 %cmp15, label %if.else.if.end49_crit_edge, label %if.else17

if.else.if.end49_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.else17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000001, i32 %24)
  %cmp19 = icmp ult i32 %24, 5000001
  br i1 %cmp19, label %if.else17.if.end49_crit_edge, label %if.else21

if.else17.if.end49_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.else21:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000001, i32 %24)
  %cmp23 = icmp ult i32 %24, 6000001
  br i1 %cmp23, label %if.else21.if.end49_crit_edge, label %if.else25

if.else21.if.end49_crit_edge:                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.else25:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000001, i32 %24)
  %cmp27 = icmp ult i32 %24, 7000001
  br i1 %cmp27, label %if.else25.if.end49_crit_edge, label %if.else29

if.else25.if.end49_crit_edge:                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.else29:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000001, i32 %24)
  %cmp31 = icmp ult i32 %24, 8000001
  br i1 %cmp31, label %if.else29.if.end49_crit_edge, label %if.else33

if.else29.if.end49_crit_edge:                     ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.else33:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_const_cmp4(i32 9000001, i32 %24)
  %cmp35 = icmp ult i32 %24, 9000001
  br i1 %cmp35, label %if.else33.if.end49_crit_edge, label %if.else37

if.else33.if.end49_crit_edge:                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.else37:                                        ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000001, i32 %24)
  %cmp39 = icmp ult i32 %24, 10000001
  %. = select i1 %cmp39, i8 10, i8 15
  br label %if.end49

if.end49:                                         ; preds = %if.else37, %if.else33.if.end49_crit_edge, %if.else29.if.end49_crit_edge, %if.else25.if.end49_crit_edge, %if.else21.if.end49_crit_edge, %if.else17.if.end49_crit_edge, %if.else.if.end49_crit_edge
  %bandwidth.0 = phi i8 [ 2, %if.else.if.end49_crit_edge ], [ 5, %if.else17.if.end49_crit_edge ], [ 6, %if.else21.if.end49_crit_edge ], [ 7, %if.else25.if.end49_crit_edge ], [ 8, %if.else29.if.end49_crit_edge ], [ 9, %if.else33.if.end49_crit_edge ], [ %., %if.else37 ]
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %25 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %set_params, align 4
  %tobool50.not = icmp eq ptr %26, null
  br i1 %tobool50.not, label %if.end49.if.end59_crit_edge, label %if.then51

if.end49.if.end59_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then51:                                        ; preds = %if.end49
  %call55 = tail call i32 %26(ptr noundef %fe) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then51.if.end59_crit_edge, label %if.then51.do.body213_crit_edge

if.then51.do.body213_crit_edge:                   ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body213

if.then51.if.end59_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.end59:                                         ; preds = %if.then51.if.end59_crit_edge, %if.end49.if.end59_crit_edge
  %27 = call ptr @memcpy(ptr %cmd, ptr @.str.56, i32 5)
  %wlen1.i = getelementptr inbounds %struct.si2168_cmd, ptr %cmd, i32 0, i32 1
  %28 = ptrtoint ptr %wlen1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 5, ptr %wlen1.i, align 4
  %rlen2.i = getelementptr inbounds %struct.si2168_cmd, ptr %cmd, i32 0, i32 2
  %29 = ptrtoint ptr %rlen2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 5, ptr %rlen2.i, align 4
  %call60 = call fastcc i32 @si2168_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.end59.do.body213_crit_edge

if.end59.do.body213_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body213

if.end63:                                         ; preds = %if.end59
  %30 = ptrtoint ptr %delivery_system9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %delivery_system9, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %31, label %if.end63.if.end77_crit_edge [
    i32 3, label %if.then66
    i32 1, label %if.then70
    i32 16, label %if.then74
  ]

if.end63.if.end77_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  %33 = call ptr @memcpy(ptr %cmd, ptr @.str.57, i32 6)
  br label %if.end77.sink.split

if.then70:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  %34 = call ptr @memcpy(ptr %cmd, ptr @.str.58, i32 6)
  br label %if.end77.sink.split

if.then74:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  %35 = call ptr @memcpy(ptr %cmd, ptr @.str.59, i32 6)
  br label %if.end77.sink.split

if.end77.sink.split:                              ; preds = %if.then74, %if.then70, %if.then66
  %36 = ptrtoint ptr %wlen1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 6, ptr %wlen1.i, align 4
  %37 = ptrtoint ptr %rlen2.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 3, ptr %rlen2.i, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.end77.sink.split, %if.end63.if.end77_crit_edge
  %call78 = call fastcc i32 @si2168_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %if.end77.do.body213_crit_edge

if.end77.do.body213_crit_edge:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body213

if.end81:                                         ; preds = %if.end77
  %38 = ptrtoint ptr %delivery_system9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %delivery_system9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %39)
  %cmp83 = icmp eq i32 %39, 16
  br i1 %cmp83, label %if.then84, label %if.end81.if.end98_crit_edge

if.end81.if.end98_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

if.then84:                                        ; preds = %if.end81
  %40 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 82, ptr %cmd, align 4
  %stream_id85 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 24
  %41 = ptrtoint ptr %stream_id85 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %stream_id85, align 4
  %conv = trunc i32 %42 to i8
  %arrayidx87 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv, ptr %arrayidx87, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %cmp89 = icmp ne i32 %42, -1
  %conv91 = zext i1 %cmp89 to i8
  %arrayidx93 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 2
  %44 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv91, ptr %arrayidx93, align 2
  %45 = ptrtoint ptr %wlen1.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 3, ptr %wlen1.i, align 4
  %46 = ptrtoint ptr %rlen2.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %rlen2.i, align 4
  %call94 = call fastcc i32 @si2168_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.then84.if.end98_crit_edge, label %if.then84.do.body213_crit_edge

if.then84.do.body213_crit_edge:                   ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body213

if.then84.if.end98_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

if.end98:                                         ; preds = %if.then84.if.end98_crit_edge, %if.end81.if.end98_crit_edge
  %47 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 20739, ptr %cmd, align 4
  %48 = ptrtoint ptr %wlen1.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %wlen1.i, align 4
  %49 = ptrtoint ptr %rlen2.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 12, ptr %rlen2.i, align 4
  %call99 = call fastcc i32 @si2168_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end102, label %if.end98.do.body213_crit_edge

if.end98.do.body213_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body213

if.end102:                                        ; preds = %if.end98
  %50 = call ptr @memcpy(ptr %cmd, ptr @.str.61, i32 3)
  %51 = ptrtoint ptr %wlen1.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 3, ptr %wlen1.i, align 4
  %52 = ptrtoint ptr %rlen2.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 3, ptr %rlen2.i, align 4
  %call103 = call fastcc i32 @si2168_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end106, label %if.end102.do.body213_crit_edge

if.end102.do.body213_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body213

if.end106:                                        ; preds = %if.end102
  %53 = call ptr @memcpy(ptr %cmd, ptr @.str.62, i32 6)
  %54 = ptrtoint ptr %wlen1.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 6, ptr %wlen1.i, align 4
  %55 = ptrtoint ptr %rlen2.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 4, ptr %rlen2.i, align 4
  %call107 = call fastcc i32 @si2168_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end110, label %if.end106.do.body213_crit_edge

if.end106.do.body213_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body213

if.end110:                                        ; preds = %if.end106
  %56 = call ptr @memcpy(ptr %cmd, ptr @.str.63, i32 6)
  %57 = ptrtoint ptr %wlen1.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 6, ptr %wlen1.i, align 4
  %58 = ptrtoint ptr %rlen2.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 4, ptr %rlen2.i, align 4
  %call111 = call fastcc i32 @si2168_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end114, label %if.end110.do.body213_crit_edge

if.end110.do.body213_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body213

if.end114:                                        ; preds = %if.end110
  %59 = call ptr @memcpy(ptr %cmd, ptr @.str.64, i32 6)
  %60 = ptrtoint ptr %wlen1.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 6, ptr %wlen1.i, align 4
  %61 = ptrtoint ptr %rlen2.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 4, ptr %rlen2.i, align 4
  %call115 = call fastcc i32 @si2168_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end118, label %if.end114.do.body213_crit_edge

if.end114.do.body213_crit_edge:                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body213

if.end118:                                        ; preds = %if.end114
  %62 = call ptr @memcpy(ptr %cmd, ptr @.str.65, i32 6)
  %63 = ptrtoint ptr %wlen1.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 6, ptr %wlen1.i, align 4
  %64 = ptrtoint ptr %rlen2.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 4, ptr %rlen2.i, align 4
  %or = or i8 %bandwidth.0, %delivery_system.0
  %arrayidx123 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 4
  %65 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %or, ptr %arrayidx123, align 4
  %66 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load124 = load i8, ptr %active, align 1
  %67 = and i8 %bf.load124, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool127.not = icmp eq i8 %67, 0
  br i1 %tobool127.not, label %if.end118.if.end134_crit_edge, label %if.then128

if.end118.if.end134_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end134

if.then128:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx130 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 5
  %68 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx130, align 1
  %70 = or i8 %69, 1
  store i8 %70, ptr %arrayidx130, align 1
  br label %if.end134

if.end134:                                        ; preds = %if.then128, %if.end118.if.end134_crit_edge
  %call135 = call fastcc i32 @si2168_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.end138, label %if.end134.do.body213_crit_edge

if.end134.do.body213_crit_edge:                   ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body213

if.end138:                                        ; preds = %if.end134
  %71 = ptrtoint ptr %delivery_system9 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %delivery_system9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %72)
  %cmp140 = icmp eq i32 %72, 1
  br i1 %cmp140, label %if.then142, label %if.end138.if.end159_crit_edge

if.end138.if.end159_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end159

if.then142:                                       ; preds = %if.end138
  %73 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 335544849, ptr %cmd, align 4
  %74 = ptrtoint ptr %wlen1.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 6, ptr %wlen1.i, align 4
  %75 = ptrtoint ptr %rlen2.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 4, ptr %rlen2.i, align 4
  %symbol_rate143 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %76 = ptrtoint ptr %symbol_rate143 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %symbol_rate143, align 4
  %div = udiv i32 %77, 1000
  %conv145 = trunc i32 %div to i8
  %78 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv145, ptr %arrayidx123, align 4
  %shr150 = lshr i32 %div, 8
  %conv152 = trunc i32 %shr150 to i8
  %arrayidx154 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 5
  %79 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv152, ptr %arrayidx154, align 1
  %call155 = call fastcc i32 @si2168_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %if.then142.if.end159_crit_edge, label %if.then142.do.body213_crit_edge

if.then142.do.body213_crit_edge:                  ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body213

if.then142.if.end159_crit_edge:                   ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end159

if.end159:                                        ; preds = %if.then142.if.end159_crit_edge, %if.end138.if.end159_crit_edge
  %80 = call ptr @memcpy(ptr %cmd, ptr @.str.67, i32 6)
  %81 = ptrtoint ptr %wlen1.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 6, ptr %wlen1.i, align 4
  %82 = ptrtoint ptr %rlen2.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 4, ptr %rlen2.i, align 4
  %call160 = call fastcc i32 @si2168_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %if.end163, label %if.end159.do.body213_crit_edge

if.end159.do.body213_crit_edge:                   ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body213

if.end163:                                        ; preds = %if.end159
  %83 = call ptr @memcpy(ptr %cmd, ptr @.str.68, i32 6)
  %84 = ptrtoint ptr %wlen1.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 6, ptr %wlen1.i, align 4
  %85 = ptrtoint ptr %rlen2.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 4, ptr %rlen2.i, align 4
  %86 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %86)
  %bf.load164 = load i8, ptr %active, align 1
  %87 = and i8 %bf.load164, 16
  %arrayidx171 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 5
  %or173309 = xor i8 %87, 24
  %88 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %or173309, ptr %arrayidx171, align 1
  %call175 = call fastcc i32 @si2168_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175)
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %if.end178, label %if.end163.do.body213_crit_edge

if.end163.do.body213_crit_edge:                   ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body213

if.end178:                                        ; preds = %if.end163
  %89 = call ptr @memcpy(ptr %cmd, ptr @.str.69, i32 6)
  %90 = ptrtoint ptr %wlen1.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 6, ptr %wlen1.i, align 4
  %91 = ptrtoint ptr %rlen2.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 4, ptr %rlen2.i, align 4
  %92 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %92)
  %bf.load180 = load i8, ptr %active, align 1
  %93 = and i8 %bf.load180, 16
  %or189310 = xor i8 %93, 21
  %94 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %or189310, ptr %arrayidx171, align 1
  %call191 = call fastcc i32 @si2168_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191)
  %tobool192.not = icmp eq i32 %call191, 0
  br i1 %tobool192.not, label %if.end194, label %if.end178.do.body213_crit_edge

if.end178.do.body213_crit_edge:                   ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body213

if.end194:                                        ; preds = %if.end178
  %95 = call ptr @memcpy(ptr %cmd, ptr @.str.70, i32 6)
  %96 = ptrtoint ptr %wlen1.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 6, ptr %wlen1.i, align 4
  %97 = ptrtoint ptr %rlen2.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 4, ptr %rlen2.i, align 4
  %call195 = call fastcc i32 @si2168_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195)
  %tobool196.not = icmp eq i32 %call195, 0
  br i1 %tobool196.not, label %if.end198, label %if.end194.do.body213_crit_edge

if.end194.do.body213_crit_edge:                   ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body213

if.end198:                                        ; preds = %if.end194
  %98 = call ptr @memcpy(ptr %cmd, ptr @.str.71, i32 6)
  %99 = ptrtoint ptr %wlen1.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 6, ptr %wlen1.i, align 4
  %100 = ptrtoint ptr %rlen2.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 4, ptr %rlen2.i, align 4
  %call199 = call fastcc i32 @si2168_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call199)
  %tobool200.not = icmp eq i32 %call199, 0
  br i1 %tobool200.not, label %if.end202, label %if.end198.do.body213_crit_edge

if.end198.do.body213_crit_edge:                   ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body213

if.end202:                                        ; preds = %if.end198
  %101 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 -123, ptr %cmd, align 4
  %102 = ptrtoint ptr %wlen1.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 1, ptr %wlen1.i, align 4
  %103 = ptrtoint ptr %rlen2.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 1, ptr %rlen2.i, align 4
  %call203 = call fastcc i32 @si2168_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203)
  %tobool204.not = icmp eq i32 %call203, 0
  br i1 %tobool204.not, label %if.end206, label %if.end202.do.body213_crit_edge

if.end202.do.body213_crit_edge:                   ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body213

if.end206:                                        ; preds = %if.end202
  %104 = ptrtoint ptr %delivery_system9 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %delivery_system9, align 4
  %delivery_system208 = getelementptr inbounds %struct.si2168_dev, ptr %3, i32 0, i32 3
  %106 = ptrtoint ptr %delivery_system208 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %delivery_system208, align 4
  %call209 = call fastcc i32 @si2168_ts_bus_ctrl(ptr noundef %fe, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call209)
  %tobool210.not = icmp eq i32 %call209, 0
  br i1 %tobool210.not, label %if.end206.cleanup_crit_edge, label %if.end206.do.body213_crit_edge

if.end206.do.body213_crit_edge:                   ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body213

if.end206.cleanup_crit_edge:                      ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body213:                                       ; preds = %if.end206.do.body213_crit_edge, %if.end202.do.body213_crit_edge, %if.end198.do.body213_crit_edge, %if.end194.do.body213_crit_edge, %if.end178.do.body213_crit_edge, %if.end163.do.body213_crit_edge, %if.end159.do.body213_crit_edge, %if.then142.do.body213_crit_edge, %if.end134.do.body213_crit_edge, %if.end114.do.body213_crit_edge, %if.end110.do.body213_crit_edge, %if.end106.do.body213_crit_edge, %if.end102.do.body213_crit_edge, %if.end98.do.body213_crit_edge, %if.then84.do.body213_crit_edge, %if.end77.do.body213_crit_edge, %if.end59.do.body213_crit_edge, %if.then51.do.body213_crit_edge, %sw.epilog.do.body213_crit_edge, %if.end8.do.body213_crit_edge, %do.end.do.body213_crit_edge
  %ret.0 = phi i32 [ %call55, %if.then51.do.body213_crit_edge ], [ %call60, %if.end59.do.body213_crit_edge ], [ %call78, %if.end77.do.body213_crit_edge ], [ %call94, %if.then84.do.body213_crit_edge ], [ %call99, %if.end98.do.body213_crit_edge ], [ %call103, %if.end102.do.body213_crit_edge ], [ %call107, %if.end106.do.body213_crit_edge ], [ %call111, %if.end110.do.body213_crit_edge ], [ %call115, %if.end114.do.body213_crit_edge ], [ %call135, %if.end134.do.body213_crit_edge ], [ %call155, %if.then142.do.body213_crit_edge ], [ %call160, %if.end159.do.body213_crit_edge ], [ %call175, %if.end163.do.body213_crit_edge ], [ %call191, %if.end178.do.body213_crit_edge ], [ %call195, %if.end194.do.body213_crit_edge ], [ %call199, %if.end198.do.body213_crit_edge ], [ %call203, %if.end202.do.body213_crit_edge ], [ %call209, %if.end206.do.body213_crit_edge ], [ -11, %do.end.do.body213_crit_edge ], [ -22, %if.end8.do.body213_crit_edge ], [ -22, %sw.epilog.do.body213_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2168_set_frontend.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2168_set_frontend, %if.then225)) #7
          to label %cleanup [label %if.then225], !srcloc !206

if.then225:                                       ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #9
  %dev226 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2168_set_frontend.__UNIQUE_ID_ddebug302, ptr noundef %dev226, ptr noundef nonnull @.str.25, i32 noundef %ret.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then225, %do.body213, %if.end206.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end206.cleanup_crit_edge ], [ %ret.0, %if.then225 ], [ %ret.0, %do.body213 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @si2168_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %s) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 900, ptr %s, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si2168_read_status(ptr nocapture noundef %fe, ptr nocapture noundef %status) #2 align 64 {
entry:
  %cmd = alloca %struct.si2168_cmd, align 4
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
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %cmd) #7
  %4 = call ptr @memset(ptr %cmd, i32 255, i32 40)
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %status, align 4
  %active = getelementptr inbounds %struct.si2168_dev, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %active, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.do.body160_crit_edge, label %if.end

entry.do.body160_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body160

if.end:                                           ; preds = %entry
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %7 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %delivery_system, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %8, label %if.end.do.body160_crit_edge [
    i32 3, label %sw.bb
    i32 1, label %sw.bb1
    i32 16, label %sw.bb2
  ]

if.end.do.body160_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body160

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -24575, ptr %cmd, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -28671, ptr %cmd, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 20481, ptr %cmd, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %sw.bb
  %.sink256 = phi i32 [ 14, %sw.bb2 ], [ 9, %sw.bb1 ], [ 13, %sw.bb ]
  %wlen1.i242 = getelementptr inbounds %struct.si2168_cmd, ptr %cmd, i32 0, i32 1
  %13 = ptrtoint ptr %wlen1.i242 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %wlen1.i242, align 4
  %rlen2.i243 = getelementptr inbounds %struct.si2168_cmd, ptr %cmd, i32 0, i32 2
  %14 = ptrtoint ptr %rlen2.i243 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink256, ptr %rlen2.i243, align 4
  %call3 = call fastcc i32 @si2168_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %sw.epilog.do.body160_crit_edge

sw.epilog.do.body160_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body160

if.end6:                                          ; preds = %sw.epilog
  %arrayidx = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 2
  %17 = lshr i8 %16, 1
  %18 = and i8 %17, 3
  %and = zext i8 %18 to i32
  %19 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %and, label %if.end6.sw.epilog9_crit_edge [
    i32 1, label %if.end6.sw.epilog9.sink.split_crit_edge
    i32 3, label %sw.bb8
  ]

if.end6.sw.epilog9.sink.split_crit_edge:          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog9.sink.split

if.end6.sw.epilog9_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog9

sw.bb8:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog9.sink.split

sw.epilog9.sink.split:                            ; preds = %sw.bb8, %if.end6.sw.epilog9.sink.split_crit_edge
  %.sink257 = phi i32 [ 31, %sw.bb8 ], [ 3, %if.end6.sw.epilog9.sink.split_crit_edge ]
  %20 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink257, ptr %status, align 4
  br label %sw.epilog9

sw.epilog9:                                       ; preds = %sw.epilog9.sink.split, %if.end6.sw.epilog9_crit_edge
  %21 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status, align 4
  %fe_status = getelementptr inbounds %struct.si2168_dev, ptr %3, i32 0, i32 4
  %23 = ptrtoint ptr %fe_status to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %fe_status, align 4
  %24 = load i32, ptr %status, align 4
  %and10 = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %sw.epilog9.do.body_crit_edge, label %if.then12

sw.epilog9.do.body_crit_edge:                     ; preds = %sw.epilog9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then12:                                        ; preds = %sw.epilog9
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx16 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 3
  %25 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %26 to i32
  %div = mul nuw nsw i32 %conv17, 250
  %27 = zext i32 %div to i64
  %28 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %27, ptr %28, align 1
  br label %do.body

do.body:                                          ; preds = %if.then12, %sw.epilog9.do.body_crit_edge
  %.sink = phi i8 [ 1, %if.then12 ], [ 0, %sw.epilog9.do.body_crit_edge ]
  %30 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %30, align 1
  %32 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %.sink, ptr %32, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2168_read_status.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2168_read_status, %if.then33)) #7
          to label %do.end [label %if.then33], !srcloc !206

if.then33:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev34 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %34 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %status, align 4
  %rlen = getelementptr inbounds %struct.si2168_cmd, ptr %cmd, i32 0, i32 2
  %36 = ptrtoint ptr %rlen to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rlen, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2168_read_status.__UNIQUE_ID_ddebug293, ptr noundef %dev34, ptr noundef nonnull @.str.76, i32 noundef %35, i32 noundef %37, ptr noundef nonnull %cmd) #7
  br label %do.end

do.end:                                           ; preds = %if.then33, %do.body
  %38 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %status, align 4
  %and37 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.else101, label %if.then39

if.then39:                                        ; preds = %do.end
  %40 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 -32256, ptr %cmd, align 4
  %wlen1.i244 = getelementptr inbounds %struct.si2168_cmd, ptr %cmd, i32 0, i32 1
  %41 = ptrtoint ptr %wlen1.i244 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %wlen1.i244, align 4
  %rlen2.i245 = getelementptr inbounds %struct.si2168_cmd, ptr %cmd, i32 0, i32 2
  %42 = ptrtoint ptr %rlen2.i245 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 3, ptr %rlen2.i245, align 4
  %call40 = call fastcc i32 @si2168_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.then39.do.body160_crit_edge

if.then39.do.body160_crit_edge:                   ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body160

if.end43:                                         ; preds = %if.then39
  %arrayidx45 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx45, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %44)
  %cmp = icmp ugt i8 %44, 7
  %conv46 = zext i8 %44 to i32
  %sub = sub nsw i32 8, %conv46
  br i1 %cmp, label %if.end43.for.end_crit_edge, label %if.end43.for.body_crit_edge

if.end43.for.body_crit_edge:                      ; preds = %if.end43
  br label %for.body

if.end43.for.end_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end43.for.body_crit_edge
  %i.0254 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end43.for.body_crit_edge ]
  %utmp1.0253 = phi i32 [ %mul58, %for.body.for.body_crit_edge ], [ 1, %if.end43.for.body_crit_edge ]
  %mul58 = mul i32 %utmp1.0253, 10
  %inc = add nuw i32 %i.0254, 1
  %cmp56 = icmp ult i32 %inc, %sub
  br i1 %cmp56, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end43.for.end_crit_edge
  %utmp1.0.lcssa = phi i32 [ 1, %if.end43.for.end_crit_edge ], [ %mul58, %for.body.for.end_crit_edge ]
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx, align 2
  %conv61 = zext i8 %46 to i32
  %mul62 = mul i32 %utmp1.0.lcssa, %conv61
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2168_read_status.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2168_read_status, %if.then75)) #7
          to label %do.end85 [label %if.then75], !srcloc !206

if.then75:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev76 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx, align 2
  %conv79 = zext i8 %48 to i32
  %49 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx45, align 1
  %conv82 = zext i8 %50 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2168_read_status.__UNIQUE_ID_ddebug298, ptr noundef %dev76, ptr noundef nonnull @.str.78, i32 noundef %mul62, i32 noundef 100000000, i32 noundef %conv79, i32 noundef %conv82) #7
  br label %do.end85

do.end85:                                         ; preds = %if.then75, %for.end
  %stat86 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  %51 = ptrtoint ptr %stat86 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 3, ptr %stat86, align 1
  %conv89 = zext i32 %mul62 to i64
  %52 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 8)
  %54 = load i64, ptr %52, align 1
  %add = add i64 %54, %conv89
  store i64 %add, ptr %52, align 1
  %stat93 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1
  %55 = ptrtoint ptr %stat93 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 3, ptr %stat93, align 1
  %56 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1, i32 0, i32 1
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 8)
  %58 = load i64, ptr %56, align 1
  %add100 = add i64 %58, 100000000
  store i64 %add100, ptr %56, align 1
  br label %if.end110

if.else101:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %stat103 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  %59 = ptrtoint ptr %stat103 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %stat103, align 1
  %stat107 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1
  %60 = ptrtoint ptr %stat107 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %stat107, align 1
  br label %if.end110

if.end110:                                        ; preds = %if.else101, %do.end85
  %61 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %status, align 4
  %and111 = and i32 %62, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %if.else154, label %if.then113

if.then113:                                       ; preds = %if.end110
  %63 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 -31743, ptr %cmd, align 4
  %wlen1.i246 = getelementptr inbounds %struct.si2168_cmd, ptr %cmd, i32 0, i32 1
  %64 = ptrtoint ptr %wlen1.i246 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 2, ptr %wlen1.i246, align 4
  %rlen2.i247 = getelementptr inbounds %struct.si2168_cmd, ptr %cmd, i32 0, i32 2
  %65 = ptrtoint ptr %rlen2.i247 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 3, ptr %rlen2.i247, align 4
  %call114 = call fastcc i32 @si2168_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end117, label %if.then113.do.body160_crit_edge

if.then113.do.body160_crit_edge:                  ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body160

if.end117:                                        ; preds = %if.then113
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx, align 2
  %conv120 = zext i8 %67 to i32
  %shl = shl nuw nsw i32 %conv120, 8
  %arrayidx122 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 1
  %68 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx122, align 1
  %conv123 = zext i8 %69 to i32
  %or = or i32 %shl, %conv123
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2168_read_status.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2168_read_status, %if.then137)) #7
          to label %do.end141 [label %if.then137], !srcloc !206

if.then137:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  %dev138 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2168_read_status.__UNIQUE_ID_ddebug299, ptr noundef %dev138, ptr noundef nonnull @.str.80, i32 noundef %or) #7
  br label %do.end141

do.end141:                                        ; preds = %if.then137, %if.end117
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %or)
  %cmp142 = icmp eq i32 %or, 65535
  %spec.store.select = select i1 %cmp142, i32 0, i32 %or
  %stat146 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1
  %70 = ptrtoint ptr %stat146 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 3, ptr %stat146, align 1
  %conv149 = zext i32 %spec.store.select to i64
  %71 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1, i32 0, i32 1
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 8)
  %73 = load i64, ptr %71, align 1
  %add153 = add i64 %73, %conv149
  store i64 %add153, ptr %71, align 1
  br label %cleanup

if.else154:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  %stat156 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1
  %74 = ptrtoint ptr %stat156 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %stat156, align 1
  br label %cleanup

do.body160:                                       ; preds = %if.then113.do.body160_crit_edge, %if.then39.do.body160_crit_edge, %sw.epilog.do.body160_crit_edge, %if.end.do.body160_crit_edge, %entry.do.body160_crit_edge
  %ret.0 = phi i32 [ %call3, %sw.epilog.do.body160_crit_edge ], [ %call40, %if.then39.do.body160_crit_edge ], [ %call114, %if.then113.do.body160_crit_edge ], [ -11, %entry.do.body160_crit_edge ], [ -22, %if.end.do.body160_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2168_read_status.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2168_read_status, %if.then172)) #7
          to label %cleanup [label %if.then172], !srcloc !206

if.then172:                                       ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #9
  %dev173 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2168_read_status.__UNIQUE_ID_ddebug300, ptr noundef %dev173, ptr noundef nonnull @.str.25, i32 noundef %ret.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then172, %do.body160, %if.else154, %do.end141
  %retval.0 = phi i32 [ 0, %if.else154 ], [ 0, %do.end141 ], [ %ret.0, %if.then172 ], [ %ret.0, %do.body160 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si2168_ts_bus_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %acquire) unnamed_addr #2 align 64 {
entry:
  %cmd = alloca %struct.si2168_cmd, align 4
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
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %cmd) #7
  %4 = call ptr @memset(ptr %cmd, i32 255, i32 40)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2168_ts_bus_ctrl.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2168_ts_bus_ctrl, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !206

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2168_ts_bus_ctrl.__UNIQUE_ID_ddebug292, ptr noundef %dev4, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.45, i32 noundef %acquire) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ts_mode = getelementptr inbounds %struct.si2168_dev, ptr %3, i32 0, i32 8
  %5 = ptrtoint ptr %ts_mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ts_mode, align 4
  %7 = and i8 %6, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %do.end.if.end11_crit_edge, label %if.then6

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then6:                                         ; preds = %do.end
  %8 = call ptr @memcpy(ptr %cmd, ptr @.str.47, i32 6)
  %wlen1.i = getelementptr inbounds %struct.si2168_cmd, ptr %cmd, i32 0, i32 1
  %9 = ptrtoint ptr %wlen1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 6, ptr %wlen1.i, align 4
  %rlen2.i = getelementptr inbounds %struct.si2168_cmd, ptr %cmd, i32 0, i32 2
  %10 = ptrtoint ptr %rlen2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %rlen2.i, align 4
  %call7 = call fastcc i32 @si2168_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then6.if.end11_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.end11:                                         ; preds = %if.then6.if.end11_crit_edge, %do.end.if.end11_crit_edge
  %11 = call ptr @memcpy(ptr %cmd, ptr @.str.48, i32 6)
  %wlen1.i54 = getelementptr inbounds %struct.si2168_cmd, ptr %cmd, i32 0, i32 1
  %12 = ptrtoint ptr %wlen1.i54 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 6, ptr %wlen1.i54, align 4
  %rlen2.i55 = getelementptr inbounds %struct.si2168_cmd, ptr %cmd, i32 0, i32 2
  %13 = ptrtoint ptr %rlen2.i55 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %rlen2.i55, align 4
  %14 = ptrtoint ptr %ts_mode to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ts_mode, align 4
  %16 = and i8 %15, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool15.not = icmp eq i8 %16, 0
  br i1 %tobool15.not, label %if.end11.if.end17_crit_edge, label %if.then16

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 4
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 32, ptr %arrayidx, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end11.if.end17_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %acquire)
  %tobool18.not = icmp eq i32 %acquire, 0
  br i1 %tobool18.not, label %if.end17.if.end31_crit_edge, label %if.then19

if.end17.if.end31_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %ts_mode to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ts_mode, align 4
  %arrayidx23 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 4
  %20 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx23, align 4
  %or53 = or i8 %21, %19
  store i8 %or53, ptr %arrayidx23, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then19, %if.end17.if.end31_crit_edge
  %ts_clock_gapped = getelementptr inbounds %struct.si2168_dev, ptr %3, i32 0, i32 9
  %22 = ptrtoint ptr %ts_clock_gapped to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %ts_clock_gapped, align 1
  %23 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool32.not = icmp eq i8 %23, 0
  br i1 %tobool32.not, label %if.end31.if.end39_crit_edge, label %if.then33

if.end31.if.end39_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx35 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 4
  %24 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx35, align 4
  %26 = or i8 %25, 64
  store i8 %26, ptr %arrayidx35, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then33, %if.end31.if.end39_crit_edge
  %call40 = call fastcc i32 @si2168_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then6.cleanup_crit_edge
  %retval.0 = phi i32 [ %call40, %if.end39 ], [ %call7, %if.then6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_mux_del_adapters(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !47, !49, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !71, !73, !74, !76, !78, !79, !81, !83, !84, !86, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !105, !107, !108, !110, !112, !113, !114, !116, !118, !120, !121, !123, !125, !127, !128, !129, !131, !132, !134, !135, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !179, !180, !182, !184, !185, !187, !189, !190, !192, !194, !195}
!llvm.module.flags = !{!197, !198, !199, !200, !201, !202, !203, !204}
!llvm.ident = !{!205}

!0 = !{ptr @__initcall__kmod_si2168__314_809_si2168_driver_init6, !1, !"__initcall__kmod_si2168__314_809_si2168_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 809, i32 1}
!2 = !{ptr @__exitcall_si2168_driver_exit, !1, !"__exitcall_si2168_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author315, !4, !"__UNIQUE_ID_author315", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 811, i32 1}
!5 = !{ptr @__UNIQUE_ID_description316, !6, !"__UNIQUE_ID_description316", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 812, i32 1}
!7 = !{ptr @__UNIQUE_ID_file317, !8, !"__UNIQUE_ID_file317", i1 false, i1 false}
!8 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 813, i32 1}
!9 = !{ptr @__UNIQUE_ID_license318, !8, !"__UNIQUE_ID_license318", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_firmware319, !11, !"__UNIQUE_ID_firmware319", i1 false, i1 false}
!11 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 814, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware320, !13, !"__UNIQUE_ID_firmware320", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 815, i32 1}
!14 = !{ptr @__UNIQUE_ID_firmware321, !15, !"__UNIQUE_ID_firmware321", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 816, i32 1}
!16 = !{ptr @__UNIQUE_ID_firmware322, !17, !"__UNIQUE_ID_firmware322", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 817, i32 1}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 801, i32 26}
!20 = !{ptr @si2168_driver, !21, !"si2168_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 799, i32 26}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 683, i32 2}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @si2168_probe.__UNIQUE_ID_ddebug311, !23, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!27 = !{ptr @si2168_probe.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 692, i32 2}
!29 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 695, i32 17}
!32 = distinct !{null, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 702, i32 17}
!34 = distinct !{null, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 708, i32 17}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 718, i32 24}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 721, i32 24}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 724, i32 24}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 727, i32 24}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 730, i32 3}
!46 = !{ptr @si2168_probe.__UNIQUE_ID_ddebug312, !45, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 762, i32 2}
!49 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @si2168_probe._entry, !48, !"_entry", i1 false, i1 false}
!52 = !{ptr @si2168_probe._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 765, i32 2}
!55 = !{ptr @si2168_probe._entry.16, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @si2168_probe._entry_ptr.18, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 773, i32 2}
!59 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @si2168_probe._entry.19, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @si2168_probe._entry_ptr.22, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 59, i32 3}
!64 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @si2168_cmd_execute.__UNIQUE_ID_ddebug290, !63, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 79, i32 2}
!68 = !{ptr @si2168_cmd_execute.__UNIQUE_ID_ddebug291, !67, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 605, i32 17}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 612, i32 2}
!73 = !{ptr @si2168_select.__UNIQUE_ID_ddebug309, !72, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 623, i32 17}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 630, i32 2}
!78 = !{ptr @si2168_deselect.__UNIQUE_ID_ddebug310, !77, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!79 = !{ptr @si2168_ops, !80, !"si2168_ops", i1 false, i1 false}
!80 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 634, i32 38}
!81 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 417, i32 2}
!83 = !{ptr @si2168_init.__UNIQUE_ID_ddebug303, !82, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!84 = distinct !{null, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 428, i32 18}
!86 = distinct !{null, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 434, i32 18}
!88 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 451, i32 3}
!90 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @si2168_init._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @si2168_init._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.36, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 457, i32 2}
!95 = !{ptr @si2168_init._entry.35, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @si2168_init._entry_ptr.37, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 488, i32 3}
!99 = !{ptr @si2168_init._entry.38, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @si2168_init._entry_ptr.40, !98, !"_entry_ptr", i1 false, i1 false}
!101 = distinct !{null, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 494, i32 17}
!103 = distinct !{null, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 500, i32 17}
!105 = !{ptr @si2168_init._entry.43, !106, !"_entry", i1 false, i1 false}
!106 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 507, i32 2}
!107 = !{ptr @si2168_init._entry_ptr.44, !106, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @si2168_init.__UNIQUE_ID_ddebug304, !109, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!109 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 535, i32 2}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 90, i32 2}
!112 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @si2168_ts_bus_ctrl.__UNIQUE_ID_ddebug292, !111, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!114 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 94, i32 18}
!116 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 100, i32 17}
!118 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 566, i32 2}
!120 = !{ptr @si2168_sleep.__UNIQUE_ID_ddebug307, !119, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!121 = distinct !{null, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 579, i32 17}
!123 = !{ptr @si2168_sleep.__UNIQUE_ID_ddebug308, !124, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!124 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 586, i32 2}
!125 = !{ptr @.str.51, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 552, i32 3}
!127 = !{ptr @.str.52, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @si2168_resume.__UNIQUE_ID_ddebug305, !126, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!129 = !{ptr @.str.53, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 555, i32 2}
!131 = !{ptr @si2168_resume.__UNIQUE_ID_ddebug306, !130, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!132 = !{ptr @.str.54, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 239, i32 2}
!134 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @si2168_set_frontend.__UNIQUE_ID_ddebug301, !133, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!136 = !{ptr @.str.56, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 292, i32 17}
!138 = !{ptr @.str.57, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 299, i32 18}
!140 = !{ptr @.str.58, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 301, i32 18}
!142 = !{ptr @.str.59, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 303, i32 18}
!144 = distinct !{null, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 320, i32 17}
!146 = !{ptr @.str.61, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 325, i32 17}
!148 = !{ptr @.str.62, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 330, i32 17}
!150 = !{ptr @.str.63, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 335, i32 17}
!152 = !{ptr @.str.64, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 340, i32 17}
!154 = !{ptr @.str.65, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 345, i32 17}
!156 = distinct !{null, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 355, i32 18}
!158 = !{ptr @.str.67, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 363, i32 17}
!160 = !{ptr @.str.68, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 368, i32 17}
!162 = !{ptr @.str.69, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 374, i32 17}
!164 = !{ptr @.str.70, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 380, i32 17}
!166 = !{ptr @.str.71, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 385, i32 17}
!168 = !{ptr @si2168_set_frontend.__UNIQUE_ID_ddebug302, !169, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!169 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 404, i32 2}
!170 = distinct !{null, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 132, i32 18}
!172 = distinct !{null, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 135, i32 18}
!174 = distinct !{null, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 138, i32 18}
!176 = !{ptr @.str.75, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 170, i32 2}
!178 = !{ptr @.str.76, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @si2168_read_status.__UNIQUE_ID_ddebug293, !177, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!180 = distinct !{null, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 175, i32 18}
!182 = !{ptr @.str.78, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 191, i32 3}
!184 = !{ptr @si2168_read_status.__UNIQUE_ID_ddebug298, !183, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!185 = distinct !{null, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 206, i32 18}
!187 = !{ptr @.str.80, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 212, i32 3}
!189 = !{ptr @si2168_read_status.__UNIQUE_ID_ddebug299, !188, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!190 = !{ptr @si2168_read_status.__UNIQUE_ID_ddebug300, !191, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!191 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 226, i32 2}
!192 = !{ptr @.str.81, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 781, i32 2}
!194 = !{ptr @si2168_remove.__UNIQUE_ID_ddebug313, !193, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!195 = !{ptr @si2168_id_table, !196, !"si2168_id_table", i1 false, i1 false}
!196 = !{!"../drivers/media/dvb-frontends/si2168.c", i32 793, i32 35}
!197 = !{i32 1, !"wchar_size", i32 2}
!198 = !{i32 1, !"min_enum_size", i32 4}
!199 = !{i32 8, !"branch-target-enforcement", i32 0}
!200 = !{i32 8, !"sign-return-address", i32 0}
!201 = !{i32 8, !"sign-return-address-all", i32 0}
!202 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!203 = !{i32 7, !"uwtable", i32 1}
!204 = !{i32 7, !"frame-pointer", i32 2}
!205 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!206 = !{i64 2148774457, i64 2148774462, i64 2148774475, i64 2148774519, i64 2148774553, i64 2148774574}
!207 = !{!"auto-init"}
