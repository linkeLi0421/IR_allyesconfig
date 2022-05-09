; ModuleID = '/llk/IR_all_yes/drivers/bluetooth/hci_nokia.c_pt.bc'
source_filename = "../drivers/bluetooth/hci_nokia.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.serdev_device_driver = type { %struct.device_driver, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hci_uart_proto = type { i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.h4_recv_pkt = type { i8, i8, i8, i8, i16, ptr }
%struct.nokia_bt_dev = type { %struct.hci_uart, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.sk_buff_head, %struct.bdaddr_t, i32, %struct.completion, i8, i8, i8, i8, i8 }
%struct.hci_uart = type { ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.work_struct, ptr, %struct.percpu_rw_semaphore, ptr, ptr, i32, i32, i32, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rcuwait = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, i16, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.hci_nokia_neg_cmd = type <{ i8, i16, i16, i8, i16, i16 }>
%struct.firmware = type { i32, ptr, ptr }
%struct.hci_nokia_neg_evt = type <{ i8, i16, i16, i8, i16, i16, i8, i8 }>

@__initcall__kmod_hci_nokia__488_802_nokia_bluetooth_serdev_driver_init6 = internal global ptr @nokia_bluetooth_serdev_driver_init, section ".initcall6.init", align 4
@nokia_bluetooth_serdev_driver = internal global { %struct.serdev_device_driver, [44 x i8] } { %struct.serdev_device_driver { %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @nokia_bluetooth_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nokia_bluetooth_pm_ops, ptr null, ptr null }, ptr @nokia_bluetooth_serdev_probe, ptr @nokia_bluetooth_serdev_remove }, [44 x i8] zeroinitializer }, align 32
@__exitcall_nokia_bluetooth_serdev_driver_exit = internal global ptr @nokia_bluetooth_serdev_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author489 = internal constant [52 x i8] c"hci_nokia.author=Sebastian Reichel <sre@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description490 = internal constant [66 x i8] c"hci_nokia.description=Bluetooth HCI UART Nokia H4+ driver ver 0.1\00", section ".modinfo", align 1
@__UNIQUE_ID_version491 = internal constant [22 x i8] c"hci_nokia.version=0.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hci_nokia\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file492 = internal constant [43 x i8] c"hci_nokia.file=drivers/bluetooth/hci_nokia\00", section ".modinfo", align 1
@__UNIQUE_ID_license493 = internal constant [22 x i8] c"hci_nokia.license=GPL\00", section ".modinfo", align 1
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nokia-bluetooth\00", [16 x i8] zeroinitializer }, align 32
@nokia_bluetooth_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nokia,h4p-bluetooth\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@nokia_bluetooth_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nokia_bluetooth_runtime_suspend, ptr @nokia_bluetooth_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@nokia_bluetooth_serdev_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 700, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"could not get reset gpio: %d\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nokia_bluetooth_serdev_probe\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/bluetooth/hci_nokia.c\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nokia_bluetooth_serdev_probe._entry_ptr = internal global ptr @nokia_bluetooth_serdev_probe._entry, section ".printk_index", align 4
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"host-wakeup\00", [20 x i8] zeroinitializer }, align 32
@nokia_bluetooth_serdev_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.7, i32 707, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"could not get host wakeup gpio: %d\00", [61 x i8] zeroinitializer }, align 32
@nokia_bluetooth_serdev_probe._entry_ptr.13 = internal global ptr @nokia_bluetooth_serdev_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wakeup\00", [25 x i8] zeroinitializer }, align 32
@nokia_bluetooth_serdev_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.6, ptr @.str.7, i32 718, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"could request wakeup irq: %d\00", [35 x i8] zeroinitializer }, align 32
@nokia_bluetooth_serdev_probe._entry_ptr.17 = internal global ptr @nokia_bluetooth_serdev_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bluetooth-wakeup\00", [47 x i8] zeroinitializer }, align 32
@nokia_bluetooth_serdev_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.6, ptr @.str.7, i32 726, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not get BT wakeup gpio: %d\00", [63 x i8] zeroinitializer }, align 32
@nokia_bluetooth_serdev_probe._entry_ptr.21 = internal global ptr @nokia_bluetooth_serdev_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sysclk\00", [25 x i8] zeroinitializer }, align 32
@nokia_bluetooth_serdev_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.6, ptr @.str.7, i32 733, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"could not get sysclk: %d\00", [39 x i8] zeroinitializer }, align 32
@nokia_bluetooth_serdev_probe._entry_ptr.25 = internal global ptr @nokia_bluetooth_serdev_probe._entry.23, section ".printk_index", align 4
@nokia_proto = internal constant { %struct.hci_uart_proto, [44 x i8] } { %struct.hci_uart_proto { i32 10, ptr @.str.30, i32 1, i32 0, i32 0, ptr @nokia_open, ptr @nokia_close, ptr @nokia_flush, ptr @nokia_setup, ptr null, ptr @nokia_recv, ptr @nokia_enqueue, ptr @nokia_dequeue }, [44 x i8] zeroinitializer }, align 32
@nokia_bluetooth_serdev_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.6, ptr @.str.7, i32 748, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"could not register bluetooth uart: %d\00", [58 x i8] zeroinitializer }, align 32
@nokia_bluetooth_serdev_probe._entry_ptr.28 = internal global ptr @nokia_bluetooth_serdev_probe._entry.26, section ".printk_index", align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Nokia\00", [26 x i8] zeroinitializer }, align 32
@nokia_open.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.7, ptr @.str.32, i8 0, i8 117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nokia_open\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"protocol open\00", [18 x i8] zeroinitializer }, align 32
@nokia_close.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.7, ptr @.str.34, i8 0, i8 123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nokia_close\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"close device\00", [19 x i8] zeroinitializer }, align 32
@nokia_flush.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.35, ptr @.str.7, ptr @.str.36, i8 0, i8 120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nokia_flush\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"flush device\00", [19 x i8] zeroinitializer }, align 32
@nokia_setup.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.37, ptr @.str.7, ptr @.str.38, i8 0, i8 102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nokia_setup\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"protocol setup\00", [17 x i8] zeroinitializer }, align 32
@nokia_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.7, i32 416, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Reset failed: %d\00", [47 x i8] zeroinitializer }, align 32
@nokia_setup._entry_ptr = internal global ptr @nokia_setup._entry, section ".printk_index", align 4
@nokia_setup._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.37, ptr @.str.7, i32 423, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Negotiation failed: %d\00", [41 x i8] zeroinitializer }, align 32
@nokia_setup._entry_ptr.42 = internal global ptr @nokia_setup._entry.40, section ".printk_index", align 4
@nokia_setup._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.37, ptr @.str.7, i32 430, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Alive check failed: %d\00", [41 x i8] zeroinitializer }, align 32
@nokia_setup._entry_ptr.45 = internal global ptr @nokia_setup._entry.43, section ".printk_index", align 4
@nokia_setup._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.37, ptr @.str.7, i32 437, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Could not setup FW: %d\00", [41 x i8] zeroinitializer }, align 32
@nokia_setup._entry_ptr.48 = internal global ptr @nokia_setup._entry.46, section ".printk_index", align 4
@nokia_setup.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.37, ptr @.str.7, ptr @.str.49, i8 0, i8 112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"bcm2048 has invalid bluetooth address!\00", [57 x i8] zeroinitializer }, align 32
@nokia_setup.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.37, ptr @.str.7, ptr @.str.50, i8 0, i8 112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"protocol setup done!\00", [43 x i8] zeroinitializer }, align 32
@nokia_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.7, i32 196, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"reset: host wakeup not low!\00", [36 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nokia_reset\00", [20 x i8] zeroinitializer }, align 32
@nokia_reset._entry_ptr = internal global ptr @nokia_reset._entry, section ".printk_index", align 4
@nokia_reset._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.7, i32 212, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CTS not received: %d\00", [43 x i8] zeroinitializer }, align 32
@nokia_reset._entry_ptr.55 = internal global ptr @nokia_reset._entry.53, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@nokia_send_negotiation.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.56, ptr @.str.7, ptr @.str.57, i8 0, i8 74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nokia_send_negotiation\00", [41 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Negotiation sent\00", [47 x i8] zeroinitializer }, align 32
@nokia_send_negotiation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.56, ptr @.str.7, i32 314, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@nokia_send_negotiation._entry_ptr = internal global ptr @nokia_send_negotiation._entry, section ".printk_index", align 4
@nokia_send_negotiation.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.56, ptr @.str.7, ptr @.str.58, i8 0, i8 79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Negotiation successful\00", [41 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@nokia_send_alive_packet.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.60, ptr @.str.7, ptr @.str.61, i8 0, i8 62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nokia_send_alive_packet\00", [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Alive sent\00", [21 x i8] zeroinitializer }, align 32
@nokia_setup_fw.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.62, ptr @.str.7, ptr @.str.63, i8 0, i8 83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nokia_setup_fw\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"setup firmware\00", [17 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nokia/bcmfw.bin\00", [16 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nokia/ti1273.bin\00", [47 x i8] zeroinitializer }, align 32
@nokia_setup_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.62, ptr @.str.7, i32 341, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unsupported bluetooth device!\00", [34 x i8] zeroinitializer }, align 32
@nokia_setup_fw._entry_ptr = internal global ptr @nokia_setup_fw._entry, section ".printk_index", align 4
@nokia_setup_fw._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.62, ptr @.str.7, i32 348, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Failed to load Nokia firmware file (%d)\00", [52 x i8] zeroinitializer }, align 32
@nokia_setup_fw._entry_ptr.69 = internal global ptr @nokia_setup_fw._entry.67, section ".printk_index", align 4
@nokia_setup_fw._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.62, ptr @.str.7, i32 373, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: FW command %04x failed (%d)\00", [32 x i8] zeroinitializer }, align 32
@nokia_setup_fw._entry_ptr.72 = internal global ptr @nokia_setup_fw._entry.70, section ".printk_index", align 4
@nokia_recv_pkts = internal constant { [6 x %struct.h4_recv_pkt], [56 x i8] } { [6 x %struct.h4_recv_pkt] [%struct.h4_recv_pkt { i8 2, i8 4, i8 2, i8 2, i16 1028, ptr @hci_recv_frame }, %struct.h4_recv_pkt { i8 3, i8 3, i8 2, i8 1, i16 255, ptr @hci_recv_frame }, %struct.h4_recv_pkt { i8 4, i8 2, i8 1, i8 1, i16 260, ptr @hci_recv_frame }, %struct.h4_recv_pkt { i8 7, i8 1, i8 0, i8 1, i16 255, ptr @nokia_recv_alive_packet }, %struct.h4_recv_pkt { i8 6, i8 1, i8 0, i8 1, i16 255, ptr @nokia_recv_negotiation_packet }, %struct.h4_recv_pkt { i8 8, i8 2, i8 1, i8 1, i16 255, ptr @nokia_recv_radio }], [56 x i8] zeroinitializer }, align 32
@nokia_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.7, i32 636, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Frame reassembly failed (%d)\00", [35 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nokia_recv\00", [21 x i8] zeroinitializer }, align 32
@nokia_recv._entry_ptr = internal global ptr @nokia_recv._entry, section ".printk_index", align 4
@nokia_recv_alive_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.7, i32 580, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Corrupted alive message\00", [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nokia_recv_alive_packet\00", [40 x i8] zeroinitializer }, align 32
@nokia_recv_alive_packet._entry_ptr = internal global ptr @nokia_recv_alive_packet._entry, section ".printk_index", align 4
@nokia_recv_alive_packet._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.7, i32 590, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Alive received: invalid response: 0x%02x!\00", [54 x i8] zeroinitializer }, align 32
@nokia_recv_alive_packet._entry_ptr.79 = internal global ptr @nokia_recv_alive_packet._entry.77, section ".printk_index", align 4
@nokia_recv_alive_packet.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.76, ptr @.str.7, ptr @.str.80, i8 0, i8 -107, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Alive received\00", [17 x i8] zeroinitializer }, align 32
@nokia_recv_negotiation_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.7, i32 551, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Negotiation received: wrong reply\00", [62 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nokia_recv_negotiation_packet\00", [34 x i8] zeroinitializer }, align 32
@nokia_recv_negotiation_packet._entry_ptr = internal global ptr @nokia_recv_negotiation_packet._entry, section ".printk_index", align 4
@nokia_recv_negotiation_packet.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.82, ptr @.str.7, ptr @.str.83, i8 0, i8 -116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Negotiation received: baud=%u:clk=%u:manu=%u:vers=%u\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 49]
@___asan_gen_.84 = private unnamed_addr constant [30 x i8] c"nokia_bluetooth_serdev_driver\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 792, i32 36 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 806, i32 1 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 796, i32 11 }
@___asan_gen_.99 = private unnamed_addr constant [25 x i8] c"nokia_bluetooth_of_match\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 785, i32 34 }
@___asan_gen_.102 = private unnamed_addr constant [23 x i8] c"nokia_bluetooth_pm_ops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 778, i32 32 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 697, i32 37 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 700, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 704, i32 43 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 707, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 716, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 718, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 722, i32 41 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 726, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 730, i32 29 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 733, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [12 x i8] c"nokia_proto\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 670, i32 36 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 748, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1984, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 672, i32 11 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 469, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 492, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 480, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 411, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 416, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 423, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 430, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 437, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 448, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 451, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 196, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 212, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 296, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 314, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 319, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.265 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 87, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 248, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 334, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 337, i32 12 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 339, i32 12 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 341, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 347, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 372, i32 5 }
@___asan_gen_.303 = private unnamed_addr constant [16 x i8] c"nokia_recv_pkts\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 614, i32 33 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 636, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 580, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 589, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 596, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 551, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.343 = private constant [33 x i8] c"../drivers/bluetooth/hci_nokia.c\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 560, i32 2 }
@llvm.compiler.used = appending global [116 x ptr] [ptr @__UNIQUE_ID_author489, ptr @__UNIQUE_ID_description490, ptr @__UNIQUE_ID_file492, ptr @__UNIQUE_ID_license493, ptr @__UNIQUE_ID_version491, ptr @__exitcall_nokia_bluetooth_serdev_driver_exit, ptr @__initcall__kmod_hci_nokia__488_802_nokia_bluetooth_serdev_driver_init6, ptr @__modver_attr, ptr @nokia_bluetooth_serdev_driver_exit, ptr @nokia_bluetooth_serdev_probe._entry, ptr @nokia_bluetooth_serdev_probe._entry.11, ptr @nokia_bluetooth_serdev_probe._entry.15, ptr @nokia_bluetooth_serdev_probe._entry.19, ptr @nokia_bluetooth_serdev_probe._entry.23, ptr @nokia_bluetooth_serdev_probe._entry.26, ptr @nokia_bluetooth_serdev_probe._entry_ptr, ptr @nokia_bluetooth_serdev_probe._entry_ptr.13, ptr @nokia_bluetooth_serdev_probe._entry_ptr.17, ptr @nokia_bluetooth_serdev_probe._entry_ptr.21, ptr @nokia_bluetooth_serdev_probe._entry_ptr.25, ptr @nokia_bluetooth_serdev_probe._entry_ptr.28, ptr @nokia_recv._entry, ptr @nokia_recv._entry_ptr, ptr @nokia_recv_alive_packet._entry, ptr @nokia_recv_alive_packet._entry.77, ptr @nokia_recv_alive_packet._entry_ptr, ptr @nokia_recv_alive_packet._entry_ptr.79, ptr @nokia_recv_negotiation_packet._entry, ptr @nokia_recv_negotiation_packet._entry_ptr, ptr @nokia_reset._entry, ptr @nokia_reset._entry.53, ptr @nokia_reset._entry_ptr, ptr @nokia_reset._entry_ptr.55, ptr @nokia_send_negotiation._entry, ptr @nokia_send_negotiation._entry_ptr, ptr @nokia_setup._entry, ptr @nokia_setup._entry.40, ptr @nokia_setup._entry.43, ptr @nokia_setup._entry.46, ptr @nokia_setup._entry_ptr, ptr @nokia_setup._entry_ptr.42, ptr @nokia_setup._entry_ptr.45, ptr @nokia_setup._entry_ptr.48, ptr @nokia_setup_fw._entry, ptr @nokia_setup_fw._entry.67, ptr @nokia_setup_fw._entry.70, ptr @nokia_setup_fw._entry_ptr, ptr @nokia_setup_fw._entry_ptr.69, ptr @nokia_setup_fw._entry_ptr.72, ptr @nokia_bluetooth_serdev_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @nokia_bluetooth_of_match, ptr @nokia_bluetooth_pm_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @nokia_proto, ptr @.str.27, ptr @skb_queue_head_init.__key, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @init_completion.__key, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.71, ptr @nokia_recv_pkts, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_bluetooth_serdev_driver to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_bluetooth_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_bluetooth_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_bluetooth_serdev_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_bluetooth_serdev_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_bluetooth_serdev_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_bluetooth_serdev_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_bluetooth_serdev_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_proto to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_bluetooth_serdev_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_setup._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_setup._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_setup._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_reset._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_send_negotiation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_setup_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_setup_fw._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_setup_fw._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_recv_pkts to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_recv_alive_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_recv_alive_packet._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_recv_negotiation_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nokia_bluetooth_serdev_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__serdev_device_driver_register(ptr noundef nonnull @nokia_bluetooth_serdev_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nokia_bluetooth_serdev_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef nonnull @nokia_bluetooth_serdev_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serdev_device_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nokia_bluetooth_serdev_probe(ptr noundef %serdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %serdev, i32 noundef 456, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %serdev2 = getelementptr inbounds %struct.nokia_bt_dev, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %serdev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %serdev, ptr %serdev2, align 4
  %serdev3 = getelementptr inbounds %struct.hci_uart, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %serdev3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %serdev, ptr %serdev3, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call4 = tail call ptr @devm_gpiod_get(ptr noundef %serdev, ptr noundef nonnull @.str.4, i32 noundef 7) #6
  %reset = getelementptr inbounds %struct.nokia_bt_dev, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %reset, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call4 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %serdev, ptr noundef nonnull @.str.5, i32 noundef %4) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @devm_gpiod_get(ptr noundef %serdev, ptr noundef nonnull @.str.10, i32 noundef 1) #6
  %wakeup_host = getelementptr inbounds %struct.nokia_bt_dev, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %wakeup_host to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call11, ptr %wakeup_host, align 4
  %cmp.i116 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116, label %if.then14, label %if.end20

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call11 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %serdev, ptr noundef nonnull @.str.12, i32 noundef %6) #9
  br label %cleanup

if.end20:                                         ; preds = %if.end10
  %call22 = tail call i32 @gpiod_to_irq(ptr noundef %call11) #6
  %wake_irq = getelementptr inbounds %struct.nokia_bt_dev, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %wake_irq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call22, ptr %wake_irq, align 4
  %call24 = tail call i32 @devm_request_threaded_irq(ptr noundef %serdev, i32 noundef %call22, ptr noundef null, ptr noundef nonnull @wakeup_handler, i32 noundef 8195, ptr noundef nonnull @.str.14, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end30, label %do.end29

do.end29:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %serdev, ptr noundef nonnull @.str.16, i32 noundef %call24) #9
  br label %cleanup

if.end30:                                         ; preds = %if.end20
  %call31 = tail call ptr @devm_gpiod_get(ptr noundef %serdev, ptr noundef nonnull @.str.18, i32 noundef 3) #6
  %wakeup_bt = getelementptr inbounds %struct.nokia_bt_dev, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %wakeup_bt to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call31, ptr %wakeup_bt, align 4
  %cmp.i117 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i117, label %if.then34, label %if.end40

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call31 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %serdev, ptr noundef nonnull @.str.20, i32 noundef %9) #9
  br label %cleanup

