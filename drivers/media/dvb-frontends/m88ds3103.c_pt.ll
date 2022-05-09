; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/m88ds3103.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/m88ds3103.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+m88ds3103_get_agc_pwm\22, \22a\22\09"
module asm "\09.weak\09__crc_m88ds3103_get_agc_pwm\09\09\09\09"
module asm "\09.long\09__crc_m88ds3103_get_agc_pwm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_m88ds3103_get_agc_pwm:\09\09\09\09\09"
module asm "\09.asciz \09\22m88ds3103_get_agc_pwm\22\09\09\09\09\09"
module asm "__kstrtabns_m88ds3103_get_agc_pwm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+m88ds3103_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_m88ds3103_attach\09\09\09\09"
module asm "\09.long\09__crc_m88ds3103_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_m88ds3103_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22m88ds3103_attach\22\09\09\09\09\09"
module asm "__kstrtabns_m88ds3103_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.reg_sequence = type { i32, i32, i32 }
%struct.m88ds3103_reg_val = type { i8, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.m88ds3103_dev = type { ptr, ptr, %struct.regmap_config, ptr, %struct.m88ds3103_config, ptr, %struct.dvb_frontend, i32, i32, i32, i8, ptr, i8, i8, i32, i64, i64, i8 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.m88ds3103_config = type { i8, i32, i16, i8, i32, i8, i8, i8, i8, i8 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.m88ds3103_platform_data = type { i32, i16, i32, i32, i32, i8, i8, i8, ptr, ptr, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.i2c_mux_core = type { ptr, ptr, i8, ptr, ptr, ptr, i32, i32, [0 x ptr] }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }

@__kstrtab_m88ds3103_get_agc_pwm = external dso_local constant [0 x i8], align 1
@__kstrtabns_m88ds3103_get_agc_pwm = external dso_local constant [0 x i8], align 1
@__ksymtab_m88ds3103_get_agc_pwm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @m88ds3103_get_agc_pwm to i32), ptr @__kstrtab_m88ds3103_get_agc_pwm, ptr @__kstrtabns_m88ds3103_get_agc_pwm }, section "___ksymtab+m88ds3103_get_agc_pwm", align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"m88ds3103\00", [22 x i8] zeroinitializer }, align 32
@__kstrtab_m88ds3103_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_m88ds3103_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_m88ds3103_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @m88ds3103_attach to i32), ptr @__kstrtab_m88ds3103_attach, ptr @__kstrtabns_m88ds3103_attach }, section "___ksymtab+m88ds3103_attach", align 4
@__initcall__kmod_m88ds3103__344_1950_m88ds3103_driver_init6 = internal global ptr @m88ds3103_driver_init, section ".initcall6.init", align 4
@m88ds3103_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @m88ds3103_probe, ptr @m88ds3103_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @m88ds3103_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_m88ds3103_driver_exit = internal global ptr @m88ds3103_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author345 = internal constant [48 x i8] c"m88ds3103.author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description346 = internal constant [79 x i8] c"m88ds3103.description=Montage Technology M88DS3103 DVB-S/S2 demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file347 = internal constant [53 x i8] c"m88ds3103.file=drivers/media/dvb-frontends/m88ds3103\00", section ".modinfo", align 1
@__UNIQUE_ID_license348 = internal constant [22 x i8] c"m88ds3103.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware349 = internal constant [42 x i8] c"m88ds3103.firmware=dvb-demod-m88ds3103.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware350 = internal constant [42 x i8] c"m88ds3103.firmware=dvb-demod-m88rs6000.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware351 = internal constant [43 x i8] c"m88ds3103.firmware=dvb-demod-m88ds3103b.fw\00", section ".modinfo", align 1
@m88ds3103_id_table = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"m88ds3103\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"m88rs6000\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"m88ds3103b\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@m88ds3103_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"m88ds3103:1795:(&dev->regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@m88ds3103_probe.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 1, i8 -60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"m88ds3103_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/dvb-frontends/m88ds3103.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"chip_id=%02x\0A\00", [18 x i8] zeroinitializer }, align 32
@m88ds3103_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 1817, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unknown device. Chip_id=%02x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@m88ds3103_probe._entry_ptr = internal global ptr @m88ds3103_probe._entry, section ".printk_index", align 4
@m88ds3103_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Montage Technology M88DS3103\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 0, i32 5000000, i32 1000000, i32 45000000, i32 0, i32 1342179327 }, [8 x i8] c"\05\06\00\00\00\00\00\00", ptr null, ptr @m88ds3103_release, ptr null, ptr @m88ds3103_init, ptr @m88ds3103_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @m88ds3103_set_frontend, ptr @m88ds3103_get_tune_settings, ptr @m88ds3103_get_frontend, ptr @m88ds3103_read_status, ptr @m88ds3103_read_ber, ptr null, ptr @m88ds3103_read_snr, ptr null, ptr null, ptr @m88ds3103_diseqc_send_master_cmd, ptr null, ptr @m88ds3103_diseqc_send_burst, ptr @m88ds3103_set_tone, ptr @m88ds3103_set_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Montage Technology M88DS3103B\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Montage Technology M88RS6000\00", [35 x i8] zeroinitializer }, align 32
@m88ds3103_probe.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.10, i8 1, i8 -38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dt addr is 0x%02x\0A\00", [45 x i8] zeroinitializer }, align 32
@m88ds3103_probe.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.11, i8 1, i8 -34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"failed=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\03\11\00", [29 x i8] zeroinitializer }, align 32
@m88ds3103_select._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 1651, ptr @.str.15, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i2c wr failed=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"m88ds3103_select\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@m88ds3103_select._entry_ptr = internal global ptr @m88ds3103_select._entry, section ".printk_index", align 4
@m88ds3103_init.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.3, ptr @.str.17, i8 0, i8 -1, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"m88ds3103_init\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@m88ds3103_init.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.3, ptr @.str.18, i8 1, i8 4, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"firmware=%02x\0A\00", [17 x i8] zeroinitializer }, align 32
@m88ds3103_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.16, ptr @.str.3, i32 1057, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"found a '%s' in cold state\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@m88ds3103_init._entry_ptr = internal global ptr @m88ds3103_init._entry, section ".printk_index", align 4
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dvb-demod-m88ds3103b.fw\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dvb-demod-m88rs6000.fw\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dvb-demod-m88ds3103.fw\00", [41 x i8] zeroinitializer }, align 32
@m88ds3103_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.16, ptr @.str.3, i32 1069, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"firmware file '%s' not found\0A\00", [34 x i8] zeroinitializer }, align 32
@m88ds3103_init._entry_ptr.26 = internal global ptr @m88ds3103_init._entry.24, section ".printk_index", align 4
@m88ds3103_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.16, ptr @.str.3, i32 1073, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"downloading firmware from file '%s'\0A\00", [59 x i8] zeroinitializer }, align 32
@m88ds3103_init._entry_ptr.29 = internal global ptr @m88ds3103_init._entry.27, section ".printk_index", align 4
@m88ds3103_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.16, ptr @.str.3, i32 1086, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"firmware download failed %d\0A\00", [35 x i8] zeroinitializer }, align 32
@m88ds3103_init._entry_ptr.32 = internal global ptr @m88ds3103_init._entry.30, section ".printk_index", align 4
@m88ds3103_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.16, ptr @.str.3, i32 1103, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"firmware did not run\0A\00", [42 x i8] zeroinitializer }, align 32
@m88ds3103_init._entry_ptr.35 = internal global ptr @m88ds3103_init._entry.33, section ".printk_index", align 4
@m88ds3103_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.16, ptr @.str.3, i32 1108, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"found a '%s' in warm state\0A\00", [36 x i8] zeroinitializer }, align 32
@m88ds3103_init._entry_ptr.38 = internal global ptr @m88ds3103_init._entry.36, section ".printk_index", align 4
@m88ds3103_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.16, ptr @.str.3, i32 1110, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"firmware version: %X.%X\0A\00", [39 x i8] zeroinitializer }, align 32
@m88ds3103_init._entry_ptr.41 = internal global ptr @m88ds3103_init._entry.39, section ".printk_index", align 4
@m88ds3103_init.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.3, ptr @.str.11, i8 1, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@m88ds3103b_dt_write.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.3, ptr @.str.43, i8 0, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"m88ds3103b_dt_write\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fail=%d\0A\00", [23 x i8] zeroinitializer }, align 32
@m88ds3103b_dt_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.3, i32 91, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"0x%02x (ret=%i, reg=0x%02x, value=0x%02x)\0A\00", [53 x i8] zeroinitializer }, align 32
@m88ds3103b_dt_write._entry_ptr = internal global ptr @m88ds3103b_dt_write._entry, section ".printk_index", align 4
@m88ds3103b_dt_write.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.3, ptr @.str.45, i8 0, i8 24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"0x%02x reg 0x%02x, value 0x%02x\0A\00", [63 x i8] zeroinitializer }, align 32
@m88ds3103_sleep.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.3, ptr @.str.17, i8 1, i8 30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"m88ds3103_sleep\00", [16 x i8] zeroinitializer }, align 32
@m88ds3103_sleep.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.3, ptr @.str.11, i8 1, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@m88ds3103_set_frontend.reset_buf = internal constant { [2 x %struct.reg_sequence], [40 x i8] } { [2 x %struct.reg_sequence] [%struct.reg_sequence { i32 7, i32 128, i32 0 }, %struct.reg_sequence { i32 7, i32 0, i32 0 }], [40 x i8] zeroinitializer }, align 32
@m88ds3103_set_frontend.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.3, ptr @.str.48, i8 0, i8 -97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"m88ds3103_set_frontend\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"delivery_system=%d modulation=%d frequency=%u symbol_rate=%d inversion=%d pilot=%d rolloff=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@m88ds3103_set_frontend.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.3, ptr @.str.49, i8 0, i8 -73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"invalid ts_mode\0A\00", [47 x i8] zeroinitializer }, align 32
@m88rs6000_dvbs_init_reg_vals = internal constant { [83 x %struct.m88ds3103_reg_val], [58 x i8] } { [83 x %struct.m88ds3103_reg_val] [%struct.m88ds3103_reg_val { i8 35, i8 7 }, %struct.m88ds3103_reg_val { i8 8, i8 3 }, %struct.m88ds3103_reg_val { i8 12, i8 2 }, %struct.m88ds3103_reg_val { i8 32, i8 0 }, %struct.m88ds3103_reg_val { i8 33, i8 84 }, %struct.m88ds3103_reg_val { i8 37, i8 -126 }, %struct.m88ds3103_reg_val { i8 39, i8 49 }, %struct.m88ds3103_reg_val { i8 48, i8 8 }, %struct.m88ds3103_reg_val { i8 49, i8 64 }, %struct.m88ds3103_reg_val { i8 50, i8 50 }, %struct.m88ds3103_reg_val { i8 51, i8 53 }, %struct.m88ds3103_reg_val { i8 53, i8 -1 }, %struct.m88ds3103_reg_val { i8 58, i8 0 }, %struct.m88ds3103_reg_val { i8 55, i8 16 }, %struct.m88ds3103_reg_val { i8 56, i8 16 }, %struct.m88ds3103_reg_val { i8 57, i8 2 }, %struct.m88ds3103_reg_val { i8 66, i8 96 }, %struct.m88ds3103_reg_val { i8 74, i8 -128 }, %struct.m88ds3103_reg_val { i8 75, i8 4 }, %struct.m88ds3103_reg_val { i8 77, i8 -111 }, %struct.m88ds3103_reg_val { i8 93, i8 -56 }, %struct.m88ds3103_reg_val { i8 80, i8 54 }, %struct.m88ds3103_reg_val { i8 81, i8 54 }, %struct.m88ds3103_reg_val { i8 82, i8 54 }, %struct.m88ds3103_reg_val { i8 83, i8 54 }, %struct.m88ds3103_reg_val { i8 99, i8 15 }, %struct.m88ds3103_reg_val { i8 100, i8 48 }, %struct.m88ds3103_reg_val { i8 101, i8 64 }, %struct.m88ds3103_reg_val { i8 104, i8 38 }, %struct.m88ds3103_reg_val { i8 105, i8 76 }, %struct.m88ds3103_reg_val { i8 112, i8 32 }, %struct.m88ds3103_reg_val { i8 113, i8 112 }, %struct.m88ds3103_reg_val { i8 114, i8 4 }, %struct.m88ds3103_reg_val { i8 115, i8 0 }, %struct.m88ds3103_reg_val { i8 112, i8 64 }, %struct.m88ds3103_reg_val { i8 113, i8 112 }, %struct.m88ds3103_reg_val { i8 114, i8 4 }, %struct.m88ds3103_reg_val { i8 115, i8 0 }, %struct.m88ds3103_reg_val { i8 112, i8 96 }, %struct.m88ds3103_reg_val { i8 113, i8 112 }, %struct.m88ds3103_reg_val { i8 114, i8 4 }, %struct.m88ds3103_reg_val { i8 115, i8 0 }, %struct.m88ds3103_reg_val { i8 112, i8 -128 }, %struct.m88ds3103_reg_val { i8 113, i8 112 }, %struct.m88ds3103_reg_val { i8 114, i8 4 }, %struct.m88ds3103_reg_val { i8 115, i8 0 }, %struct.m88ds3103_reg_val { i8 112, i8 -96 }, %struct.m88ds3103_reg_val { i8 113, i8 112 }, %struct.m88ds3103_reg_val { i8 114, i8 4 }, %struct.m88ds3103_reg_val { i8 115, i8 0 }, %struct.m88ds3103_reg_val { i8 112, i8 31 }, %struct.m88ds3103_reg_val { i8 118, i8 56 }, %struct.m88ds3103_reg_val { i8 119, i8 -90 }, %struct.m88ds3103_reg_val { i8 120, i8 12 }, %struct.m88ds3103_reg_val { i8 121, i8 -128 }, %struct.m88ds3103_reg_val { i8 127, i8 20 }, %struct.m88ds3103_reg_val { i8 124, i8 0 }, %struct.m88ds3103_reg_val { i8 -82, i8 -126 }, %struct.m88ds3103_reg_val { i8 -128, i8 100 }, %struct.m88ds3103_reg_val { i8 -127, i8 102 }, %struct.m88ds3103_reg_val { i8 -126, i8 68 }, %struct.m88ds3103_reg_val { i8 -123, i8 4 }, %struct.m88ds3103_reg_val { i8 -51, i8 -12 }, %struct.m88ds3103_reg_val { i8 -112, i8 51 }, %struct.m88ds3103_reg_val { i8 -96, i8 68 }, %struct.m88ds3103_reg_val { i8 -66, i8 0 }, %struct.m88ds3103_reg_val { i8 -64, i8 8 }, %struct.m88ds3103_reg_val { i8 -61, i8 16 }, %struct.m88ds3103_reg_val { i8 -60, i8 8 }, %struct.m88ds3103_reg_val { i8 -59, i8 -16 }, %struct.m88ds3103_reg_val { i8 -58, i8 -1 }, %struct.m88ds3103_reg_val { i8 -57, i8 0 }, %struct.m88ds3103_reg_val { i8 -56, i8 26 }, %struct.m88ds3103_reg_val { i8 -55, i8 -128 }, %struct.m88ds3103_reg_val { i8 -32, i8 -8 }, %struct.m88ds3103_reg_val { i8 -26, i8 -117 }, %struct.m88ds3103_reg_val { i8 -48, i8 64 }, %struct.m88ds3103_reg_val { i8 -8, i8 32 }, %struct.m88ds3103_reg_val { i8 -6, i8 15 }, %struct.m88ds3103_reg_val zeroinitializer, %struct.m88ds3103_reg_val { i8 -67, i8 1 }, %struct.m88ds3103_reg_val { i8 -72, i8 0 }, %struct.m88ds3103_reg_val { i8 41, i8 17 }], [58 x i8] zeroinitializer }, align 32
@m88ds3103_dvbs_init_reg_vals = internal constant { [80 x %struct.m88ds3103_reg_val], [32 x i8] } { [80 x %struct.m88ds3103_reg_val] [%struct.m88ds3103_reg_val { i8 35, i8 7 }, %struct.m88ds3103_reg_val { i8 8, i8 3 }, %struct.m88ds3103_reg_val { i8 12, i8 2 }, %struct.m88ds3103_reg_val { i8 33, i8 84 }, %struct.m88ds3103_reg_val { i8 37, i8 -118 }, %struct.m88ds3103_reg_val { i8 39, i8 49 }, %struct.m88ds3103_reg_val { i8 48, i8 8 }, %struct.m88ds3103_reg_val { i8 49, i8 64 }, %struct.m88ds3103_reg_val { i8 50, i8 50 }, %struct.m88ds3103_reg_val { i8 53, i8 -1 }, %struct.m88ds3103_reg_val { i8 58, i8 0 }, %struct.m88ds3103_reg_val { i8 55, i8 16 }, %struct.m88ds3103_reg_val { i8 56, i8 16 }, %struct.m88ds3103_reg_val { i8 57, i8 2 }, %struct.m88ds3103_reg_val { i8 66, i8 96 }, %struct.m88ds3103_reg_val { i8 74, i8 -128 }, %struct.m88ds3103_reg_val { i8 75, i8 4 }, %struct.m88ds3103_reg_val { i8 77, i8 -111 }, %struct.m88ds3103_reg_val { i8 93, i8 -56 }, %struct.m88ds3103_reg_val { i8 80, i8 54 }, %struct.m88ds3103_reg_val { i8 81, i8 54 }, %struct.m88ds3103_reg_val { i8 82, i8 54 }, %struct.m88ds3103_reg_val { i8 83, i8 54 }, %struct.m88ds3103_reg_val { i8 86, i8 1 }, %struct.m88ds3103_reg_val { i8 99, i8 15 }, %struct.m88ds3103_reg_val { i8 100, i8 48 }, %struct.m88ds3103_reg_val { i8 101, i8 64 }, %struct.m88ds3103_reg_val { i8 104, i8 38 }, %struct.m88ds3103_reg_val { i8 105, i8 76 }, %struct.m88ds3103_reg_val { i8 112, i8 32 }, %struct.m88ds3103_reg_val { i8 113, i8 112 }, %struct.m88ds3103_reg_val { i8 114, i8 4 }, %struct.m88ds3103_reg_val { i8 115, i8 0 }, %struct.m88ds3103_reg_val { i8 112, i8 64 }, %struct.m88ds3103_reg_val { i8 113, i8 112 }, %struct.m88ds3103_reg_val { i8 114, i8 4 }, %struct.m88ds3103_reg_val { i8 115, i8 0 }, %struct.m88ds3103_reg_val { i8 112, i8 96 }, %struct.m88ds3103_reg_val { i8 113, i8 112 }, %struct.m88ds3103_reg_val { i8 114, i8 4 }, %struct.m88ds3103_reg_val { i8 115, i8 0 }, %struct.m88ds3103_reg_val { i8 112, i8 -128 }, %struct.m88ds3103_reg_val { i8 113, i8 112 }, %struct.m88ds3103_reg_val { i8 114, i8 4 }, %struct.m88ds3103_reg_val { i8 115, i8 0 }, %struct.m88ds3103_reg_val { i8 112, i8 -96 }, %struct.m88ds3103_reg_val { i8 113, i8 112 }, %struct.m88ds3103_reg_val { i8 114, i8 4 }, %struct.m88ds3103_reg_val { i8 115, i8 0 }, %struct.m88ds3103_reg_val { i8 112, i8 31 }, %struct.m88ds3103_reg_val { i8 118, i8 56 }, %struct.m88ds3103_reg_val { i8 119, i8 -90 }, %struct.m88ds3103_reg_val { i8 120, i8 12 }, %struct.m88ds3103_reg_val { i8 121, i8 -128 }, %struct.m88ds3103_reg_val { i8 127, i8 20 }, %struct.m88ds3103_reg_val { i8 124, i8 0 }, %struct.m88ds3103_reg_val { i8 -82, i8 -126 }, %struct.m88ds3103_reg_val { i8 -128, i8 100 }, %struct.m88ds3103_reg_val { i8 -127, i8 102 }, %struct.m88ds3103_reg_val { i8 -126, i8 68 }, %struct.m88ds3103_reg_val { i8 -123, i8 4 }, %struct.m88ds3103_reg_val { i8 -51, i8 -12 }, %struct.m88ds3103_reg_val { i8 -112, i8 51 }, %struct.m88ds3103_reg_val { i8 -96, i8 68 }, %struct.m88ds3103_reg_val { i8 -64, i8 8 }, %struct.m88ds3103_reg_val { i8 -61, i8 16 }, %struct.m88ds3103_reg_val { i8 -60, i8 8 }, %struct.m88ds3103_reg_val { i8 -59, i8 -16 }, %struct.m88ds3103_reg_val { i8 -58, i8 -1 }, %struct.m88ds3103_reg_val { i8 -57, i8 0 }, %struct.m88ds3103_reg_val { i8 -56, i8 26 }, %struct.m88ds3103_reg_val { i8 -55, i8 -128 }, %struct.m88ds3103_reg_val { i8 -32, i8 -8 }, %struct.m88ds3103_reg_val { i8 -26, i8 -117 }, %struct.m88ds3103_reg_val { i8 -48, i8 64 }, %struct.m88ds3103_reg_val { i8 -8, i8 32 }, %struct.m88ds3103_reg_val { i8 -6, i8 15 }, %struct.m88ds3103_reg_val zeroinitializer, %struct.m88ds3103_reg_val { i8 -67, i8 1 }, %struct.m88ds3103_reg_val { i8 -72, i8 0 }], [32 x i8] zeroinitializer }, align 32
@m88rs6000_dvbs2_init_reg_vals = internal constant { [86 x %struct.m88ds3103_reg_val], [52 x i8] } { [86 x %struct.m88ds3103_reg_val] [%struct.m88ds3103_reg_val { i8 35, i8 7 }, %struct.m88ds3103_reg_val { i8 8, i8 7 }, %struct.m88ds3103_reg_val { i8 12, i8 2 }, %struct.m88ds3103_reg_val { i8 32, i8 0 }, %struct.m88ds3103_reg_val { i8 33, i8 84 }, %struct.m88ds3103_reg_val { i8 37, i8 -126 }, %struct.m88ds3103_reg_val { i8 39, i8 49 }, %struct.m88ds3103_reg_val { i8 48, i8 8 }, %struct.m88ds3103_reg_val { i8 50, i8 50 }, %struct.m88ds3103_reg_val { i8 51, i8 53 }, %struct.m88ds3103_reg_val { i8 53, i8 -1 }, %struct.m88ds3103_reg_val { i8 58, i8 0 }, %struct.m88ds3103_reg_val { i8 55, i8 16 }, %struct.m88ds3103_reg_val { i8 56, i8 16 }, %struct.m88ds3103_reg_val { i8 57, i8 2 }, %struct.m88ds3103_reg_val { i8 66, i8 96 }, %struct.m88ds3103_reg_val { i8 74, i8 -128 }, %struct.m88ds3103_reg_val { i8 75, i8 4 }, %struct.m88ds3103_reg_val { i8 77, i8 -111 }, %struct.m88ds3103_reg_val { i8 93, i8 -56 }, %struct.m88ds3103_reg_val { i8 80, i8 54 }, %struct.m88ds3103_reg_val { i8 81, i8 54 }, %struct.m88ds3103_reg_val { i8 82, i8 54 }, %struct.m88ds3103_reg_val { i8 83, i8 54 }, %struct.m88ds3103_reg_val { i8 99, i8 15 }, %struct.m88ds3103_reg_val { i8 100, i8 16 }, %struct.m88ds3103_reg_val { i8 101, i8 32 }, %struct.m88ds3103_reg_val { i8 104, i8 70 }, %struct.m88ds3103_reg_val { i8 105, i8 -51 }, %struct.m88ds3103_reg_val { i8 112, i8 32 }, %struct.m88ds3103_reg_val { i8 113, i8 112 }, %struct.m88ds3103_reg_val { i8 114, i8 4 }, %struct.m88ds3103_reg_val { i8 115, i8 0 }, %struct.m88ds3103_reg_val { i8 112, i8 64 }, %struct.m88ds3103_reg_val { i8 113, i8 112 }, %struct.m88ds3103_reg_val { i8 114, i8 4 }, %struct.m88ds3103_reg_val { i8 115, i8 0 }, %struct.m88ds3103_reg_val { i8 112, i8 96 }, %struct.m88ds3103_reg_val { i8 113, i8 112 }, %struct.m88ds3103_reg_val { i8 114, i8 4 }, %struct.m88ds3103_reg_val { i8 115, i8 0 }, %struct.m88ds3103_reg_val { i8 112, i8 -128 }, %struct.m88ds3103_reg_val { i8 113, i8 112 }, %struct.m88ds3103_reg_val { i8 114, i8 4 }, %struct.m88ds3103_reg_val { i8 115, i8 0 }, %struct.m88ds3103_reg_val { i8 112, i8 -96 }, %struct.m88ds3103_reg_val { i8 113, i8 112 }, %struct.m88ds3103_reg_val { i8 114, i8 4 }, %struct.m88ds3103_reg_val { i8 115, i8 0 }, %struct.m88ds3103_reg_val { i8 112, i8 31 }, %struct.m88ds3103_reg_val { i8 118, i8 56 }, %struct.m88ds3103_reg_val { i8 119, i8 -90 }, %struct.m88ds3103_reg_val { i8 120, i8 12 }, %struct.m88ds3103_reg_val { i8 121, i8 -128 }, %struct.m88ds3103_reg_val { i8 127, i8 20 }, %struct.m88ds3103_reg_val { i8 -123, i8 8 }, %struct.m88ds3103_reg_val { i8 -51, i8 -12 }, %struct.m88ds3103_reg_val { i8 -112, i8 51 }, %struct.m88ds3103_reg_val { i8 -122, i8 0 }, %struct.m88ds3103_reg_val { i8 -121, i8 15 }, %struct.m88ds3103_reg_val { i8 -119, i8 0 }, %struct.m88ds3103_reg_val { i8 -117, i8 68 }, %struct.m88ds3103_reg_val { i8 -116, i8 102 }, %struct.m88ds3103_reg_val { i8 -99, i8 -63 }, %struct.m88ds3103_reg_val { i8 -118, i8 16 }, %struct.m88ds3103_reg_val { i8 -83, i8 64 }, %struct.m88ds3103_reg_val { i8 -96, i8 68 }, %struct.m88ds3103_reg_val { i8 -66, i8 0 }, %struct.m88ds3103_reg_val { i8 -64, i8 8 }, %struct.m88ds3103_reg_val { i8 -63, i8 16 }, %struct.m88ds3103_reg_val { i8 -62, i8 8 }, %struct.m88ds3103_reg_val { i8 -61, i8 16 }, %struct.m88ds3103_reg_val { i8 -60, i8 8 }, %struct.m88ds3103_reg_val { i8 -59, i8 -16 }, %struct.m88ds3103_reg_val { i8 -58, i8 -1 }, %struct.m88ds3103_reg_val { i8 -57, i8 0 }, %struct.m88ds3103_reg_val { i8 -56, i8 26 }, %struct.m88ds3103_reg_val { i8 -55, i8 -128 }, %struct.m88ds3103_reg_val { i8 -54, i8 35 }, %struct.m88ds3103_reg_val { i8 -53, i8 36 }, %struct.m88ds3103_reg_val { i8 -52, i8 -12 }, %struct.m88ds3103_reg_val { i8 -50, i8 116 }, %struct.m88ds3103_reg_val zeroinitializer, %struct.m88ds3103_reg_val { i8 -67, i8 1 }, %struct.m88ds3103_reg_val { i8 -72, i8 0 }, %struct.m88ds3103_reg_val { i8 41, i8 1 }], [52 x i8] zeroinitializer }, align 32
@m88ds3103_dvbs2_init_reg_vals = internal constant { [83 x %struct.m88ds3103_reg_val], [58 x i8] } { [83 x %struct.m88ds3103_reg_val] [%struct.m88ds3103_reg_val { i8 35, i8 7 }, %struct.m88ds3103_reg_val { i8 8, i8 7 }, %struct.m88ds3103_reg_val { i8 12, i8 2 }, %struct.m88ds3103_reg_val { i8 33, i8 84 }, %struct.m88ds3103_reg_val { i8 37, i8 -118 }, %struct.m88ds3103_reg_val { i8 39, i8 49 }, %struct.m88ds3103_reg_val { i8 48, i8 8 }, %struct.m88ds3103_reg_val { i8 50, i8 50 }, %struct.m88ds3103_reg_val { i8 53, i8 -1 }, %struct.m88ds3103_reg_val { i8 58, i8 0 }, %struct.m88ds3103_reg_val { i8 55, i8 16 }, %struct.m88ds3103_reg_val { i8 56, i8 16 }, %struct.m88ds3103_reg_val { i8 57, i8 2 }, %struct.m88ds3103_reg_val { i8 66, i8 96 }, %struct.m88ds3103_reg_val { i8 74, i8 -128 }, %struct.m88ds3103_reg_val { i8 75, i8 4 }, %struct.m88ds3103_reg_val { i8 77, i8 -111 }, %struct.m88ds3103_reg_val { i8 93, i8 -56 }, %struct.m88ds3103_reg_val { i8 80, i8 54 }, %struct.m88ds3103_reg_val { i8 81, i8 54 }, %struct.m88ds3103_reg_val { i8 82, i8 54 }, %struct.m88ds3103_reg_val { i8 83, i8 54 }, %struct.m88ds3103_reg_val { i8 86, i8 1 }, %struct.m88ds3103_reg_val { i8 99, i8 15 }, %struct.m88ds3103_reg_val { i8 100, i8 16 }, %struct.m88ds3103_reg_val { i8 101, i8 32 }, %struct.m88ds3103_reg_val { i8 104, i8 70 }, %struct.m88ds3103_reg_val { i8 105, i8 -51 }, %struct.m88ds3103_reg_val { i8 112, i8 32 }, %struct.m88ds3103_reg_val { i8 113, i8 112 }, %struct.m88ds3103_reg_val { i8 114, i8 4 }, %struct.m88ds3103_reg_val { i8 115, i8 0 }, %struct.m88ds3103_reg_val { i8 112, i8 64 }, %struct.m88ds3103_reg_val { i8 113, i8 112 }, %struct.m88ds3103_reg_val { i8 114, i8 4 }, %struct.m88ds3103_reg_val { i8 115, i8 0 }, %struct.m88ds3103_reg_val { i8 112, i8 96 }, %struct.m88ds3103_reg_val { i8 113, i8 112 }, %struct.m88ds3103_reg_val { i8 114, i8 4 }, %struct.m88ds3103_reg_val { i8 115, i8 0 }, %struct.m88ds3103_reg_val { i8 112, i8 -128 }, %struct.m88ds3103_reg_val { i8 113, i8 112 }, %struct.m88ds3103_reg_val { i8 114, i8 4 }, %struct.m88ds3103_reg_val { i8 115, i8 0 }, %struct.m88ds3103_reg_val { i8 112, i8 -96 }, %struct.m88ds3103_reg_val { i8 113, i8 112 }, %struct.m88ds3103_reg_val { i8 114, i8 4 }, %struct.m88ds3103_reg_val { i8 115, i8 0 }, %struct.m88ds3103_reg_val { i8 112, i8 31 }, %struct.m88ds3103_reg_val { i8 118, i8 56 }, %struct.m88ds3103_reg_val { i8 119, i8 -90 }, %struct.m88ds3103_reg_val { i8 120, i8 12 }, %struct.m88ds3103_reg_val { i8 121, i8 -128 }, %struct.m88ds3103_reg_val { i8 127, i8 20 }, %struct.m88ds3103_reg_val { i8 -123, i8 8 }, %struct.m88ds3103_reg_val { i8 -51, i8 -12 }, %struct.m88ds3103_reg_val { i8 -112, i8 51 }, %struct.m88ds3103_reg_val { i8 -122, i8 0 }, %struct.m88ds3103_reg_val { i8 -121, i8 15 }, %struct.m88ds3103_reg_val { i8 -119, i8 0 }, %struct.m88ds3103_reg_val { i8 -117, i8 68 }, %struct.m88ds3103_reg_val { i8 -116, i8 102 }, %struct.m88ds3103_reg_val { i8 -99, i8 -63 }, %struct.m88ds3103_reg_val { i8 -118, i8 16 }, %struct.m88ds3103_reg_val { i8 -83, i8 64 }, %struct.m88ds3103_reg_val { i8 -96, i8 68 }, %struct.m88ds3103_reg_val { i8 -64, i8 8 }, %struct.m88ds3103_reg_val { i8 -63, i8 16 }, %struct.m88ds3103_reg_val { i8 -62, i8 8 }, %struct.m88ds3103_reg_val { i8 -61, i8 16 }, %struct.m88ds3103_reg_val { i8 -60, i8 8 }, %struct.m88ds3103_reg_val { i8 -59, i8 -16 }, %struct.m88ds3103_reg_val { i8 -58, i8 -1 }, %struct.m88ds3103_reg_val { i8 -57, i8 0 }, %struct.m88ds3103_reg_val { i8 -56, i8 26 }, %struct.m88ds3103_reg_val { i8 -55, i8 -128 }, %struct.m88ds3103_reg_val { i8 -54, i8 35 }, %struct.m88ds3103_reg_val { i8 -53, i8 36 }, %struct.m88ds3103_reg_val { i8 -52, i8 -12 }, %struct.m88ds3103_reg_val { i8 -50, i8 116 }, %struct.m88ds3103_reg_val zeroinitializer, %struct.m88ds3103_reg_val { i8 -67, i8 1 }, %struct.m88ds3103_reg_val { i8 -72, i8 0 }], [58 x i8] zeroinitializer }, align 32
@m88ds3103_set_frontend.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.3, ptr @.str.50, i8 0, i8 -59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid delivery_system\0A\00", [39 x i8] zeroinitializer }, align 32
@m88ds3103_set_frontend.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.3, ptr @.str.49, i8 0, i8 -37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@m88ds3103_set_frontend.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.3, ptr @.str.51, i8 0, i8 -28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"target_mclk=%u ts_clk=%u ts_clk_divide_ratio=%u\0A\00", [47 x i8] zeroinitializer }, align 32
@m88ds3103_set_frontend.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.3, ptr @.str.52, i8 0, i8 -10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"carrier offset=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@m88ds3103_set_frontend.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.3, ptr @.str.11, i8 0, i8 -5, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__const.m88ds3103b_select_mclk.adc_Freq_MHz = private unnamed_addr constant [3 x i32] [i32 96, i32 93, i32 99], align 4
@__const.m88ds3103b_select_mclk.reg16_list = private unnamed_addr constant [3 x i8] c"`\\d", align 1
@m88ds3103b_select_mclk.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.3, ptr @.str.54, i8 0, i8 103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"m88ds3103b_select_mclk\00", [41 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"modifying mclk %u -> %u\0A\00", [39 x i8] zeroinitializer }, align 32
@m88ds3103_wr_reg_val_tab.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.3, ptr @.str.56, i8 0, i8 10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"m88ds3103_wr_reg_val_tab\00", [39 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tab_len=%d\0A\00", [20 x i8] zeroinitializer }, align 32
@m88ds3103_wr_reg_val_tab.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.3, ptr @.str.11, i8 0, i8 15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@m88ds3103b_dt_read.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.3, ptr @.str.43, i8 0, i8 33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"m88ds3103b_dt_read\00", [45 x i8] zeroinitializer }, align 32
@m88ds3103b_dt_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.57, ptr @.str.3, i32 140, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"0x%02x (ret=%d, reg=0x%02x)\0A\00", [35 x i8] zeroinitializer }, align 32
@m88ds3103b_dt_read._entry_ptr = internal global ptr @m88ds3103b_dt_read._entry, section ".printk_index", align 4
@m88ds3103b_dt_read.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.3, ptr @.str.45, i8 0, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@m88ds3103_get_frontend.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.3, ptr @.str.17, i8 1, i8 40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"m88ds3103_get_frontend\00", [41 x i8] zeroinitializer }, align 32
@m88ds3103_get_frontend.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.3, ptr @.str.60, i8 1, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"invalid fec_inner\0A\00", [45 x i8] zeroinitializer }, align 32
@m88ds3103_get_frontend.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.3, ptr @.str.60, i8 1, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@m88ds3103_get_frontend.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.3, ptr @.str.62, i8 1, i8 75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"invalid rolloff\0A\00", [47 x i8] zeroinitializer }, align 32
@m88ds3103_get_frontend.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.3, ptr @.str.50, i8 1, i8 76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@m88ds3103_get_frontend.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.3, ptr @.str.11, i8 1, i8 79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@m88ds3103_read_status.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.3, ptr @.str.50, i8 0, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"m88ds3103_read_status\00", [42 x i8] zeroinitializer }, align 32
@m88ds3103_read_status.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.3, ptr @.str.64, i8 0, i8 53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lock=%02x status=%02x\0A\00", [41 x i8] zeroinitializer }, align 32
@m88ds3103_read_status.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.3, ptr @.str.50, i8 0, i8 67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@m88ds3103_read_status.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.3, ptr @.str.50, i8 0, i8 89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@m88ds3103_read_status.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.3, ptr @.str.11, i8 0, i8 93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@m88ds3103_diseqc_send_master_cmd.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.3, ptr @.str.66, i8 1, i8 112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"m88ds3103_diseqc_send_master_cmd\00", [63 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"msg=%*ph\0A\00", [22 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@m88ds3103_diseqc_send_master_cmd.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 1, i8 123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"diseqc tx took %u ms\0A\00", [42 x i8] zeroinitializer }, align 32
@m88ds3103_diseqc_send_master_cmd.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.3, ptr @.str.68, i8 1, i8 123, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"diseqc tx timeout\0A\00", [45 x i8] zeroinitializer }, align 32
@m88ds3103_diseqc_send_master_cmd.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.3, ptr @.str.11, i8 1, i8 -128, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@m88ds3103_diseqc_send_burst.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.3, ptr @.str.70, i8 1, i8 -125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"m88ds3103_diseqc_send_burst\00", [36 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fe_sec_mini_cmd=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@m88ds3103_diseqc_send_burst.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.3, ptr @.str.71, i8 1, i8 -120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid fe_sec_mini_cmd\0A\00", [39 x i8] zeroinitializer }, align 32
@m88ds3103_diseqc_send_burst.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.3, ptr @.str.67, i8 1, i8 -113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@m88ds3103_diseqc_send_burst.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.3, ptr @.str.68, i8 1, i8 -113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@m88ds3103_diseqc_send_burst.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.3, ptr @.str.11, i8 1, i8 -108, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@m88ds3103_set_tone.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.3, ptr @.str.73, i8 1, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"m88ds3103_set_tone\00", [45 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fe_sec_tone_mode=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@m88ds3103_set_tone.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.3, ptr @.str.74, i8 1, i8 91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid fe_sec_tone_mode\0A\00", [38 x i8] zeroinitializer }, align 32
@m88ds3103_set_tone.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.3, ptr @.str.11, i8 1, i8 96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@m88ds3103_set_voltage.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.3, ptr @.str.76, i8 1, i8 99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"m88ds3103_set_voltage\00", [42 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fe_sec_voltage=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@m88ds3103_set_voltage.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.3, ptr @.str.77, i8 1, i8 104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid fe_sec_voltage\0A\00", [40 x i8] zeroinitializer }, align 32
@m88ds3103_set_voltage.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.3, ptr @.str.11, i8 1, i8 108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@m88ds3103_get_dvb_frontend.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.3, ptr @.str.17, i8 1, i8 -75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"m88ds3103_get_dvb_frontend\00", [37 x i8] zeroinitializer }, align 32
@m88ds3103_get_i2c_adapter.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.3, ptr @.str.17, i8 1, i8 -73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"m88ds3103_get_i2c_adapter\00", [38 x i8] zeroinitializer }, align 32
@m88ds3103_remove.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.3, ptr @.str.17, i8 1, i8 -32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"m88ds3103_remove\00", [47 x i8] zeroinitializer }, align 32
@switch.table.m88ds3103_get_frontend = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 9, i32 10, i32 11], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 112, i64 116]
@__sancov_gen_cov_switch_values.81 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.82 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 32, i64 96000000, i64 144000000, i64 192000000]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.85 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.88 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.89 = internal global [11 x i64] [i64 9, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.90 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.96 = internal global [6 x i64] [i64 4, i64 32, i64 93000000, i64 96000000, i64 99000000, i64 110250000]
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1688, i32 27 }
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"m88ds3103_driver\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1940, i32 26 }
@___asan_gen_.103 = private unnamed_addr constant [19 x i8] c"m88ds3103_id_table\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1932, i32 35 }
@___asan_gen_.106 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1795, i32 16 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1809, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1817, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [14 x i8] c"m88ds3103_ops\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1700, i32 38 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1876, i32 34 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1879, i32 34 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1899, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1913, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1645, i32 10 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1651, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1021, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1042, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1056, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1060, i32 10 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1062, i32 10 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1064, i32 10 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1069, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1073, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1085, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1103, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1107, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1109, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 86, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 90, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 98, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1145, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [10 x i8] c"reset_buf\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 630, i32 35 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 634, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 735, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant [29 x i8] c"m88rs6000_dvbs_init_reg_vals\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 228, i32 39 }
@___asan_gen_.259 = private unnamed_addr constant [29 x i8] c"m88ds3103_dvbs_init_reg_vals\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 59, i32 39 }
@___asan_gen_.262 = private unnamed_addr constant [30 x i8] c"m88rs6000_dvbs2_init_reg_vals\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 314, i32 39 }
@___asan_gen_.265 = private unnamed_addr constant [30 x i8] c"m88ds3103_dvbs2_init_reg_vals\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [48 x i8] c"../drivers/media/dvb-frontends/m88ds3103_priv.h\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 142, i32 39 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 790, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 912, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 983, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 412, i32 5 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 41, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 135, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 139, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1184, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1227, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1324, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 208, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 214, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1471, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1515, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1519, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1550, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1570, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1374, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1391, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1421, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1442, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1749, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1758, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.359 = private constant [43 x i8] c"../drivers/media/dvb-frontends/m88ds3103.c\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1921, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant [36 x i8] c"switch.table.m88ds3103_get_frontend\00", align 1
@llvm.compiler.used = appending global [112 x ptr] [ptr @__UNIQUE_ID_author345, ptr @__UNIQUE_ID_description346, ptr @__UNIQUE_ID_file347, ptr @__UNIQUE_ID_firmware349, ptr @__UNIQUE_ID_firmware350, ptr @__UNIQUE_ID_firmware351, ptr @__UNIQUE_ID_license348, ptr @__exitcall_m88ds3103_driver_exit, ptr @__initcall__kmod_m88ds3103__344_1950_m88ds3103_driver_init6, ptr @__ksymtab_m88ds3103_attach, ptr @__ksymtab_m88ds3103_get_agc_pwm, ptr @m88ds3103_driver_exit, ptr @m88ds3103_init._entry, ptr @m88ds3103_init._entry.24, ptr @m88ds3103_init._entry.27, ptr @m88ds3103_init._entry.30, ptr @m88ds3103_init._entry.33, ptr @m88ds3103_init._entry.36, ptr @m88ds3103_init._entry.39, ptr @m88ds3103_init._entry_ptr, ptr @m88ds3103_init._entry_ptr.26, ptr @m88ds3103_init._entry_ptr.29, ptr @m88ds3103_init._entry_ptr.32, ptr @m88ds3103_init._entry_ptr.35, ptr @m88ds3103_init._entry_ptr.38, ptr @m88ds3103_init._entry_ptr.41, ptr @m88ds3103_probe._entry, ptr @m88ds3103_probe._entry_ptr, ptr @m88ds3103_select._entry, ptr @m88ds3103_select._entry_ptr, ptr @m88ds3103b_dt_read._entry, ptr @m88ds3103b_dt_read._entry_ptr, ptr @m88ds3103b_dt_write._entry, ptr @m88ds3103b_dt_write._entry_ptr, ptr @.str, ptr @m88ds3103_driver, ptr @m88ds3103_id_table, ptr @m88ds3103_probe._key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @m88ds3103_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @m88ds3103_set_frontend.reset_buf, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @m88rs6000_dvbs_init_reg_vals, ptr @m88ds3103_dvbs_init_reg_vals, ptr @m88rs6000_dvbs2_init_reg_vals, ptr @m88ds3103_dvbs2_init_reg_vals, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @switch.table.m88ds3103_get_frontend], section "llvm.metadata"
@0 = internal global [89 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88ds3103_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88ds3103_id_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88ds3103_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88ds3103_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88ds3103_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88ds3103_select._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88ds3103_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88ds3103_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88ds3103_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88ds3103_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88ds3103_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88ds3103_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88ds3103_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88ds3103b_dt_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88ds3103_set_frontend.reset_buf to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88rs6000_dvbs_init_reg_vals to i32), i32 166, i32 224, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88ds3103_dvbs_init_reg_vals to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88rs6000_dvbs2_init_reg_vals to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88ds3103_dvbs2_init_reg_vals to i32), i32 166, i32 224, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88ds3103b_dt_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.m88ds3103_get_frontend to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @m88ds3103_get_agc_pwm(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %_agc_pwm) #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #8
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp, align 4, !annotation !260
  %regmap = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef 63, ptr noundef nonnull %tmp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tmp, align 4
  %conv = trunc i32 %6 to i8
  %7 = ptrtoint ptr %_agc_pwm to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %_agc_pwm, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #8
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @m88ds3103_attach(ptr nocapture noundef readonly %cfg, ptr noundef %i2c, ptr nocapture noundef writeonly %tuner_i2c_adapter) #0 align 64 {
entry:
  %board_info = alloca %struct.i2c_board_info, align 4
  %pdata = alloca %struct.m88ds3103_platform_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %board_info) #8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %pdata) #8
  %0 = getelementptr inbounds i8, ptr %pdata, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 32)
  %clock = getelementptr inbounds %struct.m88ds3103_config, ptr %cfg, i32 0, i32 1
  %2 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clock, align 4
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pdata, align 4
  %i2c_wr_max = getelementptr inbounds %struct.m88ds3103_config, ptr %cfg, i32 0, i32 2
  %5 = ptrtoint ptr %i2c_wr_max to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %i2c_wr_max, align 4
  %i2c_wr_max1 = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %pdata, i32 0, i32 1
  %7 = ptrtoint ptr %i2c_wr_max1 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %i2c_wr_max1, align 4
  %ts_mode = getelementptr inbounds %struct.m88ds3103_config, ptr %cfg, i32 0, i32 3
  %8 = ptrtoint ptr %ts_mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ts_mode, align 2
  %conv = zext i8 %9 to i32
  %ts_mode2 = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %pdata, i32 0, i32 2
  %10 = ptrtoint ptr %ts_mode2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %ts_mode2, align 4
  %ts_clk = getelementptr inbounds %struct.m88ds3103_config, ptr %cfg, i32 0, i32 4
  %11 = ptrtoint ptr %ts_clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ts_clk, align 4
  %ts_clk3 = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %pdata, i32 0, i32 3
  %13 = ptrtoint ptr %ts_clk3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %ts_clk3, align 4
  %ts_clk_pol = getelementptr inbounds %struct.m88ds3103_config, ptr %cfg, i32 0, i32 5
  %14 = ptrtoint ptr %ts_clk_pol to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %ts_clk_pol, align 4
  %ts_clk_pol4 = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %pdata, i32 0, i32 5
  %bf.set = and i8 %bf.load, -64
  %15 = ptrtoint ptr %ts_clk_pol4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %bf.set, ptr %ts_clk_pol4, align 4
  %agc = getelementptr inbounds %struct.m88ds3103_config, ptr %cfg, i32 0, i32 8
  %16 = ptrtoint ptr %agc to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %agc, align 1
  %agc15 = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %pdata, i32 0, i32 6
  %18 = ptrtoint ptr %agc15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %agc15, align 1
  %agc_inv19 = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %pdata, i32 0, i32 7
  %19 = shl i8 %bf.load, 2
  %bf.shl22 = and i8 %19, -128
  %clock_out = getelementptr inbounds %struct.m88ds3103_config, ptr %cfg, i32 0, i32 6
  %20 = ptrtoint ptr %clock_out to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %clock_out, align 1
  %conv25 = zext i8 %21 to i32
  %clk_out = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %pdata, i32 0, i32 4
  %22 = ptrtoint ptr %clk_out to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv25, ptr %clk_out, align 4
  %envelope_mode = getelementptr inbounds %struct.m88ds3103_config, ptr %cfg, i32 0, i32 7
  %23 = ptrtoint ptr %envelope_mode to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load26 = load i8, ptr %envelope_mode, align 2
  %24 = lshr i8 %bf.load26, 1
  %bf.shl31 = and i8 %24, 64
  %bf.set33 = or i8 %bf.shl31, %bf.shl22
  %lnb_hv_pol = getelementptr inbounds %struct.m88ds3103_config, ptr %cfg, i32 0, i32 9
  %25 = ptrtoint ptr %lnb_hv_pol to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load34 = load i8, ptr %lnb_hv_pol, align 4
  %26 = lshr i8 %bf.load34, 2
  %bf.shl39 = and i8 %26, 32
  %bf.set41 = or i8 %bf.set33, %bf.shl39
  %bf.shl48 = and i8 %26, 16
  %bf.set50 = or i8 %bf.set41, %bf.shl48
  %27 = ptrtoint ptr %agc_inv19 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %bf.set50, ptr %agc_inv19, align 2
  %attach_in_use = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %pdata, i32 0, i32 10
  %28 = ptrtoint ptr %attach_in_use to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -128, ptr %attach_in_use, align 4
  %29 = call ptr @memset(ptr %board_info, i32 0, i32 56)
  %call = call i32 @strscpy(ptr noundef nonnull %board_info, ptr noundef nonnull @.str, i32 noundef 20) #8
  %30 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %cfg, align 4
  %conv54 = zext i8 %31 to i16
  %addr = getelementptr inbounds %struct.i2c_board_info, ptr %board_info, i32 0, i32 2
  %32 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv54, ptr %addr, align 2
  %platform_data = getelementptr inbounds %struct.i2c_board_info, ptr %board_info, i32 0, i32 4
  %33 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %pdata, ptr %platform_data, align 4
  %call55 = call ptr @i2c_new_client_device(ptr noundef %i2c, ptr noundef nonnull %board_info) #8
  %tobool.not.i.i = icmp eq ptr %call55, null
  %cmp.i.i = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.cleanup_crit_edge, label %i2c_client_has_driver.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

