; ModuleID = '/llk/IR_all_yes/drivers/iio/chemical/pms7003.c_pt.bc'
source_filename = "../drivers/iio/chemical/pms7003.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.serdev_device_driver = type { %struct.device_driver, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.44, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.44 = type { i8, i8, i8, i8, i8, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.serdev_device_ops = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.pms7003_state = type { ptr, %struct.pms7003_frame, %struct.completion, %struct.mutex, %struct.anon.43 }
%struct.pms7003_frame = type { [28 x i8], i16, i16 }
%struct.anon.43 = type { [3 x i16], i64 }
%struct.serdev_device = type { %struct.device, i32, ptr, ptr, %struct.completion, %struct.mutex }

@__initcall__kmod_pms7003__197_347_pms7003_driver_init6 = internal global ptr @pms7003_driver_init, section ".initcall6.init", align 4
@pms7003_driver = internal global { %struct.serdev_device_driver, [44 x i8] } { %struct.serdev_device_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pms7003_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @pms7003_probe, ptr null }, [44 x i8] zeroinitializer }, align 32
@__exitcall_pms7003_driver_exit = internal global ptr @pms7003_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author198 = internal constant [53 x i8] c"pms7003.author=Tomasz Duszynski <tduszyns@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description199 = internal constant [71 x i8] c"pms7003.description=Plantower PMS7003 particulate matter sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file200 = internal constant [42 x i8] c"pms7003.file=drivers/iio/chemical/pms7003\00", section ".modinfo", align 1
@__UNIQUE_ID_license201 = internal constant [23 x i8] c"pms7003.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pms7003\00", [24 x i8] zeroinitializer }, align 32
@pms7003_of_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"plantower,pms1003\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"plantower,pms3003\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"plantower,pms5003\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"plantower,pms6003\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"plantower,pms7003\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"plantower,pmsa003\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@pms7003_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @pms7003_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@pms7003_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 34, i32 0, i32 38, i32 6, i32 0, %struct.anon.44 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 34, i32 0, i32 39, i32 8, i32 1, %struct.anon.44 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 34, i32 0, i32 41, i32 10, i32 2, %struct.anon.44 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.44 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [64 x i8] zeroinitializer }, align 32
@pms7003_scan_masks = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 7, i32 0], [24 x i8] zeroinitializer }, align 32
@pms7003_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&state->lock\00", [19 x i8] zeroinitializer }, align 32
@pms7003_serdev_ops = internal constant { %struct.serdev_device_ops, [24 x i8] } { %struct.serdev_device_ops { ptr @pms7003_receive_buf, ptr @serdev_device_write_wakeup }, [24 x i8] zeroinitializer }, align 32
@pms7003_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 307, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to wakeup sensor\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pms7003_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/iio/chemical/pms7003.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pms7003_probe._entry_ptr = internal global ptr @pms7003_probe._entry, section ".printk_index", align 4
@pms7003_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 313, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to enter passive mode\0A\00", [34 x i8] zeroinitializer }, align 32
@pms7003_probe._entry_ptr.9 = internal global ptr @pms7003_probe._entry.7, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@pms7003_cmd_tbl = internal constant { [4 x [7 x i8]], [36 x i8] } { [4 x [7 x i8]] [[7 x i8] c"BM\E4\00\01\01t", [7 x i8] c"BM\E1\00\00\01p", [7 x i8] c"BM\E2\00\00\01q", [7 x i8] c"BM\E4\00\00\01s"], [36 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [15 x i8] c"pms7003_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 340, i32 36 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 342, i32 11 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"pms7003_of_match\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 329, i32 34 }
@___asan_gen_.20 = private unnamed_addr constant [13 x i8] c"pms7003_info\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 168, i32 30 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"pms7003_channels\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 187, i32 35 }
@___asan_gen_.26 = private unnamed_addr constant [19 x i8] c"pms7003_scan_masks\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 268, i32 28 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 290, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [19 x i8] c"pms7003_serdev_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 256, i32 39 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 307, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 313, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 87, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [16 x i8] c"pms7003_cmd_tbl\00", align 1
@___asan_gen_.69 = private constant [34 x i8] c"../drivers/iio/chemical/pms7003.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 58, i32 17 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_author198, ptr @__UNIQUE_ID_description199, ptr @__UNIQUE_ID_file200, ptr @__UNIQUE_ID_license201, ptr @__exitcall_pms7003_driver_exit, ptr @__initcall__kmod_pms7003__197_347_pms7003_driver_init6, ptr @pms7003_driver_exit, ptr @pms7003_probe._entry, ptr @pms7003_probe._entry.7, ptr @pms7003_probe._entry_ptr, ptr @pms7003_probe._entry_ptr.9, ptr @pms7003_driver, ptr @.str, ptr @pms7003_of_match, ptr @pms7003_info, ptr @pms7003_channels, ptr @pms7003_scan_masks, ptr @pms7003_probe.__key, ptr @.str.1, ptr @pms7003_serdev_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @init_completion.__key, ptr @.str.10, ptr @pms7003_cmd_tbl], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pms7003_driver to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pms7003_of_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pms7003_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pms7003_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pms7003_scan_masks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pms7003_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pms7003_serdev_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pms7003_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pms7003_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pms7003_cmd_tbl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pms7003_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__serdev_device_driver_register(ptr noundef nonnull @pms7003_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pms7003_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef nonnull @pms7003_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serdev_device_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pms7003_probe(ptr noundef %serdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %serdev, i32 noundef 200) #5
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
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %serdev, ptr %1, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %4 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @pms7003_info, ptr %info, align 8
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %5 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str, ptr %name, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %6 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @pms7003_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %7 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %num_channels, align 4
  %8 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %call, align 8
  %available_scan_masks = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 6
  %9 = ptrtoint ptr %available_scan_masks to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @pms7003_scan_masks, ptr %available_scan_masks, align 4
  %lock = getelementptr inbounds %struct.pms7003_state, ptr %1, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @pms7003_probe.__key) #5
  %frame_ready = getelementptr inbounds %struct.pms7003_state, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %frame_ready to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %frame_ready, align 4
  %wait.i = getelementptr inbounds %struct.pms7003_state, ptr %1, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #5
  %ops1.i = getelementptr inbounds %struct.serdev_device, ptr %serdev, i32 0, i32 3
  %11 = ptrtoint ptr %ops1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @pms7003_serdev_ops, ptr %ops1.i, align 8
  %call4 = tail call i32 @devm_serdev_device_open(ptr noundef %serdev, ptr noundef %serdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @serdev_device_set_baudrate(ptr noundef %serdev, i32 noundef 9600) #5
  tail call void @serdev_device_set_flow_control(ptr noundef %serdev, i1 noundef zeroext false) #5
  %call9 = tail call i32 @serdev_device_set_parity(ptr noundef %serdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %call1.i = tail call i32 @serdev_device_write(ptr noundef %13, ptr noundef nonnull @pms7003_cmd_tbl, i32 noundef 7, i32 noundef 600) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 7
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  %spec.select = select i1 %cmp2.i, i32 %call1.i, i32 -5
  br label %do.end18

if.end.i:                                         ; preds = %if.end12
  %call4.i = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %frame_ready, i32 noundef 600) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.end.i.do.end18_crit_edge, label %pms7003_do_cmd.exit

if.end.i.do.end18_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end18

pms7003_do_cmd.exit:                              ; preds = %if.end.i
  %14 = tail call i32 @llvm.smin.i32(i32 %call4.i, i32 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i)
  %tobool14.not = icmp sgt i32 %call4.i, -1
  br i1 %tobool14.not, label %if.end20, label %pms7003_do_cmd.exit.do.end18_crit_edge

pms7003_do_cmd.exit.do.end18_crit_edge:           ; preds = %pms7003_do_cmd.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end18

do.end18:                                         ; preds = %pms7003_do_cmd.exit.do.end18_crit_edge, %if.end.i.do.end18_crit_edge, %if.then.i
  %retval.0.i99 = phi i32 [ %14, %pms7003_do_cmd.exit.do.end18_crit_edge ], [ -110, %if.end.i.do.end18_crit_edge ], [ %spec.select, %if.then.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %serdev, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end20:                                         ; preds = %pms7003_do_cmd.exit
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %call1.i82 = tail call i32 @serdev_device_write(ptr noundef %16, ptr noundef getelementptr inbounds ([4 x [7 x i8]], ptr @pms7003_cmd_tbl, i32 0, i32 1), i32 noundef 7, i32 noundef 600) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call1.i82)
  %cmp.i83 = icmp slt i32 %call1.i82, 7
  br i1 %cmp.i83, label %if.then.i86, label %if.end.i90

if.then.i86:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i82)
  %cmp2.i84 = icmp slt i32 %call1.i82, 0
  %spec.select105 = select i1 %cmp2.i84, i32 %call1.i82, i32 -5
  br label %do.end26

