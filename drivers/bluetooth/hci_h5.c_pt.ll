; ModuleID = '/llk/IR_all_yes/drivers/bluetooth/hci_h5.c_pt.bc'
source_filename = "../drivers/bluetooth/hci_h5.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.serdev_device_driver = type { %struct.device_driver, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hci_uart_proto = type { i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.h5_device_data = type { i32, ptr }
%struct.h5_vnd = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_gpio_mapping = type { ptr, ptr, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.acpi_gpio_params = type { i32, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.h5 = type { %struct.hci_uart, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, i32, ptr, i32, i8, ptr, %struct.timer_list, ptr, i8, i8, i8, i32, i32, ptr, ptr, ptr, ptr }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, i16, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.h5_btrtl_reprobe = type { ptr, %struct.work_struct }
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

@h5_serdev_driver = internal global { %struct.serdev_device_driver, [44 x i8] } { %struct.serdev_device_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rtl_bluetooth_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @h5_serdev_pm_ops, ptr null, ptr null }, ptr @h5_serdev_probe, ptr @h5_serdev_remove }, [44 x i8] zeroinitializer }, align 32
@h5p = internal constant { %struct.hci_uart_proto, [44 x i8] } { %struct.hci_uart_proto { i32 2, ptr @.str.13, i32 0, i32 0, i32 0, ptr @h5_open, ptr @h5_close, ptr @h5_flush, ptr @h5_setup, ptr null, ptr @h5_recv, ptr @h5_enqueue, ptr @h5_dequeue }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hci_uart_h5\00", [20 x i8] zeroinitializer }, align 32
@rtl_bluetooth_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"realtek,rtl8822cs-bt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @h5_data_rtl8822cs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"realtek,rtl8723bs-bt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @h5_data_rtl8723bs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"realtek,rtl8723ds-bt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @h5_data_rtl8723bs }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@h5_serdev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @h5_serdev_suspend, ptr @h5_serdev_resume, ptr @h5_serdev_suspend, ptr @h5_serdev_resume, ptr @h5_serdev_suspend, ptr @h5_serdev_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @h5_serdev_suspend, ptr @h5_serdev_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@h5_data_rtl8822cs = internal constant { %struct.h5_device_data, [24 x i8] } { %struct.h5_device_data { i32 0, ptr @rtl_vnd }, [24 x i8] zeroinitializer }, align 32
@h5_data_rtl8723bs = internal constant { %struct.h5_device_data, [24 x i8] } { %struct.h5_device_data { i32 1, ptr @rtl_vnd }, [24 x i8] zeroinitializer }, align 32
@rtl_vnd = internal global { %struct.h5_vnd, [40 x i8] } { %struct.h5_vnd { ptr @h5_btrtl_setup, ptr @h5_btrtl_open, ptr @h5_btrtl_close, ptr @h5_btrtl_suspend, ptr @h5_btrtl_resume, ptr @acpi_btrtl_gpios }, [40 x i8] zeroinitializer }, align 32
@acpi_btrtl_gpios = internal constant { [4 x %struct.acpi_gpio_mapping], [32 x i8] } { [4 x %struct.acpi_gpio_mapping] [%struct.acpi_gpio_mapping { ptr @.str.8, ptr @btrtl_device_wake_gpios, i32 1, i32 0 }, %struct.acpi_gpio_mapping { ptr @.str.9, ptr @btrtl_enable_gpios, i32 1, i32 0 }, %struct.acpi_gpio_mapping { ptr @.str.10, ptr @btrtl_host_wake_gpios, i32 1, i32 0 }, %struct.acpi_gpio_mapping zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: RTL: set baud rate command failed\0A\0A\00", [56 x i8] zeroinitializer }, align 32
@h5_btrtl_resume.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&reprobe->work)\00", [62 x i8] zeroinitializer }, align 32
@system_long_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@h5_btrtl_reprobe_worker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1014, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Reprobe error %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"h5_btrtl_reprobe_worker\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/bluetooth/hci_h5.c\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@h5_btrtl_reprobe_worker._entry_ptr = internal global ptr @h5_btrtl_reprobe_worker._entry, section ".printk_index", align 4
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"device-wake-gpios\00", [46 x i8] zeroinitializer }, align 32
@btrtl_device_wake_gpios = internal constant { %struct.acpi_gpio_params, [20 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"enable-gpios\00", [19 x i8] zeroinitializer }, align 32
@btrtl_enable_gpios = internal constant { %struct.acpi_gpio_params, [20 x i8] } { %struct.acpi_gpio_params { i32 1, i32 0, i8 0 }, [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"host-wake-gpios\00", [16 x i8] zeroinitializer }, align 32
@btrtl_host_wake_gpios = internal constant { %struct.acpi_gpio_params, [20 x i8] } { %struct.acpi_gpio_params { i32 2, i32 0, i8 0 }, [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"device-wake\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Three-wire (H5)\00", [16 x i8] zeroinitializer }, align 32
@h5_open.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.5, ptr @.str.16, i8 0, i8 54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hci_uart\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"h5_open\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hu %p\0A\00", [25 x i8] zeroinitializer }, align 32
@h5_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(&h5->timer)\00", [19 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Can't allocate mem for new packet\0A\00", [57 x i8] zeroinitializer }, align 32
@h5_rx_3wire_hdr.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.20, ptr @.str.5, ptr @.str.21, i8 0, i8 113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"h5_rx_3wire_hdr\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s rx: seq %u ack %u crc %u rel %u type %u len %u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Invalid header checksum\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Out-of-order packet arrived (%u != %u)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: Non-link packet received in non-active state\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Controller acked invalid packet\0A\00", [63 x i8] zeroinitializer }, align 32
@__const.h5_handle_internal_rx.sync_req = private unnamed_addr constant [2 x i8] c"\01~", align 1
@__const.h5_handle_internal_rx.wakeup_req = private unnamed_addr constant [2 x i8] c"\05\FA", align 1
@__const.h5_handle_internal_rx.sleep_req = private unnamed_addr constant [2 x i8] c"\07x", align 1
@h5_handle_internal_rx.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.26, ptr @.str.5, ptr @.str.27, i8 0, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"h5_handle_internal_rx\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@h5_handle_internal_rx.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.26, ptr @.str.5, ptr @.str.28, i8 0, i8 91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Three-wire init complete. tx_win %u\0A\00", [59 x i8] zeroinitializer }, align 32
@h5_handle_internal_rx.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.26, ptr @.str.5, ptr @.str.29, i8 0, i8 92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Peer went to sleep\0A\00", [44 x i8] zeroinitializer }, align 32
@h5_handle_internal_rx.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.26, ptr @.str.5, ptr @.str.30, i8 0, i8 93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Peer woke up\0A\00", [18 x i8] zeroinitializer }, align 32
@h5_handle_internal_rx.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.26, ptr @.str.5, ptr @.str.31, i8 0, i8 94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Peer requested wakeup\0A\00", [41 x i8] zeroinitializer }, align 32
@h5_handle_internal_rx.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.26, ptr @.str.5, ptr @.str.32, i8 0, i8 95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Link Control: 0x%02hhx 0x%02hhx\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Peer device has reset\0A\00", [37 x i8] zeroinitializer }, align 32
@h5_timed_event.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.34, ptr @.str.5, ptr @.str.27, i8 0, i8 39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"h5_timed_event\00", [17 x i8] zeroinitializer }, align 32
@h5_timed_event.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.34, ptr @.str.5, ptr @.str.35, i8 0, i8 44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hu %p retransmitting %u pkts\0A\00", [34 x i8] zeroinitializer }, align 32
@h5_flush.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.36, ptr @.str.5, ptr @.str.16, i8 0, i8 -57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"h5_flush\00", [23 x i8] zeroinitializer }, align 32
@h5_recv.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.37, ptr @.str.5, ptr @.str.38, i8 0, i8 -115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"h5_recv\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s pending %zu count %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Too short H5 packet\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid esc byte 0x%02hhx\0A\00", [37 x i8] zeroinitializer }, align 32
@h5_unslip_one_byte.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.41, ptr @.str.5, ptr @.str.42, i8 0, i8 -121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"h5_unslip_one_byte\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unslipped 0x%02hhx, rx_pending %zu\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Packet too long (%u bytes)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Ignoring HCI data in non-active state\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Unknown packet type %u\0A\00", [36 x i8] zeroinitializer }, align 32
@h5_dequeue.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.46, ptr @.str.5, ptr @.str.47, i8 0, i8 -69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"h5_dequeue\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Sending wakeup request\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: Could not dequeue pkt because alloc_skb failed\0A\00", [44 x i8] zeroinitializer }, align 32
@h5_prepare_pkt.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.49, ptr @.str.5, ptr @.str.50, i8 0, i8 -76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"h5_prepare_pkt\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s tx: seq %u ack %u crc %u rel %u type %u len %u\0A\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.51 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 8, i64 220, i64 221]
@__sancov_gen_cov_switch_values.53 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 2, i64 3, i64 5, i64 15]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 8, i64 192, i64 219]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 8, i64 192, i64 219]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 8, i64 192, i64 219]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 8, i64 192, i64 219]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 8, i64 192, i64 219]
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"h5_serdev_driver\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1103, i32 36 }
@___asan_gen_.62 = private unnamed_addr constant [4 x i8] c"h5p\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 802, i32 36 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1107, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant [23 x i8] c"rtl_bluetooth_of_match\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1090, i32 34 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"h5_serdev_pm_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1085, i32 32 }
@___asan_gen_.74 = private unnamed_addr constant [18 x i8] c"h5_data_rtl8822cs\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1064, i32 36 }
@___asan_gen_.77 = private unnamed_addr constant [18 x i8] c"h5_data_rtl8723bs\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1068, i32 36 }
@___asan_gen_.80 = private unnamed_addr constant [8 x i8] c"rtl_vnd\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1055, i32 22 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"acpi_btrtl_gpios\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1048, i32 39 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 919, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1032, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1014, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1049, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant [24 x i8] c"btrtl_device_wake_gpios\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1045, i32 38 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1050, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant [19 x i8] c"btrtl_enable_gpios\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1046, i32 38 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1051, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant [22 x i8] c"btrtl_host_wake_gpios\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1047, i32 38 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 853, i32 49 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 857, i32 54 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 804, i32 11 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 217, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 236, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1984, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 495, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 452, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 458, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 464, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 472, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 308, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 339, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 364, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 369, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 373, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 376, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 380, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 195, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 156, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 176, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 798, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 563, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 571, i32 5 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 534, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 543, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 604, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 610, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 627, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 748, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 764, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.255 = private constant [30 x i8] c"../drivers/bluetooth/hci_h5.c\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 719, i32 2 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @h5_btrtl_reprobe_worker._entry, ptr @h5_btrtl_reprobe_worker._entry_ptr, ptr @h5_deinit, ptr @h5_serdev_driver, ptr @h5p, ptr @.str, ptr @rtl_bluetooth_of_match, ptr @h5_serdev_pm_ops, ptr @h5_data_rtl8822cs, ptr @h5_data_rtl8723bs, ptr @rtl_vnd, ptr @acpi_btrtl_gpios, ptr @.str.1, ptr @h5_btrtl_resume.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @btrtl_device_wake_gpios, ptr @.str.9, ptr @btrtl_enable_gpios, ptr @.str.10, ptr @btrtl_host_wake_gpios, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @h5_open.__key, ptr @.str.17, ptr @skb_queue_head_init.__key, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h5_serdev_driver to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h5p to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_bluetooth_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h5_serdev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h5_data_rtl8822cs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h5_data_rtl8723bs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_vnd to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acpi_btrtl_gpios to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h5_btrtl_resume.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h5_btrtl_reprobe_worker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrtl_device_wake_gpios to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrtl_enable_gpios to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrtl_host_wake_gpios to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h5_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @h5_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__serdev_device_driver_register(ptr noundef nonnull @h5_serdev_driver, ptr noundef null) #9
  %call1 = tail call i32 @hci_uart_register_proto(ptr noundef nonnull @h5p) #9
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serdev_device_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_register_proto(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @h5_deinit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @driver_unregister(ptr noundef nonnull @h5_serdev_driver) #9
  %call = tail call i32 @hci_uart_unregister_proto(ptr noundef nonnull @h5p) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_unregister_proto(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h5_serdev_probe(ptr noundef %serdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %serdev, i32 noundef 564, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup45_crit_edge, label %if.end

entry.cleanup45_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup45

if.end:                                           ; preds = %entry
  %hu = getelementptr inbounds %struct.h5, ptr %call.i, i32 0, i32 10
  %0 = ptrtoint ptr %hu to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %hu, align 4
  %serdev3 = getelementptr inbounds %struct.hci_uart, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %serdev3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %serdev, ptr %serdev3, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call19 = tail call ptr @of_device_get_match_data(ptr noundef %serdev) #9
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end.cleanup45_crit_edge, label %if.end22

if.end.cleanup45_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup45

if.end22:                                         ; preds = %if.end
  %vnd23 = getelementptr inbounds %struct.h5_device_data, ptr %call19, i32 0, i32 1
  %3 = ptrtoint ptr %vnd23 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vnd23, align 4
  %vnd24 = getelementptr inbounds %struct.h5, ptr %call.i, i32 0, i32 16
  %5 = ptrtoint ptr %vnd24 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %vnd24, align 4
  %6 = ptrtoint ptr %call19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call19, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.end22.if.end28_crit_edge, label %if.then27

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.h5, ptr %call.i, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #9
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end22.if.end28_crit_edge
  %call29 = tail call ptr @devm_gpiod_get_optional(ptr noundef %serdev, ptr noundef nonnull @.str.11, i32 noundef 3) #9
  %enable_gpio = getelementptr inbounds %struct.h5, ptr %call.i, i32 0, i32 18
  %8 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call29, ptr %enable_gpio, align 4
  %cmp.i = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %call29 to i32
  br label %cleanup45

if.end35:                                         ; preds = %if.end28
  %call36 = tail call ptr @devm_gpiod_get_optional(ptr noundef %serdev, ptr noundef nonnull @.str.12, i32 noundef 3) #9
  %device_wake_gpio = getelementptr inbounds %struct.h5, ptr %call.i, i32 0, i32 19
  %10 = ptrtoint ptr %device_wake_gpio to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call36, ptr %device_wake_gpio, align 4
  %cmp.i79 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79, label %if.then39, label %if.end42

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %call36 to i32
  br label %cleanup45

if.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %call44 = tail call i32 @hci_uart_register_device(ptr noundef nonnull %call.i, ptr noundef nonnull @h5p) #9
  br label %cleanup45

cleanup45:                                        ; preds = %if.end42, %if.then39, %if.then32, %if.end.cleanup45_crit_edge, %entry.cleanup45_crit_edge
  %retval.1 = phi i32 [ %9, %if.then32 ], [ %11, %if.then39 ], [ %call44, %if.end42 ], [ -12, %entry.cleanup45_crit_edge ], [ -19, %if.end.cleanup45_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @h5_serdev_remove(ptr nocapture noundef readonly %serdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @hci_uart_unregister_device(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h5_btrtl_setup(ptr noundef %h5) #2 align 64 {
entry:
  %baudrate_data = alloca i32, align 4
  %device_baudrate = alloca i32, align 4
  %controller_baudrate = alloca i32, align 4
  %flow_control = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %baudrate_data) #9
  %0 = ptrtoint ptr %baudrate_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %baudrate_data, align 4, !annotation !141
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %device_baudrate) #9
  %1 = ptrtoint ptr %device_baudrate to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %device_baudrate, align 4, !annotation !141
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %controller_baudrate) #9
  %2 = ptrtoint ptr %controller_baudrate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %controller_baudrate, align 4, !annotation !141
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %flow_control) #9
  %3 = ptrtoint ptr %flow_control to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %flow_control, align 1, !annotation !141
  %hu = getelementptr inbounds %struct.h5, ptr %h5, i32 0, i32 10
  %4 = ptrtoint ptr %hu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hu, align 4
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdev, align 4
  %id = getelementptr inbounds %struct.h5, ptr %h5, i32 0, i32 17
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %id, align 4
  %call = tail call ptr @btrtl_initialize(ptr noundef %7, ptr noundef %9) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %hu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hu, align 4
  %hdev4 = getelementptr inbounds %struct.hci_uart, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %hdev4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hdev4, align 4
  %call5 = call i32 @btrtl_get_uart_settings(ptr noundef %14, ptr noundef %call, ptr noundef nonnull %controller_baudrate, ptr noundef nonnull %device_baudrate, ptr noundef nonnull %flow_control) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.end.out_free_crit_edge

if.end.out_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

if.end7:                                          ; preds = %if.end
  %15 = ptrtoint ptr %device_baudrate to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %device_baudrate, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %baudrate_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %baudrate_data, align 4
  %19 = ptrtoint ptr %hu to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hu, align 4
  %hdev9 = getelementptr inbounds %struct.hci_uart, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %hdev9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hdev9, align 4
  %call11 = call ptr @__hci_cmd_sync(ptr noundef %22, i16 noundef zeroext -1001, i32 noundef 4, ptr noundef nonnull %baudrate_data, i32 noundef 1000) #9
  %cmp.i54 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i54, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %hu to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hu, align 4
  %hdev15 = getelementptr inbounds %struct.hci_uart, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %hdev15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hdev15, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %26, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.1, ptr noundef %name) #9
  %27 = ptrtoint ptr %call11 to i32
  br label %out_free

if.else:                                          ; preds = %if.end7
  call void @kfree_skb_reason(ptr noundef %call11, i32 noundef 0) #9
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #9
  %28 = ptrtoint ptr %hu to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hu, align 4
  %serdev = getelementptr inbounds %struct.hci_uart, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %serdev, align 4
  %32 = ptrtoint ptr %controller_baudrate to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %controller_baudrate, align 4
  %call19 = call i32 @serdev_device_set_baudrate(ptr noundef %31, i32 noundef %33) #9
  %34 = ptrtoint ptr %hu to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hu, align 4
  %serdev21 = getelementptr inbounds %struct.hci_uart, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %serdev21 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %serdev21, align 4
  %38 = ptrtoint ptr %flow_control to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %flow_control, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool22 = icmp ne i8 %39, 0
  call void @serdev_device_set_flow_control(ptr noundef %37, i1 noundef zeroext %tobool22) #9
  %40 = ptrtoint ptr %flow_control to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %flow_control, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool23.not = icmp eq i8 %41, 0
  br i1 %tobool23.not, label %if.else.if.end25_crit_edge, label %if.then24

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.h5, ptr %h5, i32 0, i32 4
  call void @_set_bit(i32 noundef 3, ptr noundef %flags) #9
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.else.if.end25_crit_edge
  %42 = ptrtoint ptr %hu to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hu, align 4
  %hdev27 = getelementptr inbounds %struct.hci_uart, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %hdev27 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hdev27, align 4
  %call28 = call i32 @btrtl_download_firmware(ptr noundef %45, ptr noundef %call) #9
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #9
  %46 = ptrtoint ptr %hu to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hu, align 4
  %hdev30 = getelementptr inbounds %struct.hci_uart, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %hdev30 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hdev30, align 4
  call void @btrtl_set_quirks(ptr noundef %49, ptr noundef %call) #9
  br label %out_free

out_free:                                         ; preds = %if.end25, %if.then13, %if.end.out_free_crit_edge
  %err.0 = phi i32 [ %call5, %if.end.out_free_crit_edge ], [ %27, %if.then13 ], [ %call28, %if.end25 ]
  call void @btrtl_free(ptr noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.then
  %retval.0 = phi i32 [ %10, %if.then ], [ %err.0, %out_free ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %flow_control) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %controller_baudrate) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %device_baudrate) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %baudrate_data) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @h5_btrtl_open(ptr noundef %h5) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.h5, ptr %h5, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %hu = getelementptr inbounds %struct.h5, ptr %h5, i32 0, i32 10
  %3 = ptrtoint ptr %hu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hu, align 4
  %flags1 = getelementptr inbounds %struct.hci_uart, ptr %4, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hu2 = getelementptr inbounds %struct.h5, ptr %h5, i32 0, i32 10
  %5 = ptrtoint ptr %hu2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hu2, align 4
  %serdev = getelementptr inbounds %struct.hci_uart, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %serdev, align 4
  tail call void @serdev_device_set_flow_control(ptr noundef %8, i1 noundef zeroext false) #9
  %9 = ptrtoint ptr %hu2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hu2, align 4
  %serdev4 = getelementptr inbounds %struct.hci_uart, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %serdev4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %serdev4, align 4
  %call5 = tail call i32 @serdev_device_set_parity(ptr noundef %12, i32 noundef 1) #9
  %13 = ptrtoint ptr %hu2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hu2, align 4
  %serdev7 = getelementptr inbounds %struct.hci_uart, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %serdev7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %serdev7, align 4
  %call8 = tail call i32 @serdev_device_set_baudrate(ptr noundef %16, i32 noundef 115200) #9
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags, align 4
  %19 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool11.not = icmp eq i32 %19, 0
  br i1 %tobool11.not, label %if.then12, label %if.end.if.end25_crit_edge

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %hu2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hu2, align 4
  %serdev14 = getelementptr inbounds %struct.hci_uart, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %serdev14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %serdev14, align 4
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %23, i32 noundef 0) #9
  %24 = ptrtoint ptr %hu2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hu2, align 4
  %serdev17 = getelementptr inbounds %struct.hci_uart, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %serdev17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %serdev17, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %27, i1 noundef zeroext true) #9
  %28 = ptrtoint ptr %hu2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hu2, align 4
  %serdev20 = getelementptr inbounds %struct.hci_uart, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %serdev20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %serdev20, align 4
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %31, i32 noundef 6000) #9
  %32 = ptrtoint ptr %hu2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hu2, align 4
  %serdev23 = getelementptr inbounds %struct.hci_uart, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %serdev23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %serdev23, align 4
  tail call void @pm_runtime_enable(ptr noundef %35) #9
  br label %if.end25