i2c_client_has_driver.exit:                       ; preds = %entry
  %driver.i = getelementptr inbounds %struct.i2c_client, ptr %call55, i32 0, i32 4, i32 6
  %34 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %driver.i, align 4
  %tobool.i.not = icmp eq ptr %35, null
  br i1 %tobool.i.not, label %i2c_client_has_driver.exit.cleanup_crit_edge, label %if.end

i2c_client_has_driver.exit.cleanup_crit_edge:     ; preds = %i2c_client_has_driver.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %i2c_client_has_driver.exit
  call void @__sanitizer_cov_trace_pc() #10
  %get_i2c_adapter = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %pdata, i32 0, i32 9
  %36 = ptrtoint ptr %get_i2c_adapter to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %get_i2c_adapter, align 4
  %call57 = call ptr %37(ptr noundef nonnull %call55) #8
  %38 = ptrtoint ptr %tuner_i2c_adapter to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call57, ptr %tuner_i2c_adapter, align 4
  %get_dvb_frontend = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %pdata, i32 0, i32 8
  %39 = ptrtoint ptr %get_dvb_frontend to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %get_dvb_frontend, align 4
  %call58 = call ptr %40(ptr noundef nonnull %call55) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %i2c_client_has_driver.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call58, %if.end ], [ null, %i2c_client_has_driver.exit.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %pdata) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %board_info) #8
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @m88ds3103_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @m88ds3103_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @m88ds3103_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @m88ds3103_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88ds3103_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  %utmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %utmp) #8
  %2 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %utmp, align 4, !annotation !260
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 1304) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.do.body220_crit_edge, label %if.end

entry.do.body220_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body220

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %client, ptr %call7.i.i, align 8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %config = getelementptr inbounds %struct.m88ds3103_dev, ptr %call7.i.i, i32 0, i32 4
  %clock = getelementptr inbounds %struct.m88ds3103_dev, ptr %call7.i.i, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %clock, align 4
  %i2c_wr_max = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %i2c_wr_max to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %i2c_wr_max, align 4
  %i2c_wr_max4 = getelementptr inbounds %struct.m88ds3103_dev, ptr %call7.i.i, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %i2c_wr_max4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %i2c_wr_max4, align 8
  %ts_mode = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %ts_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ts_mode, align 4
  %conv = trunc i32 %12 to i8
  %ts_mode6 = getelementptr inbounds %struct.m88ds3103_dev, ptr %call7.i.i, i32 0, i32 4, i32 3
  %13 = ptrtoint ptr %ts_mode6 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %ts_mode6, align 2
  %ts_clk = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %ts_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ts_clk, align 4
  %mul = mul i32 %15, 1000
  %ts_clk8 = getelementptr inbounds %struct.m88ds3103_dev, ptr %call7.i.i, i32 0, i32 4, i32 4
  %16 = ptrtoint ptr %ts_clk8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul, ptr %ts_clk8, align 4
  %ts_clk_pol = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %ts_clk_pol to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %ts_clk_pol, align 4
  %bf.lshr = and i8 %bf.load, -128
  %ts_clk_pol10 = getelementptr inbounds %struct.m88ds3103_dev, ptr %call7.i.i, i32 0, i32 4, i32 5
  %18 = ptrtoint ptr %ts_clk_pol10 to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load11 = load i8, ptr %ts_clk_pol10, align 8
  %bf.clear = and i8 %bf.load11, 127
  %bf.set = or i8 %bf.clear, %bf.lshr
  store i8 %bf.set, ptr %ts_clk_pol10, align 8
  %bf.load12 = load i8, ptr %ts_clk_pol, align 4
  %bf.clear14 = and i8 %bf.load12, 64
  %bf.clear20 = and i8 %bf.set, -65
  %bf.set21 = or i8 %bf.clear20, %bf.clear14
  store i8 %bf.set21, ptr %ts_clk_pol10, align 8
  %agc_inv = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %agc_inv to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load22 = load i8, ptr %agc_inv, align 2
  %20 = lshr i8 %bf.load22, 2
  %bf.shl28 = and i8 %20, 32
  %bf.clear29 = and i8 %bf.set21, -33
  %bf.set30 = or i8 %bf.shl28, %bf.clear29
  store i8 %bf.set30, ptr %ts_clk_pol10, align 8
  %clk_out = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %clk_out to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %clk_out, align 4
  %conv31 = trunc i32 %22 to i8
  %clock_out = getelementptr inbounds %struct.m88ds3103_dev, ptr %call7.i.i, i32 0, i32 4, i32 6
  %23 = ptrtoint ptr %clock_out to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv31, ptr %clock_out, align 1
  %bf.load33 = load i8, ptr %agc_inv, align 2
  %envelope_mode37 = getelementptr inbounds %struct.m88ds3103_dev, ptr %call7.i.i, i32 0, i32 4, i32 7
  %24 = ptrtoint ptr %envelope_mode37 to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load38 = load i8, ptr %envelope_mode37, align 2
  %25 = shl i8 %bf.load33, 1
  %bf.shl40 = and i8 %25, -128
  %bf.clear41 = and i8 %bf.load38, 127
  %bf.set42 = or i8 %bf.clear41, %bf.shl40
  store i8 %bf.set42, ptr %envelope_mode37, align 2
  %agc = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %1, i32 0, i32 6
  %26 = ptrtoint ptr %agc to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %agc, align 1
  %agc44 = getelementptr inbounds %struct.m88ds3103_dev, ptr %call7.i.i, i32 0, i32 4, i32 8
  %28 = ptrtoint ptr %agc44 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %agc44, align 1
  %bf.load45 = load i8, ptr %agc_inv, align 2
  %lnb_hv_pol49 = getelementptr inbounds %struct.m88ds3103_dev, ptr %call7.i.i, i32 0, i32 4, i32 9
  %29 = ptrtoint ptr %lnb_hv_pol49 to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load50 = load i8, ptr %lnb_hv_pol49, align 4
  %30 = shl i8 %bf.load45, 2
  %bf.shl52 = and i8 %30, -128
  %bf.clear53 = and i8 %bf.load50, 127
  %bf.set54 = or i8 %bf.clear53, %bf.shl52
  store i8 %bf.set54, ptr %lnb_hv_pol49, align 4
  %bf.load55 = load i8, ptr %agc_inv, align 2
  %31 = shl i8 %bf.load55, 2
  %bf.shl62 = and i8 %31, 64
  %bf.clear63 = and i8 %bf.set54, -65
  %bf.set64 = or i8 %bf.shl62, %bf.clear63
  store i8 %bf.set64, ptr %lnb_hv_pol49, align 4
  %cfg = getelementptr inbounds %struct.m88ds3103_dev, ptr %call7.i.i, i32 0, i32 5
  %32 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %config, ptr %cfg, align 8
  %regmap_config = getelementptr inbounds %struct.m88ds3103_dev, ptr %call7.i.i, i32 0, i32 2
  %reg_bits = getelementptr inbounds %struct.m88ds3103_dev, ptr %call7.i.i, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %reg_bits to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 8, ptr %reg_bits, align 4
  %val_bits = getelementptr inbounds %struct.m88ds3103_dev, ptr %call7.i.i, i32 0, i32 2, i32 4
  %34 = ptrtoint ptr %val_bits to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 8, ptr %val_bits, align 8
  %lock_arg = getelementptr inbounds %struct.m88ds3103_dev, ptr %call7.i.i, i32 0, i32 2, i32 14
  %35 = ptrtoint ptr %lock_arg to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i, ptr %lock_arg, align 8
  %call69 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef %regmap_config, ptr noundef nonnull @m88ds3103_probe._key, ptr noundef nonnull @.str.1) #8
  %regmap = getelementptr inbounds %struct.m88ds3103_dev, ptr %call7.i.i, i32 0, i32 3
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call69, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call69, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then72, label %if.end75

if.then72:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %call69 to i32
  br label %err_kfree

if.end75:                                         ; preds = %if.end
  %call77 = call i32 @regmap_read(ptr noundef %call69, i32 noundef 0, ptr noundef nonnull %utmp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.end75.err_kfree_crit_edge

if.end75.err_kfree_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_kfree

if.end80:                                         ; preds = %if.end75
  %38 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %utmp, align 4
  %shr = lshr i32 %39, 1
  %conv81 = trunc i32 %shr to i8
  %chip_id = getelementptr inbounds %struct.m88ds3103_dev, ptr %call7.i.i, i32 0, i32 12
  %40 = ptrtoint ptr %chip_id to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv81, ptr %chip_id, align 8
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %41 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %driver_data, align 4
  %conv82 = trunc i32 %42 to i8
  %chiptype = getelementptr inbounds %struct.m88ds3103_dev, ptr %call7.i.i, i32 0, i32 13
  %43 = ptrtoint ptr %chiptype to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv82, ptr %chiptype, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_probe.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_probe, %if.then88)) #8
          to label %do.end [label %if.then88], !srcloc !261

if.then88:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %chip_id, align 8
  %conv91 = zext i8 %45 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_probe.__UNIQUE_ID_ddebug340, ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef %conv91) #8
  br label %do.end

do.end:                                           ; preds = %if.then88, %if.end80
  %46 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %chip_id, align 8
  %48 = zext i8 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values)
  switch i8 %47, label %sw.default [
    i8 116, label %do.end.sw.epilog_crit_edge
    i8 112, label %do.end.sw.epilog_crit_edge342
  ]

do.end.sw.epilog_crit_edge342:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv94 = zext i8 %47 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5, i32 noundef %conv94) #12
  br label %err_kfree

sw.epilog:                                        ; preds = %do.end.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge342
  %49 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cfg, align 8
  %clock_out102 = getelementptr inbounds %struct.m88ds3103_config, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %clock_out102 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %clock_out102, align 1
  %53 = zext i8 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.81)
  switch i8 %52, label %sw.epilog.err_kfree_crit_edge [
    i8 0, label %sw.bb104
    i8 1, label %sw.bb105
    i8 2, label %sw.bb106
  ]

sw.epilog.err_kfree_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_kfree

sw.bb104:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 128, ptr %utmp, align 4
  br label %sw.epilog108

sw.bb105:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %utmp, align 4
  br label %sw.epilog108

sw.bb106:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 16, ptr %utmp, align 4
  br label %sw.epilog108

sw.epilog108:                                     ; preds = %sw.bb106, %sw.bb105, %sw.bb104
  %57 = ptrtoint ptr %ts_clk to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ts_clk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool110.not = icmp eq i32 %58, 0
  br i1 %tobool110.not, label %sw.epilog108.err_kfree_crit_edge, label %if.end112

sw.epilog108.err_kfree_crit_edge:                 ; preds = %sw.epilog108
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_kfree

if.end112:                                        ; preds = %sw.epilog108
  call void @__sanitizer_cov_trace_const_cmp1(i8 116, i8 %47)
  %cmp = icmp eq i8 %47, 116
  br i1 %cmp, label %if.then116, label %if.end112.if.end117_crit_edge

if.end112.if.end117_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end117

if.then116:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %utmp, align 4
  br label %if.end117

if.end117:                                        ; preds = %if.then116, %if.end112.if.end117_crit_edge
  %60 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap, align 4
  %62 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %utmp, align 4
  %call119 = call i32 @regmap_write(ptr noundef %61, i32 noundef 41, i32 noundef %63) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.end122, label %if.end117.err_kfree_crit_edge

if.end117.err_kfree_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_kfree

if.end122:                                        ; preds = %if.end117
  %call123 = call fastcc i32 @m88ds3103_update_bits(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end126, label %if.end122.err_kfree_crit_edge

if.end122.err_kfree_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_kfree

if.end126:                                        ; preds = %if.end122
  %call127 = call fastcc i32 @m88ds3103_update_bits(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 4, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.end130, label %if.end126.err_kfree_crit_edge

if.end126.err_kfree_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_kfree

if.end130:                                        ; preds = %if.end126
  %call131 = call fastcc i32 @m88ds3103_update_bits(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 35, i8 noundef zeroext 16, i8 noundef zeroext 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.end134, label %if.end130.err_kfree_crit_edge

if.end130.err_kfree_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_kfree

if.end134:                                        ; preds = %if.end130
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %64 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %adapter, align 8
  %call136 = call ptr @i2c_mux_alloc(ptr noundef %65, ptr noundef %dev1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @m88ds3103_select, ptr noundef null) #8
  %muxc = getelementptr inbounds %struct.m88ds3103_dev, ptr %call7.i.i, i32 0, i32 11
  %66 = ptrtoint ptr %muxc to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call136, ptr %muxc, align 4
  %tobool138.not = icmp eq ptr %call136, null
  br i1 %tobool138.not, label %if.end134.err_kfree_crit_edge, label %if.end140

if.end134.err_kfree_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_kfree

if.end140:                                        ; preds = %if.end134
  %priv = getelementptr inbounds %struct.i2c_mux_core, ptr %call136, i32 0, i32 3
  %67 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call7.i.i, ptr %priv, align 4
  %68 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %muxc, align 4
  %call143 = call i32 @i2c_mux_add_adapter(ptr noundef %69, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.end146, label %if.end140.err_kfree_crit_edge

if.end140.err_kfree_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_kfree

if.end146:                                        ; preds = %if.end140
  %ops = getelementptr inbounds %struct.m88ds3103_dev, ptr %call7.i.i, i32 0, i32 6, i32 1
  %70 = call ptr @memcpy(ptr %ops, ptr @m88ds3103_ops, i32 544)
  %71 = ptrtoint ptr %chiptype to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %chiptype, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %72)
  %cmp149 = icmp eq i8 %72, 2
  br i1 %cmp149, label %if.end146.if.end167.sink.split_crit_edge, label %if.else

if.end146.if.end167.sink.split_crit_edge:         ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end167.sink.split

if.else:                                          ; preds = %if.end146
  %73 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 116, i8 %74)
  %cmp157 = icmp eq i8 %74, 116
  br i1 %cmp157, label %if.else.if.end167.sink.split_crit_edge, label %if.else.if.end167_crit_edge

if.else.if.end167_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end167

if.else.if.end167.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end167.sink.split

if.end167.sink.split:                             ; preds = %if.else.if.end167.sink.split_crit_edge, %if.end146.if.end167.sink.split_crit_edge
  %.str.9.sink = phi ptr [ @.str.8, %if.end146.if.end167.sink.split_crit_edge ], [ @.str.9, %if.else.if.end167.sink.split_crit_edge ]
  %call165 = call i32 @strscpy(ptr noundef %ops, ptr noundef nonnull %.str.9.sink, i32 noundef 128) #8
  br label %if.end167

if.end167:                                        ; preds = %if.end167.sink.split, %if.else.if.end167_crit_edge
  %attach_in_use = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %1, i32 0, i32 10
  %75 = ptrtoint ptr %attach_in_use to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load168 = load i8, ptr %attach_in_use, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load168)
  %tobool170.not = icmp sgt i8 %bf.load168, -1
  br i1 %tobool170.not, label %if.then171, label %if.end167.if.end174_crit_edge

if.end167.if.end174_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end174

if.then171:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #10
  %release = getelementptr inbounds %struct.m88ds3103_dev, ptr %call7.i.i, i32 0, i32 6, i32 1, i32 3
  %76 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %release, align 4
  br label %if.end174

if.end174:                                        ; preds = %if.then171, %if.end167.if.end174_crit_edge
  %demodulator_priv = getelementptr inbounds %struct.m88ds3103_dev, ptr %call7.i.i, i32 0, i32 6, i32 3
  %77 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call7.i.i, ptr %demodulator_priv, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %78 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %get_dvb_frontend = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %1, i32 0, i32 8
  %79 = ptrtoint ptr %get_dvb_frontend to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @m88ds3103_get_dvb_frontend, ptr %get_dvb_frontend, align 4
  %get_i2c_adapter = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %1, i32 0, i32 9
  %80 = ptrtoint ptr %get_i2c_adapter to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @m88ds3103_get_i2c_adapter, ptr %get_i2c_adapter, align 4
  %81 = ptrtoint ptr %chiptype to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %chiptype, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %82)
  %cmp178 = icmp eq i8 %82, 2
  br i1 %cmp178, label %if.then180, label %if.end174.cleanup_crit_edge

if.end174.cleanup_crit_edge:                      ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then180:                                       ; preds = %if.end174
  %call181 = call fastcc i32 @m88ds3103_update_bits(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext 1)
  %83 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regmap, align 4
  %call183 = call i32 @regmap_read(ptr noundef %84, i32 noundef 41, ptr noundef nonnull %utmp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %if.end186, label %if.then180.err_kfree_crit_edge

if.then180.err_kfree_crit_edge:                   ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_kfree

if.end186:                                        ; preds = %if.then180
  %85 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %utmp, align 4
  %and = and i32 %86, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp187 = icmp eq i32 %and, 0
  %conv189 = select i1 %cmp187, i8 33, i8 32
  %dt_addr = getelementptr inbounds %struct.m88ds3103_dev, ptr %call7.i.i, i32 0, i32 17
  %87 = ptrtoint ptr %dt_addr to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv189, ptr %dt_addr, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_probe.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_probe, %if.then202)) #8
          to label %do.end208 [label %if.then202], !srcloc !261

if.then202:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #10
  %88 = ptrtoint ptr %dt_addr to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %dt_addr, align 8
  %conv205 = zext i8 %89 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_probe.__UNIQUE_ID_ddebug341, ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %conv205) #8
  br label %do.end208

do.end208:                                        ; preds = %if.then202, %if.end186
  %90 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %adapter, align 8
  %92 = ptrtoint ptr %dt_addr to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %dt_addr, align 8
  %conv211 = zext i8 %93 to i16
  %call212 = call ptr @i2c_new_dummy_device(ptr noundef %91, i16 noundef zeroext %conv211) #8
  %dt_client = getelementptr inbounds %struct.m88ds3103_dev, ptr %call7.i.i, i32 0, i32 1
  %94 = ptrtoint ptr %dt_client to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call212, ptr %dt_client, align 4
  %cmp.i338 = icmp ugt ptr %call212, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i338, label %if.then215, label %do.end208.cleanup_crit_edge

do.end208.cleanup_crit_edge:                      ; preds = %do.end208
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then215:                                       ; preds = %do.end208
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %call212 to i32
  br label %err_kfree

err_kfree:                                        ; preds = %if.then215, %if.then180.err_kfree_crit_edge, %if.end140.err_kfree_crit_edge, %if.end134.err_kfree_crit_edge, %if.end130.err_kfree_crit_edge, %if.end126.err_kfree_crit_edge, %if.end122.err_kfree_crit_edge, %if.end117.err_kfree_crit_edge, %sw.epilog108.err_kfree_crit_edge, %sw.epilog.err_kfree_crit_edge, %sw.default, %if.end75.err_kfree_crit_edge, %if.then72
  %ret.0 = phi i32 [ %37, %if.then72 ], [ %call77, %if.end75.err_kfree_crit_edge ], [ -19, %sw.default ], [ %call119, %if.end117.err_kfree_crit_edge ], [ %call123, %if.end122.err_kfree_crit_edge ], [ %call127, %if.end126.err_kfree_crit_edge ], [ %call131, %if.end130.err_kfree_crit_edge ], [ %call143, %if.end140.err_kfree_crit_edge ], [ %call183, %if.then180.err_kfree_crit_edge ], [ %95, %if.then215 ], [ -22, %sw.epilog.err_kfree_crit_edge ], [ -22, %sw.epilog108.err_kfree_crit_edge ], [ -12, %if.end134.err_kfree_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %do.body220

do.body220:                                       ; preds = %err_kfree, %entry.do.body220_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_kfree ], [ -12, %entry.do.body220_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_probe.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_probe, %if.then232)) #8
          to label %cleanup [label %if.then232], !srcloc !261

