; ModuleID = '/llk/IR_all_yes/drivers/iio/temperature/tsys01.c_pt.bc'
source_filename = "../drivers/iio/temperature/tsys01.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tsys01_dev = type { ptr, %struct.mutex, ptr, ptr, ptr, [8 x i16] }

@__initcall__kmod_tsys01__288_230_tsys01_driver_init6 = internal global ptr @tsys01_driver_init, section ".initcall6.init", align 4
@tsys01_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tsys01_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tsys01_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tsys01_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tsys01_driver_exit = internal global ptr @tsys01_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [69 x i8] c"tsys01.description=Measurement-Specialties tsys01 temperature driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [66 x i8] c"tsys01.author=William Markezana <william.markezana@meas-spec.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [68 x i8] c"tsys01.author=Ludovic Tancerel <ludovic.tancerel@maplehightech.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [43 x i8] c"tsys01.file=drivers/iio/temperature/tsys01\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [22 x i8] c"tsys01.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tsys01\00", [25 x i8] zeroinitializer }, align 32
@tsys01_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"meas,tsys01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tsys01_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tsys01\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tsys01_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 190, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Adapter does not support some i2c transaction\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tsys01_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/iio/temperature/tsys01.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tsys01_i2c_probe._entry_ptr = internal global ptr @tsys01_i2c_probe._entry, section ".printk_index", align 4
@tsys01_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev_data->lock\00", [16 x i8] zeroinitializer }, align 32
@tsys01_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @tsys01_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@tsys01_channels = internal constant { [1 x %struct.iio_chan_spec], [40 x i8] } { [1 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%04x \00", [24 x i8] zeroinitializer }, align 32
@tsys01_read_prom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 146, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"prom crc check error\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tsys01_read_prom\00", [47 x i8] zeroinitializer }, align 32
@tsys01_read_prom._entry_ptr = internal global ptr @tsys01_read_prom._entry, section ".printk_index", align 4
@tsys01_read_prom._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.3, i32 150, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PROM coefficients : %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tsys01_read_prom._entry_ptr.13 = internal global ptr @tsys01_read_prom._entry.10, section ".printk_index", align 4
@___asan_gen_.14 = private unnamed_addr constant [14 x i8] c"tsys01_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 221, i32 26 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 225, i32 14 }
@___asan_gen_.20 = private unnamed_addr constant [16 x i8] c"tsys01_of_match\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 215, i32 34 }
@___asan_gen_.23 = private unnamed_addr constant [10 x i8] c"tsys01_id\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 209, i32 35 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 189, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 160, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [12 x i8] c"tsys01_info\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 112, i32 30 }
@___asan_gen_.53 = private unnamed_addr constant [16 x i8] c"tsys01_channels\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 105, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 141, i32 22 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 146, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private constant [36 x i8] c"../drivers/iio/temperature/tsys01.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 150, i32 2 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_tsys01_driver_exit, ptr @__initcall__kmod_tsys01__288_230_tsys01_driver_init6, ptr @tsys01_driver_exit, ptr @tsys01_i2c_probe._entry, ptr @tsys01_i2c_probe._entry_ptr, ptr @tsys01_read_prom._entry, ptr @tsys01_read_prom._entry.10, ptr @tsys01_read_prom._entry_ptr, ptr @tsys01_read_prom._entry_ptr.13, ptr @tsys01_driver, ptr @.str, ptr @tsys01_of_match, ptr @tsys01_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tsys01_probe.__key, ptr @.str.6, ptr @tsys01_info, ptr @tsys01_channels, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsys01_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsys01_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsys01_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsys01_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsys01_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsys01_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsys01_channels to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsys01_read_prom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsys01_read_prom._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tsys01_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tsys01_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tsys01_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @tsys01_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsys01_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %buf.i.i = alloca [57 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #6
  %and.i = and i32 %call.i.i, 73662464
  call void @__sanitizer_cov_trace_const_cmp4(i32 73662464, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 73662464
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 124) #6
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 19
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %client, ptr %7, align 4
  %reset = getelementptr inbounds %struct.tsys01_dev, ptr %7, i32 0, i32 2
  %9 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ms_sensors_reset, ptr %reset, align 4
  %read_prom_word = getelementptr inbounds %struct.tsys01_dev, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %read_prom_word to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ms_sensors_read_prom_word, ptr %read_prom_word, align 4
  %convert_and_read = getelementptr inbounds %struct.tsys01_dev, ptr %7, i32 0, i32 3
  %11 = ptrtoint ptr %convert_and_read to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ms_sensors_convert_and_read, ptr %convert_and_read, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call2, ptr %driver_data.i.i, align 4
  %13 = load ptr, ptr %priv.i, align 8
  %lock.i = getelementptr inbounds %struct.tsys01_dev, ptr %13, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @tsys01_probe.__key) #6
  %info.i = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 17
  %14 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @tsys01_info, ptr %info.i, align 8
  %driver.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %15 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %name1.i = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 15
  %19 = ptrtoint ptr %name1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %name1.i, align 8
  %20 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %call2, align 8
  %channels.i = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 13
  %21 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @tsys01_channels, ptr %channels.i, align 8
  %num_channels.i = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 14
  %22 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %num_channels.i, align 4
  %reset.i = getelementptr inbounds %struct.tsys01_dev, ptr %13, i32 0, i32 2
  %23 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reset.i, align 4
  %25 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %13, align 4
  %call2.i = tail call i32 %24(ptr noundef %26, i8 noundef zeroext 30, i32 noundef 3000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end5
  %27 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 57, ptr nonnull %buf.i.i) #6
  %29 = call ptr @memset(ptr %buf.i.i, i32 255, i32 57)
  %read_prom_word.i.i = getelementptr inbounds %struct.tsys01_dev, ptr %28, i32 0, i32 4
  %30 = ptrtoint ptr %read_prom_word.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read_prom_word.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %28, align 4
  %arrayidx.i.i = getelementptr %struct.tsys01_dev, ptr %28, i32 0, i32 5, i32 0
  %call1.i.i = tail call i32 %31(ptr noundef %33, i32 noundef 160, ptr noundef %arrayidx.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.tsys01_read_prom.exit.thread.i_crit_edge

if.end.i.tsys01_read_prom.exit.thread.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tsys01_read_prom.exit.thread.i

if.end.i.i:                                       ; preds = %if.end.i
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %35 to i32
  %call4.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf.i.i, ptr noundef nonnull @.str.7, i32 noundef %conv.i.i) #6
  %36 = ptrtoint ptr %read_prom_word.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read_prom_word.i.i, align 4
  %38 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %28, align 4
  %arrayidx.1.i.i = getelementptr %struct.tsys01_dev, ptr %28, i32 0, i32 5, i32 1
  %call1.1.i.i = tail call i32 %37(ptr noundef %39, i32 noundef 162, ptr noundef %arrayidx.1.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %call1.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %if.end.1.i.i, label %if.end.i.i.tsys01_read_prom.exit.thread.i_crit_edge

if.end.i.i.tsys01_read_prom.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tsys01_read_prom.exit.thread.i

if.end.1.i.i:                                     ; preds = %if.end.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf.i.i, i32 %call4.i.i
  %40 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx.1.i.i, align 2
  %conv.1.i.i = zext i16 %41 to i32
  %call4.1.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i.i, ptr noundef nonnull @.str.7, i32 noundef %conv.1.i.i) #6
  %42 = ptrtoint ptr %read_prom_word.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read_prom_word.i.i, align 4
  %44 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %28, align 4
  %arrayidx.2.i.i = getelementptr %struct.tsys01_dev, ptr %28, i32 0, i32 5, i32 2
  %call1.2.i.i = tail call i32 %43(ptr noundef %45, i32 noundef 164, ptr noundef %arrayidx.2.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i)
  %tobool.not.2.i.i = icmp eq i32 %call1.2.i.i, 0
  br i1 %tobool.not.2.i.i, label %if.end.2.i.i, label %if.end.1.i.i.tsys01_read_prom.exit.thread.i_crit_edge