if.end25:                                         ; preds = %if.then12, %if.end.if.end25_crit_edge
  %enable_gpio = getelementptr inbounds %struct.h5, ptr %h5, i32 0, i32 18
  %36 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %37, i32 noundef 1) #9
  %device_wake_gpio = getelementptr inbounds %struct.h5, ptr %h5, i32 0, i32 19
  %38 = ptrtoint ptr %device_wake_gpio to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device_wake_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %39, i32 noundef 1) #9
  tail call void @msleep(i32 noundef 500) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @h5_btrtl_close(ptr noundef %h5) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.h5, ptr %h5, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %hu = getelementptr inbounds %struct.h5, ptr %h5, i32 0, i32 10
  %3 = ptrtoint ptr %hu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hu, align 4
  %serdev = getelementptr inbounds %struct.hci_uart, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %serdev, align 4
  tail call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %device_wake_gpio = getelementptr inbounds %struct.h5, ptr %h5, i32 0, i32 19
  %7 = ptrtoint ptr %device_wake_gpio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device_wake_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %8, i32 noundef 0) #9
  %enable_gpio = getelementptr inbounds %struct.h5, ptr %h5, i32 0, i32 18
  %9 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %10, i32 noundef 0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h5_btrtl_suspend(ptr noundef %h5) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hu = getelementptr inbounds %struct.h5, ptr %h5, i32 0, i32 10
  %0 = ptrtoint ptr %hu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hu, align 4
  %serdev = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serdev, align 4
  tail call void @serdev_device_set_flow_control(ptr noundef %3, i1 noundef zeroext false) #9
  %device_wake_gpio = getelementptr inbounds %struct.h5, ptr %h5, i32 0, i32 19
  %4 = ptrtoint ptr %device_wake_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_wake_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 0) #9
  %flags = getelementptr inbounds %struct.h5, ptr %h5, i32 0, i32 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %enable_gpio = getelementptr inbounds %struct.h5, ptr %h5, i32 0, i32 18
  %9 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %10, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h5_btrtl_resume(ptr noundef %h5) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.h5, ptr %h5, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 48) #12
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.then.return_crit_edge, label %cleanup.thread

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__module_get(ptr noundef null) #9
  %work = getelementptr inbounds %struct.h5_btrtl_reprobe, ptr %call7.i.i, i32 0, i32 1
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #9
  %4 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.h5_btrtl_reprobe, ptr %call7.i.i, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @h5_btrtl_resume.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry7 = getelementptr inbounds %struct.h5_btrtl_reprobe, ptr %call7.i.i, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %entry7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry7, ptr %entry7, align 8
  %prev.i = getelementptr inbounds %struct.h5_btrtl_reprobe, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry7, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.h5_btrtl_reprobe, ptr %call7.i.i, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @h5_btrtl_reprobe_worker, ptr %func, align 8
  %hu = getelementptr inbounds %struct.h5, ptr %h5, i32 0, i32 10
  %8 = ptrtoint ptr %hu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hu, align 4
  %serdev = getelementptr inbounds %struct.hci_uart, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %serdev, align 4
  %call9 = tail call ptr @get_device(ptr noundef %11) #9
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9, ptr %call7.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %13 = load ptr, ptr @system_long_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %work) #9
  br label %return

if.else:                                          ; preds = %entry
  %device_wake_gpio = getelementptr inbounds %struct.h5, ptr %h5, i32 0, i32 19
  %14 = ptrtoint ptr %device_wake_gpio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device_wake_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %15, i32 noundef 1) #9
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags, align 4
  %18 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool15.not = icmp eq i32 %18, 0
  br i1 %tobool15.not, label %if.else.return_crit_edge, label %if.then16

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %hu17 = getelementptr inbounds %struct.h5, ptr %h5, i32 0, i32 10
  %19 = ptrtoint ptr %hu17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hu17, align 4
  %serdev18 = getelementptr inbounds %struct.hci_uart, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %serdev18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %serdev18, align 4
  tail call void @serdev_device_set_flow_control(ptr noundef %22, i1 noundef zeroext true) #9
  br label %return

