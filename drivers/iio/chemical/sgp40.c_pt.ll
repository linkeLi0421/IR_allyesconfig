; ModuleID = '/llk/IR_all_yes/drivers/iio/chemical/sgp40.c_pt.bc'
source_filename = "../drivers/iio/chemical/sgp40.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.sgp40_data = type { ptr, ptr, i32, i32, i32, %struct.mutex }
%struct.sgp40_tg_measure = type <{ [2 x i8], i16, i8, i16, i8 }>
%struct.sgp40_tg_result = type <{ i16, i8 }>

@__initcall__kmod_sgp40__298_374_sgp40_driver_init6 = internal global ptr @sgp40_driver_init, section ".initcall6.init", align 4
@sgp40_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @sgp40_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sgp40_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sgp40_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_sgp40_driver_exit = internal global ptr @sgp40_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author299 = internal constant [48 x i8] c"sgp40.author=Andreas Klinger <ak@it-klinger.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description300 = internal constant [45 x i8] c"sgp40.description=Sensirion SGP40 gas sensor\00", section ".modinfo", align 1
@__UNIQUE_ID_file301 = internal constant [38 x i8] c"sgp40.file=drivers/iio/chemical/sgp40\00", section ".modinfo", align 1
@__UNIQUE_ID_license302 = internal constant [21 x i8] c"sgp40.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sgp40\00", [26 x i8] zeroinitializer }, align 32
@sgp40_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sensirion,sgp40\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sgp40_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"sgp40\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sgp40_crc8_table = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@sgp40_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@sgp40_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @sgp40_read_raw, ptr null, ptr null, ptr @sgp40_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@sgp40_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 24, i32 0, i32 35, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 25, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 33, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 32 }, %struct.iio_chan_spec { i32 18, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 32 }], [64 x i8] zeroinitializer }, align 32
@sgp40_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 347, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register iio device\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sgp40_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/iio/chemical/sgp40.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sgp40_probe._entry_ptr = internal global ptr @sgp40_probe._entry, section ".printk_index", align 4
@sgp40_read_raw.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.4, ptr @.str.8, i8 0, i8 64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sgp40_read_raw\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"voc: %d val: %d.%06d\0A\00", [42 x i8] zeroinitializer }, align 32
@sgp40_measure_resistance_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 186, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"i2c_master_send ret: %d sizeof: %zu\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sgp40_measure_resistance_raw\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sgp40_measure_resistance_raw._entry_ptr = internal global ptr @sgp40_measure_resistance_raw._entry, section ".printk_index", align 4
@sgp40_measure_resistance_raw._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.4, i32 195, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"i2c_master_recv ret: %d sizeof: %zu\0A\00", [59 x i8] zeroinitializer }, align 32
@sgp40_measure_resistance_raw._entry_ptr.14 = internal global ptr @sgp40_measure_resistance_raw._entry.12, section ".printk_index", align 4
@sgp40_measure_resistance_raw._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.4, i32 201, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CRC error while measure-raw\0A\00", [35 x i8] zeroinitializer }, align 32
@sgp40_measure_resistance_raw._entry_ptr.17 = internal global ptr @sgp40_measure_resistance_raw._entry.15, section ".printk_index", align 4
@sgp40_calc_voc.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.4, ptr @.str.19, i8 0, i8 38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sgp40_calc_voc\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"raw: %d res_calibbias: %d x: %d exp: %d voc: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 5]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 9, i64 18, i64 25]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 18]
@___asan_gen_.23 = private unnamed_addr constant [13 x i8] c"sgp40_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 366, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 368, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [13 x i8] c"sgp40_dt_ids\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 359, i32 34 }
@___asan_gen_.32 = private unnamed_addr constant [9 x i8] c"sgp40_id\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 352, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"sgp40_crc8_table\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 43, i32 1 }
@___asan_gen_.38 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 332, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [11 x i8] c"sgp40_info\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 309, i32 30 }
@___asan_gen_.47 = private unnamed_addr constant [15 x i8] c"sgp40_channels\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 68, i32 35 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 347, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 257, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 186, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 195, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 201, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.102 = private constant [32 x i8] c"../drivers/iio/chemical/sgp40.c\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 154, i32 2 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file301, ptr @__UNIQUE_ID_license302, ptr @__exitcall_sgp40_driver_exit, ptr @__initcall__kmod_sgp40__298_374_sgp40_driver_init6, ptr @sgp40_driver_exit, ptr @sgp40_measure_resistance_raw._entry, ptr @sgp40_measure_resistance_raw._entry.12, ptr @sgp40_measure_resistance_raw._entry.15, ptr @sgp40_measure_resistance_raw._entry_ptr, ptr @sgp40_measure_resistance_raw._entry_ptr.14, ptr @sgp40_measure_resistance_raw._entry_ptr.17, ptr @sgp40_probe._entry, ptr @sgp40_probe._entry_ptr, ptr @sgp40_driver, ptr @.str, ptr @sgp40_dt_ids, ptr @sgp40_id, ptr @sgp40_crc8_table, ptr @sgp40_probe.__key, ptr @.str.1, ptr @sgp40_info, ptr @sgp40_channels, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgp40_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgp40_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgp40_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgp40_crc8_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgp40_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgp40_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgp40_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgp40_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgp40_measure_resistance_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgp40_measure_resistance_raw._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgp40_measure_resistance_raw._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sgp40_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @sgp40_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sgp40_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @sgp40_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sgp40_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 112) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %client3 = getelementptr inbounds %struct.sgp40_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client, ptr %client3, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %1, align 4
  tail call void @crc8_populate_msb(ptr noundef nonnull @sgp40_crc8_table, i8 noundef zeroext 49) #6
  %lock = getelementptr inbounds %struct.sgp40_data, ptr %1, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @sgp40_probe.__key) #6
  %rht = getelementptr inbounds %struct.sgp40_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %rht to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 50000, ptr %rht, align 4
  %temp = getelementptr inbounds %struct.sgp40_data, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 25000, ptr %temp, align 4
  %res_calibbias = getelementptr inbounds %struct.sgp40_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %res_calibbias to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 30000, ptr %res_calibbias, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %7 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @sgp40_info, ptr %info, align 8
  %name5 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %8 = ptrtoint ptr %name5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %id, ptr %name5, align 8
  %9 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %call, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %10 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @sgp40_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %11 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %num_channels, align 4
  %call6 = tail call i32 @__devm_iio_device_register(ptr noundef %dev1, ptr noundef nonnull %call, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %do.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call6, %do.end11 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crc8_populate_msb(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sgp40_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef %val, ptr nocapture noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  %voc = alloca i32, align 4
  %resistance_raw = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %voc) #6
  %2 = ptrtoint ptr %voc to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %voc, align 4, !annotation !66
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %resistance_raw) #6
  %3 = ptrtoint ptr %resistance_raw to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %resistance_raw, align 2, !annotation !66
  %4 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 5, label %sw.bb24
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %5 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chan, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %6, label %sw.bb.cleanup_crit_edge [
    i32 25, label %sw.bb1
    i32 9, label %sw.bb3
    i32 18, label %sw.bb5
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  %call2 = call fastcc i32 @sgp40_measure_resistance_raw(ptr noundef %1, ptr noundef nonnull %resistance_raw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %resistance_raw to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %resistance_raw, align 2
  %conv = zext i16 %9 to i32
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %val, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %lock = getelementptr inbounds %struct.sgp40_data, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %temp = getelementptr inbounds %struct.sgp40_data, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %temp, align 4
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %val, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

sw.bb5:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %lock6 = getelementptr inbounds %struct.sgp40_data, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock6, i32 noundef 0) #6
  %rht = getelementptr inbounds %struct.sgp40_data, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %rht to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rht, align 4
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %val, align 4
  tail call void @mutex_unlock(ptr noundef %lock6) #6
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %call9 = call fastcc i32 @sgp40_measure_resistance_raw(ptr noundef %1, ptr noundef nonnull %resistance_raw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %sw.bb8.cleanup_crit_edge

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %resistance_raw to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %resistance_raw, align 2
  call fastcc void @sgp40_calc_voc(ptr noundef %1, i16 noundef zeroext %18, ptr noundef nonnull %voc)
  %19 = ptrtoint ptr %voc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %voc, align 4
  %.frozen = freeze i32 %20
  %div = sdiv i32 %.frozen, 16384
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div, ptr %val, align 4
  %22 = mul i32 %div, 16384
  %rem.decomposed = sub i32 %.frozen, %22
  %div17 = mul nsw i32 %rem.decomposed, 61
  %23 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div17, ptr %val2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sgp40_read_raw.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sgp40_read_raw, %if.then22)) #6
          to label %cleanup [label %if.then22], !srcloc !67

