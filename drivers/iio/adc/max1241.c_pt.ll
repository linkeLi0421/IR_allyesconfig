; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/max1241.c_pt.bc'
source_filename = "../drivers/iio/adc/max1241.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.max1241 = type { ptr, %struct.mutex, ptr, ptr, ptr, [20 x i8], i16, [126 x i8] }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }

@__initcall__kmod_max1241__292_219_max1241_spi_driver_init6 = internal global ptr @max1241_spi_driver_init, section ".initcall6.init", align 4
@max1241_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @max1241_id, ptr @max1241_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max1241_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_max1241_spi_driver_exit = internal global ptr @max1241_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author293 = internal constant [54 x i8] c"max1241.author=Alexandru Lazar <alazar@startmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [39 x i8] c"max1241.description=MAX1241 ADC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [37 x i8] c"max1241.file=drivers/iio/adc/max1241\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [23 x i8] c"max1241.license=GPL v2\00", section ".modinfo", align 1
@max1241_id = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"max1241\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max1241\00", [24 x i8] zeroinitializer }, align 32
@max1241_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max1241\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@max1241_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&adc->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get vdd regulator\0A\00", [35 x i8] zeroinitializer }, align 32
@max1241_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 161, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"could not set up vdd regulator cleanup action\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max1241_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/iio/adc/max1241.c\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max1241_probe._entry_ptr = internal global ptr @max1241_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get vref regulator\0A\00", [34 x i8] zeroinitializer }, align 32
@max1241_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.5, ptr @.str.6, i32 176, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"could not set up vref regulator cleanup action\0A\00", [48 x i8] zeroinitializer }, align 32
@max1241_probe._entry_ptr.13 = internal global ptr @max1241_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"shutdown\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot get shutdown gpio\0A\00", [38 x i8] zeroinitializer }, align 32
@max1241_probe.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.6, ptr @.str.16, i8 0, i8 46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"shutdown pin passed, low-power mode enabled\00", [52 x i8] zeroinitializer }, align 32
@max1241_probe.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.6, ptr @.str.17, i8 0, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"no shutdown pin passed, low-power mode disabled\00", [48 x i8] zeroinitializer }, align 32
@max1241_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @max1241_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@max1241_channels = internal constant { [1 x %struct.iio_chan_spec], [40 x i8] } { [1 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [40 x i8] zeroinitializer }, align 32
@max1241_disable_vdd_action._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.6, i32 121, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"could not disable vdd regulator.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"max1241_disable_vdd_action\00", [37 x i8] zeroinitializer }, align 32
@max1241_disable_vdd_action._entry_ptr = internal global ptr @max1241_disable_vdd_action._entry, section ".printk_index", align 4
@max1241_disable_vref_action._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.6, i32 132, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"could not disable vref regulator.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"max1241_disable_vref_action\00", [36 x i8] zeroinitializer }, align 32
@max1241_disable_vref_action._entry_ptr = internal global ptr @max1241_disable_vref_action._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.22 = private unnamed_addr constant [19 x i8] c"max1241_spi_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 211, i32 26 }
@___asan_gen_.25 = private unnamed_addr constant [11 x i8] c"max1241_id\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 200, i32 35 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 213, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [15 x i8] c"max1241_dt_ids\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 205, i32 34 }
@___asan_gen_.34 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 148, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 150, i32 37 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 153, i32 10 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 161, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 165, i32 38 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 168, i32 10 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 176, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 180, i32 47 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 184, i32 10 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 187, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 189, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [13 x i8] c"max1241_info\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 109, i32 30 }
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"max1241_channels\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 32, i32 35 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 121, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [29 x i8] c"../drivers/iio/adc/max1241.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 132, i32 3 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_max1241_spi_driver_exit, ptr @__initcall__kmod_max1241__292_219_max1241_spi_driver_init6, ptr @max1241_disable_vdd_action._entry, ptr @max1241_disable_vdd_action._entry_ptr, ptr @max1241_disable_vref_action._entry, ptr @max1241_disable_vref_action._entry_ptr, ptr @max1241_probe._entry, ptr @max1241_probe._entry.11, ptr @max1241_probe._entry_ptr, ptr @max1241_probe._entry_ptr.13, ptr @max1241_spi_driver_exit, ptr @max1241_spi_driver, ptr @max1241_id, ptr @.str, ptr @max1241_dt_ids, ptr @max1241_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @max1241_info, ptr @max1241_channels, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1241_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1241_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1241_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1241_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1241_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1241_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1241_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1241_channels to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1241_disable_vdd_action._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1241_disable_vref_action._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max1241_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @max1241_spi_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max1241_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @max1241_spi_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max1241_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 256) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %spi, ptr %1, align 128
  %lock = getelementptr inbounds %struct.max1241, ptr %1, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @max1241_probe.__key) #5
  %call4 = tail call ptr @devm_regulator_get(ptr noundef %spi, ptr noundef nonnull @.str.2) #5
  %vdd = getelementptr inbounds %struct.max1241, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %vdd to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %vdd, align 32
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end11

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call4 to i32
  %call10 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %4, ptr noundef nonnull @.str.3) #5
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call13 = tail call i32 @regulator_enable(ptr noundef %call4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %call.i = tail call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @max1241_disable_vdd_action, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end23, label %if.then.i

if.then.i:                                        ; preds = %if.end16
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 128
  %7 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vdd, align 32
  %call.i140 = tail call i32 @regulator_disable(ptr noundef %8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %tobool.not.i141 = icmp eq i32 %call.i140, 0
  br i1 %tobool.not.i141, label %if.then.i.do.end22_crit_edge, label %do.end.i

if.then.i.do.end22_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end22

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.18) #8
  br label %do.end22

do.end22:                                         ; preds = %do.end.i, %if.then.i.do.end22_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.4) #8
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  %call24 = tail call ptr @devm_regulator_get(ptr noundef %spi, ptr noundef nonnull @.str.9) #5
  %vref = getelementptr inbounds %struct.max1241, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %vref to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call24, ptr %vref, align 4
  %cmp.i134 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i134, label %if.then27, label %if.end31

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %call24 to i32
  %call30 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %10, ptr noundef nonnull @.str.10) #5
  br label %cleanup