return:                                           ; preds = %if.then16, %if.else.return_crit_edge, %cleanup.thread, %if.then.return_crit_edge
  %retval.1 = phi i32 [ -12, %if.then.return_crit_edge ], [ 0, %cleanup.thread ], [ 0, %if.else.return_crit_edge ], [ 0, %if.then16 ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrtl_initialize(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrtl_get_uart_settings(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__hci_cmd_sync(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_set_baudrate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_set_flow_control(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrtl_download_firmware(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrtl_set_quirks(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrtl_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_set_parity(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @h5_btrtl_reprobe_worker(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 @device_reprobe(ptr noundef %1) #9
  %2 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %do.end [
    i32 0, label %entry.if.end_crit_edge
    i32 -517, label %entry.if.end_crit_edge8
  ]

entry.if.end_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3, i32 noundef %call) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge, %entry.if.end_crit_edge8
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  tail call void @put_device(ptr noundef %6) #9
  tail call void @kfree(ptr noundef %add.ptr) #9
  tail call void @module_put(ptr noundef null) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_reprobe(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h5_serdev_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %vnd = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %vnd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vnd, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %suspend = getelementptr inbounds %struct.h5_vnd, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %suspend, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 %5(ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call5, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h5_serdev_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %vnd = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %vnd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vnd, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %resume = getelementptr inbounds %struct.h5_vnd, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resume, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 %5(ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call5, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_uart_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h5_open(ptr noundef %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h5_open.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h5_open, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !143

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h5_open.__UNIQUE_ID_ddebug478, ptr noundef nonnull @.str.16, ptr noundef %hu) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %serdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 1
  %0 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serdev, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  br label %if.end11

if.else:                                          ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 564) #12
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %if.else.cleanup_crit_edge, label %if.else.if.end11_crit_edge

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.else.if.end11_crit_edge, %if.then4
  %h5.0 = phi ptr [ %3, %if.then4 ], [ %call7.i.i, %if.else.if.end11_crit_edge ]
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %h5.0, ptr %priv, align 4
  %hu12 = getelementptr inbounds %struct.h5, ptr %h5.0, i32 0, i32 10
  %6 = ptrtoint ptr %hu12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %hu, ptr %hu12, align 4
  %unack = getelementptr inbounds %struct.h5, ptr %h5.0, i32 0, i32 1
  %lock.i = getelementptr inbounds %struct.h5, ptr %h5.0, i32 0, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #9
  %7 = ptrtoint ptr %unack to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %unack, ptr %unack, align 4
  %prev.i.i = getelementptr inbounds %struct.h5, ptr %h5.0, i32 0, i32 1, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %unack, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.h5, ptr %h5.0, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %qlen.i.i, align 4
  %rel = getelementptr inbounds %struct.h5, ptr %h5.0, i32 0, i32 2
  %lock.i49 = getelementptr inbounds %struct.h5, ptr %h5.0, i32 0, i32 2, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i49, ptr noundef nonnull @.str.18, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #9
  %10 = ptrtoint ptr %rel to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %rel, ptr %rel, align 4
  %prev.i.i50 = getelementptr inbounds %struct.h5, ptr %h5.0, i32 0, i32 2, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i50 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %rel, ptr %prev.i.i50, align 4
  %qlen.i.i51 = getelementptr inbounds %struct.h5, ptr %h5.0, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %qlen.i.i51 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %qlen.i.i51, align 4
  %unrel = getelementptr inbounds %struct.h5, ptr %h5.0, i32 0, i32 3
  %lock.i52 = getelementptr inbounds %struct.h5, ptr %h5.0, i32 0, i32 3, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i52, ptr noundef nonnull @.str.18, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #9
  %13 = ptrtoint ptr %unrel to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %unrel, ptr %unrel, align 4
  %prev.i.i53 = getelementptr inbounds %struct.h5, ptr %h5.0, i32 0, i32 3, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i53 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %unrel, ptr %prev.i.i53, align 4
  %qlen.i.i54 = getelementptr inbounds %struct.h5, ptr %h5.0, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %qlen.i.i54 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %qlen.i.i54, align 4
  %rx_skb.i = getelementptr inbounds %struct.h5, ptr %h5.0, i32 0, i32 5
  %16 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_skb.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end11.h5_reset_rx.exit_crit_edge, label %if.then.i

if.end11.h5_reset_rx.exit_crit_edge:              ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %h5_reset_rx.exit

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef nonnull %17, i32 noundef 0) #9
  %18 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %rx_skb.i, align 4
  br label %h5_reset_rx.exit

h5_reset_rx.exit:                                 ; preds = %if.then.i, %if.end11.h5_reset_rx.exit_crit_edge
  %rx_func.i = getelementptr inbounds %struct.h5, ptr %h5.0, i32 0, i32 8
  %19 = ptrtoint ptr %rx_func.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @h5_rx_delimiter, ptr %rx_func.i, align 4
  %rx_pending.i = getelementptr inbounds %struct.h5, ptr %h5.0, i32 0, i32 6
  %20 = ptrtoint ptr %rx_pending.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %rx_pending.i, align 4
  %flags.i = getelementptr inbounds %struct.h5, ptr %h5.0, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i) #9
  %timer = getelementptr inbounds %struct.h5, ptr %h5.0, i32 0, i32 9
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @h5_timed_event, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef nonnull @h5_open.__key) #9
  %tx_win = getelementptr inbounds %struct.h5, ptr %h5.0, i32 0, i32 13
  %21 = ptrtoint ptr %tx_win to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 4, ptr %tx_win, align 2
  %vnd = getelementptr inbounds %struct.h5, ptr %h5.0, i32 0, i32 16
  %22 = ptrtoint ptr %vnd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vnd, align 4
  %tobool16.not = icmp eq ptr %23, null
  br i1 %tobool16.not, label %h5_reset_rx.exit.if.end22_crit_edge, label %land.lhs.true

h5_reset_rx.exit.if.end22_crit_edge:              ; preds = %h5_reset_rx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

land.lhs.true:                                    ; preds = %h5_reset_rx.exit
  %open = getelementptr inbounds %struct.h5_vnd, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %open, align 4
  %tobool18.not = icmp eq ptr %25, null
  br i1 %tobool18.not, label %land.lhs.true.if.end22_crit_edge, label %if.then19

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %25(ptr noundef %h5.0) #9
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %land.lhs.true.if.end22_crit_edge, %h5_reset_rx.exit.if.end22_crit_edge
  %hdev_flags = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 3, ptr noundef %hdev_flags) #9
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #9
  %tobool.not.i55 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i55, label %if.end22.h5_link_control.exit_crit_edge, label %if.end.i

if.end22.h5_link_control.exit_crit_edge:          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %h5_link_control.exit

if.end.i:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 15, ptr %cb.i, align 8
  %call.i6.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 2) #9
  %29 = ptrtoint ptr %call.i6.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 382, ptr %call.i6.i, align 1
  %unrel.i = getelementptr inbounds %struct.h5, ptr %27, i32 0, i32 3
  tail call void @skb_queue_tail(ptr noundef %unrel.i, ptr noundef nonnull %call.i.i) #9
  br label %h5_link_control.exit

h5_link_control.exit:                             ; preds = %if.end.i, %if.end22.h5_link_control.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %30, 10
  %call25 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #9
  br label %cleanup

cleanup:                                          ; preds = %h5_link_control.exit, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %h5_link_control.exit ], [ -12, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h5_close(ptr nocapture noundef readonly %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %timer = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 9
  %call = tail call i32 @del_timer_sync(ptr noundef %timer) #9
  %unack = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 1
  tail call void @skb_queue_purge(ptr noundef %unack) #9
  %rel = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 2
  tail call void @skb_queue_purge(ptr noundef %rel) #9
  %unrel = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 3
  tail call void @skb_queue_purge(ptr noundef %unrel) #9
  %rx_skb = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #9
  %4 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %rx_skb, align 4
  %vnd = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 16
  %5 = ptrtoint ptr %vnd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vnd, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %close = getelementptr inbounds %struct.h5_vnd, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %close, align 4
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %8(ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %serdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 1
  %9 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %serdev, align 4
  %tobool6.not = icmp eq ptr %10, null
  br i1 %tobool6.not, label %if.then7, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef %1) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h5_flush(ptr noundef %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h5_flush.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h5_flush, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !143

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h5_flush.__UNIQUE_ID_ddebug490, ptr noundef nonnull @.str.16, ptr noundef %hu) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h5_setup(ptr nocapture noundef readonly %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %vnd = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %vnd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vnd, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 %5(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h5_recv(ptr noundef %hu, ptr nocapture noundef readonly %data, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h5_recv.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h5_recv, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !143

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %2 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 2
  %rx_pending = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_pending, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h5_recv.__UNIQUE_ID_ddebug487, ptr noundef nonnull @.str.38, ptr noundef %name, i32 noundef %5, i32 noundef %count) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp59 = icmp sgt i32 %count, 0
  br i1 %cmp59, label %while.body.lr.ph, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end
  %rx_pending3 = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 6
  %hdev9 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %rx_skb.i = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 5
  %rx_func.i = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 8
  %flags.i = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %count.addr.061 = phi i32 [ %count, %while.body.lr.ph ], [ %count.addr.1, %cleanup.while.body_crit_edge ]
  %ptr.060 = phi ptr [ %data, %while.body.lr.ph ], [ %ptr.1, %cleanup.while.body_crit_edge ]
  %6 = ptrtoint ptr %rx_pending3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_pending3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4.not = icmp eq i32 %7, 0
  br i1 %cmp4.not, label %if.end13, label %if.then5

if.then5:                                         ; preds = %while.body
  %8 = ptrtoint ptr %ptr.060 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ptr.060, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %9)
  %cmp6 = icmp eq i8 %9, -64
  br i1 %cmp6, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.then5
  %10 = ptrtoint ptr %hdev9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hdev9, align 4
  %name10 = getelementptr inbounds %struct.hci_dev, ptr %11, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.39, ptr noundef %name10) #9
  %12 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_skb.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then8.h5_reset_rx.exit_crit_edge, label %if.then.i

if.then8.h5_reset_rx.exit_crit_edge:              ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %h5_reset_rx.exit

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef nonnull %13, i32 noundef 0) #9
  %14 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %rx_skb.i, align 4
  br label %h5_reset_rx.exit

h5_reset_rx.exit:                                 ; preds = %if.then.i, %if.then8.h5_reset_rx.exit_crit_edge
  %15 = ptrtoint ptr %rx_func.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @h5_rx_delimiter, ptr %rx_func.i, align 4
  %16 = ptrtoint ptr %rx_pending3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %rx_pending3, align 4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i) #9
  br label %cleanup

if.end12:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @h5_unslip_one_byte(ptr noundef %1, i8 noundef zeroext %9)
  %incdec.ptr = getelementptr i8, ptr %ptr.060, i32 1
  %dec = add nsw i32 %count.addr.061, -1
  br label %cleanup

if.end13:                                         ; preds = %while.body
  %17 = ptrtoint ptr %rx_func.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rx_func.i, align 4
  %19 = ptrtoint ptr %ptr.060 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ptr.060, align 1
  %call14 = tail call i32 %18(ptr noundef %hu, i8 noundef zeroext %20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end13.cleanup29_crit_edge, label %if.end18

if.end13.cleanup29_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup29

if.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %ptr.060, i32 %call14
  %sub = sub nsw i32 %count.addr.061, %call14
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end12, %h5_reset_rx.exit
  %ptr.1 = phi ptr [ %ptr.060, %h5_reset_rx.exit ], [ %incdec.ptr, %if.end12 ], [ %add.ptr, %if.end18 ]
  %count.addr.1 = phi i32 [ %count.addr.061, %h5_reset_rx.exit ], [ %dec, %if.end12 ], [ %sub, %if.end18 ]
  %cmp = icmp sgt i32 %count.addr.1, 0
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %do.end.while.end_crit_edge
  %serdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 1
  %21 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %serdev, align 4
  %tobool19.not = icmp eq ptr %22, null
  br i1 %tobool19.not, label %while.end.cleanup29_crit_edge, label %if.then20

while.end.cleanup29_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup29

if.then20:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %22, i32 noundef 5) #9
  %23 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %serdev, align 4
  %call.i52 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 12, i32 22
  %25 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store volatile i64 %call.i52, ptr %last_busy.i, align 8
  %26 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %serdev, align 4
  %call.i53 = tail call i32 @__pm_runtime_suspend(ptr noundef %27, i32 noundef 13) #9
  br label %cleanup29

cleanup29:                                        ; preds = %if.then20, %while.end.cleanup29_crit_edge, %if.end13.cleanup29_crit_edge
  %retval.2 = phi i32 [ 0, %if.then20 ], [ 0, %while.end.cleanup29_crit_edge ], [ %call14, %if.end13.cleanup29_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h5_enqueue(ptr nocapture noundef readonly %hu, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %3)
  %cmp = icmp ugt i32 %3, 4095
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %4 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.43, ptr noundef %name, i32 noundef %3) #9
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp2.not = icmp eq i32 %7, 2
  br i1 %cmp2.not, label %if.end7, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %hdev4 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %8 = ptrtoint ptr %hdev4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdev4, align 4
  %name5 = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.44, ptr noundef %name5) #9
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %10 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %cb, align 8
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %11, label %sw.default [
    i8 2, label %if.end7.sw.bb_crit_edge
    i8 1, label %if.end7.sw.bb_crit_edge40
    i8 3, label %if.end7.sw.bb9_crit_edge
    i8 5, label %if.end7.sw.bb9_crit_edge41
  ]

if.end7.sw.bb9_crit_edge41:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb9

if.end7.sw.bb9_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb9

if.end7.sw.bb_crit_edge40:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end7.sw.bb_crit_edge:                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %if.end7.sw.bb_crit_edge, %if.end7.sw.bb_crit_edge40
  %rel = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 2
  tail call void @skb_queue_tail(ptr noundef %rel, ptr noundef %skb) #9
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end7.sw.bb9_crit_edge, %if.end7.sw.bb9_crit_edge41
  %unrel = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 3
  tail call void @skb_queue_tail(ptr noundef %unrel, ptr noundef %skb) #9
  br label %sw.epilog

sw.default:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %11 to i32
  %hdev10 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %13 = ptrtoint ptr %hdev10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hdev10, align 4
  %name11 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.45, ptr noundef %name11, i32 noundef %conv) #9
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %sw.bb
  %serdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 1
  %15 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %serdev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %16, i32 noundef 4) #9
  %17 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %serdev, align 4
  %call.i38 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 12, i32 22
  %19 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store volatile i64 %call.i38, ptr %last_busy.i, align 8
  %20 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %serdev, align 4
  %call.i39 = tail call i32 @__pm_runtime_suspend(ptr noundef %21, i32 noundef 13) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then3, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @h5_dequeue(ptr nocapture noundef readonly %hu) #2 align 64 {
entry:
  %wakeup_req = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %sleep = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %sleep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end11, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wakeup_req) #9
  %4 = ptrtoint ptr %wakeup_req to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1530, ptr %wakeup_req, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2 = icmp eq i32 %3, 2
  br i1 %cmp2, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  %5 = ptrtoint ptr %sleep to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %sleep, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h5_dequeue.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h5_dequeue, %if.then7)) #9
          to label %do.end [label %if.then7], !srcloc !143

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h5_dequeue.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.47) #9
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.end
  %timer = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %6, 1
  %call9 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #9
  %call10 = call fastcc ptr @h5_prepare_pkt(ptr noundef %hu, i8 noundef zeroext 15, ptr noundef nonnull %wakeup_req, i32 noundef 2)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %call10, %do.end ], [ null, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wakeup_req) #9
  br label %cleanup71

