; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/si2165.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/si2165.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.atomic_t = type { i32 }
%struct.si2165_reg_value_pair = type { i16, i8 }
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
%struct.si2165_state = type { ptr, ptr, %struct.dvb_frontend, %struct.si2165_config, i8, i8, i32, i32, i32, i64, i8, i8, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.86], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.86 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.87 }>
%union.anon.87 = type { i64 }
%struct.si2165_config = type { i8, i8, i32, i8 }
%struct.si2165_platform_data = type { ptr, i8, i32, i8 }
%struct.firmware = type { i32, ptr, ptr }

@__initcall__kmod_si2165__305_1302_si2165_driver_init6 = internal global ptr @si2165_driver_init, section ".initcall6.init", align 4
@si2165_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @si2165_probe, ptr @si2165_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @si2165_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_si2165_driver_exit = internal global ptr @si2165_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description306 = internal constant [67 x i8] c"si2165.description=Silicon Labs Si2165 DVB-C/-T Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author307 = internal constant [52 x i8] c"si2165.author=Matthias Schwarzott <zzam@gentoo.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file308 = internal constant [47 x i8] c"si2165.file=drivers/media/dvb-frontends/si2165\00", section ".modinfo", align 1
@__UNIQUE_ID_license309 = internal constant [19 x i8] c"si2165.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware310 = internal constant [36 x i8] c"si2165.firmware=dvb-demod-si2165.fw\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"si2165\00", [25 x i8] zeroinitializer }, align 32
@si2165_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"si2165\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@si2165_probe.regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 2303, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@si2165_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"si2165:1171:(&regmap_config)->lock\00", [61 x i8] zeroinitializer }, align 32
@si2165_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1187, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ref_freq of %d Hz not supported by this driver\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"si2165_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/media/dvb-frontends/si2165.c\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@si2165_probe._entry_ptr = internal global ptr @si2165_probe._entry, section ".printk_index", align 4
@si2165_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Silicon Labs \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 166667, i32 0, i32 1000000, i32 7200000, i32 0, i32 -1071972690 }, [8 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr @si2165_init, ptr @si2165_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @si2165_set_frontend, ptr @si2165_get_tune_settings, ptr null, ptr @si2165_read_status, ptr @si2165_read_ber, ptr null, ptr @si2165_read_snr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Si2161\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Si2165\00", [25 x i8] zeroinitializer }, align 32
@si2165_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 1240, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Unsupported Silicon Labs chip (type %d, rev %d)\0A\00", [47 x i8] zeroinitializer }, align 32
@si2165_probe._entry_ptr.11 = internal global ptr @si2165_probe._entry.9, section ".printk_index", align 4
@si2165_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 1247, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Detected Silicon Labs %s-%c (type %d, rev %d)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@si2165_probe._entry_ptr.15 = internal global ptr @si2165_probe._entry.12, section ".printk_index", align 4
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" DVB-T\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" DVB-C\00", [25 x i8] zeroinitializer }, align 32
@si2165_probe.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.18, i8 1, i8 62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"failed=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@si2165_init.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.4, ptr @.str.20, i8 0, i8 -123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"si2165_init\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: called\0A\00", [20 x i8] zeroinitializer }, align 32
@si2165_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.4, i32 547, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"could not set chip_mode\0A\00", [39 x i8] zeroinitializer }, align 32
@si2165_init._entry_ptr = internal global ptr @si2165_init._entry, section ".printk_index", align 4
@si2165_write.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.4, ptr @.str.23, i8 0, i8 16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"si2165_write\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"i2c write: reg: 0x%04x, data: %*ph\0A\00", [60 x i8] zeroinitializer }, align 32
@si2165_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.4, i32 70, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: ret == %d\0A\00", [17 x i8] zeroinitializer }, align 32
@si2165_write._entry_ptr = internal global ptr @si2165_write._entry, section ".printk_index", align 4
@si2165_wait_init_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 281, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"init_done was not set\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"si2165_wait_init_done\00", [42 x i8] zeroinitializer }, align 32
@si2165_wait_init_done._entry_ptr = internal global ptr @si2165_wait_init_done._entry, section ".printk_index", align 4
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dvb-demod-si2165.fw\00", [44 x i8] zeroinitializer }, align 32
@si2165_upload_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 383, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"no firmware file for revision=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"si2165_upload_firmware\00", [41 x i8] zeroinitializer }, align 32
@si2165_upload_firmware._entry_ptr = internal global ptr @si2165_upload_firmware._entry, section ".printk_index", align 4
@si2165_upload_firmware._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.4, i32 391, ptr @.str.32, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"firmware file '%s' not found\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@si2165_upload_firmware._entry_ptr.33 = internal global ptr @si2165_upload_firmware._entry.30, section ".printk_index", align 4
@si2165_upload_firmware._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.29, ptr @.str.4, i32 399, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"downloading firmware from file '%s' size=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@si2165_upload_firmware._entry_ptr.36 = internal global ptr @si2165_upload_firmware._entry.34, section ".printk_index", align 4
@si2165_upload_firmware._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.29, ptr @.str.4, i32 402, ptr @.str.32, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"firmware size is not multiple of 4\0A\00", [60 x i8] zeroinitializer }, align 32
@si2165_upload_firmware._entry_ptr.39 = internal global ptr @si2165_upload_firmware._entry.37, section ".printk_index", align 4
@si2165_upload_firmware._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.29, ptr @.str.4, i32 409, ptr @.str.32, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"firmware header is missing\0A\00", [36 x i8] zeroinitializer }, align 32
@si2165_upload_firmware._entry_ptr.42 = internal global ptr @si2165_upload_firmware._entry.40, section ".printk_index", align 4
@si2165_upload_firmware._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.29, ptr @.str.4, i32 415, ptr @.str.32, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"firmware file version is wrong\0A\00", [32 x i8] zeroinitializer }, align 32
@si2165_upload_firmware._entry_ptr.45 = internal global ptr @si2165_upload_firmware._entry.43, section ".printk_index", align 4
@si2165_upload_firmware._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.29, ptr @.str.4, i32 453, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%s: extracted patch_version=0x%02x, block_count=0x%02x, crc_expected=0x%04x\0A\00", [51 x i8] zeroinitializer }, align 32
@si2165_upload_firmware._entry_ptr.48 = internal global ptr @si2165_upload_firmware._entry.46, section ".printk_index", align 4
@si2165_upload_firmware._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.29, ptr @.str.4, i32 472, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"firmware could not be uploaded\0A\00", [32 x i8] zeroinitializer }, align 32
@si2165_upload_firmware._entry_ptr.51 = internal global ptr @si2165_upload_firmware._entry.49, section ".printk_index", align 4
@si2165_upload_firmware._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.29, ptr @.str.4, i32 484, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"firmware crc mismatch %04x != %04x\0A\00", [60 x i8] zeroinitializer }, align 32
@si2165_upload_firmware._entry_ptr.54 = internal global ptr @si2165_upload_firmware._entry.52, section ".printk_index", align 4
@si2165_upload_firmware._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.29, ptr @.str.4, i32 496, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"firmware len mismatch %04x != %04x\0A\00", [60 x i8] zeroinitializer }, align 32
@si2165_upload_firmware._entry_ptr.57 = internal global ptr @si2165_upload_firmware._entry.55, section ".printk_index", align 4
@si2165_upload_firmware._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.29, ptr @.str.4, i32 511, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fw load finished\0A\00", [46 x i8] zeroinitializer }, align 32
@si2165_upload_firmware._entry_ptr.60 = internal global ptr @si2165_upload_firmware._entry.58, section ".printk_index", align 4
@si2165_upload_firmware_block.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.4, ptr @.str.62, i8 0, i8 75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"si2165_upload_firmware_block\00", [35 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"fw load: %s: called with len=0x%x offset=0x%x blockcount=0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@si2165_upload_firmware_block.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.4, ptr @.str.63, i8 0, i8 76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"fw load: %s: in while len=0x%x offset=0x%x cur_block=0x%x blockcount=0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@si2165_upload_firmware_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.61, ptr @.str.4, i32 312, ptr @.str.32, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bad fw data[0..3] = %*ph\0A\00", [38 x i8] zeroinitializer }, align 32
@si2165_upload_firmware_block._entry_ptr = internal global ptr @si2165_upload_firmware_block._entry, section ".printk_index", align 4
@si2165_upload_firmware_block._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.61, ptr @.str.4, i32 319, ptr @.str.32, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"len is too small for block len=%d, wordcount=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@si2165_upload_firmware_block._entry_ptr.67 = internal global ptr @si2165_upload_firmware_block._entry.65, section ".printk_index", align 4
@si2165_upload_firmware_block.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.4, ptr @.str.68, i8 0, i8 86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"fw load: %s: after while len=0x%x offset=0x%x cur_block=0x%x blockcount=0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@si2165_upload_firmware_block.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.4, ptr @.str.69, i8 0, i8 88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"fw load: %s: returned offset=0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@si2165_readreg16.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.4, ptr @.str.71, i8 0, i8 27, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"si2165_readreg16\00", [47 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"reg read: R(0x%04x)=0x%04x\0A\00", [36 x i8] zeroinitializer }, align 32
@si2165_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.4, i32 82, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: error (addr %02x reg %04x error (ret == %i)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"si2165_read\00", [20 x i8] zeroinitializer }, align 32
@si2165_read._entry_ptr = internal global ptr @si2165_read._entry, section ".printk_index", align 4
@si2165_read.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.4, ptr @.str.74, i8 0, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"i2c read: reg: 0x%04x, data: %*ph\0A\00", [61 x i8] zeroinitializer }, align 32
@adc_rewrite = internal constant { [5 x %struct.si2165_reg_value_pair], [44 x i8] } { [5 x %struct.si2165_reg_value_pair] [%struct.si2165_reg_value_pair { i16 298, i8 70 }, %struct.si2165_reg_value_pair { i16 300, i8 0 }, %struct.si2165_reg_value_pair { i16 302, i8 10 }, %struct.si2165_reg_value_pair { i16 303, i8 -1 }, %struct.si2165_reg_value_pair { i16 291, i8 112 }], [44 x i8] zeroinitializer }, align 32
@si2165_set_if_freq_shift._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.4, i32 853, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Error: get_if_frequency() not defined at tuner. Can't work without it!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"si2165_set_if_freq_shift\00", [39 x i8] zeroinitializer }, align 32
@si2165_set_if_freq_shift._entry_ptr = internal global ptr @si2165_set_if_freq_shift._entry, section ".printk_index", align 4
@si2165_set_frontend_dvbt.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.4, ptr @.str.20, i8 0, i8 -30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"si2165_set_frontend_dvbt\00", [39 x i8] zeroinitializer }, align 32
@dvbt_regs = internal constant { [13 x %struct.si2165_reg_value_pair], [44 x i8] } { [13 x %struct.si2165_reg_value_pair] [%struct.si2165_reg_value_pair { i16 236, i8 1 }, %struct.si2165_reg_value_pair { i16 796, i8 1 }, %struct.si2165_reg_value_pair { i16 203, i8 0 }, %struct.si2165_reg_value_pair { i16 366, i8 65 }, %struct.si2165_reg_value_pair { i16 364, i8 14 }, %struct.si2165_reg_value_pair { i16 365, i8 16 }, %struct.si2165_reg_value_pair { i16 347, i8 3 }, %struct.si2165_reg_value_pair { i16 336, i8 120 }, %struct.si2165_reg_value_pair { i16 416, i8 120 }, %struct.si2165_reg_value_pair { i16 456, i8 104 }, %struct.si2165_reg_value_pair { i16 780, i8 100 }, %struct.si2165_reg_value_pair { i16 781, i8 0 }, %struct.si2165_reg_value_pair { i16 903, i8 0 }], [44 x i8] zeroinitializer }, align 32
@si2165_set_oversamp.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.4, ptr @.str.79, i8 0, i8 -47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"si2165_set_oversamp\00", [44 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Write oversamp=%#x\0A\00", [44 x i8] zeroinitializer }, align 32
@dvbc_regs = internal constant { [20 x %struct.si2165_reg_value_pair], [48 x i8] } { [20 x %struct.si2165_reg_value_pair] [%struct.si2165_reg_value_pair { i16 236, i8 5 }, %struct.si2165_reg_value_pair { i16 366, i8 80 }, %struct.si2165_reg_value_pair { i16 364, i8 14 }, %struct.si2165_reg_value_pair { i16 365, i8 16 }, %struct.si2165_reg_value_pair { i16 347, i8 3 }, %struct.si2165_reg_value_pair { i16 336, i8 104 }, %struct.si2165_reg_value_pair { i16 416, i8 104 }, %struct.si2165_reg_value_pair { i16 456, i8 80 }, %struct.si2165_reg_value_pair { i16 632, i8 13 }, %struct.si2165_reg_value_pair { i16 570, i8 5 }, %struct.si2165_reg_value_pair { i16 609, i8 9 }, %struct.si2165_reg_value_pair { i16 848, i8 -128 }, %struct.si2165_reg_value_pair { i16 849, i8 62 }, %struct.si2165_reg_value_pair { i16 203, i8 1 }, %struct.si2165_reg_value_pair { i16 588, i8 0 }, %struct.si2165_reg_value_pair { i16 589, i8 0 }, %struct.si2165_reg_value_pair { i16 636, i8 0 }, %struct.si2165_reg_value_pair { i16 637, i8 0 }, %struct.si2165_reg_value_pair { i16 562, i8 3 }, %struct.si2165_reg_value_pair { i16 395, i8 0 }], [48 x i8] zeroinitializer }, align 32
@si2165_read_status.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.4, ptr @.str.81, i8 0, i8 -59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"si2165_read_status\00", [45 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"post_bit_error=%u post_bit_count=%u\0A\00", [59 x i8] zeroinitializer }, align 32
@si2165_readreg24.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.4, ptr @.str.83, i8 0, i8 30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"si2165_readreg24\00", [47 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"reg read: R(0x%04x)=0x%06x\0A\00", [36 x i8] zeroinitializer }, align 32
@si2165_readreg8.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.4, ptr @.str.85, i8 0, i8 24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"si2165_readreg8\00", [16 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"reg read: R(0x%04x)=0x%02x\0A\00", [36 x i8] zeroinitializer }, align 32
@si2165_remove.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.4, ptr @.str.87, i8 1, i8 64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"si2165_remove\00", [18 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@switch.table.si2165_set_frontend_dvbc = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 3, i32 7, i32 8, i32 9, i32 10], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 7]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 16000000, i64 24000000]
@___asan_gen_.91 = private unnamed_addr constant [14 x i8] c"si2165_driver\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1293, i32 26 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1295, i32 11 }
@___asan_gen_.97 = private unnamed_addr constant [16 x i8] c"si2165_id_table\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1287, i32 35 }
@___asan_gen_.100 = private unnamed_addr constant [14 x i8] c"regmap_config\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1157, i32 36 }
@___asan_gen_.103 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1171, i32 18 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1186, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [11 x i8] c"si2165_ops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1109, i32 38 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1230, i32 15 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1234, i32 15 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1239, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1244, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1255, i32 36 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1260, i32 36 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1273, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 532, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 547, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 64, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 70, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 281, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 379, i32 13 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 382, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 390, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 398, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 402, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 409, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 415, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 452, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 471, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 482, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 494, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 511, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 300, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 304, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 310, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 317, i32 4 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 345, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 352, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 109, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 81, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 86, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant [12 x i8] c"adc_rewrite\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1025, i32 43 }
@___asan_gen_.316 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 852, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 907, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant [10 x i8] c"dvbt_regs\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 876, i32 43 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 839, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant [10 x i8] c"dvbc_regs\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 938, i32 43 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 786, i32 5 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 120, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 98, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.362 = private constant [40 x i8] c"../drivers/media/dvb-frontends/si2165.c\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1281, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant [38 x i8] c"switch.table.si2165_set_frontend_dvbc\00", align 1
@llvm.compiler.used = appending global [121 x ptr] [ptr @__UNIQUE_ID_author307, ptr @__UNIQUE_ID_description306, ptr @__UNIQUE_ID_file308, ptr @__UNIQUE_ID_firmware310, ptr @__UNIQUE_ID_license309, ptr @__exitcall_si2165_driver_exit, ptr @__initcall__kmod_si2165__305_1302_si2165_driver_init6, ptr @si2165_driver_exit, ptr @si2165_init._entry, ptr @si2165_init._entry_ptr, ptr @si2165_probe._entry, ptr @si2165_probe._entry.12, ptr @si2165_probe._entry.9, ptr @si2165_probe._entry_ptr, ptr @si2165_probe._entry_ptr.11, ptr @si2165_probe._entry_ptr.15, ptr @si2165_read._entry, ptr @si2165_read._entry_ptr, ptr @si2165_set_if_freq_shift._entry, ptr @si2165_set_if_freq_shift._entry_ptr, ptr @si2165_upload_firmware._entry, ptr @si2165_upload_firmware._entry.30, ptr @si2165_upload_firmware._entry.34, ptr @si2165_upload_firmware._entry.37, ptr @si2165_upload_firmware._entry.40, ptr @si2165_upload_firmware._entry.43, ptr @si2165_upload_firmware._entry.46, ptr @si2165_upload_firmware._entry.49, ptr @si2165_upload_firmware._entry.52, ptr @si2165_upload_firmware._entry.55, ptr @si2165_upload_firmware._entry.58, ptr @si2165_upload_firmware._entry_ptr, ptr @si2165_upload_firmware._entry_ptr.33, ptr @si2165_upload_firmware._entry_ptr.36, ptr @si2165_upload_firmware._entry_ptr.39, ptr @si2165_upload_firmware._entry_ptr.42, ptr @si2165_upload_firmware._entry_ptr.45, ptr @si2165_upload_firmware._entry_ptr.48, ptr @si2165_upload_firmware._entry_ptr.51, ptr @si2165_upload_firmware._entry_ptr.54, ptr @si2165_upload_firmware._entry_ptr.57, ptr @si2165_upload_firmware._entry_ptr.60, ptr @si2165_upload_firmware_block._entry, ptr @si2165_upload_firmware_block._entry.65, ptr @si2165_upload_firmware_block._entry_ptr, ptr @si2165_upload_firmware_block._entry_ptr.67, ptr @si2165_wait_init_done._entry, ptr @si2165_wait_init_done._entry_ptr, ptr @si2165_write._entry, ptr @si2165_write._entry_ptr, ptr @si2165_driver, ptr @.str, ptr @si2165_id_table, ptr @si2165_probe.regmap_config, ptr @si2165_probe._key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @si2165_ops, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @adc_rewrite, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @dvbt_regs, ptr @.str.78, ptr @.str.79, ptr @dvbc_regs, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @switch.table.si2165_set_frontend_dvbc], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2165_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2165_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2165_probe.regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2165_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2165_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2165_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2165_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2165_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2165_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2165_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2165_wait_init_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2165_upload_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2165_upload_firmware._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2165_upload_firmware._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2165_upload_firmware._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2165_upload_firmware._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2165_upload_firmware._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2165_upload_firmware._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2165_upload_firmware._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2165_upload_firmware._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2165_upload_firmware._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2165_upload_firmware._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2165_upload_firmware_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2165_upload_firmware_block._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2165_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_rewrite to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2165_set_if_freq_shift._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvbt_regs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvbc_regs to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.si2165_set_frontend_dvbc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @si2165_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @si2165_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @si2165_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @i2c_del_driver(ptr noundef nonnull @si2165_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si2165_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %val_tmp.i223 = alloca i32, align 4
  %val_tmp.i215 = alloca i32, align 4
  %val_tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1096) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @si2165_probe.regmap_config, ptr noundef nonnull @si2165_probe._key, ptr noundef nonnull @.str.1) #10
  %regmap = getelementptr inbounds %struct.si2165_state, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %call1 to i32
  br label %error

