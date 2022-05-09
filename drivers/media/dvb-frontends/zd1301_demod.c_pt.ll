; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/zd1301_demod.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/zd1301_demod.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+zd1301_demod_get_dvb_frontend\22, \22a\22\09"
module asm "\09.weak\09__crc_zd1301_demod_get_dvb_frontend\09\09\09\09"
module asm "\09.long\09__crc_zd1301_demod_get_dvb_frontend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zd1301_demod_get_dvb_frontend:\09\09\09\09\09"
module asm "\09.asciz \09\22zd1301_demod_get_dvb_frontend\22\09\09\09\09\09"
module asm "__kstrtabns_zd1301_demod_get_dvb_frontend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+zd1301_demod_get_i2c_adapter\22, \22a\22\09"
module asm "\09.weak\09__crc_zd1301_demod_get_i2c_adapter\09\09\09\09"
module asm "\09.long\09__crc_zd1301_demod_get_i2c_adapter\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zd1301_demod_get_i2c_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22zd1301_demod_get_i2c_adapter\22\09\09\09\09\09"
module asm "__kstrtabns_zd1301_demod_get_i2c_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.zd1301_demod_dev = type { ptr, %struct.dvb_frontend, %struct.i2c_adapter, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.84], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.84 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.85 }>
%union.anon.85 = type { i64 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.zd1301_demod_platform_data = type { ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_gain = internal constant [18 x i8] c"zd1301_demod.gain\00", align 1
@param_ops_byte = external dso_local constant %struct.kernel_param_ops, align 4
@zd1301_demod_gain = internal global { i8, [31 x i8] } { i8 56, [31 x i8] zeroinitializer }, align 32
@__param_gain = internal constant %struct.kernel_param { ptr @__param_str_gain, ptr null, ptr @param_ops_byte, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @zd1301_demod_gain } }, section "__param", align 4
@__UNIQUE_ID_gaintype290 = internal constant [32 x i8] c"zd1301_demod.parmtype=gain:byte\00", section ".modinfo", align 1
@__UNIQUE_ID_gain291 = internal constant [64 x i8] c"zd1301_demod.parm=gain:gain (value: 0x00 - 0x70, default: 0x38)\00", section ".modinfo", align 1
@zd1301_demod_get_dvb_frontend.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"zd1301_demod\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"zd1301_demod_get_dvb_frontend\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/media/dvb-frontends/zd1301_demod.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@__kstrtab_zd1301_demod_get_dvb_frontend = external dso_local constant [0 x i8], align 1
@__kstrtabns_zd1301_demod_get_dvb_frontend = external dso_local constant [0 x i8], align 1
@__ksymtab_zd1301_demod_get_dvb_frontend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zd1301_demod_get_dvb_frontend to i32), ptr @__kstrtab_zd1301_demod_get_dvb_frontend, ptr @__kstrtabns_zd1301_demod_get_dvb_frontend }, section "___ksymtab+zd1301_demod_get_dvb_frontend", align 4
@zd1301_demod_get_i2c_adapter.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.3, i8 0, i8 111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"zd1301_demod_get_i2c_adapter\00", [35 x i8] zeroinitializer }, align 32
@__kstrtab_zd1301_demod_get_i2c_adapter = external dso_local constant [0 x i8], align 1
@__kstrtabns_zd1301_demod_get_i2c_adapter = external dso_local constant [0 x i8], align 1
@__ksymtab_zd1301_demod_get_i2c_adapter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zd1301_demod_get_i2c_adapter to i32), ptr @__kstrtab_zd1301_demod_get_i2c_adapter, ptr @__kstrtabns_zd1301_demod_get_i2c_adapter }, section "___ksymtab+zd1301_demod_get_i2c_adapter", align 4
@__initcall__kmod_zd1301_demod__312_538_zd1301_demod_driver_init6 = internal global ptr @zd1301_demod_driver_init, section ".initcall6.init", align 4
@zd1301_demod_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @zd1301_demod_probe, ptr @zd1301_demod_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_zd1301_demod_driver_exit = internal global ptr @zd1301_demod_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author313 = internal constant [51 x i8] c"zd1301_demod.author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description314 = internal constant [57 x i8] c"zd1301_demod.description=ZyDAS ZD1301 demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file315 = internal constant [59 x i8] c"zd1301_demod.file=drivers/media/dvb-frontends/zd1301_demod\00", section ".modinfo", align 1
@__UNIQUE_ID_license316 = internal constant [25 x i8] c"zd1301_demod.license=GPL\00", section ".modinfo", align 1
@zd1301_demod_probe.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.3, i8 0, i8 115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"zd1301_demod_probe\00", [45 x i8] zeroinitializer }, align 32
@zd1301_demod_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.5, ptr @.str.2, i32 464, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"cannot proceed without platform data\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@zd1301_demod_probe._entry_ptr = internal global ptr @zd1301_demod_probe._entry, section ".printk_index", align 4
@zd1301_demod_probe.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.9, i8 0, i8 117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no parent device\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ZyDAS ZD1301 demod\00", [45 x i8] zeroinitializer }, align 32
@zd1301_demod_i2c_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @zd1301_demod_i2c_master_xfer, ptr null, ptr null, ptr null, ptr @zd1301_demod_i2c_functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@zd1301_demod_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.5, ptr @.str.2, i32 500, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"I2C adapter add failed %d\0A\00", [37 x i8] zeroinitializer }, align 32
@zd1301_demod_probe._entry_ptr.13 = internal global ptr @zd1301_demod_probe._entry.11, section ".printk_index", align 4
@zd1301_demod_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"ZyDAS ZD1301\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -2145702226 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr null, ptr null, ptr @zd1301_demod_init, ptr @zd1301_demod_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zd1301_demod_set_frontend, ptr @zd1301_demod_get_tune_settings, ptr null, ptr @zd1301_demod_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@zd1301_demod_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.2, i32 508, ptr @.str.16, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ZyDAS ZD1301 demod attached\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@zd1301_demod_probe._entry_ptr.17 = internal global ptr @zd1301_demod_probe._entry.14, section ".printk_index", align 4
@zd1301_demod_probe.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.18, i8 0, i8 -128, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"failed=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@zd1301_demod_i2c_master_xfer.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"zd1301_demod_i2c_master_xfer\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"write&read msg[0].len=%u msg[1].len=%u\0A\00", [56 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@zd1301_demod_i2c_master_xfer.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.21, i8 0, i8 93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"write msg[0].len=%u\0A\00", [43 x i8] zeroinitializer }, align 32
@zd1301_demod_i2c_master_xfer.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.22, i8 0, i8 105, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unknown msg[0].len=%u\0A\00", [41 x i8] zeroinitializer }, align 32
@zd1301_demod_i2c_master_xfer.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.18, i8 0, i8 107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@zd1301_demod_init.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.3, i8 0, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"zd1301_demod_init\00", [46 x i8] zeroinitializer }, align 32
@zd1301_demod_init.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.18, i8 0, i8 51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@zd1301_demod_sleep.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.3, i8 0, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"zd1301_demod_sleep\00", [45 x i8] zeroinitializer }, align 32
@zd1301_demod_sleep.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.18, i8 0, i8 43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@zd1301_demod_set_frontend.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"zd1301_demod_set_frontend\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"frequency=%u bandwidth_hz=%u\0A\00", [34 x i8] zeroinitializer }, align 32
@zd1301_demod_set_frontend.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.27, i8 0, i8 15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"if_frequency=%u\0A\00", [47 x i8] zeroinitializer }, align 32
@zd1301_demod_set_frontend.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.18, i8 0, i8 35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@zd1301_demod_get_tune_settings.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.3, i8 0, i8 54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"zd1301_demod_get_tune_settings\00", [33 x i8] zeroinitializer }, align 32
@zd1301_demod_read_status.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"zd1301_demod_read_status\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lock byte=%02x\0A\00", [16 x i8] zeroinitializer }, align 32
@zd1301_demod_read_status.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.18, i8 0, i8 67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@zd1301_demod_remove.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.3, i8 0, i8 -126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"zd1301_demod_remove\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 32, i64 6000000, i64 7000000, i64 8000000]
@___asan_gen_.33 = private unnamed_addr constant [18 x i8] c"zd1301_demod_gain\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 10, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 303, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 447, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [20 x i8] c"zd1301_demod_driver\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 530, i32 31 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 460, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 464, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 469, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 492, i32 29 }
@___asan_gen_.75 = private unnamed_addr constant [27 x i8] c"zd1301_demod_i2c_algorithm\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 438, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 500, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"zd1301_demod_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 272, i32 38 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 508, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 514, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 326, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 374, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 422, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 184, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 151, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 46, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 63, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 217, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 242, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.136 = private constant [46 x i8] c"../drivers/media/dvb-frontends/zd1301_demod.c\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 522, i32 2 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author313, ptr @__UNIQUE_ID_description314, ptr @__UNIQUE_ID_file315, ptr @__UNIQUE_ID_gain291, ptr @__UNIQUE_ID_gaintype290, ptr @__UNIQUE_ID_license316, ptr @__exitcall_zd1301_demod_driver_exit, ptr @__initcall__kmod_zd1301_demod__312_538_zd1301_demod_driver_init6, ptr @__ksymtab_zd1301_demod_get_dvb_frontend, ptr @__ksymtab_zd1301_demod_get_i2c_adapter, ptr @__param_gain, ptr @zd1301_demod_driver_exit, ptr @zd1301_demod_probe._entry, ptr @zd1301_demod_probe._entry.11, ptr @zd1301_demod_probe._entry.14, ptr @zd1301_demod_probe._entry_ptr, ptr @zd1301_demod_probe._entry_ptr.13, ptr @zd1301_demod_probe._entry_ptr.17, ptr @zd1301_demod_gain, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @zd1301_demod_driver, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @zd1301_demod_i2c_algorithm, ptr @.str.12, ptr @zd1301_demod_ops, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1301_demod_gain to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1301_demod_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1301_demod_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1301_demod_i2c_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1301_demod_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1301_demod_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1301_demod_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @zd1301_demod_get_dvb_frontend(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd1301_demod_get_dvb_frontend.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zd1301_demod_get_dvb_frontend, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !115

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zd1301_demod_get_dvb_frontend.__UNIQUE_ID_ddebug302, ptr noundef %dev4, ptr noundef nonnull @.str.3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %frontend = getelementptr inbounds %struct.zd1301_demod_dev, ptr %1, i32 0, i32 1
  ret ptr %frontend
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @zd1301_demod_get_i2c_adapter(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd1301_demod_get_i2c_adapter.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zd1301_demod_get_i2c_adapter, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !115

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zd1301_demod_get_i2c_adapter.__UNIQUE_ID_ddebug307, ptr noundef %dev4, ptr noundef nonnull @.str.3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %adapter = getelementptr inbounds %struct.zd1301_demod_dev, ptr %1, i32 0, i32 2
  ret ptr %adapter
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1301_demod_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @zd1301_demod_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @zd1301_demod_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @zd1301_demod_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1301_demod_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd1301_demod_probe.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zd1301_demod_probe, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !115

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zd1301_demod_probe.__UNIQUE_ID_ddebug308, ptr noundef %dev1, ptr noundef nonnull @.str.3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %if.then6, label %if.end11

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6) #10
  br label %do.body69

