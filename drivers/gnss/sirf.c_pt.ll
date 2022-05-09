; ModuleID = '/llk/IR_all_yes/drivers/gnss/sirf.c_pt.bc'
source_filename = "../drivers/gnss/sirf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.serdev_device_driver = type { %struct.device_driver, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gnss_operations = type { ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.serdev_device_ops = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.gnss_device = type { %struct.device, %struct.cdev, i32, i32, i32, %struct.rw_semaphore, ptr, i32, i8, %struct.mutex, %struct.kfifo, %struct.wait_queue_head, %struct.mutex, ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kfifo = type { %union.anon.84, [0 x i8] }
%union.anon.84 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sirf_data = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, i8, %struct.mutex, i8, %struct.mutex, i32, %struct.wait_queue_head }
%struct.serdev_device = type { %struct.device, i32, ptr, ptr, %struct.completion, %struct.mutex }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__initcall__kmod_gnss_sirf__290_577_sirf_driver_init6 = internal global ptr @sirf_driver_init, section ".initcall6.init", align 4
@sirf_driver = internal global { %struct.serdev_device_driver, [44 x i8] } { %struct.serdev_device_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sirf_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sirf_pm_ops, ptr null, ptr null }, ptr @sirf_probe, ptr @sirf_remove }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sirf_driver_exit = internal global ptr @sirf_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [49 x i8] c"gnss_sirf.author=Johan Hovold <johan@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [52 x i8] c"gnss_sirf.description=SiRFstar GNSS receiver driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [38 x i8] c"gnss_sirf.file=drivers/gnss/gnss-sirf\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [25 x i8] c"gnss_sirf.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gnss-sirf\00", [22 x i8] zeroinitializer }, align 32
@sirf_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fastrax,uc430\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"linx,r4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wi2wi,w2sg0004\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wi2wi,w2sg0008i\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wi2wi,w2sg0084i\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@sirf_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @sirf_suspend, ptr @sirf_resume, ptr @sirf_suspend, ptr @sirf_resume, ptr @sirf_suspend, ptr @sirf_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sirf_runtime_suspend, ptr @sirf_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@sirf_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 319, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"failed to reenable power on failed suspend: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sirf_runtime_suspend\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drivers/gnss/sirf.c\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sirf_runtime_suspend._entry_ptr = internal global ptr @sirf_runtime_suspend._entry, section ".printk_index", align 4
@sirf_wait_for_power_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 245, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"timeout waiting for active state = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sirf_wait_for_power_state\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sirf_wait_for_power_state._entry_ptr = internal global ptr @sirf_wait_for_power_state._entry, section ".printk_index", align 4
@sirf_gnss_ops = internal constant { %struct.gnss_operations, [20 x i8] } { %struct.gnss_operations { ptr @sirf_open, ptr @sirf_close, ptr @sirf_write_raw }, [20 x i8] zeroinitializer }, align 32
@sirf_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&data->gdev_mutex\00", [46 x i8] zeroinitializer }, align 32
@sirf_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&data->serdev_mutex\00", [44 x i8] zeroinitializer }, align 32
@sirf_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&data->power_wait\00", [46 x i8] zeroinitializer }, align 32
@sirf_serdev_ops = internal constant { %struct.serdev_device_ops, [24 x i8] } { %struct.serdev_device_ops { ptr @sirf_receive_buf, ptr @serdev_device_write_wakeup }, [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lna\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sirf,onoff\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sirf,wakeup\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wakeup\00", [25 x i8] zeroinitializer }, align 32
@sirf_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 498, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to set hibernate mode: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sirf_probe\00", [21 x i8] zeroinitializer }, align 32
@sirf_probe._entry_ptr = internal global ptr @sirf_probe._entry, section ".printk_index", align 4
@sirf_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 108, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to runtime resume: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sirf_open\00", [22 x i8] zeroinitializer }, align 32
@sirf_open._entry_ptr = internal global ptr @sirf_open._entry, section ".printk_index", align 4
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"current-speed\00", [18 x i8] zeroinitializer }, align 32
@sirf_wakeup_handler.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gnss_sirf\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sirf_wakeup_handler\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s - wakeup = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant [12 x i8] c"sirf_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 568, i32 36 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 570, i32 12 }
@___asan_gen_.33 = private unnamed_addr constant [14 x i8] c"sirf_of_match\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 557, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant [12 x i8] c"sirf_pm_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 377, i32 32 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 317, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 244, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [14 x i8] c"sirf_gnss_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 157, i32 37 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 417, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 418, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 419, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [16 x i8] c"sirf_serdev_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 183, i32 39 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 428, i32 38 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 434, i32 38 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 440, i32 46 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 448, i32 47 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 476, i32 5 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 497, i32 5 }
@___asan_gen_.117 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 108, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 388, i32 29 }
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.136 = private constant [23 x i8] c"../drivers/gnss/sirf.c\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 195, i32 2 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_sirf_driver_exit, ptr @__initcall__kmod_gnss_sirf__290_577_sirf_driver_init6, ptr @sirf_driver_exit, ptr @sirf_open._entry, ptr @sirf_open._entry_ptr, ptr @sirf_probe._entry, ptr @sirf_probe._entry_ptr, ptr @sirf_runtime_suspend._entry, ptr @sirf_runtime_suspend._entry_ptr, ptr @sirf_wait_for_power_state._entry, ptr @sirf_wait_for_power_state._entry_ptr, ptr @sirf_driver, ptr @.str, ptr @sirf_of_match, ptr @sirf_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @sirf_gnss_ops, ptr @sirf_probe.__key, ptr @.str.9, ptr @sirf_probe.__key.10, ptr @.str.11, ptr @sirf_probe.__key.12, ptr @.str.13, ptr @sirf_serdev_ops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sirf_driver to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sirf_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sirf_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sirf_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sirf_wait_for_power_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sirf_gnss_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sirf_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sirf_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sirf_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sirf_serdev_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sirf_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sirf_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sirf_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__serdev_device_driver_register(ptr noundef nonnull @sirf_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sirf_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef nonnull @sirf_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serdev_device_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sirf_probe(ptr noundef %serdev) #2 align 64 {
entry:
  %speed.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %serdev, i32 noundef 280, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @gnss_allocate_device(ptr noundef %serdev) #6
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.gnss_device, ptr %call2, i32 0, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %type, align 4
  %ops = getelementptr inbounds %struct.gnss_device, ptr %call2, i32 0, i32 6
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @sirf_gnss_ops, ptr %ops, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call2, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %serdev6 = getelementptr inbounds %struct.sirf_data, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %serdev6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %serdev, ptr %serdev6, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %call.i, align 4
  %gdev_mutex = getelementptr inbounds %struct.sirf_data, ptr %call.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %gdev_mutex, ptr noundef nonnull @.str.9, ptr noundef nonnull @sirf_probe.__key) #6
  %serdev_mutex = getelementptr inbounds %struct.sirf_data, ptr %call.i, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %serdev_mutex, ptr noundef nonnull @.str.11, ptr noundef nonnull @sirf_probe.__key.10) #6
  %power_wait = getelementptr inbounds %struct.sirf_data, ptr %call.i, i32 0, i32 13
  tail call void @__init_waitqueue_head(ptr noundef %power_wait, ptr noundef nonnull @.str.13, ptr noundef nonnull @sirf_probe.__key.12) #6
  %driver_data.i.i189 = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i189 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i189, align 4
  %ops1.i = getelementptr inbounds %struct.serdev_device, ptr %serdev, i32 0, i32 3
  %6 = ptrtoint ptr %ops1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @sirf_serdev_ops, ptr %ops1.i, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 27
  %7 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %speed.i) #6
  %9 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 9600, ptr %speed.i, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.23, ptr noundef nonnull %speed.i, i32 noundef 1, i32 noundef 0) #6
  %10 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %speed.i, align 4
  %speed2.i = getelementptr inbounds %struct.sirf_data, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %speed2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %speed2.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speed.i) #6
  %call18 = call ptr @devm_regulator_get(ptr noundef %serdev, ptr noundef nonnull @.str.14) #6
  %vcc = getelementptr inbounds %struct.sirf_data, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %vcc to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call18, ptr %vcc, align 4
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call18 to i32
  br label %err_put_device