if.end7:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %client, ptr %call7.i.i, align 8
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr, align 2
  %conv = trunc i16 %7 to i8
  %config = getelementptr inbounds %struct.si2165_state, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %config to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %config, align 8
  %chip_mode = getelementptr inbounds %struct.si2165_platform_data, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %chip_mode to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %chip_mode, align 4
  %chip_mode10 = getelementptr inbounds %struct.si2165_state, ptr %call7.i.i, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %chip_mode10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %chip_mode10, align 1
  %ref_freq_hz = getelementptr inbounds %struct.si2165_platform_data, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %ref_freq_hz to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ref_freq_hz, align 4
  %ref_freq_hz12 = getelementptr inbounds %struct.si2165_state, ptr %call7.i.i, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %ref_freq_hz12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %ref_freq_hz12, align 4
  %inversion = getelementptr inbounds %struct.si2165_platform_data, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %inversion to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %inversion, align 4, !range !198
  %inversion15 = getelementptr inbounds %struct.si2165_state, ptr %call7.i.i, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %inversion15 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %inversion15, align 8
  %18 = add i32 %13, -27000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -23000001, i32 %18)
  %19 = icmp ult i32 %18, -23000001
  br i1 %19, label %do.end, label %if.end28

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %13) #14
  br label %error

if.end28:                                         ; preds = %if.end7
  %fe = getelementptr inbounds %struct.si2165_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.si2165_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %20 = call ptr @memcpy(ptr %ops, ptr @si2165_ops, i32 544)
  %release = getelementptr inbounds %struct.si2165_state, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 3
  %21 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %release, align 8
  %demodulator_priv = getelementptr inbounds %struct.si2165_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %22 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %conv1.i = zext i8 %10 to i32
  %call.i = tail call i32 @regmap_write(ptr noundef %call1, i32 noundef 0, i32 noundef %conv1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp35 = icmp slt i32 %call.i, 0
  br i1 %cmp35, label %if.end28.error_crit_edge, label %if.end38

if.end28.error_crit_edge:                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end38:                                         ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_tmp.i) #10
  %24 = ptrtoint ptr %val_tmp.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %val_tmp.i, align 4, !annotation !199
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call.i213 = call i32 @regmap_read(ptr noundef %26, i32 noundef 0, ptr noundef nonnull %val_tmp.i) #10
  %27 = ptrtoint ptr %val_tmp.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val_tmp.i, align 4
  %conv1.i214 = trunc i32 %28 to i8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_readreg8.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_probe, %if.then.i)) #10
          to label %si2165_readreg8.exit [label %if.then.i], !srcloc !200

if.then.i:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call7.i.i, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 4
  %conv6.i = and i32 %28, 255
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_readreg8.__UNIQUE_ID_ddebug292, ptr noundef %dev.i, ptr noundef nonnull @.str.85, i32 noundef 0, i32 noundef %conv6.i) #10
  br label %si2165_readreg8.exit

si2165_readreg8.exit:                             ; preds = %if.then.i, %if.end38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i213)
  %cmp40 = icmp slt i32 %call.i213, 0
  br i1 %cmp40, label %si2165_readreg8.exit.error_crit_edge, label %if.end43

si2165_readreg8.exit.error_crit_edge:             ; preds = %si2165_readreg8.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end43:                                         ; preds = %si2165_readreg8.exit
  %31 = ptrtoint ptr %chip_mode10 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %chip_mode10, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %conv1.i214)
  %cmp48.not = icmp eq i8 %32, %conv1.i214
  br i1 %cmp48.not, label %if.end51, label %if.end43.error_crit_edge

if.end43.error_crit_edge:                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end51:                                         ; preds = %if.end43
  %chip_revcode = getelementptr inbounds %struct.si2165_state, ptr %call7.i.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_tmp.i215) #10
  %33 = ptrtoint ptr %val_tmp.i215 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %val_tmp.i215, align 4, !annotation !199
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %call.i217 = call i32 @regmap_read(ptr noundef %35, i32 noundef 35, ptr noundef nonnull %val_tmp.i215) #10
  %36 = ptrtoint ptr %val_tmp.i215 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val_tmp.i215, align 4
  %conv1.i218 = trunc i32 %37 to i8
  %38 = ptrtoint ptr %chip_revcode to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv1.i218, ptr %chip_revcode, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_readreg8.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_probe, %if.then.i221)) #10
          to label %si2165_readreg8.exit222 [label %if.then.i221], !srcloc !200

if.then.i221:                                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call7.i.i, align 8
  %dev.i219 = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %chip_revcode to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %chip_revcode, align 4
  %conv6.i220 = zext i8 %42 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_readreg8.__UNIQUE_ID_ddebug292, ptr noundef %dev.i219, ptr noundef nonnull @.str.85, i32 noundef 35, i32 noundef %conv6.i220) #10
  br label %si2165_readreg8.exit222

si2165_readreg8.exit222:                          ; preds = %if.then.i221, %if.end51
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_tmp.i215) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i217)
  %cmp53 = icmp slt i32 %call.i217, 0
  br i1 %cmp53, label %si2165_readreg8.exit222.error_crit_edge, label %if.end56

si2165_readreg8.exit222.error_crit_edge:          ; preds = %si2165_readreg8.exit222
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end56:                                         ; preds = %si2165_readreg8.exit222
  %chip_type = getelementptr inbounds %struct.si2165_state, ptr %call7.i.i, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_tmp.i223) #10
  %43 = ptrtoint ptr %val_tmp.i223 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %val_tmp.i223, align 4, !annotation !199
  %44 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap, align 4
  %call.i225 = call i32 @regmap_read(ptr noundef %45, i32 noundef 280, ptr noundef nonnull %val_tmp.i223) #10
  %46 = ptrtoint ptr %val_tmp.i223 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val_tmp.i223, align 4
  %conv1.i226 = trunc i32 %47 to i8
  %48 = ptrtoint ptr %chip_type to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv1.i226, ptr %chip_type, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_readreg8.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_probe, %if.then.i229)) #10
          to label %si2165_readreg8.exit230 [label %if.then.i229], !srcloc !200

if.then.i229:                                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call7.i.i, align 8
  %dev.i227 = getelementptr inbounds %struct.i2c_client, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %chip_type to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %chip_type, align 1
  %conv6.i228 = zext i8 %52 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_readreg8.__UNIQUE_ID_ddebug292, ptr noundef %dev.i227, ptr noundef nonnull @.str.85, i32 noundef 280, i32 noundef %conv6.i228) #10
  br label %si2165_readreg8.exit230

si2165_readreg8.exit230:                          ; preds = %if.then.i229, %if.end56
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_tmp.i223) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i225)
  %cmp58 = icmp slt i32 %call.i225, 0
  br i1 %cmp58, label %si2165_readreg8.exit230.error_crit_edge, label %if.end61

si2165_readreg8.exit230.error_crit_edge:          ; preds = %si2165_readreg8.exit230
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end61:                                         ; preds = %si2165_readreg8.exit230
  %53 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap, align 4
  %call.i232 = call i32 @regmap_write(ptr noundef %54, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i232)
  %cmp63 = icmp slt i32 %call.i232, 0
  br i1 %cmp63, label %if.end61.error_crit_edge, label %if.end66

if.end61.error_crit_edge:                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end66:                                         ; preds = %if.end61
  %55 = ptrtoint ptr %chip_revcode to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %chip_revcode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %56)
  %cmp69 = icmp ult i8 %56, 26
  %57 = add i8 %56, 65
  %narrow = select i1 %cmp69, i8 %57, i8 63
  %rev_char.0 = zext i8 %narrow to i32
  %58 = ptrtoint ptr %chip_type to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %chip_type, align 1
  %60 = zext i8 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values)
  switch i8 %59, label %do.end82 [
    i8 6, label %sw.bb
    i8 7, label %sw.bb78
  ]

sw.bb:                                            ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  %has_dvbt = getelementptr inbounds %struct.si2165_state, ptr %call7.i.i, i32 0, i32 11
  %61 = ptrtoint ptr %has_dvbt to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %has_dvbt, align 1
  br label %do.end91

sw.bb78:                                          ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  %has_dvbt79 = getelementptr inbounds %struct.si2165_state, ptr %call7.i.i, i32 0, i32 11
  %62 = ptrtoint ptr %has_dvbt79 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %has_dvbt79, align 1
  %has_dvbc = getelementptr inbounds %struct.si2165_state, ptr %call7.i.i, i32 0, i32 10
  %63 = ptrtoint ptr %has_dvbc to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %has_dvbc, align 8
  br label %do.end91

do.end82:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  %conv77 = zext i8 %59 to i32
  %64 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call7.i.i, align 8
  %dev84 = getelementptr inbounds %struct.i2c_client, ptr %65, i32 0, i32 4
  %conv88 = zext i8 %56 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev84, ptr noundef nonnull @.str.10, i32 noundef %conv77, i32 noundef %conv88) #14
  br label %error

do.end91:                                         ; preds = %sw.bb78, %sw.bb
  %chip_name.0 = phi ptr [ @.str.8, %sw.bb78 ], [ @.str.7, %sw.bb ]
  %66 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %call7.i.i, align 8
  %dev93 = getelementptr inbounds %struct.i2c_client, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %chip_type to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %chip_type, align 1
  %conv96 = zext i8 %69 to i32
  %70 = ptrtoint ptr %chip_revcode to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %chip_revcode, align 4
  %conv98 = zext i8 %71 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev93, ptr noundef nonnull @.str.13, ptr noundef nonnull %chip_name.0, i32 noundef %rev_char.0, i32 noundef %conv96, i32 noundef %conv98) #14
  %call101 = call i32 @strlcat(ptr noundef %ops, ptr noundef nonnull %chip_name.0, i32 noundef 128) #10
  %has_dvbt102 = getelementptr inbounds %struct.si2165_state, ptr %call7.i.i, i32 0, i32 11
  %72 = ptrtoint ptr %has_dvbt102 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %has_dvbt102, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool103.not = icmp eq i8 %73, 0
  br i1 %tobool103.not, label %do.end91.if.end113_crit_edge, label %if.then104

do.end91.if.end113_crit_edge:                     ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.then104:                                       ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #12
  %delsys = getelementptr inbounds %struct.si2165_state, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 1
  %74 = ptrtoint ptr %delsys to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 3, ptr %delsys, align 4
  %call112 = call i32 @strlcat(ptr noundef %ops, ptr noundef nonnull @.str.16, i32 noundef 128) #10
  br label %if.end113

if.end113:                                        ; preds = %if.then104, %do.end91.if.end113_crit_edge
  %n.0 = phi i32 [ 1, %if.then104 ], [ 0, %do.end91.if.end113_crit_edge ]
  %has_dvbc114 = getelementptr inbounds %struct.si2165_state, ptr %call7.i.i, i32 0, i32 10
  %75 = ptrtoint ptr %has_dvbc114 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %has_dvbc114, align 8, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool115.not = icmp eq i8 %76, 0
  br i1 %tobool115.not, label %if.end113.if.end128_crit_edge, label %if.then116

if.end113.if.end128_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end128

if.then116:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx121 = getelementptr %struct.si2165_state, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 1, i32 %n.0
  %77 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %arrayidx121, align 1
  %call127 = call i32 @strlcat(ptr noundef %ops, ptr noundef nonnull @.str.17, i32 noundef 128) #10
  br label %if.end128

if.end128:                                        ; preds = %if.then116, %if.end113.if.end128_crit_edge
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %fe, ptr %79, align 4
  br label %cleanup

error:                                            ; preds = %do.end82, %if.end61.error_crit_edge, %si2165_readreg8.exit230.error_crit_edge, %si2165_readreg8.exit222.error_crit_edge, %if.end43.error_crit_edge, %si2165_readreg8.exit.error_crit_edge, %if.end28.error_crit_edge, %do.end, %if.then4, %entry.error_crit_edge
  %ret.0 = phi i32 [ %4, %if.then4 ], [ -22, %do.end ], [ -12, %entry.error_crit_edge ], [ -19, %if.end61.error_crit_edge ], [ -19, %si2165_readreg8.exit230.error_crit_edge ], [ -19, %si2165_readreg8.exit222.error_crit_edge ], [ -19, %if.end43.error_crit_edge ], [ -19, %si2165_readreg8.exit.error_crit_edge ], [ -19, %if.end28.error_crit_edge ], [ -19, %do.end82 ]
  call void @kfree(ptr noundef %call7.i.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_probe.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_probe, %if.then138)) #10
          to label %cleanup [label %if.then138], !srcloc !200

if.then138:                                       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_probe.__UNIQUE_ID_ddebug303, ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %ret.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then138, %error, %if.end128
  %retval.0 = phi i32 [ 0, %if.end128 ], [ %ret.0, %if.then138 ], [ %ret.0, %error ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si2165_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_remove.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_remove, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !200

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_remove.__UNIQUE_ID_ddebug304, ptr noundef %dev, ptr noundef nonnull @.str.87) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @kfree(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si2165_readreg8(ptr nocapture noundef readonly %state, i16 noundef zeroext %reg, ptr nocapture noundef %val) unnamed_addr #2 align 64 {
entry:
  %val_tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_tmp) #10
  %0 = ptrtoint ptr %val_tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val_tmp, align 4, !annotation !199
  %regmap = getelementptr inbounds %struct.si2165_state, ptr %state, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %conv = zext i16 %reg to i32
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %conv, ptr noundef nonnull %val_tmp) #10
  %3 = ptrtoint ptr %val_tmp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val_tmp, align 4
  %conv1 = trunc i32 %4 to i8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv1, ptr %val, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_readreg8.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_readreg8, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !200

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %val, align 1
  %conv6 = zext i8 %9 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_readreg8.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.85, i32 noundef %conv, i32 noundef %conv6) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_tmp) #10
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si2165_init(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  %val_tmp.i = alloca i32, align 4
  %val = alloca i8, align 1
  %patch_version = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %patch_version) #10
  %2 = ptrtoint ptr %patch_version to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %patch_version, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_init.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_init, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !200

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_init.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %chip_mode = getelementptr inbounds %struct.si2165_state, ptr %1, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %chip_mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %chip_mode, align 1
  %regmap.i = getelementptr inbounds %struct.si2165_state, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %conv1.i = zext i8 %6 to i32
  %call.i = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 0, i32 noundef %conv1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call.i224 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 260, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i224)
  %cmp7 = icmp slt i32 %call.i224, 0
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_tmp.i) #10
  %11 = ptrtoint ptr %val_tmp.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %val_tmp.i, align 4, !annotation !199
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %call.i226 = call i32 @regmap_read(ptr noundef %13, i32 noundef 0, ptr noundef nonnull %val_tmp.i) #10
  %14 = ptrtoint ptr %val_tmp.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val_tmp.i, align 4
  %conv1.i227 = trunc i32 %15 to i8
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv1.i227, ptr %val, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_readreg8.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_init, %if.then.i)) #10
          to label %si2165_readreg8.exit [label %if.then.i], !srcloc !200

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  %conv6.i = and i32 %15, 255
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_readreg8.__UNIQUE_ID_ddebug292, ptr noundef %dev.i, ptr noundef nonnull @.str.85, i32 noundef 0, i32 noundef %conv6.i) #10
  br label %si2165_readreg8.exit