if.end11:                                         ; preds = %do.end
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 4
  %tobool13.not = icmp eq ptr %5, null
  br i1 %tobool13.not, label %if.then14, label %if.end32

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd1301_demod_probe.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zd1301_demod_probe, %if.then27)) #7
          to label %do.body69 [label %if.then27], !srcloc !115

if.then27:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zd1301_demod_probe.__UNIQUE_ID_ddebug309, ptr noundef %dev1, ptr noundef nonnull @.str.9) #7
  br label %do.body69

if.end32:                                         ; preds = %if.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 2416) #11
  %tobool34.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool34.not, label %if.end32.do.body69_crit_edge, label %if.end36

if.end32.do.body69_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body69

if.end36:                                         ; preds = %if.end32
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pdev, ptr %call7.i.i, align 8
  %8 = load i8, ptr @zd1301_demod_gain, align 1
  %gain = getelementptr inbounds %struct.zd1301_demod_dev, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %gain to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %gain, align 8
  %10 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %platform_data, align 8
  %reg_write.i = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %reg_write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_write.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %call.i = tail call i32 %13(ptr noundef %15, i16 noundef zeroext 26688, i8 noundef zeroext 33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool39.not = icmp eq i32 %call.i, 0
  br i1 %tobool39.not, label %if.end41, label %if.end36.err_kfree_crit_edge

if.end36.err_kfree_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_kfree

if.end41:                                         ; preds = %if.end36
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call7.i.i, align 8
  %platform_data.i125 = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3, i32 7
  %18 = ptrtoint ptr %platform_data.i125 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %platform_data.i125, align 8
  %reg_write.i126 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %reg_write.i126 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_write.i126, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %call.i127 = tail call i32 %21(ptr noundef %23, i16 noundef zeroext 27192, i8 noundef zeroext 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i127)
  %tobool43.not = icmp eq i32 %call.i127, 0
  br i1 %tobool43.not, label %if.end45, label %if.end41.err_kfree_crit_edge

if.end41.err_kfree_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_kfree

if.end45:                                         ; preds = %if.end41
  %adapter = getelementptr inbounds %struct.zd1301_demod_dev, ptr %call7.i.i, i32 0, i32 2
  %name = getelementptr inbounds %struct.zd1301_demod_dev, ptr %call7.i.i, i32 0, i32 2, i32 12
  %call46 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.10, i32 noundef 48) #7
  %algo = getelementptr inbounds %struct.zd1301_demod_dev, ptr %call7.i.i, i32 0, i32 2, i32 2
  %24 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @zd1301_demod_i2c_algorithm, ptr %algo, align 8
  %algo_data = getelementptr inbounds %struct.zd1301_demod_dev, ptr %call7.i.i, i32 0, i32 2, i32 3
  %25 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %algo_data, align 4
  %26 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent, align 8
  %parent53 = getelementptr inbounds %struct.zd1301_demod_dev, ptr %call7.i.i, i32 0, i32 2, i32 9, i32 1
  %28 = ptrtoint ptr %parent53 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %parent53, align 8
  %driver_data.i.i = getelementptr inbounds %struct.zd1301_demod_dev, ptr %call7.i.i, i32 0, i32 2, i32 9, i32 8
  %29 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call56 = tail call i32 @i2c_add_adapter(ptr noundef %adapter) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end63, label %do.end61

do.end61:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %call56) #10
  br label %err_kfree

if.end63:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %ops = getelementptr inbounds %struct.zd1301_demod_dev, ptr %call7.i.i, i32 0, i32 1, i32 1
  %30 = call ptr @memcpy(ptr %ops, ptr @zd1301_demod_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.zd1301_demod_dev, ptr %call7.i.i, i32 0, i32 1, i32 3
  %31 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i, ptr %demodulator_priv, align 4
  %driver_data.i.i128 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %32 = ptrtoint ptr %driver_data.i.i128 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i.i, ptr %driver_data.i.i128, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.15) #10
  br label %cleanup

err_kfree:                                        ; preds = %do.end61, %if.end41.err_kfree_crit_edge, %if.end36.err_kfree_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end36.err_kfree_crit_edge ], [ %call.i127, %if.end41.err_kfree_crit_edge ], [ %call56, %do.end61 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %do.body69

do.body69:                                        ; preds = %err_kfree, %if.end32.do.body69_crit_edge, %if.then27, %if.then14, %if.then6
  %ret.1 = phi i32 [ %ret.0, %err_kfree ], [ -22, %if.then27 ], [ -22, %if.then6 ], [ -12, %if.end32.do.body69_crit_edge ], [ -22, %if.then14 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd1301_demod_probe.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zd1301_demod_probe, %if.then81)) #7
          to label %cleanup [label %if.then81], !srcloc !115

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zd1301_demod_probe.__UNIQUE_ID_ddebug310, ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %ret.1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then81, %do.body69, %if.end63
  %retval.0 = phi i32 [ 0, %if.end63 ], [ %ret.1, %if.then81 ], [ %ret.1, %do.body69 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1301_demod_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd1301_demod_remove.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zd1301_demod_remove, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !115

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zd1301_demod_remove.__UNIQUE_ID_ddebug311, ptr noundef %dev4, ptr noundef nonnull @.str.3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %adapter = getelementptr inbounds %struct.zd1301_demod_dev, ptr %1, i32 0, i32 2
  tail call void @i2c_del_adapter(ptr noundef %adapter) #7
  tail call void @kfree(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1301_demod_i2c_master_xfer(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %msg, i32 noundef %num) #0 align 64 {
entry:
  %u8tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %u8tmp) #7
  %4 = ptrtoint ptr %u8tmp to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %u8tmp, align 1, !annotation !116
  %5 = zext i32 %num to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %num, label %entry.do.body216_crit_edge [
    i32 2, label %land.lhs.true
    i32 1, label %land.lhs.true99
  ]

entry.do.body216_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body216

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags, align 2
  %8 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  br i1 %tobool.not, label %land.lhs.true2, label %land.lhs.true.do.body216_crit_edge

land.lhs.true.do.body216_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body216

land.lhs.true2:                                   ; preds = %land.lhs.true
  %arrayidx3 = getelementptr %struct.i2c_msg, ptr %msg, i32 1
  %flags4 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %9 = ptrtoint ptr %flags4 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags4, align 2
  %11 = and i16 %10, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool7.not = icmp eq i16 %11, 0
  br i1 %tobool7.not, label %land.lhs.true2.do.body216_crit_edge, label %do.body

land.lhs.true2.do.body216_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body216

do.body:                                          ; preds = %land.lhs.true2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd1301_demod_i2c_master_xfer.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zd1301_demod_i2c_master_xfer, %if.then12)) #7
          to label %do.end [label %if.then12], !srcloc !115

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev13 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %len, align 4
  %conv15 = zext i16 %13 to i32
  %len17 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %14 = ptrtoint ptr %len17 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %len17, align 4
  %conv18 = zext i16 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zd1301_demod_i2c_master_xfer.__UNIQUE_ID_ddebug303, ptr noundef %dev13, ptr noundef nonnull @.str.20, i32 noundef %conv15, i32 noundef %conv18) #7
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  %len20 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %16 = ptrtoint ptr %len20 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %len20, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %17)
  %cmp22 = icmp ugt i16 %17, 1
  br i1 %cmp22, label %do.end.do.body238_crit_edge, label %lor.lhs.false

do.end.do.body238_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body238

lor.lhs.false:                                    ; preds = %do.end
  %len25 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %18 = ptrtoint ptr %len25 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %len25, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %19)
  %cmp27 = icmp ugt i16 %19, 8
  br i1 %cmp27, label %lor.lhs.false.do.body238_crit_edge, label %if.end30

lor.lhs.false.do.body238_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body238

if.end30:                                         ; preds = %lor.lhs.false
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3, i32 7
  %22 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %platform_data.i, align 8
  %reg_write.i = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %reg_write.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_write.i, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  %call.i = tail call i32 %25(ptr noundef %27, i16 noundef zeroext 26641, i8 noundef zeroext -128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool32.not = icmp eq i32 %call.i, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.do.body238_crit_edge

if.end30.do.body238_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body238

if.end34:                                         ; preds = %if.end30
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  %platform_data.i342 = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3, i32 7
  %30 = ptrtoint ptr %platform_data.i342 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %platform_data.i342, align 8
  %reg_write.i343 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %reg_write.i343 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_write.i343, align 4
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %31, align 4
  %call.i344 = tail call i32 %33(ptr noundef %35, i16 noundef zeroext 26642, i8 noundef zeroext 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i344)
  %tobool36.not = icmp eq i32 %call.i344, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.do.body238_crit_edge

if.end34.do.body238_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body238

if.end38:                                         ; preds = %if.end34
  %36 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx3, align 4
  %conv40 = trunc i16 %37 to i8
  %shl = shl i8 %conv40, 1
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 8
  %platform_data.i345 = getelementptr inbounds %struct.platform_device, ptr %39, i32 0, i32 3, i32 7
  %40 = ptrtoint ptr %platform_data.i345 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %platform_data.i345, align 8
  %reg_write.i346 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %reg_write.i346 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_write.i346, align 4
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %41, align 4
  %call.i347 = tail call i32 %43(ptr noundef %45, i16 noundef zeroext 26643, i8 noundef zeroext %shl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i347)
  %tobool43.not = icmp eq i32 %call.i347, 0
  br i1 %tobool43.not, label %if.end45, label %if.end38.do.body238_crit_edge

if.end38.do.body238_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body238

if.end45:                                         ; preds = %if.end38
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %46 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %buf, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %47, align 1
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 8
  %platform_data.i348 = getelementptr inbounds %struct.platform_device, ptr %51, i32 0, i32 3, i32 7
  %52 = ptrtoint ptr %platform_data.i348 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %platform_data.i348, align 8
  %reg_write.i349 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %reg_write.i349 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg_write.i349, align 4
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %53, align 4
  %call.i350 = tail call i32 %55(ptr noundef %57, i16 noundef zeroext 26625, i8 noundef zeroext %49) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i350)
  %tobool49.not = icmp eq i32 %call.i350, 0
  br i1 %tobool49.not, label %if.end51, label %if.end45.do.body238_crit_edge

