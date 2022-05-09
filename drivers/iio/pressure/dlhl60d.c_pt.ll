; ModuleID = '/llk/IR_all_yes/drivers/iio/pressure/dlhl60d.c_pt.bc'
source_filename = "../drivers/iio/pressure/dlhl60d.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dlh_info = type { i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.dlh_state = type { ptr, %struct.dlh_info, i8, %struct.completion, [56 x i8], [7 x i8], [121 x i8] }

@__initcall__kmod_dlhl60d__288_369_dlh_driver_init6 = internal global ptr @dlh_driver_init, section ".initcall6.init", align 4
@dlh_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @dlh_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dlh_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @dlh_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_dlh_driver_exit = internal global ptr @dlh_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [55 x i8] c"dlhl60d.author=Tomislav Denis <tomislav.denis@avl.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [71 x i8] c"dlhl60d.description=Driver for All Sensors DLH series pressure sensors\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [42 x i8] c"dlhl60d.file=drivers/iio/pressure/dlhl60d\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [23 x i8] c"dlhl60d.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dlhl60d\00", [24 x i8] zeroinitializer }, align 32
@dlh_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"asc,dlhl60d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"asc,dlhl60g\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@dlh_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"dlhl60d\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"dlhl60g\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@dlh_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 296, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"adapter doesn't support required i2c functionality\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dlh_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/iio/pressure/dlhl60d.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dlh_probe._entry_ptr = internal global ptr @dlh_probe._entry, section ".printk_index", align 4
@dlh_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 302, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to allocate iio device\0A\00", [33 x i8] zeroinitializer }, align 32
@dlh_probe._entry_ptr.8 = internal global ptr @dlh_probe._entry.6, section ".printk_index", align 4
@dlh_info_tbl = internal constant { [2 x %struct.dlh_info], [16 x i8] } { [2 x %struct.dlh_info] [%struct.dlh_info { i8 2, i32 120 }, %struct.dlh_info { i8 10, i32 60 }], [16 x i8] zeroinitializer }, align 32
@dlh_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @dlh_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@dlh_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 17, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 24, i8 32, i8 8, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 1, %struct.anon.86 { i8 117, i8 24, i8 32, i8 8, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [48 x i8] zeroinitializer }, align 32
@dlh_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 325, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to allocate threaded irq\00", [32 x i8] zeroinitializer }, align 32
@dlh_probe._entry_ptr.11 = internal global ptr @dlh_probe._entry.9, section ".printk_index", align 4
@dlh_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 336, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to setup iio buffer\0A\00", [36 x i8] zeroinitializer }, align 32
@dlh_probe._entry_ptr.14 = internal global ptr @dlh_probe._entry.12, section ".printk_index", align 4
@dlh_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 342, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register iio device\0A\00", [33 x i8] zeroinitializer }, align 32
@dlh_probe._entry_ptr.17 = internal global ptr @dlh_probe._entry.15, section ".printk_index", align 4
@dlh_start_capture_and_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 113, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: conversion timed out\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dlh_start_capture_and_read\00", [37 x i8] zeroinitializer }, align 32
@dlh_start_capture_and_read._entry_ptr = internal global ptr @dlh_start_capture_and_read._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dlh_cmd_start_single._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 72, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: I2C write byte failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dlh_cmd_start_single\00", [43 x i8] zeroinitializer }, align 32
@dlh_cmd_start_single._entry_ptr = internal global ptr @dlh_cmd_start_single._entry, section ".printk_index", align 4
@dlh_cmd_read_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 84, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: I2C read block failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dlh_cmd_read_data\00", [46 x i8] zeroinitializer }, align 32
@dlh_cmd_read_data._entry_ptr = internal global ptr @dlh_cmd_read_data._entry, section ".printk_index", align 4
@dlh_cmd_read_data._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 90, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: invalid status 0x%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@dlh_cmd_read_data._entry_ptr.26 = internal global ptr @dlh_cmd_read_data._entry.24, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 17]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 17]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 17]
@___asan_gen_.31 = private unnamed_addr constant [11 x i8] c"dlh_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 361, i32 26 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 363, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [13 x i8] c"dlh_of_match\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 347, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"dlh_id\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 354, i32 35 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 295, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 302, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [13 x i8] c"dlh_info_tbl\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 53, i32 24 }
@___asan_gen_.70 = private unnamed_addr constant [9 x i8] c"dlh_info\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 209, i32 30 }
@___asan_gen_.73 = private unnamed_addr constant [13 x i8] c"dlh_channels\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 213, i32 35 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 325, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 336, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 342, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 112, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 71, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 83, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.125 = private constant [34 x i8] c"../drivers/iio/pressure/dlhl60d.c\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 89, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 87, i32 2 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_dlh_driver_exit, ptr @__initcall__kmod_dlhl60d__288_369_dlh_driver_init6, ptr @dlh_cmd_read_data._entry, ptr @dlh_cmd_read_data._entry.24, ptr @dlh_cmd_read_data._entry_ptr, ptr @dlh_cmd_read_data._entry_ptr.26, ptr @dlh_cmd_start_single._entry, ptr @dlh_cmd_start_single._entry_ptr, ptr @dlh_driver_exit, ptr @dlh_probe._entry, ptr @dlh_probe._entry.12, ptr @dlh_probe._entry.15, ptr @dlh_probe._entry.6, ptr @dlh_probe._entry.9, ptr @dlh_probe._entry_ptr, ptr @dlh_probe._entry_ptr.11, ptr @dlh_probe._entry_ptr.14, ptr @dlh_probe._entry_ptr.17, ptr @dlh_probe._entry_ptr.8, ptr @dlh_start_capture_and_read._entry, ptr @dlh_start_capture_and_read._entry_ptr, ptr @dlh_driver, ptr @.str, ptr @dlh_of_match, ptr @dlh_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @dlh_info_tbl, ptr @dlh_info, ptr @dlh_channels, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @init_completion.__key, ptr @.str.27], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlh_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlh_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlh_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlh_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlh_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlh_info_tbl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlh_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlh_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlh_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlh_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlh_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlh_start_capture_and_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlh_cmd_start_single._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlh_cmd_read_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlh_cmd_read_data._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dlh_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @dlh_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dlh_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @dlh_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlh_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #5
  %and.i = and i32 %call.i.i, 262145
  call void @__sanitizer_cov_trace_const_cmp4(i32 262145, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 262145
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 256) #5
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end9

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end9:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 19
  %7 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv.i, align 8
  %info = getelementptr inbounds %struct.dlh_state, ptr %8, i32 0, i32 1
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %9 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [2 x %struct.dlh_info], ptr @dlh_info_tbl, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %info to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %12, ptr %info, align 4
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %client, ptr %8, align 128
  %use_interrupt = getelementptr inbounds %struct.dlh_state, ptr %8, i32 0, i32 2
  %15 = ptrtoint ptr %use_interrupt to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %use_interrupt, align 4
  %name12 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 15
  %16 = ptrtoint ptr %name12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %id, ptr %name12, align 8
  %info13 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 17
  %17 = ptrtoint ptr %info13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @dlh_info, ptr %info13, align 8
  %18 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %call2, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 13
  %19 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @dlh_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 14
  %20 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %num_channels, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp = icmp sgt i32 %22, 0
  br i1 %cmp, label %if.then14, label %if.end9.if.end28_crit_edge