if.end24:                                         ; preds = %if.end5
  %call25 = call ptr @devm_regulator_get(ptr noundef %serdev, ptr noundef nonnull @.str.15) #6
  %lna = getelementptr inbounds %struct.sirf_data, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %lna to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call25, ptr %lna, align 4
  %cmp.i190 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i190, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %call25 to i32
  br label %err_put_device

if.end31:                                         ; preds = %if.end24
  %call32 = call ptr @devm_gpiod_get_optional(ptr noundef %serdev, ptr noundef nonnull @.str.16, i32 noundef 3) #6
  %on_off = getelementptr inbounds %struct.sirf_data, ptr %call.i, i32 0, i32 5
  %17 = ptrtoint ptr %on_off to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call32, ptr %on_off, align 4
  %cmp.i191 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i191, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %call32 to i32
  br label %err_put_device

if.end38:                                         ; preds = %if.end31
  %tobool40.not = icmp eq ptr %call32, null
  br i1 %tobool40.not, label %if.end38.if.end54_crit_edge, label %if.then41

if.end38.if.end54_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then41:                                        ; preds = %if.end38
  %call42 = call ptr @devm_gpiod_get_optional(ptr noundef %serdev, ptr noundef nonnull @.str.17, i32 noundef 1) #6
  %wakeup = getelementptr inbounds %struct.sirf_data, ptr %call.i, i32 0, i32 6
  %19 = ptrtoint ptr %wakeup to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call42, ptr %wakeup, align 4
  %cmp.i192 = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i192, label %if.then45, label %if.end48

if.then45:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %call42 to i32
  br label %err_put_device