if.end31:                                         ; preds = %if.end23
  %call33 = tail call i32 @regulator_enable(ptr noundef %call24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  %call.i135 = tail call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @max1241_disable_vref_action, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135)
  %tobool.not.i136 = icmp eq i32 %call.i135, 0
  br i1 %tobool.not.i136, label %if.end43, label %do.end42

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @max1241_disable_vref_action(ptr noundef %1) #5, !callees !74
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.12) #8
  br label %cleanup

if.end43:                                         ; preds = %if.end36
  %call44 = tail call ptr @devm_gpiod_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.14, i32 noundef 7) #5
  %shutdown = getelementptr inbounds %struct.max1241, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %shutdown to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call44, ptr %shutdown, align 8
  %cmp.i139 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i139, label %if.then47, label %if.end51

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %call44 to i32
  %call50 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %12, ptr noundef nonnull @.str.15) #5
  br label %cleanup

if.end51:                                         ; preds = %if.end43
  %tobool53.not = icmp eq ptr %call44, null
  br i1 %tobool53.not, label %do.body64, label %do.body55

do.body55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max1241_probe.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max1241_probe, %if.then60)) #5
          to label %if.end80 [label %if.then60], !srcloc !75

if.then60:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max1241_probe.__UNIQUE_ID_ddebug290, ptr noundef %spi, ptr noundef nonnull @.str.16) #5
  br label %if.end80

do.body64:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max1241_probe.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max1241_probe, %if.then76)) #5
          to label %if.end80 [label %if.then76], !srcloc !75

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max1241_probe.__UNIQUE_ID_ddebug291, ptr noundef %spi, ptr noundef nonnull @.str.17) #5
  br label %if.end80

