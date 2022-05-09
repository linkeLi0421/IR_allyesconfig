; ModuleID = '/llk/IR_all_yes/drivers/iio/chemical/sps30_serial.c_pt.bc'
source_filename = "../drivers/iio/chemical/sps30_serial.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.serdev_device_driver = type { %struct.device_driver, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.serdev_device_ops = type { ptr, ptr }
%struct.sps30_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.44 = type { i8, i8 }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.sps30_state = type { %struct.mutex, ptr, i32, ptr, ptr }
%struct.sps30_serial_priv = type { %struct.completion, [263 x i8], i32, i8, i8 }

@__initcall__kmod_sps30_serial__176_427_sps30_serial_driver_init6 = internal global ptr @sps30_serial_driver_init, section ".initcall6.init", align 4
@sps30_serial_driver = internal global { %struct.serdev_device_driver, [44 x i8] } { %struct.serdev_device_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sps30_serial_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sps30_serial_probe, ptr null }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sps30_serial_driver_exit = internal global ptr @sps30_serial_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author177 = internal constant [68 x i8] c"sps30_serial.author=Tomasz Duszynski <tomasz.duszynski@octakon.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description178 = internal constant [81 x i8] c"sps30_serial.description=Sensirion SPS30 particulate matter sensor serial driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file179 = internal constant [52 x i8] c"sps30_serial.file=drivers/iio/chemical/sps30_serial\00", section ".modinfo", align 1
@__UNIQUE_ID_license180 = internal constant [28 x i8] c"sps30_serial.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sps30_serial\00", [19 x i8] zeroinitializer }, align 32
@sps30_serial_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sensirion,sps30\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sps30_serial_device_ops = internal constant { %struct.serdev_device_ops, [24 x i8] } { %struct.serdev_device_ops { ptr @sps30_serial_receive_buf, ptr @serdev_device_write_wakeup }, [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sps30\00", [26 x i8] zeroinitializer }, align 32
@sps30_serial_ops = internal constant { %struct.sps30_ops, [32 x i8] } { %struct.sps30_ops { ptr @sps30_serial_start_meas, ptr @sps30_serial_stop_meas, ptr @sps30_serial_read_meas, ptr @sps30_serial_reset, ptr @sps30_serial_clean_fan, ptr @sps30_serial_read_cleaning_period, ptr @sps30_serial_write_cleaning_period, ptr @sps30_serial_show_info }, [32 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@sps30_serial_receive_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 249, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unrecognized escaped char (0x%02x)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sps30_serial_receive_buf\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/iio/chemical/sps30_serial.c\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sps30_serial_receive_buf._entry_ptr = internal global ptr @sps30_serial_receive_buf._entry, section ".printk_index", align 4
@sps30_serial_bytes = internal constant { [4 x %struct.anon.44], [24 x i8] } { [4 x %struct.anon.44] [%struct.anon.44 { i8 17, i8 49 }, %struct.anon.44 { i8 19, i8 51 }, %struct.anon.44 { i8 126, i8 94 }, %struct.anon.44 { i8 125, i8 93 }], [24 x i8] zeroinitializer }, align 32
@sps30_serial_frame_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.5, i32 164, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"frame has invalid number of bytes\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sps30_serial_frame_valid\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@sps30_serial_frame_valid._entry_ptr = internal global ptr @sps30_serial_frame_valid._entry, section ".printk_index", align 4
@sps30_serial_frame_valid._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.5, i32 170, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"frame has wrong ADR and CMD bytes\0A\00", [61 x i8] zeroinitializer }, align 32
@sps30_serial_frame_valid._entry_ptr.13 = internal global ptr @sps30_serial_frame_valid._entry.11, section ".printk_index", align 4
@sps30_serial_frame_valid._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.9, ptr @.str.5, i32 176, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"frame with non-zero state received (0x%02x)\0A\00", [51 x i8] zeroinitializer }, align 32
@sps30_serial_frame_valid._entry_ptr.16 = internal global ptr @sps30_serial_frame_valid._entry.14, section ".printk_index", align 4
@sps30_serial_frame_valid._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.9, ptr @.str.5, i32 183, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"frame integrity check failed\0A\00", [34 x i8] zeroinitializer }, align 32
@sps30_serial_frame_valid._entry_ptr.19 = internal global ptr @sps30_serial_frame_valid._entry.17, section ".printk_index", align 4
@sps30_serial_show_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.5, i32 363, ptr @.str.22, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"serial number: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sps30_serial_show_info\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sps30_serial_show_info._entry_ptr = internal global ptr @sps30_serial_show_info._entry, section ".printk_index", align 4
@sps30_serial_show_info._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.21, ptr @.str.5, i32 371, ptr @.str.22, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fw version: %u.%u\0A\00", [45 x i8] zeroinitializer }, align 32
@sps30_serial_show_info._entry_ptr.25 = internal global ptr @sps30_serial_show_info._entry.23, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 49, i64 51, i64 93, i64 94]
@__sancov_gen_cov_switch_values.26 = internal global [6 x i64] [i64 4, i64 8, i64 17, i64 19, i64 125, i64 126]
@__sancov_gen_cov_switch_values.27 = internal global [6 x i64] [i64 4, i64 8, i64 17, i64 19, i64 125, i64 126]
@__sancov_gen_cov_switch_values.28 = internal global [6 x i64] [i64 4, i64 8, i64 17, i64 19, i64 125, i64 126]
@__sancov_gen_cov_switch_values.29 = internal global [6 x i64] [i64 4, i64 8, i64 17, i64 19, i64 125, i64 126]
@___asan_gen_.30 = private unnamed_addr constant [20 x i8] c"sps30_serial_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 420, i32 36 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 422, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [22 x i8] c"sps30_serial_of_match\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 414, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [24 x i8] c"sps30_serial_device_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 270, i32 39 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 411, i32 26 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"sps30_serial_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 376, i32 31 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 87, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 249, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant [19 x i8] c"sps30_serial_bytes\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 79, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 164, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 170, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 175, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 183, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 363, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private constant [39 x i8] c"../drivers/iio/chemical/sps30_serial.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 371, i32 2 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_author177, ptr @__UNIQUE_ID_description178, ptr @__UNIQUE_ID_file179, ptr @__UNIQUE_ID_license180, ptr @__exitcall_sps30_serial_driver_exit, ptr @__initcall__kmod_sps30_serial__176_427_sps30_serial_driver_init6, ptr @sps30_serial_driver_exit, ptr @sps30_serial_frame_valid._entry, ptr @sps30_serial_frame_valid._entry.11, ptr @sps30_serial_frame_valid._entry.14, ptr @sps30_serial_frame_valid._entry.17, ptr @sps30_serial_frame_valid._entry_ptr, ptr @sps30_serial_frame_valid._entry_ptr.13, ptr @sps30_serial_frame_valid._entry_ptr.16, ptr @sps30_serial_frame_valid._entry_ptr.19, ptr @sps30_serial_receive_buf._entry, ptr @sps30_serial_receive_buf._entry_ptr, ptr @sps30_serial_show_info._entry, ptr @sps30_serial_show_info._entry.23, ptr @sps30_serial_show_info._entry_ptr, ptr @sps30_serial_show_info._entry_ptr.25, ptr @sps30_serial_driver, ptr @.str, ptr @sps30_serial_of_match, ptr @sps30_serial_device_ops, ptr @.str.1, ptr @sps30_serial_ops, ptr @init_completion.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @sps30_serial_bytes, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sps30_serial_driver to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sps30_serial_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sps30_serial_device_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sps30_serial_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sps30_serial_receive_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sps30_serial_bytes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sps30_serial_frame_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sps30_serial_frame_valid._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sps30_serial_frame_valid._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sps30_serial_frame_valid._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sps30_serial_show_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sps30_serial_show_info._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sps30_serial_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__serdev_device_driver_register(ptr noundef nonnull @sps30_serial_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sps30_serial_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef nonnull @sps30_serial_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serdev_device_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sps30_serial_probe(ptr noundef %serdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %serdev, i32 noundef 328, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %call.i, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %call.i, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @init_completion.__key) #6
  %ops1.i = getelementptr inbounds %struct.serdev_device, ptr %serdev, i32 0, i32 3
  %1 = ptrtoint ptr %ops1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @sps30_serial_device_ops, ptr %ops1.i, align 8
  %call2 = tail call i32 @devm_serdev_device_open(ptr noundef %serdev, ptr noundef %serdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @serdev_device_set_baudrate(ptr noundef %serdev, i32 noundef 115200) #6
  tail call void @serdev_device_set_flow_control(ptr noundef %serdev, i1 noundef zeroext false) #6
  %call7 = tail call i32 @serdev_device_set_parity(ptr noundef %serdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call i32 @sps30_probe(ptr noundef %serdev, ptr noundef nonnull @.str.1, ptr noundef nonnull %call.i, ptr noundef nonnull @sps30_serial_ops) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end10 ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call7, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

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
declare dso_local i32 @sps30_probe(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sps30_serial_receive_buf(ptr nocapture noundef readonly %serdev, ptr nocapture noundef readonly %buf, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %priv2 = getelementptr inbounds %struct.sps30_state, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv2, align 4
  %done = getelementptr inbounds %struct.sps30_serial_priv, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %done, align 1, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %num = getelementptr inbounds %struct.sps30_serial_priv, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp ne i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool7.not = icmp eq i32 %size, 0
  %or.cond = or i1 %tobool7.not, %tobool6.not
  br i1 %or.cond, label %if.end5.if.end11_crit_edge, label %land.lhs.true8

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

land.lhs.true8:                                   ; preds = %if.end5
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 126, i8 %11)
  %cmp.not = icmp eq i8 %11, 126
  br i1 %cmp.not, label %land.lhs.true8.if.end11_crit_edge, label %land.lhs.true8.cleanup_crit_edge

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true8.if.end11_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true8.if.end11_crit_edge, %if.end5.if.end11_crit_edge
  %add = add i32 %9, %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 262, i32 %add)
  %cmp13 = icmp ugt i32 %add, 262
  %sub = sub i32 263, %9
  %spec.select = select i1 %cmp13, i32 %sub, i32 %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp1897.not = icmp eq i32 %spec.select, 0
  br i1 %cmp1897.not, label %if.end11.cleanup_crit_edge, label %for.body.lr.ph

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end11
  %escaped26 = getelementptr inbounds %struct.sps30_serial_priv, ptr %5, i32 0, i32 3
  %dev35 = getelementptr inbounds %struct.sps30_state, ptr %3, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.098 = phi i32 [ 0, %for.body.lr.ph ], [ %inc57, %for.inc.for.body_crit_edge ]
  %arrayidx20 = getelementptr i8, ptr %buf, i32 %i.098
  %12 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 125, i8 %13)
  %cmp22 = icmp eq i8 %13, 125
  br i1 %cmp22, label %for.body.for.inc.sink.split_crit_edge, label %if.end25

for.body.for.inc.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split

if.end25:                                         ; preds = %for.body
  %14 = ptrtoint ptr %escaped26 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %escaped26, align 4, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool27.not = icmp eq i8 %15, 0
  br i1 %tobool27.not, label %if.end25.if.end37_crit_edge, label %for.body.preheader.i

if.end25.if.end37_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

for.body.preheader.i:                             ; preds = %if.end25
  %16 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i8 %13, label %for.body.preheader.i.do.end_crit_edge [
    i8 49, label %for.body.preheader.i.sps30_serial_get_byte.exit_crit_edge
    i8 51, label %if.end6.fold.split.i
    i8 94, label %if.end6.fold.split15.i
    i8 93, label %if.end6.fold.split16.i
  ]

for.body.preheader.i.sps30_serial_get_byte.exit_crit_edge: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sps30_serial_get_byte.exit

for.body.preheader.i.do.end_crit_edge:            ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end6.fold.split.i:                             ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sps30_serial_get_byte.exit

if.end6.fold.split15.i:                           ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sps30_serial_get_byte.exit

if.end6.fold.split16.i:                           ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sps30_serial_get_byte.exit

sps30_serial_get_byte.exit:                       ; preds = %if.end6.fold.split16.i, %if.end6.fold.split15.i, %if.end6.fold.split.i, %for.body.preheader.i.sps30_serial_get_byte.exit_crit_edge
  %i.013.lcssa.i = phi i32 [ 0, %for.body.preheader.i.sps30_serial_get_byte.exit_crit_edge ], [ 1, %if.end6.fold.split.i ], [ 2, %if.end6.fold.split15.i ], [ 3, %if.end6.fold.split16.i ]
  %arrayidx.i = getelementptr [4 x %struct.anon.44], ptr @sps30_serial_bytes, i32 0, i32 %i.013.lcssa.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool33.not = icmp eq i8 %18, 0
  br i1 %tobool33.not, label %sps30_serial_get_byte.exit.do.end_crit_edge, label %sps30_serial_get_byte.exit.if.end37_crit_edge

sps30_serial_get_byte.exit.if.end37_crit_edge:    ; preds = %sps30_serial_get_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

sps30_serial_get_byte.exit.do.end_crit_edge:      ; preds = %sps30_serial_get_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %sps30_serial_get_byte.exit.do.end_crit_edge, %for.body.preheader.i.do.end_crit_edge
  %19 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev35, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.3, i32 noundef 0) #9
  br label %if.end37

if.end37:                                         ; preds = %do.end, %sps30_serial_get_byte.exit.if.end37_crit_edge, %if.end25.if.end37_crit_edge
  %retval.0.i95 = phi i8 [ 0, %do.end ], [ %18, %sps30_serial_get_byte.exit.if.end37_crit_edge ], [ %13, %if.end25.if.end37_crit_edge ]
  %21 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %num, align 4
  %arrayidx40 = getelementptr %struct.sps30_serial_priv, ptr %5, i32 0, i32 1, i32 %22
  %23 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %retval.0.i95, ptr %arrayidx40, align 1
  %24 = ptrtoint ptr %escaped26 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %escaped26, align 4, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool42.not = icmp eq i8 %25, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 126, i8 %retval.0.i95)
  %cmp45 = icmp eq i8 %retval.0.i95, 126
  %or.cond91 = select i1 %tobool42.not, i1 %cmp45, i1 false
  br i1 %or.cond91, label %if.then47, label %if.end37.for.inc.sink.split_crit_edge