if.end40:                                         ; preds = %if.end30
  %call41 = tail call ptr @devm_clk_get(ptr noundef %serdev, ptr noundef nonnull @.str.22) #6
  %cmp.i118 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i118, label %if.then43, label %if.end48

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call41 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %serdev, ptr noundef nonnull @.str.24, i32 noundef %10) #9
  br label %cleanup

if.end48:                                         ; preds = %if.end40
  %call.i119 = tail call i32 @clk_prepare(ptr noundef %call41) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool.not.i = icmp eq i32 %call.i119, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end48.clk_prepare_enable.exit_crit_edge

if.end48.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end48
  %call1.i = tail call i32 @clk_enable(ptr noundef %call41) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call41) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end48.clk_prepare_enable.exit_crit_edge
  %call50 = tail call i32 @clk_get_rate(ptr noundef %call41) #6
  %sysclk_speed = getelementptr inbounds %struct.nokia_bt_dev, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %sysclk_speed to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call50, ptr %sysclk_speed, align 4
  tail call void @clk_disable(ptr noundef %call41) #6
  tail call void @clk_unprepare(ptr noundef %call41) #6
  %txq = getelementptr inbounds %struct.nokia_bt_dev, ptr %call.i, i32 0, i32 8
  %lock.i = getelementptr inbounds %struct.nokia_bt_dev, ptr %call.i, i32 0, i32 8, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #6
  %12 = ptrtoint ptr %txq to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %txq, ptr %txq, align 4
  %prev.i.i = getelementptr inbounds %struct.nokia_bt_dev, ptr %call.i, i32 0, i32 8, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %txq, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.nokia_bt_dev, ptr %call.i, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %qlen.i.i, align 4
  %priv = getelementptr inbounds %struct.hci_uart, ptr %call.i, i32 0, i32 9
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %priv, align 4
  %alignment = getelementptr inbounds %struct.hci_uart, ptr %call.i, i32 0, i32 14
  %16 = ptrtoint ptr %alignment to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %alignment, align 4
  %call54 = tail call i32 @hci_uart_register_device(ptr noundef nonnull %call.i, ptr noundef nonnull @nokia_proto) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %clk_prepare_enable.exit.cleanup_crit_edge, label %do.end59

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end59:                                         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %serdev, ptr noundef nonnull @.str.27, i32 noundef %call54) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %clk_prepare_enable.exit.cleanup_crit_edge, %if.then43, %if.then34, %do.end29, %if.then14, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then7 ], [ %6, %if.then14 ], [ %call24, %do.end29 ], [ %9, %if.then34 ], [ %10, %if.then43 ], [ %call54, %do.end59 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %clk_prepare_enable.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nokia_bluetooth_serdev_remove(ptr nocapture noundef readonly %serdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @hci_uart_unregister_device(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nokia_bluetooth_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @serdev_device_set_flow_control(ptr noundef %dev, i1 noundef zeroext false) #6
  %call1.i.i = tail call i32 @serdev_device_set_tiocm(ptr noundef %dev, i32 noundef 0, i32 noundef 4) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nokia_bluetooth_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @serdev_device_set_tiocm(ptr noundef %dev, i32 noundef 4, i32 noundef 0) #6
  tail call void @serdev_device_set_flow_control(ptr noundef %dev, i1 noundef zeroext true) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_set_flow_control(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_set_tiocm(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wakeup_handler(i32 noundef %irq, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %serdev = getelementptr inbounds %struct.nokia_bt_dev, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serdev, align 4
  %wakeup_host = getelementptr inbounds %struct.nokia_bt_dev, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %wakeup_host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wakeup_host, align 4
  %call = tail call i32 @gpiod_get_value(ptr noundef %3) #6
  %rx_enabled = getelementptr inbounds %struct.nokia_bt_dev, ptr %data, i32 0, i32 16
  %4 = ptrtoint ptr %rx_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rx_enabled, align 4, !range !189
  %6 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %6)
  %cmp = icmp eq i32 %call, %6
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 5) #6
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i18 = tail call i32 @__pm_runtime_idle(ptr noundef %1, i32 noundef 5) #6
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  %frombool = zext i1 %tobool3 to i8
  %7 = ptrtoint ptr %rx_enabled to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %rx_enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nokia_open(ptr nocapture noundef readonly %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %serdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 1
  %0 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serdev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nokia_open.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nokia_open, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !190

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nokia_open.__UNIQUE_ID_ddebug483, ptr noundef %1, ptr noundef nonnull @.str.32) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @pm_runtime_enable(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nokia_close(ptr nocapture noundef readonly %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %serdev = getelementptr inbounds %struct.nokia_bt_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serdev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nokia_close.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nokia_close, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !190

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nokia_close.__UNIQUE_ID_ddebug485, ptr noundef %3, ptr noundef nonnull @.str.34) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %initialized = getelementptr inbounds %struct.nokia_bt_dev, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %initialized, align 2
  %txq = getelementptr inbounds %struct.nokia_bt_dev, ptr %1, i32 0, i32 8
  tail call void @skb_queue_purge(ptr noundef %txq) #6
  %rx_skb = getelementptr inbounds %struct.nokia_bt_dev, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %6, i32 noundef 0) #6
  %reset = getelementptr inbounds %struct.nokia_bt_dev, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value(ptr noundef %8, i32 noundef 1) #6
  %wakeup_bt = getelementptr inbounds %struct.nokia_bt_dev, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %wakeup_bt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wakeup_bt, align 4
  tail call void @gpiod_set_value(ptr noundef %10, i32 noundef 0) #6
  %11 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %serdev, align 4
  tail call void @__pm_runtime_disable(ptr noundef %12, i1 noundef zeroext true) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nokia_flush(ptr nocapture noundef readonly %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nokia_flush.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nokia_flush, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !190

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %serdev = getelementptr inbounds %struct.nokia_bt_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nokia_flush.__UNIQUE_ID_ddebug484, ptr noundef %3, ptr noundef nonnull @.str.36) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %txq = getelementptr inbounds %struct.nokia_bt_dev, ptr %1, i32 0, i32 8
  tail call void @skb_queue_purge(ptr noundef %txq) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nokia_setup(ptr noundef %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %serdev = getelementptr inbounds %struct.nokia_bt_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serdev, align 4
  %initialized = getelementptr inbounds %struct.nokia_bt_dev, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %initialized, align 2
  tail call void @serdev_device_set_flow_control(ptr noundef %3, i1 noundef zeroext false) #6
  %call1.i.i = tail call i32 @serdev_device_set_tiocm(ptr noundef %3, i32 noundef 0, i32 noundef 4) #6
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #6
  %tx_enabled = getelementptr inbounds %struct.nokia_bt_dev, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %tx_enabled to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tx_enabled, align 1, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %wakeup_bt = getelementptr inbounds %struct.nokia_bt_dev, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %wakeup_bt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wakeup_bt, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %8, i32 noundef 0) #6
  %9 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %serdev, align 4
  %call.i130 = tail call i32 @__pm_runtime_idle(ptr noundef %10, i32 noundef 5) #6
  %11 = ptrtoint ptr %tx_enabled to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %tx_enabled, align 1
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nokia_setup.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nokia_setup, %if.then11)) #6
          to label %do.end [label %if.then11], !srcloc !190

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nokia_setup.__UNIQUE_ID_ddebug480, ptr noundef %3, ptr noundef nonnull @.str.38) #6
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 4
  %serdev.i = getelementptr inbounds %struct.nokia_bt_dev, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %serdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %serdev.i, align 4
  %reset.i = getelementptr inbounds %struct.nokia_bt_dev, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reset.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %17, i32 noundef 1) #6
  %wakeup_bt.i = getelementptr inbounds %struct.nokia_bt_dev, ptr %13, i32 0, i32 4
  %18 = ptrtoint ptr %wakeup_bt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wakeup_bt.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %19, i32 noundef 1) #6
  tail call void @msleep(i32 noundef 100) #6
  %wakeup_host.i = getelementptr inbounds %struct.nokia_bt_dev, ptr %13, i32 0, i32 3
  %20 = ptrtoint ptr %wakeup_host.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wakeup_host.i, align 4
  %call.i131 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i131)
  %cmp.i = icmp eq i32 %call.i131, 1
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.51) #9
  br label %do.end17