si2165_readreg8.exit:                             ; preds = %if.then.i, %if.end9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i226)
  %cmp11 = icmp slt i32 %call.i226, 0
  br i1 %cmp11, label %si2165_readreg8.exit.cleanup_crit_edge, label %if.end13

si2165_readreg8.exit.cleanup_crit_edge:           ; preds = %si2165_readreg8.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %si2165_readreg8.exit
  %19 = ptrtoint ptr %chip_mode to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %chip_mode, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %conv1.i227)
  %cmp17.not = icmp eq i8 %20, %conv1.i227
  br i1 %cmp17.not, label %if.end25, label %do.end22

do.end22:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %dev24 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.21) #14
  br label %cleanup

if.end25:                                         ; preds = %if.end13
  %23 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i, align 4
  %call.i229 = call i32 @regmap_write(ptr noundef %24, i32 noundef 395, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i229)
  %cmp27 = icmp slt i32 %call.i229, 0
  br i1 %cmp27, label %if.end25.cleanup_crit_edge, label %if.end30

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  %25 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i, align 4
  %call.i231 = call i32 @regmap_write(ptr noundef %26, i32 noundef 400, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i231)
  %cmp32 = icmp slt i32 %call.i231, 0
  br i1 %cmp32, label %if.end30.cleanup_crit_edge, label %if.end35

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end35:                                         ; preds = %if.end30
  %27 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i, align 4
  %call.i233 = call i32 @regmap_write(ptr noundef %28, i32 noundef 368, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i233)
  %cmp37 = icmp slt i32 %call.i233, 0
  br i1 %cmp37, label %if.end35.cleanup_crit_edge, label %if.end40

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end40:                                         ; preds = %if.end35
  %29 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap.i, align 4
  %call.i235 = call i32 @regmap_write(ptr noundef %30, i32 noundef 369, i32 noundef 7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i235)
  %cmp42 = icmp slt i32 %call.i235, 0
  br i1 %cmp42, label %if.end40.cleanup_crit_edge, label %if.end45

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end45:                                         ; preds = %if.end40
  %31 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap.i, align 4
  %call.i237 = call i32 @regmap_write(ptr noundef %32, i32 noundef 1606, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i237)
  %cmp47 = icmp slt i32 %call.i237, 0
  br i1 %cmp47, label %if.end45.cleanup_crit_edge, label %if.end50

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end50:                                         ; preds = %if.end45
  %33 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap.i, align 4
  %call.i239 = call i32 @regmap_write(ptr noundef %34, i32 noundef 1601, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i239)
  %cmp52 = icmp slt i32 %call.i239, 0
  br i1 %cmp52, label %if.end50.cleanup_crit_edge, label %if.end55

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end55:                                         ; preds = %if.end50
  %call56 = call fastcc i32 @si2165_init_pll(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.end55.cleanup_crit_edge, label %if.end60

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end60:                                         ; preds = %if.end55
  %35 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap.i, align 4
  %call.i241 = call i32 @regmap_write(ptr noundef %36, i32 noundef 80, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241)
  %cmp62 = icmp slt i32 %call.i241, 0
  br i1 %cmp62, label %if.end60.cleanup_crit_edge, label %if.end65

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end65:                                         ; preds = %if.end60
  %37 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap.i, align 4
  %call.i243 = call i32 @regmap_write(ptr noundef %38, i32 noundef 150, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i243)
  %cmp67 = icmp slt i32 %call.i243, 0
  br i1 %cmp67, label %if.end65.cleanup_crit_edge, label %if.end70

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end70:                                         ; preds = %if.end65
  %call71 = call fastcc i32 @si2165_wait_init_done(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.end70.cleanup_crit_edge, label %if.end75

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end75:                                         ; preds = %if.end70
  %39 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap.i, align 4
  %call.i245 = call i32 @regmap_write(ptr noundef %40, i32 noundef 80, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i245)
  %cmp77 = icmp slt i32 %call.i245, 0
  br i1 %cmp77, label %if.end75.cleanup_crit_edge, label %if.end80

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end80:                                         ; preds = %if.end75
  %call81 = call fastcc i32 @si2165_writereg16(ptr noundef %1, i16 noundef zeroext 1136, i16 noundef zeroext 30000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %if.end80.cleanup_crit_edge, label %if.end85

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end85:                                         ; preds = %if.end80
  %call86 = call fastcc i32 @si2165_readreg8(ptr noundef %1, i16 noundef zeroext 836, ptr noundef nonnull %patch_version)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %if.end85.cleanup_crit_edge, label %if.end90

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end90:                                         ; preds = %if.end85
  %41 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap.i, align 4
  %call.i247 = call i32 @regmap_write(ptr noundef %42, i32 noundef 203, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i247)
  %cmp92 = icmp slt i32 %call.i247, 0
  br i1 %cmp92, label %if.end90.cleanup_crit_edge, label %if.end95

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end95:                                         ; preds = %if.end90
  %call96 = call fastcc i32 @si2165_writereg32(ptr noundef %1, i16 noundef zeroext 840, i32 noundef -201326592)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %cmp97 = icmp slt i32 %call96, 0
  br i1 %cmp97, label %if.end95.cleanup_crit_edge, label %if.end100

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end100:                                        ; preds = %if.end95
  %call101 = call fastcc i32 @si2165_readreg8(ptr noundef %1, i16 noundef zeroext 833, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %cmp102 = icmp slt i32 %call101, 0
  br i1 %cmp102, label %if.end100.cleanup_crit_edge, label %if.end105

if.end100.cleanup_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end105:                                        ; preds = %if.end100
  %43 = ptrtoint ptr %patch_version to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %patch_version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp107 = icmp eq i8 %44, 0
  br i1 %cmp107, label %if.then109, label %if.end105.if.end115_crit_edge

if.end105.if.end115_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115

if.then109:                                       ; preds = %if.end105
  %call110 = call fastcc i32 @si2165_upload_firmware(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111 = icmp slt i32 %call110, 0
  br i1 %cmp111, label %if.then109.cleanup_crit_edge, label %if.then109.if.end115_crit_edge

if.then109.if.end115_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115

if.then109.cleanup_crit_edge:                     ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end115:                                        ; preds = %if.then109.if.end115_crit_edge, %if.end105.if.end115_crit_edge
  %45 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap.i, align 4
  %call.i249 = call i32 @regmap_write(ptr noundef %46, i32 noundef 1252, i32 noundef 32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i249)
  %cmp117 = icmp slt i32 %call.i249, 0
  br i1 %cmp117, label %if.end115.cleanup_crit_edge, label %if.end120

if.end115.cleanup_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end120:                                        ; preds = %if.end115
  %call121 = call fastcc i32 @si2165_writereg16(ptr noundef %1, i16 noundef zeroext 1263, i16 noundef zeroext 254)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %cmp122 = icmp slt i32 %call121, 0
  br i1 %cmp122, label %if.end120.cleanup_crit_edge, label %if.end125

if.end120.cleanup_crit_edge:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end125:                                        ; preds = %if.end120
  %call126 = call fastcc i32 @si2165_writereg24(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %cmp127 = icmp slt i32 %call126, 0
  br i1 %cmp127, label %if.end125.cleanup_crit_edge, label %if.end130

if.end125.cleanup_crit_edge:                      ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end130:                                        ; preds = %if.end125
  %47 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap.i, align 4
  %call.i251 = call i32 @regmap_write(ptr noundef %48, i32 noundef 1253, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i251)
  %cmp132 = icmp slt i32 %call.i251, 0
  br i1 %cmp132, label %if.end130.cleanup_crit_edge, label %if.end135

if.end130.cleanup_crit_edge:                      ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end135:                                        ; preds = %if.end130
  %49 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap.i, align 4
  %call.i253 = call i32 @regmap_write(ptr noundef %50, i32 noundef 2296, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i253)
  %cmp137 = icmp slt i32 %call.i253, 0
  br i1 %cmp137, label %if.end135.cleanup_crit_edge, label %if.end140

if.end135.cleanup_crit_edge:                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end140:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #12
  %cnr = getelementptr inbounds %struct.si2165_state, ptr %1, i32 0, i32 2, i32 8, i32 43
  %51 = ptrtoint ptr %cnr to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %cnr, align 1
  %stat = getelementptr inbounds %struct.si2165_state, ptr %1, i32 0, i32 2, i32 8, i32 43, i32 1
  %52 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %stat, align 1
  %post_bit_error = getelementptr inbounds %struct.si2165_state, ptr %1, i32 0, i32 2, i32 8, i32 46
  %53 = ptrtoint ptr %post_bit_error to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %post_bit_error, align 4
  %stat146 = getelementptr inbounds %struct.si2165_state, ptr %1, i32 0, i32 2, i32 8, i32 46, i32 1
  %54 = ptrtoint ptr %stat146 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %stat146, align 1
  %post_bit_count = getelementptr inbounds %struct.si2165_state, ptr %1, i32 0, i32 2, i32 8, i32 47
  %55 = ptrtoint ptr %post_bit_count to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %post_bit_count, align 1
  %stat151 = getelementptr inbounds %struct.si2165_state, ptr %1, i32 0, i32 2, i32 8, i32 47, i32 1
  %56 = ptrtoint ptr %stat151 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %stat151, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end140, %if.end135.cleanup_crit_edge, %if.end130.cleanup_crit_edge, %if.end125.cleanup_crit_edge, %if.end120.cleanup_crit_edge, %if.end115.cleanup_crit_edge, %if.then109.cleanup_crit_edge, %if.end100.cleanup_crit_edge, %if.end95.cleanup_crit_edge, %if.end90.cleanup_crit_edge, %if.end85.cleanup_crit_edge, %if.end80.cleanup_crit_edge, %if.end75.cleanup_crit_edge, %if.end70.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %do.end22, %si2165_readreg8.exit.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end22 ], [ 0, %if.end140 ], [ %call.i249, %if.end115.cleanup_crit_edge ], [ %call121, %if.end120.cleanup_crit_edge ], [ %call126, %if.end125.cleanup_crit_edge ], [ %call.i251, %if.end130.cleanup_crit_edge ], [ %call.i253, %if.end135.cleanup_crit_edge ], [ %call.i, %do.end.cleanup_crit_edge ], [ %call.i224, %if.end5.cleanup_crit_edge ], [ %call.i226, %si2165_readreg8.exit.cleanup_crit_edge ], [ %call.i229, %if.end25.cleanup_crit_edge ], [ %call.i231, %if.end30.cleanup_crit_edge ], [ %call.i233, %if.end35.cleanup_crit_edge ], [ %call.i235, %if.end40.cleanup_crit_edge ], [ %call.i237, %if.end45.cleanup_crit_edge ], [ %call.i239, %if.end50.cleanup_crit_edge ], [ %call56, %if.end55.cleanup_crit_edge ], [ %call.i241, %if.end60.cleanup_crit_edge ], [ %call.i243, %if.end65.cleanup_crit_edge ], [ %call71, %if.end70.cleanup_crit_edge ], [ %call.i245, %if.end75.cleanup_crit_edge ], [ %call81, %if.end80.cleanup_crit_edge ], [ %call86, %if.end85.cleanup_crit_edge ], [ %call.i247, %if.end90.cleanup_crit_edge ], [ %call96, %if.end95.cleanup_crit_edge ], [ %call101, %if.end100.cleanup_crit_edge ], [ %call110, %if.then109.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %patch_version) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si2165_sleep(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %regmap.i = getelementptr inbounds %struct.si2165_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 260, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i11 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 0, i32 noundef 0) #10
  %6 = tail call i32 @llvm.smin.i32(i32 %call.i11, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %6, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si2165_set_frontend(ptr noundef %fe) #2 align 64 {
entry:
  %buf.i99 = alloca [4 x i8], align 4
  %val_tmp.i = alloca i32, align 4
  %buf.i = alloca [4 x i8], align 1
  %val = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %2 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %delivery_system, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %val) #10
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %val, align 1, !annotation !199
  %5 = getelementptr inbounds [3 x i8], ptr %val, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !199
  %7 = getelementptr inbounds [3 x i8], ptr %val, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !199
  %call = tail call fastcc i32 @si2165_set_if_freq_shift(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 1, label %sw.bb5
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %call1 = tail call fastcc i32 @si2165_set_frontend_dvbt(ptr noundef %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  %call6 = tail call fastcc i32 @si2165_set_frontend_dvbc(ptr noundef %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %sw.bb5.cleanup_crit_edge, label %sw.bb5.sw.epilog_crit_edge

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb5.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #10
  %10 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 1
  %11 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 2
  %12 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %buf.i, align 1
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %10, align 1
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %11, align 1
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -12, ptr %12, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_write.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_set_frontend, %if.then.i.i)) #10
          to label %do.end.i.i [label %if.then.i.i], !srcloc !200

if.then.i.i:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_write.__UNIQUE_ID_ddebug290, ptr noundef %dev.i.i, ptr noundef nonnull @.str.23, i32 noundef 840, i32 noundef 4, ptr noundef nonnull %buf.i) #10
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %sw.epilog
  %regmap.i.i = getelementptr inbounds %struct.si2165_state, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i.i, align 4
  %call4.i.i = call i32 @regmap_bulk_write(ptr noundef %20, i32 noundef 840, ptr noundef nonnull %buf.i, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %si2165_writereg32.exit.thread, label %si2165_writereg32.exit

si2165_writereg32.exit.thread:                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #10
  br label %if.end13

si2165_writereg32.exit:                           ; preds = %do.end.i.i
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %dev11.i.i = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11.i.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef %call4.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp11 = icmp slt i32 %call4.i.i, 0
  br i1 %cmp11, label %si2165_writereg32.exit.cleanup_crit_edge, label %si2165_writereg32.exit.if.end13_crit_edge

si2165_writereg32.exit.if.end13_crit_edge:        ; preds = %si2165_writereg32.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

si2165_writereg32.exit.cleanup_crit_edge:         ; preds = %si2165_writereg32.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %si2165_writereg32.exit.if.end13_crit_edge, %si2165_writereg32.exit.thread
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %23 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %set_params, align 4
  %tobool.not = icmp eq ptr %24, null
  br i1 %tobool.not, label %if.end13.if.end19_crit_edge, label %if.then14

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then14:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %call18 = call i32 %24(ptr noundef %fe) #10
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.end13.if.end19_crit_edge
  %call20 = call fastcc i32 @si2165_set_if_freq_shift(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_tmp.i) #10
  %25 = ptrtoint ptr %val_tmp.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %val_tmp.i, align 4, !annotation !199
  %26 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %27, i32 noundef 833, ptr noundef nonnull %val_tmp.i) #10
  %28 = ptrtoint ptr %val_tmp.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val_tmp.i, align 4
  %conv1.i = trunc i32 %29 to i8
  %30 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv1.i, ptr %val, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_readreg8.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_set_frontend, %if.then.i)) #10
          to label %si2165_readreg8.exit [label %if.then.i], !srcloc !200

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 4
  %conv6.i = and i32 %29, 255
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_readreg8.__UNIQUE_ID_ddebug292, ptr noundef %dev.i, ptr noundef nonnull @.str.85, i32 noundef 833, i32 noundef %conv6.i) #10
  br label %si2165_readreg8.exit

si2165_readreg8.exit:                             ; preds = %if.then.i, %if.end23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp25 = icmp slt i32 %call.i, 0
  br i1 %cmp25, label %si2165_readreg8.exit.cleanup_crit_edge, label %if.end27

si2165_readreg8.exit.cleanup_crit_edge:           ; preds = %si2165_readreg8.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27:                                         ; preds = %si2165_readreg8.exit
  %33 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap.i.i, align 4
  %call.i96 = call i32 @regmap_write(ptr noundef %34, i32 noundef 833, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %cmp29 = icmp slt i32 %call.i96, 0
  br i1 %cmp29, label %if.end27.cleanup_crit_edge, label %if.end31

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  %35 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap.i.i, align 4
  %call.i98 = call i32 @regmap_write(ptr noundef %36, i32 noundef 192, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %cmp33 = icmp slt i32 %call.i98, 0
  br i1 %cmp33, label %if.end31.cleanup_crit_edge, label %if.end35

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i99) #10
  %37 = ptrtoint ptr %buf.i99 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %buf.i99, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_write.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_set_frontend, %if.then.i.i101)) #10
          to label %do.end.i.i105 [label %if.then.i.i101], !srcloc !200

if.then.i.i101:                                   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 8
  %dev.i.i100 = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_write.__UNIQUE_ID_ddebug290, ptr noundef %dev.i.i100, ptr noundef nonnull @.str.23, i32 noundef 900, i32 noundef 4, ptr noundef nonnull %buf.i99) #10
  br label %do.end.i.i105

do.end.i.i105:                                    ; preds = %if.then.i.i101, %if.end35
  %40 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap.i.i, align 4
  %call4.i.i103 = call i32 @regmap_bulk_write(ptr noundef %41, i32 noundef 900, ptr noundef nonnull %buf.i99, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i103)
  %tobool5.not.i.i104 = icmp eq i32 %call4.i.i103, 0
  br i1 %tobool5.not.i.i104, label %si2165_writereg32.exit108.thread, label %si2165_writereg32.exit108