if.end.i90:                                       ; preds = %if.end20
  %call4.i88 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %frame_ready, i32 noundef 600) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i88)
  %tobool.not.i89 = icmp eq i32 %call4.i88, 0
  br i1 %tobool.not.i89, label %if.end.i90.do.end26_crit_edge, label %pms7003_do_cmd.exit92

if.end.i90.do.end26_crit_edge:                    ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end26

pms7003_do_cmd.exit92:                            ; preds = %if.end.i90
  %17 = tail call i32 @llvm.smin.i32(i32 %call4.i88, i32 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i88)
  %tobool22.not = icmp sgt i32 %call4.i88, -1
  br i1 %tobool22.not, label %if.end28, label %pms7003_do_cmd.exit92.do.end26_crit_edge

pms7003_do_cmd.exit92.do.end26_crit_edge:         ; preds = %pms7003_do_cmd.exit92
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end26

do.end26:                                         ; preds = %pms7003_do_cmd.exit92.do.end26_crit_edge, %if.end.i90.do.end26_crit_edge, %if.then.i86
  %retval.0.i91104 = phi i32 [ %17, %pms7003_do_cmd.exit92.do.end26_crit_edge ], [ -110, %if.end.i90.do.end26_crit_edge ], [ %spec.select105, %if.then.i86 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %serdev, ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end28:                                         ; preds = %pms7003_do_cmd.exit92
  %call.i = tail call i32 @devm_add_action(ptr noundef %serdev, ptr noundef nonnull @pms7003_stop, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i93 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i93, label %if.end33, label %if.then.i94

if.then.i94:                                      ; preds = %if.end28
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %call1.i.i.i = tail call i32 @serdev_device_write(ptr noundef %19, ptr noundef getelementptr inbounds ([4 x [7 x i8]], ptr @pms7003_cmd_tbl, i32 0, i32 3), i32 noundef 7, i32 noundef 600) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call1.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call1.i.i.i, 7
  br i1 %cmp.i.i.i, label %if.then.i94.cleanup_crit_edge, label %if.end.i.i.i

if.then.i94.cleanup_crit_edge:                    ; preds = %if.then.i94
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.then.i94
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %frame_ready, i32 noundef 600) #5
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  %call35 = tail call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %serdev, ptr noundef nonnull %call, ptr noundef null, ptr noundef nonnull @pms7003_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end38:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %call40 = tail call i32 @__devm_iio_device_register(ptr noundef %serdev, ptr noundef nonnull %call, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end33.cleanup_crit_edge, %if.end.i.i.i, %if.then.i94.cleanup_crit_edge, %do.end26, %do.end18, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i99, %do.end18 ], [ %retval.0.i91104, %do.end26 ], [ %call40, %if.end38 ], [ -12, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %call9, %if.end7.cleanup_crit_edge ], [ %call35, %if.end33.cleanup_crit_edge ], [ %call.i, %if.then.i94.cleanup_crit_edge ], [ %call.i, %if.end.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_serdev_device_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_set_baudrate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_set_flow_control(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_set_parity(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pms7003_stop(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %call1.i = tail call i32 @serdev_device_write(ptr noundef %1, ptr noundef getelementptr inbounds ([4 x [7 x i8]], ptr @pms7003_cmd_tbl, i32 0, i32 3), i32 noundef 7, i32 noundef 600) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 7
  br i1 %cmp.i, label %entry.pms7003_do_cmd.exit_crit_edge, label %if.end.i

entry.pms7003_do_cmd.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %pms7003_do_cmd.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %frame_ready.i = getelementptr inbounds %struct.pms7003_state, ptr %data, i32 0, i32 2
  %call4.i = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %frame_ready.i, i32 noundef 600) #5
  br label %pms7003_do_cmd.exit

pms7003_do_cmd.exit:                              ; preds = %if.end.i, %entry.pms7003_do_cmd.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pms7003_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.pms7003_state, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call1.i = tail call i32 @serdev_device_write(ptr noundef %5, ptr noundef getelementptr inbounds ([4 x [7 x i8]], ptr @pms7003_cmd_tbl, i32 0, i32 2), i32 noundef 7, i32 noundef 600) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 7
  br i1 %cmp.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.end.i:                                         ; preds = %entry
  %frame_ready.i = getelementptr inbounds %struct.pms7003_state, ptr %3, i32 0, i32 2
  %call4.i = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %frame_ready.i, i32 noundef 600) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %6 = icmp sgt i32 %call4.i, 0
  br i1 %6, label %if.end, label %if.end.i.if.then_crit_edge

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %err

if.end:                                           ; preds = %if.end.i
  %add.ptr = getelementptr %struct.pms7003_state, ptr %3, i32 0, i32 1, i32 0, i32 6
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %add.ptr, align 1
  %9 = tail call i16 @llvm.umin.i16(i16 %8, i16 1000) #5
  %scan = getelementptr inbounds %struct.pms7003_state, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %scan to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %scan, align 8
  %add.ptr9 = getelementptr %struct.pms7003_state, ptr %3, i32 0, i32 1, i32 0, i32 8
  %11 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %add.ptr9, align 1
  %13 = tail call i16 @llvm.umin.i16(i16 %12, i16 1000) #5
  %arrayidx13 = getelementptr %struct.pms7003_state, ptr %3, i32 0, i32 4, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %arrayidx13, align 2
  %add.ptr16 = getelementptr %struct.pms7003_state, ptr %3, i32 0, i32 1, i32 0, i32 10
  %15 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %add.ptr16, align 1
  %17 = tail call i16 @llvm.umin.i16(i16 %16, i16 1000) #5
  %arrayidx20 = getelementptr %struct.pms7003_state, ptr %3, i32 0, i32 4, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %arrayidx20, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #5
  %call23 = tail call i64 @iio_get_time_ns(ptr noundef %1) #5
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %scan_timestamp.i, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i38 = icmp eq i8 %20, 0
  br i1 %tobool.not.i38, label %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i39

if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i39:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %22, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %scan, i32 %sub.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %call23, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i39, %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %scan) #5
  br label %err

err:                                              ; preds = %iio_push_to_buffers_with_timestamp.exit, %if.then
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %24 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %25) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pms7003_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %frame1 = getelementptr inbounds %struct.pms7003_state, ptr %1, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mask)
  %cond = icmp eq i32 %mask, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %3)
  %cond9 = icmp eq i32 %3, 34
  br i1 %cond9, label %sw.bb2, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb2:                                           ; preds = %sw.bb
  %lock = getelementptr inbounds %struct.pms7003_state, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %call1.i = tail call i32 @serdev_device_write(ptr noundef %5, ptr noundef getelementptr inbounds ([4 x [7 x i8]], ptr @pms7003_cmd_tbl, i32 0, i32 2), i32 noundef 7, i32 noundef 600) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 7
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  %spec.select = select i1 %cmp2.i, i32 %call1.i, i32 -5
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %sw.bb2
  %frame_ready.i = getelementptr inbounds %struct.pms7003_state, ptr %1, i32 0, i32 2
  %call4.i = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %frame_ready.i, i32 noundef 600) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.end.i.cleanup.sink.split_crit_edge, label %pms7003_do_cmd.exit

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