if.end.i:                                         ; preds = %do.end
  %22 = ptrtoint ptr %serdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %serdev.i, align 4
  tail call void @serdev_device_write_flush(ptr noundef %23) #6
  %24 = ptrtoint ptr %serdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %serdev.i, align 4
  tail call void @serdev_device_set_flow_control(ptr noundef %25, i1 noundef zeroext false) #6
  %call1.i.i.i = tail call i32 @serdev_device_set_tiocm(ptr noundef %25, i32 noundef 0, i32 noundef 4) #6
  %26 = ptrtoint ptr %serdev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %serdev.i, align 4
  %call5.i = tail call i32 @serdev_device_set_baudrate(ptr noundef %27, i32 noundef 120000) #6
  %28 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reset.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %29, i32 noundef 0) #6
  %30 = ptrtoint ptr %serdev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %serdev.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i = sub i32 -20, %32
  %33 = load volatile i32, ptr @jiffies, align 128
  %sub1.i.i = add i32 %add.neg.i.i, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i.i)
  %cmp2.i.i = icmp slt i32 %sub1.i.i, 0
  br i1 %cmp2.i.i, label %if.end.i.while.body.i.i_crit_edge, label %if.end.i.do.end13.i_crit_edge

if.end.i.do.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13.i

if.end.i.while.body.i.i_crit_edge:                ; preds = %if.end.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.end.i.while.body.i.i_crit_edge
  %call.i.i.i = tail call i32 @serdev_device_get_tiocm(ptr noundef %31) #6
  %and.i.i.i = and i32 %call.i.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end.i.i, label %if.end18