if.end37.for.inc.sink.split_crit_edge:            ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split

if.then47:                                        ; preds = %if.end37
  %26 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %27)
  %cmp49 = icmp ult i32 %27, 7
  br i1 %cmp49, label %if.then47.for.inc_crit_edge, label %if.end52

if.then47.for.inc_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end52:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %done to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %done, align 1
  tail call void @complete(ptr noundef %5) #6
  %inc54 = add nuw i32 %i.098, 1
  br label %cleanup

for.inc.sink.split:                               ; preds = %if.end37.for.inc.sink.split_crit_edge, %for.body.for.inc.sink.split_crit_edge
  %.sink = phi i8 [ 1, %for.body.for.inc.sink.split_crit_edge ], [ 0, %if.end37.for.inc.sink.split_crit_edge ]
  %29 = ptrtoint ptr %escaped26 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %.sink, ptr %escaped26, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.then47.for.inc_crit_edge
  %inc57 = add nuw i32 %i.098, 1
  %exitcond.not = icmp eq i32 %inc57, %spec.select
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end52, %if.end11.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %size, %if.end.cleanup_crit_edge ], [ 1, %land.lhs.true8.cleanup_crit_edge ], [ %inc54, %if.end52 ], [ 0, %if.end11.cleanup_crit_edge ], [ %spec.select, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_write_wakeup(ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sps30_serial_start_meas(ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  %buf = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #6
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 259, ptr %buf, align 2
  %call = call fastcc i32 @sps30_serial_command(ptr noundef %state, i8 noundef zeroext 0, ptr noundef nonnull %buf, i32 noundef 2, ptr noundef null, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sps30_serial_stop_meas(ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sps30_serial_command(ptr noundef %state, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sps30_serial_read_meas(ptr nocapture noundef readonly %state, ptr noundef %meas, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @msleep_interruptible(i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = shl i32 %num, 2
  %call1 = tail call fastcc i32 @sps30_serial_command(ptr noundef %state, i8 noundef zeroext 3, ptr noundef null, i32 noundef 0, ptr noundef %meas, i32 noundef %mul)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call1)
  %cmp4 = icmp eq i32 %call1, 7
  br i1 %cmp4, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %mul)
  %cmp8.not = icmp eq i32 %call1, %mul
  %. = select i1 %cmp8.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -4, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -110, %if.end3.cleanup_crit_edge ], [ %., %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sps30_serial_reset(ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sps30_serial_command(ptr noundef %state, i8 noundef zeroext -45, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0)
  tail call void @msleep(i32 noundef 500) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sps30_serial_clean_fan(ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sps30_serial_command(ptr noundef %state, i8 noundef zeroext 86, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sps30_serial_read_cleaning_period(ptr nocapture noundef readonly %state, ptr noundef %period) #2 align 64 {
entry:
  %buf = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #6
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %buf, align 1
  %call = call fastcc i32 @sps30_serial_command(ptr noundef %state, i8 noundef zeroext -128, ptr noundef nonnull %buf, i32 noundef 1, ptr noundef %period, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call)
  %cmp1.not = icmp eq i32 %call, 4
  %. = select i1 %cmp1.not, i32 0, i32 -5
  %retval.0 = select i1 %cmp, i32 %call, i32 %.
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sps30_serial_write_cleaning_period(ptr nocapture noundef readonly %state, i32 noundef %period) #2 align 64 {
entry:
  %buf = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf) #6
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %buf, align 1
  %add.ptr = getelementptr inbounds i8, ptr %buf, i32 1
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 %period, ptr %add.ptr, align 1
  %call = call fastcc i32 @sps30_serial_command(ptr noundef %state, i8 noundef zeroext -128, ptr noundef nonnull %buf, i32 noundef 5, ptr noundef null, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sps30_serial_show_info(ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  %buf = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %buf) #6
  %0 = getelementptr inbounds i8, ptr %buf, i32 1
  %1 = call ptr @memset(ptr %0, i32 0, i32 32)
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 3, ptr %buf, align 1
  %dev1 = getelementptr inbounds %struct.sps30_state, ptr %state, i32 0, i32 1
  %3 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1, align 4
  %call = call fastcc i32 @sps30_serial_command(ptr noundef %state, i8 noundef zeroext -48, ptr noundef nonnull %buf, i32 noundef 1, ptr noundef nonnull %buf, i32 noundef 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call)
  %cmp3.not = icmp eq i32 %call, 32
  br i1 %cmp3.not, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.20, ptr noundef nonnull %buf) #9
  %call8 = call fastcc i32 @sps30_serial_command(ptr noundef %state, i8 noundef zeroext -47, ptr noundef null, i32 noundef 0, ptr noundef nonnull %buf, i32 noundef 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.end.cleanup_crit_edge, label %if.end11

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call8)
  %cmp12 = icmp ult i32 %call8, 2
  br i1 %cmp12, label %if.end11.cleanup_crit_edge, label %do.end17

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf, align 1
  %conv = zext i8 %6 to i32
  %arrayidx18 = getelementptr inbounds [33 x i8], ptr %buf, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %8 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.24, i32 noundef %conv, i32 noundef %conv19) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.end11.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end17 ], [ %call, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ %call8, %do.end.cleanup_crit_edge ], [ -5, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sps30_serial_command(ptr nocapture noundef readonly %state, i8 noundef zeroext %cmd, ptr nocapture noundef readonly %arg, i32 noundef %arg_size, ptr noundef writeonly %rsp, i32 noundef %rsp_size) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [263 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.sps30_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 263, ptr nonnull %buf) #6
  %2 = getelementptr inbounds i8, ptr %buf, i32 2
  %3 = call ptr @memset(ptr %2, i32 255, i32 261)
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 126, ptr %buf, align 1
  %arrayidx2.i = getelementptr inbounds i8, ptr %buf, i32 1
  %5 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx2.i, align 1
  %add.ptr.i = getelementptr inbounds i8, ptr %buf, i32 2
  %6 = zext i8 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %cmd, label %for.inc.3.i.i [
    i8 17, label %entry.if.end.i.i_crit_edge
    i8 19, label %if.end.fold.split.i.i
    i8 126, label %if.end.fold.split18.i.i
    i8 125, label %if.end.fold.split19.i.i
  ]

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end.fold.split.i.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end.fold.split18.i.i:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end.fold.split19.i.i:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end.fold.split19.i.i, %if.end.fold.split18.i.i, %if.end.fold.split.i.i, %entry.if.end.i.i_crit_edge
  %i.016.lcssa.i.i = phi i32 [ 0, %entry.if.end.i.i_crit_edge ], [ 1, %if.end.fold.split.i.i ], [ 2, %if.end.fold.split18.i.i ], [ 3, %if.end.fold.split19.i.i ]
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 125, ptr %add.ptr.i, align 1
  %byte2.i.i = getelementptr [4 x %struct.anon.44], ptr @sps30_serial_bytes, i32 0, i32 %i.016.lcssa.i.i, i32 1
  %8 = ptrtoint ptr %byte2.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %byte2.i.i, align 1
  %arrayidx7.i.i = getelementptr inbounds i8, ptr %buf, i32 3
  %10 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %arrayidx7.i.i, align 1
  br label %sps30_serial_put_byte.exit.i

for.inc.3.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %cmd, ptr %add.ptr.i, align 1
  br label %sps30_serial_put_byte.exit.i

sps30_serial_put_byte.exit.i:                     ; preds = %for.inc.3.i.i, %if.end.i.i
  %retval.0.i.i = phi i32 [ 4, %if.end.i.i ], [ 3, %for.inc.3.i.i ]
  %add.ptr3.i = getelementptr i8, ptr %buf, i32 %retval.0.i.i
  %conv.i = trunc i32 %arg_size to i8
  %12 = zext i8 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %conv.i, label %for.inc.3.i48.i [
    i8 17, label %sps30_serial_put_byte.exit.i.if.end.i47.i_crit_edge
    i8 19, label %if.end.fold.split.i41.i
    i8 126, label %if.end.fold.split18.i42.i
    i8 125, label %if.end.fold.split19.i43.i
  ]

sps30_serial_put_byte.exit.i.if.end.i47.i_crit_edge: ; preds = %sps30_serial_put_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i47.i

if.end.fold.split.i41.i:                          ; preds = %sps30_serial_put_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i47.i

if.end.fold.split18.i42.i:                        ; preds = %sps30_serial_put_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i47.i

if.end.fold.split19.i43.i:                        ; preds = %sps30_serial_put_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i47.i

if.end.i47.i:                                     ; preds = %if.end.fold.split19.i43.i, %if.end.fold.split18.i42.i, %if.end.fold.split.i41.i, %sps30_serial_put_byte.exit.i.if.end.i47.i_crit_edge
  %i.016.lcssa.i44.i = phi i32 [ 0, %sps30_serial_put_byte.exit.i.if.end.i47.i_crit_edge ], [ 1, %if.end.fold.split.i41.i ], [ 2, %if.end.fold.split18.i42.i ], [ 3, %if.end.fold.split19.i43.i ]
  %13 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 125, ptr %add.ptr3.i, align 1
  %byte2.i45.i = getelementptr [4 x %struct.anon.44], ptr @sps30_serial_bytes, i32 0, i32 %i.016.lcssa.i44.i, i32 1
  %14 = ptrtoint ptr %byte2.i45.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %byte2.i45.i, align 1
  %arrayidx7.i46.i = getelementptr i8, ptr %add.ptr3.i, i32 1
  %16 = ptrtoint ptr %arrayidx7.i46.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx7.i46.i, align 1
  br label %sps30_serial_put_byte.exit50.i

for.inc.3.i48.i:                                  ; preds = %sps30_serial_put_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.i, ptr %add.ptr3.i, align 1
  br label %sps30_serial_put_byte.exit50.i

sps30_serial_put_byte.exit50.i:                   ; preds = %for.inc.3.i48.i, %if.end.i47.i
  %retval.0.i49.i = phi i32 [ 2, %if.end.i47.i ], [ 1, %for.inc.3.i48.i ]
  %add5.i = add nuw nsw i32 %retval.0.i49.i, %retval.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg_size)
  %cmp75.not.i = icmp eq i32 %arg_size, 0
  br i1 %cmp75.not.i, label %sps30_serial_put_byte.exit50.i.for.end.i_crit_edge, label %sps30_serial_put_byte.exit50.i.for.body.i_crit_edge

sps30_serial_put_byte.exit50.i.for.body.i_crit_edge: ; preds = %sps30_serial_put_byte.exit50.i
  br label %for.body.i

sps30_serial_put_byte.exit50.i.for.end.i_crit_edge: ; preds = %sps30_serial_put_byte.exit50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %sps30_serial_put_byte.exit60.i.for.body.i_crit_edge, %sps30_serial_put_byte.exit50.i.for.body.i_crit_edge
  %i.077.i = phi i32 [ %inc11.i, %sps30_serial_put_byte.exit60.i.for.body.i_crit_edge ], [ 0, %sps30_serial_put_byte.exit50.i.for.body.i_crit_edge ]
  %num.076.i = phi i32 [ %add10.i, %sps30_serial_put_byte.exit60.i.for.body.i_crit_edge ], [ %add5.i, %sps30_serial_put_byte.exit50.i.for.body.i_crit_edge ]
  %add.ptr7.i = getelementptr i8, ptr %buf, i32 %num.076.i
  %arrayidx8.i = getelementptr i8, ptr %arg, i32 %i.077.i
  %18 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx8.i, align 1
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %19, label %for.inc.3.i58.i [
    i8 17, label %for.body.i.if.end.i57.i_crit_edge
    i8 19, label %if.end.fold.split.i51.i
    i8 126, label %if.end.fold.split18.i52.i
    i8 125, label %if.end.fold.split19.i53.i
  ]

for.body.i.if.end.i57.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i57.i

if.end.fold.split.i51.i:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i57.i

if.end.fold.split18.i52.i:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i57.i

if.end.fold.split19.i53.i:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i57.i

if.end.i57.i:                                     ; preds = %if.end.fold.split19.i53.i, %if.end.fold.split18.i52.i, %if.end.fold.split.i51.i, %for.body.i.if.end.i57.i_crit_edge
  %i.016.lcssa.i54.i = phi i32 [ 0, %for.body.i.if.end.i57.i_crit_edge ], [ 1, %if.end.fold.split.i51.i ], [ 2, %if.end.fold.split18.i52.i ], [ 3, %if.end.fold.split19.i53.i ]
  %21 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 125, ptr %add.ptr7.i, align 1
  %byte2.i55.i = getelementptr [4 x %struct.anon.44], ptr @sps30_serial_bytes, i32 0, i32 %i.016.lcssa.i54.i, i32 1
  %22 = ptrtoint ptr %byte2.i55.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %byte2.i55.i, align 1
  %arrayidx7.i56.i = getelementptr i8, ptr %add.ptr7.i, i32 1
  %24 = ptrtoint ptr %arrayidx7.i56.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx7.i56.i, align 1
  br label %sps30_serial_put_byte.exit60.i

for.inc.3.i58.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %19, ptr %add.ptr7.i, align 1
  br label %sps30_serial_put_byte.exit60.i

sps30_serial_put_byte.exit60.i:                   ; preds = %for.inc.3.i58.i, %if.end.i57.i
  %retval.0.i59.i = phi i32 [ 2, %if.end.i57.i ], [ 1, %for.inc.3.i58.i ]
  %add10.i = add i32 %retval.0.i59.i, %num.076.i
  %inc11.i = add nuw i32 %i.077.i, 1
  %exitcond.not.i = icmp eq i32 %inc11.i, %arg_size
  br i1 %exitcond.not.i, label %sps30_serial_put_byte.exit60.i.for.end.i_crit_edge, label %sps30_serial_put_byte.exit60.i.for.body.i_crit_edge

sps30_serial_put_byte.exit60.i.for.body.i_crit_edge: ; preds = %sps30_serial_put_byte.exit60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

sps30_serial_put_byte.exit60.i.for.end.i_crit_edge: ; preds = %sps30_serial_put_byte.exit60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %sps30_serial_put_byte.exit60.i.for.end.i_crit_edge, %sps30_serial_put_byte.exit50.i.for.end.i_crit_edge
  %num.0.lcssa.i = phi i32 [ %add5.i, %sps30_serial_put_byte.exit50.i.for.end.i_crit_edge ], [ %add10.i, %sps30_serial_put_byte.exit60.i.for.end.i_crit_edge ]
  %sub.i = add i32 %num.0.lcssa.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp5.not.i.i = icmp eq i32 %sub.i, 0
  br i1 %cmp5.not.i.i, label %sps30_serial_calc_chksum.exit.thread.i, label %for.end.i.for.body.i.i_crit_edge

for.end.i.for.body.i.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body.i.i

sps30_serial_calc_chksum.exit.thread.i:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr1472.i = getelementptr i8, ptr %buf, i32 %num.0.lcssa.i
  br label %for.inc.3.i68.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.end.i.for.body.i.i_crit_edge
  %i.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.end.i.for.body.i.i_crit_edge ]
  %chksum.06.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.end.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %arrayidx2.i, i32 %i.07.i.i
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %27 to i32
  %add.i.i = add i32 %chksum.06.i.i, %conv.i.i
  %inc.i.i = add nuw i32 %i.07.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %sub.i
  br i1 %exitcond.not.i.i, label %sps30_serial_calc_chksum.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

sps30_serial_calc_chksum.exit.i:                  ; preds = %for.body.i.i
  %phi.cast.i.i = trunc i32 %add.i.i to i8
  %phi.bo.i.i = xor i8 %phi.cast.i.i, -1
  %add.ptr14.i = getelementptr i8, ptr %buf, i32 %num.0.lcssa.i
  %28 = zext i8 %phi.bo.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %phi.bo.i.i, label %sps30_serial_calc_chksum.exit.i.for.inc.3.i68.i_crit_edge [
    i8 17, label %sps30_serial_calc_chksum.exit.i.if.end.i67.i_crit_edge
    i8 19, label %if.end.fold.split.i61.i
    i8 126, label %if.end.fold.split18.i62.i
    i8 125, label %if.end.fold.split19.i63.i
  ]

sps30_serial_calc_chksum.exit.i.if.end.i67.i_crit_edge: ; preds = %sps30_serial_calc_chksum.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i67.i

sps30_serial_calc_chksum.exit.i.for.inc.3.i68.i_crit_edge: ; preds = %sps30_serial_calc_chksum.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3.i68.i

if.end.fold.split.i61.i:                          ; preds = %sps30_serial_calc_chksum.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i67.i

if.end.fold.split18.i62.i:                        ; preds = %sps30_serial_calc_chksum.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i67.i

if.end.fold.split19.i63.i:                        ; preds = %sps30_serial_calc_chksum.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i67.i

if.end.i67.i:                                     ; preds = %if.end.fold.split19.i63.i, %if.end.fold.split18.i62.i, %if.end.fold.split.i61.i, %sps30_serial_calc_chksum.exit.i.if.end.i67.i_crit_edge
  %i.016.lcssa.i64.i = phi i32 [ 0, %sps30_serial_calc_chksum.exit.i.if.end.i67.i_crit_edge ], [ 1, %if.end.fold.split.i61.i ], [ 2, %if.end.fold.split18.i62.i ], [ 3, %if.end.fold.split19.i63.i ]
  %29 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 125, ptr %add.ptr14.i, align 1
  %byte2.i65.i = getelementptr [4 x %struct.anon.44], ptr @sps30_serial_bytes, i32 0, i32 %i.016.lcssa.i64.i, i32 1
  %30 = ptrtoint ptr %byte2.i65.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %byte2.i65.i, align 1
  %arrayidx7.i66.i = getelementptr i8, ptr %add.ptr14.i, i32 1
  %32 = ptrtoint ptr %arrayidx7.i66.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx7.i66.i, align 1
  br label %sps30_serial_prep_frame.exit

for.inc.3.i68.i:                                  ; preds = %sps30_serial_calc_chksum.exit.i.for.inc.3.i68.i_crit_edge, %sps30_serial_calc_chksum.exit.thread.i
  %add.ptr1474.i = phi ptr [ %add.ptr1472.i, %sps30_serial_calc_chksum.exit.thread.i ], [ %add.ptr14.i, %sps30_serial_calc_chksum.exit.i.for.inc.3.i68.i_crit_edge ]
  %chksum.0.lcssa.i73.i = phi i8 [ -1, %sps30_serial_calc_chksum.exit.thread.i ], [ %phi.bo.i.i, %sps30_serial_calc_chksum.exit.i.for.inc.3.i68.i_crit_edge ]
  %33 = ptrtoint ptr %add.ptr1474.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %chksum.0.lcssa.i73.i, ptr %add.ptr1474.i, align 1
  br label %sps30_serial_prep_frame.exit

sps30_serial_prep_frame.exit:                     ; preds = %for.inc.3.i68.i, %if.end.i67.i
  %retval.0.i69.i = phi i32 [ 2, %if.end.i67.i ], [ 1, %for.inc.3.i68.i ]
  %add16.i = add i32 %retval.0.i69.i, %num.0.lcssa.i
  %inc17.i = add i32 %add16.i, 1
  %arrayidx18.i = getelementptr i8, ptr %buf, i32 %add16.i
  %34 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 126, ptr %arrayidx18.i, align 1
  %dev.i = getelementptr inbounds %struct.sps30_state, ptr %state, i32 0, i32 1
  %35 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i, align 4
  %num.i = getelementptr inbounds %struct.sps30_serial_priv, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %num.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %num.i, align 4
  %escaped.i = getelementptr inbounds %struct.sps30_serial_priv, ptr %1, i32 0, i32 3
  %38 = ptrtoint ptr %escaped.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %escaped.i, align 4
  %done.i = getelementptr inbounds %struct.sps30_serial_priv, ptr %1, i32 0, i32 4
  %39 = ptrtoint ptr %done.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %done.i, align 1
  %call3.i = call i32 @serdev_device_write(ptr noundef %36, ptr noundef nonnull %buf, i32 noundef %inc17.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %sps30_serial_prep_frame.exit.cleanup_crit_edge, label %if.end.i

sps30_serial_prep_frame.exit.cleanup_crit_edge:   ; preds = %sps30_serial_prep_frame.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %sps30_serial_prep_frame.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %inc17.i)
  %cmp4.not.i = icmp eq i32 %call3.i, %inc17.i
  br i1 %cmp4.not.i, label %if.end6.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %call8.i = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %1, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end6.i.cleanup_crit_edge, label %if.end11.i

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %if.end11.i.cleanup_crit_edge, label %if.end

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.end11.i
  %40 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv1, align 4
  %num.i28 = getelementptr inbounds %struct.sps30_serial_priv, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %num.i28 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num.i28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %43)
  %cmp.i29 = icmp ult i32 %43, 7
  br i1 %cmp.i29, label %if.end.do.end.i_crit_edge, label %lor.lhs.false.i

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end
  %arrayidx.i = getelementptr %struct.sps30_serial_priv, ptr %41, i32 0, i32 1, i32 4
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.i, align 4
  %conv.i30 = zext i8 %45 to i32
  %add.i = add nuw nsw i32 %conv.i30, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %add.i)
  %cmp4.not.i31 = icmp eq i32 %43, %add.i
  br i1 %cmp4.not.i31, label %if.end.i33, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %46 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end.i33:                                       ; preds = %lor.lhs.false.i
  %arrayidx7.i = getelementptr %struct.sps30_serial_priv, ptr %41, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx7.i, align 1
  %50 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %51)
  %cmp11.not.i = icmp eq i8 %49, %51
  br i1 %cmp11.not.i, label %lor.lhs.false13.i, label %if.end.i33.do.end24.i_crit_edge

if.end.i33.do.end24.i_crit_edge:                  ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24.i

lor.lhs.false13.i:                                ; preds = %if.end.i33
  %arrayidx15.i = getelementptr %struct.sps30_serial_priv, ptr %41, i32 0, i32 1, i32 2
  %52 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx15.i, align 2
  %54 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %55)
  %cmp19.not.i = icmp eq i8 %53, %55
  br i1 %cmp19.not.i, label %if.end26.i, label %lor.lhs.false13.i.do.end24.i_crit_edge

lor.lhs.false13.i.do.end24.i_crit_edge:           ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24.i

do.end24.i:                                       ; preds = %lor.lhs.false13.i.do.end24.i_crit_edge, %if.end.i33.do.end24.i_crit_edge
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.12) #9
  br label %cleanup