pms7003_do_cmd.exit:                              ; preds = %if.end.i
  %6 = tail call i32 @llvm.smin.i32(i32 %call4.i, i32 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i)
  %tobool.not = icmp sgt i32 %call4.i, -1
  br i1 %tobool.not, label %if.end, label %pms7003_do_cmd.exit.cleanup.sink.split_crit_edge

pms7003_do_cmd.exit.cleanup.sink.split_crit_edge: ; preds = %pms7003_do_cmd.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end:                                           ; preds = %pms7003_do_cmd.exit
  call void @__sanitizer_cov_trace_pc() #7
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %7 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %address, align 4
  %add.ptr = getelementptr i8, ptr %frame1, i32 %8
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %add.ptr, align 1
  %11 = tail call i16 @llvm.umin.i16(i16 %10, i16 1000) #5
  %conv = zext i16 %11 to i32
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %val, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %pms7003_do_cmd.exit.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge, %if.then.i
  %retval.0.ph = phi i32 [ 1, %if.end ], [ %6, %pms7003_do_cmd.exit.cleanup.sink.split_crit_edge ], [ -110, %if.end.i.cleanup.sink.split_crit_edge ], [ %spec.select, %if.then.i ]
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pms7003_receive_buf(ptr nocapture noundef readonly %serdev, ptr nocapture noundef readonly %buf, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %frame2 = getelementptr inbounds %struct.pms7003_state, ptr %3, i32 0, i32 1
  %expected_length = getelementptr inbounds %struct.pms7003_state, ptr %3, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %expected_length to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %expected_length, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp = icmp ult i32 %size, 4
  br i1 %cmp, label %if.then.cleanup42_crit_edge, label %if.end

if.then.cleanup42_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup42

if.end:                                           ; preds = %if.then
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16973, i16 %7)
  %cmp5.not = icmp eq i16 %7, 16973
  br i1 %cmp5.not, label %if.end8, label %if.end.cleanup42_crit_edge