if.end.i.i:                                       ; preds = %while.body.i.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %34, %add.neg.i.i
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.do.end13.i_crit_edge

if.end.i.i.do.end13.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

do.end13.i:                                       ; preds = %if.end.i.i.do.end13.i_crit_edge, %if.end.i.do.end13.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.54, i32 noundef -110) #9
  br label %do.end17

do.end17:                                         ; preds = %do.end13.i, %do.end.i
  %retval.0.i132.ph = phi i32 [ -110, %do.end13.i ], [ -71, %do.end.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.39, i32 noundef %retval.0.i132.ph) #9
  br label %out

if.end18:                                         ; preds = %while.body.i.i
  %35 = ptrtoint ptr %serdev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %serdev.i, align 4
  %call.i.i31.i = tail call i32 @serdev_device_set_tiocm(ptr noundef %36, i32 noundef 4, i32 noundef 0) #6
  tail call void @serdev_device_set_flow_control(ptr noundef %36, i1 noundef zeroext true) #6
  %call19 = tail call fastcc i32 @nokia_send_negotiation(ptr noundef %hu)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end24, label %if.end25

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.41, i32 noundef %call19) #9
  br label %out

if.end25:                                         ; preds = %if.end18
  %call26 = tail call fastcc i32 @nokia_send_alive_packet(ptr noundef %hu)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %do.end31, label %if.end32

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.44, i32 noundef %call26) #9
  br label %out

if.end32:                                         ; preds = %if.end25
  %call33 = tail call fastcc i32 @nokia_setup_fw(ptr noundef %hu)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %do.end38, label %if.end39

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.47, i32 noundef %call33) #9
  br label %out

if.end39:                                         ; preds = %if.end32
  %37 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %serdev, align 4
  tail call void @serdev_device_set_flow_control(ptr noundef %38, i1 noundef zeroext false) #6
  %call1.i.i133 = tail call i32 @serdev_device_set_tiocm(ptr noundef %38, i32 noundef 0, i32 noundef 4) #6
  %39 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %serdev, align 4
  %call42 = tail call i32 @serdev_device_set_baudrate(ptr noundef %40, i32 noundef 3692300) #6
  %41 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %serdev, align 4
  %call.i.i = tail call i32 @serdev_device_set_tiocm(ptr noundef %42, i32 noundef 4, i32 noundef 0) #6
  tail call void @serdev_device_set_flow_control(ptr noundef %42, i1 noundef zeroext true) #6
  %man_id = getelementptr inbounds %struct.nokia_bt_dev, ptr %1, i32 0, i32 12
  %43 = ptrtoint ptr %man_id to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %man_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %44)
  %cmp44 = icmp eq i8 %44, 4
  br i1 %cmp44, label %if.then46, label %if.end39.do.body65_crit_edge

if.end39.do.body65_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body65

if.then46:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %45 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hdev, align 4
  %set_bdaddr = getelementptr inbounds %struct.hci_dev, ptr %46, i32 0, i32 242
  %47 = ptrtoint ptr %set_bdaddr to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @btbcm_set_bdaddr, ptr %set_bdaddr, align 8
  %48 = load ptr, ptr %hdev, align 4
  %quirks = getelementptr inbounds %struct.hci_dev, ptr %48, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 7, ptr noundef %quirks) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nokia_setup.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nokia_setup, %if.then60)) #6
          to label %do.body65 [label %if.then60], !srcloc !190

if.then60:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nokia_setup.__UNIQUE_ID_ddebug481, ptr noundef %3, ptr noundef nonnull @.str.49) #6
  br label %do.body65

do.body65:                                        ; preds = %if.then60, %if.then46, %if.end39.do.body65_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nokia_setup.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nokia_setup, %if.then77)) #6
          to label %do.end80 [label %if.then77], !srcloc !190

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nokia_setup.__UNIQUE_ID_ddebug482, ptr noundef %3, ptr noundef nonnull @.str.50) #6
  br label %do.end80