if.end.1.i.i.tsys01_read_prom.exit.thread.i_crit_edge: ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tsys01_read_prom.exit.thread.i

if.end.2.i.i:                                     ; preds = %if.end.1.i.i
  %add.ptr.1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %call4.1.i.i
  %46 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx.2.i.i, align 2
  %conv.2.i.i = zext i16 %47 to i32
  %call4.2.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.1.i.i, ptr noundef nonnull @.str.7, i32 noundef %conv.2.i.i) #6
  %48 = ptrtoint ptr %read_prom_word.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read_prom_word.i.i, align 4
  %50 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %28, align 4
  %arrayidx.3.i.i = getelementptr %struct.tsys01_dev, ptr %28, i32 0, i32 5, i32 3
  %call1.3.i.i = tail call i32 %49(ptr noundef %51, i32 noundef 166, ptr noundef %arrayidx.3.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.3.i.i)
  %tobool.not.3.i.i = icmp eq i32 %call1.3.i.i, 0
  br i1 %tobool.not.3.i.i, label %if.end.3.i.i, label %if.end.2.i.i.tsys01_read_prom.exit.thread.i_crit_edge

if.end.2.i.i.tsys01_read_prom.exit.thread.i_crit_edge: ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tsys01_read_prom.exit.thread.i