if.then22:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %26 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val, align 4
  %28 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val2, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sgp40_read_raw.__UNIQUE_ID_ddebug297, ptr noundef %25, ptr noundef nonnull @.str.8, i32 noundef %20, i32 noundef %27, i32 noundef %29) #6
  br label %cleanup

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %lock25 = getelementptr inbounds %struct.sgp40_data, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock25, i32 noundef 0) #6
  %res_calibbias = getelementptr inbounds %struct.sgp40_data, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %res_calibbias to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %res_calibbias, align 4
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %val, align 4
  tail call void @mutex_unlock(ptr noundef %lock25) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb24, %if.then22, %if.end12, %sw.bb8.cleanup_crit_edge, %sw.bb5, %sw.bb3, %if.end, %sw.bb1.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb24 ], [ 1, %sw.bb5 ], [ 1, %sw.bb3 ], [ 1, %if.end ], [ %call2, %sw.bb1.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ %call9, %sw.bb8.cleanup_crit_edge ], [ 2, %if.then22 ], [ -22, %entry.cleanup_crit_edge ], [ 2, %if.end12 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %resistance_raw) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %voc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sgp40_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 5, label %sw.bb12
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %4, label %sw.bb.cleanup_crit_edge [
    i32 9, label %sw.bb1
    i32 18, label %sw.bb4
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  %6 = add i32 %val, -130001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -175001, i32 %6)
  %7 = icmp ult i32 %6, -175001
  br i1 %7, label %sw.bb1.cleanup_crit_edge, label %if.end

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %lock = getelementptr inbounds %struct.sgp40_data, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %temp = getelementptr inbounds %struct.sgp40_data, ptr %1, i32 0, i32 3
  br label %cleanup.sink.split