si2165_writereg32.exit108.thread:                 ; preds = %do.end.i.i105
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i99) #10
  br label %if.end39

si2165_writereg32.exit108:                        ; preds = %do.end.i.i105
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 8
  %dev11.i.i106 = getelementptr inbounds %struct.i2c_client, ptr %43, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11.i.i106, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef %call4.i.i103) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i99) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i103)
  %cmp37 = icmp slt i32 %call4.i.i103, 0
  br i1 %cmp37, label %si2165_writereg32.exit108.cleanup_crit_edge, label %si2165_writereg32.exit108.if.end39_crit_edge

si2165_writereg32.exit108.if.end39_crit_edge:     ; preds = %si2165_writereg32.exit108
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

si2165_writereg32.exit108.cleanup_crit_edge:      ; preds = %si2165_writereg32.exit108
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end39:                                         ; preds = %si2165_writereg32.exit108.if.end39_crit_edge, %si2165_writereg32.exit108.thread
  %call40 = call fastcc i32 @si2165_write_reg_list(ptr noundef %1, ptr noundef nonnull @adc_rewrite, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.end39.cleanup_crit_edge, label %if.end43

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end43:                                         ; preds = %if.end39
  %44 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap.i.i, align 4
  %call.i110 = call i32 @regmap_write(ptr noundef %45, i32 noundef 736, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %cmp45 = icmp slt i32 %call.i110, 0
  br i1 %cmp45, label %if.end43.cleanup_crit_edge, label %if.end47

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end47:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %call49 = call fastcc i32 @si2165_readreg8(ptr noundef %1, i16 noundef zeroext 833, ptr noundef nonnull %val)
  %46 = call i32 @llvm.smin.i32(i32 %call49, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.end43.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %si2165_writereg32.exit108.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %si2165_readreg8.exit.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %si2165_writereg32.exit.cleanup_crit_edge, %sw.bb5.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %sw.bb.cleanup_crit_edge ], [ %call6, %sw.bb5.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call4.i.i, %si2165_writereg32.exit.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ], [ %call.i, %si2165_readreg8.exit.cleanup_crit_edge ], [ %call.i96, %if.end27.cleanup_crit_edge ], [ %call.i98, %if.end31.cleanup_crit_edge ], [ %call4.i.i103, %si2165_writereg32.exit108.cleanup_crit_edge ], [ %call40, %if.end39.cleanup_crit_edge ], [ %call.i110, %if.end43.cleanup_crit_edge ], [ %46, %if.end47 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @si2165_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %s) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1000, ptr %s, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si2165_read_status(ptr nocapture noundef %fe, ptr nocapture noundef %status) #2 align 64 {
entry:
  %val_tmp.i204 = alloca i32, align 4
  %val_tmp.i194 = alloca i32, align 4
  %val_tmp.i186 = alloca i32, align 4
  %val_tmp.i = alloca i32, align 4
  %u32tmp = alloca i32, align 4
  %biterrcnt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u32tmp) #10
  %0 = ptrtoint ptr %u32tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %u32tmp, align 4, !annotation !199
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %1 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %demodulator_priv, align 4
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %3 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %delivery_system, align 4
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %status, align 4
  %6 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %4, label %entry.sw.epilog17_crit_edge [
    i32 3, label %sw.bb
    i32 1, label %sw.bb3
  ]

entry.sw.epilog17_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog17

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_tmp.i) #10
  %7 = ptrtoint ptr %val_tmp.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val_tmp.i, align 4, !annotation !199
  %regmap.i = getelementptr inbounds %struct.si2165_state, ptr %2, i32 0, i32 1
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %9, i32 noundef 936, ptr noundef nonnull %val_tmp.i) #10
  %10 = ptrtoint ptr %val_tmp.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val_tmp.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_readreg8.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_read_status, %if.then.i)) #10
          to label %si2165_readreg8.exit [label %if.then.i], !srcloc !200

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %2, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  %conv6.i = and i32 %11, 255
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_readreg8.__UNIQUE_ID_ddebug292, ptr noundef %dev.i, ptr noundef nonnull @.str.85, i32 noundef 936, i32 noundef %conv6.i) #10
  br label %si2165_readreg8.exit

si2165_readreg8.exit:                             ; preds = %if.then.i, %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %si2165_readreg8.exit.cleanup129_crit_edge, label %if.end

si2165_readreg8.exit.cleanup129_crit_edge:        ; preds = %si2165_readreg8.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup129

if.end:                                           ; preds = %si2165_readreg8.exit
  %14 = and i32 %11, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cond135 = icmp eq i32 %14, 2
  br i1 %cond135, label %if.end.sw.epilog17.sink.split_crit_edge, label %if.end.sw.epilog17_crit_edge

if.end.sw.epilog17_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog17

if.end.sw.epilog17.sink.split_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog17.sink.split

sw.bb3:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_tmp.i186) #10
  %15 = ptrtoint ptr %val_tmp.i186 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %val_tmp.i186, align 4, !annotation !199
  %regmap.i187 = getelementptr inbounds %struct.si2165_state, ptr %2, i32 0, i32 1
  %16 = ptrtoint ptr %regmap.i187 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i187, align 4
  %call.i188 = call i32 @regmap_read(ptr noundef %17, i32 noundef 1088, ptr noundef nonnull %val_tmp.i186) #10
  %18 = ptrtoint ptr %val_tmp.i186 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val_tmp.i186, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_readreg8.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_read_status, %if.then.i192)) #10
          to label %si2165_readreg8.exit193 [label %if.then.i192], !srcloc !200

if.then.i192:                                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %2, align 8
  %dev.i190 = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  %conv6.i191 = and i32 %19, 255
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_readreg8.__UNIQUE_ID_ddebug292, ptr noundef %dev.i190, ptr noundef nonnull @.str.85, i32 noundef 1088, i32 noundef %conv6.i191) #10
  br label %si2165_readreg8.exit193

si2165_readreg8.exit193:                          ; preds = %if.then.i192, %sw.bb3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_tmp.i186) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i188)
  %cmp5 = icmp slt i32 %call.i188, 0
  br i1 %cmp5, label %si2165_readreg8.exit193.cleanup129_crit_edge, label %if.end8

si2165_readreg8.exit193.cleanup129_crit_edge:     ; preds = %si2165_readreg8.exit193
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup129

if.end8:                                          ; preds = %si2165_readreg8.exit193
  %22 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %if.end8.sw.epilog17_crit_edge, label %if.end8.sw.epilog17.sink.split_crit_edge

if.end8.sw.epilog17.sink.split_crit_edge:         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog17.sink.split

if.end8.sw.epilog17_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog17

sw.epilog17.sink.split:                           ; preds = %if.end8.sw.epilog17.sink.split_crit_edge, %if.end.sw.epilog17.sink.split_crit_edge
  %.sink224 = phi i32 [ 3, %if.end.sw.epilog17.sink.split_crit_edge ], [ 15, %if.end8.sw.epilog17.sink.split_crit_edge ]
  %23 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %status, align 4
  %or15 = or i32 %24, %.sink224
  store i32 %or15, ptr %status, align 4
  br label %sw.epilog17

sw.epilog17:                                      ; preds = %sw.epilog17.sink.split, %if.end8.sw.epilog17_crit_edge, %if.end.sw.epilog17_crit_edge, %entry.sw.epilog17_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_tmp.i194) #10
  %25 = ptrtoint ptr %val_tmp.i194 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %val_tmp.i194, align 4, !annotation !199
  %regmap.i195 = getelementptr inbounds %struct.si2165_state, ptr %2, i32 0, i32 1
  %26 = ptrtoint ptr %regmap.i195 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i195, align 4
  %call.i196 = call i32 @regmap_read(ptr noundef %27, i32 noundef 1248, ptr noundef nonnull %val_tmp.i194) #10
  %28 = ptrtoint ptr %val_tmp.i194 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val_tmp.i194, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_readreg8.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_read_status, %if.then.i200)) #10
          to label %si2165_readreg8.exit201 [label %if.then.i200], !srcloc !200

if.then.i200:                                     ; preds = %sw.epilog17
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %2, align 8
  %dev.i198 = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 4
  %conv6.i199 = and i32 %29, 255
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_readreg8.__UNIQUE_ID_ddebug292, ptr noundef %dev.i198, ptr noundef nonnull @.str.85, i32 noundef 1248, i32 noundef %conv6.i199) #10
  br label %si2165_readreg8.exit201

si2165_readreg8.exit201:                          ; preds = %if.then.i200, %sw.epilog17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_tmp.i194) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i196)
  %cmp19 = icmp slt i32 %call.i196, 0
  br i1 %cmp19, label %si2165_readreg8.exit201.cleanup129_crit_edge, label %if.end22

si2165_readreg8.exit201.cleanup129_crit_edge:     ; preds = %si2165_readreg8.exit201
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup129

if.end22:                                         ; preds = %si2165_readreg8.exit201
  %32 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool25.not = icmp eq i32 %32, 0
  br i1 %tobool25.not, label %if.end22.if.end32_crit_edge, label %if.then26

if.end22.if.end32_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %status, align 4
  %or31 = or i32 %34, 31
  store i32 %or31, ptr %status, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then26, %if.end22.if.end32_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp33 = icmp eq i32 %4, 1
  br i1 %cmp33, label %land.lhs.true, label %if.end32.if.else_crit_edge

if.end32.if.else_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.end32
  %35 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %status, align 4
  %and35 = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %land.lhs.true.if.else_crit_edge, label %if.then37

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then37:                                        ; preds = %land.lhs.true
  %call38 = call fastcc i32 @si2165_readreg24(ptr noundef %2, i16 noundef zeroext 620, ptr noundef nonnull %u32tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then37.cleanup129_crit_edge, label %if.end42

if.then37.cleanup129_crit_edge:                   ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup129

if.end42:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %u32tmp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %u32tmp, align 4
  %call43 = call i32 @intlog10(i32 noundef %38) #10
  %conv44 = zext i32 %call43 to i64
  %sub = sub nsw i64 121210686, %conv44
  %mul = mul nsw i64 %sub, 10000
  %shr = lshr i64 %mul, 24
  %conv45 = trunc i64 %shr to i32
  %39 = ptrtoint ptr %u32tmp to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv45, ptr %u32tmp, align 4
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %40 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %stat, align 1
  %conv46 = and i64 %shr, 4294967295
  %41 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 8)
  store i64 %conv46, ptr %41, align 1
  br label %if.end54

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end32.if.else_crit_edge
  %stat51 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %43 = ptrtoint ptr %stat51 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %stat51, align 1
  br label %if.end54

if.end54:                                         ; preds = %if.else, %if.end42
  %44 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %status, align 4
  %and55 = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  %stat121 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  br i1 %tobool56.not, label %if.else119, label %if.then57

if.then57:                                        ; preds = %if.end54
  %46 = ptrtoint ptr %stat121 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %stat121, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp62 = icmp eq i8 %47, 0
  br i1 %cmp62, label %if.then64, label %if.else83

if.then64:                                        ; preds = %if.then57
  %48 = ptrtoint ptr %regmap.i195 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap.i195, align 4
  %call.i203 = call i32 @regmap_write(ptr noundef %49, i32 noundef 1132, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i203)
  %cmp66 = icmp slt i32 %call.i203, 0
  br i1 %cmp66, label %if.then64.cleanup129_crit_edge, label %if.end69

if.then64.cleanup129_crit_edge:                   ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup129

if.end69:                                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %stat121 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 3, ptr %stat121, align 1
  %stat74 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1
  %51 = ptrtoint ptr %stat74 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 3, ptr %stat74, align 1
  %52 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 8)
  store i64 0, ptr %52, align 1
  %54 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1, i32 0, i32 1
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 8)
  store i64 0, ptr %54, align 1
  %ber_prev = getelementptr inbounds %struct.si2165_state, ptr %2, i32 0, i32 9
  %56 = ptrtoint ptr %ber_prev to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 0, ptr %ber_prev, align 8
  br label %cleanup129

if.else83:                                        ; preds = %if.then57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_tmp.i204) #10
  %57 = ptrtoint ptr %val_tmp.i204 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %val_tmp.i204, align 4, !annotation !199
  %58 = ptrtoint ptr %regmap.i195 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap.i195, align 4
  %call.i206 = call i32 @regmap_read(ptr noundef %59, i32 noundef 1148, ptr noundef nonnull %val_tmp.i204) #10
  %60 = ptrtoint ptr %val_tmp.i204 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %val_tmp.i204, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_readreg8.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_read_status, %if.then.i210)) #10
          to label %si2165_readreg8.exit211 [label %if.then.i210], !srcloc !200

if.then.i210:                                     ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %2, align 8
  %dev.i208 = getelementptr inbounds %struct.i2c_client, ptr %63, i32 0, i32 4
  %conv6.i209 = and i32 %61, 255
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_readreg8.__UNIQUE_ID_ddebug292, ptr noundef %dev.i208, ptr noundef nonnull @.str.85, i32 noundef 1148, i32 noundef %conv6.i209) #10
  br label %si2165_readreg8.exit211

si2165_readreg8.exit211:                          ; preds = %if.then.i210, %if.else83
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_tmp.i204) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i206)
  %cmp85 = icmp slt i32 %call.i206, 0
  br i1 %cmp85, label %si2165_readreg8.exit211.cleanup129_crit_edge, label %if.end88

si2165_readreg8.exit211.cleanup129_crit_edge:     ; preds = %si2165_readreg8.exit211
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup129

if.end88:                                         ; preds = %si2165_readreg8.exit211
  %64 = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool91.not = icmp eq i32 %64, 0
  br i1 %tobool91.not, label %if.end88.cleanup129_crit_edge, label %if.then92

if.end88.cleanup129_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup129

if.then92:                                        ; preds = %if.end88
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %biterrcnt) #10
  %65 = ptrtoint ptr %biterrcnt to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %biterrcnt, align 4, !annotation !199
  %call93 = call fastcc i32 @si2165_readreg24(ptr noundef %2, i16 noundef zeroext 1144, ptr noundef nonnull %biterrcnt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94 = icmp slt i32 %call93, 0
  br i1 %cmp94, label %if.then92.cleanup.thread_crit_edge, label %if.end97

if.then92.cleanup.thread_crit_edge:               ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end97:                                         ; preds = %if.then92
  %66 = ptrtoint ptr %biterrcnt to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %biterrcnt, align 4
  %conv98 = zext i32 %67 to i64
  %68 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 8)
  %70 = load i64, ptr %68, align 1
  %add = add i64 %70, %conv98
  store i64 %add, ptr %68, align 1
  %71 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1, i32 0, i32 1
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 8)
  %73 = load i64, ptr %71, align 1
  %add105 = add i64 %73, 48960000
  store i64 %add105, ptr %71, align 1
  %74 = ptrtoint ptr %regmap.i195 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regmap.i195, align 4
  %call.i213 = call i32 @regmap_write(ptr noundef %75, i32 noundef 1132, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i213)
  %cmp107 = icmp slt i32 %call.i213, 0
  br i1 %cmp107, label %if.end97.cleanup.thread_crit_edge, label %do.body

if.end97.cleanup.thread_crit_edge:                ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

do.body:                                          ; preds = %if.end97
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_read_status.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_read_status, %if.then115)) #10
          to label %cleanup [label %if.then115], !srcloc !200

if.then115:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %2, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %77, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_read_status.__UNIQUE_ID_ddebug300, ptr noundef %dev, ptr noundef nonnull @.str.81, i32 noundef %67, i32 noundef 48960000) #10
  br label %cleanup

cleanup.thread:                                   ; preds = %if.end97.cleanup.thread_crit_edge, %if.then92.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ %call.i213, %if.end97.cleanup.thread_crit_edge ], [ %call93, %if.then92.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %biterrcnt) #10
  br label %cleanup129

cleanup:                                          ; preds = %if.then115, %do.body
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %biterrcnt) #10
  br label %cleanup129

if.else119:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %78 = ptrtoint ptr %stat121 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %stat121, align 1
  %stat125 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1
  %79 = ptrtoint ptr %stat125 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %stat125, align 1
  br label %cleanup129