if.end.3.i.i:                                     ; preds = %if.end.2.i.i
  %add.ptr.2.i.i = getelementptr i8, ptr %add.ptr.1.i.i, i32 %call4.2.i.i
  %52 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx.3.i.i, align 2
  %conv.3.i.i = zext i16 %53 to i32
  %call4.3.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.2.i.i, ptr noundef nonnull @.str.7, i32 noundef %conv.3.i.i) #6
  %54 = ptrtoint ptr %read_prom_word.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %read_prom_word.i.i, align 4
  %56 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %28, align 4
  %arrayidx.4.i.i = getelementptr %struct.tsys01_dev, ptr %28, i32 0, i32 5, i32 4
  %call1.4.i.i = tail call i32 %55(ptr noundef %57, i32 noundef 168, ptr noundef %arrayidx.4.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.4.i.i)
  %tobool.not.4.i.i = icmp eq i32 %call1.4.i.i, 0
  br i1 %tobool.not.4.i.i, label %if.end.4.i.i, label %if.end.3.i.i.tsys01_read_prom.exit.thread.i_crit_edge

if.end.3.i.i.tsys01_read_prom.exit.thread.i_crit_edge: ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tsys01_read_prom.exit.thread.i

if.end.4.i.i:                                     ; preds = %if.end.3.i.i
  %add.ptr.3.i.i = getelementptr i8, ptr %add.ptr.2.i.i, i32 %call4.3.i.i
  %58 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx.4.i.i, align 2
  %conv.4.i.i = zext i16 %59 to i32
  %call4.4.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.3.i.i, ptr noundef nonnull @.str.7, i32 noundef %conv.4.i.i) #6
  %60 = ptrtoint ptr %read_prom_word.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %read_prom_word.i.i, align 4
  %62 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %28, align 4
  %arrayidx.5.i.i = getelementptr %struct.tsys01_dev, ptr %28, i32 0, i32 5, i32 5
  %call1.5.i.i = tail call i32 %61(ptr noundef %63, i32 noundef 170, ptr noundef %arrayidx.5.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.5.i.i)
  %tobool.not.5.i.i = icmp eq i32 %call1.5.i.i, 0
  br i1 %tobool.not.5.i.i, label %if.end.5.i.i, label %if.end.4.i.i.tsys01_read_prom.exit.thread.i_crit_edge

if.end.4.i.i.tsys01_read_prom.exit.thread.i_crit_edge: ; preds = %if.end.4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tsys01_read_prom.exit.thread.i

if.end.5.i.i:                                     ; preds = %if.end.4.i.i
  %add.ptr.4.i.i = getelementptr i8, ptr %add.ptr.3.i.i, i32 %call4.4.i.i
  %64 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx.5.i.i, align 2
  %conv.5.i.i = zext i16 %65 to i32
  %call4.5.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.4.i.i, ptr noundef nonnull @.str.7, i32 noundef %conv.5.i.i) #6
  %66 = ptrtoint ptr %read_prom_word.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %read_prom_word.i.i, align 4
  %68 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %28, align 4
  %arrayidx.6.i.i = getelementptr %struct.tsys01_dev, ptr %28, i32 0, i32 5, i32 6
  %call1.6.i.i = tail call i32 %67(ptr noundef %69, i32 noundef 172, ptr noundef %arrayidx.6.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.6.i.i)
  %tobool.not.6.i.i = icmp eq i32 %call1.6.i.i, 0
  br i1 %tobool.not.6.i.i, label %if.end.6.i.i, label %if.end.5.i.i.tsys01_read_prom.exit.thread.i_crit_edge