if.then232:                                       ; preds = %do.body220
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_probe.__UNIQUE_ID_ddebug342, ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %ret.1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then232, %do.body220, %do.end208.cleanup_crit_edge, %if.end174.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end208.cleanup_crit_edge ], [ 0, %if.end174.cleanup_crit_edge ], [ %ret.1, %if.then232 ], [ %ret.1, %do.body220 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %utmp) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88ds3103_remove(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_remove.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_remove, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !261

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_remove.__UNIQUE_ID_ddebug343, ptr noundef %dev4, ptr noundef nonnull @.str.17) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dt_client = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dt_client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dt_client, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %do.end.if.end8_crit_edge, label %if.then6

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_unregister_device(ptr noundef nonnull %3) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %do.end.if.end8_crit_edge
  %muxc = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %muxc, align 4
  tail call void @i2c_mux_del_adapters(ptr noundef %5) #8
  tail call void @kfree(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @m88ds3103_update_bits(ptr nocapture noundef readonly %dev, i8 noundef zeroext %reg, i8 noundef zeroext %mask, i8 noundef zeroext %val) unnamed_addr #0 align 64 {
entry:
  %val.addr = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %val.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %val, ptr %val.addr, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #8
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %tmp, align 1, !annotation !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %mask)
  %cmp.not = icmp eq i8 %mask, -1
  br i1 %cmp.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %.pre = zext i8 %reg to i32
  br label %if.end14

if.then:                                          ; preds = %entry
  %regmap = getelementptr inbounds %struct.m88ds3103_dev, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %conv2 = zext i8 %reg to i32
  %call = call i32 @regmap_bulk_read(ptr noundef %3, i32 noundef %conv2, ptr noundef nonnull %tmp, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %val.addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %val.addr, align 1
  %and24 = and i8 %5, %mask
  %neg = xor i8 %mask, -1
  %6 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tmp, align 1
  %and9 = and i8 %7, %neg
  store i8 %and9, ptr %tmp, align 1
  %or25 = or i8 %and9, %and24
  store i8 %or25, ptr %val.addr, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.end, %entry.if.end14_crit_edge
  %conv16.pre-phi = phi i32 [ %.pre, %entry.if.end14_crit_edge ], [ %conv2, %if.end ]
  %regmap15 = getelementptr inbounds %struct.m88ds3103_dev, ptr %dev, i32 0, i32 3
  %8 = ptrtoint ptr %regmap15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap15, align 4
  %call17 = call i32 @regmap_bulk_write(ptr noundef %9, i32 noundef %conv16.pre-phi, ptr noundef nonnull %val.addr, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end14 ], [ %call, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_mux_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88ds3103_select(ptr nocapture noundef readonly %muxc, i32 noundef %chan) #0 align 64 {
entry:
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.i2c_mux_core, ptr %muxc, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #8
  %4 = getelementptr inbounds i8, ptr %msg, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4
  %addr2 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %addr2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr2, align 2
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.12, ptr %buf, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 8
  %call3 = call i32 @__i2c_transfer(ptr noundef %13, ptr noundef nonnull %msg, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 1
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev4, ptr noundef nonnull @.str.13, i32 noundef %call3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3)
  %cmp5 = icmp sgt i32 %call3, -1
  %spec.store.select = select i1 %cmp5, i32 -121, i32 %call3
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_mux_add_adapter(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @m88ds3103_get_dvb_frontend(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_get_dvb_frontend.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_get_dvb_frontend, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !261

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_get_dvb_frontend.__UNIQUE_ID_ddebug338, ptr noundef %dev4, ptr noundef nonnull @.str.17) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %fe = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 6
  ret ptr %fe
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @m88ds3103_get_i2c_adapter(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_get_i2c_adapter.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_get_i2c_adapter, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !261

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_get_i2c_adapter.__UNIQUE_ID_ddebug339, ptr noundef %dev4, ptr noundef nonnull @.str.17) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %muxc = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %muxc, align 4
  %adapter = getelementptr inbounds %struct.i2c_mux_core, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 4
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @m88ds3103_release(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void @i2c_unregister_device(ptr noundef %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88ds3103_init(ptr nocapture noundef %fe) #0 align 64 {
entry:
  %val.addr.i267 = alloca i8, align 1
  %tmp.i268 = alloca i8, align 1
  %val.addr.i254 = alloca i8, align 1
  %tmp.i255 = alloca i8, align 1
  %val.addr.i = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  %utmp = alloca i32, align 4
  %firmware = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %utmp) #8
  %4 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %utmp, align 4, !annotation !260
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %firmware) #8
  %5 = ptrtoint ptr %firmware to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %firmware, align 4, !annotation !260
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_init.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_init, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !261

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_init.__UNIQUE_ID_ddebug309, ptr noundef %dev4, ptr noundef nonnull @.str.17) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %warm = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %warm to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %warm, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %7 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %val.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #8
  %8 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %tmp.i, align 1, !annotation !260
  %regmap.i = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_bulk_read(ptr noundef %10, i32 noundef 8, ptr noundef nonnull %tmp.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %m88ds3103_update_bits.exit, label %m88ds3103_update_bits.exit.thread

m88ds3103_update_bits.exit.thread:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  br label %do.body163

m88ds3103_update_bits.exit:                       ; preds = %do.end
  %11 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %val.addr.i, align 1
  %and24.i = and i8 %12, 1
  %13 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tmp.i, align 1
  %and9.i = and i8 %14, -2
  store i8 %and9.i, ptr %tmp.i, align 1
  %or25.i = or i8 %and9.i, %and24.i
  store i8 %or25.i, ptr %val.addr.i, align 1
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 4
  %call17.i = call i32 @regmap_bulk_write(ptr noundef %16, i32 noundef 8, ptr noundef nonnull %val.addr.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool6.not = icmp eq i32 %call17.i, 0
  br i1 %tobool6.not, label %if.end8, label %m88ds3103_update_bits.exit.do.body163_crit_edge

m88ds3103_update_bits.exit.do.body163_crit_edge:  ; preds = %m88ds3103_update_bits.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body163

if.end8:                                          ; preds = %m88ds3103_update_bits.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i254)
  %17 = ptrtoint ptr %val.addr.i254 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %val.addr.i254, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i255) #8
  %18 = ptrtoint ptr %tmp.i255 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %tmp.i255, align 1, !annotation !260
  %19 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i, align 4
  %call.i257 = call i32 @regmap_bulk_read(ptr noundef %20, i32 noundef 4, ptr noundef nonnull %tmp.i255, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i257)
  %tobool.not.i258 = icmp eq i32 %call.i257, 0
  br i1 %tobool.not.i258, label %m88ds3103_update_bits.exit266, label %m88ds3103_update_bits.exit266.thread

m88ds3103_update_bits.exit266.thread:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i255) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i254)
  br label %do.body163

m88ds3103_update_bits.exit266:                    ; preds = %if.end8
  %21 = ptrtoint ptr %val.addr.i254 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %val.addr.i254, align 1
  %and24.i259 = and i8 %22, 1
  %23 = ptrtoint ptr %tmp.i255 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %tmp.i255, align 1
  %and9.i260 = and i8 %24, -2
  store i8 %and9.i260, ptr %tmp.i255, align 1
  %or25.i261 = or i8 %and9.i260, %and24.i259
  store i8 %or25.i261, ptr %val.addr.i254, align 1
  %25 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i, align 4
  %call17.i264 = call i32 @regmap_bulk_write(ptr noundef %26, i32 noundef 4, ptr noundef nonnull %val.addr.i254, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i255) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i254)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i264)
  %tobool10.not = icmp eq i32 %call17.i264, 0
  br i1 %tobool10.not, label %if.end12, label %m88ds3103_update_bits.exit266.do.body163_crit_edge

m88ds3103_update_bits.exit266.do.body163_crit_edge: ; preds = %m88ds3103_update_bits.exit266
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body163

if.end12:                                         ; preds = %m88ds3103_update_bits.exit266
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i267)
  %27 = ptrtoint ptr %val.addr.i267 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %val.addr.i267, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i268) #8
  %28 = ptrtoint ptr %tmp.i268 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %tmp.i268, align 1, !annotation !260
  %29 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap.i, align 4
  %call.i270 = call i32 @regmap_bulk_read(ptr noundef %30, i32 noundef 35, ptr noundef nonnull %tmp.i268, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i270)
  %tobool.not.i271 = icmp eq i32 %call.i270, 0
  br i1 %tobool.not.i271, label %m88ds3103_update_bits.exit279, label %m88ds3103_update_bits.exit279.thread

m88ds3103_update_bits.exit279.thread:             ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i268) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i267)
  br label %do.body163

m88ds3103_update_bits.exit279:                    ; preds = %if.end12
  %31 = ptrtoint ptr %val.addr.i267 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %val.addr.i267, align 1
  %and24.i272 = and i8 %32, 16
  %33 = ptrtoint ptr %tmp.i268 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %tmp.i268, align 1
  %and9.i273 = and i8 %34, -17
  store i8 %and9.i273, ptr %tmp.i268, align 1
  %or25.i274 = or i8 %and9.i273, %and24.i272
  store i8 %or25.i274, ptr %val.addr.i267, align 1
  %35 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap.i, align 4
  %call17.i277 = call i32 @regmap_bulk_write(ptr noundef %36, i32 noundef 35, ptr noundef nonnull %val.addr.i267, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i268) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i267)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i277)
  %tobool14.not = icmp eq i32 %call17.i277, 0
  br i1 %tobool14.not, label %if.end16, label %m88ds3103_update_bits.exit279.do.body163_crit_edge

m88ds3103_update_bits.exit279.do.body163_crit_edge: ; preds = %m88ds3103_update_bits.exit279
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body163

if.end16:                                         ; preds = %m88ds3103_update_bits.exit279
  %37 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap.i, align 4
  %call17 = call i32 @regmap_read(ptr noundef %38, i32 noundef 185, ptr noundef nonnull %utmp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %do.body21, label %if.end16.do.body163_crit_edge

if.end16.do.body163_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body163

do.body21:                                        ; preds = %if.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_init.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_init, %if.then33)) #8
          to label %do.end37 [label %if.then33], !srcloc !261

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #10
  %dev34 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %39 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %utmp, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_init.__UNIQUE_ID_ddebug310, ptr noundef %dev34, ptr noundef nonnull @.str.18, i32 noundef %40) #8
  br label %do.end37

do.end37:                                         ; preds = %if.then33, %do.body21
  %41 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %utmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool38.not = icmp eq i32 %42, 0
  br i1 %tobool38.not, label %if.end40, label %do.end37.warm148_crit_edge

do.end37.warm148_crit_edge:                       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %warm148

if.end40:                                         ; preds = %do.end37
  %43 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap.i, align 4
  %call42 = call i32 @regmap_write(ptr noundef %44, i32 noundef 7, i32 noundef 224) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end40.do.body163_crit_edge

if.end40.do.body163_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body163

if.end45:                                         ; preds = %if.end40
  %45 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap.i, align 4
  %call47 = call i32 @regmap_write(ptr noundef %46, i32 noundef 7, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %do.end53, label %if.end45.do.body163_crit_edge

if.end45.do.body163_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body163

do.end53:                                         ; preds = %if.end45
  %dev54 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %ops = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 6, i32 1
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev54, ptr noundef nonnull @.str.19, ptr noundef %ops) #12
  %chiptype = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 13
  %47 = ptrtoint ptr %chiptype to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %chiptype, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %48)
  %cmp = icmp eq i8 %48, 2
  br i1 %cmp, label %do.end53.if.end65_crit_edge, label %if.else

do.end53.if.end65_crit_edge:                      ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.else:                                          ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #10
  %chip_id = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 12
  %49 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 116, i8 %50)
  %cmp60 = icmp eq i8 %50, 116
  %.str.22..str.23 = select i1 %cmp60, ptr @.str.22, ptr @.str.23
  br label %if.end65

if.end65:                                         ; preds = %if.else, %do.end53.if.end65_crit_edge
  %name.0 = phi ptr [ @.str.21, %do.end53.if.end65_crit_edge ], [ %.str.22..str.23, %if.else ]
  %call67 = call i32 @request_firmware(ptr noundef nonnull %firmware, ptr noundef nonnull %name.0, ptr noundef %dev54) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %do.end77, label %do.end72

do.end72:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev54, ptr noundef nonnull @.str.25, ptr noundef nonnull %name.0) #12
  br label %do.body163

do.end77:                                         ; preds = %if.end65
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev54, ptr noundef nonnull @.str.28, ptr noundef nonnull %name.0) #12
  %51 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap.i, align 4
  %call80 = call i32 @regmap_write(ptr noundef %52, i32 noundef 178, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %do.end77.err_release_firmware_crit_edge

do.end77.err_release_firmware_crit_edge:          ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_release_firmware

if.end83:                                         ; preds = %do.end77
  %53 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %firmware, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp84289 = icmp sgt i32 %56, 0
  br i1 %cmp84289, label %for.body.lr.ph, label %if.end83.for.end_crit_edge

if.end83.for.end_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end83
  %cfg = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %rem.0290 = phi i32 [ %56, %for.body.lr.ph ], [ %sub105, %for.inc.for.body_crit_edge ]
  %57 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cfg, align 8
  %i2c_wr_max = getelementptr inbounds %struct.m88ds3103_config, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %i2c_wr_max to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %i2c_wr_max, align 4
  %conv86 = zext i16 %60 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.0290, i32 %conv86)
  %cmp88.not = icmp ult i32 %rem.0290, %conv86
  %sub = add nsw i32 %conv86, -1
  %cond = select i1 %cmp88.not, i32 %rem.0290, i32 %sub
  %61 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap.i, align 4
  %63 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %firmware, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data, align 4
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %64, align 4
  %sub92 = sub i32 %68, %rem.0290
  %arrayidx = getelementptr i8, ptr %66, i32 %sub92
  %call93 = call i32 @regmap_bulk_write(ptr noundef %62, i32 noundef 176, ptr noundef %arrayidx, i32 noundef %cond) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %for.inc, label %do.end98

do.end98:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev54, ptr noundef nonnull @.str.31, i32 noundef %call93) #12
  br label %err_release_firmware

for.inc:                                          ; preds = %for.body
  %69 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cfg, align 8
  %i2c_wr_max102 = getelementptr inbounds %struct.m88ds3103_config, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %i2c_wr_max102 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %i2c_wr_max102, align 4
  %conv103 = zext i16 %72 to i32
  %sub104.neg = add nuw i32 %rem.0290, 1
  %sub105 = sub i32 %sub104.neg, %conv103
  %cmp84 = icmp sgt i32 %sub105, 0
  br i1 %cmp84, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end83.for.end_crit_edge
  %73 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap.i, align 4
  %call107 = call i32 @regmap_write(ptr noundef %74, i32 noundef 178, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end110, label %for.end.err_release_firmware_crit_edge

for.end.err_release_firmware_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_release_firmware

if.end110:                                        ; preds = %for.end
  %75 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %firmware, align 4
  call void @release_firmware(ptr noundef %76) #8
  %77 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regmap.i, align 4
  %call112 = call i32 @regmap_read(ptr noundef %78, i32 noundef 185, ptr noundef nonnull %utmp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end115, label %if.end110.do.body163_crit_edge

if.end110.do.body163_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body163

if.end115:                                        ; preds = %if.end110
  %79 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %utmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool116.not = icmp eq i32 %80, 0
  br i1 %tobool116.not, label %if.then117, label %do.end125

if.then117:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev54, ptr noundef nonnull @.str.34) #12
  br label %do.body163

do.end125:                                        ; preds = %if.end115
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev54, ptr noundef nonnull @.str.37, ptr noundef %ops) #12
  %81 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %utmp, align 4
  %shr = lshr i32 %82, 4
  %and = and i32 %shr, 15
  %and137 = and i32 %82, 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev54, ptr noundef nonnull @.str.40, i32 noundef %and, i32 noundef %and137) #12
  %83 = ptrtoint ptr %chiptype to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %chiptype, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %84)
  %cmp140 = icmp eq i8 %84, 2
  br i1 %cmp140, label %if.then142, label %do.end125.warm148_crit_edge

do.end125.warm148_crit_edge:                      ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #10
  br label %warm148

if.then142:                                       ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @m88ds3103b_dt_write(ptr noundef %1, i32 noundef 33, i32 noundef 146)
  call fastcc void @m88ds3103b_dt_write(ptr noundef %1, i32 noundef 21, i32 noundef 108)
  call fastcc void @m88ds3103b_dt_write(ptr noundef %1, i32 noundef 23, i32 noundef 193)
  call fastcc void @m88ds3103b_dt_write(ptr noundef %1, i32 noundef 23, i32 noundef 129)
  br label %warm148

warm148:                                          ; preds = %if.then142, %do.end125.warm148_crit_edge, %do.end37.warm148_crit_edge
  %85 = ptrtoint ptr %warm to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %warm, align 8
  %cnr = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43
  %86 = ptrtoint ptr %cnr to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %cnr, align 1
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %87 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %stat, align 1
  %post_bit_error = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46
  %88 = ptrtoint ptr %post_bit_error to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %post_bit_error, align 4
  %stat155 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  %89 = ptrtoint ptr %stat155 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %stat155, align 1
  %post_bit_count = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47
  %90 = ptrtoint ptr %post_bit_count to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %post_bit_count, align 1
  %stat160 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1
  %91 = ptrtoint ptr %stat160 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %stat160, align 1
  br label %cleanup

err_release_firmware:                             ; preds = %for.end.err_release_firmware_crit_edge, %do.end98, %do.end77.err_release_firmware_crit_edge
  %ret.0 = phi i32 [ %call80, %do.end77.err_release_firmware_crit_edge ], [ %call93, %do.end98 ], [ %call107, %for.end.err_release_firmware_crit_edge ]
  %92 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %firmware, align 4
  call void @release_firmware(ptr noundef %93) #8
  br label %do.body163

do.body163:                                       ; preds = %err_release_firmware, %if.then117, %if.end110.do.body163_crit_edge, %do.end72, %if.end45.do.body163_crit_edge, %if.end40.do.body163_crit_edge, %if.end16.do.body163_crit_edge, %m88ds3103_update_bits.exit279.do.body163_crit_edge, %m88ds3103_update_bits.exit279.thread, %m88ds3103_update_bits.exit266.do.body163_crit_edge, %m88ds3103_update_bits.exit266.thread, %m88ds3103_update_bits.exit.do.body163_crit_edge, %m88ds3103_update_bits.exit.thread
  %ret.1 = phi i32 [ %call17.i, %m88ds3103_update_bits.exit.do.body163_crit_edge ], [ %call17.i264, %m88ds3103_update_bits.exit266.do.body163_crit_edge ], [ %call17.i277, %m88ds3103_update_bits.exit279.do.body163_crit_edge ], [ %call17, %if.end16.do.body163_crit_edge ], [ %call42, %if.end40.do.body163_crit_edge ], [ %call47, %if.end45.do.body163_crit_edge ], [ %call67, %do.end72 ], [ %ret.0, %err_release_firmware ], [ %call112, %if.end110.do.body163_crit_edge ], [ -22, %if.then117 ], [ %call.i, %m88ds3103_update_bits.exit.thread ], [ %call.i257, %m88ds3103_update_bits.exit266.thread ], [ %call.i270, %m88ds3103_update_bits.exit279.thread ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_init.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_init, %if.then175)) #8
          to label %cleanup [label %if.then175], !srcloc !261

if.then175:                                       ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #10
  %dev176 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_init.__UNIQUE_ID_ddebug313, ptr noundef %dev176, ptr noundef nonnull @.str.11, i32 noundef %ret.1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then175, %do.body163, %warm148
  %retval.0 = phi i32 [ 0, %warm148 ], [ %ret.1, %if.then175 ], [ %ret.1, %do.body163 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %firmware) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %utmp) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88ds3103_sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %val.addr.i88 = alloca i8, align 1
  %tmp.i89 = alloca i8, align 1
  %val.addr.i75 = alloca i8, align 1
  %tmp.i76 = alloca i8, align 1
  %val.addr.i62 = alloca i8, align 1
  %tmp.i63 = alloca i8, align 1
  %val.addr.i = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_sleep.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_sleep, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !261

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_sleep.__UNIQUE_ID_ddebug314, ptr noundef %dev4, ptr noundef nonnull @.str.17) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %fe_status = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %fe_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %fe_status, align 8
  %delivery_system = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %delivery_system to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %delivery_system, align 4
  %chip_id = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 116, i8 %7)
  %cmp = icmp eq i8 %7, 116
  %. = select i1 %cmp, i32 41, i32 39
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %8 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %val.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #8
  %9 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %tmp.i, align 1, !annotation !260
  %regmap.i = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_bulk_read(ptr noundef %11, i32 noundef %., ptr noundef nonnull %tmp.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %m88ds3103_update_bits.exit, label %m88ds3103_update_bits.exit.thread

m88ds3103_update_bits.exit.thread:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  br label %do.body25

m88ds3103_update_bits.exit:                       ; preds = %do.end
  %12 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %val.addr.i, align 1
  %and24.i = and i8 %13, 1
  %14 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tmp.i, align 1
  %and9.i = and i8 %15, -2
  store i8 %and9.i, ptr %tmp.i, align 1
  %or25.i = or i8 %and9.i, %and24.i
  store i8 %or25.i, ptr %val.addr.i, align 1
  %16 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i, align 4
  %call17.i = call i32 @regmap_bulk_write(ptr noundef %17, i32 noundef %., ptr noundef nonnull %val.addr.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool10.not = icmp eq i32 %call17.i, 0
  br i1 %tobool10.not, label %if.end12, label %m88ds3103_update_bits.exit.do.body25_crit_edge

m88ds3103_update_bits.exit.do.body25_crit_edge:   ; preds = %m88ds3103_update_bits.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body25

if.end12:                                         ; preds = %m88ds3103_update_bits.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i62)
  %18 = ptrtoint ptr %val.addr.i62 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %val.addr.i62, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i63) #8
  %19 = ptrtoint ptr %tmp.i63 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %tmp.i63, align 1, !annotation !260
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 4
  %call.i65 = call i32 @regmap_bulk_read(ptr noundef %21, i32 noundef 8, ptr noundef nonnull %tmp.i63, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %tobool.not.i66 = icmp eq i32 %call.i65, 0
  br i1 %tobool.not.i66, label %m88ds3103_update_bits.exit74, label %m88ds3103_update_bits.exit74.thread

m88ds3103_update_bits.exit74.thread:              ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i63) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i62)
  br label %do.body25

m88ds3103_update_bits.exit74:                     ; preds = %if.end12
  %22 = ptrtoint ptr %val.addr.i62 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %val.addr.i62, align 1
  %and24.i67 = and i8 %23, 1
  %24 = ptrtoint ptr %tmp.i63 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %tmp.i63, align 1
  %and9.i68 = and i8 %25, -2
  store i8 %and9.i68, ptr %tmp.i63, align 1
  %or25.i69 = or i8 %and9.i68, %and24.i67
  store i8 %or25.i69, ptr %val.addr.i62, align 1
  %26 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i, align 4
  %call17.i72 = call i32 @regmap_bulk_write(ptr noundef %27, i32 noundef 8, ptr noundef nonnull %val.addr.i62, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i63) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i62)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i72)
  %tobool14.not = icmp eq i32 %call17.i72, 0
  br i1 %tobool14.not, label %if.end16, label %m88ds3103_update_bits.exit74.do.body25_crit_edge

m88ds3103_update_bits.exit74.do.body25_crit_edge: ; preds = %m88ds3103_update_bits.exit74
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body25

if.end16:                                         ; preds = %m88ds3103_update_bits.exit74
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i75)
  %28 = ptrtoint ptr %val.addr.i75 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %val.addr.i75, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i76) #8
  %29 = ptrtoint ptr %tmp.i76 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %tmp.i76, align 1, !annotation !260
  %30 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i, align 4
  %call.i78 = call i32 @regmap_bulk_read(ptr noundef %31, i32 noundef 4, ptr noundef nonnull %tmp.i76, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %tobool.not.i79 = icmp eq i32 %call.i78, 0
  br i1 %tobool.not.i79, label %m88ds3103_update_bits.exit87, label %m88ds3103_update_bits.exit87.thread

m88ds3103_update_bits.exit87.thread:              ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i76) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i75)
  br label %do.body25

m88ds3103_update_bits.exit87:                     ; preds = %if.end16
  %32 = ptrtoint ptr %val.addr.i75 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %val.addr.i75, align 1
  %and24.i80 = and i8 %33, 1
  %34 = ptrtoint ptr %tmp.i76 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %tmp.i76, align 1
  %and9.i81 = and i8 %35, -2
  store i8 %and9.i81, ptr %tmp.i76, align 1
  %or25.i82 = or i8 %and9.i81, %and24.i80
  store i8 %or25.i82, ptr %val.addr.i75, align 1
  %36 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap.i, align 4
  %call17.i85 = call i32 @regmap_bulk_write(ptr noundef %37, i32 noundef 4, ptr noundef nonnull %val.addr.i75, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i76) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i75)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i85)
  %tobool18.not = icmp eq i32 %call17.i85, 0
  br i1 %tobool18.not, label %if.end20, label %m88ds3103_update_bits.exit87.do.body25_crit_edge

m88ds3103_update_bits.exit87.do.body25_crit_edge: ; preds = %m88ds3103_update_bits.exit87
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body25

if.end20:                                         ; preds = %m88ds3103_update_bits.exit87
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i88)
  %38 = ptrtoint ptr %val.addr.i88 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 16, ptr %val.addr.i88, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i89) #8
  %39 = ptrtoint ptr %tmp.i89 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -1, ptr %tmp.i89, align 1, !annotation !260
  %40 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap.i, align 4
  %call.i91 = call i32 @regmap_bulk_read(ptr noundef %41, i32 noundef 35, ptr noundef nonnull %tmp.i89, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %tobool.not.i92 = icmp eq i32 %call.i91, 0
  br i1 %tobool.not.i92, label %m88ds3103_update_bits.exit100, label %m88ds3103_update_bits.exit100.thread

m88ds3103_update_bits.exit100.thread:             ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i89) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i88)
  br label %do.body25

m88ds3103_update_bits.exit100:                    ; preds = %if.end20
  %42 = ptrtoint ptr %val.addr.i88 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %val.addr.i88, align 1
  %and24.i93 = and i8 %43, 16
  %44 = ptrtoint ptr %tmp.i89 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %tmp.i89, align 1
  %and9.i94 = and i8 %45, -17
  store i8 %and9.i94, ptr %tmp.i89, align 1
  %or25.i95 = or i8 %and9.i94, %and24.i93
  store i8 %or25.i95, ptr %val.addr.i88, align 1
  %46 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap.i, align 4
  %call17.i98 = call i32 @regmap_bulk_write(ptr noundef %47, i32 noundef 35, ptr noundef nonnull %val.addr.i88, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i89) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i88)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i98)
  %tobool22.not = icmp eq i32 %call17.i98, 0
  br i1 %tobool22.not, label %m88ds3103_update_bits.exit100.cleanup_crit_edge, label %m88ds3103_update_bits.exit100.do.body25_crit_edge

m88ds3103_update_bits.exit100.do.body25_crit_edge: ; preds = %m88ds3103_update_bits.exit100
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body25

m88ds3103_update_bits.exit100.cleanup_crit_edge:  ; preds = %m88ds3103_update_bits.exit100
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body25:                                        ; preds = %m88ds3103_update_bits.exit100.do.body25_crit_edge, %m88ds3103_update_bits.exit100.thread, %m88ds3103_update_bits.exit87.do.body25_crit_edge, %m88ds3103_update_bits.exit87.thread, %m88ds3103_update_bits.exit74.do.body25_crit_edge, %m88ds3103_update_bits.exit74.thread, %m88ds3103_update_bits.exit.do.body25_crit_edge, %m88ds3103_update_bits.exit.thread
  %ret.0 = phi i32 [ %call17.i, %m88ds3103_update_bits.exit.do.body25_crit_edge ], [ %call17.i72, %m88ds3103_update_bits.exit74.do.body25_crit_edge ], [ %call17.i85, %m88ds3103_update_bits.exit87.do.body25_crit_edge ], [ %call17.i98, %m88ds3103_update_bits.exit100.do.body25_crit_edge ], [ %call.i, %m88ds3103_update_bits.exit.thread ], [ %call.i65, %m88ds3103_update_bits.exit74.thread ], [ %call.i78, %m88ds3103_update_bits.exit87.thread ], [ %call.i91, %m88ds3103_update_bits.exit100.thread ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_sleep.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_sleep, %if.then37)) #8
          to label %cleanup [label %if.then37], !srcloc !261

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  %dev38 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_sleep.__UNIQUE_ID_ddebug315, ptr noundef %dev38, ptr noundef nonnull @.str.11, i32 noundef %ret.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %do.body25, %m88ds3103_update_bits.exit100.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %m88ds3103_update_bits.exit100.cleanup_crit_edge ], [ %ret.0, %if.then37 ], [ %ret.0, %do.body25 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88ds3103_set_frontend(ptr noundef %fe) #0 align 64 {
entry:
  %val.addr.i = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  %buf = alloca [3 x i8], align 1
  %tuner_frequency_khz = alloca i32, align 4
  %u32tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #8
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %buf, align 1, !annotation !260
  %5 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !260
  %7 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !260
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tuner_frequency_khz) #8
  %9 = ptrtoint ptr %tuner_frequency_khz to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %tuner_frequency_khz, align 4, !annotation !260
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u32tmp) #8
  %10 = ptrtoint ptr %u32tmp to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %u32tmp, align 4, !annotation !260
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_set_frontend.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_set_frontend, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !261

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %11 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %delivery_system, align 4
  %modulation = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %13 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %modulation, align 4
  %15 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dtv_property_cache, align 4
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %17 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %symbol_rate, align 4
  %inversion = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 4
  %19 = ptrtoint ptr %inversion to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %inversion, align 4
  %pilot = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 13
  %21 = ptrtoint ptr %pilot to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pilot, align 4
  %rolloff = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 14
  %23 = ptrtoint ptr %rolloff to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rolloff, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_set_frontend.__UNIQUE_ID_ddebug302, ptr noundef %dev4, ptr noundef nonnull @.str.48, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %warm = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 10
  %25 = ptrtoint ptr %warm to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %warm, align 8, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool5.not = icmp eq i8 %26, 0
  br i1 %tobool5.not, label %do.end.do.body814_crit_edge, label %if.end7

do.end.do.body814_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body814

if.end7:                                          ; preds = %do.end
  %regmap = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %call8 = tail call i32 @regmap_multi_reg_write(ptr noundef %28, ptr noundef nonnull @m88ds3103_set_frontend.reset_buf, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.do.body814_crit_edge

if.end7.do.body814_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body814

if.end11:                                         ; preds = %if.end7
  %chip_id = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 12
  %29 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 116, i8 %30)
  %cmp = icmp eq i8 %30, 116
  br i1 %cmp, label %if.then13, label %if.end11.if.end43_crit_edge

if.end11.if.end43_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then13:                                        ; preds = %if.end11
  %chiptype = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 13
  %31 = ptrtoint ptr %chiptype to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %chiptype, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %32)
  %cmp15 = icmp eq i8 %32, 2
  br i1 %cmp15, label %if.then17, label %if.then13.if.end37_crit_edge

if.then13.if.end37_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then17:                                        ; preds = %if.then13
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %call19 = call i32 @regmap_read(ptr noundef %34, i32 noundef 178, ptr noundef nonnull %u32tmp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.then17.do.body814_crit_edge

if.then17.do.body814_crit_edge:                   ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body814

if.end22:                                         ; preds = %if.then17
  %35 = ptrtoint ptr %u32tmp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %u32tmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp23 = icmp eq i32 %36, 1
  br i1 %cmp23, label %if.then25, label %if.end22.if.end37_crit_edge

if.end22.if.end37_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then25:                                        ; preds = %if.end22
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  %call27 = call i32 @regmap_write(ptr noundef %38, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.then25.do.body814_crit_edge

if.then25.do.body814_crit_edge:                   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body814

if.end30:                                         ; preds = %if.then25
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap, align 4
  %call32 = call i32 @regmap_write(ptr noundef %40, i32 noundef 178, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end30.if.end37_crit_edge, label %if.end30.do.body814_crit_edge

if.end30.do.body814_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body814

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.end37:                                         ; preds = %if.end30.if.end37_crit_edge, %if.end22.if.end37_crit_edge, %if.then13.if.end37_crit_edge
  %41 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap, align 4
  %call39 = call i32 @regmap_write(ptr noundef %42, i32 noundef 6, i32 noundef 224) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end37.if.end43_crit_edge, label %if.end37.do.body814_crit_edge

if.end37.do.body814_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body814

if.end37.if.end43_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.end43:                                         ; preds = %if.end37.if.end43_crit_edge, %if.end11.if.end43_crit_edge
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %43 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %set_params, align 4
  %tobool44.not = icmp eq ptr %44, null
  br i1 %tobool44.not, label %if.end43.if.end53_crit_edge, label %if.then45

if.end43.if.end53_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then45:                                        ; preds = %if.end43
  %call49 = call i32 %44(ptr noundef %fe) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then45.if.end53_crit_edge, label %if.then45.do.body814_crit_edge

if.then45.do.body814_crit_edge:                   ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body814

if.then45.if.end53_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.end53:                                         ; preds = %if.then45.if.end53_crit_edge, %if.end43.if.end53_crit_edge
  %get_frequency = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 9
  %45 = ptrtoint ptr %get_frequency to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %get_frequency, align 4
  %tobool56.not = icmp eq ptr %46, null
  br i1 %tobool56.not, label %if.else, label %if.then57

if.then57:                                        ; preds = %if.end53
  %call61 = call i32 %46(ptr noundef %fe, ptr noundef nonnull %tuner_frequency_khz) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.then57.if.end66_crit_edge, label %if.then57.do.body814_crit_edge

if.then57.do.body814_crit_edge:                   ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body814

if.then57.if.end66_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.else:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dtv_property_cache, align 4
  %49 = ptrtoint ptr %tuner_frequency_khz to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %tuner_frequency_khz, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.else, %if.then57.if.end66_crit_edge
  %50 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 116, i8 %51)
  %cmp69 = icmp eq i8 %51, 116
  br i1 %cmp69, label %if.then71, label %if.else98

if.then71:                                        ; preds = %if.end66
  %symbol_rate72 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %52 = ptrtoint ptr %symbol_rate72 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %symbol_rate72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 45010000, i32 %53)
  %cmp73 = icmp ugt i32 %53, 45010000
  %spec.select1175 = select i1 %cmp73, i32 110250000, i32 96000000
  %54 = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 14
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %spec.select1175, ptr %54, align 4
  %delivery_system79 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %56 = ptrtoint ptr %delivery_system79 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %delivery_system79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %57)
  %cmp80 = icmp eq i32 %57, 5
  %. = select i1 %cmp80, i32 96000000, i32 144000000
  %chiptype85 = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 13
  %58 = ptrtoint ptr %chiptype85 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %chiptype85, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %59)
  %cmp87 = icmp eq i8 %59, 2
  br i1 %cmp87, label %if.then89, label %if.then71.if.end92_crit_edge