if.end11:                                         ; preds = %entry
  %unrel = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 3
  %call12 = tail call ptr @skb_dequeue(ptr noundef %unrel) #9
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end11.do.body24_crit_edge, label %if.then14

if.end11.do.body24_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body24

if.then14:                                        ; preds = %if.end11
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call12, i32 0, i32 3
  %7 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cb, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %call12, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %call12, i32 0, i32 6
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  %call16 = tail call fastcc ptr @h5_prepare_pkt(ptr noundef %hu, i8 noundef zeroext %8, ptr noundef %10, i32 noundef %12)
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef nonnull %call12, i32 noundef 0) #9
  br label %cleanup71

if.end19:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @skb_queue_head(ptr noundef %unrel, ptr noundef nonnull %call12) #9
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %13 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.48, ptr noundef %name) #9
  br label %do.body24

do.body24:                                        ; preds = %if.end19, %if.end11.do.body24_crit_edge
  %unack = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 1
  %lock = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 1, i32 2
  %call28 = tail call i32 @_raw_spin_lock_irqsave_nested(ptr noundef %lock, i32 noundef 1) #9
  %qlen = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qlen, align 4
  %tx_win = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 13
  %17 = ptrtoint ptr %tx_win to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %tx_win, align 2
  %conv34 = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv34)
  %cmp35.not = icmp ult i32 %16, %conv34
  br i1 %cmp35.not, label %if.end38, label %do.body24.unlock_crit_edge

do.body24.unlock_crit_edge:                       ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end38:                                         ; preds = %do.body24
  %rel = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 2
  %call39 = tail call ptr @skb_dequeue(ptr noundef %rel) #9
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %if.end38.unlock_crit_edge, label %if.then41

if.end38.unlock_crit_edge:                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.then41:                                        ; preds = %if.end38
  %cb42 = getelementptr inbounds %struct.sk_buff, ptr %call39, i32 0, i32 3
  %19 = ptrtoint ptr %cb42 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cb42, align 8
  %data45 = getelementptr inbounds %struct.sk_buff, ptr %call39, i32 0, i32 19
  %21 = ptrtoint ptr %data45 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data45, align 4
  %len46 = getelementptr inbounds %struct.sk_buff, ptr %call39, i32 0, i32 6
  %23 = ptrtoint ptr %len46 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len46, align 4
  %call47 = tail call fastcc ptr @h5_prepare_pkt(ptr noundef %hu, i8 noundef zeroext %20, ptr noundef %22, i32 noundef %24)
  %tobool48.not = icmp eq ptr %call47, null
  br i1 %tobool48.not, label %if.end57, label %if.then49

if.then49:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %call39 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %unack, ptr %call39, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.51, ptr %call39, i32 0, i32 1
  %28 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %prev10.i.i.i, align 4
  store volatile ptr %call39, ptr %prev.i.i, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %call39, ptr %26, align 4
  %30 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %qlen, align 4
  %add.i.i.i = add i32 %31, 1
  store volatile i32 %add.i.i.i, ptr %qlen, align 4
  %timer51 = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %add53 = add i32 %32, 25
  %call54 = tail call i32 @mod_timer(ptr noundef %timer51, i32 noundef %add53) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call28) #9
  br label %cleanup71

if.end57:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @skb_queue_head(ptr noundef %rel, ptr noundef nonnull %call39) #9
  %hdev59 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %33 = ptrtoint ptr %hdev59 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hdev59, align 4
  %name60 = getelementptr inbounds %struct.hci_dev, ptr %34, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.48, ptr noundef %name60) #9
  br label %unlock

unlock:                                           ; preds = %if.end57, %if.end38.unlock_crit_edge, %do.body24.unlock_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call28) #9
  %flags65 = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %flags65 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %flags65, align 4
  %37 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool67.not = icmp eq i32 %37, 0
  br i1 %tobool67.not, label %unlock.cleanup71_crit_edge, label %if.then68

unlock.cleanup71_crit_edge:                       ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup71

if.then68:                                        ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #11
  %call69 = tail call fastcc ptr @h5_prepare_pkt(ptr noundef %hu, i8 noundef zeroext 0, ptr noundef null, i32 noundef 0)
  br label %cleanup71

cleanup71:                                        ; preds = %if.then68, %unlock.cleanup71_crit_edge, %if.then49, %if.then18, %cleanup
  %retval.1 = phi ptr [ %retval.0, %cleanup ], [ %call16, %if.then18 ], [ %call69, %if.then68 ], [ %call47, %if.then49 ], [ null, %unlock.cleanup71_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @h5_timed_event(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hu1 = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %hu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hu1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h5_timed_event.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h5_timed_event, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !143

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h5_timed_event.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.27, ptr noundef %name) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state = getelementptr i8, ptr %t, i32 56
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then5, label %do.end.if.end7_crit_edge

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %do.end
  %priv.i = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #9
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then5.if.end7thread-pre-split_crit_edge, label %if.end.i

if.then5.if.end7thread-pre-split_crit_edge:       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7thread-pre-split

if.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 15, ptr %cb.i, align 8
  %call.i6.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 2) #9
  %9 = ptrtoint ptr %call.i6.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 382, ptr %call.i6.i, align 1
  %unrel.i = getelementptr inbounds %struct.h5, ptr %7, i32 0, i32 3
  tail call void @skb_queue_tail(ptr noundef %unrel.i, ptr noundef nonnull %call.i.i) #9
  br label %if.end7thread-pre-split

if.end7thread-pre-split:                          ; preds = %if.end.i, %if.then5.if.end7thread-pre-split_crit_edge
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %state, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end7thread-pre-split, %do.end.if.end7_crit_edge
  %11 = phi i32 [ %.pr, %if.end7thread-pre-split ], [ %5, %do.end.if.end7_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp9 = icmp eq i32 %11, 1
  br i1 %cmp9, label %if.then10, label %if.end7.if.end13_crit_edge

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then10:                                        ; preds = %if.end7
  %tx_win.i = getelementptr i8, ptr %t, i32 54
  %12 = ptrtoint ptr %tx_win.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tx_win.i, align 2
  %priv.i83 = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %priv.i83 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv.i83, align 4
  %call.i.i84 = tail call ptr @__alloc_skb(i32 noundef 3, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #9
  %tobool.not.i85 = icmp eq ptr %call.i.i84, null
  br i1 %tobool.not.i85, label %if.then10.if.end13_crit_edge, label %if.end.i89

if.then10.if.end13_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.end.i89:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %16 = and i8 %13, 7
  %cb.i86 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i84, i32 0, i32 3
  %17 = ptrtoint ptr %cb.i86 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 15, ptr %cb.i86, align 8
  %call.i6.i87 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i84, i32 noundef 3) #9
  %18 = ptrtoint ptr %call.i6.i87 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 1020, ptr %call.i6.i87, align 1
  %conf_req.sroa.4.0.call.i6.i87.sroa_idx = getelementptr inbounds i8, ptr %call.i6.i87, i32 2
  %19 = ptrtoint ptr %conf_req.sroa.4.0.call.i6.i87.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %16, ptr %conf_req.sroa.4.0.call.i6.i87.sroa_idx, align 1
  %unrel.i88 = getelementptr inbounds %struct.h5, ptr %15, i32 0, i32 3
  tail call void @skb_queue_tail(ptr noundef %unrel.i88, ptr noundef nonnull %call.i.i84) #9
  br label %if.end13

if.end13:                                         ; preds = %if.end.i89, %if.then10.if.end13_crit_edge, %if.end7.if.end13_crit_edge
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp15.not = icmp eq i32 %21, 2
  br i1 %cmp15.not, label %if.end19, label %if.then16

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %22, 10
  %call18 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #9
  br label %wakeup

if.end19:                                         ; preds = %if.end13
  %sleep = getelementptr i8, ptr %t, i32 60
  %23 = ptrtoint ptr %sleep to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp20.not = icmp eq i32 %24, 0
  br i1 %cmp20.not, label %do.body24, label %if.then21

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %sleep to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %sleep, align 4
  br label %wakeup

do.body24:                                        ; preds = %if.end19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h5_timed_event.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h5_timed_event, %if.then36)) #9
          to label %do.body41 [label %if.then36], !srcloc !143

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #11
  %qlen = getelementptr i8, ptr %t, i32 -180
  %26 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %qlen, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h5_timed_event.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.35, ptr noundef %1, i32 noundef %27) #9
  br label %do.body41

do.body41:                                        ; preds = %if.then36, %do.body24
  %unack44 = getelementptr i8, ptr %t, i32 -188
  %lock = getelementptr i8, ptr %t, i32 -176
  %call46 = tail call i32 @_raw_spin_lock_irqsave_nested(ptr noundef %lock, i32 noundef 1) #9
  %prev.i.i = getelementptr i8, ptr %t, i32 -184
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %prev.i.i, align 4
  %cmp.i.i97 = icmp eq ptr %29, %unack44
  %tobool.not.i919698 = icmp eq ptr %29, null
  %tobool.not.i9199 = or i1 %cmp.i.i97, %tobool.not.i919698
  br i1 %tobool.not.i9199, label %do.body41.while.end_crit_edge, label %while.body.lr.ph

do.body41.while.end_crit_edge:                    ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.body41
  %qlen.i.i = getelementptr i8, ptr %t, i32 -180
  %tx_seq = getelementptr i8, ptr %t, i32 52
  %rel = getelementptr i8, ptr %t, i32 -132
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %30 = phi ptr [ %29, %while.body.lr.ph ], [ %44, %while.body.while.body_crit_edge ]
  %31 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %30, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.51, ptr %30, i32 0, i32 1
  %35 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %30, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.51, ptr %34, i32 0, i32 1
  %37 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %36, ptr %prev17.i.i, align 4
  %38 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %34, ptr %36, align 8
  %39 = ptrtoint ptr %tx_seq to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %tx_seq, align 4
  %41 = add i8 %40, 7
  %42 = and i8 %41, 7
  store i8 %42, ptr %tx_seq, align 4
  tail call void @skb_queue_head(ptr noundef %rel, ptr noundef nonnull %30) #9
  %43 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %prev.i.i, align 4
  %cmp.i.i = icmp eq ptr %44, %unack44
  %tobool.not.i9196 = icmp eq ptr %44, null
  %tobool.not.i91 = or i1 %cmp.i.i, %tobool.not.i9196
  br i1 %tobool.not.i91, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.body41.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call46) #9
  br label %wakeup

wakeup:                                           ; preds = %while.end, %if.then21, %if.then16
  %call60 = tail call i32 @hci_uart_tx_wakeup(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @h5_link_control(ptr nocapture noundef readonly %hu, ptr nocapture noundef readonly %data, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call.i = tail call ptr @__alloc_skb(i32 noundef 3, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 15, ptr %cb, align 8
  %call.i6 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %len) #9
  %3 = call ptr @memcpy(ptr %call.i6, ptr %data, i32 %len)
  %unrel = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 3
  tail call void @skb_queue_tail(ptr noundef %unrel, ptr noundef nonnull %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @h5_rx_delimiter(ptr nocapture noundef readonly %hu, i8 noundef zeroext %c) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %c)
  %cmp = icmp eq i8 %c, -64
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %rx_func = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %rx_func to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @h5_rx_pkt_start, ptr %rx_func, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h5_rx_pkt_start(ptr nocapture noundef readonly %hu, i8 noundef zeroext %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %c)
  %cmp = icmp eq i8 %c, -64
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_func = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %rx_func to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @h5_rx_3wire_hdr, ptr %rx_func, align 4
  %rx_pending = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %rx_pending, align 4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 4109, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #9
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %rx_skb16 = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %rx_skb16 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %rx_skb16, align 4
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %5 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.19, ptr noundef %name) #9
  %7 = ptrtoint ptr %rx_skb16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_skb16, align 4
  %tobool.not.i14 = icmp eq ptr %8, null
  br i1 %tobool.not.i14, label %if.then3.h5_reset_rx.exit_crit_edge, label %if.then.i15

if.then3.h5_reset_rx.exit_crit_edge:              ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %h5_reset_rx.exit

if.then.i15:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef nonnull %8, i32 noundef 0) #9
  %9 = ptrtoint ptr %rx_skb16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %rx_skb16, align 4
  br label %h5_reset_rx.exit

