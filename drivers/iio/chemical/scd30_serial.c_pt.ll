; ModuleID = '/llk/IR_all_yes/drivers/iio/chemical/scd30_serial.c_pt.bc'
source_filename = "../drivers/iio/chemical/scd30_serial.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.serdev_device_driver = type { %struct.device_driver, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.serdev_device_ops = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.serdev_device = type { %struct.device, i32, ptr, ptr, %struct.completion, %struct.mutex }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.scd30_state = type { %struct.mutex, ptr, ptr, %struct.completion, ptr, i32, i16, i16, [3 x i32], ptr }
%struct.scd30_serdev_priv = type { %struct.completion, ptr, i32, i32 }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_scd30_serial__288_259_scd30_serdev_driver_init6 = internal global ptr @scd30_serdev_driver_init, section ".initcall6.init", align 4
@scd30_serdev_driver = internal global { %struct.serdev_device_driver, [44 x i8] } { %struct.serdev_device_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @scd30_serdev_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @scd30_pm_ops, ptr null, ptr null }, ptr @scd30_serdev_probe, ptr null }, [44 x i8] zeroinitializer }, align 32
@__exitcall_scd30_serdev_driver_exit = internal global ptr @scd30_serdev_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [68 x i8] c"scd30_serial.author=Tomasz Duszynski <tomasz.duszynski@octakon.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [77 x i8] c"scd30_serial.description=Sensirion SCD30 carbon dioxide sensor serial driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [52 x i8] c"scd30_serial.file=drivers/iio/chemical/scd30_serial\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [28 x i8] c"scd30_serial.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"scd30_serial\00", [19 x i8] zeroinitializer }, align 32
@scd30_serdev_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sensirion,scd30\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@scd30_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @scd30_suspend, ptr @scd30_resume, ptr @scd30_suspend, ptr @scd30_resume, ptr @scd30_suspend, ptr @scd30_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@scd30_serdev_ops = internal constant { %struct.serdev_device_ops, [24 x i8] } { %struct.serdev_device_ops { ptr @scd30_serdev_receive_buf, ptr @serdev_device_write_wakeup }, [24 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__const.scd30_serdev_command.txbuf = private unnamed_addr constant <{ i8, [16 x i8] }> <{ i8 97, [16 x i8] zeroinitializer }>, align 1
@scd30_serdev_cmd_lookup_tbl = internal constant { [10 x i16], [44 x i8] } { [10 x i16] [i16 54, i16 55, i16 37, i16 39, i16 40, i16 58, i16 57, i16 59, i16 32, i16 52], [44 x i8] zeroinitializer }, align 32
@scd30_serdev_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 149, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wrong message received\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"scd30_serdev_command\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/iio/chemical/scd30_serial.c\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@scd30_serdev_command._entry_ptr = internal global ptr @scd30_serdev_command._entry, section ".printk_index", align 4
@scd30_serdev_command._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 155, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"received data size does not match header\0A\00", [54 x i8] zeroinitializer }, align 32
@scd30_serdev_command._entry_ptr.9 = internal global ptr @scd30_serdev_command._entry.7, section ".printk_index", align 4
@scd30_serdev_command._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 162, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"data integrity check failed\0A\00", [35 x i8] zeroinitializer }, align 32
@scd30_serdev_command._entry_ptr.12 = internal global ptr @scd30_serdev_command._entry.10, section ".printk_index", align 4
@scd30_serdev_command._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 170, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"received unknown op code\0A\00", [38 x i8] zeroinitializer }, align 32
@scd30_serdev_command._entry_ptr.15 = internal global ptr @scd30_serdev_command._entry.13, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 9]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@___asan_gen_.17 = private unnamed_addr constant [20 x i8] c"scd30_serdev_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 251, i32 36 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 253, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant [22 x i8] c"scd30_serdev_of_match\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 245, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant [13 x i8] c"scd30_pm_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [32 x i8] c"../drivers/iio/chemical/scd30.h\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 74, i32 23 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"scd30_serdev_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 211, i32 39 }
@___asan_gen_.32 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 87, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [28 x i8] c"scd30_serdev_cmd_lookup_tbl\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 37, i32 12 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 149, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 155, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 162, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private constant [39 x i8] c"../drivers/iio/chemical/scd30_serial.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 170, i32 3 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_scd30_serdev_driver_exit, ptr @__initcall__kmod_scd30_serial__288_259_scd30_serdev_driver_init6, ptr @scd30_serdev_command._entry, ptr @scd30_serdev_command._entry.10, ptr @scd30_serdev_command._entry.13, ptr @scd30_serdev_command._entry.7, ptr @scd30_serdev_command._entry_ptr, ptr @scd30_serdev_command._entry_ptr.12, ptr @scd30_serdev_command._entry_ptr.15, ptr @scd30_serdev_command._entry_ptr.9, ptr @scd30_serdev_driver_exit, ptr @scd30_serdev_driver, ptr @.str, ptr @scd30_serdev_of_match, ptr @scd30_pm_ops, ptr @scd30_serdev_ops, ptr @init_completion.__key, ptr @.str.1, ptr @scd30_serdev_cmd_lookup_tbl, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd30_serdev_driver to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd30_serdev_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd30_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd30_serdev_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd30_serdev_cmd_lookup_tbl to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd30_serdev_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd30_serdev_command._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd30_serdev_command._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd30_serdev_command._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @scd30_serdev_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__serdev_device_driver_register(ptr noundef nonnull @scd30_serdev_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @scd30_serdev_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef nonnull @scd30_serdev_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serdev_device_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scd30_serdev_probe(ptr noundef %serdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %serdev, i32 noundef 68, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %call.i, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %call.i, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_completion.__key) #7
  %ops1.i = getelementptr inbounds %struct.serdev_device, ptr %serdev, i32 0, i32 3
  %1 = ptrtoint ptr %ops1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @scd30_serdev_ops, ptr %ops1.i, align 8
  %call2 = tail call i32 @devm_serdev_device_open(ptr noundef %serdev, ptr noundef %serdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @serdev_device_set_baudrate(ptr noundef %serdev, i32 noundef 19200) #7
  tail call void @serdev_device_set_flow_control(ptr noundef %serdev, i1 noundef zeroext false) #7
  %call7 = tail call i32 @serdev_device_set_parity(ptr noundef %serdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call ptr @dev_fwnode(ptr noundef %serdev) #7
  %call12 = tail call i32 @fwnode_irq_get(ptr noundef %call11, i32 noundef 0) #7
  %call13 = tail call i32 @scd30_probe(ptr noundef %serdev, i32 noundef %call12, ptr noundef nonnull @.str, ptr noundef nonnull %call.i, ptr noundef nonnull @scd30_serdev_command) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end10 ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call7, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scd30_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scd30_resume(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_serdev_device_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_set_baudrate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_set_flow_control(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_set_parity(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scd30_probe(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scd30_serdev_command(ptr nocapture noundef readonly %state, i32 noundef %cmd, i16 noundef zeroext %arg, ptr noundef writeonly %response, i32 noundef %size) #2 align 64 {
entry:
  %txbuf = alloca [17 x i8], align 1
  %rxbuf = alloca [17 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %txbuf) #7
  %0 = call ptr @memcpy(ptr %txbuf, ptr @__const.scd30_serdev_command.txbuf, i32 17)
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %rxbuf) #7
  %1 = getelementptr inbounds [17 x i8], ptr %rxbuf, i32 0, i32 2
  %2 = getelementptr inbounds [17 x i8], ptr %rxbuf, i32 0, i32 3
  %arrayidx = getelementptr [10 x i16], ptr @scd30_serdev_cmd_lookup_tbl, i32 0, i32 %cmd
  %3 = call ptr @memset(ptr %rxbuf, i32 255, i32 17)
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %add.ptr = getelementptr inbounds i8, ptr %txbuf, i32 2
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %5, ptr %add.ptr, align 1
  %tobool.not = icmp eq ptr %response, null
  br i1 %tobool.not, label %if.else14, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx1 = getelementptr inbounds [17 x i8], ptr %txbuf, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 3, ptr %arrayidx1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 4
  %div = sdiv i32 %size, 2
  %conv = trunc i32 %div to i16
  %.sink = select i1 %cmp, i16 %conv, i16 1
  %8 = getelementptr inbounds i8, ptr %txbuf, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %.sink, ptr %8, align 1
  %call.i = call zeroext i16 @crc16(i16 noundef zeroext -1, ptr noundef nonnull %txbuf, i32 noundef 6) #7
  %add.ptr10 = getelementptr inbounds i8, ptr %txbuf, i32 6
  %10 = call i16 @llvm.bswap.i16(i16 %call.i) #7
  %11 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %10, ptr %add.ptr10, align 1
  %add13 = add i32 %size, 5
  br label %if.end30

if.else14:                                        ; preds = %entry
  %12 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.else14.if.end20_crit_edge [
    i32 1, label %if.else14.if.then19_crit_edge
    i32 9, label %if.else14.if.then19_crit_edge123
  ]

if.else14.if.then19_crit_edge123:                 ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

if.else14.if.then19_crit_edge:                    ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

if.else14.if.end20_crit_edge:                     ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then19:                                        ; preds = %if.else14.if.then19_crit_edge, %if.else14.if.then19_crit_edge123
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.else14.if.end20_crit_edge
  %arg.addr.0 = phi i16 [ 1, %if.then19 ], [ %arg, %if.else14.if.end20_crit_edge ]
  %arrayidx21 = getelementptr inbounds [17 x i8], ptr %txbuf, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 6, ptr %arrayidx21, align 1
  %add.ptr23 = getelementptr inbounds i8, ptr %txbuf, i32 4
  %14 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %arg.addr.0, ptr %add.ptr23, align 1
  %call.i119 = call zeroext i16 @crc16(i16 noundef zeroext -1, ptr noundef nonnull %txbuf, i32 noundef 6) #7
  %add.ptr28 = getelementptr inbounds i8, ptr %txbuf, i32 6
  %15 = call i16 @llvm.bswap.i16(i16 %call.i119) #7
  %16 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %15, ptr %add.ptr28, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.end20, %if.then
  %rxsize.0 = phi i32 [ %add13, %if.then ], [ 8, %if.end20 ]
  %dev.i = getelementptr inbounds %struct.scd30_state, ptr %state, i32 0, i32 1
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %priv1.i = getelementptr inbounds %struct.scd30_state, ptr %state, i32 0, i32 4
  %19 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv1.i, align 4
  %buf.i = getelementptr inbounds %struct.scd30_serdev_priv, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %rxbuf, ptr %buf.i, align 4
  %num_expected.i = getelementptr inbounds %struct.scd30_serdev_priv, ptr %20, i32 0, i32 2
  %22 = ptrtoint ptr %num_expected.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %rxsize.0, ptr %num_expected.i, align 4
  %num.i = getelementptr inbounds %struct.scd30_serdev_priv, ptr %20, i32 0, i32 3
  %23 = ptrtoint ptr %num.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %num.i, align 4
  %call3.i = call i32 @serdev_device_write(ptr noundef %18, ptr noundef nonnull %txbuf, i32 noundef 8, i32 noundef 20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %if.end30.cleanup_crit_edge, label %if.end.i

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call3.i)
  %cmp4.not.i = icmp eq i32 %call3.i, 8
  br i1 %cmp4.not.i, label %if.end6.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %call8.i = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %20, i32 noundef 20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end6.i.cleanup_crit_edge, label %if.end11.i

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %if.end11.i.cleanup_crit_edge, label %if.end36

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end36:                                         ; preds = %if.end11.i
  %arrayidx37 = getelementptr inbounds [17 x i8], ptr %txbuf, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx37, align 1
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %25, label %do.end78 [
    i8 6, label %sw.bb
    i8 3, label %sw.bb45
  ]

sw.bb:                                            ; preds = %if.end36
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %txbuf, ptr noundef nonnull dereferenceable(8) %rxbuf, i32 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool42.not = icmp eq i32 %bcmp, 0
  br i1 %tobool42.not, label %sw.bb.cleanup_crit_edge, label %do.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.2) #11
  br label %cleanup

sw.bb45:                                          ; preds = %if.end36
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %1, align 1
  %conv47 = zext i8 %30 to i32
  %sub48 = add i32 %rxsize.0, -5
  call void @__sanitizer_cov_trace_cmp4(i32 %sub48, i32 %conv47)
  %cmp49.not = icmp eq i32 %sub48, %conv47
  br i1 %cmp49.not, label %if.end56, label %do.end54

do.end54:                                         ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.8) #11
  br label %cleanup

if.end56:                                         ; preds = %sw.bb45
  %sub57 = add i32 %rxsize.0, -2
  %add.ptr59 = getelementptr i8, ptr %rxbuf, i32 %sub57
  %33 = ptrtoint ptr %add.ptr59 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %add.ptr59, align 1
  %35 = call i16 @llvm.bswap.i16(i16 %34) #7
  %call.i120 = call zeroext i16 @crc16(i16 noundef zeroext -1, ptr noundef nonnull %rxbuf, i32 noundef %sub57) #7
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %call.i120)
  %cmp65.not = icmp eq i16 %35, %call.i120
  br i1 %cmp65.not, label %if.end72, label %do.end70

do.end70:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.11) #11
  br label %cleanup

if.end72:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  %38 = call ptr @memcpy(ptr %response, ptr %2, i32 %conv47)
  br label %cleanup

do.end78:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.14) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end78, %if.end72, %do.end70, %do.end54, %do.end, %sw.bb.cleanup_crit_edge, %if.end11.i.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end30.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end78 ], [ -5, %do.end54 ], [ -5, %do.end70 ], [ -5, %do.end ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.end72 ], [ %call8.i, %if.end6.i.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ], [ %call3.i, %if.end30.cleanup_crit_edge ], [ -110, %if.end11.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %rxbuf) #7
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %txbuf) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scd30_serdev_receive_buf(ptr nocapture noundef readonly %serdev, ptr nocapture noundef readonly %buf, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %priv2 = getelementptr inbounds %struct.scd30_state, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv2, align 4
  %buf3 = getelementptr inbounds %struct.scd30_serdev_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %buf3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf3, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %num7 = getelementptr inbounds %struct.scd30_serdev_priv, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %num7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num7, align 4
  %add = add i32 %9, %size
  %num_expected = getelementptr inbounds %struct.scd30_serdev_priv, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %num_expected to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_expected, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %11)
  %cmp.not = icmp ult i32 %add, %11
  %sub = sub i32 %11, %9
  %num.0 = select i1 %cmp.not, i32 %size, i32 %sub
  %add.ptr = getelementptr i8, ptr %7, i32 %9
  %12 = call ptr @memcpy(ptr %add.ptr, ptr %buf, i32 %num.0)
  %13 = ptrtoint ptr %num7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num7, align 4
  %add15 = add i32 %14, %num.0
  store i32 %add15, ptr %num7, align 4
  %15 = ptrtoint ptr %num_expected to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_expected, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add15, i32 %16)
  %cmp18 = icmp eq i32 %add15, %16
  br i1 %cmp18, label %if.then19, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then19:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %buf3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %buf3, align 4
  tail call void @complete(ptr noundef %5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %num.0, %if.then19 ], [ %num.0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_write_wakeup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc16(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @__initcall__kmod_scd30_serial__288_259_scd30_serdev_driver_init6, !1, !"__initcall__kmod_scd30_serial__288_259_scd30_serdev_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/chemical/scd30_serial.c", i32 259, i32 1}
!2 = !{ptr @__exitcall_scd30_serdev_driver_exit, !1, !"__exitcall_scd30_serdev_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/chemical/scd30_serial.c", i32 261, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/chemical/scd30_serial.c", i32 262, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/chemical/scd30_serial.c", i32 263, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/chemical/scd30_serial.c", i32 253, i32 11}
!12 = !{ptr @scd30_serdev_driver, !13, !"scd30_serdev_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/chemical/scd30_serial.c", i32 251, i32 36}
!14 = !{ptr @scd30_serdev_of_match, !15, !"scd30_serdev_of_match", i1 false, i1 false}
!15 = !{!"../drivers/iio/chemical/scd30_serial.c", i32 245, i32 34}
!16 = !{ptr @scd30_pm_ops, !17, !"scd30_pm_ops", i1 false, i1 false}
!17 = !{!"../drivers/iio/chemical/scd30.h", i32 74, i32 23}
!18 = !{ptr @init_completion.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../include/linux/completion.h", i32 87, i32 2}
!20 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @scd30_serdev_ops, !22, !"scd30_serdev_ops", i1 false, i1 false}
!22 = !{!"../drivers/iio/chemical/scd30_serial.c", i32 211, i32 39}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/iio/chemical/scd30_serial.c", i32 149, i32 4}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @scd30_serdev_command._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @scd30_serdev_command._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/chemical/scd30_serial.c", i32 155, i32 4}
!33 = !{ptr @scd30_serdev_command._entry.7, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @scd30_serdev_command._entry_ptr.9, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/chemical/scd30_serial.c", i32 162, i32 4}
!37 = !{ptr @scd30_serdev_command._entry.10, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @scd30_serdev_command._entry_ptr.12, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/chemical/scd30_serial.c", i32 170, i32 3}
!41 = !{ptr @scd30_serdev_command._entry.13, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @scd30_serdev_command._entry_ptr.15, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @scd30_serdev_cmd_lookup_tbl, !44, !"scd30_serdev_cmd_lookup_tbl", i1 false, i1 false}
!44 = !{!"../drivers/iio/chemical/scd30_serial.c", i32 37, i32 12}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