if.then71.if.end92_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then89:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @m88ds3103b_select_mclk(ptr noundef %1)
  %div = udiv i32 %., 1000
  call fastcc void @m88ds3103b_set_mclk(ptr noundef %1, i32 noundef %div)
  br label %if.end92

if.end92:                                         ; preds = %if.then89, %if.then71.if.end92_crit_edge
  %60 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap, align 4
  %call94 = call i32 @regmap_write(ptr noundef %61, i32 noundef 6, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %if.end92.do.body814_crit_edge

if.end92.do.body814_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body814

if.end97:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #8
  br label %if.end155

if.else98:                                        ; preds = %if.end66
  %mclk99 = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 14
  %62 = ptrtoint ptr %mclk99 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 96000000, ptr %mclk99, align 4
  %cfg = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 5
  %63 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cfg, align 8
  %ts_mode = getelementptr inbounds %struct.m88ds3103_config, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %ts_mode to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %ts_mode, align 2
  %67 = zext i8 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %66, label %do.body121 [
    i8 0, label %if.else98.sw.epilog_crit_edge
    i8 1, label %if.else98.sw.epilog_crit_edge1176
    i8 2, label %if.else98.sw.bb102_crit_edge
    i8 3, label %if.else98.sw.bb102_crit_edge1177
  ]

if.else98.sw.bb102_crit_edge1177:                 ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb102

if.else98.sw.bb102_crit_edge:                     ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb102

if.else98.sw.epilog_crit_edge1176:                ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.else98.sw.epilog_crit_edge:                    ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb102:                                         ; preds = %if.else98.sw.bb102_crit_edge, %if.else98.sw.bb102_crit_edge1177
  %delivery_system103 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %68 = ptrtoint ptr %delivery_system103 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %delivery_system103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %69)
  %cmp104 = icmp eq i32 %69, 5
  br i1 %cmp104, label %sw.bb102.sw.bb138_crit_edge, label %if.else107

sw.bb102.sw.bb138_crit_edge:                      ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb138

if.else107:                                       ; preds = %sw.bb102
  %symbol_rate108 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %70 = ptrtoint ptr %symbol_rate108 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %symbol_rate108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18000000, i32 %71)
  %cmp109 = icmp ult i32 %71, 18000000
  br i1 %cmp109, label %if.else107.sw.bb138_crit_edge, label %if.else112

if.else107.sw.bb138_crit_edge:                    ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb138

if.else112:                                       ; preds = %if.else107
  call void @__sanitizer_cov_trace_const_cmp4(i32 28000000, i32 %71)
  %cmp114 = icmp ult i32 %71, 28000000
  br i1 %cmp114, label %if.else112.sw.bb139_crit_edge, label %if.else112.sw.bb140_crit_edge

if.else112.sw.bb140_crit_edge:                    ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb140

if.else112.sw.bb139_crit_edge:                    ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb139

do.body121:                                       ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_set_frontend.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_set_frontend, %if.then133)) #8
          to label %do.body814 [label %if.then133], !srcloc !261

if.then133:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #10
  %dev134 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_set_frontend.__UNIQUE_ID_ddebug303, ptr noundef %dev134, ptr noundef nonnull @.str.49) #8
  br label %do.body814

sw.epilog:                                        ; preds = %if.else98.sw.epilog_crit_edge, %if.else98.sw.epilog_crit_edge1176
  %ts_clk = getelementptr inbounds %struct.m88ds3103_config, ptr %64, i32 0, i32 4
  %72 = ptrtoint ptr %ts_clk to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ts_clk, align 4
  %74 = zext i32 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %73, label %sw.epilog.sw.epilog141_crit_edge [
    i32 96000000, label %sw.epilog.sw.bb138_crit_edge
    i32 144000000, label %sw.epilog.sw.bb139_crit_edge
    i32 192000000, label %sw.epilog.sw.bb140_crit_edge
  ]

sw.epilog.sw.bb140_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb140

sw.epilog.sw.bb139_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb139

sw.epilog.sw.bb138_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb138

sw.epilog.sw.epilog141_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog141

sw.bb138:                                         ; preds = %sw.epilog.sw.bb138_crit_edge, %if.else107.sw.bb138_crit_edge, %sw.bb102.sw.bb138_crit_edge
  br label %sw.epilog141

sw.bb139:                                         ; preds = %sw.epilog.sw.bb139_crit_edge, %if.else112.sw.bb139_crit_edge
  br label %sw.epilog141

sw.bb140:                                         ; preds = %sw.epilog.sw.bb140_crit_edge, %if.else112.sw.bb140_crit_edge
  br label %sw.epilog141

sw.epilog141:                                     ; preds = %sw.bb140, %sw.bb139, %sw.bb138, %sw.epilog.sw.epilog141_crit_edge
  %target_mclk.11144 = phi i32 [ %73, %sw.epilog.sw.epilog141_crit_edge ], [ 192000000, %sw.bb140 ], [ 144000000, %sw.bb139 ], [ 96000000, %sw.bb138 ]
  %u8tmp2.0 = phi i8 [ 0, %sw.epilog.sw.epilog141_crit_edge ], [ 0, %sw.bb140 ], [ 64, %sw.bb139 ], [ 64, %sw.bb138 ]
  %u8tmp1.0 = phi i8 [ 0, %sw.epilog.sw.epilog141_crit_edge ], [ 3, %sw.bb140 ], [ 0, %sw.bb139 ], [ 2, %sw.bb138 ]
  %75 = shl nuw i8 %u8tmp1.0, 6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %76 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %val.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #8
  %77 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 -1, ptr %tmp.i, align 1, !annotation !260
  %78 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_bulk_read(ptr noundef %79, i32 noundef 34, ptr noundef nonnull %tmp.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %m88ds3103_update_bits.exit, label %m88ds3103_update_bits.exit.thread

m88ds3103_update_bits.exit.thread:                ; preds = %sw.epilog141
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  br label %do.body814

m88ds3103_update_bits.exit:                       ; preds = %sw.epilog141
  %80 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %val.addr.i, align 1
  %and24.i = and i8 %81, -64
  %82 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %tmp.i, align 1
  %and9.i = and i8 %83, 63
  store i8 %and9.i, ptr %tmp.i, align 1
  %or25.i = or i8 %and9.i, %and24.i
  store i8 %or25.i, ptr %val.addr.i, align 1
  %84 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regmap, align 4
  %call17.i = call i32 @regmap_bulk_write(ptr noundef %85, i32 noundef 34, ptr noundef nonnull %val.addr.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool145.not = icmp eq i32 %call17.i, 0
  br i1 %tobool145.not, label %if.end147, label %m88ds3103_update_bits.exit.do.body814_crit_edge

m88ds3103_update_bits.exit.do.body814_crit_edge:  ; preds = %m88ds3103_update_bits.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body814

if.end147:                                        ; preds = %m88ds3103_update_bits.exit
  %call151 = call fastcc i32 @m88ds3103_update_bits(ptr noundef %1, i8 noundef zeroext 36, i8 noundef zeroext -64, i8 noundef zeroext %u8tmp2.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.end147.if.end155_crit_edge, label %if.end147.do.body814_crit_edge

if.end147.do.body814_crit_edge:                   ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body814

if.end147.if.end155_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end155

if.end155:                                        ; preds = %if.end147.if.end155_crit_edge, %if.end97
  %target_mclk.2 = phi i32 [ %., %if.end97 ], [ %target_mclk.11144, %if.end147.if.end155_crit_edge ]
  %u8tmp1.1 = phi i8 [ 0, %if.end97 ], [ %u8tmp1.0, %if.end147.if.end155_crit_edge ]
  %86 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regmap, align 4
  %call157 = call i32 @regmap_write(ptr noundef %87, i32 noundef 178, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %if.end160, label %if.end155.do.body814_crit_edge

if.end155.do.body814_crit_edge:                   ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body814

if.end160:                                        ; preds = %if.end155
  %88 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regmap, align 4
  %call162 = call i32 @regmap_write(ptr noundef %89, i32 noundef 0, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %tobool163.not = icmp eq i32 %call162, 0
  br i1 %tobool163.not, label %if.end165, label %if.end160.do.body814_crit_edge

if.end160.do.body814_crit_edge:                   ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body814

if.end165:                                        ; preds = %if.end160
  %delivery_system166 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %90 = ptrtoint ptr %delivery_system166 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %delivery_system166, align 4
  %92 = zext i32 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %91, label %do.body184 [
    i32 5, label %sw.bb167
    i32 6, label %sw.bb175
  ]

sw.bb167:                                         ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 116, i8 %94)
  %cmp170 = icmp eq i8 %94, 116
  %m88rs6000_dvbs_init_reg_vals.m88ds3103_dvbs_init_reg_vals = select i1 %cmp170, ptr @m88rs6000_dvbs_init_reg_vals, ptr @m88ds3103_dvbs_init_reg_vals
  %.1110 = select i1 %cmp170, i32 83, i32 80
  br label %sw.epilog201

sw.bb175:                                         ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 116, i8 %96)
  %cmp178 = icmp eq i8 %96, 116
  %m88rs6000_dvbs2_init_reg_vals.m88ds3103_dvbs2_init_reg_vals = select i1 %cmp178, ptr @m88rs6000_dvbs2_init_reg_vals, ptr @m88ds3103_dvbs2_init_reg_vals
  %.1111 = select i1 %cmp178, i32 86, i32 83
  br label %sw.epilog201

do.body184:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_set_frontend.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_set_frontend, %if.then196)) #8
          to label %do.body814 [label %if.then196], !srcloc !261

if.then196:                                       ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #10
  %dev197 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_set_frontend.__UNIQUE_ID_ddebug304, ptr noundef %dev197, ptr noundef nonnull @.str.50) #8
  br label %do.body814

sw.epilog201:                                     ; preds = %sw.bb175, %sw.bb167
  %init.0 = phi ptr [ %m88rs6000_dvbs_init_reg_vals.m88ds3103_dvbs_init_reg_vals, %sw.bb167 ], [ %m88rs6000_dvbs2_init_reg_vals.m88ds3103_dvbs2_init_reg_vals, %sw.bb175 ]
  %len.0 = phi i32 [ %.1110, %sw.bb167 ], [ %.1111, %sw.bb175 ]
  %delivery_system203 = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 7
  %97 = ptrtoint ptr %delivery_system203 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %delivery_system203, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %98)
  %cmp204.not = icmp eq i32 %91, %98
  br i1 %cmp204.not, label %sw.epilog201.if.end211_crit_edge, label %if.then206

sw.epilog201.if.end211_crit_edge:                 ; preds = %sw.epilog201
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end211

if.then206:                                       ; preds = %sw.epilog201
  %call207 = call fastcc i32 @m88ds3103_wr_reg_val_tab(ptr noundef %1, ptr noundef nonnull %init.0, i32 noundef %len.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207)
  %tobool208.not = icmp eq i32 %call207, 0
  br i1 %tobool208.not, label %if.then206.if.end211_crit_edge, label %if.then206.do.body814_crit_edge

if.then206.do.body814_crit_edge:                  ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body814

if.then206.if.end211_crit_edge:                   ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end211

if.end211:                                        ; preds = %if.then206.if.end211_crit_edge, %sw.epilog201.if.end211_crit_edge
  %99 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 116, i8 %100)
  %cmp214 = icmp eq i8 %100, 116
  br i1 %cmp214, label %if.then216, label %if.end211.if.end308_crit_edge

if.end211.if.end308_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end308

if.then216:                                       ; preds = %if.end211
  %101 = ptrtoint ptr %delivery_system166 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %delivery_system166, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %102)
  %cmp218 = icmp eq i32 %102, 6
  br i1 %cmp218, label %land.lhs.true, label %if.then216.if.end236_crit_edge

if.then216.if.end236_crit_edge:                   ; preds = %if.then216
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end236

land.lhs.true:                                    ; preds = %if.then216
  %symbol_rate220 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %103 = ptrtoint ptr %symbol_rate220 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %symbol_rate220, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000001, i32 %104)
  %cmp221 = icmp ult i32 %104, 5000001
  br i1 %cmp221, label %if.then223, label %land.lhs.true.if.end236_crit_edge

land.lhs.true.if.end236_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end236

if.then223:                                       ; preds = %land.lhs.true
  %105 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regmap, align 4
  %call225 = call i32 @regmap_write(ptr noundef %106, i32 noundef 192, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call225)
  %tobool226.not = icmp eq i32 %call225, 0
  br i1 %tobool226.not, label %if.end228, label %if.then223.do.body814_crit_edge

if.then223.do.body814_crit_edge:                  ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body814

if.end228:                                        ; preds = %if.then223
  %107 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 9, ptr %buf, align 1
  %108 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 34, ptr %5, align 1
  %109 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 -120, ptr %7, align 1
  %110 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regmap, align 4
  %call232 = call i32 @regmap_bulk_write(ptr noundef %111, i32 noundef 138, ptr noundef nonnull %buf, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call232)
  %tobool233.not = icmp eq i32 %call232, 0
  br i1 %tobool233.not, label %if.end228.if.end236_crit_edge, label %if.end228.do.body814_crit_edge

if.end228.do.body814_crit_edge:                   ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body814

if.end228.if.end236_crit_edge:                    ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end236

if.end236:                                        ; preds = %if.end228.if.end236_crit_edge, %land.lhs.true.if.end236_crit_edge, %if.then216.if.end236_crit_edge
  %call237 = call fastcc i32 @m88ds3103_update_bits(ptr noundef %1, i8 noundef zeroext -99, i8 noundef zeroext 8, i8 noundef zeroext 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call237)
  %tobool238.not = icmp eq i32 %call237, 0
  br i1 %tobool238.not, label %if.end240, label %if.end236.do.body814_crit_edge

if.end236.do.body814_crit_edge:                   ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body814

if.end240:                                        ; preds = %if.end236
  %chiptype241 = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 13
  %112 = ptrtoint ptr %chiptype241 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %chiptype241, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %113)
  %cmp243 = icmp eq i8 %113, 2
  br i1 %cmp243, label %if.then245, label %if.end240.if.end292_crit_edge

if.end240.if.end292_crit_edge:                    ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end292

if.then245:                                       ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #10
  %call246 = call fastcc i32 @m88ds3103b_dt_read(ptr noundef %1, i8 noundef zeroext 21)
  %conv247 = trunc i32 %call246 to i8
  %114 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %conv247, ptr %buf, align 1
  %call249 = call fastcc i32 @m88ds3103b_dt_read(ptr noundef %1, i8 noundef zeroext 22)
  %symbol_rate252 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %115 = ptrtoint ptr %symbol_rate252 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %symbol_rate252, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 45010000, i32 %116)
  %cmp253 = icmp ugt i32 %116, 45010000
  %117 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %buf, align 1
  %119 = and i8 %118, -4
  %120 = or i8 %119, 2
  %storemerge1174 = select i1 %cmp253, i8 %120, i8 %119
  %storemerge = select i1 %cmp253, i8 115, i8 96
  %.sink1173 = select i1 %cmp253, i32 110250000, i32 96000000
  store i8 %storemerge1174, ptr %buf, align 1
  %121 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %storemerge, ptr %5, align 1
  %122 = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 14
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %.sink1173, ptr %122, align 4
  %conv281 = zext i8 %storemerge1174 to i32
  call fastcc void @m88ds3103b_dt_write(ptr noundef %1, i32 noundef 21, i32 noundef %conv281)
  %124 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %5, align 1
  %conv284 = zext i8 %125 to i32
  call fastcc void @m88ds3103b_dt_write(ptr noundef %1, i32 noundef 22, i32 noundef %conv284)
  %126 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %regmap, align 4
  %call287 = call i32 @regmap_read(ptr noundef %127, i32 noundef 48, ptr noundef nonnull %u32tmp) #8
  %128 = ptrtoint ptr %u32tmp to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %u32tmp, align 4
  %and288 = and i32 %129, -129
  store i32 %and288, ptr %u32tmp, align 4
  %130 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regmap, align 4
  %and290 = and i32 %129, 127
  %call291 = call i32 @regmap_write(ptr noundef %131, i32 noundef 48, i32 noundef %and290) #8
  br label %if.end292

if.end292:                                        ; preds = %if.then245, %if.end240.if.end292_crit_edge
  %132 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regmap, align 4
  %call294 = call i32 @regmap_write(ptr noundef %133, i32 noundef 241, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call294)
  %tobool295.not = icmp eq i32 %call294, 0
  br i1 %tobool295.not, label %if.end297, label %if.end292.do.body814_crit_edge

if.end292.do.body814_crit_edge:                   ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body814

if.end297:                                        ; preds = %if.end292
  %134 = ptrtoint ptr %chiptype241 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %chiptype241, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %135)
  %cmp300.not = icmp eq i8 %135, 2
  br i1 %cmp300.not, label %if.end297.if.end308_crit_edge, label %if.then302

if.end297.if.end308_crit_edge:                    ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end308

if.then302:                                       ; preds = %if.end297
  %call303 = call fastcc i32 @m88ds3103_update_bits(ptr noundef %1, i8 noundef zeroext 48, i8 noundef zeroext -128, i8 noundef zeroext -128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call303)
  %tobool304.not = icmp eq i32 %call303, 0
  br i1 %tobool304.not, label %if.then302.if.end308_crit_edge, label %if.then302.do.body814_crit_edge

if.then302.do.body814_crit_edge:                  ; preds = %if.then302
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body814

if.then302.if.end308_crit_edge:                   ; preds = %if.then302
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end308

if.end308:                                        ; preds = %if.then302.if.end308_crit_edge, %if.end297.if.end308_crit_edge, %if.end211.if.end308_crit_edge
  %cfg309 = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 5
  %136 = ptrtoint ptr %cfg309 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %cfg309, align 8
  %ts_mode310 = getelementptr inbounds %struct.m88ds3103_config, ptr %137, i32 0, i32 3
  %138 = ptrtoint ptr %ts_mode310 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %ts_mode310, align 2
  %140 = zext i8 %139 to i64
  call void @__sanitizer_cov_trace_switch(i64 %140, ptr @__sancov_gen_cov_switch_values.85)
  switch i8 %139, label %do.body323 [
    i8 0, label %if.end308.sw.epilog340_crit_edge
    i8 1, label %sw.bb313
    i8 2, label %sw.bb314
    i8 3, label %sw.bb321
  ]

if.end308.sw.epilog340_crit_edge:                 ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog340

sw.bb313:                                         ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog340

sw.bb314:                                         ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #10
  %chiptype315 = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 13
  %141 = ptrtoint ptr %chiptype315 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %chiptype315, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %142)
  %cmp317 = icmp eq i8 %142, 2
  %spec.select = select i1 %cmp317, i8 1, i8 %u8tmp1.1
  %spec.select1112 = select i1 %cmp317, i8 1, i8 2
  br label %sw.epilog340

sw.bb321:                                         ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog340

do.body323:                                       ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_set_frontend.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_set_frontend, %if.then335)) #8
          to label %do.body814 [label %if.then335], !srcloc !261

if.then335:                                       ; preds = %do.body323
  call void @__sanitizer_cov_trace_pc() #10
  %dev336 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_set_frontend.__UNIQUE_ID_ddebug305, ptr noundef %dev336, ptr noundef nonnull @.str.49) #8
  br label %do.body814

sw.epilog340:                                     ; preds = %sw.bb321, %sw.bb314, %sw.bb313, %if.end308.sw.epilog340_crit_edge
  %u8tmp1.2 = phi i8 [ %u8tmp1.1, %sw.bb321 ], [ 32, %sw.bb313 ], [ %139, %if.end308.sw.epilog340_crit_edge ], [ %spec.select, %sw.bb314 ]
  %u8tmp.0 = phi i8 [ 3, %sw.bb321 ], [ 6, %sw.bb313 ], [ 6, %if.end308.sw.epilog340_crit_edge ], [ %spec.select1112, %sw.bb314 ]
  %ts_clk_pol = getelementptr inbounds %struct.m88ds3103_config, ptr %137, i32 0, i32 5
  %143 = ptrtoint ptr %ts_clk_pol to i32
  call void @__asan_load1_noabort(i32 %143)
  %bf.load = load i8, ptr %ts_clk_pol, align 4
  %144 = or i8 %u8tmp.0, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool342.not1162 = icmp slt i8 %bf.load, 0
  %spec.select1113 = select i1 %tobool342.not1162, i8 %144, i8 %u8tmp.0
  %145 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %regmap, align 4
  %conv349 = zext i8 %spec.select1113 to i32
  %call350 = call i32 @regmap_write(ptr noundef %146, i32 noundef 253, i32 noundef %conv349) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call350)
  %tobool351.not = icmp eq i32 %call350, 0
  br i1 %tobool351.not, label %if.end353, label %sw.epilog340.do.body814_crit_edge

sw.epilog340.do.body814_crit_edge:                ; preds = %sw.epilog340
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body814

if.end353:                                        ; preds = %sw.epilog340
  %147 = ptrtoint ptr %cfg309 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %cfg309, align 8
  %ts_mode355 = getelementptr inbounds %struct.m88ds3103_config, ptr %148, i32 0, i32 3
  %149 = ptrtoint ptr %ts_mode355 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %ts_mode355, align 2
  %151 = zext i8 %150 to i64
  call void @__sanitizer_cov_trace_switch(i64 %151, ptr @__sancov_gen_cov_switch_values.86)
  switch i8 %150, label %if.end353.sw.default373_crit_edge [
    i8 0, label %if.end353.sw.bb357_crit_edge
    i8 1, label %if.end353.sw.bb357_crit_edge1178
    i8 2, label %sw.bb362
  ]

if.end353.sw.bb357_crit_edge1178:                 ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb357

if.end353.sw.bb357_crit_edge:                     ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb357

if.end353.sw.default373_crit_edge:                ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default373

sw.bb357:                                         ; preds = %if.end353.sw.bb357_crit_edge, %if.end353.sw.bb357_crit_edge1178
  %call358 = call fastcc i32 @m88ds3103_update_bits(ptr noundef %1, i8 noundef zeroext 41, i8 noundef zeroext 32, i8 noundef zeroext %u8tmp1.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call358)
  %tobool359.not = icmp eq i32 %call358, 0
  br i1 %tobool359.not, label %sw.bb357.do.body391_crit_edge, label %sw.bb357.do.body814_crit_edge

sw.bb357.do.body814_crit_edge:                    ; preds = %sw.bb357
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body814

sw.bb357.do.body391_crit_edge:                    ; preds = %sw.bb357
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body391

sw.bb362:                                         ; preds = %if.end353
  %chiptype363 = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 13
  %152 = ptrtoint ptr %chiptype363 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %chiptype363, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %153)
  %cmp365 = icmp eq i8 %153, 2
  br i1 %cmp365, label %if.then367, label %sw.bb362.sw.default373_crit_edge

sw.bb362.sw.default373_crit_edge:                 ; preds = %sw.bb362
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default373

if.then367:                                       ; preds = %sw.bb362
  %call368 = call fastcc i32 @m88ds3103_update_bits(ptr noundef %1, i8 noundef zeroext 41, i8 noundef zeroext 1, i8 noundef zeroext %u8tmp1.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call368)
  %tobool369.not = icmp eq i32 %call368, 0
  br i1 %tobool369.not, label %if.then367.sw.default373_crit_edge, label %if.then367.do.body814_crit_edge

if.then367.do.body814_crit_edge:                  ; preds = %if.then367
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body814

if.then367.sw.default373_crit_edge:               ; preds = %if.then367
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default373

sw.default373:                                    ; preds = %if.then367.sw.default373_crit_edge, %sw.bb362.sw.default373_crit_edge, %if.end353.sw.default373_crit_edge
  %154 = ptrtoint ptr %cfg309 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %cfg309, align 8
  %ts_clk375 = getelementptr inbounds %struct.m88ds3103_config, ptr %155, i32 0, i32 4
  %156 = ptrtoint ptr %ts_clk375 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %ts_clk375, align 4
  %add = add i32 %target_mclk.2, -1
  %sub = add i32 %add, %157
  %div378 = udiv i32 %sub, %157
  %div3811105 = lshr i32 %div378, 1
  %conv383 = add nuw i32 %div3811105, 255
  %sub386 = add i32 %div378, 1
  %div3871106 = lshr i32 %sub386, 1
  %conv389 = add nuw i32 %div3871106, 255
  %phi.bo = and i32 %div378, 65535
  br label %do.body391

do.body391:                                       ; preds = %sw.default373, %sw.bb357.do.body391_crit_edge
  %u16tmp.0 = phi i32 [ %phi.bo, %sw.default373 ], [ 0, %sw.bb357.do.body391_crit_edge ]
  %u8tmp2.1 = phi i32 [ %conv389, %sw.default373 ], [ 63, %sw.bb357.do.body391_crit_edge ]
  %u8tmp1.3 = phi i32 [ %conv383, %sw.default373 ], [ 63, %sw.bb357.do.body391_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_set_frontend.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_set_frontend, %if.then403)) #8
          to label %do.end410 [label %if.then403], !srcloc !261

if.then403:                                       ; preds = %do.body391
  call void @__sanitizer_cov_trace_pc() #10
  %dev404 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %158 = ptrtoint ptr %cfg309 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %cfg309, align 8
  %ts_clk406 = getelementptr inbounds %struct.m88ds3103_config, ptr %159, i32 0, i32 4
  %160 = ptrtoint ptr %ts_clk406 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %ts_clk406, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_set_frontend.__UNIQUE_ID_ddebug306, ptr noundef %dev404, ptr noundef nonnull @.str.51, i32 noundef %target_mclk.2, i32 noundef %161, i32 noundef %u16tmp.0) #8
  br label %do.end410

do.end410:                                        ; preds = %if.then403, %do.body391
  %162 = lshr i32 %u8tmp1.3, 2
  %conv413 = and i32 %162, 15
  %163 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %regmap, align 4
  %call.i1134 = call i32 @regmap_update_bits_base(ptr noundef %164, i32 noundef 254, i32 noundef 15, i32 noundef %conv413, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1134)
  %tobool417.not = icmp eq i32 %call.i1134, 0
  br i1 %tobool417.not, label %if.end419, label %do.end410.do.body814_crit_edge

do.end410.do.body814_crit_edge:                   ; preds = %do.end410
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body814

if.end419:                                        ; preds = %do.end410
  %and421 = shl i32 %u8tmp1.3, 6
  %or425 = or i32 %and421, %u8tmp2.1
  %165 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %regmap, align 4
  %conv428 = and i32 %or425, 255
  %call429 = call i32 @regmap_write(ptr noundef %166, i32 noundef 234, i32 noundef %conv428) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call429)
  %tobool430.not = icmp eq i32 %call429, 0
  br i1 %tobool430.not, label %if.end432, label %if.end419.do.body814_crit_edge

if.end419.do.body814_crit_edge:                   ; preds = %if.end419
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body814

if.end432:                                        ; preds = %if.end419
  %symbol_rate433 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %167 = ptrtoint ptr %symbol_rate433 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %symbol_rate433, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000001, i32 %168)
  %cmp434 = icmp ult i32 %168, 3000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000001, i32 %168)
  %cmp439 = icmp ult i32 %168, 10000001
  %.1114 = select i1 %cmp439, i32 16, i32 6
  %u8tmp.2 = select i1 %cmp434, i32 32, i32 %.1114
  %chiptype445 = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 13
  %169 = ptrtoint ptr %chiptype445 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %chiptype445, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %170)
  %cmp447 = icmp eq i8 %170, 2
  br i1 %cmp447, label %if.then449, label %if.end432.if.end452_crit_edge

if.end432.if.end452_crit_edge:                    ; preds = %if.end432
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end452

if.then449:                                       ; preds = %if.end432
  call void @__sanitizer_cov_trace_pc() #10
  %div450 = udiv i32 %target_mclk.2, 1000
  call fastcc void @m88ds3103b_set_mclk(ptr noundef %1, i32 noundef %div450)
  br label %if.end452

if.end452:                                        ; preds = %if.then449, %if.end432.if.end452_crit_edge
  %171 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %regmap, align 4
  %call454 = call i32 @regmap_write(ptr noundef %172, i32 noundef 195, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call454)
  %tobool455.not = icmp eq i32 %call454, 0
  br i1 %tobool455.not, label %if.end457, label %if.end452.do.body814_crit_edge

if.end452.do.body814_crit_edge:                   ; preds = %if.end452
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body814

if.end457:                                        ; preds = %if.end452
  %173 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %regmap, align 4
  %call460 = call i32 @regmap_write(ptr noundef %174, i32 noundef 200, i32 noundef %u8tmp.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call460)
  %tobool461.not = icmp eq i32 %call460, 0
  br i1 %tobool461.not, label %if.end463, label %if.end457.do.body814_crit_edge

if.end457.do.body814_crit_edge:                   ; preds = %if.end457
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body814

if.end463:                                        ; preds = %if.end457
  %175 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %regmap, align 4
  %call465 = call i32 @regmap_write(ptr noundef %176, i32 noundef 196, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call465)
  %tobool466.not = icmp eq i32 %call465, 0
  br i1 %tobool466.not, label %if.end468, label %if.end463.do.body814_crit_edge

if.end463.do.body814_crit_edge:                   ; preds = %if.end463
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body814

if.end468:                                        ; preds = %if.end463
  %177 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %regmap, align 4
  %call470 = call i32 @regmap_write(ptr noundef %178, i32 noundef 199, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call470)
  %tobool471.not = icmp eq i32 %call470, 0
  br i1 %tobool471.not, label %if.end473, label %if.end468.do.body814_crit_edge

if.end468.do.body814_crit_edge:                   ; preds = %if.end468
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body814

if.end473:                                        ; preds = %if.end468
  %mclk474 = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 14
  %179 = ptrtoint ptr %mclk474 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %mclk474, align 4
  %181 = ptrtoint ptr %symbol_rate433 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %symbol_rate433, align 4
  %conv476 = zext i32 %182 to i64
  %mul = shl nuw nsw i64 %conv476, 16
  %div477 = sdiv i32 %180, 2
  %conv478 = sext i32 %div477 to i64
  %add479 = add nsw i64 %mul, %conv478
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add479)
  %cmp661 = icmp ult i64 %add479, 4294967296
  br i1 %cmp661, label %if.then669, label %if.else675, !prof !263

if.then669:                                       ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #10
  %conv670 = trunc i64 %add479 to i32
  %div673 = udiv i32 %conv670, %180
  %extract.t1163 = trunc i32 %div673 to i8
  %183 = lshr i32 %div673, 8
  %extract.t1168 = trunc i32 %183 to i8
  br label %if.end679

if.else675:                                       ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #10
  %184 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %180, i64 %add479) #13, !srcloc !264
  %asmresult1.i = extractvalue { i64, i64 } %184, 1
  %extract.t1164 = trunc i64 %asmresult1.i to i8
  %extract1169 = lshr i64 %asmresult1.i, 8
  %extract.t1170 = trunc i64 %extract1169 to i8
  br label %if.end679

if.end679:                                        ; preds = %if.else675, %if.then669
  %_tmp.0.off0 = phi i8 [ %extract.t1163, %if.then669 ], [ %extract.t1164, %if.else675 ]
  %_tmp.0.off8 = phi i8 [ %extract.t1168, %if.then669 ], [ %extract.t1170, %if.else675 ]
  %185 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %_tmp.0.off0, ptr %buf, align 1
  %186 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %_tmp.0.off8, ptr %5, align 1
  %187 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %regmap, align 4
  %call695 = call i32 @regmap_bulk_write(ptr noundef %188, i32 noundef 97, ptr noundef nonnull %buf, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call695)
  %tobool696.not = icmp eq i32 %call695, 0
  br i1 %tobool696.not, label %if.end698, label %if.end679.do.body814_crit_edge

if.end679.do.body814_crit_edge:                   ; preds = %if.end679
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body814

if.end698:                                        ; preds = %if.end679
  %189 = ptrtoint ptr %cfg309 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %cfg309, align 8
  %spec_inv = getelementptr inbounds %struct.m88ds3103_config, ptr %190, i32 0, i32 5
  %191 = ptrtoint ptr %spec_inv to i32
  call void @__asan_load1_noabort(i32 %191)
  %bf.load700 = load i8, ptr %spec_inv, align 4
  %192 = lshr i8 %bf.load700, 5
  %193 = and i8 %192, 2
  %call705 = call fastcc i32 @m88ds3103_update_bits(ptr noundef %1, i8 noundef zeroext 77, i8 noundef zeroext 2, i8 noundef zeroext %193)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call705)
  %tobool706.not = icmp eq i32 %call705, 0
  br i1 %tobool706.not, label %if.end708, label %if.end698.do.body814_crit_edge

if.end698.do.body814_crit_edge:                   ; preds = %if.end698
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body814

if.end708:                                        ; preds = %if.end698
  %194 = ptrtoint ptr %cfg309 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %cfg309, align 8
  %agc_inv = getelementptr inbounds %struct.m88ds3103_config, ptr %195, i32 0, i32 5
  %196 = ptrtoint ptr %agc_inv to i32
  call void @__asan_load1_noabort(i32 %196)
  %bf.load710 = load i8, ptr %agc_inv, align 4
  %197 = lshr i8 %bf.load710, 1
  %198 = and i8 %197, 16
  %call716 = call fastcc i32 @m88ds3103_update_bits(ptr noundef %1, i8 noundef zeroext 48, i8 noundef zeroext 16, i8 noundef zeroext %198)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call716)
  %tobool717.not = icmp eq i32 %call716, 0
  br i1 %tobool717.not, label %if.end719, label %if.end708.do.body814_crit_edge

if.end708.do.body814_crit_edge:                   ; preds = %if.end708
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body814

if.end719:                                        ; preds = %if.end708
  %199 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %regmap, align 4
  %201 = ptrtoint ptr %cfg309 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %cfg309, align 8
  %agc = getelementptr inbounds %struct.m88ds3103_config, ptr %202, i32 0, i32 8
  %203 = ptrtoint ptr %agc to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %agc, align 1
  %conv722 = zext i8 %204 to i32
  %call723 = call i32 @regmap_write(ptr noundef %200, i32 noundef 51, i32 noundef %conv722) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call723)
  %tobool724.not = icmp eq i32 %call723, 0
  br i1 %tobool724.not, label %if.end726, label %if.end719.do.body814_crit_edge

if.end719.do.body814_crit_edge:                   ; preds = %if.end719
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body814