sw.bb4:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %val)
  %8 = icmp ugt i32 %val, 100000
  br i1 %8, label %sw.bb4.cleanup_crit_edge, label %if.end9

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  %lock10 = getelementptr inbounds %struct.sgp40_data, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock10, i32 noundef 0) #6
  %rht = getelementptr inbounds %struct.sgp40_data, ptr %1, i32 0, i32 2
  br label %cleanup.sink.split

sw.bb12:                                          ; preds = %entry
  %9 = add i32 %val, -52769
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32769, i32 %9)
  %10 = icmp ult i32 %9, -32769
  br i1 %10, label %sw.bb12.cleanup_crit_edge, label %if.end17

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  %lock18 = getelementptr inbounds %struct.sgp40_data, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock18, i32 noundef 0) #6
  %res_calibbias = getelementptr inbounds %struct.sgp40_data, ptr %1, i32 0, i32 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end17, %if.end9, %if.end
  %res_calibbias.sink = phi ptr [ %res_calibbias, %if.end17 ], [ %rht, %if.end9 ], [ %temp, %if.end ]
  %lock18.sink = phi ptr [ %lock18, %if.end17 ], [ %lock10, %if.end9 ], [ %lock, %if.end ]
  %11 = ptrtoint ptr %res_calibbias.sink to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %val, ptr %res_calibbias.sink, align 4
  tail call void @mutex_unlock(ptr noundef %lock18.sink) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb12.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb1.cleanup_crit_edge ], [ -22, %sw.bb4.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb12.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sgp40_measure_resistance_raw(ptr noundef %data, ptr nocapture noundef writeonly %resistance_raw) unnamed_addr #2 align 64 {
entry:
  %tg = alloca %struct.sgp40_tg_measure, align 8
  %tgres = alloca %struct.sgp40_tg_result, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr inbounds %struct.sgp40_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tg) #6
  %2 = ptrtoint ptr %tg to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 2742410698091921408, ptr %tg, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %tgres) #6
  %3 = ptrtoint ptr %tgres to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %tgres, align 2, !annotation !66
  %4 = getelementptr inbounds %struct.sgp40_tg_result, ptr %tgres, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %4, align 2, !annotation !66
  %lock = getelementptr inbounds %struct.sgp40_data, ptr %data, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %rht = getelementptr inbounds %struct.sgp40_data, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %rht to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rht, align 4
  %div = sdiv i32 %7, 10
  %mul = mul i32 %div, 65535
  %mul.off = add i32 %mul, 9999
  call void @__sanitizer_cov_trace_const_cmp4(i32 19999, i32 %mul.off)
  %8 = icmp ult i32 %mul.off, 19999
  %div2 = sdiv i32 %mul, 10000
  %9 = tail call i32 @llvm.umin.i32(i32 %div2, i32 65535)
  %10 = trunc i32 %9 to i16
  %conv = select i1 %8, i16 0, i16 %10
  %rht_ticks = getelementptr inbounds %struct.sgp40_tg_measure, ptr %tg, i32 0, i32 1
  %11 = ptrtoint ptr %rht_ticks to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %rht_ticks, align 2
  %call = call zeroext i8 @crc8(ptr noundef nonnull @sgp40_crc8_table, ptr noundef %rht_ticks, i32 noundef 2, i8 noundef zeroext -1) #6
  %rht_crc = getelementptr inbounds %struct.sgp40_tg_measure, ptr %tg, i32 0, i32 2
  %12 = ptrtoint ptr %rht_crc to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call, ptr %rht_crc, align 4
  %temp = getelementptr inbounds %struct.sgp40_data, ptr %data, i32 0, i32 3
  %13 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %temp, align 4
  %add = add i32 %14, 45000
  %div10 = sdiv i32 %add, 10
  %mul11 = mul i32 %div10, 65535
  %mul11.off = add i32 %mul11, 17499
  call void @__sanitizer_cov_trace_const_cmp4(i32 34999, i32 %mul11.off)
  %15 = icmp ult i32 %mul11.off, 34999
  %div12 = sdiv i32 %mul11, 17500
  %16 = call i32 @llvm.umin.i32(i32 %div12, i32 65535)
  %17 = trunc i32 %16 to i16
  %conv27 = select i1 %15, i16 0, i16 %17
  %temp_ticks = getelementptr inbounds %struct.sgp40_tg_measure, ptr %tg, i32 0, i32 3
  %18 = ptrtoint ptr %temp_ticks to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 %conv27, ptr %temp_ticks, align 1
  %call29 = call zeroext i8 @crc8(ptr noundef nonnull @sgp40_crc8_table, ptr noundef %temp_ticks, i32 noundef 2, i8 noundef zeroext -1) #6
  %temp_crc = getelementptr inbounds %struct.sgp40_tg_measure, ptr %tg, i32 0, i32 4
  %19 = ptrtoint ptr %temp_crc to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %call29, ptr %temp_crc, align 1
  call void @mutex_unlock(ptr noundef %lock) #6
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %tg, i32 noundef 8, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i)
  %cmp32.not = icmp eq i32 %call.i, 8
  br i1 %cmp32.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.9, i32 noundef %call.i, i32 noundef 8) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @msleep(i32 noundef 30) #6
  %call.i88 = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %tgres, i32 noundef 3, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %cmp35 = icmp slt i32 %call.i88, 0
  br i1 %cmp35, label %if.end.cleanup_crit_edge, label %if.end38

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end38:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i88)
  %cmp39.not = icmp eq i32 %call.i88, 3
  br i1 %cmp39.not, label %if.end46, label %do.end44