if.end.cleanup42_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup42

if.end8:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %buf, i32 2
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 29, i16 %9)
  %cmp11 = icmp ult i16 %9, 29
  br i1 %cmp11, label %if.then13, label %if.end8.cleanup42_crit_edge

if.end8.cleanup42_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup42

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %expected_length to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %expected_length, align 2
  %length = getelementptr inbounds %struct.pms7003_state, ptr %3, i32 0, i32 1, i32 2
  br label %cleanup42.sink.split

if.end17:                                         ; preds = %entry
  %conv19 = zext i16 %5 to i32
  %length20 = getelementptr inbounds %struct.pms7003_state, ptr %3, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %length20 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %length20, align 2
  %conv21 = zext i16 %12 to i32
  %sub = sub nsw i32 %conv19, %conv21
  %13 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %size)
  %add.ptr26 = getelementptr i8, ptr %frame2, i32 %conv21
  %14 = call ptr @memcpy(ptr %add.ptr26, ptr %buf, i32 %13)
  %15 = ptrtoint ptr %length20 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %length20, align 2
  %17 = trunc i32 %13 to i16
  %conv29 = add i16 %16, %17
  store i16 %conv29, ptr %length20, align 2
  %18 = ptrtoint ptr %expected_length to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %expected_length, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %conv29, i16 %19)
  %cmp34 = icmp eq i16 %conv29, %19
  br i1 %cmp34, label %if.then36, label %if.end17.cleanup42_crit_edge