if.end9.if.end28_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then14:                                        ; preds = %if.end9
  %call19 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %22, ptr noundef nonnull @dlh_interrupt, ptr noundef null, i32 noundef 8193, ptr noundef %id, ptr noundef nonnull %call2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end26, label %if.then14.cleanup.sink.split_crit_edge

if.then14.cleanup.sink.split_crit_edge:           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end26:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %use_interrupt to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %use_interrupt, align 4
  %completion = getelementptr inbounds %struct.dlh_state, ptr %8, i32 0, i32 3
  %24 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.dlh_state, ptr %8, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @init_completion.__key) #5
  br label %if.end28

if.end28:                                         ; preds = %if.end26, %if.end9.if.end28_crit_edge
  %call30 = tail call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %dev1, ptr noundef nonnull %call2, ptr noundef null, ptr noundef nonnull @dlh_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end37, label %if.end28.cleanup.sink.split_crit_edge

if.end28.cleanup.sink.split_crit_edge:            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end37:                                         ; preds = %if.end28
  %call39 = tail call i32 @__devm_iio_device_register(ptr noundef %dev1, ptr noundef nonnull %call2, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end37.cleanup_crit_edge, label %if.end37.cleanup.sink.split_crit_edge

if.end37.cleanup.sink.split_crit_edge:            ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end37.cleanup.sink.split_crit_edge, %if.end28.cleanup.sink.split_crit_edge, %if.then14.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.16.sink = phi ptr [ @.str.1, %entry.cleanup.sink.split_crit_edge ], [ @.str.7, %if.end.cleanup.sink.split_crit_edge ], [ @.str.10, %if.then14.cleanup.sink.split_crit_edge ], [ @.str.13, %if.end28.cleanup.sink.split_crit_edge ], [ @.str.16, %if.end37.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -95, %entry.cleanup.sink.split_crit_edge ], [ -12, %if.end.cleanup.sink.split_crit_edge ], [ %call19, %if.then14.cleanup.sink.split_crit_edge ], [ %call30, %if.end28.cleanup.sink.split_crit_edge ], [ %call39, %if.end37.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.16.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end37.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end37.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlh_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %completion = getelementptr inbounds %struct.dlh_state, ptr %1, i32 0, i32 3
  tail call void @complete(ptr noundef %completion) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlh_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %private) #2 align 64 {
entry:
  %tmp_buf = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_buf) #5
  %4 = ptrtoint ptr %tmp_buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %tmp_buf, align 4, !annotation !79
  %5 = getelementptr inbounds [2 x i32], ptr %tmp_buf, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !79
  %call2 = tail call fastcc i32 @dlh_start_capture_and_read(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %active_scan_mask, align 4
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %masklength, align 8
  %call3 = tail call i32 @_find_next_bit_be(ptr noundef %8, i32 noundef %10, i32 noundef 0) #5
  %11 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %masklength, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %12)
  %cmp22 = icmp ult i32 %call3, %12
  br i1 %cmp22, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %arrayidx = getelementptr %struct.dlh_state, ptr %3, i32 0, i32 5, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %chn.023 = phi i32 [ %call3, %for.body.lr.ph ], [ %call8, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr i32, ptr %tmp_buf, i32 %i.024
  %mul = mul i32 %chn.023, 3
  %add.ptr5 = getelementptr i8, ptr %arrayidx, i32 %mul
  %13 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr5, i32 3)
  %inc = add i32 %i.024, 1
  %14 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %active_scan_mask, align 4
  %16 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %masklength, align 8
  %add = add nuw i32 %chn.023, 1
  %call8 = tail call i32 @_find_next_bit_be(ptr noundef %15, i32 noundef %17, i32 noundef %add) #5
  %18 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %masklength, align 8
  %cmp = icmp ult i32 %call8, %19
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %call10 = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef nonnull %tmp_buf) #5
  br label %out