do.end80:                                         ; preds = %if.then77, %do.body65
  %wakeup_bt81 = getelementptr inbounds %struct.nokia_bt_dev, ptr %1, i32 0, i32 4
  %49 = ptrtoint ptr %wakeup_bt81 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %wakeup_bt81, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %50, i32 noundef 0) #6
  %call.i136 = tail call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 5) #6
  %51 = ptrtoint ptr %tx_enabled to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %tx_enabled, align 1
  %52 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %initialized, align 2
  br label %cleanup

out:                                              ; preds = %do.end38, %do.end31, %do.end24, %do.end17
  %err.0 = phi i32 [ %retval.0.i132.ph, %do.end17 ], [ %call19, %do.end24 ], [ %call26, %do.end31 ], [ %call33, %do.end38 ]
  %call.i137 = tail call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 5) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end80
  %retval.0 = phi i32 [ %err.0, %out ], [ 0, %do.end80 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nokia_recv(ptr noundef %hu, ptr noundef %data, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %serdev = getelementptr inbounds %struct.nokia_bt_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serdev, align 4
  %flags = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %7 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hdev, align 4
  %rx_skb = getelementptr inbounds %struct.nokia_bt_dev, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_skb, align 4
  %call2 = tail call ptr @h4_recv_buf(ptr noundef %8, ptr noundef %10, ptr noundef %data, i32 noundef %count, ptr noundef nonnull @nokia_recv_pkts, i32 noundef 6) #6
  %11 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call2, ptr %rx_skb, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.73, i32 noundef %12) #9
  %13 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %rx_skb, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.then6 ], [ -49, %entry.cleanup_crit_edge ], [ %count, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nokia_enqueue(ptr nocapture noundef readonly %hu, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #6
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cb, align 8
  %4 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %call, align 1
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %rem = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @__skb_pad(ptr noundef %skb, i32 noundef 1, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 1) #6
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  %txq = getelementptr inbounds %struct.nokia_bt_dev, ptr %1, i32 0, i32 8
  tail call void @skb_queue_tail(ptr noundef %txq, ptr noundef %skb) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call.i, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nokia_dequeue(ptr nocapture noundef readonly %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %serdev = getelementptr inbounds %struct.nokia_bt_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serdev, align 4
  %txq = getelementptr inbounds %struct.nokia_bt_dev, ptr %1, i32 0, i32 8
  %call = tail call ptr @skb_dequeue(ptr noundef %txq) #6
  %initialized = getelementptr inbounds %struct.nokia_bt_dev, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %initialized, align 2, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_enabled = getelementptr inbounds %struct.nokia_bt_dev, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %tx_enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tx_enabled, align 1, !range !189
  %tobool3 = icmp ne ptr %call, null
  %8 = zext i1 %tobool3 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %8)
  %cmp = icmp eq i8 %7, %8
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  br i1 %tobool3, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #6
  %wakeup_bt = getelementptr inbounds %struct.nokia_bt_dev, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %wakeup_bt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wakeup_bt, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %10, i32 noundef 1) #6
  br label %if.end14

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %serdev, align 4
  tail call void @serdev_device_wait_until_sent(ptr noundef %12, i32 noundef 0) #6
  %wakeup_bt12 = getelementptr inbounds %struct.nokia_bt_dev, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %wakeup_bt12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wakeup_bt12, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %14, i32 noundef 0) #6
  %call.i36 = tail call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 5) #6
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then9
  %15 = ptrtoint ptr %tx_enabled to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %8, ptr %tx_enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nokia_send_negotiation(ptr noundef %hu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %serdev = getelementptr inbounds %struct.nokia_bt_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serdev, align 4
  %sysclk_speed = getelementptr inbounds %struct.nokia_bt_dev, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %sysclk_speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sysclk_speed, align 4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 20, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %9, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %div4 = udiv i32 %5, 1000
  %mul = mul i32 %5, 10
  %add = add i32 %mul, 460800
  %div2 = udiv i32 %add, 921600
  %conv = trunc i32 %div2 to i16
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %cb to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 6, ptr %cb, align 8
  %call5 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 1) #6
  %11 = ptrtoint ptr %call5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 10, ptr %call5, align 1
  %call6 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 10) #6
  %12 = ptrtoint ptr %call6 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %call6, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %baud7 = getelementptr inbounds %struct.hci_nokia_neg_cmd, ptr %call6, i32 0, i32 1
  %14 = ptrtoint ptr %baud7 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %13, ptr %baud7, align 1
  %unused1 = getelementptr inbounds %struct.hci_nokia_neg_cmd, ptr %call6, i32 0, i32 2
  %15 = ptrtoint ptr %unused1 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 0, ptr %unused1, align 1
  %proto = getelementptr inbounds %struct.hci_nokia_neg_cmd, ptr %call6, i32 0, i32 3
  %16 = ptrtoint ptr %proto to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 76, ptr %proto, align 1
  %conv8 = trunc i32 %div4 to i16
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv8)
  %sys_clk = getelementptr inbounds %struct.hci_nokia_neg_cmd, ptr %call6, i32 0, i32 4
  %18 = ptrtoint ptr %sys_clk to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 %17, ptr %sys_clk, align 1
  %unused2 = getelementptr inbounds %struct.hci_nokia_neg_cmd, ptr %call6, i32 0, i32 5
  %19 = ptrtoint ptr %unused2 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 0, ptr %unused2, align 1
  %init_error = getelementptr inbounds %struct.nokia_bt_dev, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %init_error to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %init_error, align 4
  %init_completion = getelementptr inbounds %struct.nokia_bt_dev, ptr %1, i32 0, i32 11
  %21 = ptrtoint ptr %init_completion to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %init_completion, align 4
  %wait.i = getelementptr inbounds %struct.nokia_bt_dev, ptr %1, i32 0, i32 11, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.59, ptr noundef nonnull @init_completion.__key) #6
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv, align 4
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i, i32 noundef 1) #6
  %24 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %cb, align 8
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %call.i, align 1
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %27 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len.i, align 4
  %rem.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i97 = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i97, label %if.end.if.end5.i_crit_edge, label %if.then.i99

if.end.if.end5.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then.i99:                                      ; preds = %if.end
  %call.i.i98 = tail call i32 @__skb_pad(ptr noundef nonnull %call.i.i, i32 noundef 1, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i98)
  %tobool2.not.i = icmp eq i32 %call.i.i98, 0
  br i1 %tobool2.not.i, label %if.end.i, label %if.then.i99.nokia_enqueue.exit_crit_edge

if.then.i99.nokia_enqueue.exit_crit_edge:         ; preds = %if.then.i99
  call void @__sanitizer_cov_trace_pc() #8
  br label %nokia_enqueue.exit

if.end.i:                                         ; preds = %if.then.i99
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 1) #6
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i, %if.end.if.end5.i_crit_edge
  %txq.i = getelementptr inbounds %struct.nokia_bt_dev, ptr %23, i32 0, i32 8
  tail call void @skb_queue_tail(ptr noundef %txq.i, ptr noundef nonnull %call.i.i) #6
  br label %nokia_enqueue.exit

nokia_enqueue.exit:                               ; preds = %if.end5.i, %if.then.i99.nokia_enqueue.exit_crit_edge
  %call10 = tail call i32 @hci_uart_tx_wakeup(ptr noundef %hu) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nokia_send_negotiation.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nokia_send_negotiation, %if.then16)) #6
          to label %do.end [label %if.then16], !srcloc !190

if.then16:                                        ; preds = %nokia_enqueue.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nokia_send_negotiation.__UNIQUE_ID_ddebug477, ptr noundef %3, ptr noundef nonnull @.str.57) #6
  br label %do.end

do.end:                                           ; preds = %if.then16, %nokia_enqueue.exit
  %call20 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %init_completion, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %do.end.cleanup_crit_edge, label %if.end23

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %do.end
  %29 = ptrtoint ptr %init_error to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %init_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp = icmp slt i32 %30, 0
  br i1 %cmp, label %if.end23.cleanup_crit_edge, label %if.end28

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %31 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %serdev, align 4
  tail call void @serdev_device_set_flow_control(ptr noundef %32, i1 noundef zeroext false) #6
  %call1.i.i = tail call i32 @serdev_device_set_tiocm(ptr noundef %32, i32 noundef 0, i32 noundef 4) #6
  %33 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %serdev, align 4
  %call31 = tail call i32 @serdev_device_set_baudrate(ptr noundef %34, i32 noundef 921600) #6
  %35 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %serdev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -20, %37
  %38 = load volatile i32, ptr @jiffies, align 128
  %sub1.i = add i32 %add.neg.i, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i)
  %cmp2.i = icmp slt i32 %sub1.i, 0
  br i1 %cmp2.i, label %if.end28.while.body.i_crit_edge, label %if.end28.do.end39_crit_edge