if.end80:                                         ; preds = %if.then76, %do.body64, %if.then60, %do.body55
  %call81 = tail call ptr @spi_get_device_id(ptr noundef %spi) #5
  %name82 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %13 = ptrtoint ptr %name82 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call81, ptr %name82, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %14 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @max1241_info, ptr %info, align 8
  %15 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %call, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %16 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @max1241_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %17 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %num_channels, align 4
  %call83 = tail call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %if.then47, %do.end42, %if.end31.cleanup_crit_edge, %if.then27, %do.end22, %if.end11.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.then7 ], [ %call.i, %do.end22 ], [ %call30, %if.then27 ], [ %call.i135, %do.end42 ], [ %call50, %if.then47 ], [ %call83, %if.end80 ], [ -12, %entry.cleanup_crit_edge ], [ %call13, %if.end11.cleanup_crit_edge ], [ %call33, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max1241_disable_vdd_action(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 128
  %vdd = getelementptr inbounds %struct.max1241, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdd, align 32
  %call = tail call i32 @regulator_disable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.18) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max1241_disable_vref_action(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 128
  %vref = getelementptr inbounds %struct.max1241, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vref, align 4
  %call = tail call i32 @regulator_disable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.20) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max1241_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %msg.i.i30 = alloca %struct.spi_message, align 4
  %xfers.i31 = alloca [2 x %struct.spi_transfer], align 4
  %msg.i.i = alloca %struct.spi_message, align 4
  %xfers.i = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb10
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %lock = getelementptr inbounds %struct.max1241, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %shutdown = getelementptr inbounds %struct.max1241, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %shutdown, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  tail call void @gpiod_set_value(ptr noundef nonnull %4, i32 noundef 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 858992) #5
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfers.i) #5
  %6 = call ptr @memset(ptr %xfers.i, i32 0, i32 192)
  %delay.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i, i32 0, i32 9
  %7 = ptrtoint ptr %delay.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 8, ptr %delay.i, align 2
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i, i32 1, i32 1
  %data.i = getelementptr inbounds %struct.max1241, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %data.i, ptr %rx_buf.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i, i32 1, i32 2
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %len.i, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #5
  %12 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %13 = call ptr @memset(ptr %12, i32 0, i32 40)
  %14 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %16 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %17 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.then.spi_message_add_tail.exit.i.i.i_crit_edge

if.then.spi_message_add_tail.exit.i.i.i_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %19 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i, i32 0, i32 18, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i

spi_message_add_tail.exit.i.i.i:                  ; preds = %if.end.i.i.i.i.i.i, %if.then.spi_message_add_tail.exit.i.i.i_crit_edge
  %transfer_list.i.1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i, i32 1, i32 18
  %22 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i.i.i.i, align 4
  %call.i.i.i.1.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.1.i.i.i, ptr noundef %23, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.1.i.i.i, label %if.end.i.i.i.1.i.i.i, label %spi_message_add_tail.exit.i.i.i.max1241_read.exit_crit_edge

spi_message_add_tail.exit.i.i.i.max1241_read.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max1241_read.exit

if.end.i.i.i.1.i.i.i:                             ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %transfer_list.i.1.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %transfer_list.i.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i.i, ptr %transfer_list.i.1.i.i.i, align 4
  %prev3.i.i.i.1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i, i32 1, i32 18, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i.i.1.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %transfer_list.i.1.i.i.i, ptr %23, align 4
  br label %max1241_read.exit

max1241_read.exit:                                ; preds = %if.end.i.i.i.1.i.i.i, %spi_message_add_tail.exit.i.i.i.max1241_read.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %11, ptr noundef nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfers.i) #5
  %28 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %shutdown, align 8
  call void @gpiod_set_value(ptr noundef %29, i32 noundef 1) #5
  br label %if.end