if.end45.do.body238_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body238

if.end51:                                         ; preds = %if.end45
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 8
  %platform_data.i351 = getelementptr inbounds %struct.platform_device, ptr %59, i32 0, i32 3, i32 7
  %60 = ptrtoint ptr %platform_data.i351 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %platform_data.i351, align 8
  %reg_write.i352 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %reg_write.i352 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %reg_write.i352, align 4
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %61, align 4
  %call.i353 = tail call i32 %63(ptr noundef %65, i16 noundef zeroext 26626, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i353)
  %tobool53.not = icmp eq i32 %call.i353, 0
  br i1 %tobool53.not, label %if.end55, label %if.end51.do.body238_crit_edge

if.end51.do.body238_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body238

if.end55:                                         ; preds = %if.end51
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 8
  %platform_data.i354 = getelementptr inbounds %struct.platform_device, ptr %67, i32 0, i32 3, i32 7
  %68 = ptrtoint ptr %platform_data.i354 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %platform_data.i354, align 8
  %reg_write.i355 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %reg_write.i355 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %reg_write.i355, align 4
  %72 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %69, align 4
  %call.i356 = tail call i32 %71(ptr noundef %73, i16 noundef zeroext 26627, i8 noundef zeroext 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i356)
  %tobool57.not = icmp eq i32 %call.i356, 0
  br i1 %tobool57.not, label %if.end59, label %if.end55.do.body238_crit_edge

if.end55.do.body238_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body238

if.end59:                                         ; preds = %if.end55
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 8
  %platform_data.i357 = getelementptr inbounds %struct.platform_device, ptr %75, i32 0, i32 3, i32 7
  %76 = ptrtoint ptr %platform_data.i357 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %platform_data.i357, align 8
  %reg_write.i358 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %reg_write.i358 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %reg_write.i358, align 4
  %80 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %77, align 4
  %call.i359 = tail call i32 %79(ptr noundef %81, i16 noundef zeroext 26629, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i359)
  %tobool61.not = icmp eq i32 %call.i359, 0
  br i1 %tobool61.not, label %if.end63, label %if.end59.do.body238_crit_edge

if.end59.do.body238_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body238

if.end63:                                         ; preds = %if.end59
  %82 = ptrtoint ptr %len25 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %len25, align 4
  %conv66 = trunc i16 %83 to i8
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %1, align 8
  %platform_data.i360 = getelementptr inbounds %struct.platform_device, ptr %85, i32 0, i32 3, i32 7
  %86 = ptrtoint ptr %platform_data.i360 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %platform_data.i360, align 8
  %reg_write.i361 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %reg_write.i361 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %reg_write.i361, align 4
  %90 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %87, align 4
  %call.i362 = tail call i32 %89(ptr noundef %91, i16 noundef zeroext 26628, i8 noundef zeroext %conv66) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i362)
  %tobool68.not = icmp eq i32 %call.i362, 0
  br i1 %tobool68.not, label %if.end70, label %if.end63.do.body238_crit_edge

if.end63.do.body238_crit_edge:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body238

if.end70:                                         ; preds = %if.end63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %92 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %92, 1
  %93 = ptrtoint ptr %u8tmp to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %u8tmp, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %94 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp72 = icmp slt i32 %sub, 0
  br i1 %cmp72, label %for.cond.for.end_crit_edge, label %land.rhs

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.rhs:                                         ; preds = %for.cond
  %95 = ptrtoint ptr %u8tmp to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %u8tmp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool75.not = icmp eq i8 %96, 0
  br i1 %tobool75.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %land.rhs
  call void @usleep_range_state(i32 noundef 500, i32 noundef 800, i32 noundef 2) #7
  %97 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %1, align 8
  %platform_data.i363 = getelementptr inbounds %struct.platform_device, ptr %98, i32 0, i32 3, i32 7
  %99 = ptrtoint ptr %platform_data.i363 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %platform_data.i363, align 8
  %reg_read.i = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %reg_read.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %reg_read.i, align 4
  %103 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %100, align 4
  %call.i364 = call i32 %102(ptr noundef %104, i16 noundef zeroext 26628, ptr noundef nonnull %u8tmp) #7
  %tobool77.not = icmp eq i32 %call.i364, 0
  br i1 %tobool77.not, label %for.body.for.cond_crit_edge, label %for.body.do.body238_crit_edge

for.body.do.body238_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body238

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.end:                                          ; preds = %land.rhs.for.end_crit_edge, %for.cond.for.end_crit_edge
  %105 = ptrtoint ptr %len25 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %len25, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %106)
  %cmp84408.not = icmp eq i16 %106, 0
  br i1 %cmp84408.not, label %for.end.cleanup_crit_edge, label %for.body86.lr.ph

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body86.lr.ph:                                 ; preds = %for.end
  %buf90 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 3
  br label %for.body86

for.cond80:                                       ; preds = %for.body86
  %inc = add nuw nsw i32 %i.0409, 1
  %107 = ptrtoint ptr %len25 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %len25, align 4
  %conv83 = zext i16 %108 to i32
  %cmp84 = icmp ult i32 %inc, %conv83
  br i1 %cmp84, label %for.cond80.for.body86_crit_edge, label %for.cond80.cleanup_crit_edge

for.cond80.cleanup_crit_edge:                     ; preds = %for.cond80
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond80.for.body86_crit_edge:                  ; preds = %for.cond80
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body86

for.body86:                                       ; preds = %for.cond80.for.body86_crit_edge, %for.body86.lr.ph
  %i.0409 = phi i32 [ 0, %for.body86.lr.ph ], [ %inc, %for.cond80.for.body86_crit_edge ]
  %109 = trunc i32 %i.0409 to i16
  %conv88 = add i16 %109, 1536
  %110 = ptrtoint ptr %buf90 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %buf90, align 4
  %arrayidx91 = getelementptr i8, ptr %111, i32 %i.0409
  %112 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %1, align 8
  %platform_data.i365 = getelementptr inbounds %struct.platform_device, ptr %113, i32 0, i32 3, i32 7
  %114 = ptrtoint ptr %platform_data.i365 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %platform_data.i365, align 8
  %reg_read.i366 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %reg_read.i366 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %reg_read.i366, align 4
  %118 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %115, align 4
  %call.i367 = call i32 %117(ptr noundef %119, i16 noundef zeroext %conv88, ptr noundef %arrayidx91) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i367)
  %tobool93.not = icmp eq i32 %call.i367, 0
  br i1 %tobool93.not, label %for.cond80, label %for.body86.do.body238_crit_edge

for.body86.do.body238_crit_edge:                  ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body238

land.lhs.true99:                                  ; preds = %entry
  %flags101 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %120 = ptrtoint ptr %flags101 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %flags101, align 2
  %122 = and i16 %121, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %122)
  %tobool104.not = icmp eq i16 %122, 0
  br i1 %tobool104.not, label %do.body106, label %land.lhs.true99.do.body216_crit_edge

land.lhs.true99.do.body216_crit_edge:             ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body216

do.body106:                                       ; preds = %land.lhs.true99
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd1301_demod_i2c_master_xfer.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zd1301_demod_i2c_master_xfer, %if.then118)) #7
          to label %do.end125 [label %if.then118], !srcloc !115

if.then118:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #9
  %dev119 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %len121 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %123 = ptrtoint ptr %len121 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %len121, align 4
  %conv122 = zext i16 %124 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zd1301_demod_i2c_master_xfer.__UNIQUE_ID_ddebug304, ptr noundef %dev119, ptr noundef nonnull @.str.21, i32 noundef %conv122) #7
  br label %do.end125

do.end125:                                        ; preds = %if.then118, %do.body106
  %len127 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %125 = ptrtoint ptr %len127 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %len127, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %126)
  %cmp129 = icmp ugt i16 %126, 9
  br i1 %cmp129, label %do.end125.do.body238_crit_edge, label %if.end132

do.end125.do.body238_crit_edge:                   ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body238

if.end132:                                        ; preds = %do.end125
  %127 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %1, align 8
  %platform_data.i368 = getelementptr inbounds %struct.platform_device, ptr %128, i32 0, i32 3, i32 7
  %129 = ptrtoint ptr %platform_data.i368 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %platform_data.i368, align 8
  %reg_write.i369 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %130, i32 0, i32 2
  %131 = ptrtoint ptr %reg_write.i369 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %reg_write.i369, align 4
  %133 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %130, align 4
  %call.i370 = tail call i32 %132(ptr noundef %134, i16 noundef zeroext 26641, i8 noundef zeroext -128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i370)
  %tobool134.not = icmp eq i32 %call.i370, 0
  br i1 %tobool134.not, label %if.end136, label %if.end132.do.body238_crit_edge

if.end132.do.body238_crit_edge:                   ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body238

if.end136:                                        ; preds = %if.end132
  %135 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %1, align 8
  %platform_data.i371 = getelementptr inbounds %struct.platform_device, ptr %136, i32 0, i32 3, i32 7
  %137 = ptrtoint ptr %platform_data.i371 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %platform_data.i371, align 8
  %reg_write.i372 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %138, i32 0, i32 2
  %139 = ptrtoint ptr %reg_write.i372 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %reg_write.i372, align 4
  %141 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %138, align 4
  %call.i373 = tail call i32 %140(ptr noundef %142, i16 noundef zeroext 26642, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i373)
  %tobool138.not = icmp eq i32 %call.i373, 0
  br i1 %tobool138.not, label %if.end140, label %if.end136.do.body238_crit_edge

if.end136.do.body238_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body238

if.end140:                                        ; preds = %if.end136
  %143 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %msg, align 4
  %conv143 = trunc i16 %144 to i8
  %shl144 = shl i8 %conv143, 1
  %145 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %1, align 8
  %platform_data.i374 = getelementptr inbounds %struct.platform_device, ptr %146, i32 0, i32 3, i32 7
  %147 = ptrtoint ptr %platform_data.i374 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %platform_data.i374, align 8
  %reg_write.i375 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %148, i32 0, i32 2
  %149 = ptrtoint ptr %reg_write.i375 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %reg_write.i375, align 4
  %151 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %148, align 4
  %call.i376 = tail call i32 %150(ptr noundef %152, i16 noundef zeroext 26643, i8 noundef zeroext %shl144) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i376)
  %tobool147.not = icmp eq i32 %call.i376, 0
  br i1 %tobool147.not, label %if.end149, label %if.end140.do.body238_crit_edge

if.end140.do.body238_crit_edge:                   ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body238