do.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.13, i32 noundef %call.i88, i32 noundef 3) #9
  br label %cleanup

if.end46:                                         ; preds = %if.end38
  %call47 = call zeroext i8 @crc8(ptr noundef nonnull @sgp40_crc8_table, ptr noundef nonnull %tgres, i32 noundef 2, i8 noundef zeroext -1) #6
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %4, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %call47, i8 %25)
  %cmp50.not = icmp eq i8 %call47, %25
  br i1 %cmp50.not, label %if.end57, label %do.end55

do.end55:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.16) #9
  br label %cleanup

if.end57:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %tgres to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %tgres, align 2
  %30 = ptrtoint ptr %resistance_raw to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %resistance_raw, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %do.end55, %do.end44, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end44 ], [ -5, %do.end55 ], [ 0, %if.end57 ], [ %call.i88, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %tgres) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tg) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sgp40_calc_voc(ptr noundef %data, i16 noundef zeroext %resistance_raw, ptr nocapture noundef %voc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.sgp40_data, ptr %data, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %conv = zext i16 %resistance_raw to i32
  %res_calibbias = getelementptr inbounds %struct.sgp40_data, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %res_calibbias to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %res_calibbias, align 4
  %sub = sub i32 %conv, %1
  %mul = mul i32 %sub, 106
  tail call void @mutex_unlock(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp.i = icmp eq i32 %mul, 0
  br i1 %cmp.i, label %entry.sgp40_exp.exit_crit_edge, label %if.else.i

entry.sgp40_exp.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sgp40_exp.exit

if.else.i:                                        ; preds = %entry
  %2 = tail call i32 @llvm.abs.i32(i32 %mul, i1 false) #6
  %div.i = sdiv i32 2147483647, %2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.else.i
  %i.07.i = phi i32 [ 1, %if.else.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %divider.06.i = phi i32 [ 0, %if.else.i ], [ %spec.select2.i, %for.body.i.for.body.i_crit_edge ]
  %factorial.05.i = phi i32 [ 1, %if.else.i ], [ %mul7.i, %for.body.i.for.body.i_crit_edge ]
  %xp.04.i = phi i32 [ 1, %if.else.i ], [ %spec.select1.i, %for.body.i.for.body.i_crit_edge ]
  %y.03.i = phi i32 [ 16384, %if.else.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %mul6.i = mul i32 %xp.04.i, %2
  %mul7.i = mul i32 %factorial.05.i, %i.07.i
  %shr.i = lshr i32 %mul6.i, %divider.06.i
  %div8.i = udiv i32 %shr.i, %mul7.i
  %add.i = add i32 %div8.i, %y.03.i
  %add9.i = add i32 %divider.06.i, 14
  call void @__sanitizer_cov_trace_cmp4(i32 %mul6.i, i32 %div.i)
  %cmp10.not.i = icmp ult i32 %mul6.i, %div.i
  %shr12.i = lshr i32 %mul6.i, 14
  %spec.select1.i = select i1 %cmp10.not.i, i32 %mul6.i, i32 %shr12.i
  %spec.select2.i = select i1 %cmp10.not.i, i32 %add9.i, i32 %divider.06.i
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 19
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp1.i = icmp slt i32 %mul, 0
  br i1 %cmp1.i, label %if.then15.i, label %for.end.i.sgp40_exp.exit_crit_edge

for.end.i.sgp40_exp.exit_crit_edge:               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sgp40_exp.exit

if.then15.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %div18.i = udiv i32 268435456, %add.i
  br label %sgp40_exp.exit

sgp40_exp.exit:                                   ; preds = %if.then15.i, %for.end.i.sgp40_exp.exit_crit_edge, %entry.sgp40_exp.exit_crit_edge
  %retval.0.i1 = phi i32 [ %div18.i, %if.then15.i ], [ 16384, %entry.sgp40_exp.exit_crit_edge ], [ %add.i, %for.end.i.sgp40_exp.exit_crit_edge ]
  %add = add i32 %retval.0.i1, 16384
  %div = udiv i32 268435456, %add
  %mul2 = mul i32 %div, 500
  %3 = ptrtoint ptr %voc to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mul2, ptr %voc, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sgp40_calc_voc.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sgp40_calc_voc, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !67

if.then:                                          ; preds = %sgp40_exp.exit
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %res_calibbias to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %res_calibbias, align 4
  %8 = ptrtoint ptr %voc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %voc, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sgp40_calc_voc.__UNIQUE_ID_ddebug288, ptr noundef %5, ptr noundef nonnull @.str.19, i32 noundef %conv, i32 noundef %7, i32 noundef %mul, i32 noundef %retval.0.i1, i32 noundef %9) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %sgp40_exp.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @crc8(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !31, !32, !33, !35, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !55}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__initcall__kmod_sgp40__298_374_sgp40_driver_init6, !1, !"__initcall__kmod_sgp40__298_374_sgp40_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/chemical/sgp40.c", i32 374, i32 1}
!2 = !{ptr @__exitcall_sgp40_driver_exit, !1, !"__exitcall_sgp40_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author299, !4, !"__UNIQUE_ID_author299", i1 false, i1 false}
!4 = !{!"../drivers/iio/chemical/sgp40.c", i32 376, i32 1}
!5 = !{ptr @__UNIQUE_ID_description300, !6, !"__UNIQUE_ID_description300", i1 false, i1 false}
!6 = !{!"../drivers/iio/chemical/sgp40.c", i32 377, i32 1}
!7 = !{ptr @__UNIQUE_ID_file301, !8, !"__UNIQUE_ID_file301", i1 false, i1 false}
!8 = !{!"../drivers/iio/chemical/sgp40.c", i32 378, i32 1}
!9 = !{ptr @__UNIQUE_ID_license302, !8, !"__UNIQUE_ID_license302", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/chemical/sgp40.c", i32 368, i32 11}
!12 = !{ptr @sgp40_driver, !13, !"sgp40_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/chemical/sgp40.c", i32 366, i32 26}
!14 = !{ptr @sgp40_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/chemical/sgp40.c", i32 332, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/chemical/sgp40.c", i32 347, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @sgp40_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @sgp40_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @sgp40_crc8_table, !26, !"sgp40_crc8_table", i1 false, i1 false}
!26 = !{!"../drivers/iio/chemical/sgp40.c", i32 43, i32 1}
!27 = !{ptr @sgp40_info, !28, !"sgp40_info", i1 false, i1 false}
!28 = !{!"../drivers/iio/chemical/sgp40.c", i32 309, i32 30}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/chemical/sgp40.c", i32 257, i32 3}
!31 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @sgp40_read_raw.__UNIQUE_ID_ddebug297, !30, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/chemical/sgp40.c", i32 186, i32 3}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @sgp40_measure_resistance_raw._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @sgp40_measure_resistance_raw._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/chemical/sgp40.c", i32 195, i32 3}
!41 = !{ptr @sgp40_measure_resistance_raw._entry.12, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @sgp40_measure_resistance_raw._entry_ptr.14, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/chemical/sgp40.c", i32 201, i32 3}
!45 = !{ptr @sgp40_measure_resistance_raw._entry.15, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @sgp40_measure_resistance_raw._entry_ptr.17, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/chemical/sgp40.c", i32 154, i32 2}
!49 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @sgp40_calc_voc.__UNIQUE_ID_ddebug288, !48, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!51 = !{ptr @sgp40_channels, !52, !"sgp40_channels", i1 false, i1 false}
!52 = !{!"../drivers/iio/chemical/sgp40.c", i32 68, i32 35}
!53 = !{ptr @sgp40_dt_ids, !54, !"sgp40_dt_ids", i1 false, i1 false}
!54 = !{!"../drivers/iio/chemical/sgp40.c", i32 359, i32 34}
!55 = !{ptr @sgp40_id, !56, !"sgp40_id", i1 false, i1 false}
!56 = !{!"../drivers/iio/chemical/sgp40.c", i32 352, i32 35}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{!"auto-init"}
!67 = !{i64 2148764152, i64 2148764157, i64 2148764170, i64 2148764214, i64 2148764248, i64 2148764269}