if.end726:                                        ; preds = %if.end719
  %205 = ptrtoint ptr %chiptype445 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %chiptype445, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %206)
  %cmp729 = icmp eq i8 %206, 2
  br i1 %cmp729, label %if.then731, label %if.end726.do.body746_crit_edge

if.end726.do.body746_crit_edge:                   ; preds = %if.end726
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body746

if.then731:                                       ; preds = %if.end726
  %207 = ptrtoint ptr %delivery_system166 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %delivery_system166, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %208)
  %cmp733 = icmp eq i32 %208, 5
  %conv736 = select i1 %cmp733, i8 16, i8 0
  %call737 = call fastcc i32 @m88ds3103_update_bits(ptr noundef %1, i8 noundef zeroext 41, i8 noundef zeroext 16, i8 noundef zeroext %conv736)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call737)
  %tobool738.not = icmp eq i32 %call737, 0
  br i1 %tobool738.not, label %if.end740, label %if.then731.do.body814_crit_edge

if.then731.do.body814_crit_edge:                  ; preds = %if.then731
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body814

if.end740:                                        ; preds = %if.then731
  %call741 = call fastcc i32 @m88ds3103_update_bits(ptr noundef %1, i8 noundef zeroext -55, i8 noundef zeroext 8, i8 noundef zeroext 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call741)
  %tobool742.not = icmp eq i32 %call741, 0
  br i1 %tobool742.not, label %if.end740.do.body746_crit_edge, label %if.end740.do.body814_crit_edge

if.end740.do.body814_crit_edge:                   ; preds = %if.end740
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body814

if.end740.do.body746_crit_edge:                   ; preds = %if.end740
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body746

do.body746:                                       ; preds = %if.end740.do.body746_crit_edge, %if.end726.do.body746_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_set_frontend.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_set_frontend, %if.then758)) #8
          to label %do.end764 [label %if.then758], !srcloc !261

if.then758:                                       ; preds = %do.body746
  call void @__sanitizer_cov_trace_pc() #10
  %dev759 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %209 = ptrtoint ptr %tuner_frequency_khz to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %tuner_frequency_khz, align 4
  %211 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %dtv_property_cache, align 4
  %sub761 = sub i32 %210, %212
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_set_frontend.__UNIQUE_ID_ddebug307, ptr noundef %dev759, ptr noundef nonnull @.str.52, i32 noundef %sub761) #8
  br label %do.end764

do.end764:                                        ; preds = %if.then758, %do.body746
  %213 = ptrtoint ptr %tuner_frequency_khz to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %tuner_frequency_khz, align 4
  %215 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %dtv_property_cache, align 4
  %sub766 = sub i32 %214, %216
  %mul767 = shl i32 %sub766, 16
  %217 = ptrtoint ptr %mclk474 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %mclk474, align 4
  %div770 = sdiv i32 %218, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mul767)
  %cmp772 = icmp slt i32 %mul767, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %218)
  %cmp774 = icmp sgt i32 %218, 999
  %cmp776 = xor i1 %cmp774, %cmp772
  %add780.pn.v.v = select i1 %cmp776, i32 2000, i32 -2000
  %add780.pn.v = sdiv i32 %218, %add780.pn.v.v
  %add780.pn = add i32 %mul767, %add780.pn.v
  %cond787 = sdiv i32 %add780.pn, %div770
  %conv790 = trunc i32 %cond787 to i8
  %219 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %conv790, ptr %buf, align 1
  %220 = lshr i32 %cond787, 8
  %conv794 = trunc i32 %220 to i8
  %221 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 %conv794, ptr %5, align 1
  %222 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %regmap, align 4
  %call798 = call i32 @regmap_bulk_write(ptr noundef %223, i32 noundef 94, ptr noundef nonnull %buf, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call798)
  %tobool799.not = icmp eq i32 %call798, 0
  br i1 %tobool799.not, label %if.end801, label %do.end764.do.body814_crit_edge

do.end764.do.body814_crit_edge:                   ; preds = %do.end764
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body814

if.end801:                                        ; preds = %do.end764
  %224 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %regmap, align 4
  %call803 = call i32 @regmap_write(ptr noundef %225, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call803)
  %tobool804.not = icmp eq i32 %call803, 0
  br i1 %tobool804.not, label %if.end806, label %if.end801.do.body814_crit_edge

if.end801.do.body814_crit_edge:                   ; preds = %if.end801
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body814

if.end806:                                        ; preds = %if.end801
  %226 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %regmap, align 4
  %call808 = call i32 @regmap_write(ptr noundef %227, i32 noundef 178, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call808)
  %tobool809.not = icmp eq i32 %call808, 0
  br i1 %tobool809.not, label %if.end811, label %if.end806.do.body814_crit_edge

if.end806.do.body814_crit_edge:                   ; preds = %if.end806
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body814

if.end811:                                        ; preds = %if.end806
  call void @__sanitizer_cov_trace_pc() #10
  %228 = ptrtoint ptr %delivery_system166 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %delivery_system166, align 4
  %230 = ptrtoint ptr %delivery_system203 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %229, ptr %delivery_system203, align 4
  br label %cleanup

do.body814:                                       ; preds = %if.end806.do.body814_crit_edge, %if.end801.do.body814_crit_edge, %do.end764.do.body814_crit_edge, %if.end740.do.body814_crit_edge, %if.then731.do.body814_crit_edge, %if.end719.do.body814_crit_edge, %if.end708.do.body814_crit_edge, %if.end698.do.body814_crit_edge, %if.end679.do.body814_crit_edge, %if.end468.do.body814_crit_edge, %if.end463.do.body814_crit_edge, %if.end457.do.body814_crit_edge, %if.end452.do.body814_crit_edge, %if.end419.do.body814_crit_edge, %do.end410.do.body814_crit_edge, %if.then367.do.body814_crit_edge, %sw.bb357.do.body814_crit_edge, %sw.epilog340.do.body814_crit_edge, %if.then335, %do.body323, %if.then302.do.body814_crit_edge, %if.end292.do.body814_crit_edge, %if.end236.do.body814_crit_edge, %if.end228.do.body814_crit_edge, %if.then223.do.body814_crit_edge, %if.then206.do.body814_crit_edge, %if.then196, %do.body184, %if.end160.do.body814_crit_edge, %if.end155.do.body814_crit_edge, %if.end147.do.body814_crit_edge, %m88ds3103_update_bits.exit.do.body814_crit_edge, %m88ds3103_update_bits.exit.thread, %if.then133, %do.body121, %if.end92.do.body814_crit_edge, %if.then57.do.body814_crit_edge, %if.then45.do.body814_crit_edge, %if.end37.do.body814_crit_edge, %if.end30.do.body814_crit_edge, %if.then25.do.body814_crit_edge, %if.then17.do.body814_crit_edge, %if.end7.do.body814_crit_edge, %do.end.do.body814_crit_edge
  %ret.0 = phi i32 [ %call8, %if.end7.do.body814_crit_edge ], [ %call19, %if.then17.do.body814_crit_edge ], [ %call27, %if.then25.do.body814_crit_edge ], [ %call32, %if.end30.do.body814_crit_edge ], [ %call39, %if.end37.do.body814_crit_edge ], [ %call49, %if.then45.do.body814_crit_edge ], [ %call61, %if.then57.do.body814_crit_edge ], [ %call94, %if.end92.do.body814_crit_edge ], [ %call157, %if.end155.do.body814_crit_edge ], [ %call162, %if.end160.do.body814_crit_edge ], [ %call207, %if.then206.do.body814_crit_edge ], [ %call225, %if.then223.do.body814_crit_edge ], [ %call232, %if.end228.do.body814_crit_edge ], [ %call237, %if.end236.do.body814_crit_edge ], [ %call294, %if.end292.do.body814_crit_edge ], [ %call303, %if.then302.do.body814_crit_edge ], [ %call350, %sw.epilog340.do.body814_crit_edge ], [ %call.i1134, %do.end410.do.body814_crit_edge ], [ %call429, %if.end419.do.body814_crit_edge ], [ %call454, %if.end452.do.body814_crit_edge ], [ %call460, %if.end457.do.body814_crit_edge ], [ %call465, %if.end463.do.body814_crit_edge ], [ %call470, %if.end468.do.body814_crit_edge ], [ %call695, %if.end679.do.body814_crit_edge ], [ %call705, %if.end698.do.body814_crit_edge ], [ %call716, %if.end708.do.body814_crit_edge ], [ %call723, %if.end719.do.body814_crit_edge ], [ %call737, %if.then731.do.body814_crit_edge ], [ %call741, %if.end740.do.body814_crit_edge ], [ %call798, %do.end764.do.body814_crit_edge ], [ %call803, %if.end801.do.body814_crit_edge ], [ %call808, %if.end806.do.body814_crit_edge ], [ %call368, %if.then367.do.body814_crit_edge ], [ %call358, %sw.bb357.do.body814_crit_edge ], [ %call17.i, %m88ds3103_update_bits.exit.do.body814_crit_edge ], [ %call151, %if.end147.do.body814_crit_edge ], [ -11, %do.end.do.body814_crit_edge ], [ -22, %if.then133 ], [ -22, %if.then196 ], [ -22, %if.then335 ], [ -22, %do.body121 ], [ %call.i, %m88ds3103_update_bits.exit.thread ], [ -22, %do.body184 ], [ -22, %do.body323 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_set_frontend.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_set_frontend, %if.then826)) #8
          to label %cleanup [label %if.then826], !srcloc !261

if.then826:                                       ; preds = %do.body814
  call void @__sanitizer_cov_trace_pc() #10
  %dev827 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_set_frontend.__UNIQUE_ID_ddebug308, ptr noundef %dev827, ptr noundef nonnull @.str.11, i32 noundef %ret.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then826, %do.body814, %if.end811
  %retval.0 = phi i32 [ 0, %if.end811 ], [ %ret.0, %if.then826 ], [ %ret.0, %do.body814 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u32tmp) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tuner_frequency_khz) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @m88ds3103_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %s) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3000, ptr %s, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88ds3103_get_frontend(ptr nocapture noundef readonly %fe, ptr noundef %c) #0 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #8
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %buf, align 1, !annotation !260
  %5 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !260
  %7 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !260
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_get_frontend.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_get_frontend, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !261

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_get_frontend.__UNIQUE_ID_ddebug316, ptr noundef %dev4, ptr noundef nonnull @.str.17) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %warm = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %warm to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %warm, align 8, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not = icmp eq i8 %10, 0
  br i1 %tobool5.not, label %do.end.do.body422_crit_edge, label %lor.lhs.false

do.end.do.body422_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body422

lor.lhs.false:                                    ; preds = %do.end
  %fe_status = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %fe_status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fe_status, align 8
  %and = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %lor.lhs.false.do.body422_crit_edge, label %if.end8

lor.lhs.false.do.body422_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body422

if.end8:                                          ; preds = %lor.lhs.false
  %delivery_system = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 15
  %13 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %delivery_system, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %14, label %do.body192 [
    i32 5, label %sw.bb
    i32 6, label %sw.bb55
  ]

sw.bb:                                            ; preds = %if.end8
  %regmap = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call9 = call i32 @regmap_bulk_read(ptr noundef %17, i32 noundef 224, ptr noundef nonnull %buf, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %sw.bb.do.body422_crit_edge

sw.bb.do.body422_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body422

if.end12:                                         ; preds = %sw.bb
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call15 = call i32 @regmap_bulk_read(ptr noundef %19, i32 noundef 230, ptr noundef %5, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end12.do.body422_crit_edge

if.end12.do.body422_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body422

if.end18:                                         ; preds = %if.end12
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %buf, align 1
  %22 = lshr i8 %21, 2
  %.lobit606 = and i8 %22, 1
  %23 = zext i8 %.lobit606 to i32
  %24 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %23, ptr %24, align 4
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %5, align 1
  %28 = lshr i8 %27, 5
  %29 = zext i8 %28 to i32
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %29, label %do.body37 [
    i32 0, label %sw.bb28
    i32 1, label %sw.bb29
    i32 2, label %sw.bb31
    i32 3, label %sw.bb33
    i32 4, label %sw.bb35
  ]

sw.bb28:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %fec_inner = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 5
  %31 = ptrtoint ptr %fec_inner to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 7, ptr %fec_inner, align 4
  br label %sw.epilog54

sw.bb29:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %fec_inner30 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 5
  %32 = ptrtoint ptr %fec_inner30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 5, ptr %fec_inner30, align 4
  br label %sw.epilog54

sw.bb31:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %fec_inner32 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 5
  %33 = ptrtoint ptr %fec_inner32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 3, ptr %fec_inner32, align 4
  br label %sw.epilog54

sw.bb33:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %fec_inner34 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 5
  %34 = ptrtoint ptr %fec_inner34 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %fec_inner34, align 4
  br label %sw.epilog54

sw.bb35:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %fec_inner36 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 5
  %35 = ptrtoint ptr %fec_inner36 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %fec_inner36, align 4
  br label %sw.epilog54

do.body37:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_get_frontend.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_get_frontend, %if.then49)) #8
          to label %sw.epilog54 [label %if.then49], !srcloc !261

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #10
  %dev50 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_get_frontend.__UNIQUE_ID_ddebug317, ptr noundef %dev50, ptr noundef nonnull @.str.60) #8
  br label %sw.epilog54

sw.epilog54:                                      ; preds = %if.then49, %do.body37, %sw.bb35, %sw.bb33, %sw.bb31, %sw.bb29, %sw.bb28
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 1
  %36 = ptrtoint ptr %modulation to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %modulation, align 4
  br label %sw.epilog209

sw.bb55:                                          ; preds = %if.end8
  %regmap56 = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 3
  %37 = ptrtoint ptr %regmap56 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap56, align 4
  %call58 = call i32 @regmap_bulk_read(ptr noundef %38, i32 noundef 126, ptr noundef nonnull %buf, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %sw.bb55.do.body422_crit_edge

sw.bb55.do.body422_crit_edge:                     ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body422

if.end61:                                         ; preds = %sw.bb55
  %39 = ptrtoint ptr %regmap56 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap56, align 4
  %call64 = call i32 @regmap_bulk_read(ptr noundef %40, i32 noundef 137, ptr noundef %5, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end61.do.body422_crit_edge

if.end61.do.body422_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body422

if.end67:                                         ; preds = %if.end61
  %41 = ptrtoint ptr %regmap56 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap56, align 4
  %call70 = call i32 @regmap_bulk_read(ptr noundef %42, i32 noundef 242, ptr noundef %7, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %if.end67.do.body422_crit_edge

if.end67.do.body422_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body422

if.end73:                                         ; preds = %if.end67
  %43 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %buf, align 1
  %45 = and i8 %44, 15
  %and77 = zext i8 %45 to i32
  %46 = zext i32 %and77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %and77, label %do.body97 [
    i32 2, label %sw.bb78
    i32 3, label %sw.bb80
    i32 4, label %sw.bb82
    i32 5, label %sw.bb84
    i32 6, label %sw.bb86
    i32 7, label %sw.bb88
    i32 8, label %sw.bb90
    i32 9, label %sw.bb92
    i32 10, label %sw.bb94
  ]

sw.bb78:                                          ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  %fec_inner79 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 5
  %47 = ptrtoint ptr %fec_inner79 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 12, ptr %fec_inner79, align 4
  br label %sw.epilog114

sw.bb80:                                          ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  %fec_inner81 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 5
  %48 = ptrtoint ptr %fec_inner81 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %fec_inner81, align 4
  br label %sw.epilog114

sw.bb82:                                          ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  %fec_inner83 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 5
  %49 = ptrtoint ptr %fec_inner83 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 10, ptr %fec_inner83, align 4
  br label %sw.epilog114

sw.bb84:                                          ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  %fec_inner85 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 5
  %50 = ptrtoint ptr %fec_inner85 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %fec_inner85, align 4
  br label %sw.epilog114

sw.bb86:                                          ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  %fec_inner87 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 5
  %51 = ptrtoint ptr %fec_inner87 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 3, ptr %fec_inner87, align 4
  br label %sw.epilog114

sw.bb88:                                          ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  %fec_inner89 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 5
  %52 = ptrtoint ptr %fec_inner89 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 4, ptr %fec_inner89, align 4
  br label %sw.epilog114

sw.bb90:                                          ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  %fec_inner91 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 5
  %53 = ptrtoint ptr %fec_inner91 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 5, ptr %fec_inner91, align 4
  br label %sw.epilog114

sw.bb92:                                          ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  %fec_inner93 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 5
  %54 = ptrtoint ptr %fec_inner93 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 8, ptr %fec_inner93, align 4
  br label %sw.epilog114

sw.bb94:                                          ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  %fec_inner95 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 5
  %55 = ptrtoint ptr %fec_inner95 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 11, ptr %fec_inner95, align 4
  br label %sw.epilog114

do.body97:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_get_frontend.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_get_frontend, %if.then109)) #8
          to label %sw.epilog114 [label %if.then109], !srcloc !261

if.then109:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #10
  %dev110 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_get_frontend.__UNIQUE_ID_ddebug318, ptr noundef %dev110, ptr noundef nonnull @.str.60) #8
  br label %sw.epilog114

sw.epilog114:                                     ; preds = %if.then109, %do.body97, %sw.bb94, %sw.bb92, %sw.bb90, %sw.bb88, %sw.bb86, %sw.bb84, %sw.bb82, %sw.bb80, %sw.bb78
  %56 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %buf, align 1
  %58 = lshr i8 %57, 5
  %.lobit = and i8 %58, 1
  %59 = xor i8 %.lobit, 1
  %60 = zext i8 %59 to i32
  %61 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 13
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %60, ptr %61, align 4
  %63 = lshr i8 %57, 6
  %64 = zext i8 %63 to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.m88ds3103_get_frontend, i32 0, i32 %64
  %65 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %65)
  %switch.load = load i32, ptr %switch.gep, align 4
  %modulation134 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 1
  %66 = ptrtoint ptr %modulation134 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %switch.load, ptr %modulation134, align 4
  %67 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %5, align 1
  %.lobit605 = lshr i8 %68, 7
  %69 = zext i8 %.lobit605 to i32
  %70 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %69, ptr %70, align 4
  %72 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %7, align 1
  %74 = and i8 %73, 3
  %and166 = zext i8 %74 to i32
  %75 = zext i32 %and166 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %and166, label %do.body173 [
    i32 0, label %sw.bb167
    i32 1, label %sw.bb168
    i32 2, label %sw.bb170
  ]

sw.bb167:                                         ; preds = %sw.epilog114
  call void @__sanitizer_cov_trace_pc() #10
  %rolloff = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 14
  %76 = ptrtoint ptr %rolloff to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %rolloff, align 4
  br label %sw.epilog209

sw.bb168:                                         ; preds = %sw.epilog114
  call void @__sanitizer_cov_trace_pc() #10
  %rolloff169 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 14
  %77 = ptrtoint ptr %rolloff169 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 2, ptr %rolloff169, align 4
  br label %sw.epilog209

sw.bb170:                                         ; preds = %sw.epilog114
  call void @__sanitizer_cov_trace_pc() #10
  %rolloff171 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 14
  %78 = ptrtoint ptr %rolloff171 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %rolloff171, align 4
  br label %sw.epilog209

do.body173:                                       ; preds = %sw.epilog114
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_get_frontend.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_get_frontend, %if.then185)) #8
          to label %sw.epilog209 [label %if.then185], !srcloc !261

if.then185:                                       ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #10
  %dev186 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_get_frontend.__UNIQUE_ID_ddebug320, ptr noundef %dev186, ptr noundef nonnull @.str.62) #8
  br label %sw.epilog209

do.body192:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_get_frontend.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_get_frontend, %if.then204)) #8
          to label %do.body422 [label %if.then204], !srcloc !261

if.then204:                                       ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #10
  %dev205 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_get_frontend.__UNIQUE_ID_ddebug321, ptr noundef %dev205, ptr noundef nonnull @.str.50) #8
  br label %do.body422

sw.epilog209:                                     ; preds = %if.then185, %do.body173, %sw.bb170, %sw.bb168, %sw.bb167, %sw.epilog54
  %regmap210 = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 3
  %79 = ptrtoint ptr %regmap210 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regmap210, align 4
  %call211 = call i32 @regmap_bulk_read(ptr noundef %80, i32 noundef 109, ptr noundef nonnull %buf, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211)
  %tobool212.not = icmp eq i32 %call211, 0
  br i1 %tobool212.not, label %if.end418, label %sw.epilog209.do.body422_crit_edge

sw.epilog209.do.body422_crit_edge:                ; preds = %sw.epilog209
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body422

if.end418:                                        ; preds = %sw.epilog209
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %5, align 1
  %conv216 = zext i8 %82 to i32
  %shl = shl nuw nsw i32 %conv216, 8
  %83 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %buf, align 1
  %conv218 = zext i8 %84 to i32
  %or = or i32 %shl, %conv218
  %conv220 = zext i32 %or to i64
  %mclk = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 14
  %85 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %mclk, align 4
  %conv221 = sext i32 %86 to i64
  %mul = mul nsw i64 %conv220, %conv221
  %add = add nsw i64 %mul, 32768
  %shr237 = lshr i64 %add, 16
  %extract.t = trunc i64 %shr237 to i32
  %symbol_rate = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 10
  %87 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %extract.t, ptr %symbol_rate, align 4
  br label %cleanup

do.body422:                                       ; preds = %sw.epilog209.do.body422_crit_edge, %if.then204, %do.body192, %if.end67.do.body422_crit_edge, %if.end61.do.body422_crit_edge, %sw.bb55.do.body422_crit_edge, %if.end12.do.body422_crit_edge, %sw.bb.do.body422_crit_edge, %lor.lhs.false.do.body422_crit_edge, %do.end.do.body422_crit_edge
  %ret.0 = phi i32 [ %call58, %sw.bb55.do.body422_crit_edge ], [ %call64, %if.end61.do.body422_crit_edge ], [ %call70, %if.end67.do.body422_crit_edge ], [ %call211, %sw.epilog209.do.body422_crit_edge ], [ %call9, %sw.bb.do.body422_crit_edge ], [ %call15, %if.end12.do.body422_crit_edge ], [ 0, %lor.lhs.false.do.body422_crit_edge ], [ 0, %do.end.do.body422_crit_edge ], [ -22, %if.then204 ], [ -22, %do.body192 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_get_frontend.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_get_frontend, %if.then434)) #8
          to label %cleanup [label %if.then434], !srcloc !261

if.then434:                                       ; preds = %do.body422
  call void @__sanitizer_cov_trace_pc() #10
  %dev435 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_get_frontend.__UNIQUE_ID_ddebug322, ptr noundef %dev435, ptr noundef nonnull @.str.11, i32 noundef %ret.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then434, %do.body422, %if.end418
  %retval.0 = phi i32 [ 0, %if.end418 ], [ %ret.0, %if.then434 ], [ %ret.0, %do.body422 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88ds3103_read_status(ptr nocapture noundef %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %utmp = alloca i32, align 4
  %buf = alloca [3 x i8], align 1
  %utmp154 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %utmp) #8
  %4 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %utmp, align 4, !annotation !260
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #8
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %buf, align 1, !annotation !260
  %6 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1, !annotation !260
  %8 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %8, align 1, !annotation !260
  %10 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %status, align 4
  %warm = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %warm to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %warm, align 8, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %entry.do.body309_crit_edge, label %if.end

entry.do.body309_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body309

if.end:                                           ; preds = %entry
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %13 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %delivery_system, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %14, label %do.body [
    i32 5, label %sw.bb
    i32 6, label %sw.bb7
  ]

sw.bb:                                            ; preds = %if.end
  %regmap = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %17, i32 noundef 209, ptr noundef nonnull %utmp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %sw.bb.do.body309_crit_edge

sw.bb.do.body309_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body309

if.end4:                                          ; preds = %sw.bb
  %18 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %utmp, align 4
  %and = and i32 %19, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and)
  %cmp = icmp eq i32 %and, 7
  br i1 %cmp, label %if.end4.sw.epilog.sink.split_crit_edge, label %if.end4.sw.epilog_crit_edge

if.end4.sw.epilog_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end4.sw.epilog.sink.split_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.bb7:                                           ; preds = %if.end
  %regmap8 = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap8, align 4
  %call9 = call i32 @regmap_read(ptr noundef %21, i32 noundef 13, ptr noundef nonnull %utmp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %sw.bb7.do.body309_crit_edge

sw.bb7.do.body309_crit_edge:                      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body309

if.end12:                                         ; preds = %sw.bb7
  %22 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %utmp, align 4
  %and13 = and i32 %23, 143
  call void @__sanitizer_cov_trace_const_cmp4(i32 143, i32 %and13)
  %cmp14 = icmp eq i32 %and13, 143
  br i1 %cmp14, label %if.end12.sw.epilog.sink.split_crit_edge, label %if.end12.sw.epilog_crit_edge

if.end12.sw.epilog_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end12.sw.epilog.sink.split_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_read_status.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_read_status, %if.then21)) #8
          to label %do.body309 [label %if.then21], !srcloc !261

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev22 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_read_status.__UNIQUE_ID_ddebug296, ptr noundef %dev22, ptr noundef nonnull @.str.50) #8
  br label %do.body309

sw.epilog.sink.split:                             ; preds = %if.end12.sw.epilog.sink.split_crit_edge, %if.end4.sw.epilog.sink.split_crit_edge
  %24 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 31, ptr %status, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end12.sw.epilog_crit_edge, %if.end4.sw.epilog_crit_edge
  %25 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status, align 4
  %fe_status = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 8
  %27 = ptrtoint ptr %fe_status to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %fe_status, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_read_status.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_read_status, %if.then36)) #8
          to label %do.end40 [label %if.then36], !srcloc !261

if.then36:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %dev37 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %28 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %utmp, align 4
  %30 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %status, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_read_status.__UNIQUE_ID_ddebug297, ptr noundef %dev37, ptr noundef nonnull @.str.64, i32 noundef %29, i32 noundef %31) #8
  br label %do.end40

do.end40:                                         ; preds = %if.then36, %sw.epilog
  %32 = ptrtoint ptr %fe_status to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fe_status, align 8
  %and42 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.else144, label %if.then44

if.then44:                                        ; preds = %do.end40
  %34 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %delivery_system, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %35, label %do.body109 [
    i32 5, label %for.cond.preheader
    i32 6, label %for.cond72.preheader
  ]

for.cond72.preheader:                             ; preds = %if.then44
  %regmap76 = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 3
  %37 = ptrtoint ptr %regmap76 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap76, align 4
  %call77 = call i32 @regmap_bulk_read(ptr noundef %38, i32 noundef 140, ptr noundef nonnull %buf, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %for.cond72.preheader.do.body309_crit_edge

for.cond72.preheader.do.body309_crit_edge:        ; preds = %for.cond72.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body309

for.cond.preheader:                               ; preds = %if.then44
  %regmap48 = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %regmap48 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap48, align 4
  %call49 = call i32 @regmap_read(ptr noundef %40, i32 noundef 255, ptr noundef nonnull %utmp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %for.cond.preheader.do.body309_crit_edge

for.cond.preheader.do.body309_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body309

if.end52:                                         ; preds = %for.cond.preheader
  %41 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %utmp, align 4
  %43 = ptrtoint ptr %regmap48 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap48, align 4
  %call49.1 = call i32 @regmap_read(ptr noundef %44, i32 noundef 255, ptr noundef nonnull %utmp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.1)
  %tobool50.not.1 = icmp eq i32 %call49.1, 0
  br i1 %tobool50.not.1, label %if.end52.1, label %if.end52.do.body309_crit_edge

if.end52.do.body309_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body309

if.end52.1:                                       ; preds = %if.end52
  %45 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %utmp, align 4
  %47 = ptrtoint ptr %regmap48 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap48, align 4
  %call49.2 = call i32 @regmap_read(ptr noundef %48, i32 noundef 255, ptr noundef nonnull %utmp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.2)
  %tobool50.not.2 = icmp eq i32 %call49.2, 0
  br i1 %tobool50.not.2, label %if.end52.2, label %if.end52.1.do.body309_crit_edge

if.end52.1.do.body309_crit_edge:                  ; preds = %if.end52.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body309

if.end52.2:                                       ; preds = %if.end52.1
  %add.1 = add i32 %46, %42
  %49 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %utmp, align 4
  %add.2 = add i32 %50, %add.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.2)
  %cmp54 = icmp sgt i32 %add.2, 0
  %cond.in.v = select i1 %cmp54, i32 12, i32 -12
  %cond.in = add i32 %cond.in.v, %add.2
  %cond.in.off = add i32 %cond.in, 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %cond.in.off)
  %51 = icmp ult i32 %cond.in.off, 47
  br i1 %51, label %if.end52.2.if.else_crit_edge, label %if.then64

if.end52.2.if.else_crit_edge:                     ; preds = %if.end52.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then64:                                        ; preds = %if.end52.2
  %cond = sdiv i32 %cond.in, 24
  %call65 = call i32 @intlog2(i32 noundef %cond) #8
  %conv66 = zext i32 %call65 to i64
  %mul = mul nuw nsw i64 %conv66, 10000
  %call67 = call i32 @intlog2(i32 noundef 10) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp164.i.i = icmp ult i64 %mul, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !263

if.then168.i.i:                                   ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i = trunc i64 %mul to i32
  %div172.i.i = udiv i32 %conv169.i.i, %call67
  br label %sw.epilog126

if.else174.i.i:                                   ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  %52 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call67, i64 %mul) #13, !srcloc !264
  %asmresult1.i.i.i = extractvalue { i64, i64 } %52, 1
  %extract.t466 = trunc i64 %asmresult1.i.i.i to i32
  br label %sw.epilog126

if.end80:                                         ; preds = %for.cond72.preheader
  %53 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %6, align 1
  %55 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %buf, align 1
  %57 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %8, align 1
  %59 = ptrtoint ptr %regmap76 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap76, align 4
  %call77.1 = call i32 @regmap_bulk_read(ptr noundef %60, i32 noundef 140, ptr noundef nonnull %buf, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.1)
  %tobool78.not.1 = icmp eq i32 %call77.1, 0
  br i1 %tobool78.not.1, label %if.end80.1, label %if.end80.do.body309_crit_edge

if.end80.do.body309_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body309

if.end80.1:                                       ; preds = %if.end80
  %61 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %6, align 1
  %63 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %buf, align 1
  %65 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %8, align 1
  %67 = ptrtoint ptr %regmap76 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regmap76, align 4
  %call77.2 = call i32 @regmap_bulk_read(ptr noundef %68, i32 noundef 140, ptr noundef nonnull %buf, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.2)
  %tobool78.not.2 = icmp eq i32 %call77.2, 0
  br i1 %tobool78.not.2, label %if.end80.2, label %if.end80.1.do.body309_crit_edge

if.end80.1.do.body309_crit_edge:                  ; preds = %if.end80.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body309

if.end80.2:                                       ; preds = %if.end80.1
  %conv86.1 = zext i8 %66 to i32
  %mul89.1 = mul nuw nsw i32 %conv86.1, %conv86.1
  %shr90.1 = lshr i32 %mul89.1, 1
  %conv86 = zext i8 %58 to i32
  %mul89 = mul nuw nsw i32 %conv86, %conv86
  %shr90 = lshr i32 %mul89, 1
  %add92.1 = add nuw nsw i32 %shr90.1, %shr90
  %conv81.1 = zext i8 %62 to i32
  %shl.1 = shl nuw nsw i32 %conv81.1, 6
  %69 = and i8 %64, 60
  %and84.1 = zext i8 %69 to i32
  %or.1 = or i32 %shl.1, %and84.1
  %shr.1 = lshr exact i32 %or.1, 2
  %conv81 = zext i8 %54 to i32
  %shl = shl nuw nsw i32 %conv81, 6
  %70 = and i8 %56, 60
  %and84 = zext i8 %70 to i32
  %or = or i32 %shl, %and84
  %shr = lshr exact i32 %or, 2
  %add91.1 = add nuw nsw i32 %shr.1, %shr
  %71 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %6, align 1
  %conv81.2 = zext i8 %72 to i32
  %shl.2 = shl nuw nsw i32 %conv81.2, 6
  %73 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %buf, align 1
  %75 = and i8 %74, 60
  %and84.2 = zext i8 %75 to i32
  %or.2 = or i32 %shl.2, %and84.2
  %shr.2 = lshr exact i32 %or.2, 2
  %76 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %8, align 1
  %conv86.2 = zext i8 %77 to i32
  %mul89.2 = mul nuw nsw i32 %conv86.2, %conv86.2
  %shr90.2 = lshr i32 %mul89.2, 1
  %add91.2 = add nuw nsw i32 %shr.2, %add91.1
  %add92.2 = add nuw nsw i32 %shr90.2, %add92.1
  %div96 = udiv i32 %add91.2, 3
  %div97 = udiv i32 %add92.2, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div97, i32 %div96)
  %cmp98 = icmp ugt i32 %div97, %div96
  br i1 %cmp98, label %if.then100, label %if.end80.2.if.else_crit_edge

if.end80.2.if.else_crit_edge:                     ; preds = %if.end80.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then100:                                       ; preds = %if.end80.2
  call void @__sanitizer_cov_trace_pc() #10
  %div101 = udiv i32 %div97, %div96
  %call102 = call i32 @intlog10(i32 noundef %div101) #8
  %conv103 = zext i32 %call102 to i64
  %mul104 = mul nuw nsw i64 %conv103, 10000
  %shr.i.i440 = lshr i64 %mul104, 24
  %conv106 = trunc i64 %shr.i.i440 to i32
  br label %sw.epilog126

do.body109:                                       ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_read_status.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_read_status, %if.then121)) #8
          to label %do.body309 [label %if.then121], !srcloc !261

if.then121:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #10
  %dev122 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_read_status.__UNIQUE_ID_ddebug298, ptr noundef %dev122, ptr noundef nonnull @.str.50) #8
  br label %do.body309

sw.epilog126:                                     ; preds = %if.then100, %if.else174.i.i, %if.then168.i.i
  %cnr.0 = phi i32 [ %conv106, %if.then100 ], [ %div172.i.i, %if.then168.i.i ], [ %extract.t466, %if.else174.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnr.0)
  %tobool127.not = icmp eq i32 %cnr.0, 0
  br i1 %tobool127.not, label %sw.epilog126.if.else_crit_edge, label %if.then128

sw.epilog126.if.else_crit_edge:                   ; preds = %sw.epilog126
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then128:                                       ; preds = %sw.epilog126
  call void @__sanitizer_cov_trace_pc() #10
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %78 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %stat, align 1
  %conv131 = zext i32 %cnr.0 to i64
  %79 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_storeN_noabort(i32 %80, i32 8)
  store i64 %conv131, ptr %79, align 1
  br label %if.end149

if.else:                                          ; preds = %sw.epilog126.if.else_crit_edge, %if.end80.2.if.else_crit_edge, %if.end52.2.if.else_crit_edge
  %stat136 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %81 = ptrtoint ptr %stat136 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %stat136, align 1
  br label %if.end149