out:                                              ; preds = %for.end, %entry.out_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_buf) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlh_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %channel, ptr nocapture noundef writeonly %value, ptr nocapture noundef writeonly %value2, i32 noundef %mask) #2 align 64 {
entry:
  %remainder.i = alloca i32, align 4
  %rem = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rem) #5
  %2 = ptrtoint ptr %rem to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rem, align 4, !annotation !79
  %3 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb8
    i32 3, label %sw.bb18
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %call.i = tail call fastcc i32 @dlh_start_capture_and_read(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end5, label %dlh_read_direct.exit

dlh_read_direct.exit:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %arrayidx.i = getelementptr %struct.dlh_state, ptr %1, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %arrayidx.i, align 1
  %arrayidx3.i = getelementptr %struct.dlh_state, ptr %1, i32 0, i32 5, i32 3
  %6 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %arrayidx3.i, align 1
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #5
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %9, label %if.end5.cleanup_crit_edge [
    i32 17, label %sw.bb6
    i32 9, label %sw.bb7
  ]

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb6:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %shr.i = lshr i32 %5, 8
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shr.i, ptr %value, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %and.i = and i32 %7, 16777215
  %12 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and.i, ptr %value, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %13 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %channel, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %14, label %sw.bb8.cleanup_crit_edge [
    i32 17, label %sw.bb10
    i32 9, label %sw.bb16
  ]

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb10:                                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  %fss = getelementptr inbounds %struct.dlh_state, ptr %1, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %fss to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fss, align 4
  %conv = zext i32 %17 to i64
  %mul12 = mul nuw nsw i64 %conv, 311362500
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i) #5
  %18 = ptrtoint ptr %remainder.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %remainder.i, align 4, !annotation !79
  %call.i54 = call i64 @div_s64_rem(i64 noundef %mul12, i32 noundef 16777216, ptr noundef nonnull %remainder.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i) #5
  %call14 = call i64 @div_s64_rem(i64 noundef %call.i54, i32 noundef 1000000000, ptr noundef nonnull %rem) #5
  %conv15 = trunc i64 %call14 to i32
  %19 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv15, ptr %value, align 4
  %20 = ptrtoint ptr %rem to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rem, align 4
  %22 = ptrtoint ptr %value2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %value2, align 4
  br label %cleanup