h5_reset_rx.exit:                                 ; preds = %if.then.i15, %if.then3.h5_reset_rx.exit_crit_edge
  %10 = ptrtoint ptr %rx_func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @h5_rx_delimiter, ptr %rx_func, align 4
  %11 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %rx_pending, align 4
  %flags.i = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %12 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %15, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %rx_skb = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i.i, ptr %rx_skb, align 4
  %hdev5 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %17 = ptrtoint ptr %hdev5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hdev5, align 4
  %19 = getelementptr inbounds %struct.anon.51, ptr %call.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %19, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %h5_reset_rx.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -12, %h5_reset_rx.exit ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h5_rx_3wire_hdr(ptr nocapture noundef readonly %hu, i8 noundef zeroext %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %rx_skb = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h5_rx_3wire_hdr.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h5_rx_3wire_hdr, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !143

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %6 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %5, align 1
  %conv = zext i8 %9 to i32
  %and = and i32 %conv, 7
  %10 = lshr i32 %conv, 3
  %and5 = and i32 %10, 7
  %11 = lshr i32 %conv, 6
  %and9 = and i32 %11, 1
  %12 = lshr i32 %conv, 7
  %arrayidx14 = getelementptr i8, ptr %5, i32 1
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %14 to i32
  %and16 = and i32 %conv15, 15
  %15 = lshr i32 %conv15, 4
  %arrayidx21 = getelementptr i8, ptr %5, i32 2
  %16 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %17 to i32
  %shl = shl nuw nsw i32 %conv22, 4
  %add = or i32 %shl, %15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h5_rx_3wire_hdr.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.21, ptr noundef %name, i32 noundef %and, i32 noundef %and5, i32 noundef %and9, i32 noundef %12, i32 noundef %and16, i32 noundef %add) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %5, align 1
  %conv24 = zext i8 %19 to i32
  %arrayidx25 = getelementptr i8, ptr %5, i32 1
  %20 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %21 to i32
  %add27 = add nuw nsw i32 %conv26, %conv24
  %arrayidx28 = getelementptr i8, ptr %5, i32 2
  %22 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %23 to i32
  %add30 = add nuw nsw i32 %add27, %conv29
  %arrayidx31 = getelementptr i8, ptr %5, i32 3
  %24 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %25 to i32
  %add33 = add nuw nsw i32 %add30, %conv32
  %and34 = and i32 %add33, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and34)
  %cmp.not = icmp eq i32 %and34, 255
  br i1 %cmp.not, label %if.end40, label %if.then36

if.then36:                                        ; preds = %do.end
  %hdev37 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %26 = ptrtoint ptr %hdev37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hdev37, align 4
  %name38 = getelementptr inbounds %struct.hci_dev, ptr %27, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.22, ptr noundef %name38) #9
  %28 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx_skb, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %if.then36.h5_reset_rx.exit_crit_edge, label %if.then.i

if.then36.h5_reset_rx.exit_crit_edge:             ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %h5_reset_rx.exit

if.then.i:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef nonnull %29, i32 noundef 0) #9
  %30 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %rx_skb, align 4
  br label %h5_reset_rx.exit

h5_reset_rx.exit:                                 ; preds = %if.then.i, %if.then36.h5_reset_rx.exit_crit_edge
  %rx_func.i = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 8
  %31 = ptrtoint ptr %rx_func.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @h5_rx_delimiter, ptr %rx_func.i, align 4
  %rx_pending.i = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 6
  %32 = ptrtoint ptr %rx_pending.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %rx_pending.i, align 4
  %flags.i = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i) #9
  br label %cleanup

if.end40:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %tobool45.not = icmp sgt i8 %19, -1
  br i1 %tobool45.not, label %if.end40.if.end61_crit_edge, label %land.lhs.true

if.end40.if.end61_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

land.lhs.true:                                    ; preds = %if.end40
  %and48 = and i32 %conv24, 7
  %tx_ack = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 12
  %33 = ptrtoint ptr %tx_ack to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %tx_ack, align 1
  %conv49 = zext i8 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and48, i32 %conv49)
  %cmp50.not = icmp eq i32 %and48, %conv49
  br i1 %cmp50.not, label %land.lhs.true.if.end61_crit_edge, label %if.then52

land.lhs.true.if.end61_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then52:                                        ; preds = %land.lhs.true
  %hdev53 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %35 = ptrtoint ptr %hdev53 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hdev53, align 4
  %name54 = getelementptr inbounds %struct.hci_dev, ptr %36, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.23, ptr noundef %name54, i32 noundef %and48, i32 noundef %conv49) #9
  %37 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rx_skb, align 4
  %tobool.not.i113 = icmp eq ptr %38, null
  br i1 %tobool.not.i113, label %if.then52.h5_reset_rx.exit118_crit_edge, label %if.then.i114

if.then52.h5_reset_rx.exit118_crit_edge:          ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %h5_reset_rx.exit118

if.then.i114:                                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef nonnull %38, i32 noundef 0) #9
  %39 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %rx_skb, align 4
  br label %h5_reset_rx.exit118

h5_reset_rx.exit118:                              ; preds = %if.then.i114, %if.then52.h5_reset_rx.exit118_crit_edge
  %rx_func.i115 = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 8
  %40 = ptrtoint ptr %rx_func.i115 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @h5_rx_delimiter, ptr %rx_func.i115, align 4
  %rx_pending.i116 = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 6
  %41 = ptrtoint ptr %rx_pending.i116 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %rx_pending.i116, align 4
  %flags.i117 = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i117) #9
  br label %cleanup

if.end61:                                         ; preds = %land.lhs.true.if.end61_crit_edge, %if.end40.if.end61_crit_edge
  %state = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 14
  %42 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp62.not = icmp eq i32 %43, 2
  %44 = and i8 %21, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %44)
  %cmp68.not = icmp eq i8 %44, 15
  %or.cond = select i1 %cmp62.not, i1 true, i1 %cmp68.not
  br i1 %or.cond, label %if.end74, label %if.then70

if.then70:                                        ; preds = %if.end61
  %hdev71 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %45 = ptrtoint ptr %hdev71 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hdev71, align 4
  %name72 = getelementptr inbounds %struct.hci_dev, ptr %46, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.24, ptr noundef %name72) #9
  %47 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rx_skb, align 4
  %tobool.not.i120 = icmp eq ptr %48, null
  br i1 %tobool.not.i120, label %if.then70.h5_reset_rx.exit125_crit_edge, label %if.then.i121

if.then70.h5_reset_rx.exit125_crit_edge:          ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  br label %h5_reset_rx.exit125

if.then.i121:                                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef nonnull %48, i32 noundef 0) #9
  %49 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %rx_skb, align 4
  br label %h5_reset_rx.exit125

h5_reset_rx.exit125:                              ; preds = %if.then.i121, %if.then70.h5_reset_rx.exit125_crit_edge
  %rx_func.i122 = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 8
  %50 = ptrtoint ptr %rx_func.i122 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @h5_rx_delimiter, ptr %rx_func.i122, align 4
  %rx_pending.i123 = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 6
  %51 = ptrtoint ptr %rx_pending.i123 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %rx_pending.i123, align 4
  %flags.i124 = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i124) #9
  br label %cleanup

if.end74:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  %rx_func = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 8
  %52 = ptrtoint ptr %rx_func to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @h5_rx_payload, ptr %rx_func, align 4
  %53 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx25, align 1
  %55 = lshr i8 %54, 4
  %56 = zext i8 %55 to i32
  %57 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx28, align 1
  %conv80 = zext i8 %58 to i32
  %shl81 = shl nuw nsw i32 %conv80, 4
  %add82 = or i32 %shl81, %56
  %rx_pending = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 6
  %59 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %add82, ptr %rx_pending, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %h5_reset_rx.exit125, %h5_reset_rx.exit118, %h5_reset_rx.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h5_rx_payload(ptr noundef %hu, i8 noundef zeroext %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %rx_skb = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %8 = and i8 %7, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rx_func = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %rx_func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @h5_rx_crc, ptr %rx_func, align 4
  %rx_pending = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %rx_pending, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @h5_complete_rx_pkt(ptr noundef %hu)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h5_rx_crc(ptr noundef %hu, i8 noundef zeroext %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @h5_complete_rx_pkt(ptr noundef %hu)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @h5_complete_rx_pkt(ptr noundef %hu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %rx_skb = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %tobool.not = icmp sgt i8 %7, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tx_ack = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %tx_ack to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tx_ack, align 1
  %10 = add i8 %9, 1
  %11 = and i8 %10, 7
  store i8 %11, ptr %tx_ack, align 1
  %flags = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #9
  %call = tail call i32 @hci_uart_tx_wakeup(ptr noundef %hu) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %5, align 1
  %14 = lshr i8 %13, 3
  %15 = and i8 %14, 7
  %rx_ack = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %rx_ack to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %rx_ack, align 4
  %unack.i = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 1
  %lock.i = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 1, i32 2
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %qlen.i.i = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp8.i = icmp eq i32 %18, 0
  br i1 %cmp8.i, label %if.end.h5_pkt_cull.exit_crit_edge, label %if.end.i

if.end.h5_pkt_cull.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %h5_pkt_cull.exit

if.end.i:                                         ; preds = %if.end
  %tx_seq.i = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 11
  %19 = ptrtoint ptr %tx_seq.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tx_seq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp1065.i = icmp sgt i32 %18, 0
  br i1 %cmp1065.i, label %while.body.lr.ph.i, label %if.end.i.while.end.i_crit_edge

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end.i
  %21 = ptrtoint ptr %rx_ack to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %rx_ack, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end17.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %seq.067.i = phi i8 [ %20, %while.body.lr.ph.i ], [ %24, %if.end17.i.while.body.i_crit_edge ]
  %to_remove.066.i = phi i32 [ %18, %while.body.lr.ph.i ], [ %dec.i, %if.end17.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %seq.067.i)
  %cmp14.i = icmp eq i8 %22, %seq.067.i
  br i1 %cmp14.i, label %while.body.i.while.end.i_crit_edge, label %if.end17.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.end17.i:                                       ; preds = %while.body.i
  %dec.i = add nsw i32 %to_remove.066.i, -1
  %23 = add i8 %seq.067.i, 7
  %24 = and i8 %23, 7
  %cmp10.i = icmp sgt i32 %to_remove.066.i, 1
  br i1 %cmp10.i, label %if.end17.i.while.body.i_crit_edge, label %if.end17.i.while.end.i_crit_edge

if.end17.i.while.end.i_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.end17.i.while.body.i_crit_edge:                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.end.i:                                      ; preds = %if.end17.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge
  %to_remove.0.lcssa.i = phi i32 [ %18, %if.end.i.while.end.i_crit_edge ], [ 0, %if.end17.i.while.end.i_crit_edge ], [ %to_remove.066.i, %while.body.i.while.end.i_crit_edge ]
  %seq.0.lcssa.i = phi i8 [ %20, %if.end.i.while.end.i_crit_edge ], [ %24, %if.end17.i.while.end.i_crit_edge ], [ %22, %while.body.i.while.end.i_crit_edge ]
  %25 = ptrtoint ptr %rx_ack to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %rx_ack, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %seq.0.lcssa.i, i8 %26)
  %cmp23.not.i = icmp eq i8 %seq.0.lcssa.i, %26
  br i1 %cmp23.not.i, label %while.end.i.if.end26.i_crit_edge, label %if.then25.i

while.end.i.if.end26.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

if.then25.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.25) #9
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then25.i, %while.end.i.if.end26.i_crit_edge
  %27 = ptrtoint ptr %unack.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %unack.i, align 4
  %cmp30.not71.i = icmp ne ptr %28, %unack.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to_remove.0.lcssa.i)
  %cmp32.not72.i = icmp sgt i32 %to_remove.0.lcssa.i, 0
  %or.cond73.i = select i1 %cmp30.not71.i, i1 %cmp32.not72.i, i1 false
  br i1 %or.cond73.i, label %if.end26.i.if.end35.i_crit_edge, label %if.end26.i.for.end.i_crit_edge

if.end26.i.for.end.i_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end26.i.if.end35.i_crit_edge:                  ; preds = %if.end26.i
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.end35.i.if.end35.i_crit_edge, %if.end26.i.if.end35.i_crit_edge
  %skb.075.i = phi ptr [ %tmp.0.i, %if.end35.i.if.end35.i_crit_edge ], [ %28, %if.end26.i.if.end35.i_crit_edge ]
  %i.074.i = phi i32 [ %inc.i, %if.end35.i.if.end35.i_crit_edge ], [ 0, %if.end26.i.if.end35.i_crit_edge ]
  %29 = ptrtoint ptr %skb.075.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %tmp.0.i = load ptr, ptr %skb.075.i, align 8
  %inc.i = add nuw nsw i32 %i.074.i, 1
  %30 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %32 = load ptr, ptr %skb.075.i, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.51, ptr %skb.075.i, i32 0, i32 1
  %33 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %skb.075.i, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.51, ptr %32, i32 0, i32 1
  %35 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %34, ptr %prev17.i.i, align 4
  %36 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %32, ptr %34, align 8
  tail call void @kfree_skb_reason(ptr noundef %skb.075.i, i32 noundef 0) #9
  %cmp30.not.i = icmp ne ptr %tmp.0.i, %unack.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %to_remove.0.lcssa.i)
  %cmp32.not.i = icmp slt i32 %inc.i, %to_remove.0.lcssa.i
  %or.cond.i = select i1 %cmp30.not.i, i1 %cmp32.not.i, i1 false
  br i1 %or.cond.i, label %if.end35.i.if.end35.i_crit_edge, label %if.end35.i.for.end.i_crit_edge

if.end35.i.for.end.i_crit_edge:                   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end35.i.if.end35.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

for.end.i:                                        ; preds = %if.end35.i.for.end.i_crit_edge, %if.end26.i.for.end.i_crit_edge
  %37 = ptrtoint ptr %unack.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %unack.i, align 4
  %cmp.i.not.i = icmp eq ptr %38, %unack.i
  br i1 %cmp.i.not.i, label %if.then40.i, label %for.end.i.h5_pkt_cull.exit_crit_edge

for.end.i.h5_pkt_cull.exit_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %h5_pkt_cull.exit

if.then40.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %timer.i = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 9
  %call41.i = tail call i32 @del_timer(ptr noundef %timer.i) #9
  br label %h5_pkt_cull.exit