if.else144:                                       ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #10
  %stat146 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %82 = ptrtoint ptr %stat146 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %stat146, align 1
  br label %if.end149

if.end149:                                        ; preds = %if.else144, %if.else, %if.then128
  %83 = ptrtoint ptr %fe_status to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %fe_status, align 8
  %and151 = and i32 %84, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp eq i32 %and151, 0
  br i1 %tobool152.not, label %if.else299, label %if.then153

if.then153:                                       ; preds = %if.end149
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %utmp154) #8
  %85 = ptrtoint ptr %utmp154 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -1, ptr %utmp154, align 4, !annotation !260
  %86 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %delivery_system, align 4
  %88 = zext i32 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %87, label %do.body260 [
    i32 5, label %sw.bb156
    i32 6, label %sw.bb196
  ]

sw.bb156:                                         ; preds = %if.then153
  %regmap157 = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 3
  %89 = ptrtoint ptr %regmap157 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regmap157, align 4
  %call158 = call i32 @regmap_write(ptr noundef %90, i32 noundef 249, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %if.end161, label %sw.bb156.cleanup294.thread_crit_edge

sw.bb156.cleanup294.thread_crit_edge:             ; preds = %sw.bb156
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup294.thread

if.end161:                                        ; preds = %sw.bb156
  %91 = ptrtoint ptr %regmap157 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regmap157, align 4
  %call163 = call i32 @regmap_read(ptr noundef %92, i32 noundef 248, ptr noundef nonnull %utmp154) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.end166, label %if.end161.cleanup294.thread_crit_edge

if.end161.cleanup294.thread_crit_edge:            ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup294.thread

if.end166:                                        ; preds = %if.end161
  %93 = ptrtoint ptr %utmp154 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %utmp154, align 4
  %and167 = and i32 %94, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167)
  %tobool168.not = icmp eq i32 %and167, 0
  br i1 %tobool168.not, label %if.then169, label %if.end166.cleanup294.thread460_crit_edge

if.end166.cleanup294.thread460_crit_edge:         ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup294.thread460

if.then169:                                       ; preds = %if.end166
  %95 = ptrtoint ptr %regmap157 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regmap157, align 4
  %call172 = call i32 @regmap_bulk_read(ptr noundef %96, i32 noundef 246, ptr noundef nonnull %buf, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %if.end175, label %if.then169.cleanup294.thread_crit_edge

if.then169.cleanup294.thread_crit_edge:           ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup294.thread

if.end175:                                        ; preds = %if.then169
  %97 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %6, align 1
  %conv177 = zext i8 %98 to i32
  %shl178 = shl nuw nsw i32 %conv177, 8
  %99 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %buf, align 1
  %conv180 = zext i8 %100 to i32
  %or182 = or i32 %shl178, %conv180
  %conv183 = zext i32 %or182 to i64
  %post_bit_error184 = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 15
  %101 = ptrtoint ptr %post_bit_error184 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %post_bit_error184, align 8
  %add185 = add i64 %102, %conv183
  store i64 %add185, ptr %post_bit_error184, align 8
  %post_bit_count187 = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 16
  %103 = ptrtoint ptr %post_bit_count187 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %post_bit_count187, align 8
  %add188 = add i64 %104, 8388608
  store i64 %add188, ptr %post_bit_count187, align 8
  %dvbv3_ber = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 9
  %105 = ptrtoint ptr %dvbv3_ber to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %or182, ptr %dvbv3_ber, align 4
  %106 = ptrtoint ptr %utmp154 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %utmp154, align 4
  %or189 = or i32 %107, 16
  store i32 %or189, ptr %utmp154, align 4
  %108 = ptrtoint ptr %regmap157 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regmap157, align 4
  %call191 = call i32 @regmap_write(ptr noundef %109, i32 noundef 248, i32 noundef %or189) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191)
  %tobool192.not = icmp eq i32 %call191, 0
  br i1 %tobool192.not, label %if.end175.cleanup294.thread460_crit_edge, label %if.end175.cleanup294.thread_crit_edge

if.end175.cleanup294.thread_crit_edge:            ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup294.thread

if.end175.cleanup294.thread460_crit_edge:         ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup294.thread460

sw.bb196:                                         ; preds = %if.then153
  %regmap197 = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 3
  %110 = ptrtoint ptr %regmap197 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regmap197, align 4
  %call199 = call i32 @regmap_bulk_read(ptr noundef %111, i32 noundef 213, ptr noundef nonnull %buf, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call199)
  %tobool200.not = icmp eq i32 %call199, 0
  br i1 %tobool200.not, label %if.end202, label %sw.bb196.cleanup294.thread_crit_edge

sw.bb196.cleanup294.thread_crit_edge:             ; preds = %sw.bb196
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup294.thread

if.end202:                                        ; preds = %sw.bb196
  %112 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %8, align 1
  %conv204 = zext i8 %113 to i32
  %shl205 = shl nuw nsw i32 %conv204, 16
  %114 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %6, align 1
  %conv207 = zext i8 %115 to i32
  %shl208 = shl nuw nsw i32 %conv207, 8
  %or209 = or i32 %shl208, %shl205
  %116 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %buf, align 1
  %conv211 = zext i8 %117 to i32
  %or213 = or i32 %or209, %conv211
  %118 = ptrtoint ptr %utmp154 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %or213, ptr %utmp154, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %or213)
  %cmp214 = icmp ugt i32 %or213, 4000
  br i1 %cmp214, label %if.then216, label %if.end202.cleanup294.thread460_crit_edge

if.end202.cleanup294.thread460_crit_edge:         ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup294.thread460

if.then216:                                       ; preds = %if.end202
  %119 = ptrtoint ptr %regmap197 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regmap197, align 4
  %call219 = call i32 @regmap_bulk_read(ptr noundef %120, i32 noundef 247, ptr noundef nonnull %buf, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219)
  %tobool220.not = icmp eq i32 %call219, 0
  br i1 %tobool220.not, label %if.end222, label %if.then216.cleanup294.thread_crit_edge

if.then216.cleanup294.thread_crit_edge:           ; preds = %if.then216
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup294.thread

if.end222:                                        ; preds = %if.then216
  %121 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %6, align 1
  %conv224 = zext i8 %122 to i32
  %shl225 = shl nuw nsw i32 %conv224, 8
  %123 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %buf, align 1
  %conv227 = zext i8 %124 to i32
  %or229 = or i32 %shl225, %conv227
  %125 = ptrtoint ptr %utmp154 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %utmp154, align 4
  %mul230 = shl i32 %126, 5
  %conv231 = zext i32 %or229 to i64
  %post_bit_error232 = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 15
  %127 = ptrtoint ptr %post_bit_error232 to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %post_bit_error232, align 8
  %add233 = add i64 %128, %conv231
  store i64 %add233, ptr %post_bit_error232, align 8
  %conv234 = zext i32 %mul230 to i64
  %post_bit_count235 = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 16
  %129 = ptrtoint ptr %post_bit_count235 to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %post_bit_count235, align 8
  %add236 = add i64 %130, %conv234
  store i64 %add236, ptr %post_bit_count235, align 8
  %dvbv3_ber237 = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 9
  %131 = ptrtoint ptr %dvbv3_ber237 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %or229, ptr %dvbv3_ber237, align 4
  %132 = ptrtoint ptr %regmap197 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regmap197, align 4
  %call239 = call i32 @regmap_write(ptr noundef %133, i32 noundef 209, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call239)
  %tobool240.not = icmp eq i32 %call239, 0
  br i1 %tobool240.not, label %if.end242, label %if.end222.cleanup294.thread_crit_edge

if.end222.cleanup294.thread_crit_edge:            ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup294.thread

if.end242:                                        ; preds = %if.end222
  %134 = ptrtoint ptr %regmap197 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %regmap197, align 4
  %call244 = call i32 @regmap_write(ptr noundef %135, i32 noundef 249, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call244)
  %tobool245.not = icmp eq i32 %call244, 0
  br i1 %tobool245.not, label %if.end247, label %if.end242.cleanup294.thread_crit_edge

if.end242.cleanup294.thread_crit_edge:            ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup294.thread

if.end247:                                        ; preds = %if.end242
  %136 = ptrtoint ptr %regmap197 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regmap197, align 4
  %call249 = call i32 @regmap_write(ptr noundef %137, i32 noundef 249, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call249)
  %tobool250.not = icmp eq i32 %call249, 0
  br i1 %tobool250.not, label %if.end252, label %if.end247.cleanup294.thread_crit_edge

if.end247.cleanup294.thread_crit_edge:            ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup294.thread

if.end252:                                        ; preds = %if.end247
  %138 = ptrtoint ptr %regmap197 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %regmap197, align 4
  %call254 = call i32 @regmap_write(ptr noundef %139, i32 noundef 209, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call254)
  %tobool255.not = icmp eq i32 %call254, 0
  br i1 %tobool255.not, label %if.end252.cleanup294.thread460_crit_edge, label %if.end252.cleanup294.thread_crit_edge

if.end252.cleanup294.thread_crit_edge:            ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup294.thread

if.end252.cleanup294.thread460_crit_edge:         ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup294.thread460

do.body260:                                       ; preds = %if.then153
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_read_status.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_read_status, %if.then272)) #8
          to label %cleanup294 [label %if.then272], !srcloc !261

if.then272:                                       ; preds = %do.body260
  call void @__sanitizer_cov_trace_pc() #10
  %dev273 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_read_status.__UNIQUE_ID_ddebug299, ptr noundef %dev273, ptr noundef nonnull @.str.50) #8
  br label %cleanup294.thread

cleanup294.thread460:                             ; preds = %if.end252.cleanup294.thread460_crit_edge, %if.end202.cleanup294.thread460_crit_edge, %if.end175.cleanup294.thread460_crit_edge, %if.end166.cleanup294.thread460_crit_edge
  %stat279 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  %140 = ptrtoint ptr %stat279 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 3, ptr %stat279, align 1
  %post_bit_error282 = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 15
  %141 = ptrtoint ptr %post_bit_error282 to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %post_bit_error282, align 8
  %143 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_storeN_noabort(i32 %144, i32 8)
  store i64 %142, ptr %143, align 1
  %stat287 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1
  %145 = ptrtoint ptr %stat287 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 3, ptr %stat287, align 1
  %post_bit_count290 = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 16
  %146 = ptrtoint ptr %post_bit_count290 to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %post_bit_count290, align 8
  %148 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1, i32 0, i32 1
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_storeN_noabort(i32 %149, i32 8)
  store i64 %147, ptr %148, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %utmp154) #8
  br label %cleanup326

cleanup294.thread:                                ; preds = %if.then272, %if.end252.cleanup294.thread_crit_edge, %if.end247.cleanup294.thread_crit_edge, %if.end242.cleanup294.thread_crit_edge, %if.end222.cleanup294.thread_crit_edge, %if.then216.cleanup294.thread_crit_edge, %sw.bb196.cleanup294.thread_crit_edge, %if.end175.cleanup294.thread_crit_edge, %if.then169.cleanup294.thread_crit_edge, %if.end161.cleanup294.thread_crit_edge, %sw.bb156.cleanup294.thread_crit_edge
  %ret.6.ph = phi i32 [ -22, %if.then272 ], [ %call254, %if.end252.cleanup294.thread_crit_edge ], [ %call249, %if.end247.cleanup294.thread_crit_edge ], [ %call244, %if.end242.cleanup294.thread_crit_edge ], [ %call239, %if.end222.cleanup294.thread_crit_edge ], [ %call219, %if.then216.cleanup294.thread_crit_edge ], [ %call199, %sw.bb196.cleanup294.thread_crit_edge ], [ %call191, %if.end175.cleanup294.thread_crit_edge ], [ %call172, %if.then169.cleanup294.thread_crit_edge ], [ %call163, %if.end161.cleanup294.thread_crit_edge ], [ %call158, %sw.bb156.cleanup294.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %utmp154) #8
  br label %do.body309

cleanup294:                                       ; preds = %do.body260
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %utmp154) #8
  br label %do.body309

if.else299:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  %stat301 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  %150 = ptrtoint ptr %stat301 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 0, ptr %stat301, align 1
  %stat305 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1
  %151 = ptrtoint ptr %stat305 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 0, ptr %stat305, align 1
  br label %cleanup326

do.body309:                                       ; preds = %cleanup294, %cleanup294.thread, %if.then121, %do.body109, %if.end80.1.do.body309_crit_edge, %if.end80.do.body309_crit_edge, %if.end52.1.do.body309_crit_edge, %if.end52.do.body309_crit_edge, %for.cond.preheader.do.body309_crit_edge, %for.cond72.preheader.do.body309_crit_edge, %if.then21, %do.body, %sw.bb7.do.body309_crit_edge, %sw.bb.do.body309_crit_edge, %entry.do.body309_crit_edge
  %ret.7 = phi i32 [ %call9, %sw.bb7.do.body309_crit_edge ], [ -22, %cleanup294 ], [ %call, %sw.bb.do.body309_crit_edge ], [ -11, %entry.do.body309_crit_edge ], [ -22, %if.then21 ], [ -22, %do.body ], [ -22, %do.body109 ], [ %ret.6.ph, %cleanup294.thread ], [ -22, %if.then121 ], [ %call49, %for.cond.preheader.do.body309_crit_edge ], [ %call49.1, %if.end52.do.body309_crit_edge ], [ %call49.2, %if.end52.1.do.body309_crit_edge ], [ %call77, %for.cond72.preheader.do.body309_crit_edge ], [ %call77.1, %if.end80.do.body309_crit_edge ], [ %call77.2, %if.end80.1.do.body309_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_read_status.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_read_status, %if.then321)) #8
          to label %cleanup326 [label %if.then321], !srcloc !261

if.then321:                                       ; preds = %do.body309
  call void @__sanitizer_cov_trace_pc() #10
  %dev322 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_read_status.__UNIQUE_ID_ddebug300, ptr noundef %dev322, ptr noundef nonnull @.str.11, i32 noundef %ret.7) #8
  br label %cleanup326

cleanup326:                                       ; preds = %if.then321, %do.body309, %if.else299, %cleanup294.thread460
  %retval.0 = phi i32 [ 0, %if.else299 ], [ %ret.7, %if.then321 ], [ 0, %cleanup294.thread460 ], [ %ret.7, %do.body309 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %utmp) #8
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @m88ds3103_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %dvbv3_ber = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dvbv3_ber to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dvbv3_ber, align 4
  %4 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %ber, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88ds3103_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
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
  store i32 -1, ptr %remainder.i, align 4, !annotation !260
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
define internal i32 @m88ds3103_diseqc_send_master_cmd(ptr nocapture noundef readonly %fe, ptr noundef %diseqc_cmd) #0 align 64 {
entry:
  %val.addr.i = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  %utmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %utmp) #8
  %4 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %utmp, align 4, !annotation !260
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_diseqc_send_master_cmd.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_diseqc_send_master_cmd, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !261

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %diseqc_cmd, i32 0, i32 1
  %5 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %msg_len, align 1
  %conv = zext i8 %6 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_diseqc_send_master_cmd.__UNIQUE_ID_ddebug329, ptr noundef %dev4, ptr noundef nonnull @.str.66, i32 noundef %conv, ptr noundef %diseqc_cmd) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %warm = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %warm to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %warm, align 8, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not = icmp eq i8 %8, 0
  br i1 %tobool5.not, label %do.end.do.body106_crit_edge, label %if.end7

do.end.do.body106_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body106

if.end7:                                          ; preds = %do.end
  %msg_len8 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %diseqc_cmd, i32 0, i32 1
  %9 = ptrtoint ptr %msg_len8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %msg_len8, align 1
  %11 = add i8 %10, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %11)
  %12 = icmp ult i8 %11, -4
  br i1 %12, label %if.end7.do.body106_crit_edge, label %if.end16

if.end7.do.body106_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body106

if.end16:                                         ; preds = %if.end7
  %cfg = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfg, align 8
  %envelope_mode = getelementptr inbounds %struct.m88ds3103_config, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %envelope_mode to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %envelope_mode, align 2
  %16 = lshr i8 %bf.load, 2
  %17 = and i8 %16, 32
  %shl = zext i8 %17 to i32
  %18 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shl, ptr %utmp, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %19 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %17, ptr %val.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #8
  %20 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %tmp.i, align 1, !annotation !260
  %regmap.i = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_bulk_read(ptr noundef %22, i32 noundef 162, ptr noundef nonnull %tmp.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %m88ds3103_update_bits.exit, label %m88ds3103_update_bits.exit.thread

m88ds3103_update_bits.exit.thread:                ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  br label %do.body106

m88ds3103_update_bits.exit:                       ; preds = %if.end16
  %23 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %val.addr.i, align 1
  %and24.i = and i8 %24, -32
  %25 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tmp.i, align 1
  %and9.i = and i8 %26, 31
  store i8 %and9.i, ptr %tmp.i, align 1
  %or25.i = or i8 %and9.i, %and24.i
  store i8 %or25.i, ptr %val.addr.i, align 1
  %27 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i, align 4
  %call17.i = call i32 @regmap_bulk_write(ptr noundef %28, i32 noundef 162, ptr noundef nonnull %val.addr.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool20.not = icmp eq i32 %call17.i, 0
  br i1 %tobool20.not, label %if.end22, label %m88ds3103_update_bits.exit.do.body106_crit_edge

m88ds3103_update_bits.exit.do.body106_crit_edge:  ; preds = %m88ds3103_update_bits.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body106

if.end22:                                         ; preds = %m88ds3103_update_bits.exit
  %29 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap.i, align 4
  %31 = ptrtoint ptr %msg_len8 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %msg_len8, align 1
  %conv26 = zext i8 %32 to i32
  %call27 = call i32 @regmap_bulk_write(ptr noundef %30, i32 noundef 163, ptr noundef %diseqc_cmd, i32 noundef %conv26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end22.do.body106_crit_edge

if.end22.do.body106_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body106

if.end30:                                         ; preds = %if.end22
  %33 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap.i, align 4
  %35 = ptrtoint ptr %msg_len8 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %msg_len8, align 1
  %conv33 = zext i8 %36 to i32
  %sub = shl nuw nsw i32 %conv33, 3
  %or = add nsw i32 %sub, -1
  %call35 = call i32 @regmap_write(ptr noundef %34, i32 noundef 161, i32 noundef %or) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end30.do.body106_crit_edge

if.end30.do.body106_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body106

if.end38:                                         ; preds = %if.end30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %37, 12
  %38 = ptrtoint ptr %msg_len8 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %msg_len8, align 1
  %conv41 = zext i8 %39 to i32
  %mul = mul nuw nsw i32 %conv41, 13500
  %sub42 = add nsw i32 %mul, -4000
  call void @usleep_range_state(i32 noundef %sub42, i32 noundef %mul, i32 noundef 2) #8
  %40 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %utmp, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %sub43173 = sub i32 %add, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub43173)
  %cmp44174 = icmp slt i32 %sub43173, 0
  br i1 %cmp44174, label %if.end38.do.body76_crit_edge, label %if.end38.land.rhs_crit_edge

if.end38.land.rhs_crit_edge:                      ; preds = %if.end38
  br label %land.rhs

if.end38.do.body76_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body76

land.rhs:                                         ; preds = %if.end51.land.rhs_crit_edge, %if.end38.land.rhs_crit_edge
  %storemerge175 = phi i32 [ %and, %if.end51.land.rhs_crit_edge ], [ 1, %if.end38.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge175)
  %tobool46.not = icmp eq i32 %storemerge175, 0
  br i1 %tobool46.not, label %land.rhs.do.body55_crit_edge, label %for.body

land.rhs.do.body55_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body55

for.body:                                         ; preds = %land.rhs
  %42 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap.i, align 4
  %call48 = call i32 @regmap_read(ptr noundef %43, i32 noundef 161, ptr noundef nonnull %utmp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %for.body.do.body106_crit_edge

for.body.do.body106_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body106

if.end51:                                         ; preds = %for.body
  %44 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %utmp, align 4
  %shr = lshr i32 %45, 6
  %and = and i32 %shr, 1
  store i32 %and, ptr %utmp, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %sub43 = sub i32 %add, %46
  %cmp44 = icmp slt i32 %sub43, 0
  br i1 %cmp44, label %for.end, label %if.end51.land.rhs_crit_edge

if.end51.land.rhs_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

for.end:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %phi.cmp = icmp eq i32 %and, 0
  br i1 %phi.cmp, label %for.end.do.body55_crit_edge, label %for.end.do.body76_crit_edge

for.end.do.body76_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body76

for.end.do.body55_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body55

do.body55:                                        ; preds = %for.end.do.body55_crit_edge, %land.rhs.do.body55_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_diseqc_send_master_cmd.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_diseqc_send_master_cmd, %if.then67)) #8
          to label %if.end97 [label %if.then67], !srcloc !261

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #10
  %dev68 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %call69 = call i32 @jiffies_to_msecs(i32 noundef %47) #8
  %call70 = call i32 @jiffies_to_msecs(i32 noundef %add) #8
  %sub71.neg = add i32 %call69, 120
  %sub72 = sub i32 %sub71.neg, %call70
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_diseqc_send_master_cmd.__UNIQUE_ID_ddebug330, ptr noundef %dev68, ptr noundef nonnull @.str.67, i32 noundef %sub72) #8
  br label %if.end97

do.body76:                                        ; preds = %for.end.do.body76_crit_edge, %if.end38.do.body76_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_diseqc_send_master_cmd.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_diseqc_send_master_cmd, %if.then88)) #8
          to label %do.end92 [label %if.then88], !srcloc !261

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #10
  %dev89 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_diseqc_send_master_cmd.__UNIQUE_ID_ddebug331, ptr noundef %dev89, ptr noundef nonnull @.str.68) #8
  br label %do.end92

do.end92:                                         ; preds = %if.then88, %do.body76
  %call93 = call fastcc i32 @m88ds3103_update_bits(ptr noundef %1, i8 noundef zeroext -95, i8 noundef zeroext -64, i8 noundef zeroext 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %do.end92.if.end97_crit_edge, label %do.end92.do.body106_crit_edge

do.end92.do.body106_crit_edge:                    ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body106

do.end92.if.end97_crit_edge:                      ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

if.end97:                                         ; preds = %do.end92.if.end97_crit_edge, %if.then67, %do.body55
  %call98 = call fastcc i32 @m88ds3103_update_bits(ptr noundef %1, i8 noundef zeroext -94, i8 noundef zeroext -64, i8 noundef zeroext -128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end101, label %if.end97.do.body106_crit_edge

if.end97.do.body106_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body106

if.end101:                                        ; preds = %if.end97
  %48 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %utmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp102 = icmp eq i32 %49, 1
  br i1 %cmp102, label %if.end101.do.body106_crit_edge, label %if.end101.cleanup_crit_edge

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end101.do.body106_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body106

do.body106:                                       ; preds = %if.end101.do.body106_crit_edge, %if.end97.do.body106_crit_edge, %do.end92.do.body106_crit_edge, %for.body.do.body106_crit_edge, %if.end30.do.body106_crit_edge, %if.end22.do.body106_crit_edge, %m88ds3103_update_bits.exit.do.body106_crit_edge, %m88ds3103_update_bits.exit.thread, %if.end7.do.body106_crit_edge, %do.end.do.body106_crit_edge
  %ret.0 = phi i32 [ %call17.i, %m88ds3103_update_bits.exit.do.body106_crit_edge ], [ %call27, %if.end22.do.body106_crit_edge ], [ %call35, %if.end30.do.body106_crit_edge ], [ %call98, %if.end97.do.body106_crit_edge ], [ %call93, %do.end92.do.body106_crit_edge ], [ -11, %do.end.do.body106_crit_edge ], [ -22, %if.end7.do.body106_crit_edge ], [ -110, %if.end101.do.body106_crit_edge ], [ %call.i, %m88ds3103_update_bits.exit.thread ], [ %call48, %for.body.do.body106_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_diseqc_send_master_cmd.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_diseqc_send_master_cmd, %if.then118)) #8
          to label %cleanup [label %if.then118], !srcloc !261

if.then118:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #10
  %dev119 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_diseqc_send_master_cmd.__UNIQUE_ID_ddebug332, ptr noundef %dev119, ptr noundef nonnull @.str.11, i32 noundef %ret.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then118, %do.body106, %if.end101.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end101.cleanup_crit_edge ], [ %ret.0, %if.then118 ], [ %ret.0, %do.body106 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %utmp) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88ds3103_diseqc_send_burst(ptr nocapture noundef readonly %fe, i32 noundef %fe_sec_mini_cmd) #0 align 64 {
entry:
  %val.addr.i165 = alloca i8, align 1
  %tmp.i166 = alloca i8, align 1
  %val.addr.i152 = alloca i8, align 1
  %tmp.i153 = alloca i8, align 1
  %val.addr.i = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  %utmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %utmp) #8
  %4 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %utmp, align 4, !annotation !260
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_diseqc_send_burst.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_diseqc_send_burst, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !261

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_diseqc_send_burst.__UNIQUE_ID_ddebug333, ptr noundef %dev4, ptr noundef nonnull @.str.70, i32 noundef %fe_sec_mini_cmd) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %warm = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %warm to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %warm, align 8, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not = icmp eq i8 %6, 0
  br i1 %tobool5.not, label %do.end.do.body97_crit_edge, label %if.end7

do.end.do.body97_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body97

if.end7:                                          ; preds = %do.end
  %cfg = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg, align 8
  %envelope_mode = getelementptr inbounds %struct.m88ds3103_config, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %envelope_mode to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %envelope_mode, align 2
  %10 = lshr i8 %bf.load, 2
  %11 = and i8 %10, 32
  %shl = zext i8 %11 to i32
  %12 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shl, ptr %utmp, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %13 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %11, ptr %val.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #8
  %14 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %tmp.i, align 1, !annotation !260
  %regmap.i = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_bulk_read(ptr noundef %16, i32 noundef 162, ptr noundef nonnull %tmp.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %m88ds3103_update_bits.exit, label %m88ds3103_update_bits.exit.thread

m88ds3103_update_bits.exit.thread:                ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  br label %do.body97

m88ds3103_update_bits.exit:                       ; preds = %if.end7
  %17 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %val.addr.i, align 1
  %and24.i = and i8 %18, -32
  %19 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tmp.i, align 1
  %and9.i = and i8 %20, 31
  store i8 %and9.i, ptr %tmp.i, align 1
  %or25.i = or i8 %and9.i, %and24.i
  store i8 %or25.i, ptr %val.addr.i, align 1
  %21 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i, align 4
  %call17.i = call i32 @regmap_bulk_write(ptr noundef %22, i32 noundef 162, ptr noundef nonnull %val.addr.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool10.not = icmp eq i32 %call17.i, 0
  br i1 %tobool10.not, label %if.end12, label %m88ds3103_update_bits.exit.do.body97_crit_edge

m88ds3103_update_bits.exit.do.body97_crit_edge:   ; preds = %m88ds3103_update_bits.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body97

if.end12:                                         ; preds = %m88ds3103_update_bits.exit
  %23 = zext i32 %fe_sec_mini_cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %fe_sec_mini_cmd, label %do.body14 [
    i32 0, label %if.end12.sw.epilog_crit_edge
    i32 1, label %sw.bb13
  ]

if.end12.sw.epilog_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_diseqc_send_burst.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_diseqc_send_burst, %if.then26)) #8
          to label %do.body97 [label %if.then26], !srcloc !261

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  %dev27 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_diseqc_send_burst.__UNIQUE_ID_ddebug334, ptr noundef %dev27, ptr noundef nonnull @.str.71) #8
  br label %do.body97

sw.epilog:                                        ; preds = %sw.bb13, %if.end12.sw.epilog_crit_edge
  %burst.0 = phi i32 [ 1, %sw.bb13 ], [ 2, %if.end12.sw.epilog_crit_edge ]
  %24 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i, align 4
  %call31 = call i32 @regmap_write(ptr noundef %25, i32 noundef 161, i32 noundef %burst.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %sw.epilog.do.body97_crit_edge

sw.epilog.do.body97_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body97

if.end34:                                         ; preds = %sw.epilog
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %26, 4
  call void @usleep_range_state(i32 noundef 8500, i32 noundef 12500, i32 noundef 2) #8
  %27 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %utmp, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %sub192 = sub i32 %add, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub192)
  %cmp193 = icmp slt i32 %sub192, 0
  br i1 %cmp193, label %if.end34.do.body67_crit_edge, label %if.end34.land.rhs_crit_edge

if.end34.land.rhs_crit_edge:                      ; preds = %if.end34
  br label %land.rhs

if.end34.do.body67_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body67

land.rhs:                                         ; preds = %if.end42.land.rhs_crit_edge, %if.end34.land.rhs_crit_edge
  %storemerge194 = phi i32 [ %and, %if.end42.land.rhs_crit_edge ], [ 1, %if.end34.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge194)
  %tobool37.not = icmp eq i32 %storemerge194, 0
  br i1 %tobool37.not, label %land.rhs.do.body46_crit_edge, label %for.body

land.rhs.do.body46_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body46

for.body:                                         ; preds = %land.rhs
  %29 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap.i, align 4
  %call39 = call i32 @regmap_read(ptr noundef %30, i32 noundef 161, ptr noundef nonnull %utmp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %for.body.do.body97_crit_edge

for.body.do.body97_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body97

if.end42:                                         ; preds = %for.body
  %31 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %utmp, align 4
  %shr = lshr i32 %32, 6
  %and = and i32 %shr, 1
  store i32 %and, ptr %utmp, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %33
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %for.end, label %if.end42.land.rhs_crit_edge

if.end42.land.rhs_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

for.end:                                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %phi.cmp = icmp eq i32 %and, 0
  br i1 %phi.cmp, label %for.end.do.body46_crit_edge, label %for.end.do.body67_crit_edge

for.end.do.body67_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body67

for.end.do.body46_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body46

do.body46:                                        ; preds = %for.end.do.body46_crit_edge, %land.rhs.do.body46_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_diseqc_send_burst.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_diseqc_send_burst, %if.then58)) #8
          to label %if.end88 [label %if.then58], !srcloc !261

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #10
  %dev59 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %call60 = call i32 @jiffies_to_msecs(i32 noundef %34) #8
  %call61 = call i32 @jiffies_to_msecs(i32 noundef %add) #8
  %sub62.neg = add i32 %call60, 40
  %sub63 = sub i32 %sub62.neg, %call61
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_diseqc_send_burst.__UNIQUE_ID_ddebug335, ptr noundef %dev59, ptr noundef nonnull @.str.67, i32 noundef %sub63) #8
  br label %if.end88

do.body67:                                        ; preds = %for.end.do.body67_crit_edge, %if.end34.do.body67_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_diseqc_send_burst.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_diseqc_send_burst, %if.then79)) #8
          to label %do.end83 [label %if.then79], !srcloc !261

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #10
  %dev80 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_diseqc_send_burst.__UNIQUE_ID_ddebug336, ptr noundef %dev80, ptr noundef nonnull @.str.68) #8
  br label %do.end83

do.end83:                                         ; preds = %if.then79, %do.body67
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i152)
  %35 = ptrtoint ptr %val.addr.i152 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 64, ptr %val.addr.i152, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i153) #8
  %36 = ptrtoint ptr %tmp.i153 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -1, ptr %tmp.i153, align 1, !annotation !260
  %37 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap.i, align 4
  %call.i155 = call i32 @regmap_bulk_read(ptr noundef %38, i32 noundef 161, ptr noundef nonnull %tmp.i153, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155)
  %tobool.not.i156 = icmp eq i32 %call.i155, 0
  br i1 %tobool.not.i156, label %m88ds3103_update_bits.exit164, label %m88ds3103_update_bits.exit164.thread

m88ds3103_update_bits.exit164.thread:             ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i153) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i152)
  br label %do.body97

m88ds3103_update_bits.exit164:                    ; preds = %do.end83
  %39 = ptrtoint ptr %val.addr.i152 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %val.addr.i152, align 1
  %and24.i157 = and i8 %40, -64
  %41 = ptrtoint ptr %tmp.i153 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %tmp.i153, align 1
  %and9.i158 = and i8 %42, 63
  store i8 %and9.i158, ptr %tmp.i153, align 1
  %or25.i159 = or i8 %and9.i158, %and24.i157
  store i8 %or25.i159, ptr %val.addr.i152, align 1
  %43 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap.i, align 4
  %call17.i162 = call i32 @regmap_bulk_write(ptr noundef %44, i32 noundef 161, ptr noundef nonnull %val.addr.i152, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i153) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i152)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i162)
  %tobool85.not = icmp eq i32 %call17.i162, 0
  br i1 %tobool85.not, label %m88ds3103_update_bits.exit164.if.end88_crit_edge, label %m88ds3103_update_bits.exit164.do.body97_crit_edge

m88ds3103_update_bits.exit164.do.body97_crit_edge: ; preds = %m88ds3103_update_bits.exit164
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body97

m88ds3103_update_bits.exit164.if.end88_crit_edge: ; preds = %m88ds3103_update_bits.exit164
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.end88:                                         ; preds = %m88ds3103_update_bits.exit164.if.end88_crit_edge, %if.then58, %do.body46
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i165)
  %45 = ptrtoint ptr %val.addr.i165 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -128, ptr %val.addr.i165, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i166) #8
  %46 = ptrtoint ptr %tmp.i166 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -1, ptr %tmp.i166, align 1, !annotation !260
  %47 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap.i, align 4
  %call.i168 = call i32 @regmap_bulk_read(ptr noundef %48, i32 noundef 162, ptr noundef nonnull %tmp.i166, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168)
  %tobool.not.i169 = icmp eq i32 %call.i168, 0
  br i1 %tobool.not.i169, label %m88ds3103_update_bits.exit177, label %m88ds3103_update_bits.exit177.thread

m88ds3103_update_bits.exit177.thread:             ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i166) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i165)
  br label %do.body97

m88ds3103_update_bits.exit177:                    ; preds = %if.end88
  %49 = ptrtoint ptr %val.addr.i165 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %val.addr.i165, align 1
  %and24.i170 = and i8 %50, -64
  %51 = ptrtoint ptr %tmp.i166 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %tmp.i166, align 1
  %and9.i171 = and i8 %52, 63
  store i8 %and9.i171, ptr %tmp.i166, align 1
  %or25.i172 = or i8 %and9.i171, %and24.i170
  store i8 %or25.i172, ptr %val.addr.i165, align 1
  %53 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap.i, align 4
  %call17.i175 = call i32 @regmap_bulk_write(ptr noundef %54, i32 noundef 162, ptr noundef nonnull %val.addr.i165, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i166) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i165)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i175)
  %tobool90.not = icmp eq i32 %call17.i175, 0
  br i1 %tobool90.not, label %if.end92, label %m88ds3103_update_bits.exit177.do.body97_crit_edge

m88ds3103_update_bits.exit177.do.body97_crit_edge: ; preds = %m88ds3103_update_bits.exit177
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body97