if.end28.do.end39_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end39

if.end28.while.body.i_crit_edge:                  ; preds = %if.end28
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i103.while.body.i_crit_edge, %if.end28.while.body.i_crit_edge
  %call.i.i102 = tail call i32 @serdev_device_get_tiocm(ptr noundef %36) #6
  %and.i.i = and i32 %call.i.i102, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i103, label %if.end40

if.end.i103:                                      ; preds = %while.body.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %39, %add.neg.i
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end.i103.while.body.i_crit_edge, label %if.end.i103.do.end39_crit_edge

if.end.i103.do.end39_crit_edge:                   ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end39

if.end.i103.while.body.i_crit_edge:               ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

do.end39:                                         ; preds = %if.end.i103.do.end39_crit_edge, %if.end28.do.end39_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.54, i32 noundef -110) #9
  br label %cleanup

if.end40:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %serdev, align 4
  %call.i.i105 = tail call i32 @serdev_device_set_tiocm(ptr noundef %41, i32 noundef 4, i32 noundef 0) #6
  tail call void @serdev_device_set_flow_control(ptr noundef %41, i1 noundef zeroext true) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nokia_send_negotiation.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nokia_send_negotiation, %if.then54)) #6
          to label %cleanup [label %if.then54], !srcloc !190

if.then54:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nokia_send_negotiation.__UNIQUE_ID_ddebug478, ptr noundef %3, ptr noundef nonnull @.str.58) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then54, %if.end40, %do.end39, %if.end23.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end39 ], [ -110, %do.end.cleanup_crit_edge ], [ %30, %if.end23.cleanup_crit_edge ], [ 0, %if.then54 ], [ 0, %if.end40 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nokia_send_alive_packet(ptr noundef %hu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %serdev = getelementptr inbounds %struct.nokia_bt_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serdev, align 4
  %init_completion = getelementptr inbounds %struct.nokia_bt_dev, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %init_completion to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %init_completion, align 4
  %wait.i = getelementptr inbounds %struct.nokia_bt_dev, ptr %1, i32 0, i32 11, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.59, ptr noundef nonnull @init_completion.__key) #6
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 12, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %7 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %8, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %cb to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 7, ptr %cb, align 8
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 0, ptr %add.ptr.i.i, align 1
  %call2 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 1) #6
  %11 = ptrtoint ptr %call2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %call2, align 1
  %call3 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 2) #6
  %12 = ptrtoint ptr %call3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 85, ptr %call3, align 1
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 4
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i, i32 noundef 1) #6
  %15 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cb, align 8
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %call.i, align 1
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.i, align 4
  %rem.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i39 = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i39, label %if.end.if.end5.i_crit_edge, label %if.then.i41

if.end.if.end5.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then.i41:                                      ; preds = %if.end
  %call.i.i40 = tail call i32 @__skb_pad(ptr noundef nonnull %call.i.i, i32 noundef 1, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i40)
  %tobool2.not.i = icmp eq i32 %call.i.i40, 0
  br i1 %tobool2.not.i, label %if.end.i, label %if.then.i41.nokia_enqueue.exit_crit_edge

if.then.i41.nokia_enqueue.exit_crit_edge:         ; preds = %if.then.i41
  call void @__sanitizer_cov_trace_pc() #8
  br label %nokia_enqueue.exit

if.end.i:                                         ; preds = %if.then.i41
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 1) #6
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i, %if.end.if.end5.i_crit_edge
  %txq.i = getelementptr inbounds %struct.nokia_bt_dev, ptr %14, i32 0, i32 8
  tail call void @skb_queue_tail(ptr noundef %txq.i, ptr noundef nonnull %call.i.i) #6
  br label %nokia_enqueue.exit

nokia_enqueue.exit:                               ; preds = %if.end5.i, %if.then.i41.nokia_enqueue.exit_crit_edge
  %call5 = tail call i32 @hci_uart_tx_wakeup(ptr noundef %hu) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nokia_send_alive_packet.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nokia_send_alive_packet, %if.then10)) #6
          to label %do.end [label %if.then10], !srcloc !190

if.then10:                                        ; preds = %nokia_enqueue.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nokia_send_alive_packet.__UNIQUE_ID_ddebug476, ptr noundef %3, ptr noundef nonnull @.str.61) #6
  br label %do.end

do.end:                                           ; preds = %if.then10, %nokia_enqueue.exit
  %call14 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %init_completion, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.end.cleanup_crit_edge, label %if.end17

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %init_error = getelementptr inbounds %struct.nokia_bt_dev, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %init_error to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %init_error, align 4
  %22 = tail call i32 @llvm.smin.i32(i32 %21, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end.cleanup_crit_edge ], [ %22, %if.end17 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nokia_setup_fw(ptr nocapture noundef readonly %hu) unnamed_addr #2 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %serdev = getelementptr inbounds %struct.nokia_bt_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serdev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #6
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !191
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nokia_setup_fw.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nokia_setup_fw, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !190

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nokia_setup_fw.__UNIQUE_ID_ddebug479, ptr noundef %3, ptr noundef nonnull @.str.63) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %man_id = getelementptr inbounds %struct.nokia_bt_dev, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %man_id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %man_id, align 4
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %6, label %do.end14 [
    i8 4, label %do.end.if.end16_crit_edge
    i8 49, label %if.then10
  ]

do.end.if.end16_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

do.end14:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.66) #9
  br label %cleanup56

if.end16:                                         ; preds = %if.then10, %do.end.if.end16_crit_edge
  %fwname.0 = phi ptr [ @.str.65, %if.then10 ], [ @.str.64, %do.end.if.end16_crit_edge ]
  %call17 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull %fwname.0, ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %do.end23, label %if.end24

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %8 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.68, ptr noundef %name, i32 noundef %call17) #9
  br label %cleanup56

if.end24:                                         ; preds = %if.end16
  %10 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fw, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp2592 = icmp ugt i32 %13, 3
  br i1 %cmp2592, label %while.body.lr.ph, label %if.end24.done_crit_edge

if.end24.done_crit_edge:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

while.body.lr.ph:                                 ; preds = %if.end24
  %data = getelementptr inbounds %struct.firmware, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %hdev30 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %fw_size.095 = phi i32 [ %13, %while.body.lr.ph ], [ %sub, %cleanup.while.body_crit_edge ]
  %fw_ptr.093 = phi ptr [ %15, %while.body.lr.ph ], [ %add.ptr49, %cleanup.while.body_crit_edge ]
  %16 = ptrtoint ptr %fw_ptr.093 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %fw_ptr.093, align 1
  %18 = call i16 @llvm.bswap.i16(i16 %17) #6
  %arrayidx = getelementptr i8, ptr %fw_ptr.093, i32 2
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cond = icmp eq i8 %20, 1
  br i1 %cond, label %sw.bb, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %while.body
  %add.ptr = getelementptr i8, ptr %fw_ptr.093, i32 3
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %add.ptr, align 1
  %23 = call i16 @llvm.bswap.i16(i16 %22)
  %24 = ptrtoint ptr %hdev30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hdev30, align 4
  %plen = getelementptr i8, ptr %fw_ptr.093, i32 5
  %26 = ptrtoint ptr %plen to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %plen, align 1
  %conv31 = zext i8 %27 to i32
  %add.ptr33 = getelementptr i8, ptr %fw_ptr.093, i32 6
  %call35 = call ptr @__hci_cmd_sync(ptr noundef %25, i16 noundef zeroext %23, i32 noundef %conv31, ptr noundef %add.ptr33, i32 noundef 1000) #6
  %cmp.i = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %if.end46

cleanup.thread:                                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %call35 to i32
  %29 = ptrtoint ptr %hdev30 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hdev30, align 4
  %name43 = getelementptr inbounds %struct.hci_dev, ptr %30, i32 0, i32 2
  %conv45 = zext i16 %23 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.71, ptr noundef %name43, i32 noundef %conv45, i32 noundef %28) #9
  br label %done