if.end.5.i.i.tsys01_read_prom.exit.thread.i_crit_edge: ; preds = %if.end.5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tsys01_read_prom.exit.thread.i

if.end.6.i.i:                                     ; preds = %if.end.5.i.i
  %add.ptr.5.i.i = getelementptr i8, ptr %add.ptr.4.i.i, i32 %call4.5.i.i
  %70 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx.6.i.i, align 2
  %conv.6.i.i = zext i16 %71 to i32
  %call4.6.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.5.i.i, ptr noundef nonnull @.str.7, i32 noundef %conv.6.i.i) #6
  %72 = ptrtoint ptr %read_prom_word.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %read_prom_word.i.i, align 4
  %74 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %28, align 4
  %arrayidx.7.i.i = getelementptr %struct.tsys01_dev, ptr %28, i32 0, i32 5, i32 7
  %call1.7.i.i = tail call i32 %73(ptr noundef %75, i32 noundef 174, ptr noundef %arrayidx.7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.7.i.i)
  %tobool.not.7.i.i = icmp eq i32 %call1.7.i.i, 0
  br i1 %tobool.not.7.i.i, label %if.end.7.i.i, label %if.end.6.i.i.tsys01_read_prom.exit.thread.i_crit_edge

if.end.6.i.i.tsys01_read_prom.exit.thread.i_crit_edge: ; preds = %if.end.6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tsys01_read_prom.exit.thread.i

if.end.7.i.i:                                     ; preds = %if.end.6.i.i
  %add.ptr.6.i.i = getelementptr i8, ptr %add.ptr.5.i.i, i32 %call4.6.i.i
  %76 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %arrayidx.7.i.i, align 2
  %conv.7.i.i = zext i16 %77 to i32
  %call4.7.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.6.i.i, ptr noundef nonnull @.str.7, i32 noundef %conv.7.i.i) #6
  %78 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %arrayidx.i.i, align 2
  %conv2.i.i.i = zext i16 %79 to i32
  %80 = lshr i32 %conv2.i.i.i, 8
  %reass.add17.i.i.i = add nuw nsw i32 %80, %conv2.i.i.i
  %81 = and i32 %reass.add17.i.i.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp9.i.i.i = icmp eq i32 %81, 0
  br i1 %cmp9.i.i.i, label %if.end6.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end.7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.8) #9
  br label %tsys01_read_prom.exit.thread.i