if.end26.i:                                       ; preds = %lor.lhs.false13.i
  %arrayidx28.i = getelementptr %struct.sps30_serial_priv, ptr %41, i32 0, i32 1, i32 3
  %58 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx28.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i34 = icmp eq i8 %59, 0
  br i1 %tobool.not.i34, label %for.body.i.preheader.i, label %do.end32.i

for.body.i.preheader.i:                           ; preds = %if.end26.i
  %60 = add i32 %43, -4
  br label %for.body.i.i42

do.end32.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i, align 4
  %conv36.i = zext i8 %59 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.15, i32 noundef %conv36.i) #9
  br label %cleanup

for.body.i.i42:                                   ; preds = %for.body.i.i42.for.body.i.i42_crit_edge, %for.body.i.preheader.i
  %i.07.i.i35 = phi i32 [ %inc.i.i40, %for.body.i.i42.for.body.i.i42_crit_edge ], [ 0, %for.body.i.preheader.i ]
  %chksum.06.i.i36 = phi i32 [ %add.i.i39, %for.body.i.i42.for.body.i.i42_crit_edge ], [ 0, %for.body.i.preheader.i ]
  %arrayidx.i.i37 = getelementptr i8, ptr %arrayidx7.i, i32 %i.07.i.i35
  %63 = ptrtoint ptr %arrayidx.i.i37 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx.i.i37, align 1
  %conv.i.i38 = zext i8 %64 to i32
  %add.i.i39 = add i32 %chksum.06.i.i36, %conv.i.i38
  %inc.i.i40 = add nuw i32 %i.07.i.i35, 1
  %exitcond.not.i.i41 = icmp eq i32 %i.07.i.i35, %60
  br i1 %exitcond.not.i.i41, label %sps30_serial_calc_chksum.exit.i45, label %for.body.i.i42.for.body.i.i42_crit_edge