h5_pkt_cull.exit:                                 ; preds = %if.then40.i, %for.end.i.h5_pkt_cull.exit_crit_edge, %if.end.h5_pkt_cull.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #9
  %arrayidx9 = getelementptr i8, ptr %5, i32 1
  %39 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx9, align 1
  %41 = and i8 %40, 15
  %and11 = zext i8 %41 to i32
  %and11.off = add nsw i32 %and11, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and11.off)
  %switch = icmp ult i32 %and11.off, 4
  br i1 %switch, label %sw.epilog.thread, label %sw.epilog

sw.epilog.thread:                                 ; preds = %h5_pkt_cull.exit
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rx_skb, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %cb to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %41, ptr %cb, align 8
  %45 = load ptr, ptr %rx_skb, align 4
  %call18 = tail call ptr @skb_pull(ptr noundef %45, i32 noundef 4) #9
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %46 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hdev, align 4
  %48 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rx_skb, align 4
  %call20 = tail call i32 @hci_recv_frame(ptr noundef %47, ptr noundef %49) #9
  br label %h5_reset_rx.exit.sink.split

sw.epilog:                                        ; preds = %h5_pkt_cull.exit
  tail call fastcc void @h5_handle_internal_rx(ptr noundef %hu)
  %50 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pr = load ptr, ptr %rx_skb, align 4
  %tobool.not.i = icmp eq ptr %.pr, null
  br i1 %tobool.not.i, label %sw.epilog.h5_reset_rx.exit_crit_edge, label %if.then.i

sw.epilog.h5_reset_rx.exit_crit_edge:             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %h5_reset_rx.exit

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef nonnull %.pr, i32 noundef 0) #9
  br label %h5_reset_rx.exit.sink.split

h5_reset_rx.exit.sink.split:                      ; preds = %if.then.i, %sw.epilog.thread
  %51 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %rx_skb, align 4
  br label %h5_reset_rx.exit

h5_reset_rx.exit:                                 ; preds = %h5_reset_rx.exit.sink.split, %sw.epilog.h5_reset_rx.exit_crit_edge
  %rx_func.i = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 8
  %52 = ptrtoint ptr %rx_func.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @h5_rx_delimiter, ptr %rx_func.i, align 4
  %rx_pending.i = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 6
  %53 = ptrtoint ptr %rx_pending.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %rx_pending.i, align 4
  %flags.i = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_tx_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_recv_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @h5_handle_internal_rx(ptr noundef %hu) unnamed_addr #2 align 64 {
entry:
  %sync_rsp = alloca [2 x i8], align 2
  %conf_req = alloca [3 x i8], align 2
  %conf_rsp = alloca [2 x i8], align 2
  %woken_req = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sync_rsp) #9
  %2 = ptrtoint ptr %sync_rsp to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 637, ptr %sync_rsp, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %conf_req) #9
  %3 = ptrtoint ptr %conf_req to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 1020, ptr %conf_req, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %conf_rsp) #9
  %4 = ptrtoint ptr %conf_rsp to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1147, ptr %conf_rsp, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %woken_req) #9
  %5 = ptrtoint ptr %woken_req to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1785, ptr %woken_req, align 2
  %rx_skb = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %9, i32 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h5_handle_internal_rx.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h5_handle_internal_rx, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !143

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %10 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %11, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h5_handle_internal_rx.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.27, ptr noundef %name) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %arrayidx6 = getelementptr i8, ptr %9, i32 1
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx6, align 1
  %conv = zext i8 %13 to i32
  %and = and i32 %conv, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and)
  %cmp.not = icmp eq i32 %and, 15
  br i1 %cmp.not, label %if.end9, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %14 = lshr i32 %conv, 4
  %arrayidx13 = getelementptr i8, ptr %9, i32 2
  %15 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %16 to i32
  %shl = shl nuw nsw i32 %conv14, 4
  %add = or i32 %shl, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add)
  %cmp15 = icmp ult i32 %add, 2
  br i1 %cmp15, label %if.end9.cleanup_crit_edge, label %if.end18

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  %tx_win.i = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 13
  %17 = ptrtoint ptr %tx_win.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %tx_win.i, align 2
  %19 = and i8 %18, 7
  %arrayidx20 = getelementptr inbounds [3 x i8], ptr %conf_req, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx20, align 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(2) %arrayidx, ptr noundef nonnull dereferenceable(2) @__const.h5_handle_internal_rx.sync_req, i32 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp23 = icmp eq i32 %bcmp, 0
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end18
  %state = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 14
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp26 = icmp eq i32 %22, 2
  br i1 %cmp26, label %if.then28, label %if.then25.if.end29_crit_edge

if.then25.if.end29_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then28:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv, align 4
  %hdev.i = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %25 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hdev.i, align 4
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %26, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.33, ptr noundef %name.i) #9
  %state.i = getelementptr inbounds %struct.h5, ptr %24, i32 0, i32 14
  %27 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %state.i, align 4
  %timer.i = getelementptr inbounds %struct.h5, ptr %24, i32 0, i32 9
  %call.i = tail call i32 @del_timer(ptr noundef %timer.i) #9
  %rel.i = getelementptr inbounds %struct.h5, ptr %24, i32 0, i32 2
  tail call void @skb_queue_purge(ptr noundef %rel.i) #9
  %unrel.i = getelementptr inbounds %struct.h5, ptr %24, i32 0, i32 3
  tail call void @skb_queue_purge(ptr noundef %unrel.i) #9
  %unack.i = getelementptr inbounds %struct.h5, ptr %24, i32 0, i32 1
  tail call void @skb_queue_purge(ptr noundef %unack.i) #9
  %tx_seq.i = getelementptr inbounds %struct.h5, ptr %24, i32 0, i32 11
  %28 = ptrtoint ptr %tx_seq.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %tx_seq.i, align 4
  %tx_ack.i = getelementptr inbounds %struct.h5, ptr %24, i32 0, i32 12
  %29 = ptrtoint ptr %tx_ack.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %tx_ack.i, align 1
  %30 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hdev.i, align 4
  %call2.i = tail call i32 @hci_reset_dev(ptr noundef %31) #9
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.then25.if.end29_crit_edge
  %32 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv, align 4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #9
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end29.if.end189_crit_edge, label %if.end.i

if.end29.if.end189_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end189

if.end.i:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 15, ptr %cb.i, align 8
  %call.i6.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 2) #9
  %35 = ptrtoint ptr %sync_rsp to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %sync_rsp, align 2
  %37 = ptrtoint ptr %call.i6.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 %36, ptr %call.i6.i, align 1
  %unrel.i256 = getelementptr inbounds %struct.h5, ptr %33, i32 0, i32 3
  tail call void @skb_queue_tail(ptr noundef %unrel.i256, ptr noundef nonnull %call.i.i) #9
  br label %if.end189

if.else:                                          ; preds = %if.end18
  %bcmp234 = call i32 @bcmp(ptr noundef dereferenceable(2) %arrayidx, ptr noundef nonnull dereferenceable(2) %sync_rsp, i32 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp234)
  %cmp33 = icmp eq i32 %bcmp234, 0
  br i1 %cmp33, label %if.then35, label %if.else43

if.then35:                                        ; preds = %if.else
  %state36 = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 14
  %38 = ptrtoint ptr %state36 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %state36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp37 = icmp eq i32 %39, 2
  br i1 %cmp37, label %if.then39, label %if.then35.if.end40_crit_edge

if.then35.if.end40_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then39:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv, align 4
  %hdev.i258 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %42 = ptrtoint ptr %hdev.i258 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hdev.i258, align 4
  %name.i259 = getelementptr inbounds %struct.hci_dev, ptr %43, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.33, ptr noundef %name.i259) #9
  %state.i260 = getelementptr inbounds %struct.h5, ptr %41, i32 0, i32 14
  %44 = ptrtoint ptr %state.i260 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %state.i260, align 4
  %timer.i261 = getelementptr inbounds %struct.h5, ptr %41, i32 0, i32 9
  %call.i262 = tail call i32 @del_timer(ptr noundef %timer.i261) #9
  %rel.i263 = getelementptr inbounds %struct.h5, ptr %41, i32 0, i32 2
  tail call void @skb_queue_purge(ptr noundef %rel.i263) #9
  %unrel.i264 = getelementptr inbounds %struct.h5, ptr %41, i32 0, i32 3
  tail call void @skb_queue_purge(ptr noundef %unrel.i264) #9
  %unack.i265 = getelementptr inbounds %struct.h5, ptr %41, i32 0, i32 1
  tail call void @skb_queue_purge(ptr noundef %unack.i265) #9
  %tx_seq.i266 = getelementptr inbounds %struct.h5, ptr %41, i32 0, i32 11
  %45 = ptrtoint ptr %tx_seq.i266 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %tx_seq.i266, align 4
  %tx_ack.i267 = getelementptr inbounds %struct.h5, ptr %41, i32 0, i32 12
  %46 = ptrtoint ptr %tx_ack.i267 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %tx_ack.i267, align 1
  %47 = ptrtoint ptr %hdev.i258 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hdev.i258, align 4
  %call2.i268 = tail call i32 @hci_reset_dev(ptr noundef %48) #9
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.then35.if.end40_crit_edge
  %49 = ptrtoint ptr %state36 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %state36, align 4
  %50 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %priv, align 4
  %call.i.i270 = tail call ptr @__alloc_skb(i32 noundef 3, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #9
  %tobool.not.i271 = icmp eq ptr %call.i.i270, null
  br i1 %tobool.not.i271, label %if.end40.if.end189_crit_edge, label %if.end.i275

if.end40.if.end189_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end189

if.end.i275:                                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %cb.i272 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i270, i32 0, i32 3
  %52 = ptrtoint ptr %cb.i272 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 15, ptr %cb.i272, align 8
  %call.i6.i273 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i270, i32 noundef 3) #9
  %53 = call ptr @memcpy(ptr %call.i6.i273, ptr %conf_req, i32 3)
  %unrel.i274 = getelementptr inbounds %struct.h5, ptr %51, i32 0, i32 3
  tail call void @skb_queue_tail(ptr noundef %unrel.i274, ptr noundef nonnull %call.i.i270) #9
  br label %if.end189

if.else43:                                        ; preds = %if.else
  %bcmp235 = call i32 @bcmp(ptr noundef dereferenceable(2) %arrayidx, ptr noundef nonnull dereferenceable(2) %conf_req, i32 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp235)
  %cmp46 = icmp eq i32 %bcmp235, 0
  br i1 %cmp46, label %if.then48, label %if.else51

if.then48:                                        ; preds = %if.else43
  %54 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %priv, align 4
  %call.i.i278 = tail call ptr @__alloc_skb(i32 noundef 3, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #9
  %tobool.not.i279 = icmp eq ptr %call.i.i278, null
  br i1 %tobool.not.i279, label %if.then48.h5_link_control.exit284_crit_edge, label %if.end.i283

if.then48.h5_link_control.exit284_crit_edge:      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %h5_link_control.exit284

if.end.i283:                                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  %cb.i280 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i278, i32 0, i32 3
  %56 = ptrtoint ptr %cb.i280 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 15, ptr %cb.i280, align 8
  %call.i6.i281 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i278, i32 noundef 2) #9
  %57 = ptrtoint ptr %conf_rsp to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %conf_rsp, align 2
  %59 = ptrtoint ptr %call.i6.i281 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 2)
  store i16 %58, ptr %call.i6.i281, align 1
  %unrel.i282 = getelementptr inbounds %struct.h5, ptr %55, i32 0, i32 3
  tail call void @skb_queue_tail(ptr noundef %unrel.i282, ptr noundef nonnull %call.i.i278) #9
  br label %h5_link_control.exit284

h5_link_control.exit284:                          ; preds = %if.end.i283, %if.then48.h5_link_control.exit284_crit_edge
  %60 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %priv, align 4
  %call.i.i286 = tail call ptr @__alloc_skb(i32 noundef 3, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #9
  %tobool.not.i287 = icmp eq ptr %call.i.i286, null
  br i1 %tobool.not.i287, label %h5_link_control.exit284.if.end189_crit_edge, label %if.end.i291

h5_link_control.exit284.if.end189_crit_edge:      ; preds = %h5_link_control.exit284
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end189

if.end.i291:                                      ; preds = %h5_link_control.exit284
  call void @__sanitizer_cov_trace_pc() #11
  %cb.i288 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i286, i32 0, i32 3
  %62 = ptrtoint ptr %cb.i288 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 15, ptr %cb.i288, align 8
  %call.i6.i289 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i286, i32 noundef 3) #9
  %63 = call ptr @memcpy(ptr %call.i6.i289, ptr %conf_req, i32 3)
  %unrel.i290 = getelementptr inbounds %struct.h5, ptr %61, i32 0, i32 3
  tail call void @skb_queue_tail(ptr noundef %unrel.i290, ptr noundef nonnull %call.i.i286) #9
  br label %if.end189

if.else51:                                        ; preds = %if.else43
  %bcmp236 = call i32 @bcmp(ptr noundef dereferenceable(2) %arrayidx, ptr noundef nonnull dereferenceable(2) %conf_rsp, i32 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp236)
  %cmp54 = icmp eq i32 %bcmp236, 0
  br i1 %cmp54, label %if.then56, label %if.else93

if.then56:                                        ; preds = %if.else51
  %64 = lshr i8 %13, 4
  %65 = zext i8 %64 to i32
  %add64 = or i32 %shl, %65
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add64)
  %cmp65 = icmp ugt i32 %add64, 2
  br i1 %cmp65, label %if.then67, label %if.then56.do.body73_crit_edge

if.then56.do.body73_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body73

if.then67:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx68 = getelementptr i8, ptr %9, i32 6
  %66 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx68, align 1
  %68 = and i8 %67, 7
  %69 = ptrtoint ptr %tx_win.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %tx_win.i, align 2
  br label %do.body73