tsys01_read_prom.exit.thread.i:                   ; preds = %do.end.i.i, %if.end.6.i.i.tsys01_read_prom.exit.thread.i_crit_edge, %if.end.5.i.i.tsys01_read_prom.exit.thread.i_crit_edge, %if.end.4.i.i.tsys01_read_prom.exit.thread.i_crit_edge, %if.end.3.i.i.tsys01_read_prom.exit.thread.i_crit_edge, %if.end.2.i.i.tsys01_read_prom.exit.thread.i_crit_edge, %if.end.1.i.i.tsys01_read_prom.exit.thread.i_crit_edge, %if.end.i.i.tsys01_read_prom.exit.thread.i_crit_edge, %if.end.i.tsys01_read_prom.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.7.i.i, %if.end.6.i.i.tsys01_read_prom.exit.thread.i_crit_edge ], [ %call1.6.i.i, %if.end.5.i.i.tsys01_read_prom.exit.thread.i_crit_edge ], [ %call1.5.i.i, %if.end.4.i.i.tsys01_read_prom.exit.thread.i_crit_edge ], [ %call1.4.i.i, %if.end.3.i.i.tsys01_read_prom.exit.thread.i_crit_edge ], [ %call1.3.i.i, %if.end.2.i.i.tsys01_read_prom.exit.thread.i_crit_edge ], [ %call1.2.i.i, %if.end.1.i.i.tsys01_read_prom.exit.thread.i_crit_edge ], [ %call1.1.i.i, %if.end.i.i.tsys01_read_prom.exit.thread.i_crit_edge ], [ %call1.i.i, %if.end.i.tsys01_read_prom.exit.thread.i_crit_edge ], [ -19, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 57, ptr nonnull %buf.i.i) #6
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.7.i.i = getelementptr i8, ptr %add.ptr.6.i.i, i32 %call4.7.i.i
  %82 = ptrtoint ptr %add.ptr.7.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %add.ptr.7.i.i, align 1
  %dev13.i.i = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev13.i.i, ptr noundef nonnull @.str.11, ptr noundef nonnull %buf.i.i) #9
  call void @llvm.lifetime.end.p0(i64 57, ptr nonnull %buf.i.i) #6
  %call7.i = call i32 @__devm_iio_device_register(ptr noundef %dev1, ptr noundef nonnull %call2, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i, %tsys01_read_prom.exit.thread.i, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -95, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call7.i, %if.end6.i ], [ %call2.i, %if.end5.cleanup_crit_edge ], [ %retval.0.i.ph.i, %tsys01_read_prom.exit.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ms_sensors_reset(ptr noundef, i8 noundef zeroext, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ms_sensors_read_prom_word(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ms_sensors_convert_and_read(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsys01_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %channel, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2, i32 noundef %mask) #2 align 64 {
entry:
  %adc.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mask)
  %cond = icmp eq i32 %mask, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %1)
  %cond4 = icmp eq i32 %1, 9
  br i1 %cond4, label %sw.bb1, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %adc.i) #6
  %2 = ptrtoint ptr %adc.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %adc.i, align 4, !annotation !58
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %3 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i.i, align 8
  %lock.i = getelementptr inbounds %struct.tsys01_dev, ptr %4, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %convert_and_read.i = getelementptr inbounds %struct.tsys01_dev, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %convert_and_read.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %convert_and_read.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %call1.i = call i32 %6(ptr noundef %8, i8 noundef zeroext 72, i8 noundef zeroext 0, i32 noundef 9000, ptr noundef nonnull %adc.i) #6
  call void @mutex_unlock(ptr noundef %lock.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end, label %tsys01_read_temperature.exit

tsys01_read_temperature.exit:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adc.i) #6
  br label %cleanup