if.end149:                                        ; preds = %if.end140
  %buf151 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %153 = ptrtoint ptr %buf151 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %buf151, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %154, align 1
  %157 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %1, align 8
  %platform_data.i377 = getelementptr inbounds %struct.platform_device, ptr %158, i32 0, i32 3, i32 7
  %159 = ptrtoint ptr %platform_data.i377 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %platform_data.i377, align 8
  %reg_write.i378 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %160, i32 0, i32 2
  %161 = ptrtoint ptr %reg_write.i378 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %reg_write.i378, align 4
  %163 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %160, align 4
  %call.i379 = tail call i32 %162(ptr noundef %164, i16 noundef zeroext 26624, i8 noundef zeroext %156) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i379)
  %tobool154.not = icmp eq i32 %call.i379, 0
  br i1 %tobool154.not, label %if.end156, label %if.end149.do.body238_crit_edge

if.end149.do.body238_crit_edge:                   ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body238

if.end156:                                        ; preds = %if.end149
  %165 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %1, align 8
  %platform_data.i380 = getelementptr inbounds %struct.platform_device, ptr %166, i32 0, i32 3, i32 7
  %167 = ptrtoint ptr %platform_data.i380 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %platform_data.i380, align 8
  %reg_write.i381 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %168, i32 0, i32 2
  %169 = ptrtoint ptr %reg_write.i381 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %reg_write.i381, align 4
  %171 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %168, align 4
  %call.i382 = tail call i32 %170(ptr noundef %172, i16 noundef zeroext 26626, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i382)
  %tobool158.not = icmp eq i32 %call.i382, 0
  br i1 %tobool158.not, label %if.end160, label %if.end156.do.body238_crit_edge

if.end156.do.body238_crit_edge:                   ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body238

if.end160:                                        ; preds = %if.end156
  %173 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %1, align 8
  %platform_data.i383 = getelementptr inbounds %struct.platform_device, ptr %174, i32 0, i32 3, i32 7
  %175 = ptrtoint ptr %platform_data.i383 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %platform_data.i383, align 8
  %reg_write.i384 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %176, i32 0, i32 2
  %177 = ptrtoint ptr %reg_write.i384 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %reg_write.i384, align 4
  %179 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %176, align 4
  %call.i385 = tail call i32 %178(ptr noundef %180, i16 noundef zeroext 26627, i8 noundef zeroext 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i385)
  %tobool162.not = icmp eq i32 %call.i385, 0
  br i1 %tobool162.not, label %if.end160.for.cond165_crit_edge, label %if.end160.do.body238_crit_edge

if.end160.do.body238_crit_edge:                   ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body238

if.end160.for.cond165_crit_edge:                  ; preds = %if.end160
  br label %for.cond165

for.cond165:                                      ; preds = %for.body172.for.cond165_crit_edge, %if.end160.for.cond165_crit_edge
  %i.1 = phi i32 [ %add177, %for.body172.for.cond165_crit_edge ], [ 0, %if.end160.for.cond165_crit_edge ]
  %181 = ptrtoint ptr %len127 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %len127, align 4
  %conv168 = zext i16 %182 to i32
  %sub169 = add nsw i32 %conv168, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %sub169)
  %cmp170 = icmp slt i32 %i.1, %sub169
  br i1 %cmp170, label %for.body172, label %for.end185

for.body172:                                      ; preds = %for.cond165
  %183 = trunc i32 %i.1 to i16
  %conv174 = add i16 %183, 1536
  %184 = ptrtoint ptr %buf151 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %buf151, align 4
  %add177 = add nuw nsw i32 %i.1, 1
  %arrayidx178 = getelementptr i8, ptr %185, i32 %add177
  %186 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %arrayidx178, align 1
  %188 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %1, align 8
  %platform_data.i386 = getelementptr inbounds %struct.platform_device, ptr %189, i32 0, i32 3, i32 7
  %190 = ptrtoint ptr %platform_data.i386 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %platform_data.i386, align 8
  %reg_write.i387 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %191, i32 0, i32 2
  %192 = ptrtoint ptr %reg_write.i387 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %reg_write.i387, align 4
  %194 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %191, align 4
  %call.i388 = tail call i32 %193(ptr noundef %195, i16 noundef zeroext %conv174, i8 noundef zeroext %187) #7
  %tobool180.not = icmp eq i32 %call.i388, 0
  br i1 %tobool180.not, label %for.body172.for.cond165_crit_edge, label %for.body172.do.body238_crit_edge

for.body172.do.body238_crit_edge:                 ; preds = %for.body172
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body238

for.body172.for.cond165_crit_edge:                ; preds = %for.body172
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond165

for.end185:                                       ; preds = %for.cond165
  %196 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %1, align 8
  %platform_data.i389 = getelementptr inbounds %struct.platform_device, ptr %197, i32 0, i32 3, i32 7
  %198 = ptrtoint ptr %platform_data.i389 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %platform_data.i389, align 8
  %reg_write.i390 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %199, i32 0, i32 2
  %200 = ptrtoint ptr %reg_write.i390 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %reg_write.i390, align 4
  %202 = ptrtoint ptr %199 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %199, align 4
  %call.i391 = tail call i32 %201(ptr noundef %203, i16 noundef zeroext 26629, i8 noundef zeroext -128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i391)
  %tobool187.not = icmp eq i32 %call.i391, 0
  br i1 %tobool187.not, label %if.end189, label %for.end185.do.body238_crit_edge

for.end185.do.body238_crit_edge:                  ; preds = %for.end185
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body238

if.end189:                                        ; preds = %for.end185
  %204 = ptrtoint ptr %len127 to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %len127, align 4
  %conv192 = trunc i16 %205 to i8
  %sub193 = add i8 %conv192, -1
  %206 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %1, align 8
  %platform_data.i392 = getelementptr inbounds %struct.platform_device, ptr %207, i32 0, i32 3, i32 7
  %208 = ptrtoint ptr %platform_data.i392 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %platform_data.i392, align 8
  %reg_write.i393 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %209, i32 0, i32 2
  %210 = ptrtoint ptr %reg_write.i393 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %reg_write.i393, align 4
  %212 = ptrtoint ptr %209 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %209, align 4
  %call.i394 = tail call i32 %211(ptr noundef %213, i16 noundef zeroext 26628, i8 noundef zeroext %sub193) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i394)
  %tobool196.not = icmp eq i32 %call.i394, 0
  br i1 %tobool196.not, label %if.end198, label %if.end189.do.body238_crit_edge

if.end189.do.body238_crit_edge:                   ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body238

if.end198:                                        ; preds = %if.end189
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %214 = load volatile i32, ptr @jiffies, align 128
  %add200 = add i32 %214, 1
  %215 = ptrtoint ptr %u8tmp to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 1, ptr %u8tmp, align 1
  br label %for.cond201

for.cond201:                                      ; preds = %for.body209.for.cond201_crit_edge, %if.end198
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %216 = load volatile i32, ptr @jiffies, align 128
  %sub202 = sub i32 %add200, %216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub202)
  %cmp203 = icmp slt i32 %sub202, 0
  br i1 %cmp203, label %for.cond201.cleanup_crit_edge, label %land.rhs205

for.cond201.cleanup_crit_edge:                    ; preds = %for.cond201
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.rhs205:                                      ; preds = %for.cond201
  %217 = ptrtoint ptr %u8tmp to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %u8tmp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %218)
  %tobool207.not = icmp eq i8 %218, 0
  br i1 %tobool207.not, label %land.rhs205.cleanup_crit_edge, label %for.body209

land.rhs205.cleanup_crit_edge:                    ; preds = %land.rhs205
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body209:                                      ; preds = %land.rhs205
  call void @usleep_range_state(i32 noundef 500, i32 noundef 800, i32 noundef 2) #7
  %219 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %1, align 8
  %platform_data.i395 = getelementptr inbounds %struct.platform_device, ptr %220, i32 0, i32 3, i32 7
  %221 = ptrtoint ptr %platform_data.i395 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %platform_data.i395, align 8
  %reg_read.i396 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %222, i32 0, i32 1
  %223 = ptrtoint ptr %reg_read.i396 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %reg_read.i396, align 4
  %225 = ptrtoint ptr %222 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %222, align 4
  %call.i397 = call i32 %224(ptr noundef %226, i16 noundef zeroext 26628, ptr noundef nonnull %u8tmp) #7
  %tobool211.not = icmp eq i32 %call.i397, 0
  br i1 %tobool211.not, label %for.body209.for.cond201_crit_edge, label %for.body209.do.body238_crit_edge

for.body209.do.body238_crit_edge:                 ; preds = %for.body209
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body238

for.body209.for.cond201_crit_edge:                ; preds = %for.body209
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond201

do.body216:                                       ; preds = %land.lhs.true99.do.body216_crit_edge, %land.lhs.true2.do.body216_crit_edge, %land.lhs.true.do.body216_crit_edge, %entry.do.body216_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd1301_demod_i2c_master_xfer.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zd1301_demod_i2c_master_xfer, %if.then228)) #7
          to label %do.body238 [label %if.then228], !srcloc !115

if.then228:                                       ; preds = %do.body216
  call void @__sanitizer_cov_trace_pc() #9
  %dev229 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %len231 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %227 = ptrtoint ptr %len231 to i32
  call void @__asan_load2_noabort(i32 %227)
  %228 = load i16, ptr %len231, align 4
  %conv232 = zext i16 %228 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zd1301_demod_i2c_master_xfer.__UNIQUE_ID_ddebug305, ptr noundef %dev229, ptr noundef nonnull @.str.22, i32 noundef %conv232) #7
  br label %do.body238