cleanup129:                                       ; preds = %if.else119, %cleanup, %cleanup.thread, %if.end88.cleanup129_crit_edge, %si2165_readreg8.exit211.cleanup129_crit_edge, %if.end69, %if.then64.cleanup129_crit_edge, %if.then37.cleanup129_crit_edge, %si2165_readreg8.exit201.cleanup129_crit_edge, %si2165_readreg8.exit193.cleanup129_crit_edge, %si2165_readreg8.exit.cleanup129_crit_edge
  %retval.1 = phi i32 [ %call.i, %si2165_readreg8.exit.cleanup129_crit_edge ], [ %call.i188, %si2165_readreg8.exit193.cleanup129_crit_edge ], [ %call.i196, %si2165_readreg8.exit201.cleanup129_crit_edge ], [ %call38, %if.then37.cleanup129_crit_edge ], [ %call.i203, %if.then64.cleanup129_crit_edge ], [ %call.i206, %si2165_readreg8.exit211.cleanup129_crit_edge ], [ %retval.0.ph, %cleanup.thread ], [ 0, %cleanup ], [ 0, %if.end69 ], [ 0, %if.end88.cleanup129_crit_edge ], [ 0, %if.else119 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u32tmp) #10
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @si2165_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  %0 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp.not = icmp eq i8 %1, 3
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ber, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %3 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %demodulator_priv, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %5, align 1
  %ber_prev = getelementptr inbounds %struct.si2165_state, ptr %4, i32 0, i32 9
  %8 = ptrtoint ptr %ber_prev to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ber_prev, align 8
  %sub = sub i64 %7, %9
  %conv5 = trunc i64 %sub to i32
  %10 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv5, ptr %ber, align 4
  %11 = load i64, ptr %5, align 1
  store i64 %11, ptr %ber_prev, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si2165_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #2 align 64 {
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
  store i32 -1, ptr %remainder.i, align 4, !annotation !199
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si2165_init_pll(ptr nocapture noundef %state) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ref_freq_hz1 = getelementptr inbounds %struct.si2165_state, ptr %state, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %ref_freq_hz1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ref_freq_hz1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #10
  %2 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %5 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %1, label %sw.default [
    i32 16000000, label %entry.sw.epilog_crit_edge
    i32 24000000, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 16000000, i32 %1)
  %cmp = icmp ugt i32 %1, 16000000
  %spec.select = select i1 %cmp, i8 2, i8 1
  %conv = zext i8 %spec.select to i32
  %mul = mul nuw i32 %conv, 1624000000
  %mul3 = shl i32 %1, 1
  %mul4 = mul i32 %1, 126
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %mul4)
  %cmp5 = icmp ugt i32 %mul, %mul4
  %divp.0 = select i1 %cmp5, i8 4, i8 1
  %conv12 = zext i8 %divp.0 to i32
  %mul13 = mul i32 %mul3, %conv12
  %div = udiv i32 %mul, %mul13
  %phi.cast = and i32 %div, 255
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %entry.sw.epilog_crit_edge
  %divr.1 = phi i8 [ %spec.select, %sw.default ], [ 2, %sw.bb2 ], [ 1, %entry.sw.epilog_crit_edge ]
  %divp.1 = phi i8 [ %divp.0, %sw.default ], [ 4, %sw.bb2 ], [ 1, %entry.sw.epilog_crit_edge ]
  %divn.0 = phi i32 [ %phi.cast, %sw.default ], [ 19, %sw.bb2 ], [ 56, %entry.sw.epilog_crit_edge ]
  %conv15 = zext i8 %divr.1 to i32
  %div16 = udiv i32 %1, %conv15
  %conv20 = zext i8 %divp.1 to i32
  %mul17 = shl nuw nsw i32 %divn.0, 1
  %mul19 = mul nuw nsw i32 %mul17, %conv20
  %mul21 = mul i32 %mul19, %div16
  %fvco_hz = getelementptr inbounds %struct.si2165_state, ptr %state, i32 0, i32 6
  %6 = ptrtoint ptr %fvco_hz to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mul21, ptr %fvco_hz, align 8
  %div2557 = lshr i32 %mul21, 5
  %adc_clk = getelementptr inbounds %struct.si2165_state, ptr %state, i32 0, i32 8
  %7 = ptrtoint ptr %adc_clk to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div2557, ptr %adc_clk, align 8
  %div29 = udiv i32 %mul21, 24
  %sys_clk = getelementptr inbounds %struct.si2165_state, ptr %state, i32 0, i32 7
  %8 = ptrtoint ptr %sys_clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div29, ptr %sys_clk, align 4
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 12, ptr %buf, align 1
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 8, ptr %2, align 1
  %and = and i32 %divn.0, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %divp.1)
  %cmp33 = icmp eq i8 %divp.1, 1
  %spec.select59 = select i1 %cmp33, i32 64, i32 0
  %or = or i32 %and, %spec.select59
  %11 = trunc i32 %or to i8
  %conv36 = or i8 %11, -128
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv36, ptr %3, align 1
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %divr.1, ptr %4, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_write.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_init_pll, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !200

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %state, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_write.__UNIQUE_ID_ddebug290, ptr noundef %dev.i, ptr noundef nonnull @.str.23, i32 noundef 160, i32 noundef 4, ptr noundef nonnull %buf) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %sw.epilog
  %regmap.i = getelementptr inbounds %struct.si2165_state, ptr %state, i32 0, i32 1
  %16 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i, align 4
  %call4.i = call i32 @regmap_bulk_write(ptr noundef %17, i32 noundef 160, ptr noundef nonnull %buf, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %do.end.i.si2165_write.exit_crit_edge, label %do.end9.i

do.end.i.si2165_write.exit_crit_edge:             ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %si2165_write.exit

do.end9.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state, align 8
  %dev11.i = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef %call4.i) #14
  br label %si2165_write.exit

si2165_write.exit:                                ; preds = %do.end9.i, %do.end.i.si2165_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #10
  ret i32 %call4.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si2165_wait_init_done(ptr nocapture noundef readonly %state) unnamed_addr #2 align 64 {
entry:
  %val_tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr inbounds %struct.si2165_state, ptr %state, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end5.for.body_crit_edge, %entry
  %i.012 = phi i32 [ 0, %entry ], [ %inc, %if.end5.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_tmp.i) #10
  %0 = ptrtoint ptr %val_tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val_tmp.i, align 4, !annotation !199
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 84, ptr noundef nonnull %val_tmp.i) #10
  %3 = ptrtoint ptr %val_tmp.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val_tmp.i, align 4
  %conv1.i = trunc i32 %4 to i8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_readreg8.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_wait_init_done, %if.then.i)) #10
          to label %si2165_readreg8.exit [label %if.then.i], !srcloc !200

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %state, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  %conv6.i = and i32 %4, 255
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_readreg8.__UNIQUE_ID_ddebug292, ptr noundef %dev.i, ptr noundef nonnull @.str.85, i32 noundef 84, i32 noundef %conv6.i) #10
  br label %si2165_readreg8.exit

si2165_readreg8.exit:                             ; preds = %if.then.i, %for.body
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1 = icmp slt i32 %call.i, 0
  br i1 %cmp1, label %si2165_readreg8.exit.cleanup_crit_edge, label %if.end

si2165_readreg8.exit.cleanup_crit_edge:           ; preds = %si2165_readreg8.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %si2165_readreg8.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv1.i)
  %cmp2 = icmp eq i8 %conv1.i, 1
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 50000, i32 noundef 2) #10
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %do.end, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %state, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %si2165_readreg8.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i, %si2165_readreg8.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si2165_writereg16(ptr nocapture noundef readonly %state, i16 noundef zeroext %reg, i16 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #10
  %0 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %conv1 = trunc i16 %val to i8
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv1, ptr %buf, align 1
  %2 = lshr i16 %val, 8
  %conv4 = trunc i16 %2 to i8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv4, ptr %0, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_write.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_writereg16, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !200

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %conv.i = zext i16 %reg to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_write.__UNIQUE_ID_ddebug290, ptr noundef %dev.i, ptr noundef nonnull @.str.23, i32 noundef %conv.i, i32 noundef 2, ptr noundef nonnull %buf) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %regmap.i = getelementptr inbounds %struct.si2165_state, ptr %state, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %conv3.i = zext i16 %reg to i32
  %call4.i = call i32 @regmap_bulk_write(ptr noundef %7, i32 noundef %conv3.i, ptr noundef nonnull %buf, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %do.end.i.si2165_write.exit_crit_edge, label %do.end9.i

do.end.i.si2165_write.exit_crit_edge:             ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %si2165_write.exit

do.end9.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state, align 8
  %dev11.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef %call4.i) #14
  br label %si2165_write.exit

si2165_write.exit:                                ; preds = %do.end9.i, %do.end.i.si2165_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #10
  ret i32 %call4.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si2165_writereg32(ptr nocapture noundef readonly %state, i16 noundef zeroext %reg, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #10
  %0 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %conv = trunc i32 %val to i8
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %buf, align 1
  %shr = lshr i32 %val, 8
  %conv2 = trunc i32 %shr to i8
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv2, ptr %0, align 1
  %shr4 = lshr i32 %val, 16
  %conv6 = trunc i32 %shr4 to i8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv6, ptr %1, align 1
  %shr8 = lshr i32 %val, 24
  %conv10 = trunc i32 %shr8 to i8
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv10, ptr %2, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_write.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_writereg32, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !200

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %state, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  %conv.i = zext i16 %reg to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_write.__UNIQUE_ID_ddebug290, ptr noundef %dev.i, ptr noundef nonnull @.str.23, i32 noundef %conv.i, i32 noundef 4, ptr noundef nonnull %buf) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %regmap.i = getelementptr inbounds %struct.si2165_state, ptr %state, i32 0, i32 1
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %conv3.i = zext i16 %reg to i32
  %call4.i = call i32 @regmap_bulk_write(ptr noundef %10, i32 noundef %conv3.i, ptr noundef nonnull %buf, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %do.end.i.si2165_write.exit_crit_edge, label %do.end9.i

do.end.i.si2165_write.exit_crit_edge:             ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %si2165_write.exit

do.end9.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %state, align 8
  %dev11.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef %call4.i) #14
  br label %si2165_write.exit

si2165_write.exit:                                ; preds = %do.end9.i, %do.end.i.si2165_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #10
  ret i32 %call4.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si2165_upload_firmware(ptr noundef %state) unnamed_addr #2 align 64 {
entry:
  %val_tmp.i255 = alloca i32, align 4
  %val_tmp.i247 = alloca i32, align 4
  %val_tmp.i = alloca i32, align 4
  %val16 = alloca i16, align 2
  %fw = alloca ptr, align 4
  %offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val16) #10
  %0 = ptrtoint ptr %val16 to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val16, align 2, !annotation !199
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #10
  %1 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %fw, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #10
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %offset, align 4, !annotation !199
  %chip_revcode = getelementptr inbounds %struct.si2165_state, ptr %state, i32 0, i32 4
  %3 = ptrtoint ptr %chip_revcode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %chip_revcode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %4)
  %cond = icmp eq i8 %4, 3
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %state, align 8
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  %call = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @.str.27, ptr noundef %dev4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %4 to i32
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %state, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %conv) #14
  br label %cleanup

do.end7:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %state, align 8
  %dev9 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev9, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.27) #14
  br label %error

if.end:                                           ; preds = %sw.bb
  %11 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fw, align 4
  %data10 = getelementptr inbounds %struct.firmware, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %data10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data10, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %12, align 4
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state, align 8
  %dev15 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev15, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.27, i32 noundef %16) #14
  %rem = and i32 %16, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %if.end23, label %do.end20

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %state, align 8
  %dev22 = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev22, ptr noundef nonnull @.str.38) #14
  br label %error

if.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %16)
  %cmp24 = icmp ult i32 %16, 8
  br i1 %cmp24, label %do.end29, label %if.end32

do.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %state, align 8
  %dev31 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev31, ptr noundef nonnull @.str.41) #14
  br label %error

if.end32:                                         ; preds = %if.end23
  %23 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp34.not = icmp eq i8 %24, 1
  br i1 %cmp34.not, label %lor.lhs.false, label %if.end32.do.end43_crit_edge

if.end32.do.end43_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end43

lor.lhs.false:                                    ; preds = %if.end32
  %arrayidx36 = getelementptr i8, ptr %14, i32 1
  %25 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx36, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp38.not = icmp eq i8 %26, 0
  br i1 %cmp38.not, label %if.end46, label %lor.lhs.false.do.end43_crit_edge

lor.lhs.false.do.end43_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end43

do.end43:                                         ; preds = %lor.lhs.false.do.end43_crit_edge, %if.end32.do.end43_crit_edge
  %27 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %state, align 8
  %dev45 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev45, ptr noundef nonnull @.str.44) #14
  br label %error

if.end46:                                         ; preds = %lor.lhs.false
  %arrayidx47 = getelementptr i8, ptr %14, i32 2
  %29 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx47, align 1
  %arrayidx48 = getelementptr i8, ptr %14, i32 4
  %31 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx48, align 1
  %arrayidx49 = getelementptr i8, ptr %14, i32 7
  %33 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %34 to i32
  %shl = shl nuw nsw i32 %conv50, 8
  %arrayidx51 = getelementptr i8, ptr %14, i32 6
  %35 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %36 to i32
  %or = or i32 %shl, %conv52
  %regmap.i = getelementptr inbounds %struct.si2165_state, ptr %state, i32 0, i32 1
  %37 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_write(ptr noundef %38, i32 noundef 833, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp55 = icmp slt i32 %call.i, 0
  br i1 %cmp55, label %if.end46.error_crit_edge, label %if.end58

if.end46.error_crit_edge:                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end58:                                         ; preds = %if.end46
  %39 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap.i, align 4
  %call.i244 = call i32 @regmap_write(ptr noundef %40, i32 noundef 192, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i244)
  %cmp60 = icmp slt i32 %call.i244, 0
  br i1 %cmp60, label %if.end58.error_crit_edge, label %if.end63

if.end58.error_crit_edge:                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end63:                                         ; preds = %if.end58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_tmp.i) #10
  %41 = ptrtoint ptr %val_tmp.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %val_tmp.i, align 4, !annotation !199
  %42 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap.i, align 4
  %call.i246 = call i32 @regmap_read(ptr noundef %43, i32 noundef 833, ptr noundef nonnull %val_tmp.i) #10
  %44 = ptrtoint ptr %val_tmp.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val_tmp.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_readreg8.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_upload_firmware, %if.then.i)) #10
          to label %si2165_readreg8.exit [label %if.then.i], !srcloc !200

if.then.i:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %state, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %47, i32 0, i32 4
  %conv6.i = and i32 %45, 255
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_readreg8.__UNIQUE_ID_ddebug292, ptr noundef %dev.i, ptr noundef nonnull @.str.85, i32 noundef 833, i32 noundef %conv6.i) #10
  br label %si2165_readreg8.exit

si2165_readreg8.exit:                             ; preds = %if.then.i, %if.end63
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i246)
  %cmp65 = icmp slt i32 %call.i246, 0
  br i1 %cmp65, label %si2165_readreg8.exit.error_crit_edge, label %if.end68

si2165_readreg8.exit.error_crit_edge:             ; preds = %si2165_readreg8.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end68:                                         ; preds = %si2165_readreg8.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_tmp.i247) #10
  %48 = ptrtoint ptr %val_tmp.i247 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %val_tmp.i247, align 4, !annotation !199
  %49 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap.i, align 4
  %call.i249 = call i32 @regmap_read(ptr noundef %50, i32 noundef 860, ptr noundef nonnull %val_tmp.i247) #10
  %51 = ptrtoint ptr %val_tmp.i247 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %val_tmp.i247, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_readreg8.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_upload_firmware, %if.then.i253)) #10
          to label %si2165_readreg8.exit254 [label %if.then.i253], !srcloc !200

if.then.i253:                                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %state, align 8
  %dev.i251 = getelementptr inbounds %struct.i2c_client, ptr %54, i32 0, i32 4
  %conv6.i252 = and i32 %52, 255
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_readreg8.__UNIQUE_ID_ddebug292, ptr noundef %dev.i251, ptr noundef nonnull @.str.85, i32 noundef 860, i32 noundef %conv6.i252) #10
  br label %si2165_readreg8.exit254

si2165_readreg8.exit254:                          ; preds = %if.then.i253, %if.end68
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_tmp.i247) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i249)
  %cmp71 = icmp slt i32 %call.i249, 0
  br i1 %cmp71, label %si2165_readreg8.exit254.error_crit_edge, label %if.end74

si2165_readreg8.exit254.error_crit_edge:          ; preds = %si2165_readreg8.exit254
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end74:                                         ; preds = %si2165_readreg8.exit254
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_tmp.i255) #10
  %55 = ptrtoint ptr %val_tmp.i255 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %val_tmp.i255, align 4, !annotation !199
  %56 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap.i, align 4
  %call.i257 = call i32 @regmap_read(ptr noundef %57, i32 noundef 860, ptr noundef nonnull %val_tmp.i255) #10
  %58 = ptrtoint ptr %val_tmp.i255 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %val_tmp.i255, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_readreg8.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_upload_firmware, %if.then.i261)) #10
          to label %si2165_readreg8.exit262 [label %if.then.i261], !srcloc !200

if.then.i261:                                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %state, align 8
  %dev.i259 = getelementptr inbounds %struct.i2c_client, ptr %61, i32 0, i32 4
  %conv6.i260 = and i32 %59, 255
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_readreg8.__UNIQUE_ID_ddebug292, ptr noundef %dev.i259, ptr noundef nonnull @.str.85, i32 noundef 860, i32 noundef %conv6.i260) #10
  br label %si2165_readreg8.exit262

si2165_readreg8.exit262:                          ; preds = %if.then.i261, %if.end74
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_tmp.i255) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i257)
  %cmp77 = icmp slt i32 %call.i257, 0
  br i1 %cmp77, label %si2165_readreg8.exit262.error_crit_edge, label %if.end80

si2165_readreg8.exit262.error_crit_edge:          ; preds = %si2165_readreg8.exit262
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end80:                                         ; preds = %si2165_readreg8.exit262
  %62 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap.i, align 4
  %call.i264 = call i32 @regmap_write(ptr noundef %63, i32 noundef 860, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i264)
  %cmp82 = icmp slt i32 %call.i264, 0
  br i1 %cmp82, label %if.end80.error_crit_edge, label %if.end85