if.end48:                                         ; preds = %if.then41
  %21 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vcc, align 4
  %call50 = call i32 @regulator_enable(ptr noundef %22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end48.err_put_device_crit_edge

if.end48.err_put_device_crit_edge:                ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_put_device

if.end53:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  call void @msleep(i32 noundef 500) #6
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.end38.if.end54_crit_edge
  %wakeup55 = getelementptr inbounds %struct.sirf_data, ptr %call.i, i32 0, i32 6
  %23 = ptrtoint ptr %wakeup55 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wakeup55, align 4
  %tobool56.not = icmp eq ptr %24, null
  br i1 %tobool56.not, label %if.end54.if.end73_crit_edge, label %if.then57

if.end54.if.end73_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.then57:                                        ; preds = %if.end54
  %call59 = call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp = icmp slt i32 %call59, 0
  br i1 %cmp, label %if.then57.err_disable_vcc_crit_edge, label %if.end61

if.then57.err_disable_vcc_crit_edge:              ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_disable_vcc

if.end61:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool62 = icmp ne i32 %call59, 0
  %active = getelementptr inbounds %struct.sirf_data, ptr %call.i, i32 0, i32 8
  %frombool = zext i1 %tobool62 to i8
  %25 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool, ptr %active, align 4
  %26 = ptrtoint ptr %wakeup55 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wakeup55, align 4
  %call64 = call i32 @gpiod_to_irq(ptr noundef %27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %if.end61.err_disable_vcc_crit_edge, label %if.end67

if.end61.err_disable_vcc_crit_edge:               ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_disable_vcc

if.end67:                                         ; preds = %if.end61
  %irq = getelementptr inbounds %struct.sirf_data, ptr %call.i, i32 0, i32 7
  %28 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call64, ptr %irq, align 4
  %call69 = call i32 @request_threaded_irq(i32 noundef %call64, ptr noundef null, ptr noundef nonnull @sirf_wakeup_handler, i32 noundef 8195, ptr noundef nonnull @.str.18, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end67.if.end73_crit_edge, label %if.end67.err_disable_vcc_crit_edge

if.end67.err_disable_vcc_crit_edge:               ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_disable_vcc

if.end67.if.end73_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.end73:                                         ; preds = %if.end67.if.end73_crit_edge, %if.end54.if.end73_crit_edge
  %29 = ptrtoint ptr %on_off to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %on_off, align 4
  %tobool75.not = icmp eq ptr %30, null
  br i1 %tobool75.not, label %if.end73.if.end97_crit_edge, label %if.then76

if.end73.if.end97_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

if.then76:                                        ; preds = %if.end73
  %31 = ptrtoint ptr %wakeup55 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wakeup55, align 4
  %tobool78.not = icmp eq ptr %32, null
  br i1 %tobool78.not, label %if.then79, label %if.then76.if.end85_crit_edge

if.then76.if.end85_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

if.then79:                                        ; preds = %if.then76
  %active80 = getelementptr inbounds %struct.sirf_data, ptr %call.i, i32 0, i32 8
  %33 = ptrtoint ptr %active80 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %active80, align 4
  %call81 = call fastcc i32 @sirf_serdev_open(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %if.then79.err_disable_vcc_crit_edge

if.then79.err_disable_vcc_crit_edge:              ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_disable_vcc

if.end84:                                         ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #8
  call void @msleep(i32 noundef 2000) #6
  call fastcc void @sirf_serdev_close(ptr noundef nonnull %call.i)
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.then76.if.end85_crit_edge
  %active86 = getelementptr inbounds %struct.sirf_data, ptr %call.i, i32 0, i32 8
  %34 = ptrtoint ptr %active86 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %active86, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool87.not = icmp eq i8 %35, 0
  br i1 %tobool87.not, label %if.end85.if.end97_crit_edge, label %if.then88

if.end85.if.end97_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

if.then88:                                        ; preds = %if.end85
  %call89 = call fastcc i32 @sirf_set_active(ptr noundef nonnull %call.i, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.then88.if.end97_crit_edge, label %do.end94

if.then88.if.end97_crit_edge:                     ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

do.end94:                                         ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %serdev, ptr noundef nonnull @.str.19, i32 noundef %call89) #9
  br label %err_free_irq

if.end97:                                         ; preds = %if.then88.if.end97_crit_edge, %if.end85.if.end97_crit_edge, %if.end73.if.end97_crit_edge
  %call.i193 = call i32 @__pm_runtime_set_status(ptr noundef %serdev, i32 noundef 2) #6
  call void @pm_runtime_enable(ptr noundef %serdev) #6
  %call99 = call i32 @gnss_register_device(ptr noundef nonnull %call2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end97.cleanup_crit_edge, label %err_disable_rpm

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_disable_rpm:                                  ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  call void @__pm_runtime_disable(ptr noundef %serdev, i1 noundef zeroext true) #6
  br label %err_free_irq

err_free_irq:                                     ; preds = %err_disable_rpm, %do.end94
  %ret.0 = phi i32 [ %call89, %do.end94 ], [ %call99, %err_disable_rpm ]
  %36 = ptrtoint ptr %wakeup55 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wakeup55, align 4
  %tobool104.not = icmp eq ptr %37, null
  br i1 %tobool104.not, label %err_free_irq.err_disable_vcc_crit_edge, label %if.then105

err_free_irq.err_disable_vcc_crit_edge:           ; preds = %err_free_irq
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_disable_vcc

if.then105:                                       ; preds = %err_free_irq
  call void @__sanitizer_cov_trace_pc() #8
  %irq106 = getelementptr inbounds %struct.sirf_data, ptr %call.i, i32 0, i32 7
  %38 = ptrtoint ptr %irq106 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq106, align 4
  %call107 = call ptr @free_irq(i32 noundef %39, ptr noundef nonnull %call.i) #6
  br label %err_disable_vcc

err_disable_vcc:                                  ; preds = %if.then105, %err_free_irq.err_disable_vcc_crit_edge, %if.then79.err_disable_vcc_crit_edge, %if.end67.err_disable_vcc_crit_edge, %if.end61.err_disable_vcc_crit_edge, %if.then57.err_disable_vcc_crit_edge
  %ret.1 = phi i32 [ %call59, %if.then57.err_disable_vcc_crit_edge ], [ %call64, %if.end61.err_disable_vcc_crit_edge ], [ %call69, %if.end67.err_disable_vcc_crit_edge ], [ %ret.0, %if.then105 ], [ %ret.0, %err_free_irq.err_disable_vcc_crit_edge ], [ %call81, %if.then79.err_disable_vcc_crit_edge ]
  %40 = ptrtoint ptr %on_off to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %on_off, align 4
  %tobool110.not = icmp eq ptr %41, null
  br i1 %tobool110.not, label %err_disable_vcc.err_put_device_crit_edge, label %if.then111

err_disable_vcc.err_put_device_crit_edge:         ; preds = %err_disable_vcc
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_put_device

if.then111:                                       ; preds = %err_disable_vcc
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vcc, align 4
  %call113 = call i32 @regulator_disable(ptr noundef %43) #6
  br label %err_put_device

err_put_device:                                   ; preds = %if.then111, %err_disable_vcc.err_put_device_crit_edge, %if.end48.err_put_device_crit_edge, %if.then45, %if.then35, %if.then28, %if.then21
  %ret.2 = phi i32 [ %14, %if.then21 ], [ %16, %if.then28 ], [ %18, %if.then35 ], [ %20, %if.then45 ], [ %call50, %if.end48.err_put_device_crit_edge ], [ %ret.1, %if.then111 ], [ %ret.1, %err_disable_vcc.err_put_device_crit_edge ]
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call.i, align 4
  call void @gnss_put_device(ptr noundef %45) #6
  br label %cleanup

cleanup:                                          ; preds = %err_put_device, %if.end97.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err_put_device ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end97.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sirf_remove(ptr noundef %serdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @gnss_deregister_device(ptr noundef %3) #6
  tail call void @__pm_runtime_disable(ptr noundef %serdev, i1 noundef zeroext true) #6
  %wakeup = getelementptr inbounds %struct.sirf_data, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %wakeup to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wakeup, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr inbounds %struct.sirf_data, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %on_off = getelementptr inbounds %struct.sirf_data, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %on_off to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %on_off, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %vcc = getelementptr inbounds %struct.sirf_data, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vcc, align 4
  %call4 = tail call i32 @regulator_disable(ptr noundef %11) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void @gnss_put_device(ptr noundef %13) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sirf_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %4 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.if.end_crit_edge, label %pm_runtime_suspended.exit.if.then_crit_edge

pm_runtime_suspended.exit.if.then_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

pm_runtime_suspended.exit.if.end_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %pm_runtime_suspended.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %call2 = tail call i32 @sirf_runtime_suspend(ptr noundef %dev)
  br label %if.end

if.end:                                           ; preds = %if.then, %pm_runtime_suspended.exit.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %pm_runtime_suspended.exit.if.end_crit_edge ], [ %call2, %if.then ]
  %wakeup = getelementptr inbounds %struct.sirf_data, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %wakeup to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr inbounds %struct.sirf_data, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %8) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sirf_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %wakeup = getelementptr inbounds %struct.sirf_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %wakeup to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wakeup, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr inbounds %struct.sirf_data, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %5) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %6 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i = icmp eq i32 %7, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %if.end.if.then2_crit_edge

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

pm_runtime_suspended.exit:                        ; preds = %if.end
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %8 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.if.end4_crit_edge, label %pm_runtime_suspended.exit.if.then2_crit_edge

pm_runtime_suspended.exit.if.then2_crit_edge:     ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

pm_runtime_suspended.exit.if.end4_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then2:                                         ; preds = %pm_runtime_suspended.exit.if.then2_crit_edge, %if.end.if.then2_crit_edge
  %9 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i, align 4
  %lna.i = getelementptr inbounds %struct.sirf_data, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %lna.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lna.i, align 4
  %call1.i = tail call i32 @regulator_enable(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i8 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i8, label %if.end.i, label %if.then2.if.end4_crit_edge

if.then2.if.end4_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end.i:                                         ; preds = %if.then2
  %on_off.i = getelementptr inbounds %struct.sirf_data, ptr %10, i32 0, i32 5
  %13 = ptrtoint ptr %on_off.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %on_off.i, align 4
  %tobool2.not.i = icmp eq ptr %14, null
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call fastcc i32 @sirf_set_active(ptr noundef %10, i1 noundef zeroext true) #6
  br label %if.end6.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %vcc.i = getelementptr inbounds %struct.sirf_data, ptr %10, i32 0, i32 3
  %15 = ptrtoint ptr %vcc.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vcc.i, align 4
  %call5.i = tail call i32 @regulator_enable(ptr noundef %16) #6
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %if.then3.i
  %ret.0.i = phi i32 [ %call4.i, %if.then3.i ], [ %call5.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool7.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool7.not.i, label %if.end6.i.if.end4_crit_edge, label %err_disable_lna.i

if.end6.i.if.end4_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

err_disable_lna.i:                                ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %lna.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lna.i, align 4
  %call11.i = tail call i32 @regulator_disable(ptr noundef %18) #6
  br label %if.end4

if.end4:                                          ; preds = %err_disable_lna.i, %if.end6.i.if.end4_crit_edge, %if.then2.if.end4_crit_edge, %pm_runtime_suspended.exit.if.end4_crit_edge
  %ret.0 = phi i32 [ 0, %pm_runtime_suspended.exit.if.end4_crit_edge ], [ %ret.0.i, %err_disable_lna.i ], [ %call1.i, %if.then2.if.end4_crit_edge ], [ 0, %if.end6.i.if.end4_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sirf_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %on_off = getelementptr inbounds %struct.sirf_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %on_off to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %on_off, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call fastcc i32 @sirf_set_active(ptr noundef %1, i1 noundef zeroext false)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %vcc = getelementptr inbounds %struct.sirf_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vcc, align 4
  %call2 = tail call i32 @regulator_disable(ptr noundef %5) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool3.not = icmp eq i32 %ret.0, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %lna = getelementptr inbounds %struct.sirf_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %lna to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lna, align 4
  %call6 = tail call i32 @regulator_disable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %err_reenable

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_reenable:                                     ; preds = %if.end5
  %8 = ptrtoint ptr %on_off to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %on_off, align 4
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %if.else14, label %if.then12

if.then12:                                        ; preds = %err_reenable
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call fastcc i32 @sirf_set_active(ptr noundef %1, i1 noundef zeroext true)
  br label %if.end17

if.else14:                                        ; preds = %err_reenable
  call void @__sanitizer_cov_trace_pc() #8
  %vcc15 = getelementptr inbounds %struct.sirf_data, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %vcc15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vcc15, align 4
  %call16 = tail call i32 @regulator_enable(ptr noundef %11) #6
  br label %if.end17

if.end17:                                         ; preds = %if.else14, %if.then12
  %ret2.0 = phi i32 [ %call13, %if.then12 ], [ %call16, %if.else14 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret2.0)
  %tobool18.not = icmp eq i32 %ret2.0, 0
  br i1 %tobool18.not, label %if.end17.cleanup_crit_edge, label %do.end

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %ret2.0) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end17.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ %call6, %do.end ], [ %call6, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sirf_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lna = getelementptr inbounds %struct.sirf_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %lna to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lna, align 4
  %call1 = tail call i32 @regulator_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %on_off = getelementptr inbounds %struct.sirf_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %on_off to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %on_off, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call fastcc i32 @sirf_set_active(ptr noundef %1, i1 noundef zeroext true)
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %vcc = getelementptr inbounds %struct.sirf_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vcc, align 4
  %call5 = tail call i32 @regulator_enable(ptr noundef %7) #6
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %ret.0 = phi i32 [ %call4, %if.then3 ], [ %call5, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool7.not = icmp eq i32 %ret.0, 0
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %err_disable_lna

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_disable_lna:                                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %lna to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lna, align 4
  %call11 = tail call i32 @regulator_disable(ptr noundef %9) #6
  br label %cleanup

cleanup:                                          ; preds = %err_disable_lna, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_disable_lna ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sirf_set_active(ptr noundef %data, i1 noundef zeroext %active) unnamed_addr #2 align 64 {
entry:
  %__wq_entry.i.i = alloca %struct.wait_queue_entry, align 4
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %wakeup = getelementptr inbounds %struct.sirf_data, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %wakeup to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wakeup, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then2, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then2:                                         ; preds = %entry
  %call = tail call fastcc i32 @sirf_serdev_open(ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then2.if.end6_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2.if.end6_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end6:                                          ; preds = %if.then2.if.end6_crit_edge, %entry.if.end6_crit_edge
  %on_off.i = getelementptr inbounds %struct.sirf_data, ptr %data, i32 0, i32 5
  %active6.i = getelementptr inbounds %struct.sirf_data, ptr %data, i32 0, i32 8
  %conv9.i = zext i1 %active to i32
  %2 = zext i1 %active to i8
  %power_wait.i = getelementptr inbounds %struct.sirf_data, ptr %data, i32 0, i32 13
  %serdev.i = getelementptr inbounds %struct.sirf_data, ptr %data, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %sirf_wait_for_power_state.exit.do.body_crit_edge, %if.end6
  %retries.0 = phi i32 [ 3, %if.end6 ], [ %dec, %sirf_wait_for_power_state.exit.do.body_crit_edge ]
  %3 = ptrtoint ptr %on_off.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %on_off.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %4, i32 noundef 1) #6
  call void @msleep(i32 noundef 100) #6
  %5 = ptrtoint ptr %on_off.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %on_off.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %6, i32 noundef 0) #6
  %7 = ptrtoint ptr %wakeup to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wakeup, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %do.body
  call void @msleep(i32 noundef 200) #6
  %9 = ptrtoint ptr %active6.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %active6.i, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 217) #6
  %10 = ptrtoint ptr %active6.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %active6.i, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.not.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.not.i.i, label %if.then12.i.i, label %if.then.i.if.end44.i.i_crit_edge

if.then.i.if.end44.i.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.i.i

if.then12.i.i:                                    ; preds = %if.then.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i.i) #6
  %12 = call ptr @memset(ptr %__wq_entry.i.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i.i, i32 noundef 0) #6
  %call1515.i.i = call i32 @prepare_to_wait_event(ptr noundef %power_wait.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 1) #6
  %13 = ptrtoint ptr %active6.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %active6.i, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool18.not16.not.i.i = icmp eq i8 %14, 0
  br i1 %tobool18.not16.not.i.i, label %if.then12.i.i.if.end34.i.i_crit_edge, label %if.then12.i.i.for.end.i.i_crit_edge

if.then12.i.i.for.end.i.i_crit_edge:              ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

if.then12.i.i.if.end34.i.i_crit_edge:             ; preds = %if.then12.i.i
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %cleanup.i.i.if.end34.i.i_crit_edge, %if.then12.i.i.if.end34.i.i_crit_edge
  %__ret13.119.i.i = phi i32 [ %__ret13.1.i.i, %cleanup.i.i.if.end34.i.i_crit_edge ], [ 200, %if.then12.i.i.if.end34.i.i_crit_edge ]
  %call1518.i.i = phi i32 [ %call15.i.i, %cleanup.i.i.if.end34.i.i_crit_edge ], [ %call1515.i.i, %if.then12.i.i.if.end34.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1518.i.i)
  %tobool35.not.i.i = icmp eq i32 %call1518.i.i, 0
  br i1 %tobool35.not.i.i, label %cleanup.i.i, label %if.end34.i.i.if.end41.i.i_crit_edge

if.end34.i.i.if.end41.i.i_crit_edge:              ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i.i

cleanup.i.i:                                      ; preds = %if.end34.i.i
  %call38.i.i = call i32 @schedule_timeout(i32 noundef %__ret13.119.i.i) #6
  %call15.i.i = call i32 @prepare_to_wait_event(ptr noundef %power_wait.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 1) #6
  %15 = ptrtoint ptr %active6.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %active6.i, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool18.not.i.i = icmp eq i8 %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i.i)
  %tobool22.not.i.i = icmp eq i32 %call38.i.i, 0
  %spec.store.select56.i.i = select i1 %tobool22.not.i.i, i32 1, i32 %call38.i.i
  %__ret13.1.i.i = select i1 %tobool18.not.i.i, i32 %call38.i.i, i32 %spec.store.select56.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret13.1.i.i)
  %tobool28.not.i.i = icmp eq i32 %__ret13.1.i.i, 0
  %not.tobool18.not.i.i = xor i1 %tobool18.not.i.i, true
  %17 = select i1 %not.tobool18.not.i.i, i1 true, i1 %tobool28.not.i.i
  br i1 %17, label %cleanup.i.i.for.end.i.i_crit_edge, label %cleanup.i.i.if.end34.i.i_crit_edge

cleanup.i.i.if.end34.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i.i

cleanup.i.i.for.end.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %cleanup.i.i.for.end.i.i_crit_edge, %if.then12.i.i.for.end.i.i_crit_edge
  %__ret13.1.lcssa.i.i = phi i32 [ 200, %if.then12.i.i.for.end.i.i_crit_edge ], [ %__ret13.1.i.i, %cleanup.i.i.for.end.i.i_crit_edge ]
  call void @finish_wait(ptr noundef %power_wait.i, ptr noundef nonnull %__wq_entry.i.i) #6
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %for.end.i.i, %if.end34.i.i.if.end41.i.i_crit_edge
  %__ret13.24.i.i = phi i32 [ %__ret13.1.lcssa.i.i, %for.end.i.i ], [ %call1518.i.i, %if.end34.i.i.if.end41.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret13.24.i.i)
  %cmp.i.i = icmp slt i32 %__ret13.24.i.i, 0
  br i1 %cmp.i.i, label %if.end41.i.i.sirf_wait_for_power_state.exit_crit_edge, label %if.end41.i.i.if.end44.i.i_crit_edge

if.end41.i.i.if.end44.i.i_crit_edge:              ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.i.i

if.end41.i.i.sirf_wait_for_power_state.exit_crit_edge: ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sirf_wait_for_power_state.exit

if.end44.i.i:                                     ; preds = %if.end41.i.i.if.end44.i.i_crit_edge, %if.then.i.if.end44.i.i_crit_edge
  %__ret.111.i.i = phi i32 [ %__ret13.24.i.i, %if.end41.i.i.if.end44.i.i_crit_edge ], [ 200, %if.then.i.if.end44.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.111.i.i)
  %cmp45.not.i.i = icmp eq i32 %__ret.111.i.i, 0
  %brmerge.i.i = or i1 %cmp45.not.i.i, %active
  br i1 %brmerge.i.i, label %if.end49.i.i, label %if.end44.i.i.sirf_wait_for_power_state.exit_crit_edge

if.end44.i.i.sirf_wait_for_power_state.exit_crit_edge: ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sirf_wait_for_power_state.exit

if.end49.i.i:                                     ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %brmerge1.demorgan.i.i = and i1 %cmp45.not.i.i, %active
  %spec.select.i.i = select i1 %brmerge1.demorgan.i.i, i32 -110, i32 0
  br label %sirf_wait_for_power_state.exit

if.end.i:                                         ; preds = %do.body
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 239) #6
  %18 = ptrtoint ptr %active6.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %active6.i, align 4, !range !81
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %2)
  %cmp.i = icmp eq i8 %19, %2
  br i1 %cmp.i, label %if.end.i.do.end_crit_edge, label %if.then21.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then21.i:                                      ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #6
  %20 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #6
  %call2417.i = call i32 @prepare_to_wait_event(ptr noundef %power_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #6
  %21 = ptrtoint ptr %active6.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %active6.i, align 4, !range !81
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %2)
  %cmp3118.i = icmp eq i8 %22, %2
  br i1 %cmp3118.i, label %if.then21.i.for.end.i_crit_edge, label %if.then21.i.if.end50.i_crit_edge