for.body.i.i42.for.body.i.i42_crit_edge:          ; preds = %for.body.i.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i42

sps30_serial_calc_chksum.exit.i45:                ; preds = %for.body.i.i42
  %phi.cast.i.i43 = trunc i32 %add.i.i39 to i8
  %phi.bo.i.i44 = xor i8 %phi.cast.i.i43, -1
  %sub42.i = add i32 %43, -2
  %arrayidx43.i = getelementptr %struct.sps30_serial_priv, ptr %41, i32 0, i32 1, i32 %sub42.i
  %65 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx43.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %66, i8 %phi.bo.i.i44)
  %cmp46.not.i = icmp eq i8 %66, %phi.bo.i.i44
  br i1 %cmp46.not.i, label %if.end7, label %do.end51.i

do.end51.i:                                       ; preds = %sps30_serial_calc_chksum.exit.i45
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.18) #9
  br label %cleanup

if.end7:                                          ; preds = %sps30_serial_calc_chksum.exit.i45
  %tobool8.not = icmp eq ptr %rsp, null
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.then9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.sps30_serial_priv, ptr %1, i32 0, i32 1, i32 4
  %69 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx, align 4
  %conv = zext i8 %70 to i32
  %71 = call i32 @llvm.umin.i32(i32 %conv, i32 %rsp_size)
  %arrayidx13 = getelementptr %struct.sps30_serial_priv, ptr %1, i32 0, i32 1, i32 5
  %72 = call ptr @memcpy(ptr %rsp, ptr %arrayidx13, i32 %71)
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end7.cleanup_crit_edge, %do.end51.i, %do.end32.i, %do.end24.i, %do.end.i, %if.end11.i.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %sps30_serial_prep_frame.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %71, %if.then9 ], [ %rsp_size, %if.end7.cleanup_crit_edge ], [ %call8.i, %if.end6.i.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ], [ %call3.i, %sps30_serial_prep_frame.exit.cleanup_crit_edge ], [ -110, %if.end11.i.cleanup_crit_edge ], [ -5, %do.end.i ], [ -5, %do.end24.i ], [ -5, %do.end32.i ], [ -5, %do.end51.i ]
  call void @llvm.lifetime.end.p0(i64 263, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !35, !37, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !59, !61, !62}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__initcall__kmod_sps30_serial__176_427_sps30_serial_driver_init6, !1, !"__initcall__kmod_sps30_serial__176_427_sps30_serial_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/chemical/sps30_serial.c", i32 427, i32 1}