if.end80.error_crit_edge:                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end85:                                         ; preds = %if.end80
  %64 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 8, ptr %offset, align 4
  %65 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %state, align 8
  %dev90 = getelementptr inbounds %struct.i2c_client, ptr %66, i32 0, i32 4
  %conv91 = zext i8 %30 to i32
  %conv92 = zext i8 %32 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev90, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.29, i32 noundef %conv91, i32 noundef %conv92, i32 noundef %or) #14
  %call94 = call fastcc i32 @si2165_upload_firmware_block(ptr noundef %state, ptr noundef %14, i32 noundef %16, ptr noundef nonnull %offset, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %cmp95 = icmp slt i32 %call94, 0
  br i1 %cmp95, label %if.end85.error_crit_edge, label %if.end98

if.end85.error_crit_edge:                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end98:                                         ; preds = %if.end85
  %67 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regmap.i, align 4
  %call.i267 = call i32 @regmap_write(ptr noundef %68, i32 noundef 836, i32 noundef %conv91) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i267)
  %cmp100 = icmp slt i32 %call.i267, 0
  br i1 %cmp100, label %if.end98.error_crit_edge, label %if.end103

if.end98.error_crit_edge:                         ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end103:                                        ; preds = %if.end98
  %69 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap.i, align 4
  %call.i269 = call i32 @regmap_write(ptr noundef %70, i32 noundef 889, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i269)
  %tobool105.not = icmp eq i32 %call.i269, 0
  br i1 %tobool105.not, label %if.end107, label %if.end103.error_crit_edge

if.end103.error_crit_edge:                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end107:                                        ; preds = %if.end103
  %call109 = call fastcc i32 @si2165_upload_firmware_block(ptr noundef %state, ptr noundef %14, i32 noundef %16, ptr noundef nonnull %offset, i32 noundef %conv92)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %cmp110 = icmp slt i32 %call109, 0
  br i1 %cmp110, label %do.end115, label %if.end118

do.end115:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %state, align 8
  %dev117 = getelementptr inbounds %struct.i2c_client, ptr %72, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev117, ptr noundef nonnull @.str.50) #14
  br label %error

if.end118:                                        ; preds = %if.end107
  %call119 = call fastcc i32 @si2165_readreg16(ptr noundef %state, ptr noundef nonnull %val16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.end122, label %if.end118.error_crit_edge

if.end118.error_crit_edge:                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end122:                                        ; preds = %if.end118
  %73 = ptrtoint ptr %val16 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %val16, align 2
  %conv123 = zext i16 %74 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv123)
  %cmp125.not = icmp eq i32 %or, %conv123
  br i1 %cmp125.not, label %if.end135, label %do.end130

do.end130:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %state, align 8
  %dev132 = getelementptr inbounds %struct.i2c_client, ptr %76, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev132, ptr noundef nonnull @.str.53, i32 noundef %conv123, i32 noundef %or) #14
  br label %error

if.end135:                                        ; preds = %if.end122
  %call136 = call fastcc i32 @si2165_upload_firmware_block(ptr noundef %state, ptr noundef %14, i32 noundef %16, ptr noundef nonnull %offset, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.end139, label %if.end135.error_crit_edge

if.end135.error_crit_edge:                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end139:                                        ; preds = %if.end135
  %77 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %78)
  %cmp140.not = icmp eq i32 %16, %78
  br i1 %cmp140.not, label %if.end148, label %do.end145

do.end145:                                        ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %state, align 8
  %dev147 = getelementptr inbounds %struct.i2c_client, ptr %80, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev147, ptr noundef nonnull @.str.56, i32 noundef %16, i32 noundef %78) #14
  br label %error

if.end148:                                        ; preds = %if.end139
  %call149 = call fastcc i32 @si2165_writereg_mask8(ptr noundef %state, i16 noundef zeroext 833, i8 noundef zeroext 2, i8 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %cmp150 = icmp slt i32 %call149, 0
  br i1 %cmp150, label %if.end148.error_crit_edge, label %if.end153

if.end148.error_crit_edge:                        ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end153:                                        ; preds = %if.end148
  %call154 = call fastcc i32 @si2165_writereg_mask8(ptr noundef %state, i16 noundef zeroext 860, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %cmp155 = icmp slt i32 %call154, 0
  br i1 %cmp155, label %if.end153.error_crit_edge, label %do.end161

if.end153.error_crit_edge:                        ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

do.end161:                                        ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %state, align 8
  %dev163 = getelementptr inbounds %struct.i2c_client, ptr %82, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev163, ptr noundef nonnull @.str.59) #14
  %firmware_loaded = getelementptr inbounds %struct.si2165_state, ptr %state, i32 0, i32 12
  %83 = ptrtoint ptr %firmware_loaded to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %firmware_loaded, align 2
  br label %error

error:                                            ; preds = %do.end161, %if.end153.error_crit_edge, %if.end148.error_crit_edge, %do.end145, %if.end135.error_crit_edge, %do.end130, %if.end118.error_crit_edge, %do.end115, %if.end103.error_crit_edge, %if.end98.error_crit_edge, %if.end85.error_crit_edge, %if.end80.error_crit_edge, %si2165_readreg8.exit262.error_crit_edge, %si2165_readreg8.exit254.error_crit_edge, %si2165_readreg8.exit.error_crit_edge, %if.end58.error_crit_edge, %if.end46.error_crit_edge, %do.end43, %do.end29, %do.end20, %do.end7
  %ret.0 = phi i32 [ %call, %do.end7 ], [ -22, %do.end20 ], [ -22, %do.end29 ], [ -22, %do.end43 ], [ %call.i, %if.end46.error_crit_edge ], [ %call.i244, %if.end58.error_crit_edge ], [ %call.i246, %si2165_readreg8.exit.error_crit_edge ], [ %call.i249, %si2165_readreg8.exit254.error_crit_edge ], [ %call.i257, %si2165_readreg8.exit262.error_crit_edge ], [ %call.i264, %if.end80.error_crit_edge ], [ %call94, %if.end85.error_crit_edge ], [ %call.i267, %if.end98.error_crit_edge ], [ %call.i269, %if.end103.error_crit_edge ], [ %call109, %do.end115 ], [ %call119, %if.end118.error_crit_edge ], [ -22, %do.end130 ], [ %call136, %if.end135.error_crit_edge ], [ -22, %do.end145 ], [ %call149, %if.end148.error_crit_edge ], [ %call154, %if.end153.error_crit_edge ], [ 0, %do.end161 ]
  %84 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %fw, align 4
  %tobool164.not = icmp eq ptr %85, null
  br i1 %tobool164.not, label %error.cleanup_crit_edge, label %if.then165

error.cleanup_crit_edge:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then165:                                       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  call void @release_firmware(ptr noundef nonnull %85) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then165, %error.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %ret.0, %if.then165 ], [ %ret.0, %error.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val16) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si2165_writereg24(ptr nocapture noundef readonly %state) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #10
  %0 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 85, ptr %buf, align 1
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 85, ptr %0, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 85, ptr %1, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_write.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_writereg24, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !200

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %state, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_write.__UNIQUE_ID_ddebug290, ptr noundef %dev.i, ptr noundef nonnull @.str.23, i32 noundef 1268, i32 noundef 3, ptr noundef nonnull %buf) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %regmap.i = getelementptr inbounds %struct.si2165_state, ptr %state, i32 0, i32 1
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %call4.i = call i32 @regmap_bulk_write(ptr noundef %8, i32 noundef 1268, ptr noundef nonnull %buf, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %do.end.i.si2165_write.exit_crit_edge, label %do.end9.i

do.end.i.si2165_write.exit_crit_edge:             ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %si2165_write.exit

do.end9.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %state, align 8
  %dev11.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef %call4.i) #14
  br label %si2165_write.exit

si2165_write.exit:                                ; preds = %do.end9.i, %do.end.i.si2165_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #10
  ret i32 %call4.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si2165_upload_firmware_block(ptr nocapture noundef readonly %state, ptr noundef %data, i32 noundef %len, ptr noundef %poffset, i32 noundef %block_count) unnamed_addr #2 align 64 {
entry:
  %buf_ctrl = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf_ctrl) #10
  %0 = ptrtoint ptr %buf_ctrl to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 192, ptr %buf_ctrl, align 4
  %tobool.not = icmp eq ptr %poffset, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %cond.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %poffset to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %poffset, align 4
  br label %if.end

if.end:                                           ; preds = %cond.true, %entry.if.end_crit_edge
  %cond = phi i32 [ %2, %cond.true ], [ 0, %entry.if.end_crit_edge ]
  %rem = and i32 %len, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp1.not = icmp eq i32 %rem, 0
  br i1 %cmp1.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_upload_firmware_block.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_upload_firmware_block, %if.then7)) #10
          to label %do.end [label %if.then7], !srcloc !200

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_upload_firmware_block.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.61, i32 noundef %len, i32 noundef %cond, i32 noundef %block_count) #10
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %add237 = add i32 %cond, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %add237, i32 %len)
  %cmp9.not238 = icmp ule i32 %add237, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %block_count)
  %cmp10239 = icmp ne i32 %block_count, 0
  %or.cond240 = and i1 %cmp9.not238, %cmp10239
  br i1 %or.cond240, label %do.body11.lr.ph, label %do.end.do.body93_crit_edge

do.end.do.body93_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body93

do.body11.lr.ph:                                  ; preds = %do.end
  %regmap.i = getelementptr inbounds %struct.si2165_state, ptr %state, i32 0, i32 1
  br label %do.body11

do.body11:                                        ; preds = %while.cond80.while.end_crit_edge.do.body11_crit_edge, %do.body11.lr.ph
  %cur_block.0242 = phi i32 [ 0, %do.body11.lr.ph ], [ %inc, %while.cond80.while.end_crit_edge.do.body11_crit_edge ]
  %offset.0241 = phi i32 [ %cond, %do.body11.lr.ph ], [ %add91, %while.cond80.while.end_crit_edge.do.body11_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_upload_firmware_block.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_upload_firmware_block, %if.then23)) #10
          to label %do.end28 [label %if.then23], !srcloc !200

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %state, align 8
  %dev25 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_upload_firmware_block.__UNIQUE_ID_ddebug296, ptr noundef %dev25, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.61, i32 noundef %len, i32 noundef %offset.0241, i32 noundef %cur_block.0242, i32 noundef %block_count) #10
  br label %do.end28

do.end28:                                         ; preds = %if.then23, %do.body11
  %arrayidx = getelementptr i8, ptr %data, i32 %offset.0241
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp29 = icmp eq i8 %8, 0
  br i1 %cmp29, label %do.end28.do.end48_crit_edge, label %lor.lhs.false

do.end28.do.end48_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end48

lor.lhs.false:                                    ; preds = %do.end28
  %add31 = add i32 %offset.0241, 1
  %arrayidx32 = getelementptr i8, ptr %data, i32 %add31
  %9 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool34.not = icmp eq i8 %10, 0
  br i1 %tobool34.not, label %lor.lhs.false35, label %lor.lhs.false.do.end48_crit_edge

lor.lhs.false.do.end48_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end48

lor.lhs.false35:                                  ; preds = %lor.lhs.false
  %add36 = add i32 %offset.0241, 2
  %arrayidx37 = getelementptr i8, ptr %data, i32 %add36
  %11 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx37, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool39.not = icmp eq i8 %12, 0
  br i1 %tobool39.not, label %lor.lhs.false40, label %lor.lhs.false35.do.end48_crit_edge

lor.lhs.false35.do.end48_crit_edge:               ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end48

lor.lhs.false40:                                  ; preds = %lor.lhs.false35
  %add41 = add i32 %offset.0241, 3
  %arrayidx42 = getelementptr i8, ptr %data, i32 %add41
  %13 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx42, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool44.not = icmp eq i8 %14, 0
  br i1 %tobool44.not, label %if.end51, label %lor.lhs.false40.do.end48_crit_edge

lor.lhs.false40.do.end48_crit_edge:               ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end48

do.end48:                                         ; preds = %lor.lhs.false40.do.end48_crit_edge, %lor.lhs.false35.do.end48_crit_edge, %lor.lhs.false.do.end48_crit_edge, %do.end28.do.end48_crit_edge
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %state, align 8
  %dev50 = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev50, ptr noundef nonnull @.str.64, i32 noundef 4, ptr noundef %data) #14
  br label %cleanup

if.end51:                                         ; preds = %lor.lhs.false40
  %add52 = add i32 %offset.0241, 8
  %mul = shl nuw nsw i32 %conv, 2
  %add54 = add i32 %mul, %add52
  call void @__sanitizer_cov_trace_cmp4(i32 %add54, i32 %len)
  %cmp55 = icmp ugt i32 %add54, %len
  br i1 %cmp55, label %do.end60, label %if.end64

do.end60:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %conv.le = zext i8 %8 to i32
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state, align 8
  %dev62 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev62, ptr noundef nonnull @.str.66, i32 noundef %len, i32 noundef %conv.le) #14
  br label %cleanup

if.end64:                                         ; preds = %if.end51
  %sub = add i8 %8, -1
  %19 = ptrtoint ptr %buf_ctrl to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %sub, ptr %buf_ctrl, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_write.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_upload_firmware_block, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !200

if.then.i:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %state, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_write.__UNIQUE_ID_ddebug290, ptr noundef %dev.i, ptr noundef nonnull @.str.23, i32 noundef 868, i32 noundef 4, ptr noundef nonnull %buf_ctrl) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end64
  %22 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i, align 4
  %call4.i = call i32 @regmap_bulk_write(ptr noundef %23, i32 noundef 868, ptr noundef nonnull %buf_ctrl, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %do.end.i.if.end72_crit_edge, label %si2165_write.exit

do.end.i.if.end72_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

si2165_write.exit:                                ; preds = %do.end.i
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %state, align 8
  %dev11.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef %call4.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp69 = icmp slt i32 %call4.i, 0
  br i1 %cmp69, label %si2165_write.exit.cleanup_crit_edge, label %si2165_write.exit.if.end72_crit_edge

si2165_write.exit.if.end72_crit_edge:             ; preds = %si2165_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

si2165_write.exit.cleanup_crit_edge:              ; preds = %si2165_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end72:                                         ; preds = %si2165_write.exit.if.end72_crit_edge, %do.end.i.if.end72_crit_edge
  %add.ptr73 = getelementptr i8, ptr %arrayidx, i32 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_write.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_upload_firmware_block, %if.then.i198)) #10
          to label %do.end.i202 [label %if.then.i198], !srcloc !200

if.then.i198:                                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %state, align 8
  %dev.i197 = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_write.__UNIQUE_ID_ddebug290, ptr noundef %dev.i197, ptr noundef nonnull @.str.23, i32 noundef 872, i32 noundef 4, ptr noundef %add.ptr73) #10
  br label %do.end.i202

do.end.i202:                                      ; preds = %if.then.i198, %if.end72
  %28 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i, align 4
  %call4.i200 = call i32 @regmap_bulk_write(ptr noundef %29, i32 noundef 872, ptr noundef %add.ptr73, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i200)
  %tobool5.not.i201 = icmp eq i32 %call4.i200, 0
  br i1 %tobool5.not.i201, label %do.end.i202.while.body84.preheader_crit_edge, label %si2165_write.exit205

do.end.i202.while.body84.preheader_crit_edge:     ; preds = %do.end.i202
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body84.preheader

si2165_write.exit205:                             ; preds = %do.end.i202
  %30 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %state, align 8
  %dev11.i203 = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11.i203, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef %call4.i200) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i200)
  %cmp75 = icmp slt i32 %call4.i200, 0
  br i1 %cmp75, label %si2165_write.exit205.cleanup_crit_edge, label %si2165_write.exit205.while.body84.preheader_crit_edge

si2165_write.exit205.while.body84.preheader_crit_edge: ; preds = %si2165_write.exit205
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body84.preheader

si2165_write.exit205.cleanup_crit_edge:           ; preds = %si2165_write.exit205
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body84.preheader:                           ; preds = %si2165_write.exit205.while.body84.preheader_crit_edge, %do.end.i202.while.body84.preheader_crit_edge
  br label %while.body84

while.body84:                                     ; preds = %if.end90.while.body84_crit_edge, %while.body84.preheader
  %wordcount.0236 = phi i8 [ %dec, %if.end90.while.body84_crit_edge ], [ %8, %while.body84.preheader ]
  %offset.1235 = phi i32 [ %add91, %if.end90.while.body84_crit_edge ], [ %add52, %while.body84.preheader ]
  %add.ptr85 = getelementptr i8, ptr %data, i32 %offset.1235
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_write.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_upload_firmware_block, %if.then.i207)) #10
          to label %do.end.i211 [label %if.then.i207], !srcloc !200

if.then.i207:                                     ; preds = %while.body84
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %state, align 8
  %dev.i206 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_write.__UNIQUE_ID_ddebug290, ptr noundef %dev.i206, ptr noundef nonnull @.str.23, i32 noundef 876, i32 noundef 4, ptr noundef %add.ptr85) #10
  br label %do.end.i211

do.end.i211:                                      ; preds = %if.then.i207, %while.body84
  %34 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap.i, align 4
  %call4.i209 = call i32 @regmap_bulk_write(ptr noundef %35, i32 noundef 876, ptr noundef %add.ptr85, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i209)
  %tobool5.not.i210 = icmp eq i32 %call4.i209, 0
  br i1 %tobool5.not.i210, label %do.end.i211.if.end90_crit_edge, label %si2165_write.exit214

do.end.i211.if.end90_crit_edge:                   ; preds = %do.end.i211
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