if.then21.i.if.end50.i_crit_edge:                 ; preds = %if.then21.i
  br label %if.end50.i

if.then21.i.for.end.i_crit_edge:                  ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end50.i:                                       ; preds = %cleanup.i.if.end50.i_crit_edge, %if.then21.i.if.end50.i_crit_edge
  %__ret22.120.i = phi i32 [ %__ret22.1.i, %cleanup.i.if.end50.i_crit_edge ], [ 20, %if.then21.i.if.end50.i_crit_edge ]
  %call2419.i = phi i32 [ %call24.i, %cleanup.i.if.end50.i_crit_edge ], [ %call2417.i, %if.then21.i.if.end50.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2419.i)
  %tobool51.not.i = icmp eq i32 %call2419.i, 0
  br i1 %tobool51.not.i, label %cleanup.i, label %if.end50.i.if.end57.i_crit_edge

if.end50.i.if.end57.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57.i

cleanup.i:                                        ; preds = %if.end50.i
  %call54.i = call i32 @schedule_timeout(i32 noundef %__ret22.120.i) #6
  %call24.i = call i32 @prepare_to_wait_event(ptr noundef %power_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #6
  %23 = ptrtoint ptr %active6.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %active6.i, align 4, !range !81
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %2)
  %cmp31.i = icmp eq i8 %24, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool37.not.i = icmp eq i32 %call54.i, 0
  %25 = select i1 %cmp31.i, i1 %tobool37.not.i, i1 false
  %__ret22.1.i = select i1 %25, i32 1, i32 %call54.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret22.1.i)
  %tobool44.not.i = icmp eq i32 %__ret22.1.i, 0
  %26 = select i1 %cmp31.i, i1 true, i1 %tobool44.not.i
  br i1 %26, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.if.end50.i_crit_edge