do.body73:                                        ; preds = %if.then67, %if.then56.do.body73_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h5_handle_internal_rx.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h5_handle_internal_rx, %if.then85)) #9
          to label %do.end90 [label %if.then85], !srcloc !143

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %tx_win.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %tx_win.i, align 2
  %conv87 = zext i8 %71 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h5_handle_internal_rx.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.28, i32 noundef %conv87) #9
  br label %do.end90

do.end90:                                         ; preds = %if.then85, %do.body73
  %state91 = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 14
  %72 = ptrtoint ptr %state91 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 2, ptr %state91, align 4
  %call92 = tail call i32 @hci_uart_init_ready(ptr noundef %hu) #9
  br label %cleanup

if.else93:                                        ; preds = %if.else51
  %bcmp237 = tail call i32 @bcmp(ptr noundef dereferenceable(2) %arrayidx, ptr noundef nonnull dereferenceable(2) @__const.h5_handle_internal_rx.sleep_req, i32 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp237)
  %cmp96 = icmp eq i32 %bcmp237, 0
  br i1 %cmp96, label %do.body99, label %if.else115

do.body99:                                        ; preds = %if.else93
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h5_handle_internal_rx.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h5_handle_internal_rx, %if.then111)) #9
          to label %do.end114 [label %if.then111], !srcloc !143

if.then111:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h5_handle_internal_rx.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.29) #9
  br label %do.end114

do.end114:                                        ; preds = %if.then111, %do.body99
  %sleep = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 15
  %73 = ptrtoint ptr %sleep to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %sleep, align 4
  br label %cleanup

if.else115:                                       ; preds = %if.else93
  %bcmp238 = call i32 @bcmp(ptr noundef dereferenceable(2) %arrayidx, ptr noundef nonnull dereferenceable(2) %woken_req, i32 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp238)
  %cmp118 = icmp eq i32 %bcmp238, 0
  br i1 %cmp118, label %do.body121, label %if.else138

do.body121:                                       ; preds = %if.else115
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h5_handle_internal_rx.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h5_handle_internal_rx, %if.then133)) #9
          to label %do.end136 [label %if.then133], !srcloc !143

if.then133:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h5_handle_internal_rx.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.30) #9
  br label %do.end136

do.end136:                                        ; preds = %if.then133, %do.body121
  %sleep137 = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 15
  %74 = ptrtoint ptr %sleep137 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %sleep137, align 4
  br label %if.end189

if.else138:                                       ; preds = %if.else115
  %bcmp239 = tail call i32 @bcmp(ptr noundef dereferenceable(2) %arrayidx, ptr noundef nonnull dereferenceable(2) @__const.h5_handle_internal_rx.wakeup_req, i32 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp239)
  %cmp141 = icmp eq i32 %bcmp239, 0
  br i1 %cmp141, label %do.body144, label %do.body163

do.body144:                                       ; preds = %if.else138
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h5_handle_internal_rx.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h5_handle_internal_rx, %if.then156)) #9
          to label %do.end159 [label %if.then156], !srcloc !143

if.then156:                                       ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h5_handle_internal_rx.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.31) #9
  br label %do.end159

do.end159:                                        ; preds = %if.then156, %do.body144
  call fastcc void @h5_link_control(ptr noundef %hu, ptr noundef nonnull %woken_req, i32 noundef 2)
  %sleep161 = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 15
  %75 = ptrtoint ptr %sleep161 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %sleep161, align 4
  br label %if.end189

do.body163:                                       ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h5_handle_internal_rx.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h5_handle_internal_rx, %if.then175)) #9
          to label %cleanup [label %if.then175], !srcloc !143

if.then175:                                       ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx, align 1
  %conv177 = zext i8 %77 to i32
  %arrayidx178 = getelementptr i8, ptr %9, i32 5
  %78 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx178, align 1
  %conv179 = zext i8 %79 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h5_handle_internal_rx.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.32, i32 noundef %conv177, i32 noundef %conv179) #9
  br label %cleanup

if.end189:                                        ; preds = %do.end159, %do.end136, %if.end.i291, %h5_link_control.exit284.if.end189_crit_edge, %if.end.i275, %if.end40.if.end189_crit_edge, %if.end.i, %if.end29.if.end189_crit_edge
  %call190 = tail call i32 @hci_uart_tx_wakeup(ptr noundef %hu) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end189, %if.then175, %do.body163, %do.end114, %do.end90, %if.end9.cleanup_crit_edge, %do.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %woken_req) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %conf_rsp) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %conf_req) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sync_rsp) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_init_ready(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_reset_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave_nested(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @h5_unslip_one_byte(ptr noundef %h5, i8 noundef zeroext %c) unnamed_addr #2 align 64 {
entry:
  %c.addr = alloca i8, align 1
  %delim = alloca i8, align 1
  %esc = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %c.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %c, ptr %c.addr, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %delim)
  %1 = ptrtoint ptr %delim to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -64, ptr %delim, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %esc)
  %2 = ptrtoint ptr %esc to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -37, ptr %esc, align 1
  %flags = getelementptr inbounds %struct.h5, ptr %h5, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -37, i8 %c)
  %cmp = icmp eq i8 %c, -37
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.if.end10_crit_edge, label %if.then6

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then6:                                         ; preds = %if.end
  %5 = zext i8 %c to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.52)
  switch i8 %c, label %sw.default [
    i8 -36, label %if.then6.if.end10_crit_edge
    i8 -35, label %sw.bb8
  ]

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

sw.bb8:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

sw.default:                                       ; preds = %if.then6
  %conv7 = zext i8 %c to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.40, i32 noundef %conv7) #9
  %rx_skb.i = getelementptr inbounds %struct.h5, ptr %h5, i32 0, i32 5
  %6 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_skb.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %sw.default.h5_reset_rx.exit_crit_edge, label %if.then.i

sw.default.h5_reset_rx.exit_crit_edge:            ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %h5_reset_rx.exit

if.then.i:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef nonnull %7, i32 noundef 0) #9
  %8 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %rx_skb.i, align 4
  br label %h5_reset_rx.exit

h5_reset_rx.exit:                                 ; preds = %if.then.i, %sw.default.h5_reset_rx.exit_crit_edge
  %rx_func.i = getelementptr inbounds %struct.h5, ptr %h5, i32 0, i32 8
  %9 = ptrtoint ptr %rx_func.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @h5_rx_delimiter, ptr %rx_func.i, align 4
  %rx_pending.i = getelementptr inbounds %struct.h5, ptr %h5, i32 0, i32 6
  %10 = ptrtoint ptr %rx_pending.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %rx_pending.i, align 4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #9
  br label %cleanup

if.end10:                                         ; preds = %sw.bb8, %if.then6.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %byte.0 = phi ptr [ %esc, %sw.bb8 ], [ %c.addr, %if.end.if.end10_crit_edge ], [ %delim, %if.then6.if.end10_crit_edge ]
  %rx_skb = getelementptr inbounds %struct.h5, ptr %h5, i32 0, i32 5
  %11 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_skb, align 4
  %call.i = tail call ptr @skb_put(ptr noundef %12, i32 noundef 1) #9
  %13 = ptrtoint ptr %byte.0 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %byte.0, align 1
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %call.i, align 1
  %rx_pending = getelementptr inbounds %struct.h5, ptr %h5, i32 0, i32 6
  %16 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_pending, align 4
  %dec = add i32 %17, -1
  store i32 %dec, ptr %rx_pending, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h5_unslip_one_byte.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h5_unslip_one_byte, %if.then16)) #9
          to label %cleanup [label %if.then16], !srcloc !143

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %byte.0 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %byte.0, align 1
  %conv17 = zext i8 %19 to i32
  %20 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_pending, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h5_unslip_one_byte.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.42, i32 noundef %conv17, i32 noundef %21) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end10, %h5_reset_rx.exit, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %esc)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %delim)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @h5_prepare_pkt(ptr nocapture noundef readonly %hu, i8 noundef zeroext %pkt_type, ptr nocapture noundef readonly %data, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = zext i8 %pkt_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %pkt_type, label %if.then [
    i8 2, label %entry.if.end_crit_edge
    i8 1, label %entry.if.end_crit_edge139
    i8 3, label %entry.if.end_crit_edge140
    i8 5, label %entry.if.end_crit_edge141
    i8 15, label %entry.if.end_crit_edge142
    i8 0, label %entry.if.end_crit_edge143
  ]

entry.if.end_crit_edge143:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge142:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge141:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge140:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge139:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %3 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 2
  %conv = zext i8 %pkt_type to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.45, ptr noundef %name, i32 noundef %conv) #9
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge139, %entry.if.end_crit_edge140, %entry.if.end_crit_edge141, %entry.if.end_crit_edge142, %entry.if.end_crit_edge143
  %add = shl i32 %len, 1
  %add1 = add i32 %add, 14
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add1, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %cb to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %pkt_type, ptr %cb, align 8
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #9
  %6 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -64, ptr %call.i.i, align 1
  %tx_ack = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %tx_ack to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tx_ack, align 1
  %shl = shl i8 %8, 3
  %flags = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #9
  %pkt_type.off = add nsw i8 %pkt_type, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %pkt_type.off)
  %switch = icmp ult i8 %pkt_type.off, 2
  br i1 %switch, label %if.then14, label %if.end4.if.end28_crit_edge

if.end4.if.end28_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then14:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %9 = or i8 %shl, -128
  %tx_seq = getelementptr inbounds %struct.h5, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %tx_seq to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tx_seq, align 4
  %or21121 = or i8 %11, %9
  %12 = add i8 %11, 1
  %13 = and i8 %12, 7
  store i8 %13, ptr %tx_seq, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then14, %if.end4.if.end28_crit_edge
  %hdr.sroa.0.0 = phi i8 [ %or21121, %if.then14 ], [ %shl, %if.end4.if.end28_crit_edge ]
  %len.tr = trunc i32 %len to i8
  %14 = shl i8 %len.tr, 4
  %conv32 = or i8 %14, %pkt_type
  %shr = lshr i32 %len, 4
  %conv34 = trunc i32 %shr to i8
  %15 = add i8 %conv32, %conv34
  %16 = add i8 %15, %hdr.sroa.0.0
  %conv45 = xor i8 %16, -1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h5_prepare_pkt.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h5_prepare_pkt, %if.then51)) #9
          to label %do.end [label %if.then51], !srcloc !143

if.then51:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %conv37 = zext i8 %hdr.sroa.0.0 to i32
  %conv39 = zext i8 %conv32 to i32
  %hdev52 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %17 = ptrtoint ptr %hdev52 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hdev52, align 4
  %name53 = getelementptr inbounds %struct.hci_dev, ptr %18, i32 0, i32 2
  %and57 = and i32 %conv37, 7
  %19 = lshr i32 %conv37, 3
  %and61 = and i32 %19, 7
  %20 = lshr i32 %conv37, 6
  %and65 = and i32 %20, 1
  %21 = lshr i32 %conv37, 7
  %and72 = and i32 %conv39, 15
  %22 = lshr i32 %conv39, 4
  %shl79 = and i32 %len, 4080
  %add80 = or i32 %22, %shl79
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h5_prepare_pkt.__UNIQUE_ID_ddebug488, ptr noundef nonnull @.str.50, ptr noundef %name53, i32 noundef %and57, i32 noundef %and61, i32 noundef %and65, i32 noundef %21, i32 noundef %and72, i32 noundef %add80) #9
  br label %do.end

do.end:                                           ; preds = %if.then51, %if.end28
  %23 = zext i8 %hdr.sroa.0.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %hdr.sroa.0.0, label %sw.default.i124 [
    i8 -64, label %sw.bb.i
    i8 -37, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i123 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 2) #9
  %24 = ptrtoint ptr %call.i.i123 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 -9252, ptr %call.i.i123, align 1
  br label %h5_slip_one_byte.exit

sw.bb1.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i6.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 2) #9
  %25 = ptrtoint ptr %call.i6.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 -9251, ptr %call.i6.i, align 1
  br label %h5_slip_one_byte.exit

sw.default.i124:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i7.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #9
  %26 = ptrtoint ptr %call.i7.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %hdr.sroa.0.0, ptr %call.i7.i, align 1
  br label %h5_slip_one_byte.exit

h5_slip_one_byte.exit:                            ; preds = %sw.default.i124, %sw.bb1.i, %sw.bb.i
  %27 = zext i8 %conv32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %conv32, label %sw.default.i124.1 [
    i8 -64, label %sw.bb.i.1
    i8 -37, label %sw.bb1.i.1
  ]

sw.bb1.i.1:                                       ; preds = %h5_slip_one_byte.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i6.i.1 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 2) #9
  %28 = ptrtoint ptr %call.i6.i.1 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 -9251, ptr %call.i6.i.1, align 1
  br label %h5_slip_one_byte.exit.1

sw.bb.i.1:                                        ; preds = %h5_slip_one_byte.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i123.1 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 2) #9
  %29 = ptrtoint ptr %call.i.i123.1 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 -9252, ptr %call.i.i123.1, align 1
  br label %h5_slip_one_byte.exit.1

sw.default.i124.1:                                ; preds = %h5_slip_one_byte.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i7.i.1 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #9
  %30 = ptrtoint ptr %call.i7.i.1 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv32, ptr %call.i7.i.1, align 1
  br label %h5_slip_one_byte.exit.1

h5_slip_one_byte.exit.1:                          ; preds = %sw.default.i124.1, %sw.bb.i.1, %sw.bb1.i.1
  %31 = zext i8 %conv34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.56)
  switch i8 %conv34, label %sw.default.i124.2 [
    i8 -64, label %sw.bb.i.2
    i8 -37, label %sw.bb1.i.2
  ]