do.body238:                                       ; preds = %if.then228, %do.body216, %for.body209.do.body238_crit_edge, %if.end189.do.body238_crit_edge, %for.end185.do.body238_crit_edge, %for.body172.do.body238_crit_edge, %if.end160.do.body238_crit_edge, %if.end156.do.body238_crit_edge, %if.end149.do.body238_crit_edge, %if.end140.do.body238_crit_edge, %if.end136.do.body238_crit_edge, %if.end132.do.body238_crit_edge, %do.end125.do.body238_crit_edge, %for.body86.do.body238_crit_edge, %for.body.do.body238_crit_edge, %if.end63.do.body238_crit_edge, %if.end59.do.body238_crit_edge, %if.end55.do.body238_crit_edge, %if.end51.do.body238_crit_edge, %if.end45.do.body238_crit_edge, %if.end38.do.body238_crit_edge, %if.end34.do.body238_crit_edge, %if.end30.do.body238_crit_edge, %lor.lhs.false.do.body238_crit_edge, %do.end.do.body238_crit_edge
  %ret.0 = phi i32 [ %call.i370, %if.end132.do.body238_crit_edge ], [ %call.i373, %if.end136.do.body238_crit_edge ], [ %call.i376, %if.end140.do.body238_crit_edge ], [ %call.i379, %if.end149.do.body238_crit_edge ], [ %call.i382, %if.end156.do.body238_crit_edge ], [ %call.i385, %if.end160.do.body238_crit_edge ], [ %call.i391, %for.end185.do.body238_crit_edge ], [ %call.i394, %if.end189.do.body238_crit_edge ], [ %call.i, %if.end30.do.body238_crit_edge ], [ %call.i344, %if.end34.do.body238_crit_edge ], [ %call.i347, %if.end38.do.body238_crit_edge ], [ %call.i350, %if.end45.do.body238_crit_edge ], [ %call.i353, %if.end51.do.body238_crit_edge ], [ %call.i356, %if.end55.do.body238_crit_edge ], [ %call.i359, %if.end59.do.body238_crit_edge ], [ %call.i362, %if.end63.do.body238_crit_edge ], [ -95, %lor.lhs.false.do.body238_crit_edge ], [ -95, %do.end.do.body238_crit_edge ], [ -95, %do.end125.do.body238_crit_edge ], [ -95, %if.then228 ], [ -95, %do.body216 ], [ %call.i367, %for.body86.do.body238_crit_edge ], [ %call.i364, %for.body.do.body238_crit_edge ], [ %call.i397, %for.body209.do.body238_crit_edge ], [ %call.i388, %for.body172.do.body238_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd1301_demod_i2c_master_xfer.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zd1301_demod_i2c_master_xfer, %if.then250)) #7
          to label %cleanup [label %if.then250], !srcloc !115

if.then250:                                       ; preds = %do.body238
  call void @__sanitizer_cov_trace_pc() #9
  %dev251 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zd1301_demod_i2c_master_xfer.__UNIQUE_ID_ddebug306, ptr noundef %dev251, ptr noundef nonnull @.str.18, i32 noundef %ret.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then250, %do.body238, %land.rhs205.cleanup_crit_edge, %for.cond201.cleanup_crit_edge, %for.cond80.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.then250 ], [ %ret.0, %do.body238 ], [ 2, %for.end.cleanup_crit_edge ], [ 2, %for.cond80.cleanup_crit_edge ], [ 1, %for.cond201.cleanup_crit_edge ], [ 1, %land.rhs205.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %u8tmp) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @zd1301_demod_i2c_functionality(ptr nocapture noundef readnone %adapter) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1301_demod_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd1301_demod_init.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zd1301_demod_init, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !115

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zd1301_demod_init.__UNIQUE_ID_ddebug297, ptr noundef %dev4, ptr noundef nonnull @.str.3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 7
  %6 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data.i, align 8
  %reg_write.i = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %reg_write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_write.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %call.i = tail call i32 %9(ptr noundef %11, i16 noundef zeroext 26688, i8 noundef zeroext 38) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %do.end.do.body29_crit_edge

do.end.do.body29_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body29

if.end8:                                          ; preds = %do.end
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %platform_data.i65 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3, i32 7
  %14 = ptrtoint ptr %platform_data.i65 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %platform_data.i65, align 8
  %reg_write.i66 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %reg_write.i66 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_write.i66, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  %call.i67 = tail call i32 %17(ptr noundef %19, i16 noundef zeroext 26848, i8 noundef zeroext -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool10.not = icmp eq i32 %call.i67, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.do.body29_crit_edge

if.end8.do.body29_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body29

if.end12:                                         ; preds = %if.end8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %platform_data.i68 = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3, i32 7
  %22 = ptrtoint ptr %platform_data.i68 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %platform_data.i68, align 8
  %reg_write.i69 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %reg_write.i69 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_write.i69, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  %call.i70 = tail call i32 %25(ptr noundef %27, i16 noundef zeroext 26850, i8 noundef zeroext -40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool14.not = icmp eq i32 %call.i70, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.do.body29_crit_edge

if.end12.do.body29_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body29

if.end16:                                         ; preds = %if.end12
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  %platform_data.i71 = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3, i32 7
  %30 = ptrtoint ptr %platform_data.i71 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %platform_data.i71, align 8
  %reg_write.i72 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %reg_write.i72 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_write.i72, align 4
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %31, align 4
  %call.i73 = tail call i32 %33(ptr noundef %35, i16 noundef zeroext 26697, i8 noundef zeroext 78) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %tobool18.not = icmp eq i32 %call.i73, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.do.body29_crit_edge

if.end16.do.body29_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body29

if.end20:                                         ; preds = %if.end16
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 8
  %platform_data.i74 = getelementptr inbounds %struct.platform_device, ptr %37, i32 0, i32 3, i32 7
  %38 = ptrtoint ptr %platform_data.i74 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %platform_data.i74, align 8
  %reg_write.i75 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %reg_write.i75 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_write.i75, align 4
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %39, align 4
  %call.i76 = tail call i32 %41(ptr noundef %43, i16 noundef zeroext 26702, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %tobool22.not = icmp eq i32 %call.i76, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.do.body29_crit_edge

if.end20.do.body29_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body29

if.end24:                                         ; preds = %if.end20
  %44 = load i8, ptr @zd1301_demod_gain, align 1
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 8
  %platform_data.i77 = getelementptr inbounds %struct.platform_device, ptr %46, i32 0, i32 3, i32 7
  %47 = ptrtoint ptr %platform_data.i77 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %platform_data.i77, align 8
  %reg_write.i78 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %reg_write.i78 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg_write.i78, align 4
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %48, align 4
  %call.i79 = tail call i32 %50(ptr noundef %52, i16 noundef zeroext 27203, i8 noundef zeroext %44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool26.not = icmp eq i32 %call.i79, 0
  br i1 %tobool26.not, label %if.end24.cleanup_crit_edge, label %if.end24.do.body29_crit_edge

if.end24.do.body29_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body29

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body29:                                        ; preds = %if.end24.do.body29_crit_edge, %if.end20.do.body29_crit_edge, %if.end16.do.body29_crit_edge, %if.end12.do.body29_crit_edge, %if.end8.do.body29_crit_edge, %do.end.do.body29_crit_edge
  %ret.0 = phi i32 [ %call.i, %do.end.do.body29_crit_edge ], [ %call.i67, %if.end8.do.body29_crit_edge ], [ %call.i70, %if.end12.do.body29_crit_edge ], [ %call.i73, %if.end16.do.body29_crit_edge ], [ %call.i76, %if.end20.do.body29_crit_edge ], [ %call.i79, %if.end24.do.body29_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd1301_demod_init.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zd1301_demod_init, %if.then41)) #7
          to label %cleanup [label %if.then41], !srcloc !115

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  %dev42 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zd1301_demod_init.__UNIQUE_ID_ddebug298, ptr noundef %dev42, ptr noundef nonnull @.str.18, i32 noundef %ret.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %do.body29, %if.end24.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24.cleanup_crit_edge ], [ %ret.0, %if.then41 ], [ %ret.0, %do.body29 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1301_demod_sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd1301_demod_sleep.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zd1301_demod_sleep, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !115

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zd1301_demod_sleep.__UNIQUE_ID_ddebug295, ptr noundef %dev4, ptr noundef nonnull @.str.3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 7
  %6 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data.i, align 8
  %reg_write.i = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %reg_write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_write.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %call.i = tail call i32 %9(ptr noundef %11, i16 noundef zeroext 27203, i8 noundef zeroext 112) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %do.end.do.body29_crit_edge

do.end.do.body29_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body29

if.end8:                                          ; preds = %do.end
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %platform_data.i65 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3, i32 7
  %14 = ptrtoint ptr %platform_data.i65 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %platform_data.i65, align 8
  %reg_write.i66 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %reg_write.i66 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_write.i66, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  %call.i67 = tail call i32 %17(ptr noundef %19, i16 noundef zeroext 26702, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool10.not = icmp eq i32 %call.i67, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.do.body29_crit_edge

if.end8.do.body29_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body29

if.end12:                                         ; preds = %if.end8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %platform_data.i68 = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3, i32 7
  %22 = ptrtoint ptr %platform_data.i68 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %platform_data.i68, align 8
  %reg_write.i69 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %reg_write.i69 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_write.i69, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  %call.i70 = tail call i32 %25(ptr noundef %27, i16 noundef zeroext 26697, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool14.not = icmp eq i32 %call.i70, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.do.body29_crit_edge

if.end12.do.body29_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body29

if.end16:                                         ; preds = %if.end12
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  %platform_data.i71 = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3, i32 7
  %30 = ptrtoint ptr %platform_data.i71 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %platform_data.i71, align 8
  %reg_write.i72 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %reg_write.i72 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_write.i72, align 4
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %31, align 4
  %call.i73 = tail call i32 %33(ptr noundef %35, i16 noundef zeroext 26850, i8 noundef zeroext -41) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %tobool18.not = icmp eq i32 %call.i73, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.do.body29_crit_edge

if.end16.do.body29_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body29

if.end20:                                         ; preds = %if.end16
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 8
  %platform_data.i74 = getelementptr inbounds %struct.platform_device, ptr %37, i32 0, i32 3, i32 7
  %38 = ptrtoint ptr %platform_data.i74 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %platform_data.i74, align 8
  %reg_write.i75 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %reg_write.i75 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_write.i75, align 4
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %39, align 4
  %call.i76 = tail call i32 %41(ptr noundef %43, i16 noundef zeroext 26848, i8 noundef zeroext 57) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %tobool22.not = icmp eq i32 %call.i76, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.do.body29_crit_edge

if.end20.do.body29_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body29

if.end24:                                         ; preds = %if.end20
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 8
  %platform_data.i77 = getelementptr inbounds %struct.platform_device, ptr %45, i32 0, i32 3, i32 7
  %46 = ptrtoint ptr %platform_data.i77 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %platform_data.i77, align 8
  %reg_write.i78 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %reg_write.i78 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_write.i78, align 4
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %47, align 4
  %call.i79 = tail call i32 %49(ptr noundef %51, i16 noundef zeroext 26688, i8 noundef zeroext 33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool26.not = icmp eq i32 %call.i79, 0
  br i1 %tobool26.not, label %if.end24.cleanup_crit_edge, label %if.end24.do.body29_crit_edge

if.end24.do.body29_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body29

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body29:                                        ; preds = %if.end24.do.body29_crit_edge, %if.end20.do.body29_crit_edge, %if.end16.do.body29_crit_edge, %if.end12.do.body29_crit_edge, %if.end8.do.body29_crit_edge, %do.end.do.body29_crit_edge
  %ret.0 = phi i32 [ %call.i, %do.end.do.body29_crit_edge ], [ %call.i67, %if.end8.do.body29_crit_edge ], [ %call.i70, %if.end12.do.body29_crit_edge ], [ %call.i73, %if.end16.do.body29_crit_edge ], [ %call.i76, %if.end20.do.body29_crit_edge ], [ %call.i79, %if.end24.do.body29_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd1301_demod_sleep.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zd1301_demod_sleep, %if.then41)) #7
          to label %cleanup [label %if.then41], !srcloc !115

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  %dev42 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zd1301_demod_sleep.__UNIQUE_ID_ddebug296, ptr noundef %dev42, ptr noundef nonnull @.str.18, i32 noundef %ret.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %do.body29, %if.end24.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24.cleanup_crit_edge ], [ %ret.0, %if.then41 ], [ %ret.0, %do.body29 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1301_demod_set_frontend(ptr noundef %fe) #0 align 64 {
entry:
  %if_frequency = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %if_frequency) #7
  %4 = ptrtoint ptr %if_frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %if_frequency, align 4, !annotation !116
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd1301_demod_set_frontend.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zd1301_demod_set_frontend, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !115

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dtv_property_cache, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %7 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bandwidth_hz, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zd1301_demod_set_frontend.__UNIQUE_ID_ddebug292, ptr noundef %dev4, ptr noundef nonnull @.str.26, i32 noundef %6, i32 noundef %8) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %9 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_params, align 4
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %do.end.do.body119_crit_edge, label %land.lhs.true

do.end.do.body119_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body119

land.lhs.true:                                    ; preds = %do.end
  %get_if_frequency = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 11
  %11 = ptrtoint ptr %get_if_frequency to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %get_if_frequency, align 4
  %tobool8.not = icmp eq ptr %12, null
  br i1 %tobool8.not, label %land.lhs.true.do.body119_crit_edge, label %if.then9

land.lhs.true.do.body119_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body119

if.then9:                                         ; preds = %land.lhs.true
  %call13 = tail call i32 %10(ptr noundef %fe) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.then9.do.body119_crit_edge

if.then9.do.body119_crit_edge:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body119

if.end16:                                         ; preds = %if.then9
  %13 = ptrtoint ptr %get_if_frequency to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_if_frequency, align 4
  %call20 = call i32 %14(ptr noundef %fe, ptr noundef nonnull %if_frequency) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %do.body25, label %if.end16.do.body119_crit_edge

if.end16.do.body119_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body119

do.body25:                                        ; preds = %if.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd1301_demod_set_frontend.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zd1301_demod_set_frontend, %if.then37)) #7
          to label %do.end41 [label %if.then37], !srcloc !115

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  %dev38 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %if_frequency to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %if_frequency, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zd1301_demod_set_frontend.__UNIQUE_ID_ddebug293, ptr noundef %dev38, ptr noundef nonnull @.str.27, i32 noundef %16) #7
  br label %do.end41