cleanup.i.if.end50.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.then21.i.for.end.i_crit_edge
  %__ret22.1.lcssa.i = phi i32 [ 20, %if.then21.i.for.end.i_crit_edge ], [ %__ret22.1.i, %cleanup.i.for.end.i_crit_edge ]
  call void @finish_wait(ptr noundef %power_wait.i, ptr noundef nonnull %__wq_entry.i) #6
  br label %if.end57.i

if.end57.i:                                       ; preds = %for.end.i, %if.end50.i.if.end57.i_crit_edge
  %__ret22.23.i = phi i32 [ %__ret22.1.lcssa.i, %for.end.i ], [ %call2419.i, %if.end50.i.if.end57.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret22.23.i)
  %cmp59.i = icmp slt i32 %__ret22.23.i, 0
  br i1 %cmp59.i, label %if.end57.i.sirf_wait_for_power_state.exit_crit_edge, label %if.end62.i

if.end57.i.sirf_wait_for_power_state.exit_crit_edge: ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sirf_wait_for_power_state.exit

if.end62.i:                                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret22.23.i)
  %cmp63.i = icmp eq i32 %__ret22.23.i, 0
  br i1 %cmp63.i, label %do.end68.i, label %if.end62.i.do.end_crit_edge

if.end62.i.do.end_crit_edge:                      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end68.i:                                       ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %serdev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %serdev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.6, i32 noundef %conv9.i) #9
  br label %sirf_wait_for_power_state.exit