si2165_write.exit214:                             ; preds = %do.end.i211
  %36 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %state, align 8
  %dev11.i212 = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11.i212, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef %call4.i209) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i209)
  %cmp87 = icmp slt i32 %call4.i209, 0
  br i1 %cmp87, label %si2165_write.exit214.cleanup_crit_edge, label %si2165_write.exit214.if.end90_crit_edge

si2165_write.exit214.if.end90_crit_edge:          ; preds = %si2165_write.exit214
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

si2165_write.exit214.cleanup_crit_edge:           ; preds = %si2165_write.exit214
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end90:                                         ; preds = %si2165_write.exit214.if.end90_crit_edge, %do.end.i211.if.end90_crit_edge
  %dec = add i8 %wordcount.0236, -1
  %add91 = add i32 %offset.1235, 4
  %cmp82.not = icmp eq i8 %dec, 0
  br i1 %cmp82.not, label %while.cond80.while.end_crit_edge, label %if.end90.while.body84_crit_edge

if.end90.while.body84_crit_edge:                  ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body84

while.cond80.while.end_crit_edge:                 ; preds = %if.end90
  %inc = add nuw i32 %cur_block.0242, 1
  %add = add i32 %offset.1235, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %len)
  %cmp9.not = icmp ule i32 %add, %len
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %block_count)
  %cmp10 = icmp ult i32 %inc, %block_count
  %or.cond = select i1 %cmp9.not, i1 %cmp10, i1 false
  br i1 %or.cond, label %while.cond80.while.end_crit_edge.do.body11_crit_edge, label %while.cond80.while.end_crit_edge.do.body93_crit_edge

while.cond80.while.end_crit_edge.do.body93_crit_edge: ; preds = %while.cond80.while.end_crit_edge
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body93

while.cond80.while.end_crit_edge.do.body11_crit_edge: ; preds = %while.cond80.while.end_crit_edge
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body11

do.body93:                                        ; preds = %while.cond80.while.end_crit_edge.do.body93_crit_edge, %do.end.do.body93_crit_edge
  %offset.0.lcssa = phi i32 [ %cond, %do.end.do.body93_crit_edge ], [ %add91, %while.cond80.while.end_crit_edge.do.body93_crit_edge ]
  %cur_block.0.lcssa = phi i32 [ 0, %do.end.do.body93_crit_edge ], [ %inc, %while.cond80.while.end_crit_edge.do.body93_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_upload_firmware_block.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_upload_firmware_block, %if.then105)) #10
          to label %do.end110 [label %if.then105], !srcloc !200

if.then105:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %state, align 8
  %dev107 = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_upload_firmware_block.__UNIQUE_ID_ddebug297, ptr noundef %dev107, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.61, i32 noundef %len, i32 noundef %offset.0.lcssa, i32 noundef %cur_block.0.lcssa, i32 noundef %block_count) #10
  br label %do.end110

do.end110:                                        ; preds = %if.then105, %do.body93
  br i1 %tobool.not, label %do.end110.do.body114_crit_edge, label %if.then112

do.end110.do.body114_crit_edge:                   ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body114

if.then112:                                       ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %poffset to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %offset.0.lcssa, ptr %poffset, align 4
  br label %do.body114

do.body114:                                       ; preds = %if.then112, %do.end110.do.body114_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_upload_firmware_block.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_upload_firmware_block, %if.then126)) #10
          to label %cleanup [label %if.then126], !srcloc !200

if.then126:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %state, align 8
  %dev128 = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_upload_firmware_block.__UNIQUE_ID_ddebug298, ptr noundef %dev128, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.61, i32 noundef %offset.0.lcssa) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then126, %do.body114, %si2165_write.exit214.cleanup_crit_edge, %si2165_write.exit205.cleanup_crit_edge, %si2165_write.exit.cleanup_crit_edge, %do.end60, %do.end48, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end48 ], [ -22, %do.end60 ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then126 ], [ 0, %do.body114 ], [ %call4.i209, %si2165_write.exit214.cleanup_crit_edge ], [ %call4.i200, %si2165_write.exit205.cleanup_crit_edge ], [ %call4.i, %si2165_write.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf_ctrl) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si2165_readreg16(ptr nocapture noundef readonly %state, ptr nocapture noundef %val) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #10
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf, align 1, !annotation !199
  %1 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !199
  %regmap.i = getelementptr inbounds %struct.si2165_state, ptr %state, i32 0, i32 1
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_bulk_read(ptr noundef %4, i32 noundef 890, ptr noundef nonnull %buf, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body3.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %state, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  %config.i = getelementptr inbounds %struct.si2165_state, ptr %state, i32 0, i32 3
  %7 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %config.i, align 8
  %conv1.i = zext i8 %8 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, i32 noundef %conv1.i, i32 noundef 890, i32 noundef %call.i) #14
  br label %si2165_read.exit

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_read.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_readreg16, %if.then8.i)) #10
          to label %si2165_read.exit [label %if.then8.i], !srcloc !200

if.then8.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %state, align 8
  %dev10.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_read.__UNIQUE_ID_ddebug291, ptr noundef %dev10.i, ptr noundef nonnull @.str.74, i32 noundef 890, i32 noundef 2, ptr noundef nonnull %buf) #10
  br label %si2165_read.exit

si2165_read.exit:                                 ; preds = %if.then8.i, %do.body3.i, %do.end.i
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %buf, align 1
  %conv = zext i8 %12 to i16
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %1, align 1
  %conv2 = zext i8 %14 to i16
  %shl = shl nuw i16 %conv2, 8
  %or = or i16 %shl, %conv
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %or, ptr %val, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_readreg16.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_readreg16, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !200

if.then:                                          ; preds = %si2165_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %state, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %val, align 2
  %conv8 = zext i16 %19 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_readreg16.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.71, i32 noundef 890, i32 noundef %conv8) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %si2165_read.exit
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si2165_writereg_mask8(ptr nocapture noundef readonly %state, i16 noundef zeroext %reg, i8 noundef zeroext %val, i8 noundef zeroext %mask) unnamed_addr #2 align 64 {
entry:
  %val_tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_tmp.i) #10
  %0 = ptrtoint ptr %val_tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val_tmp.i, align 4, !annotation !199
  %regmap.i = getelementptr inbounds %struct.si2165_state, ptr %state, i32 0, i32 1
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %conv.i = zext i16 %reg to i32
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef %conv.i, ptr noundef nonnull %val_tmp.i) #10
  %3 = ptrtoint ptr %val_tmp.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val_tmp.i, align 4
  %conv1.i = trunc i32 %4 to i8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_readreg8.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_writereg_mask8, %if.then.i)) #10
          to label %si2165_readreg8.exit [label %if.then.i], !srcloc !200

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %state, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  %conv6.i = and i32 %4, 255
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_readreg8.__UNIQUE_ID_ddebug292, ptr noundef %dev.i, ptr noundef nonnull @.str.85, i32 noundef %conv.i, i32 noundef %conv6.i) #10
  br label %si2165_readreg8.exit

si2165_readreg8.exit:                             ; preds = %if.then.i, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2 = icmp slt i32 %call.i, 0
  br i1 %cmp2, label %si2165_readreg8.exit.return_crit_edge, label %if.end16

si2165_readreg8.exit.return_crit_edge:            ; preds = %si2165_readreg8.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end16:                                         ; preds = %si2165_readreg8.exit
  call void @__sanitizer_cov_trace_pc() #12
  %and25 = and i8 %mask, %val
  %neg = xor i8 %mask, -1
  %and10 = and i8 %conv1.i, %neg
  %or26 = or i8 %and10, %and25
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %conv1.i29 = zext i8 %or26 to i32
  %call.i30 = call i32 @regmap_write(ptr noundef %8, i32 noundef %conv.i, i32 noundef %conv1.i29) #10
  br label %return

return:                                           ; preds = %if.end16, %si2165_readreg8.exit.return_crit_edge
  %retval.1 = phi i32 [ %call.i30, %if.end16 ], [ %call.i, %si2165_readreg8.exit.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si2165_set_if_freq_shift(ptr noundef %state) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca [4 x i8], align 1
  %IF = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fe1 = getelementptr inbounds %struct.si2165_state, ptr %state, i32 0, i32 2
  %adc_clk.i = getelementptr inbounds %struct.si2165_state, ptr %state, i32 0, i32 8
  %0 = ptrtoint ptr %adc_clk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %adc_clk.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %IF) #10
  %2 = ptrtoint ptr %IF to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %IF, align 4
  %get_if_frequency = getelementptr inbounds %struct.si2165_state, ptr %state, i32 0, i32 2, i32 1, i32 32, i32 11
  %3 = ptrtoint ptr %get_if_frequency to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_if_frequency, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %state, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.75) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call8 = call i32 %4(ptr noundef %fe1, ptr noundef nonnull %IF) #10
  %7 = ptrtoint ptr %IF to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %IF, align 4
  %conv = zext i32 %8 to i64
  %shl = shl nuw nsw i64 %conv, 29
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %8)
  %cmp179 = icmp ult i32 %8, 8
  br i1 %cmp179, label %if.then183, label %if.else189, !prof !201

if.then183:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %conv184 = trunc i64 %shl to i32
  %div187 = udiv i32 %conv184, %1
  br label %if.end193

if.else189:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %9 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %shl) #15, !srcloc !202
  %asmresult1.i = extractvalue { i64, i64 } %9, 1
  %extract.t320 = trunc i64 %asmresult1.i to i32
  br label %if.end193

if.end193:                                        ; preds = %if.else189, %if.then183
  %if_freq_shift.0.off0 = phi i32 [ %div187, %if.then183 ], [ %extract.t320, %if.else189 ]
  %inversion = getelementptr inbounds %struct.si2165_state, ptr %state, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %inversion to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %inversion, align 8, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool196.not = icmp eq i8 %11, 0
  %sub198 = sub i32 0, %if_freq_shift.0.off0
  %spec.select = select i1 %tobool196.not, i32 %if_freq_shift.0.off0, i32 %sub198
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #10
  %12 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 1
  %13 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 2
  %14 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 3
  %conv.i = trunc i32 %spec.select to i8
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i, ptr %buf.i, align 1
  %shr.i = lshr i32 %spec.select, 8
  %conv2.i = trunc i32 %shr.i to i8
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv2.i, ptr %12, align 1
  %shr4.i = lshr i32 %spec.select, 16
  %conv6.i = trunc i32 %shr4.i to i8
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv6.i, ptr %13, align 1
  %and200 = lshr i32 %spec.select, 24
  %18 = trunc i32 %and200 to i8
  %conv10.i = and i8 %18, 31
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv10.i, ptr %14, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_write.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_set_if_freq_shift, %if.then.i.i)) #10
          to label %do.end.i.i [label %if.then.i.i], !srcloc !200

if.then.i.i:                                      ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %state, align 8
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_write.__UNIQUE_ID_ddebug290, ptr noundef %dev.i.i, ptr noundef nonnull @.str.23, i32 noundef 232, i32 noundef 4, ptr noundef nonnull %buf.i) #10
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %if.end193
  %regmap.i.i = getelementptr inbounds %struct.si2165_state, ptr %state, i32 0, i32 1
  %22 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i.i, align 4
  %call4.i.i = call i32 @regmap_bulk_write(ptr noundef %23, i32 noundef 232, ptr noundef nonnull %buf.i, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %do.end.i.i.si2165_writereg32.exit_crit_edge, label %do.end9.i.i

do.end.i.i.si2165_writereg32.exit_crit_edge:      ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %si2165_writereg32.exit

do.end9.i.i:                                      ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %state, align 8
  %dev11.i.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11.i.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef %call4.i.i) #14
  br label %si2165_writereg32.exit

si2165_writereg32.exit:                           ; preds = %do.end9.i.i, %do.end.i.i.si2165_writereg32.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #10
  br label %cleanup

cleanup:                                          ; preds = %si2165_writereg32.exit, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call4.i.i, %si2165_writereg32.exit ], [ -22, %do.end ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %IF) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si2165_set_frontend_dvbt(ptr nocapture noundef readonly %fe) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %2 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bandwidth_hz, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_set_frontend_dvbt.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_set_frontend_dvbt, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !200

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_set_frontend_dvbt.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.77) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %has_dvbt = getelementptr inbounds %struct.si2165_state, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %has_dvbt to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %has_dvbt, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %or.cond = select i1 %tobool3.not, i1 true, i1 %cmp
  br i1 %or.cond, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %mul = shl i32 %3, 3
  %div = udiv i32 %mul, 7
  %fvco_hz.i = getelementptr inbounds %struct.si2165_state, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %fvco_hz.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fvco_hz.i, align 8
  %div.i = udiv i32 %9, 24
  %sys_clk.i = getelementptr inbounds %struct.si2165_state, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %sys_clk.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div.i, ptr %sys_clk.i, align 4
  %regmap.i.i = getelementptr inbounds %struct.si2165_state, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 160, i32 noundef 12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp10 = icmp slt i32 %call.i.i, 0
  br i1 %cmp10, label %if.end7.cleanup_crit_edge, label %if.end13

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %div8 = udiv i32 %3, 10000
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #10
  %13 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %conv1.i = trunc i32 %div8 to i8
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv1.i, ptr %buf.i, align 1
  %15 = lshr i32 %div8, 8
  %conv4.i = trunc i32 %15 to i8
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv4.i, ptr %13, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_write.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_set_frontend_dvbt, %if.then.i.i)) #10
          to label %do.end.i.i [label %if.then.i.i], !srcloc !200

if.then.i.i:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_write.__UNIQUE_ID_ddebug290, ptr noundef %dev.i.i, ptr noundef nonnull @.str.23, i32 noundef 776, i32 noundef 2, ptr noundef nonnull %buf.i) #10
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %if.end13
  %19 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i.i, align 4
  %call4.i.i = call i32 @regmap_bulk_write(ptr noundef %20, i32 noundef 776, ptr noundef nonnull %buf.i, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %si2165_writereg16.exit.thread, label %si2165_writereg16.exit

si2165_writereg16.exit.thread:                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #10
  br label %if.end18

si2165_writereg16.exit:                           ; preds = %do.end.i.i
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %dev11.i.i = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11.i.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef %call4.i.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp15 = icmp slt i32 %call4.i.i, 0
  br i1 %cmp15, label %si2165_writereg16.exit.cleanup_crit_edge, label %si2165_writereg16.exit.if.end18_crit_edge

si2165_writereg16.exit.if.end18_crit_edge:        ; preds = %si2165_writereg16.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

si2165_writereg16.exit.cleanup_crit_edge:         ; preds = %si2165_writereg16.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %si2165_writereg16.exit.if.end18_crit_edge, %si2165_writereg16.exit.thread
  %call19 = call fastcc i32 @si2165_set_oversamp(ptr noundef %1, i32 noundef %div)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end18.cleanup_crit_edge, label %if.end18.for.body.i_crit_edge

if.end18.for.body.i_crit_edge:                    ; preds = %if.end18
  br label %for.body.i

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 13
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end18.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end18.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.si2165_reg_value_pair, ptr @dvbt_regs, i32 %i.010.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx.i, align 2
  %val.i = getelementptr %struct.si2165_reg_value_pair, ptr @dvbt_regs, i32 %i.010.i, i32 1
  %25 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %val.i, align 2
  %27 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i.i, align 4
  %conv.i.i = zext i16 %24 to i32
  %conv1.i.i = zext i8 %26 to i32
  %call.i.i51 = call i32 @regmap_write(ptr noundef %28, i32 noundef %conv.i.i, i32 noundef %conv1.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i51)
  %cmp2.i = icmp slt i32 %call.i.i51, 0
  br i1 %cmp2.i, label %for.body.i.cleanup_crit_edge, label %for.cond.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %si2165_writereg16.exit.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.cleanup_crit_edge ], [ %call.i.i, %if.end7.cleanup_crit_edge ], [ %call4.i.i, %si2165_writereg16.exit.cleanup_crit_edge ], [ %call19, %if.end18.cleanup_crit_edge ], [ %call.i.i51, %for.body.i.cleanup_crit_edge ], [ 0, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si2165_set_frontend_dvbc(ptr nocapture noundef readonly %fe) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %2 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %symbol_rate, align 4
  %has_dvbc = getelementptr inbounds %struct.si2165_state, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %has_dvbc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_dvbc, align 8, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %entry
  %fvco_hz.i = getelementptr inbounds %struct.si2165_state, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %fvco_hz.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fvco_hz.i, align 8
  %div.i = udiv i32 %7, 28
  %sys_clk.i = getelementptr inbounds %struct.si2165_state, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %sys_clk.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div.i, ptr %sys_clk.i, align 4
  %regmap.i.i = getelementptr inbounds %struct.si2165_state, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 160, i32 noundef 14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3 = icmp slt i32 %call.i.i, 0
  br i1 %cmp3, label %if.end2.cleanup_crit_edge, label %if.end5

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %call6 = tail call fastcc i32 @si2165_set_oversamp(ptr noundef %1, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %modulation = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %11 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %modulation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %12)
  %13 = icmp ult i32 %12, 5
  br i1 %13, label %switch.lookup, label %if.end9.sw.epilog_crit_edge

if.end9.sw.epilog_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.si2165_set_frontend_dvbc, i32 0, i32 %12
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end9.sw.epilog_crit_edge
  %u8tmp.0 = phi i32 [ %switch.load, %switch.lookup ], [ 11, %if.end9.sw.epilog_crit_edge ]
  %15 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 756, i32 noundef %u8tmp.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp16 = icmp slt i32 %call.i, 0
  br i1 %cmp16, label %sw.epilog.cleanup_crit_edge, label %if.end18

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #10
  %17 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 1
  %18 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 2
  %19 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 3
  %20 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %buf.i, align 1
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 18, ptr %17, align 1
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 122, ptr %18, align 1
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %19, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_write.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_set_frontend_dvbc, %if.then.i.i)) #10
          to label %do.end.i.i [label %if.then.i.i], !srcloc !200