do.end41:                                         ; preds = %if.then37, %do.body25
  %17 = ptrtoint ptr %if_frequency to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %if_frequency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36150000, i32 %18)
  %cmp.not = icmp eq i32 %18, 36150000
  br i1 %cmp.not, label %if.end43, label %do.end41.do.body119_crit_edge

do.end41.do.body119_crit_edge:                    ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body119

if.end43:                                         ; preds = %do.end41
  %bandwidth_hz44 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %19 = ptrtoint ptr %bandwidth_hz44 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bandwidth_hz44, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %20, label %if.end43.do.body119_crit_edge [
    i32 6000000, label %if.end43.sw.epilog_crit_edge
    i32 7000000, label %sw.bb45
    i32 8000000, label %sw.bb46
  ]

if.end43.sw.epilog_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end43.do.body119_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body119

sw.bb45:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb46:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb46, %sw.bb45, %if.end43.sw.epilog_crit_edge
  %r6a50_val.0 = phi i8 [ 88, %sw.bb46 ], [ 104, %sw.bb45 ], [ 120, %if.end43.sw.epilog_crit_edge ]
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3, i32 7
  %24 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %platform_data.i, align 8
  %reg_write.i = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %reg_write.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_write.i, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 4
  %call.i = call i32 %27(ptr noundef %29, i16 noundef zeroext 27232, i8 noundef zeroext 17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool48.not = icmp eq i32 %call.i, 0
  br i1 %tobool48.not, label %if.end50, label %sw.epilog.do.body119_crit_edge

sw.epilog.do.body119_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body119

if.end50:                                         ; preds = %sw.epilog
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 8
  %platform_data.i197 = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3, i32 7
  %32 = ptrtoint ptr %platform_data.i197 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %platform_data.i197, align 8
  %reg_write.i198 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %reg_write.i198 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg_write.i198, align 4
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %33, align 4
  %call.i199 = call i32 %35(ptr noundef %37, i16 noundef zeroext 27207, i8 noundef zeroext 70) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i199)
  %tobool52.not = icmp eq i32 %call.i199, 0
  br i1 %tobool52.not, label %if.end54, label %if.end50.do.body119_crit_edge

if.end50.do.body119_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body119

if.end54:                                         ; preds = %if.end50
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 8
  %platform_data.i200 = getelementptr inbounds %struct.platform_device, ptr %39, i32 0, i32 3, i32 7
  %40 = ptrtoint ptr %platform_data.i200 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %platform_data.i200, align 8
  %reg_write.i201 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %reg_write.i201 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_write.i201, align 4
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %41, align 4
  %call.i202 = call i32 %43(ptr noundef %45, i16 noundef zeroext 27208, i8 noundef zeroext 70) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i202)
  %tobool56.not = icmp eq i32 %call.i202, 0
  br i1 %tobool56.not, label %if.end58, label %if.end54.do.body119_crit_edge

if.end54.do.body119_crit_edge:                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body119

if.end58:                                         ; preds = %if.end54
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 8
  %platform_data.i203 = getelementptr inbounds %struct.platform_device, ptr %47, i32 0, i32 3, i32 7
  %48 = ptrtoint ptr %platform_data.i203 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %platform_data.i203, align 8
  %reg_write.i204 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %reg_write.i204 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg_write.i204, align 4
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %49, align 4
  %call.i205 = call i32 %51(ptr noundef %53, i16 noundef zeroext 27210, i8 noundef zeroext 21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i205)
  %tobool60.not = icmp eq i32 %call.i205, 0
  br i1 %tobool60.not, label %if.end62, label %if.end58.do.body119_crit_edge

if.end58.do.body119_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body119

if.end62:                                         ; preds = %if.end58
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 8
  %platform_data.i206 = getelementptr inbounds %struct.platform_device, ptr %55, i32 0, i32 3, i32 7
  %56 = ptrtoint ptr %platform_data.i206 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %platform_data.i206, align 8
  %reg_write.i207 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %reg_write.i207 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %reg_write.i207, align 4
  %60 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %57, align 4
  %call.i208 = call i32 %59(ptr noundef %61, i16 noundef zeroext 27211, i8 noundef zeroext 99) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i208)
  %tobool64.not = icmp eq i32 %call.i208, 0
  br i1 %tobool64.not, label %if.end66, label %if.end62.do.body119_crit_edge

if.end62.do.body119_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body119

if.end66:                                         ; preds = %if.end62
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 8
  %platform_data.i209 = getelementptr inbounds %struct.platform_device, ptr %63, i32 0, i32 3, i32 7
  %64 = ptrtoint ptr %platform_data.i209 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %platform_data.i209, align 8
  %reg_write.i210 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %reg_write.i210 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg_write.i210, align 4
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %65, align 4
  %call.i211 = call i32 %67(ptr noundef %69, i16 noundef zeroext 27227, i8 noundef zeroext -103) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i211)
  %tobool68.not = icmp eq i32 %call.i211, 0
  br i1 %tobool68.not, label %if.end70, label %if.end66.do.body119_crit_edge

if.end66.do.body119_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body119

if.end70:                                         ; preds = %if.end66
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 8
  %platform_data.i212 = getelementptr inbounds %struct.platform_device, ptr %71, i32 0, i32 3, i32 7
  %72 = ptrtoint ptr %platform_data.i212 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %platform_data.i212, align 8
  %reg_write.i213 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %reg_write.i213 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %reg_write.i213, align 4
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %73, align 4
  %call.i214 = call i32 %75(ptr noundef %77, i16 noundef zeroext 27195, i8 noundef zeroext 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i214)
  %tobool72.not = icmp eq i32 %call.i214, 0
  br i1 %tobool72.not, label %if.end74, label %if.end70.do.body119_crit_edge

if.end70.do.body119_crit_edge:                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body119

if.end74:                                         ; preds = %if.end70
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 8
  %platform_data.i215 = getelementptr inbounds %struct.platform_device, ptr %79, i32 0, i32 3, i32 7
  %80 = ptrtoint ptr %platform_data.i215 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %platform_data.i215, align 8
  %reg_write.i216 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %reg_write.i216 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %reg_write.i216, align 4
  %84 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %81, align 4
  %call.i217 = call i32 %83(ptr noundef %85, i16 noundef zeroext 26630, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i217)
  %tobool76.not = icmp eq i32 %call.i217, 0
  br i1 %tobool76.not, label %if.end78, label %if.end74.do.body119_crit_edge

if.end74.do.body119_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body119

if.end78:                                         ; preds = %if.end74
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %1, align 8
  %platform_data.i218 = getelementptr inbounds %struct.platform_device, ptr %87, i32 0, i32 3, i32 7
  %88 = ptrtoint ptr %platform_data.i218 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %platform_data.i218, align 8
  %reg_write.i219 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %reg_write.i219 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %reg_write.i219, align 4
  %92 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %89, align 4
  %call.i220 = call i32 %91(ptr noundef %93, i16 noundef zeroext 27201, i8 noundef zeroext 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i220)
  %tobool80.not = icmp eq i32 %call.i220, 0
  br i1 %tobool80.not, label %if.end82, label %if.end78.do.body119_crit_edge

if.end78.do.body119_crit_edge:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body119

if.end82:                                         ; preds = %if.end78
  %94 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %1, align 8
  %platform_data.i221 = getelementptr inbounds %struct.platform_device, ptr %95, i32 0, i32 3, i32 7
  %96 = ptrtoint ptr %platform_data.i221 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %platform_data.i221, align 8
  %reg_write.i222 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %reg_write.i222 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %reg_write.i222, align 4
  %100 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %97, align 4
  %call.i223 = call i32 %99(ptr noundef %101, i16 noundef zeroext 27202, i8 noundef zeroext 70) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223)
  %tobool84.not = icmp eq i32 %call.i223, 0
  br i1 %tobool84.not, label %if.end86, label %if.end82.do.body119_crit_edge

if.end82.do.body119_crit_edge:                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body119