if.end92:                                         ; preds = %m88ds3103_update_bits.exit177
  %55 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %utmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp93 = icmp eq i32 %56, 1
  br i1 %cmp93, label %if.end92.do.body97_crit_edge, label %if.end92.cleanup_crit_edge

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end92.do.body97_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body97

do.body97:                                        ; preds = %if.end92.do.body97_crit_edge, %m88ds3103_update_bits.exit177.do.body97_crit_edge, %m88ds3103_update_bits.exit177.thread, %m88ds3103_update_bits.exit164.do.body97_crit_edge, %m88ds3103_update_bits.exit164.thread, %for.body.do.body97_crit_edge, %sw.epilog.do.body97_crit_edge, %if.then26, %do.body14, %m88ds3103_update_bits.exit.do.body97_crit_edge, %m88ds3103_update_bits.exit.thread, %do.end.do.body97_crit_edge
  %ret.0 = phi i32 [ %call17.i, %m88ds3103_update_bits.exit.do.body97_crit_edge ], [ %call31, %sw.epilog.do.body97_crit_edge ], [ %call17.i175, %m88ds3103_update_bits.exit177.do.body97_crit_edge ], [ %call17.i162, %m88ds3103_update_bits.exit164.do.body97_crit_edge ], [ -11, %do.end.do.body97_crit_edge ], [ -22, %if.then26 ], [ -110, %if.end92.do.body97_crit_edge ], [ %call.i, %m88ds3103_update_bits.exit.thread ], [ -22, %do.body14 ], [ %call.i155, %m88ds3103_update_bits.exit164.thread ], [ %call.i168, %m88ds3103_update_bits.exit177.thread ], [ %call39, %for.body.do.body97_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_diseqc_send_burst.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_diseqc_send_burst, %if.then109)) #8
          to label %cleanup [label %if.then109], !srcloc !261

if.then109:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #10
  %dev110 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_diseqc_send_burst.__UNIQUE_ID_ddebug337, ptr noundef %dev110, ptr noundef nonnull @.str.11, i32 noundef %ret.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then109, %do.body97, %if.end92.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end92.cleanup_crit_edge ], [ %ret.0, %if.then109 ], [ %ret.0, %do.body97 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %utmp) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88ds3103_set_tone(ptr nocapture noundef readonly %fe, i32 noundef %fe_sec_tone_mode) #0 align 64 {
entry:
  %val.addr.i78 = alloca i8, align 1
  %tmp.i79 = alloca i8, align 1
  %val.addr.i = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_set_tone.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_set_tone, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !261

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_set_tone.__UNIQUE_ID_ddebug323, ptr noundef %dev4, ptr noundef nonnull @.str.73, i32 noundef %fe_sec_tone_mode) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %warm = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %warm to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %warm, align 8, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %do.end.do.body38_crit_edge, label %if.end7

do.end.do.body38_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body38

if.end7:                                          ; preds = %do.end
  %6 = zext i32 %fe_sec_tone_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %fe_sec_tone_mode, label %do.body9 [
    i32 0, label %if.end7.sw.epilog_crit_edge
    i32 1, label %sw.bb8
  ]

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_set_tone.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_set_tone, %if.then21)) #8
          to label %do.body38 [label %if.then21], !srcloc !261

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  %dev22 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_set_tone.__UNIQUE_ID_ddebug324, ptr noundef %dev22, ptr noundef nonnull @.str.74) #8
  br label %do.body38

sw.epilog:                                        ; preds = %sw.bb8, %if.end7.sw.epilog_crit_edge
  %reg_a1_mask.0 = phi i8 [ 0, %sw.bb8 ], [ 71, %if.end7.sw.epilog_crit_edge ]
  %cfg = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg, align 8
  %envelope_mode = getelementptr inbounds %struct.m88ds3103_config, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %envelope_mode to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %envelope_mode, align 2
  %10 = lshr i8 %bf.load, 2
  %11 = and i8 %10, 32
  %fe_sec_tone_mode.tr = trunc i32 %fe_sec_tone_mode to i8
  %12 = shl nuw i8 %fe_sec_tone_mode.tr, 7
  %conv27 = or i8 %11, %12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %13 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv27, ptr %val.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #8
  %14 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %tmp.i, align 1, !annotation !260
  %regmap.i = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_bulk_read(ptr noundef %16, i32 noundef 162, ptr noundef nonnull %tmp.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %m88ds3103_update_bits.exit, label %m88ds3103_update_bits.exit.thread

m88ds3103_update_bits.exit.thread:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  br label %do.body38

m88ds3103_update_bits.exit:                       ; preds = %sw.epilog
  %17 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %val.addr.i, align 1
  %and24.i = and i8 %18, -32
  %19 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tmp.i, align 1
  %and9.i = and i8 %20, 31
  store i8 %and9.i, ptr %tmp.i, align 1
  %or25.i = or i8 %and9.i, %and24.i
  store i8 %or25.i, ptr %val.addr.i, align 1
  %21 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i, align 4
  %call17.i = call i32 @regmap_bulk_write(ptr noundef %22, i32 noundef 162, ptr noundef nonnull %val.addr.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool29.not = icmp eq i32 %call17.i, 0
  br i1 %tobool29.not, label %if.end31, label %m88ds3103_update_bits.exit.do.body38_crit_edge

m88ds3103_update_bits.exit.do.body38_crit_edge:   ; preds = %m88ds3103_update_bits.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body38

if.end31:                                         ; preds = %m88ds3103_update_bits.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i78)
  %23 = ptrtoint ptr %val.addr.i78 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 4, ptr %val.addr.i78, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i79) #8
  %24 = ptrtoint ptr %tmp.i79 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %tmp.i79, align 1, !annotation !260
  %25 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i, align 4
  %call.i81 = call i32 @regmap_bulk_read(ptr noundef %26, i32 noundef 161, ptr noundef nonnull %tmp.i79, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool.not.i82 = icmp eq i32 %call.i81, 0
  br i1 %tobool.not.i82, label %m88ds3103_update_bits.exit90, label %m88ds3103_update_bits.exit90.thread

m88ds3103_update_bits.exit90.thread:              ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i79) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i78)
  br label %do.body38

m88ds3103_update_bits.exit90:                     ; preds = %if.end31
  %27 = ptrtoint ptr %val.addr.i78 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %val.addr.i78, align 1
  %and24.i83 = and i8 %28, %reg_a1_mask.0
  %neg.i = xor i8 %reg_a1_mask.0, -1
  %29 = ptrtoint ptr %tmp.i79 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %tmp.i79, align 1
  %and9.i84 = and i8 %30, %neg.i
  store i8 %and9.i84, ptr %tmp.i79, align 1
  %or25.i85 = or i8 %and9.i84, %and24.i83
  store i8 %or25.i85, ptr %val.addr.i78, align 1
  %31 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap.i, align 4
  %call17.i88 = call i32 @regmap_bulk_write(ptr noundef %32, i32 noundef 161, ptr noundef nonnull %val.addr.i78, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i79) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i78)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i88)
  %tobool35.not = icmp eq i32 %call17.i88, 0
  br i1 %tobool35.not, label %m88ds3103_update_bits.exit90.cleanup_crit_edge, label %m88ds3103_update_bits.exit90.do.body38_crit_edge

m88ds3103_update_bits.exit90.do.body38_crit_edge: ; preds = %m88ds3103_update_bits.exit90
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body38

m88ds3103_update_bits.exit90.cleanup_crit_edge:   ; preds = %m88ds3103_update_bits.exit90
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body38:                                        ; preds = %m88ds3103_update_bits.exit90.do.body38_crit_edge, %m88ds3103_update_bits.exit90.thread, %m88ds3103_update_bits.exit.do.body38_crit_edge, %m88ds3103_update_bits.exit.thread, %if.then21, %do.body9, %do.end.do.body38_crit_edge
  %ret.0 = phi i32 [ %call17.i, %m88ds3103_update_bits.exit.do.body38_crit_edge ], [ %call17.i88, %m88ds3103_update_bits.exit90.do.body38_crit_edge ], [ -11, %do.end.do.body38_crit_edge ], [ -22, %if.then21 ], [ -22, %do.body9 ], [ %call.i, %m88ds3103_update_bits.exit.thread ], [ %call.i81, %m88ds3103_update_bits.exit90.thread ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_set_tone.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_set_tone, %if.then50)) #8
          to label %cleanup [label %if.then50], !srcloc !261

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #10
  %dev51 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_set_tone.__UNIQUE_ID_ddebug325, ptr noundef %dev51, ptr noundef nonnull @.str.11, i32 noundef %ret.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %do.body38, %m88ds3103_update_bits.exit90.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %m88ds3103_update_bits.exit90.cleanup_crit_edge ], [ %ret.0, %if.then50 ], [ %ret.0, %do.body38 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88ds3103_set_voltage(ptr nocapture noundef readonly %fe, i32 noundef %fe_sec_voltage) #0 align 64 {
entry:
  %val.addr.i = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_set_voltage.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_set_voltage, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !261

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_set_voltage.__UNIQUE_ID_ddebug326, ptr noundef %dev4, ptr noundef nonnull @.str.76, i32 noundef %fe_sec_voltage) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %warm = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %warm to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %warm, align 8, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %do.end.do.body50_crit_edge, label %if.end7

do.end.do.body50_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body50

if.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %fe_sec_voltage)
  %6 = icmp ult i32 %fe_sec_voltage, 3
  br i1 %6, label %switch.lookup, label %do.body10

do.body10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_set_voltage.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_set_voltage, %if.then22)) #8
          to label %do.body50 [label %if.then22], !srcloc !261

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  %dev23 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_set_voltage.__UNIQUE_ID_ddebug327, ptr noundef %dev23, ptr noundef nonnull @.str.77) #8
  br label %do.body50

switch.lookup:                                    ; preds = %if.end7
  %switch.cast = trunc i32 %fe_sec_voltage to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 65536, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %switch.cast95 = trunc i32 %fe_sec_voltage to i24
  %switch.shiftamt96 = shl i24 %switch.cast95, 3
  %switch.downshift97 = lshr i24 256, %switch.shiftamt96
  %switch.masked98 = trunc i24 %switch.downshift97 to i8
  %cfg = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg, align 8
  %lnb_hv_pol = getelementptr inbounds %struct.m88ds3103_config, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %lnb_hv_pol to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %lnb_hv_pol, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.lshr33 = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr33, 1
  %10 = xor i8 %bf.clear, %switch.masked
  %shl = shl nuw nsw i8 %10, 1
  %11 = xor i8 %bf.lshr, %switch.masked98
  %or = or i8 %shl, %11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %12 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %or, ptr %val.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #8
  %13 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %tmp.i, align 1, !annotation !260
  %regmap.i = getelementptr inbounds %struct.m88ds3103_dev, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_bulk_read(ptr noundef %15, i32 noundef 162, ptr noundef nonnull %tmp.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %m88ds3103_update_bits.exit, label %m88ds3103_update_bits.exit.thread

m88ds3103_update_bits.exit.thread:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  br label %do.body50

m88ds3103_update_bits.exit:                       ; preds = %switch.lookup
  %16 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %val.addr.i, align 1
  %and24.i = and i8 %17, 3
  %18 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tmp.i, align 1
  %and9.i = and i8 %19, -4
  store i8 %and9.i, ptr %tmp.i, align 1
  %or25.i = or i8 %and9.i, %and24.i
  store i8 %or25.i, ptr %val.addr.i, align 1
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 4
  %call17.i = call i32 @regmap_bulk_write(ptr noundef %21, i32 noundef 162, ptr noundef nonnull %val.addr.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool47.not = icmp eq i32 %call17.i, 0
  br i1 %tobool47.not, label %m88ds3103_update_bits.exit.cleanup_crit_edge, label %m88ds3103_update_bits.exit.do.body50_crit_edge

m88ds3103_update_bits.exit.do.body50_crit_edge:   ; preds = %m88ds3103_update_bits.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body50

m88ds3103_update_bits.exit.cleanup_crit_edge:     ; preds = %m88ds3103_update_bits.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body50:                                        ; preds = %m88ds3103_update_bits.exit.do.body50_crit_edge, %m88ds3103_update_bits.exit.thread, %if.then22, %do.body10, %do.end.do.body50_crit_edge
  %ret.0 = phi i32 [ %call17.i, %m88ds3103_update_bits.exit.do.body50_crit_edge ], [ -11, %do.end.do.body50_crit_edge ], [ -22, %if.then22 ], [ -22, %do.body10 ], [ %call.i, %m88ds3103_update_bits.exit.thread ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_set_voltage.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_set_voltage, %if.then62)) #8
          to label %cleanup [label %if.then62], !srcloc !261

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #10
  %dev63 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_set_voltage.__UNIQUE_ID_ddebug328, ptr noundef %dev63, ptr noundef nonnull @.str.11, i32 noundef %ret.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then62, %do.body50, %m88ds3103_update_bits.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %m88ds3103_update_bits.exit.cleanup_crit_edge ], [ %ret.0, %if.then62 ], [ %ret.0, %do.body50 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @m88ds3103b_dt_write(ptr nocapture noundef readonly %dev, i32 noundef %reg, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  %val.addr.i18 = alloca i8, align 1
  %tmp.i19 = alloca i8, align 1
  %val.addr.i5 = alloca i8, align 1
  %tmp.i6 = alloca i8, align 1
  %val.addr.i = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  %buf = alloca [2 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #8
  %2 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %conv = trunc i32 %reg to i8
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %buf, align 1
  %conv2 = trunc i32 %data to i8
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv2, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #8
  %5 = getelementptr inbounds i8, ptr %msg, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4
  %dt_addr = getelementptr inbounds %struct.m88ds3103_dev, ptr %dev, i32 0, i32 17
  %7 = ptrtoint ptr %dt_addr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dt_addr, align 8
  %conv3 = zext i8 %8 to i16
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv3, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 2, ptr %len, align 4
  %buf4 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %12 = ptrtoint ptr %buf4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf, ptr %buf4, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %13 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %val.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #8
  %14 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %tmp.i, align 1, !annotation !260
  %regmap.i = getelementptr inbounds %struct.m88ds3103_dev, ptr %dev, i32 0, i32 3
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_bulk_read(ptr noundef %16, i32 noundef 17, ptr noundef nonnull %tmp.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.m88ds3103_update_bits.exit_crit_edge

entry.m88ds3103_update_bits.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %m88ds3103_update_bits.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %val.addr.i, align 1
  %and24.i = and i8 %18, 1
  %19 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tmp.i, align 1
  %and9.i = and i8 %20, -2
  store i8 %and9.i, ptr %tmp.i, align 1
  %or25.i = or i8 %and9.i, %and24.i
  store i8 %or25.i, ptr %val.addr.i, align 1
  %21 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i, align 4
  %call17.i = call i32 @regmap_bulk_write(ptr noundef %22, i32 noundef 17, ptr noundef nonnull %val.addr.i, i32 noundef 1) #8
  br label %m88ds3103_update_bits.exit

m88ds3103_update_bits.exit:                       ; preds = %if.end.i, %entry.m88ds3103_update_bits.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  %23 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i, align 4
  %call6 = call i32 @regmap_write(ptr noundef %24, i32 noundef 3, i32 noundef 17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %m88ds3103_update_bits.exit.if.end13_crit_edge, label %do.body

m88ds3103_update_bits.exit.if.end13_crit_edge:    ; preds = %m88ds3103_update_bits.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

do.body:                                          ; preds = %m88ds3103_update_bits.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103b_dt_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103b_dt_write, %if.then11)) #8
          to label %if.end13 [label %if.then11], !srcloc !261

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev12 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103b_dt_write.__UNIQUE_ID_ddebug292, ptr noundef %dev12, ptr noundef nonnull @.str.43, i32 noundef %call6) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %do.body, %m88ds3103_update_bits.exit.if.end13_crit_edge
  %dt_client = getelementptr inbounds %struct.m88ds3103_dev, ptr %dev, i32 0, i32 1
  %25 = ptrtoint ptr %dt_client to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dt_client, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter, align 8
  %call14 = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %msg, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call14)
  %cmp.not = icmp eq i32 %call14, 1
  br i1 %cmp.not, label %if.end24, label %do.end19

do.end19:                                         ; preds = %if.end13
  %dev20 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %29 = ptrtoint ptr %dt_addr to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %dt_addr, align 8
  %conv22 = zext i8 %30 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.44, i32 noundef %conv22, i32 noundef %call14, i32 noundef %reg, i32 noundef %data) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i5)
  %31 = ptrtoint ptr %val.addr.i5 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %val.addr.i5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i6) #8
  %32 = ptrtoint ptr %tmp.i6 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %tmp.i6, align 1, !annotation !260
  %33 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap.i, align 4
  %call.i8 = call i32 @regmap_bulk_read(ptr noundef %34, i32 noundef 17, ptr noundef nonnull %tmp.i6, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %tobool.not.i9 = icmp eq i32 %call.i8, 0
  br i1 %tobool.not.i9, label %if.end.i13, label %do.end19.m88ds3103_update_bits.exit17_crit_edge

do.end19.m88ds3103_update_bits.exit17_crit_edge:  ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %m88ds3103_update_bits.exit17

if.end.i13:                                       ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %val.addr.i5 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %val.addr.i5, align 1
  %and24.i10 = and i8 %36, 1
  %37 = ptrtoint ptr %tmp.i6 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %tmp.i6, align 1
  %and9.i11 = and i8 %38, -2
  store i8 %and9.i11, ptr %tmp.i6, align 1
  %or25.i12 = or i8 %and9.i11, %and24.i10
  store i8 %or25.i12, ptr %val.addr.i5, align 1
  %39 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap.i, align 4
  %call17.i15 = call i32 @regmap_bulk_write(ptr noundef %40, i32 noundef 17, ptr noundef nonnull %val.addr.i5, i32 noundef 1) #8
  br label %m88ds3103_update_bits.exit17

m88ds3103_update_bits.exit17:                     ; preds = %if.end.i13, %do.end19.m88ds3103_update_bits.exit17_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i6) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i5)
  br label %cleanup

if.end24:                                         ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i18)
  %41 = ptrtoint ptr %val.addr.i18 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %val.addr.i18, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i19) #8
  %42 = ptrtoint ptr %tmp.i19 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -1, ptr %tmp.i19, align 1, !annotation !260
  %43 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap.i, align 4
  %call.i21 = call i32 @regmap_bulk_read(ptr noundef %44, i32 noundef 17, ptr noundef nonnull %tmp.i19, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %tobool.not.i22 = icmp eq i32 %call.i21, 0
  br i1 %tobool.not.i22, label %if.end.i26, label %if.end24.m88ds3103_update_bits.exit30_crit_edge

if.end24.m88ds3103_update_bits.exit30_crit_edge:  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %m88ds3103_update_bits.exit30

if.end.i26:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %val.addr.i18 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %val.addr.i18, align 1
  %and24.i23 = and i8 %46, 1
  %47 = ptrtoint ptr %tmp.i19 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %tmp.i19, align 1
  %and9.i24 = and i8 %48, -2
  store i8 %and9.i24, ptr %tmp.i19, align 1
  %or25.i25 = or i8 %and9.i24, %and24.i23
  store i8 %or25.i25, ptr %val.addr.i18, align 1
  %49 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap.i, align 4
  %call17.i28 = call i32 @regmap_bulk_write(ptr noundef %50, i32 noundef 17, ptr noundef nonnull %val.addr.i18, i32 noundef 1) #8
  br label %m88ds3103_update_bits.exit30

m88ds3103_update_bits.exit30:                     ; preds = %if.end.i26, %if.end24.m88ds3103_update_bits.exit30_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i19) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i18)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103b_dt_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103b_dt_write, %if.then38)) #8
          to label %cleanup [label %if.then38], !srcloc !261

if.then38:                                        ; preds = %m88ds3103_update_bits.exit30
  call void @__sanitizer_cov_trace_pc() #10
  %dev39 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %51 = ptrtoint ptr %dt_addr to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %dt_addr, align 8
  %conv41 = zext i8 %52 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103b_dt_write.__UNIQUE_ID_ddebug293, ptr noundef %dev39, ptr noundef nonnull @.str.45, i32 noundef %conv41, i32 noundef %reg, i32 noundef %data) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %m88ds3103_update_bits.exit30, %m88ds3103_update_bits.exit17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_multi_reg_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @m88ds3103b_select_mclk(ptr nocapture noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.m88ds3103_dev, ptr %dev, i32 0, i32 6, i32 8
  %mclk = getelementptr inbounds %struct.m88ds3103_dev, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mclk, align 4
  %2 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dtv_property_cache, align 4
  %div = udiv i32 %3, 1000
  %symbol_rate = getelementptr inbounds %struct.m88ds3103_dev, ptr %dev, i32 0, i32 6, i32 8, i32 10
  %4 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %symbol_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 45010000, i32 %5)
  %cmp = icmp ugt i32 %5, 45010000
  br i1 %cmp, label %entry.if.end47_crit_edge, label %for.cond.preheader

entry.if.end47_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

for.cond.preheader:                               ; preds = %entry
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %dev43 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %indvars.iv = phi i32 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %reg16.05 = phi i8 [ 96, %for.cond.preheader ], [ %reg16.1, %for.inc.for.body_crit_edge ]
  %max_offset.03 = phi i32 [ 0, %for.cond.preheader ], [ %max_offset.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [3 x i32], ptr @__const.m88ds3103b_select_mclk.adc_Freq_MHz, i32 0, i32 %indvars.iv
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %rem = urem i32 %div, %9
  %div111 = lshr i32 %9, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %div111)
  %cmp12 = icmp ugt i32 %rem, %div111
  %sub = sub i32 %9, %rem
  %spec.select = select i1 %cmp12, i32 %sub, i32 %rem
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %max_offset.03)
  %cmp23 = icmp ugt i32 %spec.select, %max_offset.03
  br i1 %cmp23, label %if.then25, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then25:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx29 = getelementptr [3 x i8], ptr @__const.m88ds3103b_select_mclk.reg16_list, i32 0, i32 %indvars.iv
  %10 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx29, align 1
  %mul32 = mul i32 %9, 1000000
  %12 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul32, ptr %mclk, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103b_select_mclk.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103b_select_mclk, %if.then42)) #8
          to label %for.inc [label %if.then42], !srcloc !261

if.then42:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mclk, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103b_select_mclk.__UNIQUE_ID_ddebug301, ptr noundef %dev43, ptr noundef nonnull @.str.54, i32 noundef %1, i32 noundef %14) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then42, %if.then25, %for.body.for.inc_crit_edge
  %max_offset.1 = phi i32 [ %spec.select, %if.then42 ], [ %max_offset.03, %for.body.for.inc_crit_edge ], [ %spec.select, %if.then25 ]
  %reg16.1 = phi i8 [ %11, %if.then42 ], [ %reg16.05, %for.body.for.inc_crit_edge ], [ %11, %if.then25 ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 3
  br i1 %exitcond.not, label %for.inc.if.end47_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.end47_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.end47:                                         ; preds = %for.inc.if.end47_crit_edge, %entry.if.end47_crit_edge
  %reg16.2 = phi i8 [ 115, %entry.if.end47_crit_edge ], [ %reg16.1, %for.inc.if.end47_crit_edge ]
  %15 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mclk, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %16, label %if.else74 [
    i32 93000000, label %if.end47.if.end80_crit_edge
    i32 96000000, label %if.then57
    i32 99000000, label %if.then64
    i32 110250000, label %if.then71
  ]

if.end47.if.end80_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.then57:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.then64:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.then71:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.else74:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.end80:                                         ; preds = %if.else74, %if.then71, %if.then64, %if.then57, %if.end47.if.end80_crit_edge
  %.sink7 = phi i32 [ 68, %if.then57 ], [ 78, %if.then71 ], [ 68, %if.else74 ], [ 70, %if.then64 ], [ 66, %if.end47.if.end80_crit_edge ]
  %regmap58 = getelementptr inbounds %struct.m88ds3103_dev, ptr %dev, i32 0, i32 3
  %18 = ptrtoint ptr %regmap58 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap58, align 4
  %call59 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 160, i32 noundef %.sink7) #8
  %call81 = tail call fastcc i32 @m88ds3103b_dt_read(ptr noundef %dev, i8 noundef zeroext 21)
  tail call fastcc void @m88ds3103b_dt_write(ptr noundef %dev, i32 noundef 5, i32 noundef 64)
  tail call fastcc void @m88ds3103b_dt_write(ptr noundef %dev, i32 noundef 17, i32 noundef 8)
  %conv91 = and i32 %call81, 253
  %or = or i32 %conv91, 2
  %cond100 = select i1 %cmp, i32 14, i32 10
  %reg15.0 = select i1 %cmp, i32 %or, i32 %conv91
  tail call fastcc void @m88ds3103b_dt_write(ptr noundef %dev, i32 noundef 21, i32 noundef %reg15.0)
  %conv95 = zext i8 %reg16.2 to i32
  tail call fastcc void @m88ds3103b_dt_write(ptr noundef %dev, i32 noundef 22, i32 noundef %conv95)
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 5500, i32 noundef 2) #8
  tail call fastcc void @m88ds3103b_dt_write(ptr noundef %dev, i32 noundef 5, i32 noundef 0)
  tail call fastcc void @m88ds3103b_dt_write(ptr noundef %dev, i32 noundef 17, i32 noundef %cond100)
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 5500, i32 noundef 2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @m88ds3103b_set_mclk(ptr nocapture noundef readonly %dev, i32 noundef %mclk_khz) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @m88ds3103b_dt_read(ptr noundef %dev, i8 noundef zeroext 21)
  %call1 = tail call fastcc i32 @m88ds3103b_dt_read(ptr noundef %dev, i8 noundef zeroext 22)
  %call3 = tail call fastcc i32 @m88ds3103b_dt_read(ptr noundef %dev, i8 noundef zeroext 29)
  %cfg = getelementptr inbounds %struct.m88ds3103_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 8
  %ts_mode = getelementptr inbounds %struct.m88ds3103_config, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ts_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ts_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %if.then37, label %if.else155

if.then37:                                        ; preds = %entry
  %4 = shl i32 %call, 8
  %conv2132 = and i32 %4, 256
  %conv2233 = and i32 %call1, 255
  %add34 = or i32 %conv2132, %conv2233
  %mul2935 = mul nuw nsw i32 %add34, 36000
  %mul3036 = add nuw nsw i32 %mul2935, 1152000
  %div3137 = udiv i32 %mul3036, %mclk_khz
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %div3137)
  %cmp38 = icmp ult i32 %div3137, 33
  br i1 %cmp38, label %if.then40, label %if.else46

if.then40:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  %div4214 = lshr i32 %div3137, 1
  %conv43 = trunc i32 %div4214 to i8
  %sub = sub nsw i32 %div3137, %div4214
  %conv45 = trunc i32 %sub to i8
  br label %if.end95.thread

if.else46:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %div3137)
  %cmp47 = icmp ult i32 %div3137, 35
  br i1 %cmp47, label %.thread, label %if.else64

.thread:                                          ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #10
  %5 = trunc i32 %div3137 to i8
  %conv63 = add nsw i8 %5, -22
  br label %if.else144

if.else64:                                        ; preds = %if.else46
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %div3137)
  %cmp65 = icmp ult i32 %div3137, 65
  br i1 %cmp65, label %if.end95, label %if.else64.if.end95.thread53_crit_edge

if.else64.if.end95.thread53_crit_edge:            ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95.thread53

if.end95:                                         ; preds = %if.else64
  %div6912 = lshr i32 %div3137, 2
  %conv70 = trunc i32 %div6912 to i8
  %conv71 = and i32 %div6912, 255
  %sub72 = sub nsw i32 %div3137, %conv71
  %div75 = udiv i32 %sub72, 3
  %conv76 = trunc i32 %div75 to i8
  %conv79 = and i32 %div75, 255
  %sub80 = sub nsw i32 %sub72, %conv79
  %div8313 = lshr i32 %sub80, 1
  %conv84 = trunc i32 %div8313 to i8
  %sub90 = sub i32 %sub80, %div8313
  %conv91 = trunc i32 %sub90 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %conv70)
  %cmp97 = icmp eq i8 %conv70, 16
  %6 = add i8 %conv70, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -7, i8 %6)
  %7 = icmp ult i8 %6, -7
  %spec.select = select i1 %7, i8 %conv70, i8 8
  br i1 %cmp97, label %if.end95.if.end95.thread53_crit_edge, label %if.end95.if.end95.thread_crit_edge

if.end95.if.end95.thread_crit_edge:               ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95.thread

if.end95.if.end95.thread53_crit_edge:             ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95.thread53

if.end95.thread53:                                ; preds = %if.end95.if.end95.thread53_crit_edge, %if.else64.if.end95.thread53_crit_edge
  %f3.066 = phi i8 [ %conv91, %if.end95.if.end95.thread53_crit_edge ], [ 16, %if.else64.if.end95.thread53_crit_edge ]
  %f2.065 = phi i8 [ %conv84, %if.end95.if.end95.thread53_crit_edge ], [ 16, %if.else64.if.end95.thread53_crit_edge ]
  %f1.064 = phi i8 [ %conv76, %if.end95.if.end95.thread53_crit_edge ], [ 16, %if.else64.if.end95.thread53_crit_edge ]
  br label %if.end95.thread

if.end95.thread:                                  ; preds = %if.end95.thread53, %if.end95.if.end95.thread_crit_edge, %if.then40
  %N.052 = phi i8 [ 4, %if.end95.thread53 ], [ 4, %if.end95.if.end95.thread_crit_edge ], [ 2, %if.then40 ]
  %f3.051 = phi i8 [ %f3.066, %if.end95.thread53 ], [ %conv91, %if.end95.if.end95.thread_crit_edge ], [ 0, %if.then40 ]
  %f2.050 = phi i8 [ %f2.065, %if.end95.thread53 ], [ %conv84, %if.end95.if.end95.thread_crit_edge ], [ %conv45, %if.then40 ]
  %f1.049 = phi i8 [ %f1.064, %if.end95.thread53 ], [ %conv76, %if.end95.if.end95.thread_crit_edge ], [ %conv43, %if.then40 ]
  %8 = phi i8 [ 0, %if.end95.thread53 ], [ %spec.select, %if.end95.if.end95.thread_crit_edge ], [ 0, %if.then40 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %f1.049)
  %cmp111 = icmp eq i8 %f1.049, 16
  %9 = add i8 %f1.049, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -7, i8 %9)
  %10 = icmp ult i8 %9, -7
  %spec.select24 = select i1 %10, i8 %f1.049, i8 8
  %spec.select118 = select i1 %cmp111, i8 0, i8 %spec.select24
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %f2.050)
  %cmp126 = icmp eq i8 %f2.050, 16
  %11 = add i8 %f2.050, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -7, i8 %11)
  %12 = icmp ult i8 %11, -7
  %spec.select25 = select i1 %12, i8 %f2.050, i8 8
  %f2.1 = select i1 %cmp126, i8 0, i8 %spec.select25
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %f3.051)
  %cmp141 = icmp eq i8 %f3.051, 16
  br i1 %cmp141, label %if.end95.thread.if.end275_crit_edge, label %if.end95.thread.if.else144_crit_edge

if.end95.thread.if.else144_crit_edge:             ; preds = %if.end95.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else144

if.end95.thread.if.end275_crit_edge:              ; preds = %if.end95.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end275

if.else144:                                       ; preds = %if.end95.thread.if.else144_crit_edge, %.thread
  %f2.1117 = phi i8 [ %conv63, %.thread ], [ %f2.1, %if.end95.thread.if.else144_crit_edge ]
  %13 = phi i8 [ 11, %.thread ], [ %spec.select118, %if.end95.thread.if.else144_crit_edge ]
  %N.052105116 = phi i8 [ 3, %.thread ], [ %N.052, %if.end95.thread.if.else144_crit_edge ]
  %f3.051106115 = phi i8 [ 0, %.thread ], [ %f3.051, %if.end95.thread.if.else144_crit_edge ]
  %14 = phi i8 [ 11, %.thread ], [ %8, %if.end95.thread.if.else144_crit_edge ]
  %15 = add i8 %f3.051106115, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -7, i8 %15)
  %16 = icmp ult i8 %15, -7
  %spec.select26 = select i1 %16, i8 %f3.051106115, i8 8
  br label %if.end275

if.else155:                                       ; preds = %entry
  %conv7 = and i32 %call1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %conv7)
  %switch.selectcmp = icmp eq i32 %conv7, 100
  %switch.select = select i1 %switch.selectcmp, i32 99, i32 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 92, i32 %conv7)
  %switch.selectcmp22 = icmp eq i32 %conv7, 92
  %switch.select23 = select i1 %switch.selectcmp22, i32 93, i32 %switch.select
  %mul = mul i32 %switch.select23, %mclk_khz
  %div18 = udiv i32 %mul, 96
  %17 = shl i32 %call, 8
  %conv21 = and i32 %17, 256
  %add = or i32 %conv21, %conv7
  %mul29 = mul nuw nsw i32 %add, 36000
  %mul30 = add nuw nsw i32 %mul29, 1152000
  %div31 = udiv i32 %mul30, %div18
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %div31)
  %cmp156 = icmp ult i32 %div31, 33
  br i1 %cmp156, label %if.end214.thread86, label %if.else165

if.end214.thread86:                               ; preds = %if.else155
  call void @__sanitizer_cov_trace_pc() #10
  %div16011 = lshr i32 %div31, 1
  %conv161 = trunc i32 %div16011 to i8
  %sub163 = sub nsw i32 %div31, %div16011
  %conv164 = trunc i32 %sub163 to i8
  br label %18

if.else165:                                       ; preds = %if.else155
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %div31)
  %cmp166 = icmp ult i32 %div31, 49
  br i1 %cmp166, label %if.then168, label %if.else183

if.then168:                                       ; preds = %if.else165
  call void @__sanitizer_cov_trace_pc() #10
  %div170.lhs.trunc = trunc i32 %div31 to i8
  %div17097 = udiv i8 %div170.lhs.trunc, 3
  %div170.zext = zext i8 %div17097 to i32
  %sub173 = sub nuw nsw i32 %div31, %div170.zext
  %div17610 = lshr i32 %sub173, 1
  %conv177 = trunc i32 %div17610 to i8
  %sub181 = sub nsw i32 %sub173, %div17610
  br label %if.end214

if.else183:                                       ; preds = %if.else165
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %div31)
  %cmp184 = icmp ult i32 %div31, 65
  br i1 %cmp184, label %if.then186, label %if.else183.if.end214.thread_crit_edge

if.else183.if.end214.thread_crit_edge:            ; preds = %if.else183
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end214.thread

if.then186:                                       ; preds = %if.else183
  call void @__sanitizer_cov_trace_pc() #10
  %div1888 = lshr i32 %div31, 2
  %sub191 = sub nuw nsw i32 %div31, %div1888
  %div194.lhs.trunc = trunc i32 %sub191 to i8
  %div19498 = udiv i8 %div194.lhs.trunc, 3
  %div194.zext = zext i8 %div19498 to i32
  %sub199 = sub nuw nsw i32 %sub191, %div194.zext
  %div2029 = lshr i32 %sub199, 1
  %sub209 = sub nsw i32 %sub199, %div2029
  %conv210 = trunc i32 %sub209 to i8
  br label %if.end214