if.then.i.i:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_write.__UNIQUE_ID_ddebug290, ptr noundef %dev.i.i, ptr noundef nonnull @.str.23, i32 noundef 196, i32 noundef 4, ptr noundef nonnull %buf.i) #10
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %if.end18
  %26 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i.i, align 4
  %call4.i.i = call i32 @regmap_bulk_write(ptr noundef %27, i32 noundef 196, ptr noundef nonnull %buf.i, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %si2165_writereg32.exit.thread, label %si2165_writereg32.exit

si2165_writereg32.exit.thread:                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #10
  br label %for.body.i.preheader

si2165_writereg32.exit:                           ; preds = %do.end.i.i
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  %dev11.i.i = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11.i.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef %call4.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp20 = icmp slt i32 %call4.i.i, 0
  br i1 %cmp20, label %si2165_writereg32.exit.cleanup_crit_edge, label %si2165_writereg32.exit.for.body.i.preheader_crit_edge

si2165_writereg32.exit.for.body.i.preheader_crit_edge: ; preds = %si2165_writereg32.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.preheader

si2165_writereg32.exit.cleanup_crit_edge:         ; preds = %si2165_writereg32.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i.preheader:                             ; preds = %si2165_writereg32.exit.for.body.i.preheader_crit_edge, %si2165_writereg32.exit.thread
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.010.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr %struct.si2165_reg_value_pair, ptr @dvbc_regs, i32 %i.010.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx.i, align 2
  %val.i = getelementptr %struct.si2165_reg_value_pair, ptr @dvbc_regs, i32 %i.010.i, i32 1
  %32 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %val.i, align 2
  %34 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap.i.i, align 4
  %conv.i.i = zext i16 %31 to i32
  %conv1.i.i = zext i8 %33 to i32
  %call.i.i50 = call i32 @regmap_write(ptr noundef %35, i32 noundef %conv.i.i, i32 noundef %conv1.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i50)
  %cmp2.i = icmp slt i32 %call.i.i50, 0
  br i1 %cmp2.i, label %for.body.i.cleanup_crit_edge, label %for.cond.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %si2165_writereg32.exit.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %if.end2.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ %call.i, %sw.epilog.cleanup_crit_edge ], [ %call4.i.i, %si2165_writereg32.exit.cleanup_crit_edge ], [ %call.i.i50, %for.body.i.cleanup_crit_edge ], [ 0, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si2165_write_reg_list(ptr nocapture noundef readonly %state, ptr nocapture noundef readonly %regs, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp9 = icmp sgt i32 %count, 0
  br i1 %cmp9, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %regmap.i = getelementptr inbounds %struct.si2165_state, ptr %state, i32 0, i32 1
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.si2165_reg_value_pair, ptr %regs, i32 %i.010
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  %val = getelementptr %struct.si2165_reg_value_pair, ptr %regs, i32 %i.010, i32 1
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %val, align 2
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %conv.i = zext i16 %1 to i32
  %conv1.i = zext i8 %3 to i32
  %call.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %conv.i, i32 noundef %conv1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2 = icmp slt i32 %call.i, 0
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call.i, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si2165_set_oversamp(ptr nocapture noundef readonly %state, i32 noundef %dvb_rate) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dvb_rate)
  %tobool.not = icmp eq i32 %dvb_rate, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %adc_clk.i = getelementptr inbounds %struct.si2165_state, ptr %state, i32 0, i32 8
  %0 = ptrtoint ptr %adc_clk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %adc_clk.i, align 8
  %conv = zext i32 %1 to i64
  %shl = shl nuw nsw i64 %conv, 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %1)
  %cmp171 = icmp ult i32 %1, 512
  br i1 %cmp171, label %if.then175, label %if.else181, !prof !201

if.then175:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv176 = trunc i64 %shl to i32
  %div179 = udiv i32 %conv176, %dvb_rate
  br label %if.end185

if.else181:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %2 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %dvb_rate, i64 %shl) #15, !srcloc !202
  %asmresult1.i = extractvalue { i64, i64 } %2, 1
  %extract.t312 = trunc i64 %asmresult1.i to i32
  br label %if.end185

if.end185:                                        ; preds = %if.else181, %if.then175
  %oversamp.0.off0 = phi i32 [ %div179, %if.then175 ], [ %extract.t312, %if.else181 ]
  %conv188 = and i32 %oversamp.0.off0, 1073741823
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_set_oversamp.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_set_oversamp, %if.then198)) #10
          to label %do.end [label %if.then198], !srcloc !200

if.then198:                                       ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_set_oversamp.__UNIQUE_ID_ddebug301, ptr noundef %dev, ptr noundef nonnull @.str.79, i32 noundef %conv188) #10
  br label %do.end

do.end:                                           ; preds = %if.then198, %if.end185
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #10
  %5 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 1
  %6 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 2
  %7 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 3
  %conv.i = trunc i32 %oversamp.0.off0 to i8
  %8 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.i, ptr %buf.i, align 1
  %shr.i = lshr i32 %oversamp.0.off0, 8
  %conv2.i = trunc i32 %shr.i to i8
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv2.i, ptr %5, align 1
  %shr4.i = lshr i32 %oversamp.0.off0, 16
  %conv6.i = trunc i32 %shr4.i to i8
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv6.i, ptr %6, align 1
  %shr8.i = lshr i32 %conv188, 24
  %conv10.i = trunc i32 %shr8.i to i8
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv10.i, ptr %7, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_write.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_set_oversamp, %if.then.i.i)) #10
          to label %do.end.i.i [label %if.then.i.i], !srcloc !200

if.then.i.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state, align 8
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_write.__UNIQUE_ID_ddebug290, ptr noundef %dev.i.i, ptr noundef nonnull @.str.23, i32 noundef 228, i32 noundef 4, ptr noundef nonnull %buf.i) #10
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %do.end
  %regmap.i.i = getelementptr inbounds %struct.si2165_state, ptr %state, i32 0, i32 1
  %14 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i.i, align 4
  %call4.i.i = call i32 @regmap_bulk_write(ptr noundef %15, i32 noundef 228, ptr noundef nonnull %buf.i, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %do.end.i.i.si2165_writereg32.exit_crit_edge, label %do.end9.i.i

do.end.i.i.si2165_writereg32.exit_crit_edge:      ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %si2165_writereg32.exit

do.end9.i.i:                                      ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %state, align 8
  %dev11.i.i = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11.i.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef %call4.i.i) #14
  br label %si2165_writereg32.exit

si2165_writereg32.exit:                           ; preds = %do.end9.i.i, %do.end.i.i.si2165_writereg32.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #10
  br label %cleanup

cleanup:                                          ; preds = %si2165_writereg32.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4.i.i, %si2165_writereg32.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si2165_readreg24(ptr nocapture noundef readonly %state, i16 noundef zeroext %reg, ptr nocapture noundef %val) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #10
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf, align 1, !annotation !199
  %1 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !199
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !199
  %regmap.i = getelementptr inbounds %struct.si2165_state, ptr %state, i32 0, i32 1
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %conv.i = zext i16 %reg to i32
  %call.i = call i32 @regmap_bulk_read(ptr noundef %6, i32 noundef %conv.i, ptr noundef nonnull %buf, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body3.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %state, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  %config.i = getelementptr inbounds %struct.si2165_state, ptr %state, i32 0, i32 3
  %9 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %config.i, align 8
  %conv1.i = zext i8 %10 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, i32 noundef %conv1.i, i32 noundef %conv.i, i32 noundef %call.i) #14
  br label %si2165_read.exit

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_read.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_readreg24, %if.then8.i)) #10
          to label %si2165_read.exit [label %if.then8.i], !srcloc !200

if.then8.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %state, align 8
  %dev10.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_read.__UNIQUE_ID_ddebug291, ptr noundef %dev10.i, ptr noundef nonnull @.str.74, i32 noundef %conv.i, i32 noundef 3, ptr noundef nonnull %buf) #10
  br label %si2165_read.exit

si2165_read.exit:                                 ; preds = %if.then8.i, %do.body3.i, %do.end.i
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %buf, align 1
  %conv = zext i8 %14 to i32
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %1, align 1
  %conv2 = zext i8 %16 to i32
  %shl = shl nuw nsw i32 %conv2, 8
  %or = or i32 %shl, %conv
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %3, align 1
  %conv4 = zext i8 %18 to i32
  %shl5 = shl nuw nsw i32 %conv4, 16
  %or6 = or i32 %or, %shl5
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or6, ptr %val, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2165_readreg24.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2165_readreg24, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !200

if.then:                                          ; preds = %si2165_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %state, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2165_readreg24.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.83, i32 noundef %conv.i, i32 noundef %23) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %si2165_read.exit
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #10
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog10(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !35, !36, !37, !39, !40, !41, !42, !44, !46, !48, !49, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !76, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !140, !141, !143, !144, !145, !147, !148, !149, !150, !152, !153, !155, !156, !157, !158, !160, !161, !163, !164, !165, !167, !169, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187}
!llvm.module.flags = !{!189, !190, !191, !192, !193, !194, !195, !196}
!llvm.ident = !{!197}

!0 = !{ptr @__initcall__kmod_si2165__305_1302_si2165_driver_init6, !1, !"__initcall__kmod_si2165__305_1302_si2165_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 1302, i32 1}
!2 = !{ptr @__exitcall_si2165_driver_exit, !1, !"__exitcall_si2165_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description306, !4, !"__UNIQUE_ID_description306", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 1304, i32 1}
!5 = !{ptr @__UNIQUE_ID_author307, !6, !"__UNIQUE_ID_author307", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 1305, i32 1}
!7 = !{ptr @__UNIQUE_ID_file308, !8, !"__UNIQUE_ID_file308", i1 false, i1 false}
!8 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 1306, i32 1}
!9 = !{ptr @__UNIQUE_ID_license309, !8, !"__UNIQUE_ID_license309", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_firmware310, !11, !"__UNIQUE_ID_firmware310", i1 false, i1 false}
!11 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 1307, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 1295, i32 11}
!14 = !{ptr @si2165_driver, !15, !"si2165_driver", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 1293, i32 26}
!16 = !{ptr @si2165_probe.regmap_config, !17, !"regmap_config", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 1157, i32 36}
!18 = !{ptr @si2165_probe._key, !19, !"_key", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 1171, i32 18}
!20 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 1186, i32 3}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @si2165_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @si2165_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 1230, i32 15}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 1234, i32 15}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 1239, i32 3}
!35 = !{ptr @si2165_probe._entry.9, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @si2165_probe._entry_ptr.11, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 1244, i32 2}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @si2165_probe._entry.12, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @si2165_probe._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 1255, i32 36}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 1260, i32 36}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 1273, i32 2}
!48 = !{ptr @si2165_probe.__UNIQUE_ID_ddebug303, !47, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!49 = !{ptr @si2165_ops, !50, !"si2165_ops", i1 false, i1 false}
!50 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 1109, i32 38}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 532, i32 2}
!53 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @si2165_init.__UNIQUE_ID_ddebug299, !52, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 547, i32 3}
!57 = !{ptr @si2165_init._entry, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @si2165_init._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 64, i32 2}
!61 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @si2165_write.__UNIQUE_ID_ddebug290, !60, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 70, i32 3}
!65 = !{ptr @si2165_write._entry, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @si2165_write._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 281, i32 2}
!69 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @si2165_wait_init_done._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @si2165_wait_init_done._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 379, i32 13}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 382, i32 3}
!76 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @si2165_upload_firmware._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @si2165_upload_firmware._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 390, i32 3}
!81 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @si2165_upload_firmware._entry.30, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @si2165_upload_firmware._entry_ptr.33, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 398, i32 2}
!86 = !{ptr @si2165_upload_firmware._entry.34, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @si2165_upload_firmware._entry_ptr.36, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 402, i32 3}
!90 = !{ptr @si2165_upload_firmware._entry.37, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @si2165_upload_firmware._entry_ptr.39, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 409, i32 3}
!94 = !{ptr @si2165_upload_firmware._entry.40, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @si2165_upload_firmware._entry_ptr.42, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 415, i32 3}
!98 = !{ptr @si2165_upload_firmware._entry.43, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @si2165_upload_firmware._entry_ptr.45, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 452, i32 2}
!102 = !{ptr @si2165_upload_firmware._entry.46, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @si2165_upload_firmware._entry_ptr.48, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 471, i32 3}
!106 = !{ptr @si2165_upload_firmware._entry.49, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @si2165_upload_firmware._entry_ptr.51, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 482, i32 3}
!110 = !{ptr @si2165_upload_firmware._entry.52, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @si2165_upload_firmware._entry_ptr.54, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 494, i32 3}
!114 = !{ptr @si2165_upload_firmware._entry.55, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @si2165_upload_firmware._entry_ptr.57, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 511, i32 2}
!118 = !{ptr @si2165_upload_firmware._entry.58, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @si2165_upload_firmware._entry_ptr.60, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.61, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 300, i32 2}
!122 = !{ptr @.str.62, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @si2165_upload_firmware_block.__UNIQUE_ID_ddebug295, !121, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!124 = !{ptr @.str.63, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 304, i32 3}
!126 = !{ptr @si2165_upload_firmware_block.__UNIQUE_ID_ddebug296, !125, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!127 = !{ptr @.str.64, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 310, i32 4}
!129 = !{ptr @si2165_upload_firmware_block._entry, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @si2165_upload_firmware_block._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.66, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 317, i32 4}
!133 = !{ptr @si2165_upload_firmware_block._entry.65, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @si2165_upload_firmware_block._entry_ptr.67, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.68, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 345, i32 2}
!137 = !{ptr @si2165_upload_firmware_block.__UNIQUE_ID_ddebug297, !136, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!138 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 352, i32 2}
!140 = !{ptr @si2165_upload_firmware_block.__UNIQUE_ID_ddebug298, !139, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!141 = !{ptr @.str.70, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 109, i32 2}
!143 = !{ptr @.str.71, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @si2165_readreg16.__UNIQUE_ID_ddebug293, !142, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!145 = !{ptr @.str.72, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 81, i32 3}
!147 = !{ptr @.str.73, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @si2165_read._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @si2165_read._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.74, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 86, i32 2}
!152 = !{ptr @si2165_read.__UNIQUE_ID_ddebug291, !151, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!153 = !{ptr @.str.75, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 852, i32 3}
!155 = !{ptr @.str.76, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @si2165_set_if_freq_shift._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @si2165_set_if_freq_shift._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.77, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 907, i32 2}
!160 = !{ptr @si2165_set_frontend_dvbt.__UNIQUE_ID_ddebug302, !159, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!161 = !{ptr @.str.78, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 839, i32 2}
!163 = !{ptr @.str.79, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @si2165_set_oversamp.__UNIQUE_ID_ddebug301, !162, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!165 = !{ptr @dvbt_regs, !166, !"dvbt_regs", i1 false, i1 false}
!166 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 876, i32 43}
!167 = !{ptr @dvbc_regs, !168, !"dvbc_regs", i1 false, i1 false}
!168 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 938, i32 43}
!169 = !{ptr @adc_rewrite, !170, !"adc_rewrite", i1 false, i1 false}
!170 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 1025, i32 43}
!171 = !{ptr @.str.80, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 786, i32 5}
!173 = !{ptr @.str.81, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @si2165_read_status.__UNIQUE_ID_ddebug300, !172, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!175 = !{ptr @.str.82, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 120, i32 2}
!177 = !{ptr @.str.83, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @si2165_readreg24.__UNIQUE_ID_ddebug294, !176, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!179 = !{ptr @.str.84, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 98, i32 2}
!181 = !{ptr @.str.85, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @si2165_readreg8.__UNIQUE_ID_ddebug292, !180, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!183 = !{ptr @.str.86, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 1281, i32 2}
!185 = !{ptr @.str.87, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @si2165_remove.__UNIQUE_ID_ddebug304, !184, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!187 = !{ptr @si2165_id_table, !188, !"si2165_id_table", i1 false, i1 false}
!188 = !{!"../drivers/media/dvb-frontends/si2165.c", i32 1287, i32 35}
!189 = !{i32 1, !"wchar_size", i32 2}
!190 = !{i32 1, !"min_enum_size", i32 4}
!191 = !{i32 8, !"branch-target-enforcement", i32 0}
!192 = !{i32 8, !"sign-return-address", i32 0}
!193 = !{i32 8, !"sign-return-address-all", i32 0}
!194 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!195 = !{i32 7, !"uwtable", i32 1}
!196 = !{i32 7, !"frame-pointer", i32 2}
!197 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!198 = !{i8 0, i8 2}
!199 = !{!"auto-init"}
!200 = !{i64 2148784569, i64 2148784574, i64 2148784587, i64 2148784631, i64 2148784665, i64 2148784686}
!201 = !{!"branch_weights", i32 2000, i32 1}
!202 = !{i64 2148010242, i64 2148010522, i64 2148010856, i64 2148011190}