if.end46:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree_skb_reason(ptr noundef %call35, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %while.body.cleanup_crit_edge
  %conv48 = zext i16 %18 to i32
  %add = add nuw nsw i32 %conv48, 2
  %add.ptr49 = getelementptr i8, ptr %fw_ptr.093, i32 %add
  %sub = sub i32 %fw_size.095, %add
  %cmp25 = icmp ugt i32 %sub, 3
  br i1 %cmp25, label %cleanup.while.body_crit_edge, label %cleanup.done_crit_edge

cleanup.done_crit_edge:                           ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

done:                                             ; preds = %cleanup.done_crit_edge, %cleanup.thread, %if.end24.done_crit_edge
  %err.2 = phi i32 [ %28, %cleanup.thread ], [ %call17, %if.end24.done_crit_edge ], [ %call17, %cleanup.done_crit_edge ]
  %31 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %32) #6
  br label %cleanup56

cleanup56:                                        ; preds = %done, %do.end23, %do.end14
  %retval.0 = phi i32 [ %call17, %do.end23 ], [ %err.2, %done ], [ -19, %do.end14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_set_baudrate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btbcm_set_bdaddr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_write_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_get_tiocm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_tx_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__hci_cmd_sync(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @h4_recv_buf(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_recv_frame(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nokia_recv_alive_packet(ptr nocapture noundef readonly %hdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %serdev = getelementptr inbounds %struct.nokia_bt_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serdev, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp.not = icmp eq i8 %9, 2
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.75) #9
  %init_error = getelementptr inbounds %struct.nokia_bt_dev, ptr %3, i32 0, i32 10
  %10 = ptrtoint ptr %init_error to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -5, ptr %init_error, align 4
  br label %finish_alive

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #6
  %11 = ptrtoint ptr %call3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %call3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -52, i8 %12)
  %cmp5.not = icmp eq i8 %12, -52
  br i1 %cmp5.not, label %do.body15, label %do.end10

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv4 = zext i8 %12 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.78, i32 noundef %conv4) #9
  %init_error13 = getelementptr inbounds %struct.nokia_bt_dev, ptr %3, i32 0, i32 10
  %13 = ptrtoint ptr %init_error13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -22, ptr %init_error13, align 4
  br label %finish_alive

do.body15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nokia_recv_alive_packet.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nokia_recv_alive_packet, %if.then19)) #6
          to label %finish_alive [label %if.then19], !srcloc !190

if.then19:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nokia_recv_alive_packet.__UNIQUE_ID_ddebug487, ptr noundef %5, ptr noundef nonnull @.str.80) #6
  br label %finish_alive

finish_alive:                                     ; preds = %if.then19, %do.body15, %do.end10, %do.end
  %ret.0 = phi i32 [ -5, %do.end ], [ -22, %do.end10 ], [ 0, %if.then19 ], [ 0, %do.body15 ]
  %init_completion = getelementptr inbounds %struct.nokia_bt_dev, ptr %3, i32 0, i32 11
  tail call void @complete(ptr noundef %init_completion) #6
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nokia_recv_negotiation_packet(ptr nocapture noundef readonly %hdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %serdev = getelementptr inbounds %struct.nokia_bt_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serdev, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %9)
  %cmp.not = icmp eq i8 %9, 12
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %init_error = getelementptr inbounds %struct.nokia_bt_dev, ptr %3, i32 0, i32 10
  %10 = ptrtoint ptr %init_error to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -5, ptr %init_error, align 4
  br label %finish_neg

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #6
  %11 = ptrtoint ptr %call3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %call3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %12)
  %cmp5.not = icmp eq i8 %12, 32
  br i1 %cmp5.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.81) #9
  %init_error8 = getelementptr inbounds %struct.nokia_bt_dev, ptr %3, i32 0, i32 10
  %13 = ptrtoint ptr %init_error8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -22, ptr %init_error8, align 4
  br label %finish_neg

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %man_id = getelementptr inbounds %struct.hci_nokia_neg_evt, ptr %call3, i32 0, i32 6
  %14 = ptrtoint ptr %man_id to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %man_id, align 1
  %man_id10 = getelementptr inbounds %struct.nokia_bt_dev, ptr %3, i32 0, i32 12
  %16 = ptrtoint ptr %man_id10 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %man_id10, align 4
  %ver_id = getelementptr inbounds %struct.hci_nokia_neg_evt, ptr %call3, i32 0, i32 7
  %17 = ptrtoint ptr %ver_id to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ver_id, align 1
  %ver_id11 = getelementptr inbounds %struct.nokia_bt_dev, ptr %3, i32 0, i32 13
  %19 = ptrtoint ptr %ver_id11 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %ver_id11, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nokia_recv_negotiation_packet.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nokia_recv_negotiation_packet, %if.then16)) #6
          to label %finish_neg [label %if.then16], !srcloc !190

if.then16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %baud = getelementptr inbounds %struct.hci_nokia_neg_evt, ptr %call3, i32 0, i32 1
  %20 = ptrtoint ptr %baud to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %baud, align 1
  %conv17 = zext i16 %21 to i32
  %sys_clk = getelementptr inbounds %struct.hci_nokia_neg_evt, ptr %call3, i32 0, i32 4
  %22 = ptrtoint ptr %sys_clk to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %sys_clk, align 1
  %conv18 = zext i16 %23 to i32
  %24 = ptrtoint ptr %man_id to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %man_id, align 1
  %conv20 = zext i8 %25 to i32
  %26 = ptrtoint ptr %ver_id to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ver_id, align 1
  %conv22 = zext i8 %27 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nokia_recv_negotiation_packet.__UNIQUE_ID_ddebug486, ptr noundef %5, ptr noundef nonnull @.str.83, i32 noundef %conv17, i32 noundef %conv18, i32 noundef %conv20, i32 noundef %conv22) #6
  br label %finish_neg

finish_neg:                                       ; preds = %if.then16, %if.end9, %do.end, %if.then
  %ret.0 = phi i32 [ -5, %if.then ], [ -22, %do.end ], [ 0, %if.then16 ], [ 0, %if.end9 ]
  %init_completion = getelementptr inbounds %struct.nokia_bt_dev, ptr %3, i32 0, i32 11
  tail call void @complete(ptr noundef %init_completion) #6
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nokia_recv_radio(ptr noundef %hdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 4, ptr %cb, align 8
  %call = tail call i32 @hci_recv_frame(ptr noundef %hdev, ptr noundef %skb) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_wait_until_sent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_uart_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !33, !34, !36, !38, !39, !40, !42, !44, !45, !46, !48, !50, !51, !52, !54, !56, !57, !58, !60, !61, !62, !64, !65, !67, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !106, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !133, !135, !136, !137, !139, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !158, !160, !162, !163, !164, !165, !167, !168, !169, !171, !172, !174, !175, !176, !177, !179}
!llvm.module.flags = !{!180, !181, !182, !183, !184, !185, !186, !187}
!llvm.ident = !{!188}