if.end214:                                        ; preds = %if.then186, %if.then168
  %f0.2.in = phi i32 [ %div170.zext, %if.then168 ], [ %div1888, %if.then186 ]
  %f1.2 = phi i8 [ %conv177, %if.then168 ], [ %div19498, %if.then186 ]
  %f2.2.in = phi i32 [ %sub181, %if.then168 ], [ %div2029, %if.then186 ]
  %f3.1 = phi i8 [ 0, %if.then168 ], [ %conv210, %if.then186 ]
  %N.1 = phi i8 [ 3, %if.then168 ], [ 4, %if.then186 ]
  %f2.2 = trunc i32 %f2.2.in to i8
  %f0.2 = trunc i32 %f0.2.in to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %f0.2)
  %cmp216 = icmp eq i8 %f0.2, 16
  br i1 %cmp216, label %if.end214.if.end214.thread_crit_edge, label %if.end214._crit_edge

if.end214._crit_edge:                             ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #10
  br label %18

if.end214.if.end214.thread_crit_edge:             ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end214.thread

if.end214.thread:                                 ; preds = %if.end214.if.end214.thread_crit_edge, %if.else183.if.end214.thread_crit_edge
  %N.185 = phi i8 [ %N.1, %if.end214.if.end214.thread_crit_edge ], [ 4, %if.else183.if.end214.thread_crit_edge ]
  %f3.183 = phi i8 [ %f3.1, %if.end214.if.end214.thread_crit_edge ], [ 16, %if.else183.if.end214.thread_crit_edge ]
  %f2.281 = phi i8 [ %f2.2, %if.end214.if.end214.thread_crit_edge ], [ 16, %if.else183.if.end214.thread_crit_edge ]
  %f1.279 = phi i8 [ %f1.2, %if.end214.if.end214.thread_crit_edge ], [ 16, %if.else183.if.end214.thread_crit_edge ]
  br label %18

18:                                               ; preds = %if.end214.thread, %if.end214._crit_edge, %if.end214.thread86
  %N.184 = phi i8 [ %N.185, %if.end214.thread ], [ %N.1, %if.end214._crit_edge ], [ 2, %if.end214.thread86 ]
  %f3.182 = phi i8 [ %f3.183, %if.end214.thread ], [ %f3.1, %if.end214._crit_edge ], [ 0, %if.end214.thread86 ]
  %f2.280 = phi i8 [ %f2.281, %if.end214.thread ], [ %f2.2, %if.end214._crit_edge ], [ %conv164, %if.end214.thread86 ]
  %f1.278 = phi i8 [ %f1.279, %if.end214.thread ], [ %f1.2, %if.end214._crit_edge ], [ %conv161, %if.end214.thread86 ]
  %19 = phi i8 [ 0, %if.end214.thread ], [ %f0.2, %if.end214._crit_edge ], [ 0, %if.end214.thread86 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %f1.278)
  %cmp231 = icmp eq i8 %f1.278, 16
  %20 = add nsw i8 %f1.278, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -8, i8 %20)
  %21 = icmp ult i8 %20, -8
  %spec.select28 = select i1 %21, i8 %f1.278, i8 9
  %f1.3 = select i1 %cmp231, i8 0, i8 %spec.select28
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %f2.280)
  %cmp246 = icmp eq i8 %f2.280, 16
  %22 = add i8 %f2.280, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -8, i8 %22)
  %23 = icmp ult i8 %22, -8
  %spec.select29 = select i1 %23, i8 %f2.280, i8 9
  %f2.3 = select i1 %cmp246, i8 0, i8 %spec.select29
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %f3.182)
  %cmp261 = icmp eq i8 %f3.182, 16
  br i1 %cmp261, label %.if.end275_crit_edge, label %if.else264

.if.end275_crit_edge:                             ; preds = %18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end275

if.else264:                                       ; preds = %18
  call void @__sanitizer_cov_trace_pc() #10
  %24 = add i8 %f3.182, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -8, i8 %24)
  %25 = icmp ult i8 %24, -8
  %spec.select30 = select i1 %25, i8 %f3.182, i8 9
  br label %if.end275

if.end275:                                        ; preds = %if.else264, %.if.end275_crit_edge, %if.else144, %if.end95.thread.if.end275_crit_edge
  %f0.4 = phi i8 [ %8, %if.end95.thread.if.end275_crit_edge ], [ %19, %.if.end275_crit_edge ], [ %14, %if.else144 ], [ %19, %if.else264 ]
  %f1.4 = phi i8 [ %spec.select118, %if.end95.thread.if.end275_crit_edge ], [ %f1.3, %.if.end275_crit_edge ], [ %13, %if.else144 ], [ %f1.3, %if.else264 ]
  %f2.4 = phi i8 [ %f2.1, %if.end95.thread.if.end275_crit_edge ], [ %f2.3, %.if.end275_crit_edge ], [ %f2.1117, %if.else144 ], [ %f2.3, %if.else264 ]
  %f3.2 = phi i8 [ 0, %if.end95.thread.if.end275_crit_edge ], [ 0, %.if.end275_crit_edge ], [ %spec.select26, %if.else144 ], [ %spec.select30, %if.else264 ]
  %N.2.off0 = phi i8 [ %N.052, %if.end95.thread.if.end275_crit_edge ], [ %N.184, %.if.end275_crit_edge ], [ %N.052105116, %if.else144 ], [ %N.184, %if.else264 ]
  %sub277 = add nuw i8 %N.2.off0, 127
  %26 = trunc i32 %call3 to i8
  %27 = and i8 %26, 124
  %conv284 = or i8 %27, %sub277
  %28 = or i8 %conv284, -128
  %shl289 = shl i8 %f3.2, 4
  %add291 = add i8 %shl289, %f2.4
  %shl295 = shl i8 %f1.4, 4
  %add297 = add i8 %shl295, %f0.4
  tail call fastcc void @m88ds3103b_dt_write(ptr noundef %dev, i32 noundef 5, i32 noundef 64)
  tail call fastcc void @m88ds3103b_dt_write(ptr noundef %dev, i32 noundef 17, i32 noundef 8)
  %conv302 = zext i8 %28 to i32
  tail call fastcc void @m88ds3103b_dt_write(ptr noundef %dev, i32 noundef 29, i32 noundef %conv302)
  %conv304 = zext i8 %add291 to i32
  tail call fastcc void @m88ds3103b_dt_write(ptr noundef %dev, i32 noundef 30, i32 noundef %conv304)
  %conv306 = zext i8 %add297 to i32
  tail call fastcc void @m88ds3103b_dt_write(ptr noundef %dev, i32 noundef 31, i32 noundef %conv306)
  tail call fastcc void @m88ds3103b_dt_write(ptr noundef %dev, i32 noundef 23, i32 noundef 193)
  tail call fastcc void @m88ds3103b_dt_write(ptr noundef %dev, i32 noundef 23, i32 noundef 129)
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 5500, i32 noundef 2) #8
  tail call fastcc void @m88ds3103b_dt_write(ptr noundef %dev, i32 noundef 5, i32 noundef 0)
  tail call fastcc void @m88ds3103b_dt_write(ptr noundef %dev, i32 noundef 17, i32 noundef 10)
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 5500, i32 noundef 2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @m88ds3103_wr_reg_val_tab(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %tab, i32 noundef %tab_len) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [83 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  call void @llvm.lifetime.start.p0(i64 83, ptr nonnull %buf) #8
  %2 = call ptr @memset(ptr %buf, i32 255, i32 83)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_wr_reg_val_tab.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_wr_reg_val_tab, %if.then)) #8
          to label %if.end6 [label %if.then], !srcloc !261

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_wr_reg_val_tab.__UNIQUE_ID_ddebug290, ptr noundef %dev4, ptr noundef nonnull @.str.56, i32 noundef %tab_len) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tab_len)
  %cmp781 = icmp sgt i32 %tab_len, 0
  br i1 %cmp781, label %for.body.lr.ph, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end6
  %sub = add nsw i32 %tab_len, -1
  %cfg = getelementptr inbounds %struct.m88ds3103_dev, ptr %dev, i32 0, i32 5
  %regmap = getelementptr inbounds %struct.m88ds3103_dev, ptr %dev, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.084 = phi i32 [ 0, %for.body.lr.ph ], [ %inc.pre-phi, %for.inc.for.body_crit_edge ]
  %j.082 = phi i32 [ 0, %for.body.lr.ph ], [ %inc33, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.m88ds3103_reg_val, ptr %tab, i32 %i.084
  %val = getelementptr %struct.m88ds3103_reg_val, ptr %tab, i32 %i.084, i32 1
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1
  %arrayidx8 = getelementptr [83 x i8], ptr %buf, i32 0, i32 %j.082
  %5 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %arrayidx8, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.084, i32 %sub)
  %cmp9 = icmp eq i32 %i.084, %sub
  br i1 %cmp9, label %for.body.if.then22_crit_edge, label %lor.lhs.false

for.body.if.then22_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

lor.lhs.false:                                    ; preds = %for.body
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %add = add nuw nsw i32 %i.084, 1
  %arrayidx11 = getelementptr %struct.m88ds3103_reg_val, ptr %tab, i32 %add
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx11, align 1
  %conv13 = zext i8 %9 to i32
  %sub14 = add nsw i32 %conv13, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub14, i32 %conv)
  %cmp15.not = icmp eq i32 %sub14, %conv
  br i1 %cmp15.not, label %lor.lhs.false17, label %lor.lhs.false.if.then22_crit_edge

lor.lhs.false.if.then22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %add18 = add i32 %j.082, 1
  %10 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfg, align 8
  %i2c_wr_max = getelementptr inbounds %struct.m88ds3103_config, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %i2c_wr_max to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %i2c_wr_max, align 4
  %conv19 = zext i16 %13 to i32
  %sub20 = add nsw i32 %conv19, -1
  %rem = srem i32 %add18, %sub20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool21.not = icmp eq i32 %rem, 0
  br i1 %tobool21.not, label %lor.lhs.false17.if.then22_crit_edge, label %lor.lhs.false17.for.inc_crit_edge

lor.lhs.false17.for.inc_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false17.if.then22_crit_edge:              ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

if.then22:                                        ; preds = %lor.lhs.false17.if.then22_crit_edge, %lor.lhs.false.if.then22_crit_edge, %for.body.if.then22_crit_edge
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  %conv25 = zext i8 %17 to i32
  %sub26 = sub i32 %conv25, %j.082
  %add27 = add i32 %j.082, 1
  %call28 = call i32 @regmap_bulk_write(ptr noundef %15, i32 noundef %sub26, ptr noundef nonnull %buf, i32 noundef %add27) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then22.for.inc_crit_edge, label %do.body34

if.then22.for.inc_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %.pre = add nuw nsw i32 %i.084, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then22.for.inc_crit_edge, %lor.lhs.false17.for.inc_crit_edge
  %inc.pre-phi = phi i32 [ %.pre, %if.then22.for.inc_crit_edge ], [ %add, %lor.lhs.false17.for.inc_crit_edge ]
  %j.1 = phi i32 [ -1, %if.then22.for.inc_crit_edge ], [ %j.082, %lor.lhs.false17.for.inc_crit_edge ]
  %inc33 = add i32 %j.1, 1
  %exitcond.not = icmp eq i32 %inc.pre-phi, %tab_len
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body34:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103_wr_reg_val_tab.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103_wr_reg_val_tab, %if.then46)) #8
          to label %cleanup [label %if.then46], !srcloc !261

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  %dev47 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103_wr_reg_val_tab.__UNIQUE_ID_ddebug291, ptr noundef %dev47, ptr noundef nonnull @.str.11, i32 noundef %call28) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %do.body34, %for.inc.cleanup_crit_edge, %if.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %if.then46 ], [ %call28, %do.body34 ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 83, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @m88ds3103b_dt_read(ptr nocapture noundef readonly %dev, i8 noundef zeroext %reg) unnamed_addr #0 align 64 {
entry:
  %val.addr.i94 = alloca i8, align 1
  %tmp.i95 = alloca i8, align 1
  %val.addr.i81 = alloca i8, align 1
  %tmp.i82 = alloca i8, align 1
  %val.addr.i = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  %b0 = alloca [1 x i8], align 1
  %b1 = alloca [1 x i8], align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0) #8
  %2 = ptrtoint ptr %b0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %reg, ptr %b0, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1) #8
  %3 = ptrtoint ptr %b1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #8
  %4 = getelementptr inbounds i8, ptr %msg, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %dt_addr = getelementptr inbounds %struct.m88ds3103_dev, ptr %dev, i32 0, i32 17
  %6 = ptrtoint ptr %dt_addr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dt_addr, align 8
  %conv = zext i8 %7 to i16
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %b0, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %12 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %arrayinit.element, align 4
  %flags6 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %13 = ptrtoint ptr %flags6 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags6, align 2
  %len7 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %14 = ptrtoint ptr %len7 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %len7, align 4
  %buf8 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %15 = ptrtoint ptr %buf8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b1, ptr %buf8, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %16 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %val.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #8
  %17 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %tmp.i, align 1, !annotation !260
  %regmap.i = getelementptr inbounds %struct.m88ds3103_dev, ptr %dev, i32 0, i32 3
  %18 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_bulk_read(ptr noundef %19, i32 noundef 17, ptr noundef nonnull %tmp.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.m88ds3103_update_bits.exit_crit_edge

entry.m88ds3103_update_bits.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %m88ds3103_update_bits.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %val.addr.i, align 1
  %and24.i = and i8 %21, 1
  %22 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %tmp.i, align 1
  %and9.i = and i8 %23, -2
  store i8 %and9.i, ptr %tmp.i, align 1
  %or25.i = or i8 %and9.i, %and24.i
  store i8 %or25.i, ptr %val.addr.i, align 1
  %24 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i, align 4
  %call17.i = call i32 @regmap_bulk_write(ptr noundef %25, i32 noundef 17, ptr noundef nonnull %val.addr.i, i32 noundef 1) #8
  br label %m88ds3103_update_bits.exit

m88ds3103_update_bits.exit:                       ; preds = %if.end.i, %entry.m88ds3103_update_bits.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  %26 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i, align 4
  %call11 = call i32 @regmap_write(ptr noundef %27, i32 noundef 3, i32 noundef 18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %m88ds3103_update_bits.exit.if.end18_crit_edge, label %do.body

m88ds3103_update_bits.exit.if.end18_crit_edge:    ; preds = %m88ds3103_update_bits.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

do.body:                                          ; preds = %m88ds3103_update_bits.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103b_dt_read.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103b_dt_read, %if.then16)) #8
          to label %if.end18 [label %if.then16], !srcloc !261

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev17 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103b_dt_read.__UNIQUE_ID_ddebug294, ptr noundef %dev17, ptr noundef nonnull @.str.43, i32 noundef %call11) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %do.body, %m88ds3103_update_bits.exit.if.end18_crit_edge
  %dt_client = getelementptr inbounds %struct.m88ds3103_dev, ptr %dev, i32 0, i32 1
  %28 = ptrtoint ptr %dt_client to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dt_client, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adapter, align 8
  %call20 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %msg, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call20)
  %cmp.not = icmp eq i32 %call20, 2
  br i1 %cmp.not, label %if.end31, label %do.end25

do.end25:                                         ; preds = %if.end18
  %dev26 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %dt_addr to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %dt_addr, align 8
  %conv28 = zext i8 %33 to i32
  %conv29 = zext i8 %reg to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.58, i32 noundef %conv28, i32 noundef %call20, i32 noundef %conv29) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i81)
  %34 = ptrtoint ptr %val.addr.i81 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %val.addr.i81, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i82) #8
  %35 = ptrtoint ptr %tmp.i82 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -1, ptr %tmp.i82, align 1, !annotation !260
  %36 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap.i, align 4
  %call.i84 = call i32 @regmap_bulk_read(ptr noundef %37, i32 noundef 17, ptr noundef nonnull %tmp.i82, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %tobool.not.i85 = icmp eq i32 %call.i84, 0
  br i1 %tobool.not.i85, label %if.end.i89, label %do.end25.m88ds3103_update_bits.exit93_crit_edge

do.end25.m88ds3103_update_bits.exit93_crit_edge:  ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %m88ds3103_update_bits.exit93

if.end.i89:                                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %val.addr.i81 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %val.addr.i81, align 1
  %and24.i86 = and i8 %39, 1
  %40 = ptrtoint ptr %tmp.i82 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %tmp.i82, align 1
  %and9.i87 = and i8 %41, -2
  store i8 %and9.i87, ptr %tmp.i82, align 1
  %or25.i88 = or i8 %and9.i87, %and24.i86
  store i8 %or25.i88, ptr %val.addr.i81, align 1
  %42 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap.i, align 4
  %call17.i91 = call i32 @regmap_bulk_write(ptr noundef %43, i32 noundef 17, ptr noundef nonnull %val.addr.i81, i32 noundef 1) #8
  br label %m88ds3103_update_bits.exit93

m88ds3103_update_bits.exit93:                     ; preds = %if.end.i89, %do.end25.m88ds3103_update_bits.exit93_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i82) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i81)
  br label %cleanup

if.end31:                                         ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i94)
  %44 = ptrtoint ptr %val.addr.i94 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %val.addr.i94, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i95) #8
  %45 = ptrtoint ptr %tmp.i95 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -1, ptr %tmp.i95, align 1, !annotation !260
  %46 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap.i, align 4
  %call.i97 = call i32 @regmap_bulk_read(ptr noundef %47, i32 noundef 17, ptr noundef nonnull %tmp.i95, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %tobool.not.i98 = icmp eq i32 %call.i97, 0
  br i1 %tobool.not.i98, label %if.end.i102, label %if.end31.m88ds3103_update_bits.exit106_crit_edge

if.end31.m88ds3103_update_bits.exit106_crit_edge: ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %m88ds3103_update_bits.exit106

if.end.i102:                                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %val.addr.i94 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %val.addr.i94, align 1
  %and24.i99 = and i8 %49, 1
  %50 = ptrtoint ptr %tmp.i95 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %tmp.i95, align 1
  %and9.i100 = and i8 %51, -2
  store i8 %and9.i100, ptr %tmp.i95, align 1
  %or25.i101 = or i8 %and9.i100, %and24.i99
  store i8 %or25.i101, ptr %val.addr.i94, align 1
  %52 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap.i, align 4
  %call17.i104 = call i32 @regmap_bulk_write(ptr noundef %53, i32 noundef 17, ptr noundef nonnull %val.addr.i94, i32 noundef 1) #8
  br label %m88ds3103_update_bits.exit106

m88ds3103_update_bits.exit106:                    ; preds = %if.end.i102, %if.end31.m88ds3103_update_bits.exit106_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i95) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i94)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88ds3103b_dt_read.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88ds3103b_dt_read, %if.then45)) #8
          to label %do.end53 [label %if.then45], !srcloc !261

if.then45:                                        ; preds = %m88ds3103_update_bits.exit106
  call void @__sanitizer_cov_trace_pc() #10
  %dev46 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %54 = ptrtoint ptr %dt_addr to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %dt_addr, align 8
  %conv48 = zext i8 %55 to i32
  %conv49 = zext i8 %reg to i32
  %56 = ptrtoint ptr %b1 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %b1, align 1
  %conv50 = zext i8 %57 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88ds3103b_dt_read.__UNIQUE_ID_ddebug295, ptr noundef %dev46, ptr noundef nonnull @.str.45, i32 noundef %conv48, i32 noundef %conv49, i32 noundef %conv50) #8
  br label %do.end53

do.end53:                                         ; preds = %if.then45, %m88ds3103_update_bits.exit106
  %58 = ptrtoint ptr %b1 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %b1, align 1
  %conv55 = zext i8 %59 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end53, %m88ds3103_update_bits.exit93
  %retval.0 = phi i32 [ -121, %m88ds3103_update_bits.exit93 ], [ %conv55, %do.end53 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog2(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog10(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_mux_del_adapters(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !18, !20, !22, !24, !26, !27, !29, !30, !31, !32, !34, !35, !36, !37, !38, !40, !42, !44, !45, !47, !48, !50, !52, !53, !54, !55, !56, !58, !60, !61, !62, !64, !65, !67, !68, !69, !70, !72, !74, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !104, !105, !106, !108, !109, !110, !112, !113, !115, !116, !118, !120, !122, !123, !124, !126, !127, !129, !130, !132, !134, !135, !137, !138, !140, !142, !143, !144, !146, !148, !150, !152, !154, !155, !156, !158, !160, !161, !163, !164, !165, !167, !169, !170, !172, !173, !175, !177, !178, !180, !181, !183, !185, !187, !188, !190, !191, !193, !195, !197, !199, !200, !201, !203, !204, !206, !207, !209, !211, !212, !213, !215, !216, !218, !220, !222, !224, !225, !226, !228, !229, !231, !233, !234, !235, !237, !238, !240, !242, !243, !245, !246, !248, !249}
!llvm.module.flags = !{!251, !252, !253, !254, !255, !256, !257, !258}
!llvm.ident = !{!259}

!0 = !{ptr @__ksymtab_m88ds3103_get_agc_pwm, !1, !"__ksymtab_m88ds3103_get_agc_pwm", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 167, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1688, i32 27}
!4 = !{ptr @__ksymtab_m88ds3103_attach, !5, !"__ksymtab_m88ds3103_attach", i1 false, i1 false}
!5 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1698, i32 1}
!6 = !{ptr @__initcall__kmod_m88ds3103__344_1950_m88ds3103_driver_init6, !7, !"__initcall__kmod_m88ds3103__344_1950_m88ds3103_driver_init6", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1950, i32 1}
!8 = !{ptr @__exitcall_m88ds3103_driver_exit, !7, !"__exitcall_m88ds3103_driver_exit", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author345, !10, !"__UNIQUE_ID_author345", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1952, i32 1}
!11 = !{ptr @__UNIQUE_ID_description346, !12, !"__UNIQUE_ID_description346", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1953, i32 1}
!13 = !{ptr @__UNIQUE_ID_file347, !14, !"__UNIQUE_ID_file347", i1 false, i1 false}
!14 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1954, i32 1}
!15 = !{ptr @__UNIQUE_ID_license348, !14, !"__UNIQUE_ID_license348", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_firmware349, !17, !"__UNIQUE_ID_firmware349", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1955, i32 1}
!18 = !{ptr @__UNIQUE_ID_firmware350, !19, !"__UNIQUE_ID_firmware350", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1956, i32 1}
!20 = !{ptr @__UNIQUE_ID_firmware351, !21, !"__UNIQUE_ID_firmware351", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1957, i32 1}
!22 = !{ptr @m88ds3103_driver, !23, !"m88ds3103_driver", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1940, i32 26}
!24 = !{ptr @m88ds3103_probe._key, !25, !"_key", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1795, i32 16}
!26 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1809, i32 2}
!29 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @m88ds3103_probe.__UNIQUE_ID_ddebug340, !28, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!32 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1817, i32 3}
!34 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @m88ds3103_probe._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @m88ds3103_probe._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1876, i32 34}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1879, i32 34}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1899, i32 3}
!44 = !{ptr @m88ds3103_probe.__UNIQUE_ID_ddebug341, !43, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1913, i32 2}
!47 = !{ptr @m88ds3103_probe.__UNIQUE_ID_ddebug342, !46, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1645, i32 10}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1651, i32 3}
!52 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @m88ds3103_select._entry, !51, !"_entry", i1 false, i1 false}
!55 = !{ptr @m88ds3103_select._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @m88ds3103_ops, !57, !"m88ds3103_ops", i1 false, i1 false}
!57 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1700, i32 38}
!58 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1021, i32 2}
!60 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @m88ds3103_init.__UNIQUE_ID_ddebug309, !59, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!62 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1042, i32 2}
!64 = !{ptr @m88ds3103_init.__UNIQUE_ID_ddebug310, !63, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1056, i32 2}
!67 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @m88ds3103_init._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @m88ds3103_init._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1060, i32 10}
!72 = !{ptr @.str.22, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1062, i32 10}
!74 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1064, i32 10}
!76 = !{ptr @.str.25, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1069, i32 3}
!78 = !{ptr @m88ds3103_init._entry.24, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @m88ds3103_init._entry_ptr.26, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1073, i32 2}
!82 = !{ptr @m88ds3103_init._entry.27, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @m88ds3103_init._entry_ptr.29, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1085, i32 4}
!86 = !{ptr @m88ds3103_init._entry.30, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @m88ds3103_init._entry_ptr.32, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1103, i32 3}
!90 = !{ptr @m88ds3103_init._entry.33, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @m88ds3103_init._entry_ptr.35, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1107, i32 2}
!94 = !{ptr @m88ds3103_init._entry.36, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @m88ds3103_init._entry_ptr.38, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1109, i32 2}
!98 = !{ptr @m88ds3103_init._entry.39, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @m88ds3103_init._entry_ptr.41, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @m88ds3103_init.__UNIQUE_ID_ddebug313, !101, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!101 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1134, i32 2}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 86, i32 3}
!104 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @m88ds3103b_dt_write.__UNIQUE_ID_ddebug292, !103, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!106 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 90, i32 3}
!108 = !{ptr @m88ds3103b_dt_write._entry, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @m88ds3103b_dt_write._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 98, i32 2}
!112 = !{ptr @m88ds3103b_dt_write.__UNIQUE_ID_ddebug293, !111, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!113 = !{ptr @.str.46, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1145, i32 2}
!115 = !{ptr @m88ds3103_sleep.__UNIQUE_ID_ddebug314, !114, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!116 = !{ptr @m88ds3103_sleep.__UNIQUE_ID_ddebug315, !117, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!117 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1172, i32 2}
!118 = !{ptr @m88ds3103_set_frontend.reset_buf, !119, !"reset_buf", i1 false, i1 false}
!119 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 630, i32 35}
!120 = !{ptr @.str.47, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 634, i32 2}
!122 = !{ptr @.str.48, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @m88ds3103_set_frontend.__UNIQUE_ID_ddebug302, !121, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!124 = !{ptr @.str.49, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 735, i32 4}
!126 = !{ptr @m88ds3103_set_frontend.__UNIQUE_ID_ddebug303, !125, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!127 = !{ptr @.str.50, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 790, i32 3}
!129 = !{ptr @m88ds3103_set_frontend.__UNIQUE_ID_ddebug304, !128, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!130 = !{ptr @m88ds3103_set_frontend.__UNIQUE_ID_ddebug305, !131, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!131 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 876, i32 3}
!132 = !{ptr @.str.51, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 912, i32 2}
!134 = !{ptr @m88ds3103_set_frontend.__UNIQUE_ID_ddebug306, !133, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!135 = !{ptr @.str.52, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 983, i32 2}
!137 = !{ptr @m88ds3103_set_frontend.__UNIQUE_ID_ddebug307, !136, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!138 = !{ptr @m88ds3103_set_frontend.__UNIQUE_ID_ddebug308, !139, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!139 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1007, i32 2}
!140 = !{ptr @.str.53, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 412, i32 5}
!142 = !{ptr @.str.54, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @m88ds3103b_select_mclk.__UNIQUE_ID_ddebug301, !141, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!144 = !{ptr @m88rs6000_dvbs_init_reg_vals, !145, !"m88rs6000_dvbs_init_reg_vals", i1 false, i1 false}
!145 = !{!"../drivers/media/dvb-frontends/m88ds3103_priv.h", i32 228, i32 39}
!146 = !{ptr @m88ds3103_dvbs_init_reg_vals, !147, !"m88ds3103_dvbs_init_reg_vals", i1 false, i1 false}
!147 = !{!"../drivers/media/dvb-frontends/m88ds3103_priv.h", i32 59, i32 39}
!148 = !{ptr @m88rs6000_dvbs2_init_reg_vals, !149, !"m88rs6000_dvbs2_init_reg_vals", i1 false, i1 false}
!149 = !{!"../drivers/media/dvb-frontends/m88ds3103_priv.h", i32 314, i32 39}
!150 = !{ptr @m88ds3103_dvbs2_init_reg_vals, !151, !"m88ds3103_dvbs2_init_reg_vals", i1 false, i1 false}
!151 = !{!"../drivers/media/dvb-frontends/m88ds3103_priv.h", i32 142, i32 39}
!152 = !{ptr @.str.55, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 41, i32 2}
!154 = !{ptr @.str.56, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @m88ds3103_wr_reg_val_tab.__UNIQUE_ID_ddebug290, !153, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!156 = !{ptr @m88ds3103_wr_reg_val_tab.__UNIQUE_ID_ddebug291, !157, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!157 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 63, i32 2}
!158 = !{ptr @.str.57, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 135, i32 3}
!160 = !{ptr @m88ds3103b_dt_read.__UNIQUE_ID_ddebug294, !159, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!161 = !{ptr @.str.58, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 139, i32 3}
!163 = !{ptr @m88ds3103b_dt_read._entry, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @m88ds3103b_dt_read._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @m88ds3103b_dt_read.__UNIQUE_ID_ddebug295, !166, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!166 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 147, i32 2}
!167 = !{ptr @.str.59, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1184, i32 2}
!169 = !{ptr @m88ds3103_get_frontend.__UNIQUE_ID_ddebug316, !168, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!170 = !{ptr @.str.60, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1227, i32 4}
!172 = !{ptr @m88ds3103_get_frontend.__UNIQUE_ID_ddebug317, !171, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!173 = !{ptr @m88ds3103_get_frontend.__UNIQUE_ID_ddebug318, !174, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!174 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1275, i32 4}
!175 = distinct !{null, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1301, i32 4}
!177 = distinct !{null, !176, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!178 = !{ptr @.str.62, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1324, i32 4}
!180 = !{ptr @m88ds3103_get_frontend.__UNIQUE_ID_ddebug320, !179, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!181 = !{ptr @m88ds3103_get_frontend.__UNIQUE_ID_ddebug321, !182, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!182 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1328, i32 3}
!183 = !{ptr @m88ds3103_get_frontend.__UNIQUE_ID_ddebug322, !184, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!184 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1341, i32 2}
!185 = !{ptr @.str.63, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 208, i32 3}
!187 = !{ptr @m88ds3103_read_status.__UNIQUE_ID_ddebug296, !186, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!188 = !{ptr @.str.64, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 214, i32 2}
!190 = !{ptr @m88ds3103_read_status.__UNIQUE_ID_ddebug297, !189, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!191 = !{ptr @m88ds3103_read_status.__UNIQUE_ID_ddebug298, !192, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!192 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 271, i32 4}
!193 = !{ptr @m88ds3103_read_status.__UNIQUE_ID_ddebug299, !194, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!194 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 357, i32 4}
!195 = !{ptr @m88ds3103_read_status.__UNIQUE_ID_ddebug300, !196, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!196 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 373, i32 2}
!197 = !{ptr @.str.65, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1471, i32 2}
!199 = !{ptr @.str.66, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @m88ds3103_diseqc_send_master_cmd.__UNIQUE_ID_ddebug329, !198, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!201 = !{ptr @.str.67, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1515, i32 3}
!203 = !{ptr @m88ds3103_diseqc_send_master_cmd.__UNIQUE_ID_ddebug330, !202, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!204 = !{ptr @.str.68, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1519, i32 3}
!206 = !{ptr @m88ds3103_diseqc_send_master_cmd.__UNIQUE_ID_ddebug331, !205, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!207 = !{ptr @m88ds3103_diseqc_send_master_cmd.__UNIQUE_ID_ddebug332, !208, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!208 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1537, i32 2}
!209 = !{ptr @.str.69, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1550, i32 2}
!211 = !{ptr @.str.70, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @m88ds3103_diseqc_send_burst.__UNIQUE_ID_ddebug333, !210, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!213 = !{ptr @.str.71, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1570, i32 3}
!215 = !{ptr @m88ds3103_diseqc_send_burst.__UNIQUE_ID_ddebug334, !214, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!216 = !{ptr @m88ds3103_diseqc_send_burst.__UNIQUE_ID_ddebug335, !217, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!217 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1594, i32 3}
!218 = !{ptr @m88ds3103_diseqc_send_burst.__UNIQUE_ID_ddebug336, !219, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!219 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1598, i32 3}
!220 = !{ptr @m88ds3103_diseqc_send_burst.__UNIQUE_ID_ddebug337, !221, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!221 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1616, i32 2}
!222 = !{ptr @.str.72, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1374, i32 2}
!224 = !{ptr @.str.73, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @m88ds3103_set_tone.__UNIQUE_ID_ddebug323, !223, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!226 = !{ptr @.str.74, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1391, i32 3}
!228 = !{ptr @m88ds3103_set_tone.__UNIQUE_ID_ddebug324, !227, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!229 = !{ptr @m88ds3103_set_tone.__UNIQUE_ID_ddebug325, !230, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!230 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1408, i32 2}
!231 = !{ptr @.str.75, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1421, i32 2}
!233 = !{ptr @.str.76, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @m88ds3103_set_voltage.__UNIQUE_ID_ddebug326, !232, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!235 = !{ptr @.str.77, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1442, i32 3}
!237 = !{ptr @m88ds3103_set_voltage.__UNIQUE_ID_ddebug327, !236, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!238 = !{ptr @m88ds3103_set_voltage.__UNIQUE_ID_ddebug328, !239, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!239 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1458, i32 2}
!240 = !{ptr @.str.78, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1749, i32 2}
!242 = !{ptr @m88ds3103_get_dvb_frontend.__UNIQUE_ID_ddebug338, !241, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!243 = !{ptr @.str.79, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1758, i32 2}
!245 = !{ptr @m88ds3103_get_i2c_adapter.__UNIQUE_ID_ddebug339, !244, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!246 = !{ptr @.str.80, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1921, i32 2}
!248 = !{ptr @m88ds3103_remove.__UNIQUE_ID_ddebug343, !247, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!249 = !{ptr @m88ds3103_id_table, !250, !"m88ds3103_id_table", i1 false, i1 false}
!250 = !{!"../drivers/media/dvb-frontends/m88ds3103.c", i32 1932, i32 35}
!251 = !{i32 1, !"wchar_size", i32 2}
!252 = !{i32 1, !"min_enum_size", i32 4}
!253 = !{i32 8, !"branch-target-enforcement", i32 0}
!254 = !{i32 8, !"sign-return-address", i32 0}
!255 = !{i32 8, !"sign-return-address-all", i32 0}
!256 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!257 = !{i32 7, !"uwtable", i32 1}
!258 = !{i32 7, !"frame-pointer", i32 2}
!259 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!260 = !{!"auto-init"}
!261 = !{i64 2148312392, i64 2148312397, i64 2148312410, i64 2148312454, i64 2148312488, i64 2148312509}
!262 = !{i8 0, i8 2}
!263 = !{!"branch_weights", i32 2000, i32 1}
!264 = !{i64 2148337579, i64 2148337859, i64 2148338193, i64 2148338527}