if.end86:                                         ; preds = %if.end82
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %1, align 8
  %platform_data.i224 = getelementptr inbounds %struct.platform_device, ptr %103, i32 0, i32 3, i32 7
  %104 = ptrtoint ptr %platform_data.i224 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %platform_data.i224, align 8
  %reg_write.i225 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %reg_write.i225 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %reg_write.i225, align 4
  %108 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %105, align 4
  %call.i226 = call i32 %107(ptr noundef %109, i16 noundef zeroext 27204, i8 noundef zeroext 20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i226)
  %tobool88.not = icmp eq i32 %call.i226, 0
  br i1 %tobool88.not, label %if.end90, label %if.end86.do.body119_crit_edge

if.end86.do.body119_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body119

if.end90:                                         ; preds = %if.end86
  %110 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %1, align 8
  %platform_data.i227 = getelementptr inbounds %struct.platform_device, ptr %111, i32 0, i32 3, i32 7
  %112 = ptrtoint ptr %platform_data.i227 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %platform_data.i227, align 8
  %reg_write.i228 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %reg_write.i228 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %reg_write.i228, align 4
  %116 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %113, align 4
  %call.i229 = call i32 %115(ptr noundef %117, i16 noundef zeroext 27205, i8 noundef zeroext 103) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i229)
  %tobool92.not = icmp eq i32 %call.i229, 0
  br i1 %tobool92.not, label %if.end94, label %if.end90.do.body119_crit_edge

if.end90.do.body119_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body119

if.end94:                                         ; preds = %if.end90
  %118 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %1, align 8
  %platform_data.i230 = getelementptr inbounds %struct.platform_device, ptr %119, i32 0, i32 3, i32 7
  %120 = ptrtoint ptr %platform_data.i230 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %platform_data.i230, align 8
  %reg_write.i231 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %reg_write.i231 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %reg_write.i231, align 4
  %124 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %121, align 4
  %call.i232 = call i32 %123(ptr noundef %125, i16 noundef zeroext 27192, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i232)
  %tobool96.not = icmp eq i32 %call.i232, 0
  br i1 %tobool96.not, label %if.end98, label %if.end94.do.body119_crit_edge

if.end94.do.body119_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body119

if.end98:                                         ; preds = %if.end94
  %126 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %1, align 8
  %platform_data.i233 = getelementptr inbounds %struct.platform_device, ptr %127, i32 0, i32 3, i32 7
  %128 = ptrtoint ptr %platform_data.i233 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %platform_data.i233, align 8
  %reg_write.i234 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %129, i32 0, i32 2
  %130 = ptrtoint ptr %reg_write.i234 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %reg_write.i234, align 4
  %132 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %129, align 4
  %call.i235 = call i32 %131(ptr noundef %133, i16 noundef zeroext 27212, i8 noundef zeroext 82) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i235)
  %tobool100.not = icmp eq i32 %call.i235, 0
  br i1 %tobool100.not, label %if.end102, label %if.end98.do.body119_crit_edge

if.end98.do.body119_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body119

if.end102:                                        ; preds = %if.end98
  %134 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %1, align 8
  %platform_data.i236 = getelementptr inbounds %struct.platform_device, ptr %135, i32 0, i32 3, i32 7
  %136 = ptrtoint ptr %platform_data.i236 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %platform_data.i236, align 8
  %reg_write.i237 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %137, i32 0, i32 2
  %138 = ptrtoint ptr %reg_write.i237 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %reg_write.i237, align 4
  %140 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %137, align 4
  %call.i238 = call i32 %139(ptr noundef %141, i16 noundef zeroext 27209, i8 noundef zeroext 42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i238)
  %tobool104.not = icmp eq i32 %call.i238, 0
  br i1 %tobool104.not, label %if.end106, label %if.end102.do.body119_crit_edge

if.end102.do.body119_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body119

if.end106:                                        ; preds = %if.end102
  %142 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %1, align 8
  %platform_data.i239 = getelementptr inbounds %struct.platform_device, ptr %143, i32 0, i32 3, i32 7
  %144 = ptrtoint ptr %platform_data.i239 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %platform_data.i239, align 8
  %reg_write.i240 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %145, i32 0, i32 2
  %146 = ptrtoint ptr %reg_write.i240 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %reg_write.i240, align 4
  %148 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %145, align 4
  %call.i241 = call i32 %147(ptr noundef %149, i16 noundef zeroext 26688, i8 noundef zeroext 46) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241)
  %tobool108.not = icmp eq i32 %call.i241, 0
  br i1 %tobool108.not, label %if.end110, label %if.end106.do.body119_crit_edge

if.end106.do.body119_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body119

if.end110:                                        ; preds = %if.end106
  %150 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %1, align 8
  %platform_data.i242 = getelementptr inbounds %struct.platform_device, ptr %151, i32 0, i32 3, i32 7
  %152 = ptrtoint ptr %platform_data.i242 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %platform_data.i242, align 8
  %reg_write.i243 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %153, i32 0, i32 2
  %154 = ptrtoint ptr %reg_write.i243 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %reg_write.i243, align 4
  %156 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %153, align 4
  %call.i244 = call i32 %155(ptr noundef %157, i16 noundef zeroext 27216, i8 noundef zeroext %r6a50_val.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i244)
  %tobool112.not = icmp eq i32 %call.i244, 0
  br i1 %tobool112.not, label %if.end114, label %if.end110.do.body119_crit_edge

if.end110.do.body119_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body119

if.end114:                                        ; preds = %if.end110
  %158 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %1, align 8
  %platform_data.i245 = getelementptr inbounds %struct.platform_device, ptr %159, i32 0, i32 3, i32 7
  %160 = ptrtoint ptr %platform_data.i245 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %platform_data.i245, align 8
  %reg_write.i246 = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %161, i32 0, i32 2
  %162 = ptrtoint ptr %reg_write.i246 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %reg_write.i246, align 4
  %164 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %161, align 4
  %call.i247 = call i32 %163(ptr noundef %165, i16 noundef zeroext 27192, i8 noundef zeroext 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i247)
  %tobool116.not = icmp eq i32 %call.i247, 0
  br i1 %tobool116.not, label %if.end114.cleanup_crit_edge, label %if.end114.do.body119_crit_edge

if.end114.do.body119_crit_edge:                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body119

if.end114.cleanup_crit_edge:                      ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body119:                                       ; preds = %if.end114.do.body119_crit_edge, %if.end110.do.body119_crit_edge, %if.end106.do.body119_crit_edge, %if.end102.do.body119_crit_edge, %if.end98.do.body119_crit_edge, %if.end94.do.body119_crit_edge, %if.end90.do.body119_crit_edge, %if.end86.do.body119_crit_edge, %if.end82.do.body119_crit_edge, %if.end78.do.body119_crit_edge, %if.end74.do.body119_crit_edge, %if.end70.do.body119_crit_edge, %if.end66.do.body119_crit_edge, %if.end62.do.body119_crit_edge, %if.end58.do.body119_crit_edge, %if.end54.do.body119_crit_edge, %if.end50.do.body119_crit_edge, %sw.epilog.do.body119_crit_edge, %if.end43.do.body119_crit_edge, %do.end41.do.body119_crit_edge, %if.end16.do.body119_crit_edge, %if.then9.do.body119_crit_edge, %land.lhs.true.do.body119_crit_edge, %do.end.do.body119_crit_edge
  %ret.0 = phi i32 [ %call13, %if.then9.do.body119_crit_edge ], [ %call20, %if.end16.do.body119_crit_edge ], [ %call.i, %sw.epilog.do.body119_crit_edge ], [ %call.i199, %if.end50.do.body119_crit_edge ], [ %call.i202, %if.end54.do.body119_crit_edge ], [ %call.i205, %if.end58.do.body119_crit_edge ], [ %call.i208, %if.end62.do.body119_crit_edge ], [ %call.i211, %if.end66.do.body119_crit_edge ], [ %call.i214, %if.end70.do.body119_crit_edge ], [ %call.i217, %if.end74.do.body119_crit_edge ], [ %call.i220, %if.end78.do.body119_crit_edge ], [ %call.i223, %if.end82.do.body119_crit_edge ], [ %call.i226, %if.end86.do.body119_crit_edge ], [ %call.i229, %if.end90.do.body119_crit_edge ], [ %call.i232, %if.end94.do.body119_crit_edge ], [ %call.i235, %if.end98.do.body119_crit_edge ], [ %call.i238, %if.end102.do.body119_crit_edge ], [ %call.i241, %if.end106.do.body119_crit_edge ], [ %call.i244, %if.end110.do.body119_crit_edge ], [ %call.i247, %if.end114.do.body119_crit_edge ], [ -22, %land.lhs.true.do.body119_crit_edge ], [ -22, %do.end.do.body119_crit_edge ], [ -22, %do.end41.do.body119_crit_edge ], [ -22, %if.end43.do.body119_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd1301_demod_set_frontend.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zd1301_demod_set_frontend, %if.then131)) #7
          to label %cleanup [label %if.then131], !srcloc !115

if.then131:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #9
  %dev132 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zd1301_demod_set_frontend.__UNIQUE_ID_ddebug294, ptr noundef %dev132, ptr noundef nonnull @.str.18, i32 noundef %ret.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then131, %do.body119, %if.end114.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end114.cleanup_crit_edge ], [ %ret.0, %if.then131 ], [ %ret.0, %do.body119 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %if_frequency) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1301_demod_get_tune_settings(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %settings) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd1301_demod_get_tune_settings.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zd1301_demod_get_tune_settings, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !115

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zd1301_demod_get_tune_settings.__UNIQUE_ID_ddebug299, ptr noundef %dev4, ptr noundef nonnull @.str.3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %settings to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 400, ptr %settings, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1301_demod_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %status) #0 align 64 {
entry:
  %u8tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %u8tmp) #7
  %4 = ptrtoint ptr %u8tmp to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %u8tmp, align 1, !annotation !116
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 7
  %5 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %platform_data.i, align 8
  %reg_read.i = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %reg_read.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_read.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %call.i = call i32 %8(ptr noundef %10, i16 noundef zeroext 27172, ptr noundef nonnull %u8tmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.do.body28_crit_edge

entry.do.body28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body28

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %u8tmp to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %u8tmp, align 1
  %13 = add i8 %12, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %13)
  %14 = icmp ult i8 %13, 31
  %storemerge = select i1 %14, i32 31, i32 0
  %15 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %storemerge, ptr %status, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd1301_demod_read_status.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zd1301_demod_read_status, %if.then12)) #7
          to label %do.end [label %if.then12], !srcloc !115

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev13 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %u8tmp to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %u8tmp, align 1
  %conv14 = zext i8 %17 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zd1301_demod_read_status.__UNIQUE_ID_ddebug300, ptr noundef %dev13, ptr noundef nonnull @.str.30, i32 noundef %conv14) #7
  br label %do.end