sw.bb16:                                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 125000, ptr %value, align 4
  %24 = ptrtoint ptr %value2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 24, ptr %value2, align 4
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  %25 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %channel, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %26, label %sw.bb18.cleanup_crit_edge [
    i32 17, label %sw.bb20
    i32 9, label %sw.bb29
  ]

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb20:                                          ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #7
  %info21 = getelementptr inbounds %struct.dlh_state, ptr %1, i32 0, i32 1
  %fss22 = getelementptr inbounds %struct.dlh_state, ptr %1, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %fss22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fss22, align 4
  %mul24 = mul i32 %29, -3113625
  %30 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul24, ptr %value, align 4
  %31 = ptrtoint ptr %info21 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %info21, align 4
  %conv26 = zext i8 %32 to i32
  %mul28 = mul nuw i32 %conv26, 10000000
  %33 = ptrtoint ptr %value2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %mul28, ptr %value2, align 4
  br label %cleanup

sw.bb29:                                          ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -40000, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb29, %sw.bb20, %sw.bb18.cleanup_crit_edge, %sw.bb16, %sw.bb10, %sw.bb8.cleanup_crit_edge, %sw.bb7, %sw.bb6, %if.end5.cleanup_crit_edge, %dlh_read_direct.exit, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb29 ], [ 10, %sw.bb20 ], [ 11, %sw.bb16 ], [ 3, %sw.bb10 ], [ 1, %sw.bb7 ], [ 1, %sw.bb6 ], [ %call1, %sw.bb.cleanup_crit_edge ], [ %call.i, %dlh_read_direct.exit ], [ -22, %if.end5.cleanup_crit_edge ], [ -22, %sw.bb8.cleanup_crit_edge ], [ -22, %sw.bb18.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rem) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dlh_start_capture_and_read(ptr noundef %st) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %use_interrupt = getelementptr inbounds %struct.dlh_state, ptr %st, i32 0, i32 2
  %0 = ptrtoint ptr %use_interrupt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_interrupt, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %completion = getelementptr inbounds %struct.dlh_state, ptr %st, i32 0, i32 3
  %2 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %completion, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %st, align 128
  %call.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %4, i8 noundef zeroext -86) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end3, label %dlh_cmd_start_single.exit

dlh_cmd_start_single.exit:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %st, align 128
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %7 = ptrtoint ptr %use_interrupt to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %use_interrupt, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not = icmp eq i8 %8, 0
  br i1 %tobool5.not, label %while.body.preheader, label %if.then6

while.body.preheader:                             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #5
  br label %if.end14