sirf_wait_for_power_state.exit:                   ; preds = %do.end68.i, %if.end57.i.sirf_wait_for_power_state.exit_crit_edge, %if.end49.i.i, %if.end44.i.i.sirf_wait_for_power_state.exit_crit_edge, %if.end41.i.i.sirf_wait_for_power_state.exit_crit_edge
  %retval.0.i = phi i32 [ -110, %do.end68.i ], [ %__ret22.23.i, %if.end57.i.sirf_wait_for_power_state.exit_crit_edge ], [ %__ret13.24.i.i, %if.end41.i.i.sirf_wait_for_power_state.exit_crit_edge ], [ -110, %if.end44.i.i.sirf_wait_for_power_state.exit_crit_edge ], [ %spec.select.i.i, %if.end49.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %retval.0.i)
  %cmp = icmp ne i32 %retval.0.i, -110
  %dec = add nsw i32 %retries.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries.0)
  %tobool9.not = icmp eq i32 %retries.0, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool9.not
  br i1 %or.cond, label %sirf_wait_for_power_state.exit.do.end_crit_edge, label %sirf_wait_for_power_state.exit.do.body_crit_edge

sirf_wait_for_power_state.exit.do.body_crit_edge: ; preds = %sirf_wait_for_power_state.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

sirf_wait_for_power_state.exit.do.end_crit_edge:  ; preds = %sirf_wait_for_power_state.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %sirf_wait_for_power_state.exit.do.end_crit_edge, %if.end62.i.do.end_crit_edge, %if.end.i.do.end_crit_edge
  %retval.0.i38 = phi i32 [ %retval.0.i, %sirf_wait_for_power_state.exit.do.end_crit_edge ], [ 0, %if.end62.i.do.end_crit_edge ], [ 0, %if.end.i.do.end_crit_edge ]
  %29 = ptrtoint ptr %wakeup to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wakeup, align 4
  %tobool11.not = icmp eq ptr %30, null
  br i1 %tobool11.not, label %if.then12, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12:                                        ; preds = %do.end
  %serdev_mutex.i = getelementptr inbounds %struct.sirf_data, ptr %data, i32 0, i32 11
  call void @mutex_lock_nested(ptr noundef %serdev_mutex.i, i32 noundef 0) #6
  %serdev_count.i = getelementptr inbounds %struct.sirf_data, ptr %data, i32 0, i32 12
  %31 = ptrtoint ptr %serdev_count.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %serdev_count.i, align 4
  %dec.i = add i32 %32, -1
  store i32 %dec.i, ptr %serdev_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i29 = icmp eq i32 %dec.i, 0
  br i1 %cmp.i29, label %if.then.i31, label %if.then12.sirf_serdev_close.exit_crit_edge