if.else:                                          ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfers.i31) #5
  %30 = call ptr @memset(ptr %xfers.i31, i32 0, i32 192)
  %delay.i32 = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i31, i32 0, i32 9
  %31 = ptrtoint ptr %delay.i32 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 8, ptr %delay.i32, align 2
  %rx_buf.i33 = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i31, i32 1, i32 1
  %data.i34 = getelementptr inbounds %struct.max1241, ptr %1, i32 0, i32 6
  %32 = ptrtoint ptr %rx_buf.i33 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %data.i34, ptr %rx_buf.i33, align 4
  %len.i35 = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i31, i32 1, i32 2
  %33 = ptrtoint ptr %len.i35 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %len.i35, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i30) #5
  %36 = getelementptr inbounds i8, ptr %msg.i.i30, i32 8
  %37 = call ptr @memset(ptr %36, i32 0, i32 40)
  %38 = ptrtoint ptr %msg.i.i30 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %msg.i.i30, ptr %msg.i.i30, align 4
  %prev.i.i.i.i.i.i36 = getelementptr inbounds %struct.list_head, ptr %msg.i.i30, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i.i.i.i.i36 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %msg.i.i30, ptr %prev.i.i.i.i.i.i36, align 4
  %resources.i.i.i.i.i37 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i30, i32 0, i32 10
  %40 = ptrtoint ptr %resources.i.i.i.i.i37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %resources.i.i.i.i.i37, ptr %resources.i.i.i.i.i37, align 4
  %prev.i2.i.i.i.i.i38 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i30, i32 0, i32 10, i32 1
  %41 = ptrtoint ptr %prev.i2.i.i.i.i.i38 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %resources.i.i.i.i.i37, ptr %prev.i2.i.i.i.i.i38, align 4
  %transfer_list.i.i.i.i39 = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i31, i32 0, i32 18
  %call.i.i.i.i.i.i40 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i39, ptr noundef nonnull %msg.i.i30, ptr noundef nonnull %msg.i.i30) #5
  br i1 %call.i.i.i.i.i.i40, label %if.end.i.i.i.i.i.i42, label %if.else.spi_message_add_tail.exit.i.i.i45_crit_edge

if.else.spi_message_add_tail.exit.i.i.i45_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit.i.i.i45

if.end.i.i.i.i.i.i42:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %prev.i.i.i.i.i.i36 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %transfer_list.i.i.i.i39, ptr %prev.i.i.i.i.i.i36, align 4
  %43 = ptrtoint ptr %transfer_list.i.i.i.i39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %msg.i.i30, ptr %transfer_list.i.i.i.i39, align 4
  %prev3.i.i.i.i.i.i41 = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i31, i32 0, i32 18, i32 1
  %44 = ptrtoint ptr %prev3.i.i.i.i.i.i41 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %msg.i.i30, ptr %prev3.i.i.i.i.i.i41, align 4
  %45 = ptrtoint ptr %msg.i.i30 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %transfer_list.i.i.i.i39, ptr %msg.i.i30, align 4
  br label %spi_message_add_tail.exit.i.i.i45

spi_message_add_tail.exit.i.i.i45:                ; preds = %if.end.i.i.i.i.i.i42, %if.else.spi_message_add_tail.exit.i.i.i45_crit_edge
  %transfer_list.i.1.i.i.i43 = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i31, i32 1, i32 18
  %46 = ptrtoint ptr %prev.i.i.i.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i.i.i.i.i36, align 4
  %call.i.i.i.1.i.i.i44 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.1.i.i.i43, ptr noundef %47, ptr noundef nonnull %msg.i.i30) #5
  br i1 %call.i.i.i.1.i.i.i44, label %if.end.i.i.i.1.i.i.i47, label %spi_message_add_tail.exit.i.i.i45.max1241_read.exit49_crit_edge

spi_message_add_tail.exit.i.i.i45.max1241_read.exit49_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i45
  call void @__sanitizer_cov_trace_pc() #7
  br label %max1241_read.exit49

if.end.i.i.i.1.i.i.i47:                           ; preds = %spi_message_add_tail.exit.i.i.i45
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %prev.i.i.i.i.i.i36 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %transfer_list.i.1.i.i.i43, ptr %prev.i.i.i.i.i.i36, align 4
  %49 = ptrtoint ptr %transfer_list.i.1.i.i.i43 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %msg.i.i30, ptr %transfer_list.i.1.i.i.i43, align 4
  %prev3.i.i.i.1.i.i.i46 = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i31, i32 1, i32 18, i32 1
  %50 = ptrtoint ptr %prev3.i.i.i.1.i.i.i46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev3.i.i.i.1.i.i.i46, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %transfer_list.i.1.i.i.i43, ptr %47, align 4
  br label %max1241_read.exit49

max1241_read.exit49:                              ; preds = %if.end.i.i.i.1.i.i.i47, %spi_message_add_tail.exit.i.i.i45.max1241_read.exit49_crit_edge
  %call.i.i48 = call i32 @spi_sync(ptr noundef %35, ptr noundef nonnull %msg.i.i30) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i30) #5
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfers.i31) #5
  br label %if.end