sw.bb1.i.2:                                       ; preds = %h5_slip_one_byte.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  %call.i6.i.2 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 2) #9
  %32 = ptrtoint ptr %call.i6.i.2 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 -9251, ptr %call.i6.i.2, align 1
  br label %h5_slip_one_byte.exit.2

sw.bb.i.2:                                        ; preds = %h5_slip_one_byte.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i123.2 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 2) #9
  %33 = ptrtoint ptr %call.i.i123.2 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 -9252, ptr %call.i.i123.2, align 1
  br label %h5_slip_one_byte.exit.2

sw.default.i124.2:                                ; preds = %h5_slip_one_byte.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  %call.i7.i.2 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #9
  %34 = ptrtoint ptr %call.i7.i.2 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv34, ptr %call.i7.i.2, align 1
  br label %h5_slip_one_byte.exit.2

h5_slip_one_byte.exit.2:                          ; preds = %sw.default.i124.2, %sw.bb.i.2, %sw.bb1.i.2
  %35 = zext i8 %conv45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.57)
  switch i8 %conv45, label %sw.default.i124.3 [
    i8 -64, label %sw.bb.i.3
    i8 -37, label %sw.bb1.i.3
  ]

sw.bb1.i.3:                                       ; preds = %h5_slip_one_byte.exit.2
  call void @__sanitizer_cov_trace_pc() #11
  %call.i6.i.3 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 2) #9
  %36 = ptrtoint ptr %call.i6.i.3 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 -9251, ptr %call.i6.i.3, align 1
  br label %h5_slip_one_byte.exit.3

sw.bb.i.3:                                        ; preds = %h5_slip_one_byte.exit.2
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i123.3 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 2) #9
  %37 = ptrtoint ptr %call.i.i123.3 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 -9252, ptr %call.i.i123.3, align 1
  br label %h5_slip_one_byte.exit.3

sw.default.i124.3:                                ; preds = %h5_slip_one_byte.exit.2
  call void @__sanitizer_cov_trace_pc() #11
  %call.i7.i.3 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #9
  %38 = ptrtoint ptr %call.i7.i.3 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv45, ptr %call.i7.i.3, align 1
  br label %h5_slip_one_byte.exit.3

h5_slip_one_byte.exit.3:                          ; preds = %sw.default.i124.3, %sw.bb.i.3, %sw.bb1.i.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp86136.not = icmp eq i32 %len, 0
  br i1 %cmp86136.not, label %h5_slip_one_byte.exit.3.for.end92_crit_edge, label %h5_slip_one_byte.exit.3.for.body88_crit_edge

h5_slip_one_byte.exit.3.for.body88_crit_edge:     ; preds = %h5_slip_one_byte.exit.3
  br label %for.body88

h5_slip_one_byte.exit.3.for.end92_crit_edge:      ; preds = %h5_slip_one_byte.exit.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end92

for.body88:                                       ; preds = %h5_slip_one_byte.exit131.for.body88_crit_edge, %h5_slip_one_byte.exit.3.for.body88_crit_edge
  %i.1137 = phi i32 [ %inc91, %h5_slip_one_byte.exit131.for.body88_crit_edge ], [ 0, %h5_slip_one_byte.exit.3.for.body88_crit_edge ]
  %arrayidx89 = getelementptr i8, ptr %data, i32 %i.1137
  %39 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx89, align 1
  %41 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %40, label %sw.default.i130 [
    i8 -64, label %sw.bb.i126
    i8 -37, label %sw.bb1.i128
  ]

sw.bb.i126:                                       ; preds = %for.body88
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i125 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 2) #9
  %42 = ptrtoint ptr %call.i.i125 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 2)
  store i16 -9252, ptr %call.i.i125, align 1
  br label %h5_slip_one_byte.exit131

sw.bb1.i128:                                      ; preds = %for.body88
  call void @__sanitizer_cov_trace_pc() #11
  %call.i6.i127 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 2) #9
  %43 = ptrtoint ptr %call.i6.i127 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 -9251, ptr %call.i6.i127, align 1
  br label %h5_slip_one_byte.exit131

sw.default.i130:                                  ; preds = %for.body88
  call void @__sanitizer_cov_trace_pc() #11
  %call.i7.i129 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #9
  %44 = ptrtoint ptr %call.i7.i129 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %40, ptr %call.i7.i129, align 1
  br label %h5_slip_one_byte.exit131

h5_slip_one_byte.exit131:                         ; preds = %sw.default.i130, %sw.bb1.i128, %sw.bb.i126
  %inc91 = add nuw i32 %i.1137, 1
  %exitcond.not = icmp eq i32 %inc91, %len
  br i1 %exitcond.not, label %h5_slip_one_byte.exit131.for.end92_crit_edge, label %h5_slip_one_byte.exit131.for.body88_crit_edge

h5_slip_one_byte.exit131.for.body88_crit_edge:    ; preds = %h5_slip_one_byte.exit131
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body88

h5_slip_one_byte.exit131.for.end92_crit_edge:     ; preds = %h5_slip_one_byte.exit131
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end92

for.end92:                                        ; preds = %h5_slip_one_byte.exit131.for.end92_crit_edge, %h5_slip_one_byte.exit.3.for.end92_crit_edge
  %call.i.i132 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #9
  %45 = ptrtoint ptr %call.i.i132 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -64, ptr %call.i.i132, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.end92, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %call.i, %for.end92 ], [ null, %if.then ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !18, !19, !20, !21, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !53, !54, !56, !57, !59, !60, !62, !64, !65, !66, !68, !70, !72, !74, !76, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !97, !98, !100, !101, !103, !104, !106, !107, !108, !110, !112, !114, !115, !116, !118, !120, !122, !124, !125, !126, !128, !130, !131}
!llvm.module.flags = !{!132, !133, !134, !135, !136, !137, !138, !139}
!llvm.ident = !{!140}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/bluetooth/hci_h5.c", i32 1107, i32 11}
!2 = !{ptr @h5_serdev_driver, !3, !"h5_serdev_driver", i1 false, i1 false}
!3 = !{!"../drivers/bluetooth/hci_h5.c", i32 1103, i32 36}
!4 = !{ptr @rtl_bluetooth_of_match, !5, !"rtl_bluetooth_of_match", i1 false, i1 false}
!5 = !{!"../drivers/bluetooth/hci_h5.c", i32 1090, i32 34}
!6 = !{ptr @h5_data_rtl8822cs, !7, !"h5_data_rtl8822cs", i1 false, i1 false}
!7 = !{!"../drivers/bluetooth/hci_h5.c", i32 1064, i32 36}
!8 = !{ptr @rtl_vnd, !9, !"rtl_vnd", i1 false, i1 false}
!9 = !{!"../drivers/bluetooth/hci_h5.c", i32 1055, i32 22}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/bluetooth/hci_h5.c", i32 919, i32 3}
!12 = !{ptr @h5_btrtl_resume.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/bluetooth/hci_h5.c", i32 1032, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/bluetooth/hci_h5.c", i32 1014, i32 3}
!17 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @h5_btrtl_reprobe_worker._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @h5_btrtl_reprobe_worker._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/bluetooth/hci_h5.c", i32 1049, i32 4}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/bluetooth/hci_h5.c", i32 1050, i32 4}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/bluetooth/hci_h5.c", i32 1051, i32 4}
!29 = !{ptr @acpi_btrtl_gpios, !30, !"acpi_btrtl_gpios", i1 false, i1 false}
!30 = !{!"../drivers/bluetooth/hci_h5.c", i32 1048, i32 39}
!31 = !{ptr @btrtl_device_wake_gpios, !32, !"btrtl_device_wake_gpios", i1 false, i1 false}
!32 = !{!"../drivers/bluetooth/hci_h5.c", i32 1045, i32 38}
!33 = !{ptr @btrtl_enable_gpios, !34, !"btrtl_enable_gpios", i1 false, i1 false}
!34 = !{!"../drivers/bluetooth/hci_h5.c", i32 1046, i32 38}
!35 = !{ptr @btrtl_host_wake_gpios, !36, !"btrtl_host_wake_gpios", i1 false, i1 false}
!36 = !{!"../drivers/bluetooth/hci_h5.c", i32 1047, i32 38}
!37 = !{ptr @h5_data_rtl8723bs, !38, !"h5_data_rtl8723bs", i1 false, i1 false}
!38 = !{!"../drivers/bluetooth/hci_h5.c", i32 1068, i32 36}
!39 = !{ptr @h5_serdev_pm_ops, !40, !"h5_serdev_pm_ops", i1 false, i1 false}
!40 = !{!"../drivers/bluetooth/hci_h5.c", i32 1085, i32 32}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/bluetooth/hci_h5.c", i32 853, i32 49}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/bluetooth/hci_h5.c", i32 857, i32 54}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/bluetooth/hci_h5.c", i32 804, i32 11}
!47 = !{ptr @h5p, !48, !"h5p", i1 false, i1 false}
!48 = !{!"../drivers/bluetooth/hci_h5.c", i32 802, i32 36}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/bluetooth/hci_h5.c", i32 217, i32 2}
!51 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @h5_open.__UNIQUE_ID_ddebug478, !50, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!54 = !{ptr @h5_open.__key, !55, !"__key", i1 false, i1 false}
!55 = !{!"../drivers/bluetooth/hci_h5.c", i32 236, i32 2}
!56 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @skb_queue_head_init.__key, !58, !"__key", i1 false, i1 false}
!58 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!59 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/bluetooth/hci_h5.c", i32 495, i32 3}
!62 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/bluetooth/hci_h5.c", i32 452, i32 2}
!64 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @h5_rx_3wire_hdr.__UNIQUE_ID_ddebug485, !63, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/bluetooth/hci_h5.c", i32 458, i32 3}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/bluetooth/hci_h5.c", i32 464, i32 3}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/bluetooth/hci_h5.c", i32 472, i32 3}
!72 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/bluetooth/hci_h5.c", i32 308, i32 3}
!74 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/bluetooth/hci_h5.c", i32 339, i32 2}
!76 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @h5_handle_internal_rx.__UNIQUE_ID_ddebug479, !75, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/bluetooth/hci_h5.c", i32 364, i32 3}
!80 = !{ptr @h5_handle_internal_rx.__UNIQUE_ID_ddebug480, !79, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!81 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/bluetooth/hci_h5.c", i32 369, i32 3}
!83 = !{ptr @h5_handle_internal_rx.__UNIQUE_ID_ddebug481, !82, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/bluetooth/hci_h5.c", i32 373, i32 3}
!86 = !{ptr @h5_handle_internal_rx.__UNIQUE_ID_ddebug482, !85, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!87 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/bluetooth/hci_h5.c", i32 376, i32 3}
!89 = !{ptr @h5_handle_internal_rx.__UNIQUE_ID_ddebug483, !88, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!90 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/bluetooth/hci_h5.c", i32 380, i32 3}
!92 = !{ptr @h5_handle_internal_rx.__UNIQUE_ID_ddebug484, !91, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!93 = !{ptr @.str.33, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/bluetooth/hci_h5.c", i32 195, i32 2}
!95 = !{ptr @.str.34, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/bluetooth/hci_h5.c", i32 156, i32 2}
!97 = !{ptr @h5_timed_event.__UNIQUE_ID_ddebug476, !96, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!98 = !{ptr @.str.35, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/bluetooth/hci_h5.c", i32 176, i32 2}
!100 = !{ptr @h5_timed_event.__UNIQUE_ID_ddebug477, !99, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!101 = !{ptr @.str.36, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/bluetooth/hci_h5.c", i32 798, i32 2}
!103 = !{ptr @h5_flush.__UNIQUE_ID_ddebug490, !102, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!104 = !{ptr @.str.37, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/bluetooth/hci_h5.c", i32 563, i32 2}
!106 = !{ptr @.str.38, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @h5_recv.__UNIQUE_ID_ddebug487, !105, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!108 = !{ptr @.str.39, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/bluetooth/hci_h5.c", i32 571, i32 5}
!110 = !{ptr @.str.40, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/bluetooth/hci_h5.c", i32 534, i32 4}
!112 = !{ptr @.str.41, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/bluetooth/hci_h5.c", i32 543, i32 2}
!114 = !{ptr @.str.42, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @h5_unslip_one_byte.__UNIQUE_ID_ddebug486, !113, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!116 = !{ptr @.str.43, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/bluetooth/hci_h5.c", i32 604, i32 3}
!118 = !{ptr @.str.44, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/bluetooth/hci_h5.c", i32 610, i32 3}
!120 = !{ptr @.str.45, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/bluetooth/hci_h5.c", i32 627, i32 3}
!122 = !{ptr @.str.46, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/bluetooth/hci_h5.c", i32 748, i32 3}
!124 = !{ptr @.str.47, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @h5_dequeue.__UNIQUE_ID_ddebug489, !123, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!126 = !{ptr @.str.48, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/bluetooth/hci_h5.c", i32 764, i32 3}
!128 = !{ptr @.str.49, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/bluetooth/hci_h5.c", i32 719, i32 2}
!130 = !{ptr @.str.50, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @h5_prepare_pkt.__UNIQUE_ID_ddebug488, !129, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!132 = !{i32 1, !"wchar_size", i32 2}
!133 = !{i32 1, !"min_enum_size", i32 4}
!134 = !{i32 8, !"branch-target-enforcement", i32 0}
!135 = !{i32 8, !"sign-return-address", i32 0}
!136 = !{i32 8, !"sign-return-address-all", i32 0}
!137 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!138 = !{i32 7, !"uwtable", i32 1}
!139 = !{i32 7, !"frame-pointer", i32 2}
!140 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!141 = !{!"auto-init"}
!142 = !{i8 0, i8 2}
!143 = !{i64 2148971687, i64 2148971692, i64 2148971705, i64 2148971749, i64 2148971783, i64 2148971804}