if.end:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %adc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %adc.i, align 4
  %shr.i = lshr i32 %10, 8
  store i32 %shr.i, ptr %adc.i, align 4
  %arrayidx3.i = getelementptr %struct.tsys01_dev, ptr %4, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx3.i, align 2
  %conv4.i = zext i16 %12 to i64
  %conv5.i = zext i32 %shr.i to i64
  %mul.i = mul nsw i64 %conv5.i, -2000000
  %mul6.i = mul nsw i64 %mul.i, %conv4.i
  %call7.i = call i64 @div64_s64(i64 noundef %mul6.i, i64 noundef 100000) #6
  %arrayidx3.1.i = getelementptr %struct.tsys01_dev, ptr %4, i32 0, i32 5, i32 2
  %13 = ptrtoint ptr %arrayidx3.1.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx3.1.i, align 2
  %conv4.1.i = zext i16 %14 to i64
  %mul.1.i = mul nuw nsw i64 %conv4.1.i, 4000000
  %add.1.i = add i64 %mul.1.i, %call7.i
  %15 = ptrtoint ptr %adc.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %adc.i, align 4
  %conv5.1.i = zext i32 %16 to i64
  %mul6.1.i = mul i64 %add.1.i, %conv5.1.i
  %call7.1.i = call i64 @div64_s64(i64 noundef %mul6.1.i, i64 noundef 100000) #6
  %arrayidx3.2.i = getelementptr %struct.tsys01_dev, ptr %4, i32 0, i32 5, i32 3
  %17 = ptrtoint ptr %arrayidx3.2.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx3.2.i, align 2
  %conv4.2.i = zext i16 %18 to i64
  %mul.2.i = mul nsw i64 %conv4.2.i, -2000000
  %add.2.i = add i64 %mul.2.i, %call7.1.i
  %19 = ptrtoint ptr %adc.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %adc.i, align 4
  %conv5.2.i = zext i32 %20 to i64
  %mul6.2.i = mul i64 %add.2.i, %conv5.2.i
  %call7.2.i = call i64 @div64_s64(i64 noundef %mul6.2.i, i64 noundef 100000) #6
  %arrayidx3.3.i = getelementptr %struct.tsys01_dev, ptr %4, i32 0, i32 5, i32 4
  %21 = ptrtoint ptr %arrayidx3.3.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx3.3.i, align 2
  %conv4.3.i = zext i16 %22 to i64
  %mul.3.i = mul nuw nsw i64 %conv4.3.i, 1000000
  %add.3.i = add i64 %mul.3.i, %call7.2.i
  %23 = ptrtoint ptr %adc.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %adc.i, align 4
  %conv5.3.i = zext i32 %24 to i64
  %mul6.3.i = mul i64 %add.3.i, %conv5.3.i
  %call7.3.i = call i64 @div64_s64(i64 noundef %mul6.3.i, i64 noundef 100000) #6
  %mul8.i = mul i64 %call7.3.i, 10
  %arrayidx11.i = getelementptr %struct.tsys01_dev, ptr %4, i32 0, i32 5, i32 5
  %25 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx11.i, align 2
  %conv12.i = zext i16 %26 to i64
  %mul13.i = mul nsw i64 %conv12.i, -1500000
  %add14.i = add i64 %mul13.i, %mul8.i
  %call15.i = call i64 @div64_s64(i64 noundef %add14.i, i64 noundef 100000) #6
  %conv16.i = trunc i64 %call15.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adc.i) #6
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv16.i, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %tsys01_read_temperature.exit, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ %call1.i, %tsys01_read_temperature.exit ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !31, !33, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__initcall__kmod_tsys01__288_230_tsys01_driver_init6, !1, !"__initcall__kmod_tsys01__288_230_tsys01_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/temperature/tsys01.c", i32 230, i32 1}
!2 = !{ptr @__exitcall_tsys01_driver_exit, !1, !"__exitcall_tsys01_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/iio/temperature/tsys01.c", i32 232, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/iio/temperature/tsys01.c", i32 233, i32 1}
!7 = !{ptr @__UNIQUE_ID_author291, !8, !"__UNIQUE_ID_author291", i1 false, i1 false}
!8 = !{!"../drivers/iio/temperature/tsys01.c", i32 234, i32 1}
!9 = !{ptr @__UNIQUE_ID_file292, !10, !"__UNIQUE_ID_file292", i1 false, i1 false}
!10 = !{!"../drivers/iio/temperature/tsys01.c", i32 235, i32 1}
!11 = !{ptr @__UNIQUE_ID_license293, !10, !"__UNIQUE_ID_license293", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/temperature/tsys01.c", i32 225, i32 14}
!14 = !{ptr @tsys01_driver, !15, !"tsys01_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/temperature/tsys01.c", i32 221, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/temperature/tsys01.c", i32 189, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @tsys01_i2c_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @tsys01_i2c_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @tsys01_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/iio/temperature/tsys01.c", i32 160, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @tsys01_info, !28, !"tsys01_info", i1 false, i1 false}
!28 = !{!"../drivers/iio/temperature/tsys01.c", i32 112, i32 30}
!29 = distinct !{null, !30, !"coeff_mul", i1 false, i1 false}
!30 = !{!"../drivers/iio/temperature/tsys01.c", i32 43, i32 18}
!31 = !{ptr @tsys01_channels, !32, !"tsys01_channels", i1 false, i1 false}
!32 = !{!"../drivers/iio/temperature/tsys01.c", i32 105, i32 35}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/temperature/tsys01.c", i32 141, i32 22}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/temperature/tsys01.c", i32 146, i32 3}
!37 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @tsys01_read_prom._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @tsys01_read_prom._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/temperature/tsys01.c", i32 150, i32 2}
!42 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @tsys01_read_prom._entry.10, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @tsys01_read_prom._entry_ptr.13, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @tsys01_of_match, !46, !"tsys01_of_match", i1 false, i1 false}
!46 = !{!"../drivers/iio/temperature/tsys01.c", i32 215, i32 34}
!47 = !{ptr @tsys01_id, !48, !"tsys01_id", i1 false, i1 false}
!48 = !{!"../drivers/iio/temperature/tsys01.c", i32 209, i32 35}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{!"auto-init"}