!0 = !{ptr @__initcall__kmod_hci_nokia__488_802_nokia_bluetooth_serdev_driver_init6, !1, !"__initcall__kmod_hci_nokia__488_802_nokia_bluetooth_serdev_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/bluetooth/hci_nokia.c", i32 802, i32 1}
!2 = !{ptr @__exitcall_nokia_bluetooth_serdev_driver_exit, !1, !"__exitcall_nokia_bluetooth_serdev_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author489, !4, !"__UNIQUE_ID_author489", i1 false, i1 false}
!4 = !{!"../drivers/bluetooth/hci_nokia.c", i32 804, i32 1}
!5 = !{ptr @__UNIQUE_ID_description490, !6, !"__UNIQUE_ID_description490", i1 false, i1 false}
!6 = !{!"../drivers/bluetooth/hci_nokia.c", i32 805, i32 1}
!7 = !{ptr @__UNIQUE_ID_version491, !8, !"__UNIQUE_ID_version491", i1 false, i1 false}
!8 = !{!"../drivers/bluetooth/hci_nokia.c", i32 806, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_file492, !14, !"__UNIQUE_ID_file492", i1 false, i1 false}
!14 = !{!"../drivers/bluetooth/hci_nokia.c", i32 807, i32 1}
!15 = !{ptr @__UNIQUE_ID_license493, !14, !"__UNIQUE_ID_license493", i1 false, i1 false}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/bluetooth/hci_nokia.c", i32 796, i32 11}
!18 = !{ptr @nokia_bluetooth_serdev_driver, !19, !"nokia_bluetooth_serdev_driver", i1 false, i1 false}
!19 = !{!"../drivers/bluetooth/hci_nokia.c", i32 792, i32 36}
!20 = !{ptr @nokia_bluetooth_of_match, !21, !"nokia_bluetooth_of_match", i1 false, i1 false}
!21 = !{!"../drivers/bluetooth/hci_nokia.c", i32 785, i32 34}
!22 = !{ptr @nokia_bluetooth_pm_ops, !23, !"nokia_bluetooth_pm_ops", i1 false, i1 false}
!23 = !{!"../drivers/bluetooth/hci_nokia.c", i32 778, i32 32}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/bluetooth/hci_nokia.c", i32 697, i32 37}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/bluetooth/hci_nokia.c", i32 700, i32 3}
!28 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @nokia_bluetooth_serdev_probe._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @nokia_bluetooth_serdev_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/bluetooth/hci_nokia.c", i32 704, i32 43}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/bluetooth/hci_nokia.c", i32 707, i32 3}
!38 = !{ptr @nokia_bluetooth_serdev_probe._entry.11, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @nokia_bluetooth_serdev_probe._entry_ptr.13, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/bluetooth/hci_nokia.c", i32 716, i32 3}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/bluetooth/hci_nokia.c", i32 718, i32 3}
!44 = !{ptr @nokia_bluetooth_serdev_probe._entry.15, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @nokia_bluetooth_serdev_probe._entry_ptr.17, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/bluetooth/hci_nokia.c", i32 722, i32 41}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/bluetooth/hci_nokia.c", i32 726, i32 3}
!50 = !{ptr @nokia_bluetooth_serdev_probe._entry.19, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @nokia_bluetooth_serdev_probe._entry_ptr.21, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/bluetooth/hci_nokia.c", i32 730, i32 29}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/bluetooth/hci_nokia.c", i32 733, i32 3}
!56 = !{ptr @nokia_bluetooth_serdev_probe._entry.23, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @nokia_bluetooth_serdev_probe._entry_ptr.25, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/bluetooth/hci_nokia.c", i32 748, i32 3}
!60 = !{ptr @nokia_bluetooth_serdev_probe._entry.26, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @nokia_bluetooth_serdev_probe._entry_ptr.28, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @skb_queue_head_init.__key, !63, !"__key", i1 false, i1 false}
!63 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!64 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/bluetooth/hci_nokia.c", i32 672, i32 11}
!67 = !{ptr @nokia_proto, !68, !"nokia_proto", i1 false, i1 false}
!68 = !{!"../drivers/bluetooth/hci_nokia.c", i32 670, i32 36}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/bluetooth/hci_nokia.c", i32 469, i32 2}
!71 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @nokia_open.__UNIQUE_ID_ddebug483, !70, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/bluetooth/hci_nokia.c", i32 492, i32 2}
!75 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @nokia_close.__UNIQUE_ID_ddebug485, !74, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/bluetooth/hci_nokia.c", i32 480, i32 2}
!79 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @nokia_flush.__UNIQUE_ID_ddebug484, !78, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/bluetooth/hci_nokia.c", i32 411, i32 2}
!83 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @nokia_setup.__UNIQUE_ID_ddebug480, !82, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/bluetooth/hci_nokia.c", i32 416, i32 3}
!87 = !{ptr @nokia_setup._entry, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @nokia_setup._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/bluetooth/hci_nokia.c", i32 423, i32 3}
!91 = !{ptr @nokia_setup._entry.40, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @nokia_setup._entry_ptr.42, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/bluetooth/hci_nokia.c", i32 430, i32 3}
!95 = !{ptr @nokia_setup._entry.43, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @nokia_setup._entry_ptr.45, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/bluetooth/hci_nokia.c", i32 437, i32 3}
!99 = !{ptr @nokia_setup._entry.46, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @nokia_setup._entry_ptr.48, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/bluetooth/hci_nokia.c", i32 448, i32 3}
!103 = !{ptr @nokia_setup.__UNIQUE_ID_ddebug481, !102, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/bluetooth/hci_nokia.c", i32 451, i32 2}
!106 = !{ptr @nokia_setup.__UNIQUE_ID_ddebug482, !105, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/bluetooth/hci_nokia.c", i32 196, i32 3}
!109 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @nokia_reset._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @nokia_reset._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/bluetooth/hci_nokia.c", i32 212, i32 3}
!114 = !{ptr @nokia_reset._entry.53, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @nokia_reset._entry_ptr.55, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/bluetooth/hci_nokia.c", i32 296, i32 2}
!118 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @nokia_send_negotiation.__UNIQUE_ID_ddebug477, !117, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!120 = !{ptr @nokia_send_negotiation._entry, !121, !"_entry", i1 false, i1 false}
!121 = !{!"../drivers/bluetooth/hci_nokia.c", i32 314, i32 3}
!122 = !{ptr @nokia_send_negotiation._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.58, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/bluetooth/hci_nokia.c", i32 319, i32 2}
!125 = !{ptr @nokia_send_negotiation.__UNIQUE_ID_ddebug478, !124, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!126 = !{ptr @init_completion.__key, !127, !"__key", i1 false, i1 false}
!127 = !{!"../include/linux/completion.h", i32 87, i32 2}
!128 = !{ptr @.str.59, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/bluetooth/hci_nokia.c", i32 248, i32 2}
!131 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @nokia_send_alive_packet.__UNIQUE_ID_ddebug476, !130, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!133 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/bluetooth/hci_nokia.c", i32 334, i32 2}
!135 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @nokia_setup_fw.__UNIQUE_ID_ddebug479, !134, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!137 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/bluetooth/hci_nokia.c", i32 337, i32 12}
!139 = !{ptr @.str.65, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/bluetooth/hci_nokia.c", i32 339, i32 12}
!141 = !{ptr @.str.66, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/bluetooth/hci_nokia.c", i32 341, i32 3}
!143 = !{ptr @nokia_setup_fw._entry, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @nokia_setup_fw._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.68, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/bluetooth/hci_nokia.c", i32 347, i32 3}
!147 = !{ptr @nokia_setup_fw._entry.67, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @nokia_setup_fw._entry_ptr.69, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.71, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/bluetooth/hci_nokia.c", i32 372, i32 5}
!151 = !{ptr @nokia_setup_fw._entry.70, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @nokia_setup_fw._entry_ptr.72, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.73, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/bluetooth/hci_nokia.c", i32 636, i32 3}
!155 = !{ptr @.str.74, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @nokia_recv._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @nokia_recv._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @nokia_recv_pkts, !159, !"nokia_recv_pkts", i1 false, i1 false}
!159 = !{!"../drivers/bluetooth/hci_nokia.c", i32 614, i32 33}
!160 = !{ptr @.str.75, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/bluetooth/hci_nokia.c", i32 580, i32 3}
!162 = !{ptr @.str.76, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @nokia_recv_alive_packet._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @nokia_recv_alive_packet._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.78, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/bluetooth/hci_nokia.c", i32 589, i32 3}
!167 = !{ptr @nokia_recv_alive_packet._entry.77, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @nokia_recv_alive_packet._entry_ptr.79, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.80, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/bluetooth/hci_nokia.c", i32 596, i32 2}
!171 = !{ptr @nokia_recv_alive_packet.__UNIQUE_ID_ddebug487, !170, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!172 = !{ptr @.str.81, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/bluetooth/hci_nokia.c", i32 551, i32 3}
!174 = !{ptr @.str.82, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @nokia_recv_negotiation_packet._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @nokia_recv_negotiation_packet._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.83, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/bluetooth/hci_nokia.c", i32 560, i32 2}
!179 = !{ptr @nokia_recv_negotiation_packet.__UNIQUE_ID_ddebug486, !178, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!180 = !{i32 1, !"wchar_size", i32 2}
!181 = !{i32 1, !"min_enum_size", i32 4}
!182 = !{i32 8, !"branch-target-enforcement", i32 0}
!183 = !{i32 8, !"sign-return-address", i32 0}
!184 = !{i32 8, !"sign-return-address-all", i32 0}
!185 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!186 = !{i32 7, !"uwtable", i32 1}
!187 = !{i32 7, !"frame-pointer", i32 2}
!188 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!189 = !{i8 0, i8 2}
!190 = !{i64 2148738295, i64 2148738300, i64 2148738313, i64 2148738357, i64 2148738391, i64 2148738412}
!191 = !{!"auto-init"}