do.end:                                           ; preds = %if.then12, %if.end
  %gain = getelementptr inbounds %struct.zd1301_demod_dev, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %gain to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %gain, align 8
  %20 = load i8, ptr @zd1301_demod_gain, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %20)
  %cmp18.not = icmp eq i8 %19, %20
  br i1 %cmp18.not, label %do.end.cleanup_crit_edge, label %if.then20

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then20:                                        ; preds = %do.end
  %21 = ptrtoint ptr %gain to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %gain, align 8
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %platform_data.i61 = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3, i32 7
  %24 = ptrtoint ptr %platform_data.i61 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %platform_data.i61, align 8
  %reg_write.i = getelementptr inbounds %struct.zd1301_demod_platform_data, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %reg_write.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_write.i, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 4
  %call.i62 = call i32 %27(ptr noundef %29, i16 noundef zeroext 27203, i8 noundef zeroext %20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool24.not = icmp eq i32 %call.i62, 0
  br i1 %tobool24.not, label %if.then20.cleanup_crit_edge, label %if.then20.do.body28_crit_edge

if.then20.do.body28_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body28

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body28:                                        ; preds = %if.then20.do.body28_crit_edge, %entry.do.body28_crit_edge
  %ret.0 = phi i32 [ %call.i, %entry.do.body28_crit_edge ], [ %call.i62, %if.then20.do.body28_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd1301_demod_read_status.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zd1301_demod_read_status, %if.then40)) #7
          to label %cleanup [label %if.then40], !srcloc !115

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  %dev41 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zd1301_demod_read_status.__UNIQUE_ID_ddebug301, ptr noundef %dev41, ptr noundef nonnull @.str.18, i32 noundef %ret.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %do.body28, %if.then20.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then20.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ %ret.0, %if.then40 ], [ %ret.0, %do.body28 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %u8tmp) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !15, !16, !18, !20, !21, !23, !25, !27, !28, !29, !31, !33, !35, !36, !38, !39, !40, !41, !42, !44, !45, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59, !61, !63, !64, !65, !67, !68, !70, !71, !73, !75, !77, !78, !80, !82, !83, !85, !87, !88, !89, !91, !92, !94, !96, !97, !99, !100, !101, !103, !105}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !{ptr @__param_gain, !1, !"__param_gain", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/zd1301_demod.c", i32 11, i32 1}
!2 = !{ptr @__UNIQUE_ID_gaintype290, !1, !"__UNIQUE_ID_gaintype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_gain291, !4, !"__UNIQUE_ID_gain291", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/zd1301_demod.c", i32 12, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/zd1301_demod.c", i32 303, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @zd1301_demod_get_dvb_frontend.__UNIQUE_ID_ddebug302, !6, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!11 = !{ptr @__ksymtab_zd1301_demod_get_dvb_frontend, !12, !"__ksymtab_zd1301_demod_get_dvb_frontend", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-frontends/zd1301_demod.c", i32 307, i32 1}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/dvb-frontends/zd1301_demod.c", i32 447, i32 2}
!15 = !{ptr @zd1301_demod_get_i2c_adapter.__UNIQUE_ID_ddebug307, !14, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!16 = !{ptr @__ksymtab_zd1301_demod_get_i2c_adapter, !17, !"__ksymtab_zd1301_demod_get_i2c_adapter", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/zd1301_demod.c", i32 451, i32 1}
!18 = !{ptr @__initcall__kmod_zd1301_demod__312_538_zd1301_demod_driver_init6, !19, !"__initcall__kmod_zd1301_demod__312_538_zd1301_demod_driver_init6", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-frontends/zd1301_demod.c", i32 538, i32 1}
!20 = !{ptr @__exitcall_zd1301_demod_driver_exit, !19, !"__exitcall_zd1301_demod_driver_exit", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_author313, !22, !"__UNIQUE_ID_author313", i1 false, i1 false}
!22 = !{!"../drivers/media/dvb-frontends/zd1301_demod.c", i32 540, i32 1}
!23 = !{ptr @__UNIQUE_ID_description314, !24, !"__UNIQUE_ID_description314", i1 false, i1 false}
!24 = !{!"../drivers/media/dvb-frontends/zd1301_demod.c", i32 541, i32 1}
!25 = !{ptr @__UNIQUE_ID_file315, !26, !"__UNIQUE_ID_file315", i1 false, i1 false}
!26 = !{!"../drivers/media/dvb-frontends/zd1301_demod.c", i32 542, i32 1}
!27 = !{ptr @__UNIQUE_ID_license316, !26, !"__UNIQUE_ID_license316", i1 false, i1 false}
!28 = !{ptr @__param_str_gain, !1, !"__param_str_gain", i1 false, i1 false}
!29 = !{ptr @zd1301_demod_gain, !30, !"zd1301_demod_gain", i1 false, i1 false}
!30 = !{!"../drivers/media/dvb-frontends/zd1301_demod.c", i32 10, i32 11}
!31 = !{ptr @zd1301_demod_driver, !32, !"zd1301_demod_driver", i1 false, i1 false}
!32 = !{!"../drivers/media/dvb-frontends/zd1301_demod.c", i32 530, i32 31}
!33 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/dvb-frontends/zd1301_demod.c", i32 460, i32 2}
!35 = !{ptr @zd1301_demod_probe.__UNIQUE_ID_ddebug308, !34, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!36 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/dvb-frontends/zd1301_demod.c", i32 464, i32 3}
!38 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @zd1301_demod_probe._entry, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @zd1301_demod_probe._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/dvb-frontends/zd1301_demod.c", i32 469, i32 3}
!44 = !{ptr @zd1301_demod_probe.__UNIQUE_ID_ddebug309, !43, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!45 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/dvb-frontends/zd1301_demod.c", i32 492, i32 29}
!47 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/dvb-frontends/zd1301_demod.c", i32 500, i32 3}
!49 = !{ptr @zd1301_demod_probe._entry.11, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @zd1301_demod_probe._entry_ptr.13, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/dvb-frontends/zd1301_demod.c", i32 508, i32 2}
!53 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @zd1301_demod_probe._entry.14, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @zd1301_demod_probe._entry_ptr.17, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/dvb-frontends/zd1301_demod.c", i32 514, i32 2}
!58 = !{ptr @zd1301_demod_probe.__UNIQUE_ID_ddebug310, !57, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!59 = !{ptr @zd1301_demod_i2c_algorithm, !60, !"zd1301_demod_i2c_algorithm", i1 false, i1 false}
!60 = !{!"../drivers/media/dvb-frontends/zd1301_demod.c", i32 438, i32 35}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/dvb-frontends/zd1301_demod.c", i32 326, i32 3}
!63 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @zd1301_demod_i2c_master_xfer.__UNIQUE_ID_ddebug303, !62, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/dvb-frontends/zd1301_demod.c", i32 374, i32 3}
!67 = !{ptr @zd1301_demod_i2c_master_xfer.__UNIQUE_ID_ddebug304, !66, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!68 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/dvb-frontends/zd1301_demod.c", i32 422, i32 3}
!70 = !{ptr @zd1301_demod_i2c_master_xfer.__UNIQUE_ID_ddebug305, !69, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!71 = !{ptr @zd1301_demod_i2c_master_xfer.__UNIQUE_ID_ddebug306, !72, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!72 = !{!"../drivers/media/dvb-frontends/zd1301_demod.c", i32 429, i32 2}
!73 = !{ptr @zd1301_demod_ops, !74, !"zd1301_demod_ops", i1 false, i1 false}
!74 = !{!"../drivers/media/dvb-frontends/zd1301_demod.c", i32 272, i32 38}
!75 = !{ptr @.str.23, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/dvb-frontends/zd1301_demod.c", i32 184, i32 2}
!77 = !{ptr @zd1301_demod_init.__UNIQUE_ID_ddebug297, !76, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!78 = !{ptr @zd1301_demod_init.__UNIQUE_ID_ddebug298, !79, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!79 = !{!"../drivers/media/dvb-frontends/zd1301_demod.c", i32 207, i32 2}
!80 = !{ptr @.str.24, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/dvb-frontends/zd1301_demod.c", i32 151, i32 2}
!82 = !{ptr @zd1301_demod_sleep.__UNIQUE_ID_ddebug295, !81, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!83 = !{ptr @zd1301_demod_sleep.__UNIQUE_ID_ddebug296, !84, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!84 = !{!"../drivers/media/dvb-frontends/zd1301_demod.c", i32 174, i32 2}
!85 = !{ptr @.str.25, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/dvb-frontends/zd1301_demod.c", i32 46, i32 2}
!87 = !{ptr @.str.26, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @zd1301_demod_set_frontend.__UNIQUE_ID_ddebug292, !86, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!89 = !{ptr @.str.27, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/dvb-frontends/zd1301_demod.c", i32 63, i32 2}
!91 = !{ptr @zd1301_demod_set_frontend.__UNIQUE_ID_ddebug293, !90, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!92 = !{ptr @zd1301_demod_set_frontend.__UNIQUE_ID_ddebug294, !93, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!93 = !{!"../drivers/media/dvb-frontends/zd1301_demod.c", i32 141, i32 2}
!94 = !{ptr @.str.28, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/dvb-frontends/zd1301_demod.c", i32 217, i32 2}
!96 = !{ptr @zd1301_demod_get_tune_settings.__UNIQUE_ID_ddebug299, !95, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!97 = !{ptr @.str.29, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/dvb-frontends/zd1301_demod.c", i32 242, i32 2}
!99 = !{ptr @.str.30, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @zd1301_demod_read_status.__UNIQUE_ID_ddebug300, !98, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!101 = !{ptr @zd1301_demod_read_status.__UNIQUE_ID_ddebug301, !102, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!102 = !{!"../drivers/media/dvb-frontends/zd1301_demod.c", i32 268, i32 2}
!103 = !{ptr @.str.31, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/dvb-frontends/zd1301_demod.c", i32 522, i32 2}
!105 = !{ptr @zd1301_demod_remove.__UNIQUE_ID_ddebug311, !104, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"min_enum_size", i32 4}
!108 = !{i32 8, !"branch-target-enforcement", i32 0}
!109 = !{i32 8, !"sign-return-address", i32 0}
!110 = !{i32 8, !"sign-return-address-all", i32 0}
!111 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!112 = !{i32 7, !"uwtable", i32 1}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!115 = !{i64 2148302427, i64 2148302432, i64 2148302445, i64 2148302489, i64 2148302523, i64 2148302544}
!116 = !{!"auto-init"}