if.then12.sirf_serdev_close.exit_crit_edge:       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sirf_serdev_close.exit

if.then.i31:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %serdev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %serdev.i, align 4
  call void @serdev_device_close(ptr noundef %34) #6
  br label %sirf_serdev_close.exit

sirf_serdev_close.exit:                           ; preds = %if.then.i31, %if.then12.sirf_serdev_close.exit_crit_edge
  call void @mutex_unlock(ptr noundef %serdev_mutex.i) #6
  br label %cleanup

cleanup:                                          ; preds = %sirf_serdev_close.exit, %do.end.cleanup_crit_edge, %if.then2.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then2.cleanup_crit_edge ], [ %retval.0.i38, %sirf_serdev_close.exit ], [ %retval.0.i38, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sirf_serdev_open(ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %serdev_mutex = getelementptr inbounds %struct.sirf_data, ptr %data, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %serdev_mutex, i32 noundef 0) #6
  %serdev_count = getelementptr inbounds %struct.sirf_data, ptr %data, i32 0, i32 12
  %0 = ptrtoint ptr %serdev_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %serdev_count, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %serdev_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.out_unlock_crit_edge

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.then:                                          ; preds = %entry
  %serdev = getelementptr inbounds %struct.sirf_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serdev, align 4
  %call = tail call i32 @serdev_device_open(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %serdev_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %serdev_count, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %serdev_count, align 4
  br label %out_unlock

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %serdev, align 4
  %speed = getelementptr inbounds %struct.sirf_data, ptr %data, i32 0, i32 2
  %8 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %speed, align 4
  %call4 = tail call i32 @serdev_device_set_baudrate(ptr noundef %7, i32 noundef %9) #6
  %10 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %serdev, align 4
  tail call void @serdev_device_set_flow_control(ptr noundef %11, i1 noundef zeroext false) #6
  br label %out_unlock

out_unlock:                                       ; preds = %if.end, %if.then1, %entry.out_unlock_crit_edge
  %ret.0 = phi i32 [ %call, %if.then1 ], [ 0, %if.end ], [ 0, %entry.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %serdev_mutex) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sirf_serdev_close(ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %serdev_mutex = getelementptr inbounds %struct.sirf_data, ptr %data, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %serdev_mutex, i32 noundef 0) #6
  %serdev_count = getelementptr inbounds %struct.sirf_data, ptr %data, i32 0, i32 12
  %0 = ptrtoint ptr %serdev_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %serdev_count, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %serdev_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %serdev = getelementptr inbounds %struct.sirf_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serdev, align 4
  tail call void @serdev_device_close(ptr noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %serdev_mutex) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_set_baudrate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_set_flow_control(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gnss_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sirf_wakeup_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %serdev = getelementptr inbounds %struct.sirf_data, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serdev, align 4
  %wakeup = getelementptr inbounds %struct.sirf_data, ptr %dev_id, i32 0, i32 6
  %2 = ptrtoint ptr %wakeup to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wakeup, align 4
  %call = tail call i32 @gpiod_get_value_cansleep(ptr noundef %3) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sirf_wakeup_handler.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sirf_wakeup_handler, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !82

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sirf_wakeup_handler.__UNIQUE_ID_ddebug289, ptr noundef %1, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25, i32 noundef %call) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end.out_crit_edge, label %if.end6

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7 = icmp ne i32 %call, 0
  %active = getelementptr inbounds %struct.sirf_data, ptr %dev_id, i32 0, i32 8
  %frombool8 = zext i1 %tobool7 to i8
  %4 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool8, ptr %active, align 4
  %power_wait = getelementptr inbounds %struct.sirf_data, ptr %dev_id, i32 0, i32 13
  tail call void @__wake_up(ptr noundef %power_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #6
  br label %out

out:                                              ; preds = %if.end6, %do.end.out_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnss_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gnss_put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sirf_open(ptr noundef %gdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %gdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %serdev1 = getelementptr inbounds %struct.sirf_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %serdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serdev1, align 4
  %gdev_mutex = getelementptr inbounds %struct.sirf_data, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %gdev_mutex, i32 noundef 0) #6
  %open = getelementptr inbounds %struct.sirf_data, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %open to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %open, align 4
  tail call void @mutex_unlock(ptr noundef %gdev_mutex) #6
  %call3 = tail call fastcc i32 @sirf_serdev_open(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %gdev, ptr noundef nonnull @.str.21, i32 noundef %call.i) #9
  %usage_count.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #6
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #6, !srcloc !84
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %do.end.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

do.end.pm_runtime_put_noidle.exit_crit_edge:      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !85
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %do.end.pm_runtime_put_noidle.exit_crit_edge
  %serdev_mutex.i = getelementptr inbounds %struct.sirf_data, ptr %1, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %serdev_mutex.i, i32 noundef 0) #6
  %serdev_count.i = getelementptr inbounds %struct.sirf_data, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %serdev_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %serdev_count.i, align 4
  %dec.i = add i32 %7, -1
  store i32 %dec.i, ptr %serdev_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then.i, label %pm_runtime_put_noidle.exit.sirf_serdev_close.exit_crit_edge

pm_runtime_put_noidle.exit.sirf_serdev_close.exit_crit_edge: ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sirf_serdev_close.exit

if.then.i:                                        ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %serdev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %serdev1, align 4
  tail call void @serdev_device_close(ptr noundef %9) #6
  br label %sirf_serdev_close.exit

sirf_serdev_close.exit:                           ; preds = %if.then.i, %pm_runtime_put_noidle.exit.sirf_serdev_close.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %serdev_mutex.i) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sirf_serdev_close.exit, %entry.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call.i, %sirf_serdev_close.exit ], [ %call3, %entry.cleanup.sink.split_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef %gdev_mutex, i32 noundef 0) #6
  %10 = ptrtoint ptr %open to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %open, align 4
  tail call void @mutex_unlock(ptr noundef %gdev_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sirf_close(ptr nocapture noundef readonly %gdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %gdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %serdev1 = getelementptr inbounds %struct.sirf_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %serdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serdev1, align 4
  %serdev_mutex.i = getelementptr inbounds %struct.sirf_data, ptr %1, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %serdev_mutex.i, i32 noundef 0) #6
  %serdev_count.i = getelementptr inbounds %struct.sirf_data, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %serdev_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %serdev_count.i, align 4
  %dec.i = add i32 %5, -1
  store i32 %dec.i, ptr %serdev_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.sirf_serdev_close.exit_crit_edge

entry.sirf_serdev_close.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sirf_serdev_close.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %serdev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %serdev1, align 4
  tail call void @serdev_device_close(ptr noundef %7) #6
  br label %sirf_serdev_close.exit

sirf_serdev_close.exit:                           ; preds = %if.then.i, %entry.sirf_serdev_close.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %serdev_mutex.i) #6
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 5) #6
  %gdev_mutex = getelementptr inbounds %struct.sirf_data, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %gdev_mutex, i32 noundef 0) #6
  %open = getelementptr inbounds %struct.sirf_data, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %open to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %open, align 4
  tail call void @mutex_unlock(ptr noundef %gdev_mutex) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sirf_write_raw(ptr nocapture noundef readonly %gdev, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %gdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %serdev1 = getelementptr inbounds %struct.sirf_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %serdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serdev1, align 4
  %call2 = tail call i32 @serdev_device_write(ptr noundef %3, ptr noundef %buf, i32 noundef %count, i32 noundef 2147483647) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %count)
  %cmp3 = icmp ult i32 %call2, %count
  %or.cond = or i1 %cmp, %cmp3
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @serdev_device_wait_until_sent(ptr noundef %3, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_wait_until_sent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sirf_receive_buf(ptr nocapture noundef readonly %serdev, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %wakeup = getelementptr inbounds %struct.sirf_data, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %wakeup to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wakeup, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %active = getelementptr inbounds %struct.sirf_data, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %active, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %active, align 4
  %power_wait = getelementptr inbounds %struct.sirf_data, ptr %1, i32 0, i32 13
  tail call void @__wake_up(ptr noundef %power_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %gdev_mutex = getelementptr inbounds %struct.sirf_data, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %gdev_mutex, i32 noundef 0) #6
  %open = getelementptr inbounds %struct.sirf_data, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %open to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %open, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not = icmp eq i8 %10, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 @gnss_insert_raw(ptr noundef %3, ptr noundef %buf, i32 noundef %count) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %ret.0 = phi i32 [ %call6, %if.then5 ], [ 0, %if.end.if.end7_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %gdev_mutex) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_write_wakeup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnss_insert_raw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gnss_deregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !32, !34, !35, !37, !38, !40, !41, !43, !45, !47, !49, !51, !53, !54, !55, !56, !58, !60, !61, !62, !63, !65, !67, !69, !70, !71}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__initcall__kmod_gnss_sirf__290_577_sirf_driver_init6, !1, !"__initcall__kmod_gnss_sirf__290_577_sirf_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gnss/sirf.c", i32 577, i32 1}