if.end17.cleanup42_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup42

if.then36:                                        ; preds = %if.end17
  %20 = ptrtoint ptr %length20 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %length20, align 2
  %conv.i = zext i16 %21 to i32
  %sub.i = add nsw i32 %conv.i, -2
  %add.ptr.i = getelementptr i8, ptr %frame2, i32 %sub.i
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %add.ptr.i, align 1
  %24 = lshr i16 %21, 8
  %narrow.i.i = add nuw nsw i16 %24, 143
  %25 = and i16 %21, 255
  %narrow19.i.i = add nuw nsw i16 %narrow.i.i, %25
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %21)
  %cmp20.i.i = icmp ugt i16 %21, 2
  br i1 %cmp20.i.i, label %for.body.preheader.i.i, label %if.then36.pms7003_frame_is_okay.exit_crit_edge

if.then36.pms7003_frame_is_okay.exit_crit_edge:   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #7
  br label %pms7003_frame_is_okay.exit

for.body.preheader.i.i:                           ; preds = %if.then36
  %26 = add nsw i32 %conv.i, -3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.022.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %checksum.021.i.i = phi i16 [ %add11.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %narrow19.i.i, %for.body.preheader.i.i ]
  %arrayidx.i.i = getelementptr [28 x i8], ptr %frame2, i32 0, i32 %i.022.i.i
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i.i, align 1
  %conv9.i.i = zext i8 %28 to i16
  %add11.i.i = add i16 %checksum.021.i.i, %conv9.i.i
  %inc.i.i = add nuw nsw i32 %i.022.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %i.022.i.i, %26
  br i1 %exitcond.not.i.i, label %for.body.i.i.pms7003_frame_is_okay.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.body.i.i.pms7003_frame_is_okay.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pms7003_frame_is_okay.exit

pms7003_frame_is_okay.exit:                       ; preds = %for.body.i.i.pms7003_frame_is_okay.exit_crit_edge, %if.then36.pms7003_frame_is_okay.exit_crit_edge
  %checksum.0.lcssa.i.i = phi i16 [ %narrow19.i.i, %if.then36.pms7003_frame_is_okay.exit_crit_edge ], [ %add11.i.i, %for.body.i.i.pms7003_frame_is_okay.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %checksum.0.lcssa.i.i)
  %cmp.i = icmp eq i16 %23, %checksum.0.lcssa.i.i
  br i1 %cmp.i, label %if.then38, label %pms7003_frame_is_okay.exit.cleanup42.sink.split_crit_edge

pms7003_frame_is_okay.exit.cleanup42.sink.split_crit_edge: ; preds = %pms7003_frame_is_okay.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup42.sink.split