if.then6:                                         ; preds = %if.end3
  %completion7 = getelementptr inbounds %struct.dlh_state, ptr %st, i32 0, i32 3
  %call9 = tail call i32 @wait_for_completion_timeout(ptr noundef %completion7, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.end, label %if.then6.if.end14_crit_edge

if.then6.if.end14_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %st, align 128
  %dev = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #8
  br label %cleanup

if.end14:                                         ; preds = %if.then6.if.end14_crit_edge, %while.body.preheader
  %16 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %st, align 128
  %rx_buf.i = getelementptr inbounds %struct.dlh_state, ptr %st, i32 0, i32 5
  %call.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %17, ptr noundef %rx_buf.i, i32 noundef 7, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i25, label %if.end.i

do.end.i25:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %st, align 128
  %dev.i24 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i24, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end14
  %20 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rx_buf.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %21)
  %cmp3.not.i = icmp eq i8 %21, 64
  br i1 %cmp3.not.i, label %if.end.i.cleanup_crit_edge, label %do.end8.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = zext i8 %21 to i32
  %22 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %st, align 128
  %dev10.i = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23, i32 noundef %conv.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end8.i, %if.end.i.cleanup_crit_edge, %do.end.i25, %do.end, %dlh_cmd_start_single.exit
  %retval.0 = phi i32 [ -110, %do.end ], [ %call.i, %dlh_cmd_start_single.exit ], [ %call.i.i, %do.end.i25 ], [ -16, %do.end8.i ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !65, !66, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__initcall__kmod_dlhl60d__288_369_dlh_driver_init6, !1, !"__initcall__kmod_dlhl60d__288_369_dlh_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/pressure/dlhl60d.c", i32 369, i32 1}
!2 = !{ptr @__exitcall_dlh_driver_exit, !1, !"__exitcall_dlh_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/pressure/dlhl60d.c", i32 371, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/pressure/dlhl60d.c", i32 372, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/pressure/dlhl60d.c", i32 373, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/pressure/dlhl60d.c", i32 363, i32 11}
!12 = !{ptr @dlh_driver, !13, !"dlh_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/pressure/dlhl60d.c", i32 361, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/pressure/dlhl60d.c", i32 295, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @dlh_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @dlh_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/iio/pressure/dlhl60d.c", i32 302, i32 3}
!24 = !{ptr @dlh_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @dlh_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/pressure/dlhl60d.c", i32 325, i32 4}
!28 = !{ptr @dlh_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @dlh_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/pressure/dlhl60d.c", i32 336, i32 3}
!32 = !{ptr @dlh_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @dlh_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/pressure/dlhl60d.c", i32 342, i32 3}
!36 = !{ptr @dlh_probe._entry.15, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @dlh_probe._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @dlh_info_tbl, !39, !"dlh_info_tbl", i1 false, i1 false}
!39 = !{!"../drivers/iio/pressure/dlhl60d.c", i32 53, i32 24}
!40 = !{ptr @dlh_info, !41, !"dlh_info", i1 false, i1 false}
!41 = !{!"../drivers/iio/pressure/dlhl60d.c", i32 209, i32 30}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/pressure/dlhl60d.c", i32 112, i32 4}
!44 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @dlh_start_capture_and_read._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @dlh_start_capture_and_read._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/pressure/dlhl60d.c", i32 71, i32 3}
!49 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @dlh_cmd_start_single._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @dlh_cmd_start_single._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/iio/pressure/dlhl60d.c", i32 83, i32 3}
!54 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @dlh_cmd_read_data._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @dlh_cmd_read_data._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iio/pressure/dlhl60d.c", i32 89, i32 3}
!59 = !{ptr @dlh_cmd_read_data._entry.24, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @dlh_cmd_read_data._entry_ptr.26, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @dlh_channels, !62, !"dlh_channels", i1 false, i1 false}
!62 = !{!"../drivers/iio/pressure/dlhl60d.c", i32 213, i32 35}
!63 = !{ptr @init_completion.__key, !64, !"__key", i1 false, i1 false}
!64 = !{!"../include/linux/completion.h", i32 87, i32 2}
!65 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @dlh_of_match, !67, !"dlh_of_match", i1 false, i1 false}
!67 = !{!"../drivers/iio/pressure/dlhl60d.c", i32 347, i32 34}
!68 = !{ptr @dlh_id, !69, !"dlh_id", i1 false, i1 false}
!69 = !{!"../drivers/iio/pressure/dlhl60d.c", i32 354, i32 35}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{!"auto-init"}
!80 = !{i8 0, i8 2}
