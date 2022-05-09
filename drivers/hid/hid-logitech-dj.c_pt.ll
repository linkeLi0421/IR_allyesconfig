; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-logitech-dj.c_pt.bc'
source_filename = "../drivers/hid/hid-logitech-dj.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hid_driver = type { ptr, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hid_device_id = type { i16, i16, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hid_ll_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.dj_receiver_dev = type { ptr, ptr, ptr, [8 x ptr], %struct.list_head, %struct.kref, %struct.work_struct, %struct.kfifo, i32, i8, i32, i32, %struct.spinlock }
%struct.kfifo = type { %union.anon.72, [0 x i8] }
%union.anon.72 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.dj_report = type { i8, i8, i8, [12 x i8] }
%struct.dj_workitem = type { i8, i8, i8, i8, i8, i64 }
%struct.dj_device = type { ptr, ptr, i64, i8 }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.hidpp_event = type { i8, i8, i8, [17 x i8] }

@__initcall__kmod_hid_logitech_dj__237_2045_logi_djreceiver_driver_init6 = internal global ptr @logi_djreceiver_driver_init, section ".initcall6.init", align 4
@logi_djreceiver_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @logi_dj_receivers, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @logi_dj_probe, ptr @logi_dj_remove, ptr null, ptr @logi_dj_raw_event, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @logi_dj_reset_resume, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_logi_djreceiver_driver_exit = internal global ptr @logi_djreceiver_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file238 = internal constant [49 x i8] c"hid_logitech_dj.file=drivers/hid/hid-logitech-dj\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [28 x i8] c"hid_logitech_dj.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [32 x i8] c"hid_logitech_dj.author=Logitech\00", section ".modinfo", align 1
@__UNIQUE_ID_author241 = internal constant [43 x i8] c"hid_logitech_dj.author=Nestor Lopez Casado\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [48 x i8] c"hid_logitech_dj.author=nlopezcasad@logitech.com\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hid_logitech_dj\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"logitech-djreceiver\00", [44 x i8] zeroinitializer }, align 32
@logi_dj_receivers = internal constant { [21 x %struct.hid_device_id], [80 x i8] } { [21 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50475, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50482, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50479, i32 3 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50484, i32 1 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50481, i32 2 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50487, i32 2 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50489, i32 2 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50490, i32 2 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50495, i32 2 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50451, i32 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50455, i32 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50459, i32 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50958, i32 5 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50954, i32 5 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50971, i32 5 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50972, i32 5 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50963, i32 6 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50964, i32 6 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50974, i32 6 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50975, i32 6 }, %struct.hid_device_id zeroinitializer], [80 x i8] zeroinitializer }, align 32
@logi_dj_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1762, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: parse failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"logi_dj_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/hid/hid-logitech-dj.c\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@logi_dj_probe._entry_ptr = internal global ptr @logi_dj_probe._entry, section ".printk_index", align 4
@logi_dj_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1818, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: dj_get_receiver_dev failed\0A\00", [32 x i8] zeroinitializer }, align 32
@logi_dj_probe._entry_ptr.9 = internal global ptr @logi_dj_probe._entry.7, section ".printk_index", align 4
@logi_dj_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 1829, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: hid_hw_start returned error\0A\00", [63 x i8] zeroinitializer }, align 32
@logi_dj_probe._entry_ptr.12 = internal global ptr @logi_dj_probe._entry.10, section ".printk_index", align 4
@logi_dj_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 1837, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: logi_dj_recv_switch_to_dj_mode returned error:%d\0A\00", [42 x i8] zeroinitializer }, align 32
@logi_dj_probe._entry_ptr.15 = internal global ptr @logi_dj_probe._entry.13, section ".printk_index", align 4
@logi_dj_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 1846, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: hid_hw_open returned error:%d\0A\00", [61 x i8] zeroinitializer }, align 32
@logi_dj_probe._entry_ptr.18 = internal global ptr @logi_dj_probe._entry.16, section ".printk_index", align 4
@logi_dj_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 1860, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: logi_dj_recv_query_paired_devices error:%d\0A\00", [48 x i8] zeroinitializer }, align 32
@logi_dj_probe._entry_ptr.21 = internal global ptr @logi_dj_probe._entry.19, section ".printk_index", align 4
@usb_hid_driver = external dso_local global %struct.hid_ll_driver, align 4
@dj_hdev_list_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.25, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @dj_hdev_list_lock, i64 52), ptr getelementptr (i8, ptr @dj_hdev_list_lock, i64 52) }, ptr @dj_hdev_list_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.26, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@dj_get_receiver_dev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&djrcv_dev->work)\00", [60 x i8] zeroinitializer }, align 32
@dj_get_receiver_dev.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&djrcv_dev->lock\00", [47 x i8] zeroinitializer }, align 32
@dj_hdev_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @dj_hdev_list, ptr @dj_hdev_list }, [24 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dj_hdev_list_lock.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dj_hdev_list_lock\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@hid_debug = external dso_local local_unnamed_addr global i32, align 4
@delayedwork_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 810, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\017%s: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"delayedwork_callback\00", [43 x i8] zeroinitializer }, align 32
@delayedwork_callback._entry_ptr = internal global ptr @delayedwork_callback._entry, section ".printk_index", align 4
@delayedwork_callback._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.4, i32 820, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014%s: delayedwork queued before hidpp interface was enumerated\0A\00", [32 x i8] zeroinitializer }, align 32
@delayedwork_callback._entry_ptr.31 = internal global ptr @delayedwork_callback._entry.29, section ".printk_index", align 4
@delayedwork_callback._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.4, i32 848, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: logi_dj_recv_query_paired_devices error: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@delayedwork_callback._entry_ptr.34 = internal global ptr @delayedwork_callback._entry.32, section ".printk_index", align 4
@delayedwork_callback._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.28, ptr @.str.4, i32 852, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: %s: device list is empty\0A\00", [32 x i8] zeroinitializer }, align 32
@delayedwork_callback._entry_ptr.37 = internal global ptr @delayedwork_callback._entry.35, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@logi_dj_recv_add_djhid_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: %s: device is already known\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"logi_dj_recv_add_djhid_device\00", [34 x i8] zeroinitializer }, align 32
@logi_dj_recv_add_djhid_device._entry_ptr = internal global ptr @logi_dj_recv_add_djhid_device._entry, section ".printk_index", align 4
@logi_dj_recv_add_djhid_device._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.4, i32 726, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: hid_allocate_dev failed\0A\00", [35 x i8] zeroinitializer }, align 32
@logi_dj_recv_add_djhid_device._entry_ptr.42 = internal global ptr @logi_dj_recv_add_djhid_device._entry.40, section ".printk_index", align 4
@logi_dj_ll_driver = internal global { %struct.hid_ll_driver, [48 x i8] } { %struct.hid_ll_driver { ptr @logi_dj_ll_start, ptr @logi_dj_ll_stop, ptr @logi_dj_ll_open, ptr @logi_dj_ll_close, ptr null, ptr @logi_dj_ll_parse, ptr null, ptr null, ptr @logi_dj_ll_raw_request, ptr null, ptr null, ptr @logi_dj_ll_may_wakeup }, [48 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Device\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Keyboard\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Mouse\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Numpad\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Presenter\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Remote Control\00", [17 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Trackball\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Touchpad\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Logitech Wireless %s PID:%04x\00", [34 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Logitech Wireless Device PID:%04x\00", [62 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c":%d\00", [28 x i8] zeroinitializer }, align 32
@logi_dj_recv_add_djhid_device._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.39, ptr @.str.4, i32 770, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: failed allocating dj_dev\0A\00", [34 x i8] zeroinitializer }, align 32
@logi_dj_recv_add_djhid_device._entry_ptr.56 = internal global ptr @logi_dj_recv_add_djhid_device._entry.54, section ".printk_index", align 4
@logi_dj_recv_add_djhid_device._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.39, ptr @.str.4, i32 785, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: failed adding dj_device\0A\00", [35 x i8] zeroinitializer }, align 32
@logi_dj_recv_add_djhid_device._entry_ptr.59 = internal global ptr @logi_dj_recv_add_djhid_device._entry.57, section ".printk_index", align 4
@logi_dj_ll_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.60, ptr @.str.4, i32 1492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"logi_dj_ll_start\00", [47 x i8] zeroinitializer }, align 32
@logi_dj_ll_start._entry_ptr = internal global ptr @logi_dj_ll_start._entry, section ".printk_index", align 4
@logi_dj_ll_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.61, ptr @.str.4, i32 1498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"logi_dj_ll_stop\00", [16 x i8] zeroinitializer }, align 32
@logi_dj_ll_stop._entry_ptr = internal global ptr @logi_dj_ll_stop._entry, section ".printk_index", align 4
@logi_dj_ll_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.4, i32 1320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017%s: %s: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"logi_dj_ll_open\00", [16 x i8] zeroinitializer }, align 32
@logi_dj_ll_open._entry_ptr = internal global ptr @logi_dj_ll_open._entry, section ".printk_index", align 4
@logi_dj_ll_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.64, ptr @.str.4, i32 1327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"logi_dj_ll_close\00", [47 x i8] zeroinitializer }, align 32
@logi_dj_ll_close._entry_ptr = internal global ptr @logi_dj_ll_close._entry, section ".printk_index", align 4
@logi_dj_ll_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.65, ptr @.str.4, i32 1414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"logi_dj_ll_parse\00", [47 x i8] zeroinitializer }, align 32
@logi_dj_ll_parse._entry_ptr = internal global ptr @logi_dj_ll_parse._entry, section ".printk_index", align 4
@logi_dj_ll_parse._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.4, i32 1425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017%s: %s: sending a kbd descriptor, reports_supported: %llx\0A\00", [35 x i8] zeroinitializer }, align 32
@logi_dj_ll_parse._entry_ptr.68 = internal global ptr @logi_dj_ll_parse._entry.66, section ".printk_index", align 4
@kbd_descriptor = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\05\01\09\06\A1\01\85\01\95\08u\01\15\00%\01\05\07\19\E0)\E7\81\02\95\06u\08\15\00&\FF\00\05\07\19\00*\FF\00\81\00\85\0E\05\08\95\05u\01\15\00%\01\19\01)\05\91\02\95\01u\03\91\01\C0", [61 x i8] zeroinitializer }, align 32
@logi_dj_ll_parse._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.65, ptr @.str.4, i32 1431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\017%s: %s: sending a mouse descriptor, reports_supported: %llx\0A\00", [33 x i8] zeroinitializer }, align 32
@logi_dj_ll_parse._entry_ptr.71 = internal global ptr @logi_dj_ll_parse._entry.69, section ".printk_index", align 4
@mse_high_res_descriptor = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\05\01\09\02\A1\01\85\02\09\01\A1\00\05\09\19\01)\10\15\00%\01\95\10u\01\81\02\05\01\16\01\80&\FF\7Fu\10\95\02\090\091\81\06\15\81%\7Fu\08\95\01\098\81\06\05\0C\0A8\02\95\01\81\06\C0\C0", [59 x i8] zeroinitializer }, align 32
@mse_27mhz_descriptor = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\05\01\09\02\A1\01\85\02\09\01\A1\00\05\09\19\01)\08\15\00%\01\95\08u\01\81\02\05\01\16\01\F8&\FF\07u\0C\95\02\090\091\81\06\15\81%\7Fu\08\95\01\098\81\06\05\0C\0A8\02\95\01\81\06\C0\C0", [59 x i8] zeroinitializer }, align 32
@mse_bluetooth_descriptor = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\05\01\09\02\A1\01\85\02\09\01\A1\00\05\09\19\01)\08\15\00%\01\95\08u\01\81\02\05\01\16\01\F8&\FF\07u\0C\95\02\090\091\81\06\15\81%\7Fu\08\95\01\098\81\06\05\0C\0A8\02\15\F9%\07u\04\95\01\81\06\05\09\19\09)\0C\15\00%\01u\01\95\04\81\02\C0\C0", [37 x i8] zeroinitializer }, align 32
@mse_descriptor = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\05\01\09\02\A1\01\85\02\09\01\A1\00\05\09\19\01)\10\15\00%\01\95\10u\01\81\02\05\01\16\01\F8&\FF\07u\0C\95\02\090\091\81\06\15\81%\7Fu\08\95\01\098\81\06\05\0C\0A8\02\95\01\81\06\C0\C0", [59 x i8] zeroinitializer }, align 32
@logi_dj_ll_parse._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.65, ptr @.str.4, i32 1449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\017%s: %s: sending a kbd-mouse descriptor, reports_supported: %llx\0A\00", [61 x i8] zeroinitializer }, align 32
@logi_dj_ll_parse._entry_ptr.74 = internal global ptr @logi_dj_ll_parse._entry.72, section ".printk_index", align 4
@mse5_bluetooth_descriptor = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\05\01\09\02\A1\01\85\05\09\01\A1\00\05\09\19\01)\08\15\00%\01\95\08u\01\81\02\05\01\16\01\F8&\FF\07u\0C\95\02\090\091\81\06\15\81%\7Fu\08\95\01\098\81\06\05\0C\0A8\02\15\81%\7Fu\08\95\01\81\06\C0\C0", [53 x i8] zeroinitializer }, align 32
@logi_dj_ll_parse._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.65, ptr @.str.4, i32 1456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017%s: %s: sending a multimedia report descriptor: %llx\0A\00", [40 x i8] zeroinitializer }, align 32
@logi_dj_ll_parse._entry_ptr.77 = internal global ptr @logi_dj_ll_parse._entry.75, section ".printk_index", align 4
@consumer_descriptor = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\05\0C\09\01\A1\01\85\03u\10\95\02\15\01&\FF\02\19\01*\FF\02\81\00\C0", [39 x i8] zeroinitializer }, align 32
@logi_dj_ll_parse._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.65, ptr @.str.4, i32 1462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017%s: %s: sending a power keys report descriptor: %llx\0A\00", [40 x i8] zeroinitializer }, align 32
@logi_dj_ll_parse._entry_ptr.80 = internal global ptr @logi_dj_ll_parse._entry.78, section ".printk_index", align 4
@syscontrol_descriptor = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\05\01\09\80\A1\01\85\04u\02\95\01\15\01%\03\09\82\09\81\09\83\81`u\06\81\03\C0", [35 x i8] zeroinitializer }, align 32
@logi_dj_ll_parse._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.65, ptr @.str.4, i32 1468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017%s: %s: sending a media center report descriptor: %llx\0A\00", [38 x i8] zeroinitializer }, align 32
@logi_dj_ll_parse._entry_ptr.83 = internal global ptr @logi_dj_ll_parse._entry.81, section ".printk_index", align 4
@media_descriptor = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\06\BC\FF\09\88\A1\01\85\08\19\01)\FF\15\01&\FF\00u\08\95\01\81\00\C0", [39 x i8] zeroinitializer }, align 32
@logi_dj_ll_parse._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.65, ptr @.str.4, i32 1474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017%s: %s: need to send kbd leds report descriptor: %llx\0A\00", [39 x i8] zeroinitializer }, align 32
@logi_dj_ll_parse._entry_ptr.86 = internal global ptr @logi_dj_ll_parse._entry.84, section ".printk_index", align 4
@logi_dj_ll_parse._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.65, ptr @.str.4, i32 1479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\017%s: %s: sending a HID++ descriptor, reports_supported: %llx\0A\00", [33 x i8] zeroinitializer }, align 32
@logi_dj_ll_parse._entry_ptr.89 = internal global ptr @logi_dj_ll_parse._entry.87, section ".printk_index", align 4
@hidpp_descriptor = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"\06\00\FF\09\01\A1\01\85\10u\08\95\06\15\00&\FF\00\09\01\81\00\09\01\91\00\C0\06\00\FF\09\02\A1\01\85\11u\08\95\13\15\00&\FF\00\09\02\81\00\09\02\91\00\C0\06\00\FF\09\04\A1\01\85 u\08\95\0E\15\00&\FF\00\09A\81\00\09A\91\00\85!\95\1F\15\00&\FF\00\09B\81\00\09B\91\00\C0", [62 x i8] zeroinitializer }, align 32
@unifying_pairing_query = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\10\FF\83\B5", [28 x i8] zeroinitializer }, align 32
@logi_dj_ll_raw_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.4, i32 1375, ptr @.str.92, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"Received REPORT_TYPE_LEDS request before the keyboard interface was enumerated\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"logi_dj_ll_raw_request\00", [41 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@logi_dj_ll_raw_request._entry_ptr = internal global ptr @logi_dj_ll_raw_request._entry, section ".printk_index", align 4
@logi_dj_recv_destroy_djhid_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.4, i32 698, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: can't destroy a NULL device\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"logi_dj_recv_destroy_djhid_device\00", [62 x i8] zeroinitializer }, align 32
@logi_dj_recv_destroy_djhid_device._entry_ptr = internal global ptr @logi_dj_recv_destroy_djhid_device._entry, section ".printk_index", align 4
@logi_dj_recv_send_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.4, i32 1198, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: unable to find dj report\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"logi_dj_recv_send_report\00", [39 x i8] zeroinitializer }, align 32
@logi_dj_recv_send_report._entry_ptr = internal global ptr @logi_dj_recv_send_report._entry, section ".printk_index", align 4
@hid_device_io_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.99, i32 963, ptr @.str.92, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"io already started\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hid_device_io_start\00", [44 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/hid.h\00", [44 x i8] zeroinitializer }, align 32
@hid_device_io_start._entry_ptr = internal global ptr @hid_device_io_start._entry, section ".printk_index", align 4
@logi_dj_recv_query_hidpp_devices.template = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\10\FF\80\02\02\00\00", [25 x i8] zeroinitializer }, align 32
@logi_dj_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.100, ptr @.str.4, i32 1905, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"logi_dj_remove\00", [17 x i8] zeroinitializer }, align 32
@logi_dj_remove._entry_ptr = internal global ptr @logi_dj_remove._entry, section ".printk_index", align 4
@logi_dj_raw_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.4, i32 1671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s: %s, size:%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"logi_dj_raw_event\00", [46 x i8] zeroinitializer }, align 32
@logi_dj_raw_event._entry_ptr = internal global ptr @logi_dj_raw_event._entry, section ".printk_index", align 4
@logi_dj_raw_event._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.102, ptr @.str.4, i32 1714, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Short DJ report bad size (%d)\00", [34 x i8] zeroinitializer }, align 32
@logi_dj_raw_event._entry_ptr.105 = internal global ptr @logi_dj_raw_event._entry.103, section ".printk_index", align 4
@logi_dj_raw_event._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.102, ptr @.str.4, i32 1720, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Long DJ report bad size (%d)\00", [35 x i8] zeroinitializer }, align 32
@logi_dj_raw_event._entry_ptr.108 = internal global ptr @logi_dj_raw_event._entry.106, section ".printk_index", align 4
@logi_dj_raw_event._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.102, ptr @.str.4, i32 1726, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Short HID++ report bad size (%d)\00", [63 x i8] zeroinitializer }, align 32
@logi_dj_raw_event._entry_ptr.111 = internal global ptr @logi_dj_raw_event._entry.109, section ".printk_index", align 4
@logi_dj_raw_event._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.102, ptr @.str.4, i32 1732, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Long HID++ report bad size (%d)\00", [32 x i8] zeroinitializer }, align 32
@logi_dj_raw_event._entry_ptr.114 = internal global ptr @logi_dj_raw_event._entry.112, section ".printk_index", align 4
@logi_dj_recv_forward_input_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.4, i32 1165, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unexpected input report number %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"logi_dj_recv_forward_input_report\00", [62 x i8] zeroinitializer }, align 32
@logi_dj_recv_forward_input_report._entry_ptr = internal global ptr @logi_dj_recv_forward_input_report._entry, section ".printk_index", align 4
@logi_dj_recv_forward_input_report._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.116, ptr @.str.4, i32 1182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s: No dj-devs handling input report number %d\0A\00", [46 x i8] zeroinitializer }, align 32
@logi_dj_recv_forward_input_report._entry_ptr.119 = internal global ptr @logi_dj_recv_forward_input_report._entry.117, section ".printk_index", align 4
@logi_dj_recv_forward_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.4, i32 1152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: hid_input_report error\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"logi_dj_recv_forward_report\00", [36 x i8] zeroinitializer }, align 32
@logi_dj_recv_forward_report._entry_ptr = internal global ptr @logi_dj_recv_forward_report._entry, section ".printk_index", align 4
@__const.logi_dj_recv_queue_unknown_work.workitem = private unnamed_addr constant { i8, i8, i8, i8, i8, [3 x i8], i64 } { i8 -1, i8 0, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i64 0 }, align 8
@logi_dj_dj_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.4, i32 1554, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: invalid device index:%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"logi_dj_dj_event\00", [47 x i8] zeroinitializer }, align 32
@logi_dj_dj_event._entry_ptr = internal global ptr @logi_dj_dj_event._entry, section ".printk_index", align 4
@logi_dj_recv_forward_null_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.4, i32 1120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s: hid_input_report error sending null report\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"logi_dj_recv_forward_null_report\00", [63 x i8] zeroinitializer }, align 32
@logi_dj_recv_forward_null_report._entry_ptr = internal global ptr @logi_dj_recv_forward_null_report._entry, section ".printk_index", align 4
@hid_reportid_size_map = internal constant { <{ [9 x i8], [23 x i8] }>, [32 x i8] } { <{ [9 x i8], [23 x i8] }> <{ [9 x i8] c"\00\08\08\05\02\00\00\00\02", [23 x i8] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@logi_dj_recv_forward_dj._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.4, i32 1136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: invalid report type:%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"logi_dj_recv_forward_dj\00", [40 x i8] zeroinitializer }, align 32
@logi_dj_recv_forward_dj._entry_ptr = internal global ptr @logi_dj_recv_forward_dj._entry, section ".printk_index", align 4
@logi_dj_recv_forward_dj._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.128, ptr @.str.4, i32 1143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@logi_dj_recv_forward_dj._entry_ptr.130 = internal global ptr @logi_dj_recv_forward_dj._entry.129, section ".printk_index", align 4
@unifying_pairing_answer = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\11\FF\83\B5", [28 x i8] zeroinitializer }, align 32
@logi_dj_hidpp_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.131, ptr @.str.4, i32 1626, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"logi_dj_hidpp_event\00", [44 x i8] zeroinitializer }, align 32
@logi_dj_hidpp_event._entry_ptr = internal global ptr @logi_dj_hidpp_event._entry, section ".printk_index", align 4
@.str.132 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Bluetooth\00", [22 x i8] zeroinitializer }, align 32
@logi_hidpp_recv_queue_notif._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.4, i32 1025, ptr @.str.136, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Non Logitech device connected on slot %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"logi_hidpp_recv_queue_notif\00", [36 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@logi_hidpp_recv_queue_notif._entry_ptr = internal global ptr @logi_hidpp_recv_queue_notif._entry, section ".printk_index", align 4
@.str.137 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"27 Mhz\00", [25 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUAD or eQUAD\00", [18 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"eQUAD step 4 DJ\00", [16 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DFU Lite\00", [23 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"eQUAD step 4 Lite\00", [46 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"eQUAD step 4 Gaming\00", [44 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"eQUAD step 4 for gamepads\00", [38 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"eQUAD nano Lite\00", [16 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"eQUAD Lightspeed 1\00", [45 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"eQUAD Lightspeed 1.1\00", [43 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"eQUAD Lightspeed 1.2\00", [43 x i8] zeroinitializer }, align 32
@logi_hidpp_recv_queue_notif._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.135, ptr @.str.4, i32 1088, ptr @.str.92, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"unusable device of type %s (0x%02x) connected on slot %d\00", [39 x i8] zeroinitializer }, align 32
@logi_hidpp_recv_queue_notif._entry_ptr.150 = internal global ptr @logi_hidpp_recv_queue_notif._entry.148, section ".printk_index", align 4
@logi_hidpp_recv_queue_notif._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.135, ptr @.str.4, i32 1094, ptr @.str.136, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"device of type %s (0x%02x) connected on slot %d\00", [48 x i8] zeroinitializer }, align 32
@logi_hidpp_recv_queue_notif._entry_ptr.153 = internal global ptr @logi_hidpp_recv_queue_notif._entry.151, section ".printk_index", align 4
@logi_hidpp_dev_conn_notif_27mhz._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.155, ptr @.str.4, i32 989, ptr @.str.136, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Keyboard connection is encrypted\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"logi_hidpp_dev_conn_notif_27mhz\00", [32 x i8] zeroinitializer }, align 32
@logi_hidpp_dev_conn_notif_27mhz._entry_ptr = internal global ptr @logi_hidpp_dev_conn_notif_27mhz._entry, section ".printk_index", align 4
@logi_hidpp_dev_conn_notif_27mhz._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.155, ptr @.str.4, i32 991, ptr @.str.92, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Keyboard events are send over the air in plain-text / unencrypted\0A\00", [61 x i8] zeroinitializer }, align 32
@logi_hidpp_dev_conn_notif_27mhz._entry_ptr.158 = internal global ptr @logi_hidpp_dev_conn_notif_27mhz._entry.156, section ".printk_index", align 4
@logi_hidpp_dev_conn_notif_27mhz._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.155, ptr @.str.4, i32 992, ptr @.str.92, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"See: https://gitlab.freedesktop.org/jwrdegoede/logitech-27mhz-keyboard-encryption-setup/\0A\00", [38 x i8] zeroinitializer }, align 32
@logi_hidpp_dev_conn_notif_27mhz._entry_ptr.161 = internal global ptr @logi_hidpp_dev_conn_notif_27mhz._entry.159, section ".printk_index", align 4
@logi_hidpp_dev_conn_notif_27mhz._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.155, ptr @.str.4, i32 1002, ptr @.str.92, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: unexpected device-index %d\00", [33 x i8] zeroinitializer }, align 32
@logi_hidpp_dev_conn_notif_27mhz._entry_ptr.164 = internal global ptr @logi_hidpp_dev_conn_notif_27mhz._entry.162, section ".printk_index", align 4
@logi_dj_reset_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.165, ptr @.str.4, i32 1891, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"logi_dj_reset_resume\00", [43 x i8] zeroinitializer }, align 32
@logi_dj_reset_resume._entry_ptr = internal global ptr @logi_dj_reset_resume._entry, section ".printk_index", align 4
@switch.table.logi_dj_probe = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 3, i32 2, i32 3, i32 2, i32 2, i32 2, i32 2], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 65538, i64 65542]
@__sancov_gen_cov_switch_values.166 = internal global [6 x i64] [i64 4, i64 8, i64 16, i64 17, i64 32, i64 33]
@__sancov_gen_cov_switch_values.167 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 255]
@__sancov_gen_cov_switch_values.168 = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.169 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.170 = internal global [6 x i64] [i64 4, i64 8, i64 14, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.171 = internal global [5 x i64] [i64 3, i64 8, i64 64, i64 65, i64 66]
@__sancov_gen_cov_switch_values.172 = internal global [15 x i64] [i64 13, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 10, i64 12, i64 13, i64 15, i64 17]
@__sancov_gen_cov_switch_values.173 = internal global [4 x i64] [i64 2, i64 4, i64 1, i64 2]
@__sancov_gen_cov_switch_values.174 = internal global [4 x i64] [i64 2, i64 16, i64 45833, i64 45836]
@__sancov_gen_cov_switch_values.175 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.176 = internal global [4 x i64] [i64 2, i64 4, i64 1, i64 2]
@__sancov_gen_cov_switch_values.177 = internal global [4 x i64] [i64 2, i64 16, i64 45833, i64 45836]
@__sancov_gen_cov_switch_values.178 = internal global [4 x i64] [i64 2, i64 4, i64 1, i64 2]
@__sancov_gen_cov_switch_values.179 = internal global [4 x i64] [i64 2, i64 16, i64 45833, i64 45836]
@__sancov_gen_cov_switch_values.180 = internal global [4 x i64] [i64 2, i64 4, i64 1, i64 2]
@__sancov_gen_cov_switch_values.181 = internal global [4 x i64] [i64 2, i64 16, i64 45833, i64 45836]
@__sancov_gen_cov_switch_values.182 = internal global [4 x i64] [i64 2, i64 4, i64 1, i64 2]
@__sancov_gen_cov_switch_values.183 = internal global [4 x i64] [i64 2, i64 16, i64 45833, i64 45836]
@__sancov_gen_cov_switch_values.184 = internal global [4 x i64] [i64 2, i64 4, i64 1, i64 2]
@__sancov_gen_cov_switch_values.185 = internal global [4 x i64] [i64 2, i64 16, i64 45833, i64 45836]
@__sancov_gen_cov_switch_values.186 = internal global [4 x i64] [i64 2, i64 4, i64 1, i64 2]
@__sancov_gen_cov_switch_values.187 = internal global [4 x i64] [i64 2, i64 16, i64 45833, i64 45836]
@__sancov_gen_cov_switch_values.188 = internal global [4 x i64] [i64 2, i64 4, i64 1, i64 2]
@__sancov_gen_cov_switch_values.189 = internal global [4 x i64] [i64 2, i64 16, i64 45833, i64 45836]
@__sancov_gen_cov_switch_values.190 = internal global [4 x i64] [i64 2, i64 4, i64 1, i64 2]
@__sancov_gen_cov_switch_values.191 = internal global [4 x i64] [i64 2, i64 16, i64 45833, i64 45836]
@__sancov_gen_cov_switch_values.192 = internal global [4 x i64] [i64 2, i64 8, i64 64, i64 65]
@___asan_gen_.193 = private unnamed_addr constant [23 x i8] c"logi_djreceiver_driver\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 2034, i32 26 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 2045, i32 1 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 2035, i32 10 }
@___asan_gen_.202 = private unnamed_addr constant [18 x i8] c"logi_dj_receivers\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1944, i32 35 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1762, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1818, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1829, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1836, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1845, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1859, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant [18 x i8] c"dj_hdev_list_lock\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 653, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 654, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant [13 x i8] c"dj_hdev_list\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 562, i32 8 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 563, i32 8 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 810, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 819, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 847, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 852, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 720, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 726, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant [18 x i8] c"logi_dj_ll_driver\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1509, i32 29 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 738, i32 26 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 741, i32 25 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 742, i32 25 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 743, i32 25 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 744, i32 25 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 745, i32 25 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 746, i32 25 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 747, i32 25 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 750, i32 4 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 754, i32 4 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 764, i32 35 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 770, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 785, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1492, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1498, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1320, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1327, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1414, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1424, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant [15 x i8] c"kbd_descriptor\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 178, i32 19 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1430, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant [24 x i8] c"mse_high_res_descriptor\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 381, i32 19 }
@___asan_gen_.418 = private unnamed_addr constant [21 x i8] c"mse_27mhz_descriptor\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 253, i32 19 }
@___asan_gen_.421 = private unnamed_addr constant [25 x i8] c"mse_bluetooth_descriptor\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 291, i32 19 }
@___asan_gen_.424 = private unnamed_addr constant [15 x i8] c"mse_descriptor\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 215, i32 19 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1448, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant [26 x i8] c"mse5_bluetooth_descriptor\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 340, i32 19 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1455, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant [20 x i8] c"consumer_descriptor\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 419, i32 19 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1461, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant [22 x i8] c"syscontrol_descriptor\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 435, i32 19 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1467, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant [17 x i8] c"media_descriptor\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 454, i32 19 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1473, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1478, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant [17 x i8] c"hidpp_descriptor\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 470, i32 19 }
@___asan_gen_.478 = private unnamed_addr constant [23 x i8] c"unifying_pairing_query\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1334, i32 11 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1375, i32 4 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 697, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1198, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant [23 x i8] c"../include/linux/hid.h\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 963, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant [9 x i8] c"template\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1212, i32 18 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1905, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1671, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1714, i32 4 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1720, i32 4 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1726, i32 4 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1732, i32 4 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1165, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1182, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1152, i32 3 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1553, i32 4 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1119, i32 5 }
@___asan_gen_.607 = private unnamed_addr constant [22 x i8] c"hid_reportid_size_map\00", align 1
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 546, i32 17 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1136, i32 3 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1143, i32 3 }
@___asan_gen_.622 = private unnamed_addr constant [24 x i8] c"unifying_pairing_answer\00", align 1
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1338, i32 11 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1625, i32 3 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1011, i32 28 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1019, i32 17 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1024, i32 4 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1030, i32 17 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1034, i32 17 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1038, i32 17 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1042, i32 17 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1045, i32 17 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1049, i32 17 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1054, i32 17 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1057, i32 17 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1061, i32 17 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1066, i32 17 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1072, i32 17 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1084, i32 3 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1092, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 989, i32 4 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 991, i32 4 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 992, i32 4 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1001, i32 3 }
@___asan_gen_.721 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.724 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.725 = private constant [33 x i8] c"../drivers/hid/hid-logitech-dj.c\00", align 1
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 1890, i32 3 }
@___asan_gen_.727 = private unnamed_addr constant [27 x i8] c"switch.table.logi_dj_probe\00", align 1
@llvm.compiler.used = appending global [240 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_logi_djreceiver_driver_exit, ptr @__initcall__kmod_hid_logitech_dj__237_2045_logi_djreceiver_driver_init6, ptr @delayedwork_callback._entry, ptr @delayedwork_callback._entry.29, ptr @delayedwork_callback._entry.32, ptr @delayedwork_callback._entry.35, ptr @delayedwork_callback._entry_ptr, ptr @delayedwork_callback._entry_ptr.31, ptr @delayedwork_callback._entry_ptr.34, ptr @delayedwork_callback._entry_ptr.37, ptr @hid_device_io_start._entry, ptr @hid_device_io_start._entry_ptr, ptr @logi_dj_dj_event._entry, ptr @logi_dj_dj_event._entry_ptr, ptr @logi_dj_hidpp_event._entry, ptr @logi_dj_hidpp_event._entry_ptr, ptr @logi_dj_ll_close._entry, ptr @logi_dj_ll_close._entry_ptr, ptr @logi_dj_ll_open._entry, ptr @logi_dj_ll_open._entry_ptr, ptr @logi_dj_ll_parse._entry, ptr @logi_dj_ll_parse._entry.66, ptr @logi_dj_ll_parse._entry.69, ptr @logi_dj_ll_parse._entry.72, ptr @logi_dj_ll_parse._entry.75, ptr @logi_dj_ll_parse._entry.78, ptr @logi_dj_ll_parse._entry.81, ptr @logi_dj_ll_parse._entry.84, ptr @logi_dj_ll_parse._entry.87, ptr @logi_dj_ll_parse._entry_ptr, ptr @logi_dj_ll_parse._entry_ptr.68, ptr @logi_dj_ll_parse._entry_ptr.71, ptr @logi_dj_ll_parse._entry_ptr.74, ptr @logi_dj_ll_parse._entry_ptr.77, ptr @logi_dj_ll_parse._entry_ptr.80, ptr @logi_dj_ll_parse._entry_ptr.83, ptr @logi_dj_ll_parse._entry_ptr.86, ptr @logi_dj_ll_parse._entry_ptr.89, ptr @logi_dj_ll_raw_request._entry, ptr @logi_dj_ll_raw_request._entry_ptr, ptr @logi_dj_ll_start._entry, ptr @logi_dj_ll_start._entry_ptr, ptr @logi_dj_ll_stop._entry, ptr @logi_dj_ll_stop._entry_ptr, ptr @logi_dj_probe._entry, ptr @logi_dj_probe._entry.10, ptr @logi_dj_probe._entry.13, ptr @logi_dj_probe._entry.16, ptr @logi_dj_probe._entry.19, ptr @logi_dj_probe._entry.7, ptr @logi_dj_probe._entry_ptr, ptr @logi_dj_probe._entry_ptr.12, ptr @logi_dj_probe._entry_ptr.15, ptr @logi_dj_probe._entry_ptr.18, ptr @logi_dj_probe._entry_ptr.21, ptr @logi_dj_probe._entry_ptr.9, ptr @logi_dj_raw_event._entry, ptr @logi_dj_raw_event._entry.103, ptr @logi_dj_raw_event._entry.106, ptr @logi_dj_raw_event._entry.109, ptr @logi_dj_raw_event._entry.112, ptr @logi_dj_raw_event._entry_ptr, ptr @logi_dj_raw_event._entry_ptr.105, ptr @logi_dj_raw_event._entry_ptr.108, ptr @logi_dj_raw_event._entry_ptr.111, ptr @logi_dj_raw_event._entry_ptr.114, ptr @logi_dj_recv_add_djhid_device._entry, ptr @logi_dj_recv_add_djhid_device._entry.40, ptr @logi_dj_recv_add_djhid_device._entry.54, ptr @logi_dj_recv_add_djhid_device._entry.57, ptr @logi_dj_recv_add_djhid_device._entry_ptr, ptr @logi_dj_recv_add_djhid_device._entry_ptr.42, ptr @logi_dj_recv_add_djhid_device._entry_ptr.56, ptr @logi_dj_recv_add_djhid_device._entry_ptr.59, ptr @logi_dj_recv_destroy_djhid_device._entry, ptr @logi_dj_recv_destroy_djhid_device._entry_ptr, ptr @logi_dj_recv_forward_dj._entry, ptr @logi_dj_recv_forward_dj._entry.129, ptr @logi_dj_recv_forward_dj._entry_ptr, ptr @logi_dj_recv_forward_dj._entry_ptr.130, ptr @logi_dj_recv_forward_input_report._entry, ptr @logi_dj_recv_forward_input_report._entry.117, ptr @logi_dj_recv_forward_input_report._entry_ptr, ptr @logi_dj_recv_forward_input_report._entry_ptr.119, ptr @logi_dj_recv_forward_null_report._entry, ptr @logi_dj_recv_forward_null_report._entry_ptr, ptr @logi_dj_recv_forward_report._entry, ptr @logi_dj_recv_forward_report._entry_ptr, ptr @logi_dj_recv_send_report._entry, ptr @logi_dj_recv_send_report._entry_ptr, ptr @logi_dj_remove._entry, ptr @logi_dj_remove._entry_ptr, ptr @logi_dj_reset_resume._entry, ptr @logi_dj_reset_resume._entry_ptr, ptr @logi_djreceiver_driver_exit, ptr @logi_hidpp_dev_conn_notif_27mhz._entry, ptr @logi_hidpp_dev_conn_notif_27mhz._entry.156, ptr @logi_hidpp_dev_conn_notif_27mhz._entry.159, ptr @logi_hidpp_dev_conn_notif_27mhz._entry.162, ptr @logi_hidpp_dev_conn_notif_27mhz._entry_ptr, ptr @logi_hidpp_dev_conn_notif_27mhz._entry_ptr.158, ptr @logi_hidpp_dev_conn_notif_27mhz._entry_ptr.161, ptr @logi_hidpp_dev_conn_notif_27mhz._entry_ptr.164, ptr @logi_hidpp_recv_queue_notif._entry, ptr @logi_hidpp_recv_queue_notif._entry.148, ptr @logi_hidpp_recv_queue_notif._entry.151, ptr @logi_hidpp_recv_queue_notif._entry_ptr, ptr @logi_hidpp_recv_queue_notif._entry_ptr.150, ptr @logi_hidpp_recv_queue_notif._entry_ptr.153, ptr @logi_djreceiver_driver, ptr @.str, ptr @.str.1, ptr @logi_dj_receivers, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @dj_hdev_list_lock, ptr @dj_get_receiver_dev.__key, ptr @.str.22, ptr @dj_get_receiver_dev.__key.23, ptr @.str.24, ptr @dj_hdev_list, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @logi_dj_ll_driver, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @kbd_descriptor, ptr @.str.70, ptr @mse_high_res_descriptor, ptr @mse_27mhz_descriptor, ptr @mse_bluetooth_descriptor, ptr @mse_descriptor, ptr @.str.73, ptr @mse5_bluetooth_descriptor, ptr @.str.76, ptr @consumer_descriptor, ptr @.str.79, ptr @syscontrol_descriptor, ptr @.str.82, ptr @media_descriptor, ptr @.str.85, ptr @.str.88, ptr @hidpp_descriptor, ptr @unifying_pairing_query, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @logi_dj_recv_query_hidpp_devices.template, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @hid_reportid_size_map, ptr @.str.127, ptr @.str.128, ptr @unifying_pairing_answer, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.149, ptr @.str.152, ptr @.str.154, ptr @.str.155, ptr @.str.157, ptr @.str.160, ptr @.str.163, ptr @.str.165, ptr @switch.table.logi_dj_probe], section "llvm.metadata"
@0 = internal global [179 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_djreceiver_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_receivers to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dj_hdev_list_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dj_get_receiver_dev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dj_get_receiver_dev.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dj_hdev_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delayedwork_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delayedwork_callback._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delayedwork_callback._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delayedwork_callback._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_recv_add_djhid_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_recv_add_djhid_device._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_ll_driver to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_recv_add_djhid_device._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_recv_add_djhid_device._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_ll_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_ll_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_ll_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_ll_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_ll_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_ll_parse._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kbd_descriptor to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_ll_parse._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mse_high_res_descriptor to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mse_27mhz_descriptor to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mse_bluetooth_descriptor to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mse_descriptor to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_ll_parse._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mse5_bluetooth_descriptor to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_ll_parse._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @consumer_descriptor to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_ll_parse._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @syscontrol_descriptor to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_ll_parse._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @media_descriptor to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_ll_parse._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_ll_parse._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_descriptor to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unifying_pairing_query to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_ll_raw_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_recv_destroy_djhid_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_recv_send_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_device_io_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_recv_query_hidpp_devices.template to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_raw_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_raw_event._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_raw_event._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_raw_event._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_raw_event._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_recv_forward_input_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_recv_forward_input_report._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_recv_forward_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_dj_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_recv_forward_null_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_reportid_size_map to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_recv_forward_dj._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_recv_forward_dj._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unifying_pairing_answer to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_hidpp_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_hidpp_recv_queue_notif._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_hidpp_recv_queue_notif._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_hidpp_recv_queue_notif._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_hidpp_dev_conn_notif_27mhz._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_hidpp_dev_conn_notif_27mhz._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_hidpp_dev_conn_notif_27mhz._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_hidpp_dev_conn_notif_27mhz._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logi_dj_reset_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.logi_dj_probe to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @logi_djreceiver_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @logi_djreceiver_driver, ptr noundef null, ptr noundef nonnull @.str) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @logi_djreceiver_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @hid_unregister_driver(ptr noundef nonnull @logi_djreceiver_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @logi_dj_probe(ptr noundef %hdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @hid_open_report(ptr noundef %hdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data = getelementptr inbounds %struct.hid_device_id, ptr %id, i32 0, i32 4
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %2 = icmp ult i32 %1, 7
  br i1 %2, label %switch.lookup, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.logi_dj_probe, i32 0, i32 %1
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end.sw.epilog_crit_edge
  %no_dj_interfaces.0 = phi i32 [ 0, %if.end.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %ll_driver.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 20
  %4 = ptrtoint ptr %ll_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ll_driver.i.i, align 4
  %cmp.i.i = icmp eq ptr %5, @usb_hid_driver
  br i1 %cmp.i.i, label %if.then9, label %sw.epilog.if.end16_crit_edge

sw.epilog.if.end16_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then9:                                         ; preds = %sw.epilog
  %parent = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 -32
  %tobool11.not = icmp eq ptr %add.ptr, null
  br i1 %tobool11.not, label %if.then9.if.end16_crit_edge, label %land.lhs.true

if.then9.if.end16_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

land.lhs.true:                                    ; preds = %if.then9
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 8
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bInterfaceNumber, align 2
  %conv = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %no_dj_interfaces.0, i32 %conv)
  %cmp.not = icmp ugt i32 %no_dj_interfaces.0, %conv
  br i1 %cmp.not, label %land.lhs.true.if.end16_crit_edge, label %if.then13

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %quirks = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 34
  %12 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %quirks, align 8
  %or = or i32 %13, 2048
  store i32 %or, ptr %quirks, align 8
  %call14 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 45) #11
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %if.then9.if.end16_crit_edge, %sw.epilog.if.end16_crit_edge
  %report_enum = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 15
  %report_list = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 15, i32 0, i32 1
  %14 = ptrtoint ptr %report_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %report_list, align 4
  %cmp.i.not = icmp eq ptr %15, %report_list
  br i1 %cmp.i.not, label %if.end16.cleanup_crit_edge, label %for.cond.preheader

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end16
  %16 = ptrtoint ptr %report_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %rep.0182 = load ptr, ptr %report_list, align 4
  %cmp26.not183 = icmp eq ptr %rep.0182, %report_list
  br i1 %cmp26.not183, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %rep.0185 = phi ptr [ %rep.0, %for.body.for.body_crit_edge ], [ %rep.0182, %for.cond.preheader.for.body_crit_edge ]
  %has_hidpp.0.off0184 = phi i1 [ %spec.select, %for.body.for.body_crit_edge ], [ false, %for.cond.preheader.for.body_crit_edge ]
  %application = getelementptr inbounds %struct.hid_report, ptr %rep.0185, i32 0, i32 4
  %17 = ptrtoint ptr %application to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %application, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777215, i32 %18)
  %cmp28 = icmp eq i32 %18, -16777215
  %spec.select = select i1 %cmp28, i1 true, i1 %has_hidpp.0.off0184
  %19 = ptrtoint ptr %rep.0185 to i32
  call void @__asan_load4_noabort(i32 %19)
  %rep.0 = load ptr, ptr %rep.0185, align 4
  %cmp26.not = icmp eq ptr %rep.0, %report_list
  br i1 %cmp26.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %has_hidpp.0.off0.lcssa = phi i1 [ false, %for.cond.preheader.for.end_crit_edge ], [ %spec.select, %for.body.for.end_crit_edge ]
  %has_hidpp.0.off0.not = xor i1 %has_hidpp.0.off0.lcssa, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp40 = icmp eq i32 %1, 0
  %or.cond = select i1 %has_hidpp.0.off0.not, i1 %cmp40, i1 false
  br i1 %or.cond, label %for.end.cleanup_crit_edge, label %if.end43

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end43:                                         ; preds = %for.end
  %application50 = getelementptr inbounds %struct.hid_report, ptr %15, i32 0, i32 4
  %20 = ptrtoint ptr %application50 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %application50, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @dj_hdev_list_lock, i32 noundef 0) #11
  %22 = add i32 %1, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %23 = icmp ult i32 %22, 2
  %conv.i.i = select i1 %23, i8 46, i8 47
  %.pn69.i.i = load ptr, ptr @dj_hdev_list, align 4
  %cmp.not71.i.i = icmp eq ptr %.pn69.i.i, @dj_hdev_list
  br i1 %cmp.not71.i.i, label %if.end43.if.then.i_crit_edge, label %if.end43.for.body.i.i_crit_edge

if.end43.for.body.i.i_crit_edge:                  ; preds = %if.end43
  br label %for.body.i.i

if.end43.if.then.i_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end43.for.body.i.i_crit_edge
  %.pn72.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn69.i.i, %if.end43.for.body.i.i_crit_edge ]
  %djrcv_dev.073.i.i = getelementptr i8, ptr %.pn72.i.i, i32 -44
  %24 = ptrtoint ptr %djrcv_dev.073.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %djrcv_dev.073.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %call3.i.i = tail call zeroext i1 @hid_compare_device_paths(ptr noundef %hdev, ptr noundef nonnull %25, i8 noundef zeroext %conv.i.i) #11
  br i1 %call3.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %kref.i.i = getelementptr i8, ptr %.pn72.i.i, i32 8
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %kref.i.i, i32 1, i32 3, i32 1) #11
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i, ptr %kref.i.i, i32 1, ptr elementtype(i32) %kref.i.i) #11, !srcloc !353
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !354

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %27 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %.not.i.i.i.i.i.i = icmp sgt i32 %27, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.dj_find_receiver_dev.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !355

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.dj_find_receiver_dev.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dj_find_receiver_dev.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i.i, i32 noundef %.sink.i.i.i.i.i.i) #11
  br label %dj_find_receiver_dev.exit.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %for.body.i.i.if.end.i.i_crit_edge
  %keyboard.i.i = getelementptr i8, ptr %.pn72.i.i, i32 -40
  %28 = ptrtoint ptr %keyboard.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %keyboard.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %29, null
  br i1 %tobool5.not.i.i, label %if.end.i.i.if.end12.i.i_crit_edge, label %land.lhs.true6.i.i

if.end.i.i.if.end12.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i.i

land.lhs.true6.i.i:                               ; preds = %if.end.i.i
  %call8.i.i = tail call zeroext i1 @hid_compare_device_paths(ptr noundef %hdev, ptr noundef nonnull %29, i8 noundef zeroext %conv.i.i) #11
  br i1 %call8.i.i, label %if.then10.i.i, label %land.lhs.true6.i.i.if.end12.i.i_crit_edge

land.lhs.true6.i.i.if.end12.i.i_crit_edge:        ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i.i

if.then10.i.i:                                    ; preds = %land.lhs.true6.i.i
  %kref11.i.i = getelementptr i8, ptr %.pn72.i.i, i32 8
  %call.i.i.i.i.i.i45.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref11.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %kref11.i.i, i32 1, i32 3, i32 1) #11
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref11.i.i, ptr %kref11.i.i, i32 1, ptr elementtype(i32) %kref11.i.i) #11, !srcloc !353
  %asmresult.i.i.i.i.i.i46.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i46.i.i)
  %tobool1.not.i.i.i.i47.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i46.i.i, 0
  br i1 %tobool1.not.i.i.i.i47.i.i, label %if.then10.i.i.if.end15.sink.split.i.i.i.i52.i.i_crit_edge, label %if.else.i.i.i.i50.i.i, !prof !354

if.then10.i.i.if.end15.sink.split.i.i.i.i52.i.i_crit_edge: ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i52.i.i

if.else.i.i.i.i50.i.i:                            ; preds = %if.then10.i.i
  %add.i.i.i.i48.i.i = add i32 %asmresult.i.i.i.i.i.i46.i.i, 1
  %31 = or i32 %add.i.i.i.i48.i.i, %asmresult.i.i.i.i.i.i46.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %.not.i.i.i.i49.i.i = icmp sgt i32 %31, -1
  br i1 %.not.i.i.i.i49.i.i, label %if.else.i.i.i.i50.i.i.dj_find_receiver_dev.exit.i_crit_edge, label %if.else.i.i.i.i50.i.i.if.end15.sink.split.i.i.i.i52.i.i_crit_edge, !prof !355

if.else.i.i.i.i50.i.i.if.end15.sink.split.i.i.i.i52.i.i_crit_edge: ; preds = %if.else.i.i.i.i50.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i52.i.i

if.else.i.i.i.i50.i.i.dj_find_receiver_dev.exit.i_crit_edge: ; preds = %if.else.i.i.i.i50.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dj_find_receiver_dev.exit.i

if.end15.sink.split.i.i.i.i52.i.i:                ; preds = %if.else.i.i.i.i50.i.i.if.end15.sink.split.i.i.i.i52.i.i_crit_edge, %if.then10.i.i.if.end15.sink.split.i.i.i.i52.i.i_crit_edge
  %.sink.i.i.i.i51.i.i = phi i32 [ 2, %if.then10.i.i.if.end15.sink.split.i.i.i.i52.i.i_crit_edge ], [ 1, %if.else.i.i.i.i50.i.i.if.end15.sink.split.i.i.i.i52.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref11.i.i, i32 noundef %.sink.i.i.i.i51.i.i) #11
  br label %dj_find_receiver_dev.exit.i

if.end12.i.i:                                     ; preds = %land.lhs.true6.i.i.if.end12.i.i_crit_edge, %if.end.i.i.if.end12.i.i_crit_edge
  %hidpp.i.i = getelementptr i8, ptr %.pn72.i.i, i32 -36
  %32 = ptrtoint ptr %hidpp.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hidpp.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %33, null
  br i1 %tobool13.not.i.i, label %if.end12.i.i.for.inc.i.i_crit_edge, label %land.lhs.true14.i.i

if.end12.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true14.i.i:                              ; preds = %if.end12.i.i
  %call16.i.i = tail call zeroext i1 @hid_compare_device_paths(ptr noundef %hdev, ptr noundef nonnull %33, i8 noundef zeroext %conv.i.i) #11
  br i1 %call16.i.i, label %if.then18.i.i, label %land.lhs.true14.i.i.for.inc.i.i_crit_edge

land.lhs.true14.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then18.i.i:                                    ; preds = %land.lhs.true14.i.i
  %kref19.i.i = getelementptr i8, ptr %.pn72.i.i, i32 8
  %call.i.i.i.i.i.i54.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref19.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %kref19.i.i, i32 1, i32 3, i32 1) #11
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref19.i.i, ptr %kref19.i.i, i32 1, ptr elementtype(i32) %kref19.i.i) #11, !srcloc !353
  %asmresult.i.i.i.i.i.i55.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i55.i.i)
  %tobool1.not.i.i.i.i56.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i55.i.i, 0
  br i1 %tobool1.not.i.i.i.i56.i.i, label %if.then18.i.i.if.end15.sink.split.i.i.i.i61.i.i_crit_edge, label %if.else.i.i.i.i59.i.i, !prof !354

if.then18.i.i.if.end15.sink.split.i.i.i.i61.i.i_crit_edge: ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i61.i.i

if.else.i.i.i.i59.i.i:                            ; preds = %if.then18.i.i
  %add.i.i.i.i57.i.i = add i32 %asmresult.i.i.i.i.i.i55.i.i, 1
  %35 = or i32 %add.i.i.i.i57.i.i, %asmresult.i.i.i.i.i.i55.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %.not.i.i.i.i58.i.i = icmp sgt i32 %35, -1
  br i1 %.not.i.i.i.i58.i.i, label %if.else.i.i.i.i59.i.i.dj_find_receiver_dev.exit.i_crit_edge, label %if.else.i.i.i.i59.i.i.if.end15.sink.split.i.i.i.i61.i.i_crit_edge, !prof !355

if.else.i.i.i.i59.i.i.if.end15.sink.split.i.i.i.i61.i.i_crit_edge: ; preds = %if.else.i.i.i.i59.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i61.i.i

if.else.i.i.i.i59.i.i.dj_find_receiver_dev.exit.i_crit_edge: ; preds = %if.else.i.i.i.i59.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dj_find_receiver_dev.exit.i

if.end15.sink.split.i.i.i.i61.i.i:                ; preds = %if.else.i.i.i.i59.i.i.if.end15.sink.split.i.i.i.i61.i.i_crit_edge, %if.then18.i.i.if.end15.sink.split.i.i.i.i61.i.i_crit_edge
  %.sink.i.i.i.i60.i.i = phi i32 [ 2, %if.then18.i.i.if.end15.sink.split.i.i.i.i61.i.i_crit_edge ], [ 1, %if.else.i.i.i.i59.i.i.if.end15.sink.split.i.i.i.i61.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref19.i.i, i32 noundef %.sink.i.i.i.i60.i.i) #11
  br label %dj_find_receiver_dev.exit.i

for.inc.i.i:                                      ; preds = %land.lhs.true14.i.i.for.inc.i.i_crit_edge, %if.end12.i.i.for.inc.i.i_crit_edge
  %36 = ptrtoint ptr %.pn72.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn.i.i = load ptr, ptr %.pn72.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @dj_hdev_list
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.then.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.if.then.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

dj_find_receiver_dev.exit.i:                      ; preds = %if.end15.sink.split.i.i.i.i61.i.i, %if.else.i.i.i.i59.i.i.dj_find_receiver_dev.exit.i_crit_edge, %if.end15.sink.split.i.i.i.i52.i.i, %if.else.i.i.i.i50.i.i.dj_find_receiver_dev.exit.i_crit_edge, %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.dj_find_receiver_dev.exit.i_crit_edge
  %djrcv_dev.073.i.i198 = getelementptr i8, ptr %.pn72.i.i, i32 -44
  %tobool.not.i = icmp eq ptr %djrcv_dev.073.i.i198, null
  br i1 %tobool.not.i, label %dj_find_receiver_dev.exit.i.if.then.i_crit_edge, label %dj_find_receiver_dev.exit.i.if.end19.i_crit_edge

dj_find_receiver_dev.exit.i.if.end19.i_crit_edge: ; preds = %dj_find_receiver_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

dj_find_receiver_dev.exit.i.if.then.i_crit_edge:  ; preds = %dj_find_receiver_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %dj_find_receiver_dev.exit.i.if.then.i_crit_edge, %for.inc.i.i.if.then.i_crit_edge, %if.end43.if.then.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3520, i32 noundef 180) #15
  %tobool2.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not.i, label %if.then.i.do.end57_crit_edge, label %do.body.i

if.then.i.do.end57_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end57

do.body.i:                                        ; preds = %if.then.i
  %work.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %call7.i.i.i, i32 0, i32 6
  tail call void @__init_work(ptr noundef %work.i, i32 noundef 0) #11
  %38 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -64, ptr %work.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %call7.i.i.i, i32 0, i32 6, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @dj_get_receiver_dev.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry7.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %call7.i.i.i, i32 0, i32 6, i32 1
  %39 = ptrtoint ptr %entry7.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %entry7.i, ptr %entry7.i, align 4
  %prev.i.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %call7.i.i.i, i32 0, i32 6, i32 1, i32 1
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %entry7.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %call7.i.i.i, i32 0, i32 6, i32 2
  %41 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @delayedwork_callback, ptr %func.i, align 4
  %lock.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %call7.i.i.i, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @dj_get_receiver_dev.__key.23, i16 noundef signext 3) #11
  %notif_fifo.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %call7.i.i.i, i32 0, i32 7
  %call13.i = tail call i32 @__kfifo_alloc(ptr noundef %notif_fifo.i, i32 noundef 128, i32 noundef 1, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool15.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.then16.i

if.then16.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %do.end57

if.end17.i:                                       ; preds = %do.body.i
  %kref.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %call7.i.i.i, i32 0, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #11
  %42 = ptrtoint ptr %kref.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile i32 1, ptr %kref.i, align 4
  %list.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %call7.i.i.i, i32 0, i32 4
  %43 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dj_hdev_list, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %43, ptr noundef nonnull @dj_hdev_list) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end17.i.list_add_tail.exit.i_crit_edge

if.end17.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %list.i, ptr getelementptr inbounds (%struct.list_head, ptr @dj_hdev_list, i32 0, i32 1), align 4
  %44 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @dj_hdev_list, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %45 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %43, ptr %prev3.i.i.i, align 8
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %list.i, ptr %43, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end17.i.list_add_tail.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %last_query.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %call7.i.i.i, i32 0, i32 8
  %48 = ptrtoint ptr %last_query.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %last_query.i, align 8
  %type18.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %call7.i.i.i, i32 0, i32 10
  %49 = ptrtoint ptr %type18.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %1, ptr %type18.i, align 8
  br label %if.end19.i

if.end19.i:                                       ; preds = %list_add_tail.exit.i, %dj_find_receiver_dev.exit.i.if.end19.i_crit_edge
  %djrcv_dev.0.i = phi ptr [ %djrcv_dev.073.i.i198, %dj_find_receiver_dev.exit.i.if.end19.i_crit_edge ], [ %call7.i.i.i, %list_add_tail.exit.i ]
  %50 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %if.end19.i.if.end24.i_crit_edge [
    i32 65542, label %if.then20.i
    i32 65538, label %if.end19.i.if.end24.sink.split.i_crit_edge
  ]

if.end19.i.if.end24.sink.split.i_crit_edge:       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.sink.split.i

if.end19.i.if.end24.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

if.then20.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  %keyboard.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %djrcv_dev.0.i, i32 0, i32 1
  br label %if.end24.sink.split.i

if.end24.sink.split.i:                            ; preds = %if.then20.i, %if.end19.i.if.end24.sink.split.i_crit_edge
  %keyboard.sink.i = phi ptr [ %keyboard.i, %if.then20.i ], [ %djrcv_dev.0.i, %if.end19.i.if.end24.sink.split.i_crit_edge ]
  %51 = ptrtoint ptr %keyboard.sink.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %hdev, ptr %keyboard.sink.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.end24.sink.split.i, %if.end19.i.if.end24.i_crit_edge
  br i1 %has_hidpp.0.off0.lcssa, label %if.then26.i, label %if.end24.i.if.end59_crit_edge

if.end24.i.if.end59_crit_edge:                    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.then26.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  %hidpp.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %djrcv_dev.0.i, i32 0, i32 2
  %52 = ptrtoint ptr %hidpp.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %hdev, ptr %hidpp.i, align 4
  br label %if.end59

do.end57:                                         ; preds = %if.then16.i, %if.then.i.do.end57_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @dj_hdev_list_lock) #11
  %dev58 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev58, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3) #14
  br label %cleanup

if.end59:                                         ; preds = %if.then26.i, %if.end24.i.if.end59_crit_edge
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %53 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %djrcv_dev.0.i, ptr %driver_data.i.i.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @dj_hdev_list_lock) #11
  %54 = ptrtoint ptr %report_enum to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %report_enum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool60.not = icmp eq i32 %55, 0
  br i1 %tobool60.not, label %if.then61, label %if.end59.if.end63_crit_edge

if.end59.if.end63_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.then61:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %application50 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %application50, align 4
  %unnumbered_application = getelementptr inbounds %struct.dj_receiver_dev, ptr %djrcv_dev.0.i, i32 0, i32 11
  %58 = ptrtoint ptr %unnumbered_application to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %unnumbered_application, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.end59.if.end63_crit_edge
  %call64 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end71, label %do.end69

do.end69:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  %dev70 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev70, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3) #14
  br label %hid_hw_start_fail

if.end71:                                         ; preds = %if.end63
  br i1 %has_hidpp.0.off0.lcssa, label %if.then73, label %if.end71.if.end83_crit_edge

if.end71.if.end83_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end83

if.then73:                                        ; preds = %if.end71
  %call74 = tail call fastcc i32 @logi_dj_recv_switch_to_dj_mode(ptr noundef nonnull %djrcv_dev.0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %do.end80, label %if.then73.if.end83_crit_edge

if.then73.if.end83_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end83

do.end80:                                         ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #13
  %dev81 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev81, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.3, i32 noundef %call74) #14
  br label %switch_to_dj_mode_fail

if.end83:                                         ; preds = %if.then73.if.end83_crit_edge, %if.end71.if.end83_crit_edge
  %call84 = tail call i32 @hid_hw_open(ptr noundef %hdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %do.end90, label %if.end92

do.end90:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  %dev91 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev91, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.3, i32 noundef %call84) #14
  br label %switch_to_dj_mode_fail

if.end92:                                         ; preds = %if.end83
  %io_started.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 35
  %59 = ptrtoint ptr %io_started.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %io_started.i, align 4, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.i171 = icmp eq i8 %60, 0
  br i1 %tobool.not.i171, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.97) #14
  br label %hid_device_io_start.exit

if.end.i:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %io_started.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %io_started.i, align 4
  %driver_input_lock.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 17
  tail call void @up(ptr noundef %driver_input_lock.i) #11
  br label %hid_device_io_start.exit

hid_device_io_start.exit:                         ; preds = %if.end.i, %do.end.i
  br i1 %has_hidpp.0.off0.lcssa, label %do.body96, label %hid_device_io_start.exit.cleanup_crit_edge

hid_device_io_start.exit.cleanup_crit_edge:       ; preds = %hid_device_io_start.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body96:                                        ; preds = %hid_device_io_start.exit
  %lock = getelementptr inbounds %struct.dj_receiver_dev, ptr %djrcv_dev.0.i, i32 0, i32 12
  %call101 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %ready = getelementptr inbounds %struct.dj_receiver_dev, ptr %djrcv_dev.0.i, i32 0, i32 9
  %62 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %ready, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call101) #11
  %call107 = tail call fastcc i32 @logi_dj_recv_query_paired_devices(ptr noundef nonnull %djrcv_dev.0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %cmp108 = icmp slt i32 %call107, 0
  br i1 %cmp108, label %do.end113, label %do.body96.cleanup_crit_edge

do.body96.cleanup_crit_edge:                      ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end113:                                        ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #13
  %dev114 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev114, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.3, i32 noundef %call107) #14
  br label %cleanup

switch_to_dj_mode_fail:                           ; preds = %do.end90, %do.end80
  %retval1.0 = phi i32 [ %call74, %do.end80 ], [ %call84, %do.end90 ]
  tail call void @hid_hw_stop(ptr noundef %hdev) #11
  br label %hid_hw_start_fail

hid_hw_start_fail:                                ; preds = %switch_to_dj_mode_fail, %do.end69
  %retval1.1 = phi i32 [ %call64, %do.end69 ], [ %retval1.0, %switch_to_dj_mode_fail ]
  tail call fastcc void @dj_put_receiver_dev(ptr noundef %hdev)
  br label %cleanup

cleanup:                                          ; preds = %hid_hw_start_fail, %do.end113, %do.body96.cleanup_crit_edge, %hid_device_io_start.exit.cleanup_crit_edge, %do.end57, %for.end.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.then13, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call14, %if.then13 ], [ %retval1.1, %hid_hw_start_fail ], [ -12, %do.end57 ], [ -19, %if.end16.cleanup_crit_edge ], [ 0, %do.body96.cleanup_crit_edge ], [ 0, %do.end113 ], [ 0, %hid_device_io_start.exit.cleanup_crit_edge ], [ -19, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @logi_dj_remove(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %2 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.100) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %if.then6, label %do.body9

if.then6:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @hid_hw_stop(ptr noundef %hdev) #11
  br label %cleanup

do.body9:                                         ; preds = %do.end4
  %lock = getelementptr inbounds %struct.dj_receiver_dev, ptr %1, i32 0, i32 12
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %ready = getelementptr inbounds %struct.dj_receiver_dev, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %ready, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #11
  %work = getelementptr inbounds %struct.dj_receiver_dev, ptr %1, i32 0, i32 6
  %call18 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #11
  tail call void @hid_hw_close(ptr noundef %hdev) #11
  tail call void @hid_hw_stop(ptr noundef %hdev) #11
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %arrayidx = getelementptr %struct.dj_receiver_dev, ptr %1, i32 0, i32 3, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  store ptr null, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call30) #11
  %cmp38.not = icmp eq ptr %5, null
  br i1 %cmp38.not, label %do.body9.for.inc_crit_edge, label %if.then40

do.body9.for.inc_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then40:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  tail call void @hid_destroy_device(ptr noundef %7) #11
  tail call void @kfree(ptr noundef nonnull %5) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then40, %do.body9.for.inc_crit_edge
  %call30.1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %arrayidx.1 = getelementptr %struct.dj_receiver_dev, ptr %1, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  store ptr null, ptr %arrayidx.1, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call30.1) #11
  %cmp38.not.1 = icmp eq ptr %9, null
  br i1 %cmp38.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then40.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.then40.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  tail call void @hid_destroy_device(ptr noundef %11) #11
  tail call void @kfree(ptr noundef nonnull %9) #11
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then40.1, %for.inc.for.inc.1_crit_edge
  %call30.2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %arrayidx.2 = getelementptr %struct.dj_receiver_dev, ptr %1, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.2, align 4
  store ptr null, ptr %arrayidx.2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call30.2) #11
  %cmp38.not.2 = icmp eq ptr %13, null
  br i1 %cmp38.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then40.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

if.then40.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  tail call void @hid_destroy_device(ptr noundef %15) #11
  tail call void @kfree(ptr noundef nonnull %13) #11
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then40.2, %for.inc.1.for.inc.2_crit_edge
  %call30.3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %arrayidx.3 = getelementptr %struct.dj_receiver_dev, ptr %1, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.3, align 4
  store ptr null, ptr %arrayidx.3, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call30.3) #11
  %cmp38.not.3 = icmp eq ptr %17, null
  br i1 %cmp38.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then40.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

if.then40.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  tail call void @hid_destroy_device(ptr noundef %19) #11
  tail call void @kfree(ptr noundef nonnull %17) #11
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then40.3, %for.inc.2.for.inc.3_crit_edge
  %call30.4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %arrayidx.4 = getelementptr %struct.dj_receiver_dev, ptr %1, i32 0, i32 3, i32 4
  %20 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.4, align 4
  store ptr null, ptr %arrayidx.4, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call30.4) #11
  %cmp38.not.4 = icmp eq ptr %21, null
  br i1 %cmp38.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then40.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4

if.then40.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  tail call void @hid_destroy_device(ptr noundef %23) #11
  tail call void @kfree(ptr noundef nonnull %21) #11
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then40.4, %for.inc.3.for.inc.4_crit_edge
  %call30.5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %arrayidx.5 = getelementptr %struct.dj_receiver_dev, ptr %1, i32 0, i32 3, i32 5
  %24 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.5, align 4
  store ptr null, ptr %arrayidx.5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call30.5) #11
  %cmp38.not.5 = icmp eq ptr %25, null
  br i1 %cmp38.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then40.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.5

if.then40.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  tail call void @hid_destroy_device(ptr noundef %27) #11
  tail call void @kfree(ptr noundef nonnull %25) #11
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then40.5, %for.inc.4.for.inc.5_crit_edge
  %call30.6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %arrayidx.6 = getelementptr %struct.dj_receiver_dev, ptr %1, i32 0, i32 3, i32 6
  %28 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.6, align 4
  store ptr null, ptr %arrayidx.6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call30.6) #11
  %cmp38.not.6 = icmp eq ptr %29, null
  br i1 %cmp38.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then40.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.6

if.then40.6:                                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  tail call void @hid_destroy_device(ptr noundef %31) #11
  tail call void @kfree(ptr noundef nonnull %29) #11
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then40.6, %for.inc.5.for.inc.6_crit_edge
  %call30.7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %arrayidx.7 = getelementptr %struct.dj_receiver_dev, ptr %1, i32 0, i32 3, i32 7
  %32 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.7, align 4
  store ptr null, ptr %arrayidx.7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call30.7) #11
  %cmp38.not.7 = icmp eq ptr %33, null
  br i1 %cmp38.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then40.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.7

if.then40.7:                                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  tail call void @hid_destroy_device(ptr noundef %35) #11
  tail call void @kfree(ptr noundef nonnull %33) #11
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then40.7, %for.inc.6.for.inc.7_crit_edge
  tail call fastcc void @dj_put_receiver_dev(ptr noundef %hdev)
  br label %cleanup

cleanup:                                          ; preds = %for.inc.7, %if.then6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @logi_dj_raw_event(ptr noundef %hdev, ptr nocapture noundef readnone %report, ptr noundef %data, i32 noundef %size) #2 align 64 {
entry:
  %mouse_report = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %2 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.102, i32 noundef %size) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %do.end4.cleanup_crit_edge, label %if.end7

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  %report_enum = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 15
  %3 = ptrtoint ptr %report_enum to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %report_enum, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool8.not = icmp eq i32 %4, 0
  br i1 %tobool8.not, label %if.then9, label %if.end25

if.then9:                                         ; preds = %if.end7
  %unnumbered_application = getelementptr inbounds %struct.dj_receiver_dev, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %unnumbered_application to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %unnumbered_application, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65542, i32 %6)
  %cmp = icmp eq i32 %6, 65542
  br i1 %cmp, label %if.then10, label %if.then9.if.end17_crit_edge

if.then9.if.end17_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then10:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %data, align 1
  %arrayidx12 = getelementptr i8, ptr %data, i32 1
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx12, align 1
  store i8 1, ptr %data, align 1
  tail call fastcc void @logi_dj_recv_forward_input_report(ptr noundef %hdev, ptr noundef %data, i32 noundef %size)
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx12, align 1
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %data, align 1
  store i8 0, ptr %arrayidx12, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.then10, %if.then9.if.end17_crit_edge
  %13 = ptrtoint ptr %unnumbered_application to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %unnumbered_application, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65538, i32 %14)
  %cmp19 = icmp eq i32 %14, 65538
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %size)
  %cmp20 = icmp slt i32 %size, 9
  %or.cond = and i1 %cmp20, %cmp19
  br i1 %or.cond, label %if.then21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %mouse_report) #11
  %15 = getelementptr inbounds [9 x i8], ptr %mouse_report, i32 0, i32 1
  %16 = getelementptr inbounds i8, ptr %mouse_report, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 -1, ptr %16, align 1
  %18 = ptrtoint ptr %mouse_report to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %mouse_report, align 1
  %19 = call ptr @memcpy(ptr %15, ptr %data, i32 %size)
  %add = add nsw i32 %size, 1
  call fastcc void @logi_dj_recv_forward_input_report(ptr noundef %hdev, ptr noundef nonnull %mouse_report, i32 noundef %add)
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %mouse_report) #11
  br label %cleanup

if.end25:                                         ; preds = %if.end7
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %data, align 1
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.166)
  switch i8 %21, label %sw.epilog [
    i8 32, label %sw.bb
    i8 33, label %sw.bb35
    i8 16, label %sw.bb45
    i8 17, label %sw.bb55
  ]

sw.bb:                                            ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %size)
  %cmp27.not = icmp eq i32 %size, 15
  br i1 %cmp27.not, label %if.end33, label %do.end32

do.end32:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.104, i32 noundef %size) #14
  br label %cleanup

if.end33:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %call34 = tail call fastcc i32 @logi_dj_dj_event(ptr noundef %hdev, ptr noundef %data)
  br label %cleanup

sw.bb35:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %size)
  %cmp36.not = icmp eq i32 %size, 32
  br i1 %cmp36.not, label %if.end43, label %do.end41

do.end41:                                         ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #13
  %dev42 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42, ptr noundef nonnull @.str.107, i32 noundef %size) #14
  br label %cleanup

if.end43:                                         ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #13
  %call44 = tail call fastcc i32 @logi_dj_dj_event(ptr noundef %hdev, ptr noundef %data)
  br label %cleanup

sw.bb45:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size)
  %cmp46.not = icmp eq i32 %size, 7
  br i1 %cmp46.not, label %if.end53, label %do.end51

do.end51:                                         ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #13
  %dev52 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev52, ptr noundef nonnull @.str.110, i32 noundef %size) #14
  br label %cleanup

if.end53:                                         ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @logi_dj_hidpp_event(ptr noundef %hdev, ptr noundef %data, i32 noundef 7)
  br label %cleanup

sw.bb55:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %size)
  %cmp56.not = icmp eq i32 %size, 20
  br i1 %cmp56.not, label %if.end63, label %do.end61

do.end61:                                         ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #13
  %dev62 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev62, ptr noundef nonnull @.str.113, i32 noundef %size) #14
  br label %cleanup

if.end63:                                         ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @logi_dj_hidpp_event(ptr noundef %hdev, ptr noundef %data, i32 noundef 20)
  br label %cleanup

sw.epilog:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @logi_dj_recv_forward_input_report(ptr noundef %hdev, ptr noundef %data, i32 noundef %size)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end63, %do.end61, %if.end53, %do.end51, %if.end43, %do.end41, %if.end33, %do.end32, %if.then21, %if.end17.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 0, %do.end61 ], [ 0, %if.end63 ], [ 0, %do.end51 ], [ 0, %if.end53 ], [ 0, %do.end41 ], [ %call44, %if.end43 ], [ 0, %do.end32 ], [ %call34, %if.end33 ], [ 0, %do.end4.cleanup_crit_edge ], [ 0, %if.then21 ], [ 0, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @logi_dj_reset_resume(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %hidpp = getelementptr inbounds %struct.dj_receiver_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hidpp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hidpp, align 4
  %cmp.not = icmp eq ptr %3, %hdev
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call2 = tail call fastcc i32 @logi_dj_recv_switch_to_dj_mode(ptr noundef nonnull %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.165, i32 noundef %call2) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @logi_dj_recv_switch_to_dj_mode(ptr nocapture noundef readonly %djrcv_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hidpp = getelementptr inbounds %struct.dj_receiver_dev, ptr %djrcv_dev, i32 0, i32 2
  %0 = ptrtoint ptr %hidpp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hidpp, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 15) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.dj_receiver_dev, ptr %djrcv_dev, i32 0, i32 10
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then2, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 32, ptr %call7.i.i, align 8
  %device_index = getelementptr inbounds %struct.dj_report, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %device_index to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %device_index, align 1
  %report_type = getelementptr inbounds %struct.dj_report, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %report_type to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -128, ptr %report_type, align 2
  %report_params = getelementptr inbounds %struct.dj_report, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %report_params to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 63, ptr %report_params, align 1
  %arrayidx4 = getelementptr %struct.dj_report, ptr %call7.i.i, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx4, align 4
  %call5 = tail call fastcc i32 @logi_dj_recv_send_report(ptr noundef %djrcv_dev, ptr noundef nonnull %call7.i.i)
  tail call void @msleep(i32 noundef 50) #11
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  %retval1.0 = phi i32 [ %call5, %if.then2 ], [ 0, %if.end.if.end6_crit_edge ]
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 16, ptr %call7.i.i, align 8
  %arrayidx8 = getelementptr i8, ptr %call7.i.i, i32 1
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %arrayidx8, align 1
  %arrayidx9 = getelementptr i8, ptr %call7.i.i, i32 2
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -128, ptr %arrayidx9, align 2
  %arrayidx10 = getelementptr i8, ptr %call7.i.i, i32 3
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx10, align 1
  %arrayidx11 = getelementptr i8, ptr %call7.i.i, i32 4
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx11, align 4
  %arrayidx12 = getelementptr i8, ptr %call7.i.i, i32 5
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 9, ptr %arrayidx12, align 1
  %arrayidx13 = getelementptr i8, ptr %call7.i.i, i32 6
  %16 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx13, align 2
  %call14 = tail call i32 @hid_hw_raw_request(ptr noundef %1, i8 noundef zeroext 16, ptr noundef nonnull %call7.i.i, i32 noundef 7, i8 noundef zeroext 1, i32 noundef 9) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %if.end6 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @logi_dj_recv_query_paired_devices(ptr nocapture noundef %djrcv_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %last_query = getelementptr inbounds %struct.dj_receiver_dev, ptr %djrcv_dev, i32 0, i32 8
  %1 = ptrtoint ptr %last_query to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %last_query, align 4
  %type = getelementptr inbounds %struct.dj_receiver_dev, ptr %djrcv_dev, i32 0, i32 10
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call ptr @kmemdup(ptr noundef nonnull @logi_dj_recv_query_hidpp_devices.template, i32 noundef 7, i32 noundef 3264) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %hidpp.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %djrcv_dev, i32 0, i32 2
  %4 = ptrtoint ptr %hidpp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hidpp.i, align 4
  %call2.i = tail call i32 @hid_hw_raw_request(ptr noundef %5, i8 noundef zeroext 16, ptr noundef nonnull %call.i, i32 noundef 7, i8 noundef zeroext 1, i32 noundef 9) #11
  tail call void @kfree(ptr noundef nonnull %call.i) #11
  %6 = tail call i32 @llvm.smin.i32(i32 %call2.i, i32 0) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 15) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 32, ptr %call7.i.i, align 8
  %device_index = getelementptr inbounds %struct.dj_report, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %device_index to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %device_index, align 1
  %report_type = getelementptr inbounds %struct.dj_report, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %report_type to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -127, ptr %report_type, align 2
  %call5 = tail call fastcc i32 @logi_dj_recv_send_report(ptr noundef %djrcv_dev, ptr noundef nonnull %call7.i.i)
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %if.end.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ -12, %if.end.cleanup_crit_edge ], [ %6, %if.end.i ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dj_put_receiver_dev(ptr noundef readonly %hdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @dj_hdev_list_lock, i32 noundef 0) #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp = icmp eq ptr %3, %hdev
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %keyboard = getelementptr inbounds %struct.dj_receiver_dev, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %keyboard to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %keyboard, align 4
  %cmp2 = icmp eq ptr %6, %hdev
  br i1 %cmp2, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %keyboard to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %keyboard, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %hidpp = getelementptr inbounds %struct.dj_receiver_dev, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %hidpp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hidpp, align 4
  %cmp6 = icmp eq ptr %9, %hdev
  br i1 %cmp6, label %if.then7, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %hidpp to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %hidpp, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %kref = getelementptr inbounds %struct.dj_receiver_dev, ptr %1, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !357
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #11
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #11, !srcloc !358
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !355

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #11
  br label %kref_put.exit

if.then.i:                                        ; preds = %if.end9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !359
  %list.i.i = getelementptr %struct.dj_receiver_dev, ptr %1, i32 0, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i.i) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.dj_release_receiver_dev.exit.i_crit_edge

if.then.i.dj_release_receiver_dev.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dj_release_receiver_dev.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i.i = getelementptr %struct.dj_receiver_dev, ptr %1, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i.i, align 4
  %14 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %list.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %dj_release_receiver_dev.exit.i

dj_release_receiver_dev.exit.i:                   ; preds = %if.end.i.i.i.i, %if.then.i.dj_release_receiver_dev.exit.i_crit_edge
  %18 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i.i, align 4
  %prev.i.i.i = getelementptr %struct.dj_receiver_dev, ptr %1, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %notif_fifo.i.i = getelementptr %struct.dj_receiver_dev, ptr %1, i32 0, i32 7
  tail call void @__kfifo_free(ptr noundef %notif_fifo.i.i) #11
  tail call void @kfree(ptr noundef %1) #11
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %dj_release_receiver_dev.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @dj_hdev_list_lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @delayedwork_callback(ptr noundef %work) #2 align 64 {
entry:
  %tmpstr.i = alloca [3 x i8], align 1
  %workitem = alloca %struct.dj_workitem, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -56
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %workitem) #11
  %0 = call ptr @memset(ptr %workitem, i32 255, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %1 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.body6_crit_edge, label %do.end

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.28) #14
  br label %do.body6

do.body6:                                         ; preds = %do.end, %entry.do.body6_crit_edge
  %lock = getelementptr i8, ptr %work, i32 80
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %ready = getelementptr i8, ptr %work, i32 68
  %2 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ready, align 4, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool14.not = icmp eq i8 %3, 0
  br i1 %tobool14.not, label %do.end18, label %if.end22

do.end18:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #11
  br label %cleanup

if.end22:                                         ; preds = %do.body6
  %notif_fifo = getelementptr i8, ptr %work, i32 44
  %call24 = call i32 @__kfifo_out(ptr noundef %notif_fifo, ptr noundef nonnull %workitem, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call24)
  %cmp26.not = icmp eq i32 %call24, 16
  br i1 %cmp26.not, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #11
  br label %cleanup

if.end30:                                         ; preds = %if.end22
  %4 = ptrtoint ptr %notif_fifo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %notif_fifo, align 4
  %out = getelementptr i8, ptr %work, i32 48
  %6 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp33 = icmp eq i32 %5, %7
  br i1 %cmp33, label %if.end30.if.end39_crit_edge, label %if.then36

if.end30.if.end39_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then36:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %work) #11
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end30.if.end39_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #11
  %9 = ptrtoint ptr %workitem to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %workitem, align 8
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.167)
  switch i8 %10, label %if.end39.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb42
    i8 -1, label %sw.bb43
    i8 0, label %do.body52
  ]

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end39
  %hidpp.i = getelementptr i8, ptr %work, i32 -48
  %12 = ptrtoint ptr %hidpp.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hidpp.i, align 4
  %device_index1.i = getelementptr inbounds %struct.dj_workitem, ptr %workitem, i32 0, i32 1
  %14 = ptrtoint ptr %device_index1.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %device_index1.i, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %tmpstr.i) #11
  %16 = ptrtoint ptr %tmpstr.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %tmpstr.i, align 1, !annotation !360
  %17 = getelementptr inbounds [3 x i8], ptr %tmpstr.i, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %17, align 1, !annotation !360
  %19 = getelementptr inbounds [3 x i8], ptr %tmpstr.i, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %19, align 1, !annotation !360
  %idxprom.i = zext i8 %15 to i32
  %arrayidx.i = getelementptr %struct.dj_receiver_dev, ptr %add.ptr, i32 0, i32 3, i32 %idxprom.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end7.i, label %do.body.i

do.body.i:                                        ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %23 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool2.not.i = icmp eq i32 %23, 0
  br i1 %tobool2.not.i, label %do.body.i.logi_dj_recv_add_djhid_device.exit_crit_edge, label %do.end.i

do.body.i.logi_dj_recv_add_djhid_device.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %logi_dj_recv_add_djhid_device.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.39) #14
  br label %logi_dj_recv_add_djhid_device.exit

if.end7.i:                                        ; preds = %sw.bb
  %call8.i = call ptr @hid_allocate_device() #11
  %cmp.i.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end13.i, label %if.end14.i

do.end13.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %13, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.39) #14
  br label %logi_dj_recv_add_djhid_device.exit

if.end14.i:                                       ; preds = %if.end7.i
  %ll_driver.i = getelementptr inbounds %struct.hid_device, ptr %call8.i, i32 0, i32 20
  %24 = ptrtoint ptr %ll_driver.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @logi_dj_ll_driver, ptr %ll_driver.i, align 4
  %dev15.i = getelementptr inbounds %struct.hid_device, ptr %13, i32 0, i32 18
  %parent.i = getelementptr inbounds %struct.hid_device, ptr %call8.i, i32 0, i32 18, i32 1
  %25 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev15.i, ptr %parent.i, align 8
  %bus.i = getelementptr inbounds %struct.hid_device, ptr %call8.i, i32 0, i32 8
  %26 = ptrtoint ptr %bus.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 3, ptr %bus.i, align 8
  %vendor.i = getelementptr inbounds %struct.hid_device, ptr %13, i32 0, i32 10
  %27 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vendor.i, align 4
  %vendor17.i = getelementptr inbounds %struct.hid_device, ptr %call8.i, i32 0, i32 10
  %29 = ptrtoint ptr %vendor17.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %vendor17.i, align 4
  %quad_id_msb.i = getelementptr inbounds %struct.dj_workitem, ptr %workitem, i32 0, i32 3
  %30 = ptrtoint ptr %quad_id_msb.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %quad_id_msb.i, align 1
  %conv.i = zext i8 %31 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %quad_id_lsb.i = getelementptr inbounds %struct.dj_workitem, ptr %workitem, i32 0, i32 4
  %32 = ptrtoint ptr %quad_id_lsb.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %quad_id_lsb.i, align 4
  %conv18.i = zext i8 %33 to i32
  %or.i = or i32 %shl.i, %conv18.i
  %product.i = getelementptr inbounds %struct.hid_device, ptr %call8.i, i32 0, i32 11
  %34 = ptrtoint ptr %product.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or.i, ptr %product.i, align 8
  %device_type.i = getelementptr inbounds %struct.dj_workitem, ptr %workitem, i32 0, i32 2
  %35 = ptrtoint ptr %device_type.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %device_type.i, align 2
  %37 = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.168)
  switch i8 %36, label %if.end14.i.sw.epilog.i_crit_edge [
    i8 0, label %if.else.i
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb23.i
    i8 3, label %sw.bb24.i
    i8 4, label %sw.bb25.i
    i8 7, label %sw.bb26.i
    i8 8, label %sw.bb27.i
    i8 9, label %sw.bb28.i
  ]

if.end14.i.sw.epilog.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb23.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb24.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb25.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb26.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb27.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb28.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb28.i, %sw.bb27.i, %sw.bb26.i, %sw.bb25.i, %sw.bb24.i, %sw.bb23.i, %sw.bb.i, %if.end14.i.sw.epilog.i_crit_edge
  %type_str.0.i = phi ptr [ @.str.50, %sw.bb28.i ], [ @.str.49, %sw.bb27.i ], [ @.str.48, %sw.bb26.i ], [ @.str.47, %sw.bb25.i ], [ @.str.46, %sw.bb24.i ], [ @.str.45, %sw.bb23.i ], [ @.str.44, %sw.bb.i ], [ @.str.43, %if.end14.i.sw.epilog.i_crit_edge ]
  %name.i = getelementptr inbounds %struct.hid_device, ptr %call8.i, i32 0, i32 39
  %call30.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 128, ptr noundef nonnull @.str.51, ptr noundef nonnull %type_str.0.i, i32 noundef %or.i) #11
  br label %if.end35.i

if.else.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  %name31.i = getelementptr inbounds %struct.hid_device, ptr %call8.i, i32 0, i32 39
  %call34.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name31.i, i32 noundef 128, ptr noundef nonnull @.str.52, i32 noundef %or.i) #11
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.else.i, %sw.epilog.i
  %type.i = getelementptr i8, ptr %work, i32 72
  %38 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %39)
  %cmp.i = icmp eq i32 %39, 4
  %spec.select.i = select i1 %cmp.i, i16 260, i16 258
  %40 = getelementptr inbounds %struct.hid_device, ptr %call8.i, i32 0, i32 9
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %spec.select.i, ptr %40, align 2
  %phys.i = getelementptr inbounds %struct.hid_device, ptr %call8.i, i32 0, i32 40
  %phys42.i = getelementptr inbounds %struct.hid_device, ptr %13, i32 0, i32 40
  %42 = call ptr @memcpy(ptr %phys.i, ptr %phys42.i, i32 64)
  %call46.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmpstr.i, i32 noundef 3, ptr noundef nonnull @.str.53, i32 noundef %idxprom.i) #11
  %call50.i = call i32 @strlcat(ptr noundef %phys.i, ptr noundef nonnull %tmpstr.i, i32 noundef 64) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %43 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %43, i32 noundef 3520, i32 noundef 24) #15
  %tobool52.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool52.not.i, label %do.end56.i, label %if.end58.i

do.end56.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15.i, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.39) #14
  br label %dj_device_allocate_fail.i

if.end58.i:                                       ; preds = %if.end35.i
  %reports_supported.i = getelementptr inbounds %struct.dj_workitem, ptr %workitem, i32 0, i32 5
  %44 = ptrtoint ptr %reports_supported.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %reports_supported.i, align 8
  %reports_supported59.i = getelementptr inbounds %struct.dj_device, ptr %call7.i.i.i, i32 0, i32 2
  %46 = ptrtoint ptr %reports_supported59.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %reports_supported59.i, align 8
  %47 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call8.i, ptr %call7.i.i.i, align 8
  %dj_receiver_dev.i = getelementptr inbounds %struct.dj_device, ptr %call7.i.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %dj_receiver_dev.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr, ptr %dj_receiver_dev.i, align 4
  %device_index60.i = getelementptr inbounds %struct.dj_device, ptr %call7.i.i.i, i32 0, i32 3
  %49 = ptrtoint ptr %device_index60.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %15, ptr %device_index60.i, align 8
  %driver_data.i = getelementptr inbounds %struct.hid_device, ptr %call8.i, i32 0, i32 42
  %50 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call7.i.i.i, ptr %driver_data.i, align 8
  %call67.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call7.i.i.i, ptr %arrayidx.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call67.i) #11
  %call76.i = call i32 @hid_add_device(ptr noundef %call8.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %tobool77.not.i = icmp eq i32 %call76.i, 0
  br i1 %tobool77.not.i, label %if.end58.i.logi_dj_recv_add_djhid_device.exit_crit_edge, label %do.end81.i

if.end58.i.logi_dj_recv_add_djhid_device.exit_crit_edge: ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %logi_dj_recv_add_djhid_device.exit

do.end81.i:                                       ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15.i, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.39) #14
  %call93.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %arrayidx.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call93.i) #11
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %dj_device_allocate_fail.i

dj_device_allocate_fail.i:                        ; preds = %do.end81.i, %do.end56.i
  call void @hid_destroy_device(ptr noundef %call8.i) #11
  br label %logi_dj_recv_add_djhid_device.exit

logi_dj_recv_add_djhid_device.exit:               ; preds = %dj_device_allocate_fail.i, %if.end58.i.logi_dj_recv_add_djhid_device.exit_crit_edge, %do.end13.i, %do.end.i, %do.body.i.logi_dj_recv_add_djhid_device.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %tmpstr.i) #11
  br label %cleanup

sw.bb42:                                          ; preds = %if.end39
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %device_index.i = getelementptr inbounds %struct.dj_workitem, ptr %workitem, i32 0, i32 1
  %53 = ptrtoint ptr %device_index.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %device_index.i, align 1
  %idxprom.i83 = zext i8 %54 to i32
  %arrayidx.i84 = getelementptr %struct.dj_receiver_dev, ptr %add.ptr, i32 0, i32 3, i32 %idxprom.i83
  %55 = ptrtoint ptr %arrayidx.i84 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i84, align 4
  store ptr null, ptr %arrayidx.i84, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #11
  %cmp10.not.i = icmp eq ptr %56, null
  br i1 %cmp10.not.i, label %do.end14.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 8
  call void @hid_destroy_device(ptr noundef %58) #11
  call void @kfree(ptr noundef nonnull %56) #11
  br label %cleanup

do.end14.i:                                       ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #13
  %hidpp.i85 = getelementptr i8, ptr %work, i32 -48
  %59 = ptrtoint ptr %hidpp.i85 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hidpp.i85, align 4
  %dev.i86 = getelementptr inbounds %struct.hid_device, ptr %60, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i86, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94) #14
  br label %cleanup

sw.bb43:                                          ; preds = %if.end39
  %call44 = call fastcc i32 @logi_dj_recv_query_paired_devices(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %sw.bb43.cleanup_crit_edge, label %do.end49

sw.bb43.cleanup_crit_edge:                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end49:                                         ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #13
  %hidpp = getelementptr i8, ptr %work, i32 -48
  %61 = ptrtoint ptr %hidpp to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hidpp, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %62, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.28, i32 noundef %call44) #14
  br label %cleanup

do.body52:                                        ; preds = %if.end39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %63 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool53.not = icmp eq i32 %63, 0
  br i1 %tobool53.not, label %do.body52.cleanup_crit_edge, label %do.end57

do.body52.cleanup_crit_edge:                      ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end57:                                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #13
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.28) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end57, %do.body52.cleanup_crit_edge, %do.end49, %sw.bb43.cleanup_crit_edge, %do.end14.i, %if.then.i, %logi_dj_recv_add_djhid_device.exit, %if.end39.cleanup_crit_edge, %if.then28, %do.end18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %workitem) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hid_compare_device_paths(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hid_allocate_device() local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_add_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_destroy_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @logi_dj_ll_start(ptr nocapture noundef readnone %hid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %0 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.60) #14
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @logi_dj_ll_stop(ptr nocapture noundef readnone %hid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %0 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.61) #14
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @logi_dj_ll_open(ptr noundef %hid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %0 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %phys = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 40
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.63, ptr noundef %phys) #14
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @logi_dj_ll_close(ptr noundef %hid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %0 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %phys = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 40
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.64, ptr noundef %phys) #14
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @logi_dj_ll_parse(ptr noundef %hid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %2 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.65) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %version = getelementptr inbounds %struct.hid_device, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 273, ptr %version, align 4
  %6 = load ptr, ptr %1, align 8
  %country = getelementptr inbounds %struct.hid_device, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %country to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %country, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 410) #15
  %tobool7.not = icmp eq ptr %call7.i, null
  br i1 %tobool7.not, label %do.end4.cleanup_crit_edge, label %if.end9

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %do.end4
  %reports_supported = getelementptr inbounds %struct.dj_device, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %reports_supported to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %reports_supported, align 8
  %and = and i64 %10, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool10.not = icmp eq i64 %and, 0
  br i1 %tobool10.not, label %if.end9.if.end24_crit_edge, label %do.body12

if.end9.if.end24_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

do.body12:                                        ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %11 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool13.not = icmp eq i32 %11, 0
  br i1 %tobool13.not, label %do.body12.do.end23_crit_edge, label %do.end17

do.body12.do.end23_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23

do.end17:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.65, i64 noundef %10) #14
  br label %do.end23

do.end23:                                         ; preds = %do.end17, %do.body12.do.end23_crit_edge
  %12 = call ptr @memcpy(ptr %call7.i, ptr @kbd_descriptor, i32 67)
  br label %if.end24

if.end24:                                         ; preds = %do.end23, %if.end9.if.end24_crit_edge
  %rsize.0 = phi i32 [ 0, %if.end9.if.end24_crit_edge ], [ 67, %do.end23 ]
  %13 = ptrtoint ptr %reports_supported to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %reports_supported, align 8
  %and26 = and i64 %14, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and26)
  %tobool27.not = icmp eq i64 %and26, 0
  br i1 %tobool27.not, label %if.end24.if.end58_crit_edge, label %do.body29

if.end24.if.end58_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

do.body29:                                        ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %15 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool30.not = icmp eq i32 %15, 0
  br i1 %tobool30.not, label %do.body29.do.end40_crit_edge, label %do.end34

do.body29.do.end40_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end40

do.end34:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #13
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.65, i64 noundef %14) #14
  br label %do.end40

do.end40:                                         ; preds = %do.end34, %do.body29.do.end40_crit_edge
  %dj_receiver_dev = getelementptr inbounds %struct.dj_device, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %dj_receiver_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dj_receiver_dev, align 4
  %type = getelementptr inbounds %struct.dj_receiver_dev, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.169)
  switch i32 %19, label %if.else49 [
    i32 2, label %do.end40.if.then44_crit_edge
    i32 3, label %do.end40.if.then44_crit_edge237
    i32 4, label %if.then48
  ]

do.end40.if.then44_crit_edge237:                  ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then44

do.end40.if.then44_crit_edge:                     ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then44

if.then44:                                        ; preds = %do.end40.if.then44_crit_edge, %do.end40.if.then44_crit_edge237
  %add.ptr.i199 = getelementptr i8, ptr %call7.i, i32 %rsize.0
  %21 = call ptr @memcpy(ptr %add.ptr.i199, ptr @mse_high_res_descriptor, i32 69)
  %add.i200 = add nuw nsw i32 %rsize.0, 69
  br label %if.end58

if.then48:                                        ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i201 = getelementptr i8, ptr %call7.i, i32 %rsize.0
  %22 = call ptr @memcpy(ptr %add.ptr.i201, ptr @mse_27mhz_descriptor, i32 69)
  %add.i202 = add nuw nsw i32 %rsize.0, 69
  br label %if.end58

if.else49:                                        ; preds = %do.end40
  %23 = add i32 %19, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %24 = icmp ult i32 %23, 2
  %add.ptr.i203 = getelementptr i8, ptr %call7.i, i32 %rsize.0
  br i1 %24, label %if.then53, label %if.else54

if.then53:                                        ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #13
  %25 = call ptr @memcpy(ptr %add.ptr.i203, ptr @mse_bluetooth_descriptor, i32 91)
  %add.i204 = add nuw nsw i32 %rsize.0, 91
  br label %if.end58

if.else54:                                        ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #13
  %26 = call ptr @memcpy(ptr %add.ptr.i203, ptr @mse_descriptor, i32 69)
  %add.i206 = add nuw nsw i32 %rsize.0, 69
  br label %if.end58

if.end58:                                         ; preds = %if.else54, %if.then53, %if.then48, %if.then44, %if.end24.if.end58_crit_edge
  %rsize.1 = phi i32 [ %rsize.0, %if.end24.if.end58_crit_edge ], [ %add.i204, %if.then53 ], [ %add.i206, %if.else54 ], [ %add.i202, %if.then48 ], [ %add.i200, %if.then44 ]
  %27 = ptrtoint ptr %reports_supported to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %reports_supported, align 8
  %and60 = and i64 %28, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and60)
  %tobool61.not = icmp eq i64 %and60, 0
  br i1 %tobool61.not, label %if.end58.if.end75_crit_edge, label %do.body63

if.end58.if.end75_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

do.body63:                                        ; preds = %if.end58
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %29 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool64.not = icmp eq i32 %29, 0
  br i1 %tobool64.not, label %do.body63.do.end74_crit_edge, label %do.end68

do.body63.do.end74_crit_edge:                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end74

do.end68:                                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #13
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.65, i64 noundef %28) #14
  br label %do.end74

do.end74:                                         ; preds = %do.end68, %do.body63.do.end74_crit_edge
  %add.ptr.i207 = getelementptr i8, ptr %call7.i, i32 %rsize.1
  %30 = call ptr @memcpy(ptr %add.ptr.i207, ptr @mse5_bluetooth_descriptor, i32 75)
  %add.i208 = add nuw nsw i32 %rsize.1, 75
  br label %if.end75

if.end75:                                         ; preds = %do.end74, %if.end58.if.end75_crit_edge
  %rsize.2 = phi i32 [ %rsize.1, %if.end58.if.end75_crit_edge ], [ %add.i208, %do.end74 ]
  %31 = ptrtoint ptr %reports_supported to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %reports_supported, align 8
  %and77 = and i64 %32, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and77)
  %tobool78.not = icmp eq i64 %and77, 0
  br i1 %tobool78.not, label %if.end75.if.end92_crit_edge, label %do.body80

if.end75.if.end92_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92

do.body80:                                        ; preds = %if.end75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %33 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool81.not = icmp eq i32 %33, 0
  br i1 %tobool81.not, label %do.body80.do.end91_crit_edge, label %do.end85

do.body80.do.end91_crit_edge:                     ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end91

do.end85:                                         ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #13
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.65, i64 noundef %32) #14
  br label %do.end91

do.end91:                                         ; preds = %do.end85, %do.body80.do.end91_crit_edge
  %add.ptr.i209 = getelementptr i8, ptr %call7.i, i32 %rsize.2
  %34 = call ptr @memcpy(ptr %add.ptr.i209, ptr @consumer_descriptor, i32 25)
  %add.i210 = add nuw nsw i32 %rsize.2, 25
  br label %if.end92

if.end92:                                         ; preds = %do.end91, %if.end75.if.end92_crit_edge
  %rsize.3 = phi i32 [ %rsize.2, %if.end75.if.end92_crit_edge ], [ %add.i210, %do.end91 ]
  %35 = ptrtoint ptr %reports_supported to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %reports_supported, align 8
  %and94 = and i64 %36, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and94)
  %tobool95.not = icmp eq i64 %and94, 0
  br i1 %tobool95.not, label %if.end92.if.end109_crit_edge, label %do.body97

if.end92.if.end109_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

do.body97:                                        ; preds = %if.end92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %37 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool98.not = icmp eq i32 %37, 0
  br i1 %tobool98.not, label %do.body97.do.end108_crit_edge, label %do.end102

do.body97.do.end108_crit_edge:                    ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end108

do.end102:                                        ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #13
  %call105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.65, i64 noundef %36) #14
  br label %do.end108

do.end108:                                        ; preds = %do.end102, %do.body97.do.end108_crit_edge
  %add.ptr.i211 = getelementptr i8, ptr %call7.i, i32 %rsize.3
  %38 = call ptr @memcpy(ptr %add.ptr.i211, ptr @syscontrol_descriptor, i32 29)
  %add.i212 = add nuw nsw i32 %rsize.3, 29
  br label %if.end109

if.end109:                                        ; preds = %do.end108, %if.end92.if.end109_crit_edge
  %rsize.4 = phi i32 [ %rsize.3, %if.end92.if.end109_crit_edge ], [ %add.i212, %do.end108 ]
  %39 = ptrtoint ptr %reports_supported to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %reports_supported, align 8
  %and111 = and i64 %40, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and111)
  %tobool112.not = icmp eq i64 %and111, 0
  br i1 %tobool112.not, label %if.end109.if.end126_crit_edge, label %do.body114

if.end109.if.end126_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end126

do.body114:                                       ; preds = %if.end109
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %41 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool115.not = icmp eq i32 %41, 0
  br i1 %tobool115.not, label %do.body114.do.end125_crit_edge, label %do.end119

do.body114.do.end125_crit_edge:                   ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end125

do.end119:                                        ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #13
  %call122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.65, i64 noundef %40) #14
  br label %do.end125

do.end125:                                        ; preds = %do.end119, %do.body114.do.end125_crit_edge
  %add.ptr.i213 = getelementptr i8, ptr %call7.i, i32 %rsize.4
  %42 = call ptr @memcpy(ptr %add.ptr.i213, ptr @media_descriptor, i32 25)
  %add.i214 = add nuw nsw i32 %rsize.4, 25
  br label %if.end126

if.end126:                                        ; preds = %do.end125, %if.end109.if.end126_crit_edge
  %rsize.5 = phi i32 [ %rsize.4, %if.end109.if.end126_crit_edge ], [ %add.i214, %do.end125 ]
  %43 = ptrtoint ptr %reports_supported to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %reports_supported, align 8
  %and128 = and i64 %44, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and128)
  %tobool129.not = icmp eq i64 %and128, 0
  br i1 %tobool129.not, label %if.end126.if.end143_crit_edge, label %do.body131

if.end126.if.end143_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end143

do.body131:                                       ; preds = %if.end126
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %45 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool132.not = icmp eq i32 %45, 0
  br i1 %tobool132.not, label %do.body131.if.end143thread-pre-split_crit_edge, label %do.end136

do.body131.if.end143thread-pre-split_crit_edge:   ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end143thread-pre-split

do.end136:                                        ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #13
  %call139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.65, i64 noundef %44) #14
  br label %if.end143thread-pre-split

if.end143thread-pre-split:                        ; preds = %do.end136, %do.body131.if.end143thread-pre-split_crit_edge
  %46 = ptrtoint ptr %reports_supported to i32
  call void @__asan_load8_noabort(i32 %46)
  %.pr = load i64, ptr %reports_supported, align 8
  br label %if.end143

if.end143:                                        ; preds = %if.end143thread-pre-split, %if.end126.if.end143_crit_edge
  %47 = phi i64 [ %.pr, %if.end143thread-pre-split ], [ %44, %if.end126.if.end143_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %47)
  %tobool146.not = icmp sgt i64 %47, -1
  br i1 %tobool146.not, label %if.end143.if.end160_crit_edge, label %do.body148

if.end143.if.end160_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end160

do.body148:                                       ; preds = %if.end143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %48 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool149.not = icmp eq i32 %48, 0
  br i1 %tobool149.not, label %do.body148.do.end159_crit_edge, label %do.end153

do.body148.do.end159_crit_edge:                   ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end159

do.end153:                                        ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #13
  %call156 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.65, i64 noundef %47) #14
  br label %do.end159

do.end159:                                        ; preds = %do.end153, %do.body148.do.end159_crit_edge
  %add.ptr.i215 = getelementptr i8, ptr %call7.i, i32 %rsize.5
  %49 = call ptr @memcpy(ptr %add.ptr.i215, ptr @hidpp_descriptor, i32 98)
  %add.i216 = add nuw nsw i32 %rsize.5, 98
  br label %if.end160

if.end160:                                        ; preds = %do.end159, %if.end143.if.end160_crit_edge
  %rsize.6 = phi i32 [ %rsize.5, %if.end143.if.end160_crit_edge ], [ %add.i216, %do.end159 ]
  %call161 = tail call i32 @hid_parse_report(ptr noundef %hid, ptr noundef nonnull %call7.i, i32 noundef %rsize.6) #11
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end160, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ %call161, %if.end160 ], [ -12, %do.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @logi_dj_ll_raw_request(ptr noundef %hid, i8 noundef zeroext %reportnum, ptr noundef %buf, i32 noundef %count, i8 noundef zeroext %report_type, i32 noundef %reqtype) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  %dj_receiver_dev = getelementptr inbounds %struct.dj_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dj_receiver_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dj_receiver_dev, align 4
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %buf, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.170)
  switch i8 %5, label %entry.cleanup_crit_edge [
    i8 16, label %entry.if.then_crit_edge
    i8 17, label %entry.if.then_crit_edge96
    i8 18, label %entry.if.then_crit_edge97
    i8 14, label %if.end32
  ]

entry.if.then_crit_edge97:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge96:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge96, %entry.if.then_crit_edge97
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count)
  %cmp11 = icmp ult i32 %count, 2
  br i1 %cmp11, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %count)
  %cmp14 = icmp eq i32 %count, 7
  br i1 %cmp14, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %buf, ptr noundef nonnull dereferenceable(4) @unifying_pairing_query, i32 4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.then16, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx17 = getelementptr i8, ptr %buf, i32 4
  %7 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx17, align 1
  %9 = and i8 %8, -16
  %device_index = getelementptr inbounds %struct.dj_device, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %device_index to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %device_index, align 8
  %sub = add i8 %11, -1
  %or = or i8 %sub, %9
  store i8 %or, ptr %arrayidx17, align 1
  br label %if.end24

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %device_index22 = getelementptr inbounds %struct.dj_device, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %device_index22 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %device_index22, align 8
  %arrayidx23 = getelementptr i8, ptr %buf, i32 1
  %14 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx23, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then16
  %hidpp = getelementptr inbounds %struct.dj_receiver_dev, ptr %3, i32 0, i32 2
  %15 = ptrtoint ptr %hidpp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hidpp, align 4
  %call25 = tail call i32 @hid_hw_raw_request(ptr noundef %16, i8 noundef zeroext %reportnum, ptr noundef %buf, i32 noundef %count, i8 noundef zeroext %report_type, i32 noundef %reqtype) #11
  br label %cleanup

if.end32:                                         ; preds = %entry
  %type = getelementptr inbounds %struct.dj_receiver_dev, ptr %3, i32 0, i32 10
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp33.not = icmp ne i32 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp36 = icmp ugt i32 %count, 1
  %or.cond = and i1 %cmp36, %cmp33.not
  br i1 %or.cond, label %if.then38, label %if.end44

if.then38:                                        ; preds = %if.end32
  %keyboard = getelementptr inbounds %struct.dj_receiver_dev, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %keyboard to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %keyboard, align 4
  %tobool39.not = icmp eq ptr %20, null
  br i1 %tobool39.not, label %do.end, label %if.end41

do.end:                                           ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.90) #14
  br label %cleanup

if.end41:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  %call43 = tail call i32 @hid_hw_raw_request(ptr noundef nonnull %20, i8 noundef zeroext 0, ptr noundef %buf, i32 noundef %count, i8 noundef zeroext %report_type, i32 noundef %reqtype) #11
  br label %cleanup

if.end44:                                         ; preds = %if.end32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 2848, i32 noundef 15) #15
  %tobool46.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool46.not, label %if.end44.cleanup_crit_edge, label %if.end48

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end48:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  %22 = tail call i32 @llvm.umin.i32(i32 %count, i32 13)
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 32, ptr %call7.i.i, align 8
  %device_index54 = getelementptr inbounds %struct.dj_device, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %device_index54 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %device_index54, align 8
  %arrayidx55 = getelementptr i8, ptr %call7.i.i, i32 1
  %26 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx55, align 1
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 2
  %27 = call ptr @memcpy(ptr %add.ptr, ptr %buf, i32 %22)
  %hidpp56 = getelementptr inbounds %struct.dj_receiver_dev, ptr %3, i32 0, i32 2
  %28 = ptrtoint ptr %hidpp56 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hidpp56, align 4
  %call58 = tail call i32 @hid_hw_raw_request(ptr noundef %29, i8 noundef zeroext 32, ptr noundef nonnull %call7.i.i, i32 noundef 15, i8 noundef zeroext %report_type, i32 noundef %reqtype) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.end44.cleanup_crit_edge, %if.end41, %do.end, %if.end24, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %if.end24 ], [ %call43, %if.end41 ], [ 0, %do.end ], [ %call58, %if.end48 ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @logi_dj_ll_may_wakeup(ptr nocapture noundef readonly %hid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  %dj_receiver_dev = getelementptr inbounds %struct.dj_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dj_receiver_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dj_receiver_dev, align 4
  %hidpp = getelementptr inbounds %struct.dj_receiver_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %hidpp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hidpp, align 4
  %ll_driver.i = getelementptr inbounds %struct.hid_device, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %ll_driver.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ll_driver.i, align 4
  %may_wakeup.i = getelementptr inbounds %struct.hid_ll_driver, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %may_wakeup.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %may_wakeup.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call zeroext i1 %9(ptr noundef %5) #11
  br label %hid_hw_may_wakeup.exit

if.end.i:                                         ; preds = %entry
  %parent.i = getelementptr inbounds %struct.hid_device, ptr %5, i32 0, i32 18, i32 1
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i, align 8
  %tobool3.not.i = icmp eq ptr %11, null
  br i1 %tobool3.not.i, label %if.end.i.hid_hw_may_wakeup.exit_crit_edge, label %if.then4.i

if.end.i.hid_hw_may_wakeup.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hid_hw_may_wakeup.exit

if.then4.i:                                       ; preds = %if.end.i
  %can_wakeup.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 1
  %12 = ptrtoint ptr %can_wakeup.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load.i.i = load i16, ptr %can_wakeup.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i16 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.then4.i.hid_hw_may_wakeup.exit_crit_edge, label %land.rhs.i.i

if.then4.i.hid_hw_may_wakeup.exit_crit_edge:      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hid_hw_may_wakeup.exit

land.rhs.i.i:                                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  %wakeup.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 6
  %13 = ptrtoint ptr %wakeup.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wakeup.i.i, align 8
  %tobool2.i.i = icmp ne ptr %14, null
  br label %hid_hw_may_wakeup.exit

hid_hw_may_wakeup.exit:                           ; preds = %land.rhs.i.i, %if.then4.i.hid_hw_may_wakeup.exit_crit_edge, %if.end.i.hid_hw_may_wakeup.exit_crit_edge, %if.then.i
  %retval.0.i = phi i1 [ %call.i, %if.then.i ], [ false, %if.end.i.hid_hw_may_wakeup.exit_crit_edge ], [ false, %if.then4.i.hid_hw_may_wakeup.exit_crit_edge ], [ %tobool2.i.i, %land.rhs.i.i ]
  ret i1 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_parse_report(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_raw_request(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @logi_dj_recv_send_report(ptr nocapture noundef readonly %djrcv_dev, ptr nocapture noundef readonly %dj_report) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hidpp = getelementptr inbounds %struct.dj_receiver_dev, ptr %djrcv_dev, i32 0, i32 2
  %0 = ptrtoint ptr %hidpp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hidpp, align 4
  %arrayidx1 = getelementptr %struct.hid_device, ptr %1, i32 0, i32 15, i32 1, i32 2, i32 32
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %device_index = getelementptr inbounds %struct.dj_report, ptr %dj_report, i32 0, i32 1
  %field = getelementptr inbounds %struct.hid_report, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %device_index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %device_index, align 1
  %conv = zext i8 %5 to i32
  %6 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %field, align 4
  %value = getelementptr inbounds %struct.hid_field, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %value, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %9, align 4
  %arrayidx2.1 = getelementptr %struct.dj_report, ptr %dj_report, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx2.1, align 1
  %conv.1 = zext i8 %12 to i32
  %13 = load ptr, ptr %field, align 4
  %value.1 = getelementptr inbounds %struct.hid_field, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %value.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %value.1, align 4
  %arrayidx4.1 = getelementptr i32, ptr %15, i32 1
  %16 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv.1, ptr %arrayidx4.1, align 4
  %arrayidx2.2 = getelementptr %struct.dj_report, ptr %dj_report, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx2.2, align 1
  %conv.2 = zext i8 %18 to i32
  %19 = load ptr, ptr %field, align 4
  %value.2 = getelementptr inbounds %struct.hid_field, ptr %19, i32 0, i32 10
  %20 = ptrtoint ptr %value.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %value.2, align 4
  %arrayidx4.2 = getelementptr i32, ptr %21, i32 2
  %22 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv.2, ptr %arrayidx4.2, align 4
  %arrayidx2.3 = getelementptr %struct.dj_report, ptr %dj_report, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx2.3, align 1
  %conv.3 = zext i8 %24 to i32
  %25 = load ptr, ptr %field, align 4
  %value.3 = getelementptr inbounds %struct.hid_field, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %value.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %value.3, align 4
  %arrayidx4.3 = getelementptr i32, ptr %27, i32 3
  %28 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv.3, ptr %arrayidx4.3, align 4
  %arrayidx2.4 = getelementptr %struct.dj_report, ptr %dj_report, i32 0, i32 3, i32 2
  %29 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx2.4, align 1
  %conv.4 = zext i8 %30 to i32
  %31 = load ptr, ptr %field, align 4
  %value.4 = getelementptr inbounds %struct.hid_field, ptr %31, i32 0, i32 10
  %32 = ptrtoint ptr %value.4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %value.4, align 4
  %arrayidx4.4 = getelementptr i32, ptr %33, i32 4
  %34 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv.4, ptr %arrayidx4.4, align 4
  %arrayidx2.5 = getelementptr %struct.dj_report, ptr %dj_report, i32 0, i32 3, i32 3
  %35 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx2.5, align 1
  %conv.5 = zext i8 %36 to i32
  %37 = load ptr, ptr %field, align 4
  %value.5 = getelementptr inbounds %struct.hid_field, ptr %37, i32 0, i32 10
  %38 = ptrtoint ptr %value.5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %value.5, align 4
  %arrayidx4.5 = getelementptr i32, ptr %39, i32 5
  %40 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv.5, ptr %arrayidx4.5, align 4
  %arrayidx2.6 = getelementptr %struct.dj_report, ptr %dj_report, i32 0, i32 3, i32 4
  %41 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx2.6, align 1
  %conv.6 = zext i8 %42 to i32
  %43 = load ptr, ptr %field, align 4
  %value.6 = getelementptr inbounds %struct.hid_field, ptr %43, i32 0, i32 10
  %44 = ptrtoint ptr %value.6 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %value.6, align 4
  %arrayidx4.6 = getelementptr i32, ptr %45, i32 6
  %46 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv.6, ptr %arrayidx4.6, align 4
  %arrayidx2.7 = getelementptr %struct.dj_report, ptr %dj_report, i32 0, i32 3, i32 5
  %47 = ptrtoint ptr %arrayidx2.7 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx2.7, align 1
  %conv.7 = zext i8 %48 to i32
  %49 = load ptr, ptr %field, align 4
  %value.7 = getelementptr inbounds %struct.hid_field, ptr %49, i32 0, i32 10
  %50 = ptrtoint ptr %value.7 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %value.7, align 4
  %arrayidx4.7 = getelementptr i32, ptr %51, i32 7
  %52 = ptrtoint ptr %arrayidx4.7 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv.7, ptr %arrayidx4.7, align 4
  %arrayidx2.8 = getelementptr %struct.dj_report, ptr %dj_report, i32 0, i32 3, i32 6
  %53 = ptrtoint ptr %arrayidx2.8 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx2.8, align 1
  %conv.8 = zext i8 %54 to i32
  %55 = load ptr, ptr %field, align 4
  %value.8 = getelementptr inbounds %struct.hid_field, ptr %55, i32 0, i32 10
  %56 = ptrtoint ptr %value.8 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %value.8, align 4
  %arrayidx4.8 = getelementptr i32, ptr %57, i32 8
  %58 = ptrtoint ptr %arrayidx4.8 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv.8, ptr %arrayidx4.8, align 4
  %arrayidx2.9 = getelementptr %struct.dj_report, ptr %dj_report, i32 0, i32 3, i32 7
  %59 = ptrtoint ptr %arrayidx2.9 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx2.9, align 1
  %conv.9 = zext i8 %60 to i32
  %61 = load ptr, ptr %field, align 4
  %value.9 = getelementptr inbounds %struct.hid_field, ptr %61, i32 0, i32 10
  %62 = ptrtoint ptr %value.9 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %value.9, align 4
  %arrayidx4.9 = getelementptr i32, ptr %63, i32 9
  %64 = ptrtoint ptr %arrayidx4.9 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv.9, ptr %arrayidx4.9, align 4
  %arrayidx2.10 = getelementptr %struct.dj_report, ptr %dj_report, i32 0, i32 3, i32 8
  %65 = ptrtoint ptr %arrayidx2.10 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx2.10, align 1
  %conv.10 = zext i8 %66 to i32
  %67 = load ptr, ptr %field, align 4
  %value.10 = getelementptr inbounds %struct.hid_field, ptr %67, i32 0, i32 10
  %68 = ptrtoint ptr %value.10 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %value.10, align 4
  %arrayidx4.10 = getelementptr i32, ptr %69, i32 10
  %70 = ptrtoint ptr %arrayidx4.10 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %conv.10, ptr %arrayidx4.10, align 4
  %arrayidx2.11 = getelementptr %struct.dj_report, ptr %dj_report, i32 0, i32 3, i32 9
  %71 = ptrtoint ptr %arrayidx2.11 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx2.11, align 1
  %conv.11 = zext i8 %72 to i32
  %73 = load ptr, ptr %field, align 4
  %value.11 = getelementptr inbounds %struct.hid_field, ptr %73, i32 0, i32 10
  %74 = ptrtoint ptr %value.11 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %value.11, align 4
  %arrayidx4.11 = getelementptr i32, ptr %75, i32 11
  %76 = ptrtoint ptr %arrayidx4.11 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %conv.11, ptr %arrayidx4.11, align 4
  %arrayidx2.12 = getelementptr %struct.dj_report, ptr %dj_report, i32 0, i32 3, i32 10
  %77 = ptrtoint ptr %arrayidx2.12 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx2.12, align 1
  %conv.12 = zext i8 %78 to i32
  %79 = load ptr, ptr %field, align 4
  %value.12 = getelementptr inbounds %struct.hid_field, ptr %79, i32 0, i32 10
  %80 = ptrtoint ptr %value.12 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %value.12, align 4
  %arrayidx4.12 = getelementptr i32, ptr %81, i32 12
  %82 = ptrtoint ptr %arrayidx4.12 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %conv.12, ptr %arrayidx4.12, align 4
  %arrayidx2.13 = getelementptr %struct.dj_report, ptr %dj_report, i32 0, i32 3, i32 11
  %83 = ptrtoint ptr %arrayidx2.13 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx2.13, align 1
  %conv.13 = zext i8 %84 to i32
  %85 = load ptr, ptr %field, align 4
  %value.13 = getelementptr inbounds %struct.hid_field, ptr %85, i32 0, i32 10
  %86 = ptrtoint ptr %value.13 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %value.13, align 4
  %arrayidx4.13 = getelementptr i32, ptr %87, i32 13
  %88 = ptrtoint ptr %arrayidx4.13 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %conv.13, ptr %arrayidx4.13, align 4
  tail call void @hid_hw_request(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 9) #11
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.cond.preheader
  %retval.0 = phi i32 [ 0, %for.cond.preheader ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @logi_dj_recv_forward_input_report(ptr noundef %hdev, ptr noundef %data, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  %workitem.i = alloca %struct.dj_workitem, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %3)
  %cmp = icmp ugt i8 %3, 31
  br i1 %cmp, label %do.end, label %do.body4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.115, i32 noundef %conv) #14
  br label %cleanup

do.body4:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.dj_receiver_dev, ptr %1, i32 0, i32 12
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %shl = shl nuw i32 1, %conv
  %conv17 = zext i32 %shl to i64
  %arrayidx15 = getelementptr %struct.dj_receiver_dev, ptr %1, i32 0, i32 3, i32 0
  %4 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx15, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.body4.for.inc_crit_edge, label %land.lhs.true

do.body4.for.inc_crit_edge:                       ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %do.body4
  %reports_supported = getelementptr inbounds %struct.dj_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %reports_supported to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %reports_supported, align 8
  %and = and i64 %7, %conv17
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool18.not = icmp eq i64 %and, 0
  br i1 %tobool18.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.then19_crit_edge

land.lhs.true.if.then19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then19:                                        ; preds = %land.lhs.true.7.if.then19_crit_edge, %land.lhs.true.6.if.then19_crit_edge, %land.lhs.true.5.if.then19_crit_edge, %land.lhs.true.4.if.then19_crit_edge, %land.lhs.true.3.if.then19_crit_edge, %land.lhs.true.2.if.then19_crit_edge, %land.lhs.true.1.if.then19_crit_edge, %land.lhs.true.if.then19_crit_edge
  %.lcssa = phi ptr [ %5, %land.lhs.true.if.then19_crit_edge ], [ %12, %land.lhs.true.1.if.then19_crit_edge ], [ %16, %land.lhs.true.2.if.then19_crit_edge ], [ %20, %land.lhs.true.3.if.then19_crit_edge ], [ %24, %land.lhs.true.4.if.then19_crit_edge ], [ %28, %land.lhs.true.5.if.then19_crit_edge ], [ %32, %land.lhs.true.6.if.then19_crit_edge ], [ %36, %land.lhs.true.7.if.then19_crit_edge ]
  %8 = ptrtoint ptr %.lcssa to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %.lcssa, align 8
  %call.i = tail call i32 @hid_input_report(ptr noundef %9, i32 noundef 0, ptr noundef %data, i32 noundef %size, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then19.logi_dj_recv_forward_report.exit_crit_edge, label %do.body.i

if.then19.logi_dj_recv_forward_report.exit_crit_edge: ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %logi_dj_recv_forward_report.exit

do.body.i:                                        ; preds = %if.then19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %10 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool1.not.i = icmp eq i32 %10, 0
  br i1 %tobool1.not.i, label %do.body.i.logi_dj_recv_forward_report.exit_crit_edge, label %do.end.i

do.body.i.logi_dj_recv_forward_report.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %logi_dj_recv_forward_report.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.4) #14
  br label %logi_dj_recv_forward_report.exit

logi_dj_recv_forward_report.exit:                 ; preds = %do.end.i, %do.body.i.logi_dj_recv_forward_report.exit_crit_edge, %if.then19.logi_dj_recv_forward_report.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #11
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %do.body4.for.inc_crit_edge
  %arrayidx15.1 = getelementptr %struct.dj_receiver_dev, ptr %1, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx15.1, align 4
  %tobool.not.1 = icmp eq ptr %12, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %reports_supported.1 = getelementptr inbounds %struct.dj_device, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %reports_supported.1 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %reports_supported.1, align 8
  %and.1 = and i64 %14, %conv17
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.1)
  %tobool18.not.1 = icmp eq i64 %and.1, 0
  br i1 %tobool18.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true.1.if.then19_crit_edge

land.lhs.true.1.if.then19_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx15.2 = getelementptr %struct.dj_receiver_dev, ptr %1, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %arrayidx15.2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx15.2, align 4
  %tobool.not.2 = icmp eq ptr %16, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %reports_supported.2 = getelementptr inbounds %struct.dj_device, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %reports_supported.2 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %reports_supported.2, align 8
  %and.2 = and i64 %18, %conv17
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.2)
  %tobool18.not.2 = icmp eq i64 %and.2, 0
  br i1 %tobool18.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %land.lhs.true.2.if.then19_crit_edge

land.lhs.true.2.if.then19_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx15.3 = getelementptr %struct.dj_receiver_dev, ptr %1, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %arrayidx15.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx15.3, align 4
  %tobool.not.3 = icmp eq ptr %20, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %reports_supported.3 = getelementptr inbounds %struct.dj_device, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %reports_supported.3 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %reports_supported.3, align 8
  %and.3 = and i64 %22, %conv17
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.3)
  %tobool18.not.3 = icmp eq i64 %and.3, 0
  br i1 %tobool18.not.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %land.lhs.true.3.if.then19_crit_edge

land.lhs.true.3.if.then19_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %arrayidx15.4 = getelementptr %struct.dj_receiver_dev, ptr %1, i32 0, i32 3, i32 4
  %23 = ptrtoint ptr %arrayidx15.4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx15.4, align 4
  %tobool.not.4 = icmp eq ptr %24, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %reports_supported.4 = getelementptr inbounds %struct.dj_device, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %reports_supported.4 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %reports_supported.4, align 8
  %and.4 = and i64 %26, %conv17
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.4)
  %tobool18.not.4 = icmp eq i64 %and.4, 0
  br i1 %tobool18.not.4, label %land.lhs.true.4.for.inc.4_crit_edge, label %land.lhs.true.4.if.then19_crit_edge

land.lhs.true.4.if.then19_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4

for.inc.4:                                        ; preds = %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %arrayidx15.5 = getelementptr %struct.dj_receiver_dev, ptr %1, i32 0, i32 3, i32 5
  %27 = ptrtoint ptr %arrayidx15.5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx15.5, align 4
  %tobool.not.5 = icmp eq ptr %28, null
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %land.lhs.true.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %reports_supported.5 = getelementptr inbounds %struct.dj_device, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %reports_supported.5 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %reports_supported.5, align 8
  %and.5 = and i64 %30, %conv17
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.5)
  %tobool18.not.5 = icmp eq i64 %and.5, 0
  br i1 %tobool18.not.5, label %land.lhs.true.5.for.inc.5_crit_edge, label %land.lhs.true.5.if.then19_crit_edge

land.lhs.true.5.if.then19_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.5

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %arrayidx15.6 = getelementptr %struct.dj_receiver_dev, ptr %1, i32 0, i32 3, i32 6
  %31 = ptrtoint ptr %arrayidx15.6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx15.6, align 4
  %tobool.not.6 = icmp eq ptr %32, null
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %land.lhs.true.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %for.inc.5
  %reports_supported.6 = getelementptr inbounds %struct.dj_device, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %reports_supported.6 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %reports_supported.6, align 8
  %and.6 = and i64 %34, %conv17
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.6)
  %tobool18.not.6 = icmp eq i64 %and.6, 0
  br i1 %tobool18.not.6, label %land.lhs.true.6.for.inc.6_crit_edge, label %land.lhs.true.6.if.then19_crit_edge

land.lhs.true.6.if.then19_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19

land.lhs.true.6.for.inc.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.6

for.inc.6:                                        ; preds = %land.lhs.true.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %arrayidx15.7 = getelementptr %struct.dj_receiver_dev, ptr %1, i32 0, i32 3, i32 7
  %35 = ptrtoint ptr %arrayidx15.7 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx15.7, align 4
  %tobool.not.7 = icmp eq ptr %36, null
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %land.lhs.true.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.7

land.lhs.true.7:                                  ; preds = %for.inc.6
  %reports_supported.7 = getelementptr inbounds %struct.dj_device, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %reports_supported.7 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %reports_supported.7, align 8
  %and.7 = and i64 %38, %conv17
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.7)
  %tobool18.not.7 = icmp eq i64 %and.7, 0
  br i1 %tobool18.not.7, label %land.lhs.true.7.for.inc.7_crit_edge, label %land.lhs.true.7.if.then19_crit_edge

land.lhs.true.7.if.then19_crit_edge:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19

land.lhs.true.7.for.inc.7_crit_edge:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.7

for.inc.7:                                        ; preds = %land.lhs.true.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %workitem.i) #11
  %39 = call ptr @memcpy(ptr %workitem.i, ptr @__const.logi_dj_recv_queue_unknown_work.workitem, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %last_query.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %1, i32 0, i32 8
  %41 = ptrtoint ptr %last_query.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %last_query.i, align 4
  %add.neg.i = add i32 %40, -50
  %sub.i = sub i32 %add.neg.i, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %for.inc.7.logi_dj_recv_queue_unknown_work.exit_crit_edge, label %if.end.i

for.inc.7.logi_dj_recv_queue_unknown_work.exit_crit_edge: ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %logi_dj_recv_queue_unknown_work.exit

if.end.i:                                         ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #13
  %notif_fifo.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %1, i32 0, i32 7
  %call.i53 = call i32 @__kfifo_in(ptr noundef %notif_fifo.i, ptr noundef nonnull %workitem.i, i32 noundef 16) #11
  %work.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %1, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %43 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %work.i) #11
  br label %logi_dj_recv_queue_unknown_work.exit

logi_dj_recv_queue_unknown_work.exit:             ; preds = %if.end.i, %for.inc.7.logi_dj_recv_queue_unknown_work.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %workitem.i) #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %44 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool24.not = icmp eq i32 %44, 0
  br i1 %tobool24.not, label %logi_dj_recv_queue_unknown_work.exit.cleanup_crit_edge, label %do.end28

logi_dj_recv_queue_unknown_work.exit.cleanup_crit_edge: ; preds = %logi_dj_recv_queue_unknown_work.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end28:                                         ; preds = %logi_dj_recv_queue_unknown_work.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.4, i32 noundef %conv) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %logi_dj_recv_queue_unknown_work.exit.cleanup_crit_edge, %logi_dj_recv_forward_report.exit, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @logi_dj_dj_event(ptr noundef %hdev, ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  %reportbuffer.i = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %device_index = getelementptr inbounds %struct.dj_report, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %device_index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %device_index, align 1
  %4 = add i8 %3, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -7, i8 %4)
  %5 = icmp ult i8 %4, -7
  br i1 %5, label %if.then, label %do.body15

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %conv7 = zext i8 %3 to i32
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.123, i32 noundef %conv7) #14
  br label %cleanup

do.body15:                                        ; preds = %entry
  %lock = getelementptr inbounds %struct.dj_receiver_dev, ptr %1, i32 0, i32 12
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %6 = ptrtoint ptr %device_index to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %device_index, align 1
  %idxprom = zext i8 %7 to i32
  %arrayidx = getelementptr %struct.dj_receiver_dev, ptr %1, i32 0, i32 3, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then25, label %if.end26

if.then25:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @logi_dj_recv_queue_notification(ptr noundef %1, ptr noundef %data)
  br label %out

if.end26:                                         ; preds = %do.body15
  %report_type = getelementptr inbounds %struct.dj_report, ptr %data, i32 0, i32 2
  %10 = ptrtoint ptr %report_type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %report_type, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.171)
  switch i8 %11, label %sw.default [
    i8 65, label %if.end26.out_crit_edge
    i8 64, label %sw.bb
    i8 66, label %sw.bb28
  ]

if.end26.out_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

sw.bb:                                            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @logi_dj_recv_queue_notification(ptr noundef %1, ptr noundef %data)
  br label %out

sw.bb28:                                          ; preds = %if.end26
  %report_params = getelementptr inbounds %struct.dj_report, ptr %data, i32 0, i32 3
  %13 = ptrtoint ptr %report_params to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %report_params, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp31 = icmp eq i8 %14, 1
  br i1 %cmp31, label %if.then33, label %sw.bb28.out_crit_edge

sw.bb28.out_crit_edge:                            ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then33:                                        ; preds = %sw.bb28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reportbuffer.i) #11
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %17 = ptrtoint ptr %reportbuffer.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %reportbuffer.i, align 8
  %reports_supported.i = getelementptr inbounds %struct.dj_device, ptr %16, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then33
  %i.021.i = phi i32 [ 0, %if.then33 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %reports_supported.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %reports_supported.i, align 8
  %shl.i = shl nuw i32 1, %i.021.i
  %conv.i = sext i32 %shl.i to i64
  %and.i = and i64 %19, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %conv1.i = trunc i32 %i.021.i to i8
  %20 = ptrtoint ptr %reportbuffer.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv1.i, ptr %reportbuffer.i, align 8
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %16, align 8
  %arrayidx4.i = getelementptr [32 x i8], ptr @hid_reportid_size_map, i32 0, i32 %i.021.i
  %23 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %24 to i32
  %call.i = call i32 @hid_input_report(ptr noundef %22, i32 noundef 0, ptr noundef nonnull %reportbuffer.i, i32 noundef %conv5.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %if.then.i.for.inc.i_crit_edge, label %do.body.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

do.body.i:                                        ; preds = %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %25 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool8.not.i = icmp eq i32 %25, 0
  br i1 %tobool8.not.i, label %do.body.i.for.inc.i_crit_edge, label %do.end.i

do.body.i.for.inc.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.4) #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i, %do.body.i.for.inc.i_crit_edge, %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %logi_dj_recv_forward_null_report.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

logi_dj_recv_forward_null_report.exit:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reportbuffer.i) #11
  br label %out

sw.default:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %11)
  %cmp.i = icmp ugt i8 %11, 31
  br i1 %cmp.i, label %sw.default.do.body.i7_crit_edge, label %lor.lhs.false.i

sw.default.do.body.i7_crit_edge:                  ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i7

lor.lhs.false.i:                                  ; preds = %sw.default
  %conv.i4 = zext i8 %11 to i32
  %arrayidx4.i5 = getelementptr [32 x i8], ptr @hid_reportid_size_map, i32 0, i32 %conv.i4
  %26 = ptrtoint ptr %arrayidx4.i5 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx4.i5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp6.i = icmp eq i8 %27, 0
  br i1 %cmp6.i, label %lor.lhs.false.i.do.body.i7_crit_edge, label %if.end14.i

lor.lhs.false.i.do.body.i7_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i7

do.body.i7:                                       ; preds = %lor.lhs.false.i.do.body.i7_crit_edge, %sw.default.do.body.i7_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %28 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i6 = icmp eq i32 %28, 0
  br i1 %tobool.not.i6, label %do.body.i7.out_crit_edge, label %do.end.i9

do.body.i7.out_crit_edge:                         ; preds = %do.body.i7
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end.i9:                                        ; preds = %do.body.i7
  call void @__sanitizer_cov_trace_pc() #13
  %conv11.i = zext i8 %11 to i32
  %call.i8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.4, i32 noundef %conv11.i) #14
  br label %out

if.end14.i:                                       ; preds = %lor.lhs.false.i
  %conv5.i10 = zext i8 %27 to i32
  %29 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %9, align 8
  %call20.i = tail call i32 @hid_input_report(ptr noundef %30, i32 noundef 0, ptr noundef %report_type, i32 noundef %conv5.i10, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end14.i.out_crit_edge, label %do.body23.i

if.end14.i.out_crit_edge:                         ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.body23.i:                                      ; preds = %if.end14.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %31 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool24.not.i = icmp eq i32 %31, 0
  br i1 %tobool24.not.i, label %do.body23.i.out_crit_edge, label %do.end28.i

do.body23.i.out_crit_edge:                        ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end28.i:                                       ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #13
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.4) #14
  br label %out

out:                                              ; preds = %do.end28.i, %do.body23.i.out_crit_edge, %if.end14.i.out_crit_edge, %do.end.i9, %do.body.i7.out_crit_edge, %logi_dj_recv_forward_null_report.exit, %sw.bb28.out_crit_edge, %sw.bb, %if.end26.out_crit_edge, %if.then25
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call19) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %out ], [ 0, %do.end ], [ 0, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @logi_dj_hidpp_event(ptr noundef %hdev, ptr noundef %data, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  %workitem.i3 = alloca %struct.dj_workitem, align 8
  %workitem.i = alloca %struct.dj_workitem, align 8
  %workitem = alloca %struct.dj_workitem, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %device_index1 = getelementptr inbounds %struct.hidpp_event, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %device_index1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %device_index1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp = icmp eq i8 %3, -1
  br i1 %cmp, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %size)
  %cmp3 = icmp eq i32 %size, 20
  br i1 %cmp3, label %land.lhs.true, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %data, ptr noundef nonnull dereferenceable(4) @unifying_pairing_answer, i32 4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.then6, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr i8, ptr %data, i32 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = and i8 %5, 15
  %narrow = add nuw nsw i8 %6, 1
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %entry.if.end9_crit_edge
  %device_index.0 = phi i8 [ %narrow, %if.then6 ], [ %3, %entry.if.end9_crit_edge ]
  %7 = add i8 %device_index.0, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -7, i8 %7)
  %8 = icmp ult i8 %7, -7
  br i1 %8, label %do.end, label %do.body21

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %conv18 = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.131, i32 noundef %conv18) #14
  br label %cleanup

do.body21:                                        ; preds = %if.end9
  %conv10 = zext i8 %device_index.0 to i32
  %lock = getelementptr inbounds %struct.dj_receiver_dev, ptr %1, i32 0, i32 12
  %call25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %arrayidx30 = getelementptr %struct.dj_receiver_dev, ptr %1, i32 0, i32 3, i32 %conv10
  %9 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx30, align 4
  %type = getelementptr inbounds %struct.dj_receiver_dev, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp31 = icmp eq i32 %12, 4
  %tobool34.not = icmp eq ptr %10, null
  br i1 %cmp31, label %land.lhs.true33, label %if.end57

land.lhs.true33:                                  ; preds = %do.body21
  br i1 %tobool34.not, label %land.lhs.true33.if.else60_crit_edge, label %land.lhs.true35

land.lhs.true33.if.else60_crit_edge:              ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else60

land.lhs.true35:                                  ; preds = %land.lhs.true33
  %sub_id = getelementptr inbounds %struct.hidpp_event, ptr %data, i32 0, i32 2
  %13 = ptrtoint ptr %sub_id to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sub_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %14)
  %cmp37 = icmp eq i8 %14, 65
  br i1 %cmp37, label %land.lhs.true39, label %land.lhs.true35.if.then59_crit_edge

land.lhs.true35.if.then59_crit_edge:              ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then59

land.lhs.true39:                                  ; preds = %land.lhs.true35
  %params = getelementptr inbounds %struct.hidpp_event, ptr %data, i32 0, i32 3
  %15 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %params, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %cmp42 = icmp eq i8 %16, 2
  br i1 %cmp42, label %land.lhs.true44, label %land.lhs.true39.if.then59_crit_edge

land.lhs.true39.if.then59_crit_edge:              ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then59

land.lhs.true44:                                  ; preds = %land.lhs.true39
  %arrayidx46 = getelementptr %struct.hidpp_event, ptr %data, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %18 to i32
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %10, align 8
  %product = getelementptr inbounds %struct.hid_device, ptr %20, i32 0, i32 11
  %21 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %product, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv47)
  %cmp49.not = icmp eq i32 %22, %conv47
  br i1 %cmp49.not, label %land.lhs.true44.if.then59_crit_edge, label %if.then51

land.lhs.true44.if.then59_crit_edge:              ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then59

if.then51:                                        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %workitem) #11
  %23 = ptrtoint ptr %workitem to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 -1, ptr %workitem, align 8
  store i8 2, ptr %workitem, align 8
  %device_index53 = getelementptr inbounds %struct.dj_workitem, ptr %workitem, i32 0, i32 1
  %24 = ptrtoint ptr %device_index1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %device_index1, align 1
  %26 = ptrtoint ptr %device_index53 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %device_index53, align 1
  %device_type = getelementptr inbounds %struct.dj_workitem, ptr %workitem, i32 0, i32 2
  %27 = ptrtoint ptr %device_type to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %device_type, align 2
  %quad_id_msb = getelementptr inbounds %struct.dj_workitem, ptr %workitem, i32 0, i32 3
  %28 = ptrtoint ptr %quad_id_msb to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %quad_id_msb, align 1
  %quad_id_lsb = getelementptr inbounds %struct.dj_workitem, ptr %workitem, i32 0, i32 4
  %29 = ptrtoint ptr %quad_id_lsb to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %quad_id_lsb, align 4
  %reports_supported = getelementptr inbounds %struct.dj_workitem, ptr %workitem, i32 0, i32 5
  %30 = ptrtoint ptr %reports_supported to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 0, ptr %reports_supported, align 8
  %notif_fifo = getelementptr inbounds %struct.dj_receiver_dev, ptr %1, i32 0, i32 7
  %call56 = call i32 @__kfifo_in(ptr noundef %notif_fifo, ptr noundef nonnull %workitem, i32 noundef 16) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %workitem) #11
  br label %if.else60

if.end57:                                         ; preds = %do.body21
  br i1 %tobool34.not, label %if.end57.if.else60_crit_edge, label %if.end57.if.then59_crit_edge

if.end57.if.then59_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then59

if.end57.if.else60_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else60

if.then59:                                        ; preds = %if.end57.if.then59_crit_edge, %land.lhs.true44.if.then59_crit_edge, %land.lhs.true39.if.then59_crit_edge, %land.lhs.true35.if.then59_crit_edge
  %31 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %10, align 8
  %call.i = tail call i32 @hid_input_report(ptr noundef %32, i32 noundef 0, ptr noundef %data, i32 noundef %size, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then59.if.end68_crit_edge, label %do.body.i

if.then59.if.end68_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

do.body.i:                                        ; preds = %if.then59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %33 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool1.not.i = icmp eq i32 %33, 0
  br i1 %tobool1.not.i, label %do.body.i.if.end68_crit_edge, label %do.end.i

do.body.i.if.end68_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.4) #14
  br label %if.end68

if.else60:                                        ; preds = %if.end57.if.else60_crit_edge, %if.then51, %land.lhs.true33.if.else60_crit_edge
  %sub_id61 = getelementptr inbounds %struct.hidpp_event, ptr %data, i32 0, i32 2
  %34 = ptrtoint ptr %sub_id61 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %sub_id61, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %35)
  %cmp63 = icmp eq i8 %35, 65
  br i1 %cmp63, label %if.then65, label %if.else66

if.then65:                                        ; preds = %if.else60
  %36 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %workitem.i) #11
  %38 = ptrtoint ptr %workitem.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 71776119077994495, ptr %workitem.i, align 8
  %device_index.i = getelementptr inbounds %struct.dj_workitem, ptr %workitem.i, i32 0, i32 1
  %39 = ptrtoint ptr %device_index1 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %device_index1, align 1
  %41 = ptrtoint ptr %device_index.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %device_index.i, align 1
  %device_type2.i = getelementptr inbounds %struct.dj_workitem, ptr %workitem.i, i32 0, i32 2
  %quad_id_msb.i = getelementptr inbounds %struct.dj_workitem, ptr %workitem.i, i32 0, i32 3
  %quad_id_lsb.i = getelementptr inbounds %struct.dj_workitem, ptr %workitem.i, i32 0, i32 4
  %reports_supported.i = getelementptr inbounds %struct.dj_workitem, ptr %workitem.i, i32 0, i32 5
  %42 = ptrtoint ptr %reports_supported.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 0, ptr %reports_supported.i, align 8
  %params.i = getelementptr inbounds %struct.hidpp_event, ptr %data, i32 0, i32 3
  %43 = ptrtoint ptr %params.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %params.i, align 1
  %45 = zext i8 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.172)
  switch i8 %44, label %if.then65.sw.epilog.i_crit_edge [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb10.i
    i8 3, label %sw.bb11.i
    i8 4, label %sw.bb12.i
    i8 5, label %sw.bb13.i
    i8 6, label %sw.bb14.i
    i8 7, label %sw.bb15.i
    i8 8, label %sw.bb17.i
    i8 10, label %sw.bb18.i
    i8 12, label %sw.bb19.i
    i8 13, label %sw.bb22.i
    i8 15, label %if.then65.sw.bb25.i_crit_edge
    i8 17, label %if.then65.sw.bb25.i_crit_edge16
  ]

if.then65.sw.bb25.i_crit_edge16:                  ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb25.i

if.then65.sw.bb25.i_crit_edge:                    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb25.i

if.then65.sw.epilog.i_crit_edge:                  ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.then65
  %46 = ptrtoint ptr %workitem.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %workitem.i, align 8
  %arrayidx.i.i = getelementptr %struct.hidpp_event, ptr %data, i32 0, i32 3, i32 1
  %47 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i.i, align 1
  %49 = and i8 %48, 15
  %50 = ptrtoint ptr %device_type2.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %device_type2.i, align 2
  %arrayidx3.i.i = getelementptr %struct.hidpp_event, ptr %data, i32 0, i32 3, i32 3
  %51 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx3.i.i, align 1
  %53 = ptrtoint ptr %quad_id_msb.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %quad_id_msb.i, align 1
  %arrayidx5.i.i = getelementptr %struct.hidpp_event, ptr %data, i32 0, i32 3, i32 2
  %54 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx5.i.i, align 1
  %56 = ptrtoint ptr %quad_id_lsb.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %quad_id_lsb.i, align 4
  %trunc.i.i = trunc i8 %48 to i4
  %57 = zext i4 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.173)
  switch i4 %trunc.i.i, label %sw.bb.i.logi_hidpp_dev_conn_notif_equad.exit.i_crit_edge [
    i4 1, label %sw.bb.i.i
    i4 2, label %sw.bb27.i.i
  ]

sw.bb.i.logi_hidpp_dev_conn_notif_equad.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %logi_hidpp_dev_conn_notif_equad.exit.i

sw.bb.i.i:                                        ; preds = %sw.bb.i
  %58 = ptrtoint ptr %reports_supported.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 -9223372036854775526, ptr %reports_supported.i, align 8
  %conv9.i.i = zext i8 %52 to i16
  %shl.i.i = shl nuw i16 %conv9.i.i, 8
  %conv11.i.i = zext i8 %55 to i16
  %or12.i.i = or i16 %shl.i.i, %conv11.i.i
  %59 = zext i16 %or12.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.174)
  switch i16 %or12.i.i, label %sw.bb.i.i.logi_hidpp_dev_conn_notif_equad.exit.i_crit_edge [
    i16 -19703, label %sw.bb.i.i.if.then.i.i_crit_edge
    i16 -19700, label %sw.bb.i.i.if.then.i.i_crit_edge17
  ]

sw.bb.i.i.if.then.i.i_crit_edge17:                ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

sw.bb.i.i.if.then.i.i_crit_edge:                  ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

sw.bb.i.i.logi_hidpp_dev_conn_notif_equad.exit.i_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %logi_hidpp_dev_conn_notif_equad.exit.i

if.then.i.i:                                      ; preds = %sw.bb.i.i.if.then.i.i_crit_edge, %sw.bb.i.i.if.then.i.i_crit_edge17
  %type18.i.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %37, i32 0, i32 10
  %60 = ptrtoint ptr %type18.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %type18.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %61)
  %cmp19.i.i = icmp eq i32 %61, 6
  %..i = select i1 %cmp19.i.i, i64 -9223372036854775494, i64 -9223372036854775522
  br label %logi_hidpp_dev_conn_notif_equad.exit.sink.split.i

sw.bb27.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %type30.i.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %37, i32 0, i32 10
  %62 = ptrtoint ptr %type30.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %type30.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %63)
  %cmp31.i.i = icmp eq i32 %63, 3
  %spec.store.select.i = select i1 %cmp31.i.i, i64 -9223372036854775796, i64 -9223372036854775804
  br label %logi_hidpp_dev_conn_notif_equad.exit.sink.split.i

logi_hidpp_dev_conn_notif_equad.exit.sink.split.i: ; preds = %sw.bb27.i.i, %if.then.i.i
  %spec.store.select.sink.i = phi i64 [ %spec.store.select.i, %sw.bb27.i.i ], [ %..i, %if.then.i.i ]
  %64 = ptrtoint ptr %reports_supported.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %spec.store.select.sink.i, ptr %reports_supported.i, align 8
  br label %logi_hidpp_dev_conn_notif_equad.exit.i

logi_hidpp_dev_conn_notif_equad.exit.i:           ; preds = %logi_hidpp_dev_conn_notif_equad.exit.sink.split.i, %sw.bb.i.i.logi_hidpp_dev_conn_notif_equad.exit.i_crit_edge, %sw.bb.i.logi_hidpp_dev_conn_notif_equad.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %48)
  %tobool.not.i1 = icmp sgt i8 %48, -1
  br i1 %tobool.not.i1, label %do.end.i2, label %logi_hidpp_dev_conn_notif_equad.exit.i.sw.epilog.i_crit_edge

logi_hidpp_dev_conn_notif_equad.exit.i.sw.epilog.i_crit_edge: ; preds = %logi_hidpp_dev_conn_notif_equad.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

do.end.i2:                                        ; preds = %logi_hidpp_dev_conn_notif_equad.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %conv7.i = zext i8 %40 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.134, i32 noundef %conv7.i) #14
  %65 = ptrtoint ptr %reports_supported.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %reports_supported.i, align 8
  %and9.i = and i64 %66, 9223372036854775807
  store i64 %and9.i, ptr %reports_supported.i, align 8
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %if.then65
  %67 = ptrtoint ptr %workitem.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %workitem.i, align 8
  %arrayidx.i96.i = getelementptr %struct.hidpp_event, ptr %data, i32 0, i32 3, i32 3
  %68 = ptrtoint ptr %arrayidx.i96.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.i96.i, align 1
  %70 = ptrtoint ptr %quad_id_lsb.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %quad_id_lsb.i, align 4
  %71 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.175)
  switch i8 %40, label %do.end16.i.i [
    i8 1, label %sw.bb10.i.sw.bb.i101.i_crit_edge
    i8 2, label %sw.bb10.i.sw.bb.i101.i_crit_edge18
    i8 3, label %sw.bb1.i.i
    i8 4, label %sw.bb10.i.sw.bb11.i.i_crit_edge
  ]

sw.bb10.i.sw.bb11.i.i_crit_edge:                  ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb11.i.i

sw.bb10.i.sw.bb.i101.i_crit_edge18:               ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i101.i

sw.bb10.i.sw.bb.i101.i_crit_edge:                 ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i101.i

sw.bb.i101.i:                                     ; preds = %sw.bb10.i.sw.bb.i101.i_crit_edge, %sw.bb10.i.sw.bb.i101.i_crit_edge18
  %72 = ptrtoint ptr %device_type2.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 2, ptr %device_type2.i, align 2
  %73 = ptrtoint ptr %reports_supported.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 -9223372036854775804, ptr %reports_supported.i, align 8
  br label %sw.epilog.i

sw.bb1.i.i:                                       ; preds = %sw.bb10.i
  %arrayidx3.i102.i = getelementptr %struct.hidpp_event, ptr %data, i32 0, i32 3, i32 1
  %74 = ptrtoint ptr %arrayidx3.i102.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx3.i102.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %75)
  %tobool.not.i.i = icmp sgt i8 %75, -1
  %dev7.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  br i1 %tobool.not.i.i, label %do.end6.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev7.i.i, ptr noundef nonnull @.str.154) #14
  br label %sw.bb11.i.i

do.end6.i.i:                                      ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev7.i.i, ptr noundef nonnull @.str.157) #14
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev7.i.i, ptr noundef nonnull @.str.160) #14
  br label %sw.bb11.i.i

sw.bb11.i.i:                                      ; preds = %do.end6.i.i, %do.end.i.i, %sw.bb10.i.sw.bb11.i.i_crit_edge
  %76 = ptrtoint ptr %device_type2.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %device_type2.i, align 2
  %77 = ptrtoint ptr %reports_supported.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %reports_supported.i, align 8
  %or14.i.i = or i64 %78, -9223372036854775782
  store i64 %or14.i.i, ptr %reports_supported.i, align 8
  br label %sw.epilog.i

do.end16.i.i:                                     ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i = zext i8 %40 to i32
  %dev17.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev17.i.i, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.155, i32 noundef %conv.i.i) #14
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %if.then65
  %79 = ptrtoint ptr %workitem.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %workitem.i, align 8
  %arrayidx.i104.i = getelementptr %struct.hidpp_event, ptr %data, i32 0, i32 3, i32 1
  %80 = ptrtoint ptr %arrayidx.i104.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.i104.i, align 1
  %82 = and i8 %81, 15
  %83 = ptrtoint ptr %device_type2.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %device_type2.i, align 2
  %arrayidx3.i106.i = getelementptr %struct.hidpp_event, ptr %data, i32 0, i32 3, i32 3
  %84 = ptrtoint ptr %arrayidx3.i106.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx3.i106.i, align 1
  %86 = ptrtoint ptr %quad_id_msb.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %quad_id_msb.i, align 1
  %arrayidx5.i108.i = getelementptr %struct.hidpp_event, ptr %data, i32 0, i32 3, i32 2
  %87 = ptrtoint ptr %arrayidx5.i108.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx5.i108.i, align 1
  %89 = ptrtoint ptr %quad_id_lsb.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %quad_id_lsb.i, align 4
  %trunc.i110.i = trunc i8 %81 to i4
  %90 = zext i4 %trunc.i110.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.176)
  switch i4 %trunc.i110.i, label %sw.bb11.i.sw.epilog.i_crit_edge [
    i4 1, label %sw.bb.i117.i
    i4 2, label %sw.bb27.i129.i
  ]

sw.bb11.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb.i117.i:                                     ; preds = %sw.bb11.i
  %91 = ptrtoint ptr %reports_supported.i to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 -9223372036854775526, ptr %reports_supported.i, align 8
  %conv9.i113.i = zext i8 %85 to i16
  %shl.i114.i = shl nuw i16 %conv9.i113.i, 8
  %conv11.i115.i = zext i8 %88 to i16
  %or12.i116.i = or i16 %shl.i114.i, %conv11.i115.i
  %92 = zext i16 %or12.i116.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.177)
  switch i16 %or12.i116.i, label %sw.bb.i117.i.sw.epilog.i_crit_edge [
    i16 -19703, label %sw.bb.i117.i.if.then.i120.i_crit_edge
    i16 -19700, label %sw.bb.i117.i.if.then.i120.i_crit_edge19
  ]

sw.bb.i117.i.if.then.i120.i_crit_edge19:          ; preds = %sw.bb.i117.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i120.i

sw.bb.i117.i.if.then.i120.i_crit_edge:            ; preds = %sw.bb.i117.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i120.i

sw.bb.i117.i.sw.epilog.i_crit_edge:               ; preds = %sw.bb.i117.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.then.i120.i:                                   ; preds = %sw.bb.i117.i.if.then.i120.i_crit_edge, %sw.bb.i117.i.if.then.i120.i_crit_edge19
  %type18.i118.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %37, i32 0, i32 10
  %93 = ptrtoint ptr %type18.i118.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %type18.i118.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %94)
  %cmp19.i119.i = icmp eq i32 %94, 6
  br i1 %cmp19.i119.i, label %if.then21.i122.i, label %if.else.i124.i

if.then21.i122.i:                                 ; preds = %if.then.i120.i
  call void @__sanitizer_cov_trace_pc() #13
  %95 = ptrtoint ptr %reports_supported.i to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 -9223372036854775494, ptr %reports_supported.i, align 8
  br label %sw.epilog.i

if.else.i124.i:                                   ; preds = %if.then.i120.i
  call void @__sanitizer_cov_trace_pc() #13
  %96 = ptrtoint ptr %reports_supported.i to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 -9223372036854775522, ptr %reports_supported.i, align 8
  br label %sw.epilog.i

sw.bb27.i129.i:                                   ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #13
  %type30.i127.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %37, i32 0, i32 10
  %97 = ptrtoint ptr %type30.i127.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %type30.i127.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %98)
  %cmp31.i128.i = icmp eq i32 %98, 3
  %spec.store.select343.i = select i1 %cmp31.i128.i, i64 -9223372036854775796, i64 -9223372036854775804
  %99 = ptrtoint ptr %reports_supported.i to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %spec.store.select343.i, ptr %reports_supported.i, align 8
  br label %sw.epilog.i

sw.bb12.i:                                        ; preds = %if.then65
  %100 = ptrtoint ptr %workitem.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 1, ptr %workitem.i, align 8
  %arrayidx.i134.i = getelementptr %struct.hidpp_event, ptr %data, i32 0, i32 3, i32 1
  %101 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx.i134.i, align 1
  %103 = and i8 %102, 15
  %104 = ptrtoint ptr %device_type2.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %device_type2.i, align 2
  %arrayidx3.i136.i = getelementptr %struct.hidpp_event, ptr %data, i32 0, i32 3, i32 3
  %105 = ptrtoint ptr %arrayidx3.i136.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx3.i136.i, align 1
  %107 = ptrtoint ptr %quad_id_msb.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %quad_id_msb.i, align 1
  %arrayidx5.i138.i = getelementptr %struct.hidpp_event, ptr %data, i32 0, i32 3, i32 2
  %108 = ptrtoint ptr %arrayidx5.i138.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx5.i138.i, align 1
  %110 = ptrtoint ptr %quad_id_lsb.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %quad_id_lsb.i, align 4
  %trunc.i140.i = trunc i8 %102 to i4
  %111 = zext i4 %trunc.i140.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.178)
  switch i4 %trunc.i140.i, label %sw.bb12.i.sw.epilog.i_crit_edge [
    i4 1, label %sw.bb.i147.i
    i4 2, label %sw.bb27.i159.i
  ]

sw.bb12.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb.i147.i:                                     ; preds = %sw.bb12.i
  %112 = ptrtoint ptr %reports_supported.i to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 -9223372036854775526, ptr %reports_supported.i, align 8
  %conv9.i143.i = zext i8 %106 to i16
  %shl.i144.i = shl nuw i16 %conv9.i143.i, 8
  %conv11.i145.i = zext i8 %109 to i16
  %or12.i146.i = or i16 %shl.i144.i, %conv11.i145.i
  %113 = zext i16 %or12.i146.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.179)
  switch i16 %or12.i146.i, label %sw.bb.i147.i.sw.epilog.i_crit_edge [
    i16 -19703, label %sw.bb.i147.i.if.then.i150.i_crit_edge
    i16 -19700, label %sw.bb.i147.i.if.then.i150.i_crit_edge20
  ]

sw.bb.i147.i.if.then.i150.i_crit_edge20:          ; preds = %sw.bb.i147.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i150.i

sw.bb.i147.i.if.then.i150.i_crit_edge:            ; preds = %sw.bb.i147.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i150.i

sw.bb.i147.i.sw.epilog.i_crit_edge:               ; preds = %sw.bb.i147.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.then.i150.i:                                   ; preds = %sw.bb.i147.i.if.then.i150.i_crit_edge, %sw.bb.i147.i.if.then.i150.i_crit_edge20
  %type18.i148.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %37, i32 0, i32 10
  %114 = ptrtoint ptr %type18.i148.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %type18.i148.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %115)
  %cmp19.i149.i = icmp eq i32 %115, 6
  br i1 %cmp19.i149.i, label %if.then21.i152.i, label %if.else.i154.i

if.then21.i152.i:                                 ; preds = %if.then.i150.i
  call void @__sanitizer_cov_trace_pc() #13
  %116 = ptrtoint ptr %reports_supported.i to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 -9223372036854775494, ptr %reports_supported.i, align 8
  br label %sw.epilog.i

if.else.i154.i:                                   ; preds = %if.then.i150.i
  call void @__sanitizer_cov_trace_pc() #13
  %117 = ptrtoint ptr %reports_supported.i to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 -9223372036854775522, ptr %reports_supported.i, align 8
  br label %sw.epilog.i

sw.bb27.i159.i:                                   ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #13
  %type30.i157.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %37, i32 0, i32 10
  %118 = ptrtoint ptr %type30.i157.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %type30.i157.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %119)
  %cmp31.i158.i = icmp eq i32 %119, 3
  %spec.store.select344.i = select i1 %cmp31.i158.i, i64 -9223372036854775796, i64 -9223372036854775804
  %120 = ptrtoint ptr %reports_supported.i to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %spec.store.select344.i, ptr %reports_supported.i, align 8
  br label %sw.epilog.i

sw.bb13.i:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb14.i:                                        ; preds = %if.then65
  %121 = ptrtoint ptr %workitem.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 1, ptr %workitem.i, align 8
  %arrayidx.i164.i = getelementptr %struct.hidpp_event, ptr %data, i32 0, i32 3, i32 1
  %122 = ptrtoint ptr %arrayidx.i164.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx.i164.i, align 1
  %124 = and i8 %123, 15
  %125 = ptrtoint ptr %device_type2.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %device_type2.i, align 2
  %arrayidx3.i166.i = getelementptr %struct.hidpp_event, ptr %data, i32 0, i32 3, i32 3
  %126 = ptrtoint ptr %arrayidx3.i166.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx3.i166.i, align 1
  %128 = ptrtoint ptr %quad_id_msb.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %quad_id_msb.i, align 1
  %arrayidx5.i168.i = getelementptr %struct.hidpp_event, ptr %data, i32 0, i32 3, i32 2
  %129 = ptrtoint ptr %arrayidx5.i168.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx5.i168.i, align 1
  %131 = ptrtoint ptr %quad_id_lsb.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %quad_id_lsb.i, align 4
  %trunc.i170.i = trunc i8 %123 to i4
  %132 = zext i4 %trunc.i170.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values.180)
  switch i4 %trunc.i170.i, label %sw.bb14.i.sw.epilog.i_crit_edge [
    i4 1, label %sw.bb.i177.i
    i4 2, label %sw.bb27.i189.i
  ]

sw.bb14.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb.i177.i:                                     ; preds = %sw.bb14.i
  %133 = ptrtoint ptr %reports_supported.i to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 -9223372036854775526, ptr %reports_supported.i, align 8
  %conv9.i173.i = zext i8 %127 to i16
  %shl.i174.i = shl nuw i16 %conv9.i173.i, 8
  %conv11.i175.i = zext i8 %130 to i16
  %or12.i176.i = or i16 %shl.i174.i, %conv11.i175.i
  %134 = zext i16 %or12.i176.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %134, ptr @__sancov_gen_cov_switch_values.181)
  switch i16 %or12.i176.i, label %sw.bb.i177.i.sw.epilog.i_crit_edge [
    i16 -19703, label %sw.bb.i177.i.if.then.i180.i_crit_edge
    i16 -19700, label %sw.bb.i177.i.if.then.i180.i_crit_edge21
  ]

sw.bb.i177.i.if.then.i180.i_crit_edge21:          ; preds = %sw.bb.i177.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i180.i

sw.bb.i177.i.if.then.i180.i_crit_edge:            ; preds = %sw.bb.i177.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i180.i

sw.bb.i177.i.sw.epilog.i_crit_edge:               ; preds = %sw.bb.i177.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.then.i180.i:                                   ; preds = %sw.bb.i177.i.if.then.i180.i_crit_edge, %sw.bb.i177.i.if.then.i180.i_crit_edge21
  %type18.i178.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %37, i32 0, i32 10
  %135 = ptrtoint ptr %type18.i178.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %type18.i178.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %136)
  %cmp19.i179.i = icmp eq i32 %136, 6
  br i1 %cmp19.i179.i, label %if.then21.i182.i, label %if.else.i184.i

if.then21.i182.i:                                 ; preds = %if.then.i180.i
  call void @__sanitizer_cov_trace_pc() #13
  %137 = ptrtoint ptr %reports_supported.i to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 -9223372036854775494, ptr %reports_supported.i, align 8
  br label %sw.epilog.i

if.else.i184.i:                                   ; preds = %if.then.i180.i
  call void @__sanitizer_cov_trace_pc() #13
  %138 = ptrtoint ptr %reports_supported.i to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 -9223372036854775522, ptr %reports_supported.i, align 8
  br label %sw.epilog.i

sw.bb27.i189.i:                                   ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #13
  %type30.i187.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %37, i32 0, i32 10
  %139 = ptrtoint ptr %type30.i187.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %type30.i187.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %140)
  %cmp31.i188.i = icmp eq i32 %140, 3
  %spec.store.select345.i = select i1 %cmp31.i188.i, i64 -9223372036854775796, i64 -9223372036854775804
  %141 = ptrtoint ptr %reports_supported.i to i32
  call void @__asan_store8_noabort(i32 %141)
  store i64 %spec.store.select345.i, ptr %reports_supported.i, align 8
  br label %sw.epilog.i

sw.bb15.i:                                        ; preds = %if.then65
  %142 = ptrtoint ptr %workitem.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 1, ptr %workitem.i, align 8
  %arrayidx.i194.i = getelementptr %struct.hidpp_event, ptr %data, i32 0, i32 3, i32 1
  %143 = ptrtoint ptr %arrayidx.i194.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx.i194.i, align 1
  %145 = and i8 %144, 15
  %146 = ptrtoint ptr %device_type2.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %145, ptr %device_type2.i, align 2
  %arrayidx3.i196.i = getelementptr %struct.hidpp_event, ptr %data, i32 0, i32 3, i32 3
  %147 = ptrtoint ptr %arrayidx3.i196.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx3.i196.i, align 1
  %149 = ptrtoint ptr %quad_id_msb.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %148, ptr %quad_id_msb.i, align 1
  %arrayidx5.i198.i = getelementptr %struct.hidpp_event, ptr %data, i32 0, i32 3, i32 2
  %150 = ptrtoint ptr %arrayidx5.i198.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx5.i198.i, align 1
  %152 = ptrtoint ptr %quad_id_lsb.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %151, ptr %quad_id_lsb.i, align 4
  %trunc.i200.i = trunc i8 %144 to i4
  %153 = zext i4 %trunc.i200.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %153, ptr @__sancov_gen_cov_switch_values.182)
  switch i4 %trunc.i200.i, label %sw.bb15.i.logi_hidpp_dev_conn_notif_equad.exit222.i_crit_edge [
    i4 1, label %sw.bb.i207.i
    i4 2, label %sw.bb27.i219.i
  ]

sw.bb15.i.logi_hidpp_dev_conn_notif_equad.exit222.i_crit_edge: ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %logi_hidpp_dev_conn_notif_equad.exit222.i

sw.bb.i207.i:                                     ; preds = %sw.bb15.i
  %154 = ptrtoint ptr %reports_supported.i to i32
  call void @__asan_store8_noabort(i32 %154)
  store i64 -9223372036854775526, ptr %reports_supported.i, align 8
  %conv9.i203.i = zext i8 %148 to i16
  %shl.i204.i = shl nuw i16 %conv9.i203.i, 8
  %conv11.i205.i = zext i8 %151 to i16
  %or12.i206.i = or i16 %shl.i204.i, %conv11.i205.i
  %155 = zext i16 %or12.i206.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %155, ptr @__sancov_gen_cov_switch_values.183)
  switch i16 %or12.i206.i, label %sw.bb.i207.i.logi_hidpp_dev_conn_notif_equad.exit222.i_crit_edge [
    i16 -19703, label %sw.bb.i207.i.if.then.i210.i_crit_edge
    i16 -19700, label %sw.bb.i207.i.if.then.i210.i_crit_edge22
  ]

sw.bb.i207.i.if.then.i210.i_crit_edge22:          ; preds = %sw.bb.i207.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i210.i

sw.bb.i207.i.if.then.i210.i_crit_edge:            ; preds = %sw.bb.i207.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i210.i

sw.bb.i207.i.logi_hidpp_dev_conn_notif_equad.exit222.i_crit_edge: ; preds = %sw.bb.i207.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %logi_hidpp_dev_conn_notif_equad.exit222.i

if.then.i210.i:                                   ; preds = %sw.bb.i207.i.if.then.i210.i_crit_edge, %sw.bb.i207.i.if.then.i210.i_crit_edge22
  %type18.i208.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %37, i32 0, i32 10
  %156 = ptrtoint ptr %type18.i208.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %type18.i208.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %157)
  %cmp19.i209.i = icmp eq i32 %157, 6
  %.351.i = select i1 %cmp19.i209.i, i64 -9223372036854775494, i64 -9223372036854775522
  br label %logi_hidpp_dev_conn_notif_equad.exit222.sink.split.i

sw.bb27.i219.i:                                   ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #13
  %type30.i217.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %37, i32 0, i32 10
  %158 = ptrtoint ptr %type30.i217.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %type30.i217.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %159)
  %cmp31.i218.i = icmp eq i32 %159, 3
  %spec.store.select346.i = select i1 %cmp31.i218.i, i64 -9223372036854775796, i64 -9223372036854775804
  br label %logi_hidpp_dev_conn_notif_equad.exit222.sink.split.i

logi_hidpp_dev_conn_notif_equad.exit222.sink.split.i: ; preds = %sw.bb27.i219.i, %if.then.i210.i
  %spec.store.select346.sink.i = phi i64 [ %spec.store.select346.i, %sw.bb27.i219.i ], [ %.351.i, %if.then.i210.i ]
  %160 = ptrtoint ptr %reports_supported.i to i32
  call void @__asan_store8_noabort(i32 %160)
  store i64 %spec.store.select346.sink.i, ptr %reports_supported.i, align 8
  br label %logi_hidpp_dev_conn_notif_equad.exit222.i

logi_hidpp_dev_conn_notif_equad.exit222.i:        ; preds = %logi_hidpp_dev_conn_notif_equad.exit222.sink.split.i, %sw.bb.i207.i.logi_hidpp_dev_conn_notif_equad.exit222.i_crit_edge, %sw.bb15.i.logi_hidpp_dev_conn_notif_equad.exit222.i_crit_edge
  %161 = ptrtoint ptr %reports_supported.i to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %reports_supported.i, align 8
  %or.i = or i64 %162, 2
  store i64 %or.i, ptr %reports_supported.i, align 8
  br label %sw.epilog.i

sw.bb17.i:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb18.i:                                        ; preds = %if.then65
  %163 = ptrtoint ptr %workitem.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 1, ptr %workitem.i, align 8
  %arrayidx.i224.i = getelementptr %struct.hidpp_event, ptr %data, i32 0, i32 3, i32 1
  %164 = ptrtoint ptr %arrayidx.i224.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx.i224.i, align 1
  %166 = and i8 %165, 15
  %167 = ptrtoint ptr %device_type2.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %166, ptr %device_type2.i, align 2
  %arrayidx3.i226.i = getelementptr %struct.hidpp_event, ptr %data, i32 0, i32 3, i32 3
  %168 = ptrtoint ptr %arrayidx3.i226.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx3.i226.i, align 1
  %170 = ptrtoint ptr %quad_id_msb.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %169, ptr %quad_id_msb.i, align 1
  %arrayidx5.i228.i = getelementptr %struct.hidpp_event, ptr %data, i32 0, i32 3, i32 2
  %171 = ptrtoint ptr %arrayidx5.i228.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx5.i228.i, align 1
  %173 = ptrtoint ptr %quad_id_lsb.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %172, ptr %quad_id_lsb.i, align 4
  %trunc.i230.i = trunc i8 %165 to i4
  %174 = zext i4 %trunc.i230.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %174, ptr @__sancov_gen_cov_switch_values.184)
  switch i4 %trunc.i230.i, label %sw.bb18.i.sw.epilog.i_crit_edge [
    i4 1, label %sw.bb.i237.i
    i4 2, label %sw.bb27.i249.i
  ]

sw.bb18.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb.i237.i:                                     ; preds = %sw.bb18.i
  %175 = ptrtoint ptr %reports_supported.i to i32
  call void @__asan_store8_noabort(i32 %175)
  store i64 -9223372036854775526, ptr %reports_supported.i, align 8
  %conv9.i233.i = zext i8 %169 to i16
  %shl.i234.i = shl nuw i16 %conv9.i233.i, 8
  %conv11.i235.i = zext i8 %172 to i16
  %or12.i236.i = or i16 %shl.i234.i, %conv11.i235.i
  %176 = zext i16 %or12.i236.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %176, ptr @__sancov_gen_cov_switch_values.185)
  switch i16 %or12.i236.i, label %sw.bb.i237.i.sw.epilog.i_crit_edge [
    i16 -19703, label %sw.bb.i237.i.if.then.i240.i_crit_edge
    i16 -19700, label %sw.bb.i237.i.if.then.i240.i_crit_edge23
  ]

sw.bb.i237.i.if.then.i240.i_crit_edge23:          ; preds = %sw.bb.i237.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i240.i

sw.bb.i237.i.if.then.i240.i_crit_edge:            ; preds = %sw.bb.i237.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i240.i

sw.bb.i237.i.sw.epilog.i_crit_edge:               ; preds = %sw.bb.i237.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.then.i240.i:                                   ; preds = %sw.bb.i237.i.if.then.i240.i_crit_edge, %sw.bb.i237.i.if.then.i240.i_crit_edge23
  %type18.i238.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %37, i32 0, i32 10
  %177 = ptrtoint ptr %type18.i238.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %type18.i238.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %178)
  %cmp19.i239.i = icmp eq i32 %178, 6
  br i1 %cmp19.i239.i, label %if.then21.i242.i, label %if.else.i244.i

if.then21.i242.i:                                 ; preds = %if.then.i240.i
  call void @__sanitizer_cov_trace_pc() #13
  %179 = ptrtoint ptr %reports_supported.i to i32
  call void @__asan_store8_noabort(i32 %179)
  store i64 -9223372036854775494, ptr %reports_supported.i, align 8
  br label %sw.epilog.i

if.else.i244.i:                                   ; preds = %if.then.i240.i
  call void @__sanitizer_cov_trace_pc() #13
  %180 = ptrtoint ptr %reports_supported.i to i32
  call void @__asan_store8_noabort(i32 %180)
  store i64 -9223372036854775522, ptr %reports_supported.i, align 8
  br label %sw.epilog.i

sw.bb27.i249.i:                                   ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #13
  %type30.i247.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %37, i32 0, i32 10
  %181 = ptrtoint ptr %type30.i247.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %type30.i247.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %182)
  %cmp31.i248.i = icmp eq i32 %182, 3
  %spec.store.select347.i = select i1 %cmp31.i248.i, i64 -9223372036854775796, i64 -9223372036854775804
  %183 = ptrtoint ptr %reports_supported.i to i32
  call void @__asan_store8_noabort(i32 %183)
  store i64 %spec.store.select347.i, ptr %reports_supported.i, align 8
  br label %sw.epilog.i

sw.bb19.i:                                        ; preds = %if.then65
  %184 = ptrtoint ptr %workitem.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 1, ptr %workitem.i, align 8
  %arrayidx.i254.i = getelementptr %struct.hidpp_event, ptr %data, i32 0, i32 3, i32 1
  %185 = ptrtoint ptr %arrayidx.i254.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %arrayidx.i254.i, align 1
  %187 = and i8 %186, 15
  %188 = ptrtoint ptr %device_type2.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %187, ptr %device_type2.i, align 2
  %arrayidx3.i256.i = getelementptr %struct.hidpp_event, ptr %data, i32 0, i32 3, i32 3
  %189 = ptrtoint ptr %arrayidx3.i256.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx3.i256.i, align 1
  %191 = ptrtoint ptr %quad_id_msb.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %190, ptr %quad_id_msb.i, align 1
  %arrayidx5.i258.i = getelementptr %struct.hidpp_event, ptr %data, i32 0, i32 3, i32 2
  %192 = ptrtoint ptr %arrayidx5.i258.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %arrayidx5.i258.i, align 1
  %194 = ptrtoint ptr %quad_id_lsb.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %193, ptr %quad_id_lsb.i, align 4
  %trunc.i260.i = trunc i8 %186 to i4
  %195 = zext i4 %trunc.i260.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %195, ptr @__sancov_gen_cov_switch_values.186)
  switch i4 %trunc.i260.i, label %sw.bb19.i.logi_hidpp_dev_conn_notif_equad.exit282.i_crit_edge [
    i4 1, label %sw.bb.i267.i
    i4 2, label %sw.bb27.i279.i
  ]

sw.bb19.i.logi_hidpp_dev_conn_notif_equad.exit282.i_crit_edge: ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %logi_hidpp_dev_conn_notif_equad.exit282.i

sw.bb.i267.i:                                     ; preds = %sw.bb19.i
  %196 = ptrtoint ptr %reports_supported.i to i32
  call void @__asan_store8_noabort(i32 %196)
  store i64 -9223372036854775526, ptr %reports_supported.i, align 8
  %conv9.i263.i = zext i8 %190 to i16
  %shl.i264.i = shl nuw i16 %conv9.i263.i, 8
  %conv11.i265.i = zext i8 %193 to i16
  %or12.i266.i = or i16 %shl.i264.i, %conv11.i265.i
  %197 = zext i16 %or12.i266.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %197, ptr @__sancov_gen_cov_switch_values.187)
  switch i16 %or12.i266.i, label %sw.bb.i267.i.logi_hidpp_dev_conn_notif_equad.exit282.i_crit_edge [
    i16 -19703, label %sw.bb.i267.i.if.then.i270.i_crit_edge
    i16 -19700, label %sw.bb.i267.i.if.then.i270.i_crit_edge24
  ]

sw.bb.i267.i.if.then.i270.i_crit_edge24:          ; preds = %sw.bb.i267.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i270.i

sw.bb.i267.i.if.then.i270.i_crit_edge:            ; preds = %sw.bb.i267.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i270.i

sw.bb.i267.i.logi_hidpp_dev_conn_notif_equad.exit282.i_crit_edge: ; preds = %sw.bb.i267.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %logi_hidpp_dev_conn_notif_equad.exit282.i

if.then.i270.i:                                   ; preds = %sw.bb.i267.i.if.then.i270.i_crit_edge, %sw.bb.i267.i.if.then.i270.i_crit_edge24
  %type18.i268.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %37, i32 0, i32 10
  %198 = ptrtoint ptr %type18.i268.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %type18.i268.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %199)
  %cmp19.i269.i = icmp eq i32 %199, 6
  %.352.i = select i1 %cmp19.i269.i, i64 -9223372036854775494, i64 -9223372036854775522
  br label %logi_hidpp_dev_conn_notif_equad.exit282.sink.split.i

sw.bb27.i279.i:                                   ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #13
  %type30.i277.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %37, i32 0, i32 10
  %200 = ptrtoint ptr %type30.i277.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %type30.i277.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %201)
  %cmp31.i278.i = icmp eq i32 %201, 3
  %spec.store.select348.i = select i1 %cmp31.i278.i, i64 -9223372036854775796, i64 -9223372036854775804
  br label %logi_hidpp_dev_conn_notif_equad.exit282.sink.split.i

logi_hidpp_dev_conn_notif_equad.exit282.sink.split.i: ; preds = %sw.bb27.i279.i, %if.then.i270.i
  %spec.store.select348.sink.i = phi i64 [ %spec.store.select348.i, %sw.bb27.i279.i ], [ %.352.i, %if.then.i270.i ]
  %202 = ptrtoint ptr %reports_supported.i to i32
  call void @__asan_store8_noabort(i32 %202)
  store i64 %spec.store.select348.sink.i, ptr %reports_supported.i, align 8
  br label %logi_hidpp_dev_conn_notif_equad.exit282.i

logi_hidpp_dev_conn_notif_equad.exit282.i:        ; preds = %logi_hidpp_dev_conn_notif_equad.exit282.sink.split.i, %sw.bb.i267.i.logi_hidpp_dev_conn_notif_equad.exit282.i_crit_edge, %sw.bb19.i.logi_hidpp_dev_conn_notif_equad.exit282.i_crit_edge
  %203 = ptrtoint ptr %reports_supported.i to i32
  call void @__asan_load8_noabort(i32 %203)
  %204 = load i64, ptr %reports_supported.i, align 8
  %or21.i = or i64 %204, 2
  store i64 %or21.i, ptr %reports_supported.i, align 8
  br label %sw.epilog.i

sw.bb22.i:                                        ; preds = %if.then65
  %205 = ptrtoint ptr %workitem.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 1, ptr %workitem.i, align 8
  %arrayidx.i284.i = getelementptr %struct.hidpp_event, ptr %data, i32 0, i32 3, i32 1
  %206 = ptrtoint ptr %arrayidx.i284.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %arrayidx.i284.i, align 1
  %208 = and i8 %207, 15
  %209 = ptrtoint ptr %device_type2.i to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %208, ptr %device_type2.i, align 2
  %arrayidx3.i286.i = getelementptr %struct.hidpp_event, ptr %data, i32 0, i32 3, i32 3
  %210 = ptrtoint ptr %arrayidx3.i286.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %arrayidx3.i286.i, align 1
  %212 = ptrtoint ptr %quad_id_msb.i to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %211, ptr %quad_id_msb.i, align 1
  %arrayidx5.i288.i = getelementptr %struct.hidpp_event, ptr %data, i32 0, i32 3, i32 2
  %213 = ptrtoint ptr %arrayidx5.i288.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %arrayidx5.i288.i, align 1
  %215 = ptrtoint ptr %quad_id_lsb.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %214, ptr %quad_id_lsb.i, align 4
  %trunc.i290.i = trunc i8 %207 to i4
  %216 = zext i4 %trunc.i290.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %216, ptr @__sancov_gen_cov_switch_values.188)
  switch i4 %trunc.i290.i, label %sw.bb22.i.logi_hidpp_dev_conn_notif_equad.exit312.i_crit_edge [
    i4 1, label %sw.bb.i297.i
    i4 2, label %sw.bb27.i309.i
  ]

sw.bb22.i.logi_hidpp_dev_conn_notif_equad.exit312.i_crit_edge: ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %logi_hidpp_dev_conn_notif_equad.exit312.i

sw.bb.i297.i:                                     ; preds = %sw.bb22.i
  %217 = ptrtoint ptr %reports_supported.i to i32
  call void @__asan_store8_noabort(i32 %217)
  store i64 -9223372036854775526, ptr %reports_supported.i, align 8
  %conv9.i293.i = zext i8 %211 to i16
  %shl.i294.i = shl nuw i16 %conv9.i293.i, 8
  %conv11.i295.i = zext i8 %214 to i16
  %or12.i296.i = or i16 %shl.i294.i, %conv11.i295.i
  %218 = zext i16 %or12.i296.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %218, ptr @__sancov_gen_cov_switch_values.189)
  switch i16 %or12.i296.i, label %sw.bb.i297.i.logi_hidpp_dev_conn_notif_equad.exit312.i_crit_edge [
    i16 -19703, label %sw.bb.i297.i.if.then.i300.i_crit_edge
    i16 -19700, label %sw.bb.i297.i.if.then.i300.i_crit_edge25
  ]

sw.bb.i297.i.if.then.i300.i_crit_edge25:          ; preds = %sw.bb.i297.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i300.i

sw.bb.i297.i.if.then.i300.i_crit_edge:            ; preds = %sw.bb.i297.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i300.i

sw.bb.i297.i.logi_hidpp_dev_conn_notif_equad.exit312.i_crit_edge: ; preds = %sw.bb.i297.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %logi_hidpp_dev_conn_notif_equad.exit312.i

if.then.i300.i:                                   ; preds = %sw.bb.i297.i.if.then.i300.i_crit_edge, %sw.bb.i297.i.if.then.i300.i_crit_edge25
  %type18.i298.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %37, i32 0, i32 10
  %219 = ptrtoint ptr %type18.i298.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %type18.i298.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %220)
  %cmp19.i299.i = icmp eq i32 %220, 6
  %.353.i = select i1 %cmp19.i299.i, i64 -9223372036854775494, i64 -9223372036854775522
  br label %logi_hidpp_dev_conn_notif_equad.exit312.sink.split.i

sw.bb27.i309.i:                                   ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #13
  %type30.i307.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %37, i32 0, i32 10
  %221 = ptrtoint ptr %type30.i307.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %type30.i307.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %222)
  %cmp31.i308.i = icmp eq i32 %222, 3
  %spec.store.select349.i = select i1 %cmp31.i308.i, i64 -9223372036854775796, i64 -9223372036854775804
  br label %logi_hidpp_dev_conn_notif_equad.exit312.sink.split.i

logi_hidpp_dev_conn_notif_equad.exit312.sink.split.i: ; preds = %sw.bb27.i309.i, %if.then.i300.i
  %spec.store.select349.sink.i = phi i64 [ %spec.store.select349.i, %sw.bb27.i309.i ], [ %.353.i, %if.then.i300.i ]
  %223 = ptrtoint ptr %reports_supported.i to i32
  call void @__asan_store8_noabort(i32 %223)
  store i64 %spec.store.select349.sink.i, ptr %reports_supported.i, align 8
  br label %logi_hidpp_dev_conn_notif_equad.exit312.i

logi_hidpp_dev_conn_notif_equad.exit312.i:        ; preds = %logi_hidpp_dev_conn_notif_equad.exit312.sink.split.i, %sw.bb.i297.i.logi_hidpp_dev_conn_notif_equad.exit312.i_crit_edge, %sw.bb22.i.logi_hidpp_dev_conn_notif_equad.exit312.i_crit_edge
  %224 = ptrtoint ptr %reports_supported.i to i32
  call void @__asan_load8_noabort(i32 %224)
  %225 = load i64, ptr %reports_supported.i, align 8
  %or24.i = or i64 %225, 2
  store i64 %or24.i, ptr %reports_supported.i, align 8
  br label %sw.epilog.i

sw.bb25.i:                                        ; preds = %if.then65.sw.bb25.i_crit_edge, %if.then65.sw.bb25.i_crit_edge16
  %226 = ptrtoint ptr %workitem.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 1, ptr %workitem.i, align 8
  %arrayidx.i314.i = getelementptr %struct.hidpp_event, ptr %data, i32 0, i32 3, i32 1
  %227 = ptrtoint ptr %arrayidx.i314.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %arrayidx.i314.i, align 1
  %229 = and i8 %228, 15
  %230 = ptrtoint ptr %device_type2.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %229, ptr %device_type2.i, align 2
  %arrayidx3.i316.i = getelementptr %struct.hidpp_event, ptr %data, i32 0, i32 3, i32 3
  %231 = ptrtoint ptr %arrayidx3.i316.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %arrayidx3.i316.i, align 1
  %233 = ptrtoint ptr %quad_id_msb.i to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %232, ptr %quad_id_msb.i, align 1
  %arrayidx5.i318.i = getelementptr %struct.hidpp_event, ptr %data, i32 0, i32 3, i32 2
  %234 = ptrtoint ptr %arrayidx5.i318.i to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %arrayidx5.i318.i, align 1
  %236 = ptrtoint ptr %quad_id_lsb.i to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 %235, ptr %quad_id_lsb.i, align 4
  %trunc.i320.i = trunc i8 %228 to i4
  %237 = zext i4 %trunc.i320.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %237, ptr @__sancov_gen_cov_switch_values.190)
  switch i4 %trunc.i320.i, label %sw.bb25.i.logi_hidpp_dev_conn_notif_equad.exit342.i_crit_edge [
    i4 1, label %sw.bb.i327.i
    i4 2, label %sw.bb27.i339.i
  ]

sw.bb25.i.logi_hidpp_dev_conn_notif_equad.exit342.i_crit_edge: ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %logi_hidpp_dev_conn_notif_equad.exit342.i

sw.bb.i327.i:                                     ; preds = %sw.bb25.i
  %238 = ptrtoint ptr %reports_supported.i to i32
  call void @__asan_store8_noabort(i32 %238)
  store i64 -9223372036854775526, ptr %reports_supported.i, align 8
  %conv9.i323.i = zext i8 %232 to i16
  %shl.i324.i = shl nuw i16 %conv9.i323.i, 8
  %conv11.i325.i = zext i8 %235 to i16
  %or12.i326.i = or i16 %shl.i324.i, %conv11.i325.i
  %239 = zext i16 %or12.i326.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %239, ptr @__sancov_gen_cov_switch_values.191)
  switch i16 %or12.i326.i, label %sw.bb.i327.i.logi_hidpp_dev_conn_notif_equad.exit342.i_crit_edge [
    i16 -19703, label %sw.bb.i327.i.if.then.i330.i_crit_edge
    i16 -19700, label %sw.bb.i327.i.if.then.i330.i_crit_edge26
  ]

sw.bb.i327.i.if.then.i330.i_crit_edge26:          ; preds = %sw.bb.i327.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i330.i

sw.bb.i327.i.if.then.i330.i_crit_edge:            ; preds = %sw.bb.i327.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i330.i

sw.bb.i327.i.logi_hidpp_dev_conn_notif_equad.exit342.i_crit_edge: ; preds = %sw.bb.i327.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %logi_hidpp_dev_conn_notif_equad.exit342.i

if.then.i330.i:                                   ; preds = %sw.bb.i327.i.if.then.i330.i_crit_edge, %sw.bb.i327.i.if.then.i330.i_crit_edge26
  %type18.i328.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %37, i32 0, i32 10
  %240 = ptrtoint ptr %type18.i328.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %type18.i328.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %241)
  %cmp19.i329.i = icmp eq i32 %241, 6
  %.354.i = select i1 %cmp19.i329.i, i64 -9223372036854775494, i64 -9223372036854775522
  br label %logi_hidpp_dev_conn_notif_equad.exit342.sink.split.i

sw.bb27.i339.i:                                   ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #13
  %type30.i337.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %37, i32 0, i32 10
  %242 = ptrtoint ptr %type30.i337.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %type30.i337.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %243)
  %cmp31.i338.i = icmp eq i32 %243, 3
  %spec.store.select350.i = select i1 %cmp31.i338.i, i64 -9223372036854775796, i64 -9223372036854775804
  br label %logi_hidpp_dev_conn_notif_equad.exit342.sink.split.i

logi_hidpp_dev_conn_notif_equad.exit342.sink.split.i: ; preds = %sw.bb27.i339.i, %if.then.i330.i
  %spec.store.select350.sink.i = phi i64 [ %spec.store.select350.i, %sw.bb27.i339.i ], [ %.354.i, %if.then.i330.i ]
  %244 = ptrtoint ptr %reports_supported.i to i32
  call void @__asan_store8_noabort(i32 %244)
  store i64 %spec.store.select350.sink.i, ptr %reports_supported.i, align 8
  br label %logi_hidpp_dev_conn_notif_equad.exit342.i

logi_hidpp_dev_conn_notif_equad.exit342.i:        ; preds = %logi_hidpp_dev_conn_notif_equad.exit342.sink.split.i, %sw.bb.i327.i.logi_hidpp_dev_conn_notif_equad.exit342.i_crit_edge, %sw.bb25.i.logi_hidpp_dev_conn_notif_equad.exit342.i_crit_edge
  %245 = ptrtoint ptr %reports_supported.i to i32
  call void @__asan_load8_noabort(i32 %245)
  %246 = load i64, ptr %reports_supported.i, align 8
  %or27.i = or i64 %246, 2
  store i64 %or27.i, ptr %reports_supported.i, align 8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %logi_hidpp_dev_conn_notif_equad.exit342.i, %logi_hidpp_dev_conn_notif_equad.exit312.i, %logi_hidpp_dev_conn_notif_equad.exit282.i, %sw.bb27.i249.i, %if.else.i244.i, %if.then21.i242.i, %sw.bb.i237.i.sw.epilog.i_crit_edge, %sw.bb18.i.sw.epilog.i_crit_edge, %sw.bb17.i, %logi_hidpp_dev_conn_notif_equad.exit222.i, %sw.bb27.i189.i, %if.else.i184.i, %if.then21.i182.i, %sw.bb.i177.i.sw.epilog.i_crit_edge, %sw.bb14.i.sw.epilog.i_crit_edge, %sw.bb13.i, %sw.bb27.i159.i, %if.else.i154.i, %if.then21.i152.i, %sw.bb.i147.i.sw.epilog.i_crit_edge, %sw.bb12.i.sw.epilog.i_crit_edge, %sw.bb27.i129.i, %if.else.i124.i, %if.then21.i122.i, %sw.bb.i117.i.sw.epilog.i_crit_edge, %sw.bb11.i.sw.epilog.i_crit_edge, %do.end16.i.i, %sw.bb11.i.i, %sw.bb.i101.i, %do.end.i2, %logi_hidpp_dev_conn_notif_equad.exit.i.sw.epilog.i_crit_edge, %if.then65.sw.epilog.i_crit_edge
  %device_type.0.i = phi ptr [ @.str.132, %if.then65.sw.epilog.i_crit_edge ], [ @.str.147, %logi_hidpp_dev_conn_notif_equad.exit342.i ], [ @.str.146, %logi_hidpp_dev_conn_notif_equad.exit312.i ], [ @.str.145, %logi_hidpp_dev_conn_notif_equad.exit282.i ], [ @.str.143, %sw.bb17.i ], [ @.str.142, %logi_hidpp_dev_conn_notif_equad.exit222.i ], [ @.str.140, %sw.bb13.i ], [ @.str.133, %logi_hidpp_dev_conn_notif_equad.exit.i.sw.epilog.i_crit_edge ], [ @.str.133, %do.end.i2 ], [ @.str.137, %sw.bb.i101.i ], [ @.str.137, %sw.bb11.i.i ], [ @.str.137, %do.end16.i.i ], [ @.str.138, %sw.bb11.i.sw.epilog.i_crit_edge ], [ @.str.138, %sw.bb.i117.i.sw.epilog.i_crit_edge ], [ @.str.138, %if.then21.i122.i ], [ @.str.138, %if.else.i124.i ], [ @.str.139, %sw.bb12.i.sw.epilog.i_crit_edge ], [ @.str.139, %sw.bb.i147.i.sw.epilog.i_crit_edge ], [ @.str.139, %if.then21.i152.i ], [ @.str.139, %if.else.i154.i ], [ @.str.141, %sw.bb14.i.sw.epilog.i_crit_edge ], [ @.str.141, %sw.bb.i177.i.sw.epilog.i_crit_edge ], [ @.str.141, %if.then21.i182.i ], [ @.str.141, %if.else.i184.i ], [ @.str.144, %sw.bb18.i.sw.epilog.i_crit_edge ], [ @.str.144, %sw.bb.i237.i.sw.epilog.i_crit_edge ], [ @.str.144, %if.then21.i242.i ], [ @.str.144, %if.else.i244.i ], [ @.str.138, %sw.bb27.i129.i ], [ @.str.139, %sw.bb27.i159.i ], [ @.str.141, %sw.bb27.i189.i ], [ @.str.144, %sw.bb27.i249.i ]
  %247 = ptrtoint ptr %device_index1 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %device_index1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %248)
  %cmp.i = icmp eq i8 %248, 7
  br i1 %cmp.i, label %if.then31.i, label %sw.epilog.i.if.end34.i_crit_edge

sw.epilog.i.if.end34.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.i

if.then31.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %249 = ptrtoint ptr %reports_supported.i to i32
  call void @__asan_load8_noabort(i32 %249)
  %250 = load i64, ptr %reports_supported.i, align 8
  %or33.i = or i64 %250, -9223372036854775808
  store i64 %or33.i, ptr %reports_supported.i, align 8
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then31.i, %sw.epilog.i.if.end34.i_crit_edge
  %251 = ptrtoint ptr %workitem.i to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %workitem.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %252)
  %cmp37.i = icmp eq i8 %252, 0
  %dev43.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %253 = ptrtoint ptr %params.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %params.i, align 1
  %conv46.i = zext i8 %254 to i32
  %conv48.i = zext i8 %248 to i32
  br i1 %cmp37.i, label %do.end42.i, label %do.end52.i

do.end42.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev43.i, ptr noundef nonnull @.str.149, ptr noundef nonnull %device_type.0.i, i32 noundef %conv46.i, i32 noundef %conv48.i) #14
  br label %logi_hidpp_recv_queue_notif.exit

do.end52.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev43.i, ptr noundef nonnull @.str.152, ptr noundef nonnull %device_type.0.i, i32 noundef %conv46.i, i32 noundef %conv48.i) #14
  %notif_fifo.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %37, i32 0, i32 7
  %call59.i = call i32 @__kfifo_in(ptr noundef %notif_fifo.i, ptr noundef nonnull %workitem.i, i32 noundef 16) #11
  %work.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %37, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %255 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %255, ptr noundef %work.i) #11
  br label %logi_hidpp_recv_queue_notif.exit

logi_hidpp_recv_queue_notif.exit:                 ; preds = %do.end52.i, %do.end42.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %workitem.i) #11
  br label %if.end68

if.else66:                                        ; preds = %if.else60
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %workitem.i3) #11
  %256 = call ptr @memcpy(ptr %workitem.i3, ptr @__const.logi_dj_recv_queue_unknown_work.workitem, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %257 = load volatile i32, ptr @jiffies, align 128
  %last_query.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %1, i32 0, i32 8
  %258 = ptrtoint ptr %last_query.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %last_query.i, align 4
  %add.neg.i = add i32 %257, -50
  %sub.i = sub i32 %add.neg.i, %259
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i4 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i4, label %if.else66.logi_dj_recv_queue_unknown_work.exit_crit_edge, label %if.end.i

if.else66.logi_dj_recv_queue_unknown_work.exit_crit_edge: ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #13
  br label %logi_dj_recv_queue_unknown_work.exit

if.end.i:                                         ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #13
  %notif_fifo.i5 = getelementptr inbounds %struct.dj_receiver_dev, ptr %1, i32 0, i32 7
  %call.i6 = call i32 @__kfifo_in(ptr noundef %notif_fifo.i5, ptr noundef nonnull %workitem.i3, i32 noundef 16) #11
  %work.i7 = getelementptr inbounds %struct.dj_receiver_dev, ptr %1, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %260 = load ptr, ptr @system_wq, align 4
  %call.i.i.i8 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %260, ptr noundef %work.i7) #11
  br label %logi_dj_recv_queue_unknown_work.exit

logi_dj_recv_queue_unknown_work.exit:             ; preds = %if.end.i, %if.else66.logi_dj_recv_queue_unknown_work.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %workitem.i3) #11
  br label %if.end68

if.end68:                                         ; preds = %logi_dj_recv_queue_unknown_work.exit, %logi_hidpp_recv_queue_notif.exit, %do.end.i, %do.body.i.if.end68_crit_edge, %if.then59.if.end68_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call25) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %do.end, %land.lhs.true.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_input_report(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @logi_dj_recv_queue_notification(ptr noundef %djrcv_dev, ptr nocapture noundef readonly %dj_report) unnamed_addr #2 align 64 {
entry:
  %workitem.i = alloca %struct.dj_workitem, align 8
  %workitem = alloca %struct.dj_workitem, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %workitem) #11
  %0 = ptrtoint ptr %workitem to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %workitem, align 8
  store i8 0, ptr %workitem, align 8
  %device_index = getelementptr inbounds %struct.dj_workitem, ptr %workitem, i32 0, i32 1
  %device_index1 = getelementptr inbounds %struct.dj_report, ptr %dj_report, i32 0, i32 1
  %1 = ptrtoint ptr %device_index1 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %device_index1, align 1
  %3 = ptrtoint ptr %device_index to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %device_index, align 1
  %device_type = getelementptr inbounds %struct.dj_workitem, ptr %workitem, i32 0, i32 2
  %4 = ptrtoint ptr %device_type to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %device_type, align 2
  %quad_id_msb = getelementptr inbounds %struct.dj_workitem, ptr %workitem, i32 0, i32 3
  %5 = ptrtoint ptr %quad_id_msb to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %quad_id_msb, align 1
  %quad_id_lsb = getelementptr inbounds %struct.dj_workitem, ptr %workitem, i32 0, i32 4
  %6 = ptrtoint ptr %quad_id_lsb to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %quad_id_lsb, align 4
  %reports_supported = getelementptr inbounds %struct.dj_workitem, ptr %workitem, i32 0, i32 5
  %7 = ptrtoint ptr %reports_supported to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %reports_supported, align 8
  %report_type = getelementptr inbounds %struct.dj_report, ptr %dj_report, i32 0, i32 2
  %8 = ptrtoint ptr %report_type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %report_type, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.192)
  switch i8 %9, label %sw.default [
    i8 65, label %sw.bb
    i8 64, label %entry.sw.bb5_crit_edge
  ]

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5

sw.bb:                                            ; preds = %entry
  %11 = ptrtoint ptr %workitem to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %workitem, align 8
  %report_params = getelementptr inbounds %struct.dj_report, ptr %dj_report, i32 0, i32 3
  %12 = ptrtoint ptr %report_params to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %report_params, align 1
  %14 = and i8 %13, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %sw.bb.sw.bb5_crit_edge, label %if.then

sw.bb.sw.bb5_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %workitem to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %workitem, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %sw.bb.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge
  %arrayidx7 = getelementptr %struct.dj_report, ptr %dj_report, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx7, align 1
  %18 = ptrtoint ptr %quad_id_msb to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %quad_id_msb, align 1
  %arrayidx10 = getelementptr %struct.dj_report, ptr %dj_report, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx10, align 1
  %21 = ptrtoint ptr %quad_id_lsb to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %quad_id_lsb, align 4
  %add.ptr = getelementptr %struct.dj_report, ptr %dj_report, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %add.ptr, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #11
  %conv13 = zext i32 %24 to i64
  %or = or i64 %conv13, -9223372036854775808
  %25 = ptrtoint ptr %reports_supported to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %or, ptr %reports_supported, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %9)
  %cmp = icmp eq i8 %9, 64
  br i1 %cmp, label %if.then19, label %sw.bb5.sw.epilog_crit_edge

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then19:                                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %workitem to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 2, ptr %workitem, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %workitem.i) #11
  %27 = call ptr @memcpy(ptr %workitem.i, ptr @__const.logi_dj_recv_queue_unknown_work.workitem, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %last_query.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %djrcv_dev, i32 0, i32 8
  %29 = ptrtoint ptr %last_query.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %last_query.i, align 4
  %add.neg.i = add i32 %28, -50
  %sub.i = sub i32 %add.neg.i, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %sw.default.logi_dj_recv_queue_unknown_work.exit_crit_edge, label %if.end.i

sw.default.logi_dj_recv_queue_unknown_work.exit_crit_edge: ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %logi_dj_recv_queue_unknown_work.exit

if.end.i:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  %notif_fifo.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %djrcv_dev, i32 0, i32 7
  %call.i = call i32 @__kfifo_in(ptr noundef %notif_fifo.i, ptr noundef nonnull %workitem.i, i32 noundef 16) #11
  %work.i = getelementptr inbounds %struct.dj_receiver_dev, ptr %djrcv_dev, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %31 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %31, ptr noundef %work.i) #11
  br label %logi_dj_recv_queue_unknown_work.exit

logi_dj_recv_queue_unknown_work.exit:             ; preds = %if.end.i, %sw.default.logi_dj_recv_queue_unknown_work.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %workitem.i) #11
  br label %cleanup

sw.epilog:                                        ; preds = %if.then19, %sw.bb5.sw.epilog_crit_edge, %if.then
  %notif_fifo = getelementptr inbounds %struct.dj_receiver_dev, ptr %djrcv_dev, i32 0, i32 7
  %call22 = call i32 @__kfifo_in(ptr noundef %notif_fifo, ptr noundef nonnull %workitem, i32 noundef 16) #11
  %work = getelementptr inbounds %struct.dj_receiver_dev, ptr %djrcv_dev, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %32 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %32, ptr noundef %work) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %logi_dj_recv_queue_unknown_work.exit
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %workitem) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 179)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 179)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !108, !109, !111, !112, !113, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !191, !192, !193, !194, !196, !198, !199, !200, !201, !203, !205, !206, !207, !208, !210, !211, !212, !213, !214, !216, !218, !219, !220, !222, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !246, !248, !249, !250, !252, !253, !254, !255, !257, !258, !259, !260, !262, !263, !264, !265, !267, !269, !270, !271, !272, !274, !275, !277, !278, !279, !281, !283, !285, !287, !288, !289, !290, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !316, !317, !319, !320, !321, !323, !325, !326, !327, !328, !330, !331, !332, !334, !335, !336, !338, !339, !340, !342, !343}
!llvm.module.flags = !{!344, !345, !346, !347, !348, !349, !350, !351}
!llvm.ident = !{!352}

!0 = !{ptr @__initcall__kmod_hid_logitech_dj__237_2045_logi_djreceiver_driver_init6, !1, !"__initcall__kmod_hid_logitech_dj__237_2045_logi_djreceiver_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-logitech-dj.c", i32 2045, i32 1}
!2 = !{ptr @__exitcall_logi_djreceiver_driver_exit, !1, !"__exitcall_logi_djreceiver_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file238, !4, !"__UNIQUE_ID_file238", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-logitech-dj.c", i32 2047, i32 1}
!5 = !{ptr @__UNIQUE_ID_license239, !4, !"__UNIQUE_ID_license239", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author240, !7, !"__UNIQUE_ID_author240", i1 false, i1 false}
!7 = !{!"../drivers/hid/hid-logitech-dj.c", i32 2048, i32 1}
!8 = !{ptr @__UNIQUE_ID_author241, !9, !"__UNIQUE_ID_author241", i1 false, i1 false}
!9 = !{!"../drivers/hid/hid-logitech-dj.c", i32 2049, i32 1}
!10 = !{ptr @__UNIQUE_ID_author242, !11, !"__UNIQUE_ID_author242", i1 false, i1 false}
!11 = !{!"../drivers/hid/hid-logitech-dj.c", i32 2050, i32 1}
!12 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-logitech-dj.c", i32 2035, i32 10}
!15 = !{ptr @logi_djreceiver_driver, !16, !"logi_djreceiver_driver", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-logitech-dj.c", i32 2034, i32 26}
!17 = !{ptr @logi_dj_receivers, !18, !"logi_dj_receivers", i1 false, i1 false}
!18 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1944, i32 35}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1762, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @logi_dj_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @logi_dj_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1818, i32 3}
!29 = !{ptr @logi_dj_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @logi_dj_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1829, i32 3}
!33 = !{ptr @logi_dj_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @logi_dj_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1836, i32 4}
!37 = !{ptr @logi_dj_probe._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @logi_dj_probe._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1845, i32 3}
!41 = !{ptr @logi_dj_probe._entry.16, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @logi_dj_probe._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1859, i32 4}
!45 = !{ptr @logi_dj_probe._entry.19, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @logi_dj_probe._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @dj_get_receiver_dev.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/hid/hid-logitech-dj.c", i32 653, i32 3}
!49 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @dj_get_receiver_dev.__key.23, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/hid/hid-logitech-dj.c", i32 654, i32 3}
!52 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hid/hid-logitech-dj.c", i32 563, i32 8}
!55 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @dj_hdev_list_lock, !54, !"dj_hdev_list_lock", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hid/hid-logitech-dj.c", i32 810, i32 2}
!59 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @delayedwork_callback._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @delayedwork_callback._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hid/hid-logitech-dj.c", i32 819, i32 3}
!64 = !{ptr @delayedwork_callback._entry.29, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @delayedwork_callback._entry_ptr.31, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/hid/hid-logitech-dj.c", i32 847, i32 4}
!68 = !{ptr @delayedwork_callback._entry.32, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @delayedwork_callback._entry_ptr.34, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hid/hid-logitech-dj.c", i32 852, i32 3}
!72 = !{ptr @delayedwork_callback._entry.35, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @delayedwork_callback._entry_ptr.37, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hid/hid-logitech-dj.c", i32 720, i32 3}
!76 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @logi_dj_recv_add_djhid_device._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @logi_dj_recv_add_djhid_device._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/hid/hid-logitech-dj.c", i32 726, i32 3}
!81 = !{ptr @logi_dj_recv_add_djhid_device._entry.40, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @logi_dj_recv_add_djhid_device._entry_ptr.42, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hid/hid-logitech-dj.c", i32 738, i32 26}
!85 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/hid/hid-logitech-dj.c", i32 741, i32 25}
!87 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/hid/hid-logitech-dj.c", i32 742, i32 25}
!89 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/hid/hid-logitech-dj.c", i32 743, i32 25}
!91 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/hid/hid-logitech-dj.c", i32 744, i32 25}
!93 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/hid/hid-logitech-dj.c", i32 745, i32 25}
!95 = !{ptr @.str.49, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/hid/hid-logitech-dj.c", i32 746, i32 25}
!97 = !{ptr @.str.50, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/hid/hid-logitech-dj.c", i32 747, i32 25}
!99 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/hid/hid-logitech-dj.c", i32 750, i32 4}
!101 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/hid/hid-logitech-dj.c", i32 754, i32 4}
!103 = !{ptr @.str.53, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/hid/hid-logitech-dj.c", i32 764, i32 35}
!105 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/hid/hid-logitech-dj.c", i32 770, i32 3}
!107 = !{ptr @logi_dj_recv_add_djhid_device._entry.54, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @logi_dj_recv_add_djhid_device._entry_ptr.56, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.58, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/hid/hid-logitech-dj.c", i32 785, i32 3}
!111 = !{ptr @logi_dj_recv_add_djhid_device._entry.57, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @logi_dj_recv_add_djhid_device._entry_ptr.59, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @logi_dj_ll_driver, !114, !"logi_dj_ll_driver", i1 false, i1 false}
!114 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1509, i32 29}
!115 = !{ptr @.str.60, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1492, i32 2}
!117 = !{ptr @logi_dj_ll_start._entry, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @logi_dj_ll_start._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.61, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1498, i32 2}
!121 = !{ptr @logi_dj_ll_stop._entry, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @logi_dj_ll_stop._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.62, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1320, i32 2}
!125 = !{ptr @.str.63, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @logi_dj_ll_open._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @logi_dj_ll_open._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1327, i32 2}
!130 = !{ptr @logi_dj_ll_close._entry, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @logi_dj_ll_close._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1414, i32 2}
!134 = !{ptr @logi_dj_ll_parse._entry, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @logi_dj_ll_parse._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1424, i32 3}
!138 = !{ptr @logi_dj_ll_parse._entry.66, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @logi_dj_ll_parse._entry_ptr.68, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1430, i32 3}
!142 = !{ptr @logi_dj_ll_parse._entry.69, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @logi_dj_ll_parse._entry_ptr.71, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.73, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1448, i32 3}
!146 = !{ptr @logi_dj_ll_parse._entry.72, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @logi_dj_ll_parse._entry_ptr.74, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.76, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1455, i32 3}
!150 = !{ptr @logi_dj_ll_parse._entry.75, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @logi_dj_ll_parse._entry_ptr.77, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.79, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1461, i32 3}
!154 = !{ptr @logi_dj_ll_parse._entry.78, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @logi_dj_ll_parse._entry_ptr.80, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.82, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1467, i32 3}
!158 = !{ptr @logi_dj_ll_parse._entry.81, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @logi_dj_ll_parse._entry_ptr.83, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.85, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1473, i32 3}
!162 = !{ptr @logi_dj_ll_parse._entry.84, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @logi_dj_ll_parse._entry_ptr.86, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.88, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1478, i32 3}
!166 = !{ptr @logi_dj_ll_parse._entry.87, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @logi_dj_ll_parse._entry_ptr.89, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @kbd_descriptor, !169, !"kbd_descriptor", i1 false, i1 false}
!169 = !{!"../drivers/hid/hid-logitech-dj.c", i32 178, i32 19}
!170 = !{ptr @mse_high_res_descriptor, !171, !"mse_high_res_descriptor", i1 false, i1 false}
!171 = !{!"../drivers/hid/hid-logitech-dj.c", i32 381, i32 19}
!172 = !{ptr @mse_27mhz_descriptor, !173, !"mse_27mhz_descriptor", i1 false, i1 false}
!173 = !{!"../drivers/hid/hid-logitech-dj.c", i32 253, i32 19}
!174 = !{ptr @mse_bluetooth_descriptor, !175, !"mse_bluetooth_descriptor", i1 false, i1 false}
!175 = !{!"../drivers/hid/hid-logitech-dj.c", i32 291, i32 19}
!176 = !{ptr @mse_descriptor, !177, !"mse_descriptor", i1 false, i1 false}
!177 = !{!"../drivers/hid/hid-logitech-dj.c", i32 215, i32 19}
!178 = !{ptr @mse5_bluetooth_descriptor, !179, !"mse5_bluetooth_descriptor", i1 false, i1 false}
!179 = !{!"../drivers/hid/hid-logitech-dj.c", i32 340, i32 19}
!180 = !{ptr @consumer_descriptor, !181, !"consumer_descriptor", i1 false, i1 false}
!181 = !{!"../drivers/hid/hid-logitech-dj.c", i32 419, i32 19}
!182 = !{ptr @syscontrol_descriptor, !183, !"syscontrol_descriptor", i1 false, i1 false}
!183 = !{!"../drivers/hid/hid-logitech-dj.c", i32 435, i32 19}
!184 = !{ptr @media_descriptor, !185, !"media_descriptor", i1 false, i1 false}
!185 = !{!"../drivers/hid/hid-logitech-dj.c", i32 454, i32 19}
!186 = !{ptr @hidpp_descriptor, !187, !"hidpp_descriptor", i1 false, i1 false}
!187 = !{!"../drivers/hid/hid-logitech-dj.c", i32 470, i32 19}
!188 = !{ptr @.str.90, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1375, i32 4}
!190 = !{ptr @.str.91, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.92, !189, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @logi_dj_ll_raw_request._entry, !189, !"_entry", i1 false, i1 false}
!193 = !{ptr @logi_dj_ll_raw_request._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @unifying_pairing_query, !195, !"unifying_pairing_query", i1 false, i1 false}
!195 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1334, i32 11}
!196 = !{ptr @.str.93, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/hid/hid-logitech-dj.c", i32 697, i32 3}
!198 = !{ptr @.str.94, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @logi_dj_recv_destroy_djhid_device._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @logi_dj_recv_destroy_djhid_device._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @dj_hdev_list, !202, !"dj_hdev_list", i1 false, i1 false}
!202 = !{!"../drivers/hid/hid-logitech-dj.c", i32 562, i32 8}
!203 = !{ptr @.str.95, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1198, i32 3}
!205 = !{ptr @.str.96, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @logi_dj_recv_send_report._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @logi_dj_recv_send_report._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.97, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../include/linux/hid.h", i32 963, i32 3}
!210 = !{ptr @.str.98, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.99, !209, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @hid_device_io_start._entry, !209, !"_entry", i1 false, i1 false}
!213 = !{ptr @hid_device_io_start._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @logi_dj_recv_query_hidpp_devices.template, !215, !"template", i1 false, i1 false}
!215 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1212, i32 18}
!216 = !{ptr @.str.100, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1905, i32 2}
!218 = !{ptr @logi_dj_remove._entry, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @logi_dj_remove._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.101, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1671, i32 2}
!222 = !{ptr @.str.102, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @logi_dj_raw_event._entry, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @logi_dj_raw_event._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.104, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1714, i32 4}
!227 = !{ptr @logi_dj_raw_event._entry.103, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @logi_dj_raw_event._entry_ptr.105, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.107, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1720, i32 4}
!231 = !{ptr @logi_dj_raw_event._entry.106, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @logi_dj_raw_event._entry_ptr.108, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.110, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1726, i32 4}
!235 = !{ptr @logi_dj_raw_event._entry.109, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @logi_dj_raw_event._entry_ptr.111, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.113, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1732, i32 4}
!239 = !{ptr @logi_dj_raw_event._entry.112, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @logi_dj_raw_event._entry_ptr.114, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.115, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1165, i32 3}
!243 = !{ptr @.str.116, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @logi_dj_recv_forward_input_report._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @logi_dj_recv_forward_input_report._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.118, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1182, i32 2}
!248 = !{ptr @logi_dj_recv_forward_input_report._entry.117, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @logi_dj_recv_forward_input_report._entry_ptr.119, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.120, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1152, i32 3}
!252 = !{ptr @.str.121, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @logi_dj_recv_forward_report._entry, !251, !"_entry", i1 false, i1 false}
!254 = !{ptr @logi_dj_recv_forward_report._entry_ptr, !251, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.122, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1553, i32 4}
!257 = !{ptr @.str.123, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @logi_dj_dj_event._entry, !256, !"_entry", i1 false, i1 false}
!259 = !{ptr @logi_dj_dj_event._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.124, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1119, i32 5}
!262 = !{ptr @.str.125, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @logi_dj_recv_forward_null_report._entry, !261, !"_entry", i1 false, i1 false}
!264 = !{ptr @logi_dj_recv_forward_null_report._entry_ptr, !261, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @hid_reportid_size_map, !266, !"hid_reportid_size_map", i1 false, i1 false}
!266 = !{!"../drivers/hid/hid-logitech-dj.c", i32 546, i32 17}
!267 = !{ptr @.str.127, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1136, i32 3}
!269 = !{ptr @.str.128, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @logi_dj_recv_forward_dj._entry, !268, !"_entry", i1 false, i1 false}
!271 = !{ptr @logi_dj_recv_forward_dj._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @logi_dj_recv_forward_dj._entry.129, !273, !"_entry", i1 false, i1 false}
!273 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1143, i32 3}
!274 = !{ptr @logi_dj_recv_forward_dj._entry_ptr.130, !273, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.131, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1625, i32 3}
!277 = !{ptr @logi_dj_hidpp_event._entry, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @logi_dj_hidpp_event._entry_ptr, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @unifying_pairing_answer, !280, !"unifying_pairing_answer", i1 false, i1 false}
!280 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1338, i32 11}
!281 = !{ptr @.str.132, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1011, i32 28}
!283 = !{ptr @.str.133, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1019, i32 17}
!285 = !{ptr @.str.134, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1024, i32 4}
!287 = !{ptr @.str.135, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @.str.136, !286, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @logi_hidpp_recv_queue_notif._entry, !286, !"_entry", i1 false, i1 false}
!290 = !{ptr @logi_hidpp_recv_queue_notif._entry_ptr, !286, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.137, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1030, i32 17}
!293 = !{ptr @.str.138, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1034, i32 17}
!295 = !{ptr @.str.139, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1038, i32 17}
!297 = !{ptr @.str.140, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1042, i32 17}
!299 = !{ptr @.str.141, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1045, i32 17}
!301 = !{ptr @.str.142, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1049, i32 17}
!303 = !{ptr @.str.143, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1054, i32 17}
!305 = !{ptr @.str.144, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1057, i32 17}
!307 = !{ptr @.str.145, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1061, i32 17}
!309 = !{ptr @.str.146, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1066, i32 17}
!311 = !{ptr @.str.147, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1072, i32 17}
!313 = !{ptr @.str.149, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1084, i32 3}
!315 = !{ptr @logi_hidpp_recv_queue_notif._entry.148, !314, !"_entry", i1 false, i1 false}
!316 = !{ptr @logi_hidpp_recv_queue_notif._entry_ptr.150, !314, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @.str.152, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1092, i32 2}
!319 = !{ptr @logi_hidpp_recv_queue_notif._entry.151, !318, !"_entry", i1 false, i1 false}
!320 = !{ptr @logi_hidpp_recv_queue_notif._entry_ptr.153, !318, !"_entry_ptr", i1 false, i1 false}
!321 = distinct !{null, !322, !"kbd_builtin_touchpad_ids", i1 false, i1 false}
!322 = !{!"../drivers/hid/hid-logitech-dj.c", i32 934, i32 18}
!323 = !{ptr @.str.154, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/hid/hid-logitech-dj.c", i32 989, i32 4}
!325 = !{ptr @.str.155, !324, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @logi_hidpp_dev_conn_notif_27mhz._entry, !324, !"_entry", i1 false, i1 false}
!327 = !{ptr @logi_hidpp_dev_conn_notif_27mhz._entry_ptr, !324, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.157, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/hid/hid-logitech-dj.c", i32 991, i32 4}
!330 = !{ptr @logi_hidpp_dev_conn_notif_27mhz._entry.156, !329, !"_entry", i1 false, i1 false}
!331 = !{ptr @logi_hidpp_dev_conn_notif_27mhz._entry_ptr.158, !329, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.160, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/hid/hid-logitech-dj.c", i32 992, i32 4}
!334 = !{ptr @logi_hidpp_dev_conn_notif_27mhz._entry.159, !333, !"_entry", i1 false, i1 false}
!335 = !{ptr @logi_hidpp_dev_conn_notif_27mhz._entry_ptr.161, !333, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.163, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1001, i32 3}
!338 = !{ptr @logi_hidpp_dev_conn_notif_27mhz._entry.162, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @logi_hidpp_dev_conn_notif_27mhz._entry_ptr.164, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.165, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/hid/hid-logitech-dj.c", i32 1890, i32 3}
!342 = !{ptr @logi_dj_reset_resume._entry, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @logi_dj_reset_resume._entry_ptr, !341, !"_entry_ptr", i1 false, i1 false}
!344 = !{i32 1, !"wchar_size", i32 2}
!345 = !{i32 1, !"min_enum_size", i32 4}
!346 = !{i32 8, !"branch-target-enforcement", i32 0}
!347 = !{i32 8, !"sign-return-address", i32 0}
!348 = !{i32 8, !"sign-return-address-all", i32 0}
!349 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!350 = !{i32 7, !"uwtable", i32 1}
!351 = !{i32 7, !"frame-pointer", i32 2}
!352 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!353 = !{i64 2148533156, i64 2148533188, i64 2148533217, i64 2148533251, i64 2148533282, i64 2148533305}
!354 = !{!"branch_weights", i32 1, i32 2000}
!355 = !{!"branch_weights", i32 2000, i32 1}
!356 = !{i8 0, i8 2}
!357 = !{i64 2148621157}
!358 = !{i64 2148535621, i64 2148535653, i64 2148535682, i64 2148535716, i64 2148535747, i64 2148535770}
!359 = !{i64 2149667127}
!360 = !{!"auto-init"}