if.end:                                           ; preds = %max1241_read.exit49, %max1241_read.exit
  %ret.0 = phi i32 [ %call.i.i, %max1241_read.exit ], [ %call.i.i48, %max1241_read.exit49 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool5.not = icmp eq i32 %ret.0, 0
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %data = getelementptr inbounds %struct.max1241, ptr %1, i32 0, i32 6
  %52 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %data, align 128
  %54 = lshr i16 %53, 3
  %55 = and i16 %54, 4095
  %and = zext i16 %55 to i32
  %56 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and, ptr %val, align 4
  call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %vref = getelementptr inbounds %struct.max1241, ptr %1, i32 0, i32 3
  %57 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %vref, align 4
  %call11 = tail call i32 @regulator_get_voltage(ptr noundef %58) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %sw.bb10.cleanup_crit_edge, label %if.end14

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  %div50 = udiv i32 %call11, 1000
  %59 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %div50, ptr %val, align 4
  %60 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 12, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %sw.bb10.cleanup_crit_edge, %if.end8, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 11, %if.end14 ], [ %ret.0, %if.then6 ], [ 1, %if.end8 ], [ %call11, %sw.bb10.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !35, !37, !38, !39, !41, !43, !45, !46, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__initcall__kmod_max1241__292_219_max1241_spi_driver_init6, !1, !"__initcall__kmod_max1241__292_219_max1241_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/max1241.c", i32 219, i32 1}
!2 = !{ptr @__exitcall_max1241_spi_driver_exit, !1, !"__exitcall_max1241_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author293, !4, !"__UNIQUE_ID_author293", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/max1241.c", i32 221, i32 1}
!5 = !{ptr @__UNIQUE_ID_description294, !6, !"__UNIQUE_ID_description294", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/max1241.c", i32 222, i32 1}
!7 = !{ptr @__UNIQUE_ID_file295, !8, !"__UNIQUE_ID_file295", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/max1241.c", i32 223, i32 1}
!9 = !{ptr @__UNIQUE_ID_license296, !8, !"__UNIQUE_ID_license296", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/max1241.c", i32 213, i32 11}
!12 = !{ptr @max1241_spi_driver, !13, !"max1241_spi_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/max1241.c", i32 211, i32 26}
!14 = !{ptr @max1241_id, !15, !"max1241_id", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/max1241.c", i32 200, i32 35}
!16 = !{ptr @max1241_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/max1241.c", i32 148, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/adc/max1241.c", i32 150, i32 37}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/iio/adc/max1241.c", i32 153, i32 10}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/iio/adc/max1241.c", i32 161, i32 3}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @max1241_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @max1241_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/adc/max1241.c", i32 165, i32 38}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/adc/max1241.c", i32 168, i32 10}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/adc/max1241.c", i32 176, i32 3}
!37 = !{ptr @max1241_probe._entry.11, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @max1241_probe._entry_ptr.13, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/adc/max1241.c", i32 180, i32 47}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/adc/max1241.c", i32 184, i32 10}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/adc/max1241.c", i32 187, i32 3}
!45 = !{ptr @max1241_probe.__UNIQUE_ID_ddebug290, !44, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/iio/adc/max1241.c", i32 189, i32 3}
!48 = !{ptr @max1241_probe.__UNIQUE_ID_ddebug291, !47, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/adc/max1241.c", i32 121, i32 3}
!51 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @max1241_disable_vdd_action._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @max1241_disable_vdd_action._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/adc/max1241.c", i32 132, i32 3}
!56 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @max1241_disable_vref_action._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @max1241_disable_vref_action._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @max1241_info, !60, !"max1241_info", i1 false, i1 false}
!60 = !{!"../drivers/iio/adc/max1241.c", i32 109, i32 30}
!61 = !{ptr @max1241_channels, !62, !"max1241_channels", i1 false, i1 false}
!62 = !{!"../drivers/iio/adc/max1241.c", i32 32, i32 35}
!63 = !{ptr @max1241_dt_ids, !64, !"max1241_dt_ids", i1 false, i1 false}
!64 = !{!"../drivers/iio/adc/max1241.c", i32 205, i32 34}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{ptr @max1241_disable_vdd_action, ptr @max1241_disable_vref_action}
!75 = !{i64 2148759681, i64 2148759686, i64 2148759699, i64 2148759743, i64 2148759777, i64 2148759798}