!2 = !{ptr @__exitcall_sirf_driver_exit, !1, !"__exitcall_sirf_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/gnss/sirf.c", i32 579, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/gnss/sirf.c", i32 580, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/gnss/sirf.c", i32 581, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gnss/sirf.c", i32 570, i32 12}
!12 = !{ptr @sirf_driver, !13, !"sirf_driver", i1 false, i1 false}
!13 = !{!"../drivers/gnss/sirf.c", i32 568, i32 36}
!14 = !{ptr @sirf_of_match, !15, !"sirf_of_match", i1 false, i1 false}
!15 = !{!"../drivers/gnss/sirf.c", i32 557, i32 34}
!16 = !{ptr @sirf_pm_ops, !17, !"sirf_pm_ops", i1 false, i1 false}
!17 = !{!"../drivers/gnss/sirf.c", i32 377, i32 32}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gnss/sirf.c", i32 317, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @sirf_runtime_suspend._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @sirf_runtime_suspend._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gnss/sirf.c", i32 244, i32 3}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @sirf_wait_for_power_state._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @sirf_wait_for_power_state._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @sirf_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/gnss/sirf.c", i32 417, i32 2}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @sirf_probe.__key.10, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/gnss/sirf.c", i32 418, i32 2}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @sirf_probe.__key.12, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/gnss/sirf.c", i32 419, i32 2}
!40 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gnss/sirf.c", i32 428, i32 38}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gnss/sirf.c", i32 434, i32 38}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gnss/sirf.c", i32 440, i32 46}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gnss/sirf.c", i32 448, i32 47}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gnss/sirf.c", i32 476, i32 5}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gnss/sirf.c", i32 497, i32 5}
!53 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @sirf_probe._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @sirf_probe._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @sirf_gnss_ops, !57, !"sirf_gnss_ops", i1 false, i1 false}
!57 = !{!"../drivers/gnss/sirf.c", i32 157, i32 37}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gnss/sirf.c", i32 108, i32 3}
!60 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @sirf_open._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @sirf_open._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @sirf_serdev_ops, !64, !"sirf_serdev_ops", i1 false, i1 false}
!64 = !{!"../drivers/gnss/sirf.c", i32 183, i32 39}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gnss/sirf.c", i32 388, i32 29}
!67 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gnss/sirf.c", i32 195, i32 2}
!69 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @sirf_wakeup_handler.__UNIQUE_ID_ddebug289, !68, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{i8 0, i8 2}
!82 = !{i64 2148339397, i64 2148339402, i64 2148339415, i64 2148339459, i64 2148339493, i64 2148339514}
!83 = !{i64 2148515001}
!84 = !{i64 1001601, i64 1001626, i64 1001648, i64 1001664, i64 1001676, i64 1001696, i64 1001720, i64 1001736, i64 1001748}
!85 = !{i64 2148515189}