!2 = !{ptr @__exitcall_sps30_serial_driver_exit, !1, !"__exitcall_sps30_serial_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author177, !4, !"__UNIQUE_ID_author177", i1 false, i1 false}
!4 = !{!"../drivers/iio/chemical/sps30_serial.c", i32 429, i32 1}
!5 = !{ptr @__UNIQUE_ID_description178, !6, !"__UNIQUE_ID_description178", i1 false, i1 false}
!6 = !{!"../drivers/iio/chemical/sps30_serial.c", i32 430, i32 1}
!7 = !{ptr @__UNIQUE_ID_file179, !8, !"__UNIQUE_ID_file179", i1 false, i1 false}
!8 = !{!"../drivers/iio/chemical/sps30_serial.c", i32 431, i32 1}
!9 = !{ptr @__UNIQUE_ID_license180, !8, !"__UNIQUE_ID_license180", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/chemical/sps30_serial.c", i32 422, i32 11}
!12 = !{ptr @sps30_serial_driver, !13, !"sps30_serial_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/chemical/sps30_serial.c", i32 420, i32 36}
!14 = !{ptr @sps30_serial_of_match, !15, !"sps30_serial_of_match", i1 false, i1 false}
!15 = !{!"../drivers/iio/chemical/sps30_serial.c", i32 414, i32 34}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/chemical/sps30_serial.c", i32 411, i32 26}
!18 = !{ptr @init_completion.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../include/linux/completion.h", i32 87, i32 2}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @sps30_serial_device_ops, !22, !"sps30_serial_device_ops", i1 false, i1 false}
!22 = !{!"../drivers/iio/chemical/sps30_serial.c", i32 270, i32 39}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/iio/chemical/sps30_serial.c", i32 249, i32 4}
!25 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @sps30_serial_receive_buf._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @sps30_serial_receive_buf._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @sps30_serial_bytes, !32, !"sps30_serial_bytes", i1 false, i1 false}
!32 = !{!"../drivers/iio/chemical/sps30_serial.c", i32 79, i32 3}
!33 = !{ptr @sps30_serial_ops, !34, !"sps30_serial_ops", i1 false, i1 false}
!34 = !{!"../drivers/iio/chemical/sps30_serial.c", i32 376, i32 31}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/chemical/sps30_serial.c", i32 164, i32 3}
!37 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @sps30_serial_frame_valid._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @sps30_serial_frame_valid._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/chemical/sps30_serial.c", i32 170, i32 3}
!43 = !{ptr @sps30_serial_frame_valid._entry.11, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @sps30_serial_frame_valid._entry_ptr.13, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/chemical/sps30_serial.c", i32 175, i32 3}
!47 = !{ptr @sps30_serial_frame_valid._entry.14, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @sps30_serial_frame_valid._entry_ptr.16, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/chemical/sps30_serial.c", i32 183, i32 3}
!51 = !{ptr @sps30_serial_frame_valid._entry.17, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @sps30_serial_frame_valid._entry_ptr.19, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/iio/chemical/sps30_serial.c", i32 363, i32 2}
!55 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @sps30_serial_show_info._entry, !54, !"_entry", i1 false, i1 false}
!58 = !{ptr @sps30_serial_show_info._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/chemical/sps30_serial.c", i32 371, i32 2}
!61 = !{ptr @sps30_serial_show_info._entry.23, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @sps30_serial_show_info._entry_ptr.25, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{i8 0, i8 2}