if.then38:                                        ; preds = %pms7003_frame_is_okay.exit
  call void @__sanitizer_cov_trace_pc() #7
  %frame_ready = getelementptr inbounds %struct.pms7003_state, ptr %3, i32 0, i32 2
  tail call void @complete(ptr noundef %frame_ready) #5
  br label %cleanup42.sink.split

cleanup42.sink.split:                             ; preds = %if.then38, %pms7003_frame_is_okay.exit.cleanup42.sink.split_crit_edge, %if.then13
  %expected_length.sink = phi ptr [ %length, %if.then13 ], [ %expected_length, %if.then38 ], [ %expected_length, %pms7003_frame_is_okay.exit.cleanup42.sink.split_crit_edge ]
  %retval.1.ph = phi i32 [ 4, %if.then13 ], [ %13, %if.then38 ], [ %13, %pms7003_frame_is_okay.exit.cleanup42.sink.split_crit_edge ]
  %29 = ptrtoint ptr %expected_length.sink to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %expected_length.sink, align 2
  br label %cleanup42

cleanup42:                                        ; preds = %cleanup42.sink.split, %if.end17.cleanup42_crit_edge, %if.end8.cleanup42_crit_edge, %if.end.cleanup42_crit_edge, %if.then.cleanup42_crit_edge
  %retval.1 = phi i32 [ 0, %if.then.cleanup42_crit_edge ], [ 2, %if.end.cleanup42_crit_edge ], [ 4, %if.end8.cleanup42_crit_edge ], [ %13, %if.end17.cleanup42_crit_edge ], [ %retval.1.ph, %cleanup42.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_write_wakeup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !35, !37, !39, !40, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @__initcall__kmod_pms7003__197_347_pms7003_driver_init6, !1, !"__initcall__kmod_pms7003__197_347_pms7003_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/chemical/pms7003.c", i32 347, i32 1}
!2 = !{ptr @__exitcall_pms7003_driver_exit, !1, !"__exitcall_pms7003_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author198, !4, !"__UNIQUE_ID_author198", i1 false, i1 false}
!4 = !{!"../drivers/iio/chemical/pms7003.c", i32 349, i32 1}
!5 = !{ptr @__UNIQUE_ID_description199, !6, !"__UNIQUE_ID_description199", i1 false, i1 false}
!6 = !{!"../drivers/iio/chemical/pms7003.c", i32 350, i32 1}
!7 = !{ptr @__UNIQUE_ID_file200, !8, !"__UNIQUE_ID_file200", i1 false, i1 false}
!8 = !{!"../drivers/iio/chemical/pms7003.c", i32 351, i32 1}
!9 = !{ptr @__UNIQUE_ID_license201, !8, !"__UNIQUE_ID_license201", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/chemical/pms7003.c", i32 342, i32 11}
!12 = !{ptr @pms7003_driver, !13, !"pms7003_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/chemical/pms7003.c", i32 340, i32 36}
!14 = !{ptr @pms7003_of_match, !15, !"pms7003_of_match", i1 false, i1 false}
!15 = !{!"../drivers/iio/chemical/pms7003.c", i32 329, i32 34}
!16 = !{ptr @pms7003_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/iio/chemical/pms7003.c", i32 290, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/chemical/pms7003.c", i32 307, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @pms7003_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @pms7003_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/chemical/pms7003.c", i32 313, i32 3}
!29 = !{ptr @pms7003_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @pms7003_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @pms7003_info, !32, !"pms7003_info", i1 false, i1 false}
!32 = !{!"../drivers/iio/chemical/pms7003.c", i32 168, i32 30}
!33 = !{ptr @pms7003_channels, !34, !"pms7003_channels", i1 false, i1 false}
!34 = !{!"../drivers/iio/chemical/pms7003.c", i32 187, i32 35}
!35 = !{ptr @pms7003_scan_masks, !36, !"pms7003_scan_masks", i1 false, i1 false}
!36 = !{!"../drivers/iio/chemical/pms7003.c", i32 268, i32 28}
!37 = !{ptr @init_completion.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../include/linux/completion.h", i32 87, i32 2}
!39 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @pms7003_serdev_ops, !41, !"pms7003_serdev_ops", i1 false, i1 false}
!41 = !{!"../drivers/iio/chemical/pms7003.c", i32 256, i32 39}
!42 = !{ptr @pms7003_cmd_tbl, !43, !"pms7003_cmd_tbl", i1 false, i1 false}
!43 = !{!"../drivers/iio/chemical/pms7003.c", i32 58, i32 17}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i8 0, i8 2}
