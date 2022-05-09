; ModuleID = '/llk/IR_all_yes/drivers/bluetooth/hci_ll.c_pt.bc'
source_filename = "../drivers/bluetooth/hci_ll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.serdev_device_driver = type { %struct.device_driver, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hci_uart_proto = type { i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.h4_recv_pkt = type { i8, i8, i8, i8, i16, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.hci_uart = type { ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.work_struct, ptr, %struct.percpu_rw_semaphore, ptr, ptr, i32, i32, i32, i8, i8 }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rcuwait = type { ptr }
%struct.ll_device = type { %struct.hci_uart, ptr, ptr, ptr, %struct.bdaddr_t }
%struct.bdaddr_t = type { [6 x i8] }
%struct.ll_struct = type { ptr, %struct.sk_buff_head, %struct.spinlock, i32, %struct.sk_buff_head }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
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
%struct.hci_rp_read_local_version = type <{ i8, i8, i16, i8, i16, i16 }>
%struct.firmware = type { i32, ptr, ptr }
%struct.bts_action = type { i16, i16, [0 x i8] }
%struct.hci_command = type <{ i8, i16, i8, i32 }>

@hci_ti_drv = internal global { %struct.serdev_device_driver, [44 x i8] } { %struct.serdev_device_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hci_ti_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @hci_ti_probe, ptr @hci_ti_remove }, [44 x i8] zeroinitializer }, align 32
@llp = internal constant { %struct.hci_uart_proto, [44 x i8] } { %struct.hci_uart_proto { i32 4, ptr @.str.17, i32 0, i32 0, i32 0, ptr @ll_open, ptr @ll_close, ptr @ll_flush, ptr @ll_setup, ptr null, ptr @ll_recv, ptr @ll_enqueue, ptr @ll_dequeue }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hci-ti\00", [25 x i8] zeroinitializer }, align 32
@hci_ti_of_match = internal constant { [13 x %struct.of_device_id], [620 x i8] } { [13 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,cc2560\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,wl1271-st\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,wl1273-st\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,wl1281-st\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,wl1283-st\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,wl1285-st\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,wl1801-st\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,wl1805-st\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,wl1807-st\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,wl1831-st\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,wl1835-st\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,wl1837-st\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [620 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ext_clock\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"max-speed\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bd-address\00", [21 x i8] zeroinitializer }, align 32
@hci_ti_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 732, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to get \22bd-address\22 nvmem cell (%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hci_ti_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/bluetooth/hci_ll.c\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hci_ti_probe._entry_ptr = internal global ptr @hci_ti_probe._entry, section ".printk_index", align 4
@hci_ti_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 742, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to read nvmem bd-address\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@hci_ti_probe._entry_ptr.13 = internal global ptr @hci_ti_probe._entry.10, section ".printk_index", align 4
@hci_ti_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.7, i32 746, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid nvmem bd-address length\0A\00", [63 x i8] zeroinitializer }, align 32
@hci_ti_probe._entry_ptr.16 = internal global ptr @hci_ti_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"LL\00", [29 x i8] zeroinitializer }, align 32
@ll_open.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.7, ptr @.str.20, i8 0, i8 28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hci_uart\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ll_open\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hu %p\0A\00", [25 x i8] zeroinitializer }, align 32
@ll_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ll->hcill_lock\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@ll_close.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.23, ptr @.str.7, ptr @.str.20, i8 0, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ll_close\00", [23 x i8] zeroinitializer }, align 32
@ll_flush.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.24, ptr @.str.7, ptr @.str.20, i8 0, i8 36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ll_flush\00", [23 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Failed to get CTS\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: download firmware failed, retrying...\0A\00", [53 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ti-connectivity/TIInit_%d.%d.%d.bts\00", [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: request_firmware failed(errno %d) for %s\0A\00", [50 x i8] zeroinitializer }, align 32
@download_firmware.__UNIQUE_ID_ddebug495 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.29, ptr @.str.7, ptr @.str.30, i8 0, i8 -117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"download_firmware\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s:  action size %d, type %d \0A\00", [33 x i8] zeroinitializer }, align 32
@download_firmware.__UNIQUE_ID_ddebug496 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.29, ptr @.str.7, ptr @.str.31, i8 0, i8 -116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s: S\0A\00", [25 x i8] zeroinitializer }, align 32
@download_firmware.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.29, ptr @.str.7, ptr @.str.32, i8 0, i8 -114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s: W\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: sleep command in scr\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: Reading TI version information failed (%ld)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Failed to read TI version info: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: change remote baud rate command in firmware\0A\00", [47 x i8] zeroinitializer }, align 32
@send_command_from_firmware.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.37, ptr @.str.7, ptr @.str.38, i8 0, i8 125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"send_command_from_firmware\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: command type %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: send command failed\0A\00", [39 x i8] zeroinitializer }, align 32
@ll_recv_pkts = internal constant { [7 x %struct.h4_recv_pkt], [44 x i8] } { [7 x %struct.h4_recv_pkt] [%struct.h4_recv_pkt { i8 2, i8 4, i8 2, i8 2, i16 1028, ptr @hci_recv_frame }, %struct.h4_recv_pkt { i8 3, i8 3, i8 2, i8 1, i16 255, ptr @hci_recv_frame }, %struct.h4_recv_pkt { i8 4, i8 2, i8 1, i8 1, i16 260, ptr @hci_recv_frame }, %struct.h4_recv_pkt { i8 48, i8 0, i8 0, i8 0, i16 0, ptr @ll_recv_frame }, %struct.h4_recv_pkt { i8 49, i8 0, i8 0, i8 0, i16 0, ptr @ll_recv_frame }, %struct.h4_recv_pkt { i8 50, i8 0, i8 0, i8 0, i16 0, ptr @ll_recv_frame }, %struct.h4_recv_pkt { i8 51, i8 0, i8 0, i8 0, i16 0, ptr @ll_recv_frame }], [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Frame reassembly failed (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@ll_recv_frame.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.41, ptr @.str.7, ptr @.str.42, i8 0, i8 91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ll_recv_frame\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HCILL_GO_TO_SLEEP_IND packet\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: received HCILL_GO_TO_SLEEP_ACK in state %ld\0A\00", [47 x i8] zeroinitializer }, align 32
@ll_recv_frame.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.41, ptr @.str.7, ptr @.str.44, i8 0, i8 93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HCILL_WAKE_UP_IND packet\0A\00", [38 x i8] zeroinitializer }, align 32
@ll_recv_frame.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.41, ptr @.str.7, ptr @.str.45, i8 0, i8 94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HCILL_WAKE_UP_ACK packet\0A\00", [38 x i8] zeroinitializer }, align 32
@ll_device_want_to_sleep.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.46, ptr @.str.7, ptr @.str.20, i8 0, i8 63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ll_device_want_to_sleep\00", [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ERR: HCILL_GO_TO_SLEEP_IND in state %ld\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cannot acknowledge device sleep\0A\00", [63 x i8] zeroinitializer }, align 32
@send_hcill_cmd.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.49, ptr @.str.7, ptr @.str.50, i8 0, i8 22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"send_hcill_cmd\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hu %p cmd 0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"cannot allocate memory for HCILL packet\0A\00", [55 x i8] zeroinitializer }, align 32
@ll_device_want_to_wakeup.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.52, ptr @.str.7, ptr @.str.20, i8 0, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ll_device_want_to_wakeup\00", [39 x i8] zeroinitializer }, align 32
@ll_device_want_to_wakeup.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.52, ptr @.str.7, ptr @.str.53, i8 0, i8 55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dual wake-up-indication\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cannot acknowledge device wake up\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"received HCILL_WAKE_UP_IND in state %ld\0A\00", [55 x i8] zeroinitializer }, align 32
@ll_device_woke_up.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.56, ptr @.str.7, ptr @.str.20, i8 0, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ll_device_woke_up\00", [46 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"received HCILL_WAKE_UP_ACK in state %ld\0A\00", [55 x i8] zeroinitializer }, align 32
@ll_enqueue.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.58, ptr @.str.7, ptr @.str.59, i8 0, i8 78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ll_enqueue\00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hu %p skb %p\0A\00", [18 x i8] zeroinitializer }, align 32
@ll_enqueue.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.58, ptr @.str.7, ptr @.str.60, i8 0, i8 81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"device awake, sending normally\0A\00", [32 x i8] zeroinitializer }, align 32
@ll_enqueue.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.58, ptr @.str.7, ptr @.str.61, i8 0, i8 82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"device asleep, waking up and queueing packet\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot wake up device\0A\00", [41 x i8] zeroinitializer }, align 32
@ll_enqueue.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.58, ptr @.str.7, ptr @.str.63, i8 0, i8 85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"device waking up, queueing packet\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"illegal hcill state: %ld (losing packet)\0A\00", [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4294966779, i64 4294967258, i64 4294967294]
@__sancov_gen_cov_switch_values.65 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.66 = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.67 = internal global [6 x i64] [i64 4, i64 8, i64 48, i64 49, i64 50, i64 51]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.69 = private unnamed_addr constant [11 x i8] c"hci_ti_drv\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 786, i32 36 }
@___asan_gen_.72 = private unnamed_addr constant [4 x i8] c"llp\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 798, i32 36 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 788, i32 11 }
@___asan_gen_.78 = private unnamed_addr constant [16 x i8] c"hci_ti_of_match\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 769, i32 34 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 701, i32 12 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 706, i32 46 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 710, i32 44 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 714, i32 45 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 730, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 742, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 746, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 800, i32 11 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 115, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 123, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1984, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 157, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 144, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 632, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 641, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 537, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 542, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 555, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 563, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 571, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 574, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 462, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 481, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 495, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 500, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 505, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant [13 x i8] c"ll_recv_pkts\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 414, i32 33 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 436, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 364, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 369, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 373, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 377, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 255, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 262, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 267, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 91, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 96, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 204, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 221, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 226, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 232, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 289, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 296, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 315, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 326, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 330, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 335, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 341, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.277 = private constant [30 x i8] c"../drivers/bluetooth/hci_ll.c\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 346, i32 3 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @hci_ti_probe._entry, ptr @hci_ti_probe._entry.10, ptr @hci_ti_probe._entry.14, ptr @hci_ti_probe._entry_ptr, ptr @hci_ti_probe._entry_ptr.13, ptr @hci_ti_probe._entry_ptr.16, ptr @ll_deinit, ptr @hci_ti_drv, ptr @llp, ptr @.str, ptr @hci_ti_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @ll_open.__key, ptr @.str.21, ptr @skb_queue_head_init.__key, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @ll_recv_pkts, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_ti_drv to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llp to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_ti_of_match to i32), i32 2548, i32 3168, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_ti_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_ti_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_ti_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ll_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ll_recv_pkts to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ll_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__serdev_device_driver_register(ptr noundef nonnull @hci_ti_drv, ptr noundef null) #9
  %call1 = tail call i32 @hci_uart_register_proto(ptr noundef nonnull @llp) #9
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serdev_device_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_register_proto(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ll_deinit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @driver_unregister(ptr noundef nonnull @hci_ti_drv) #9
  %call = tail call i32 @hci_uart_unregister_proto(ptr noundef nonnull @llp) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_unregister_proto(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_ti_probe(ptr noundef %serdev) #2 align 64 {
entry:
  %max_speed = alloca i32, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_speed) #9
  %0 = ptrtoint ptr %max_speed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3000000, ptr %max_speed, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %serdev, i32 noundef 316, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup66_crit_edge, label %if.end

entry.cleanup66_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup66

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %serdev2 = getelementptr inbounds %struct.hci_uart, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %serdev2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %serdev, ptr %serdev2, align 4
  %serdev3 = getelementptr inbounds %struct.ll_device, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %serdev3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %serdev, ptr %serdev3, align 4
  %call5 = tail call ptr @devm_gpiod_get_optional(ptr noundef %serdev, ptr noundef nonnull @.str.1, i32 noundef 3) #9
  %enable_gpio = getelementptr inbounds %struct.ll_device, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %enable_gpio, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call5 to i32
  br label %cleanup66

if.end11:                                         ; preds = %if.end
  %call13 = tail call ptr @devm_clk_get(ptr noundef %serdev, ptr noundef nonnull @.str.2) #9
  %ext_clk = getelementptr inbounds %struct.ll_device, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %ext_clk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call13, ptr %ext_clk, align 4
  %cmp.i107 = icmp ule ptr %call13, inttoptr (i32 -4096 to ptr)
  %7 = ptrtoint ptr %call13 to i32
  %cmp.not = icmp eq ptr %call13, inttoptr (i32 -2 to ptr)
  %or.cond = or i1 %cmp.i107, %cmp.not
  br i1 %or.cond, label %if.end21, label %if.end11.cleanup66_crit_edge

if.end11.cleanup66_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup66

if.end21:                                         ; preds = %if.end11
  %of_node = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull %max_speed, i32 noundef 1, i32 noundef 0) #9
  %10 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_speed, align 4
  call void @hci_uart_set_speeds(ptr noundef nonnull %call.i, i32 noundef 115200, i32 noundef %11) #9
  %call25 = call ptr @nvmem_cell_get(ptr noundef %serdev, ptr noundef nonnull @.str.4) #9
  %cmp.i108 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i108, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end21
  %12 = ptrtoint ptr %call25 to i32
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %do.end [
    i32 -517, label %if.then27.cleanup66_crit_edge
    i32 -2, label %if.then27.if.end64_crit_edge
    i32 -38, label %if.then27.if.end64_crit_edge112
  ]

if.then27.if.end64_crit_edge112:                  ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.then27.if.end64_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.then27.cleanup66_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup66

do.end:                                           ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %serdev, ptr noundef nonnull @.str.5, i32 noundef %12) #12
  %bdaddr = getelementptr inbounds %struct.ll_device, ptr %call.i, i32 0, i32 4
  %14 = call ptr @memset(ptr %bdaddr, i32 255, i32 6)
  br label %if.end64

if.else:                                          ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #9
  %15 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %len, align 4, !annotation !154
  %call43 = call ptr @nvmem_cell_read(ptr noundef %call25, ptr noundef nonnull %len) #9
  call void @nvmem_cell_put(ptr noundef %call25) #9
  %cmp.i109 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i109, label %do.end48, label %if.end51

do.end48:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %serdev, ptr noundef nonnull @.str.11) #12
  %16 = ptrtoint ptr %call43 to i32
  br label %cleanup60.thread

if.end51:                                         ; preds = %if.else
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %18)
  %cmp52.not = icmp eq i32 %18, 6
  br i1 %cmp52.not, label %cleanup60, label %do.end56

do.end56:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %serdev, ptr noundef nonnull @.str.15) #12
  call void @kfree(ptr noundef %call43) #9
  br label %cleanup60.thread

cleanup60.thread:                                 ; preds = %do.end56, %do.end48
  %retval.1.ph = phi i32 [ -22, %do.end56 ], [ %16, %do.end48 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #9
  br label %cleanup66

cleanup60:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %bdaddr59 = getelementptr inbounds %struct.ll_device, ptr %call.i, i32 0, i32 4
  call void @baswap(ptr noundef %bdaddr59, ptr noundef %call43) #9
  call void @kfree(ptr noundef %call43) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #9
  br label %if.end64

if.end64:                                         ; preds = %cleanup60, %do.end, %if.then27.if.end64_crit_edge, %if.then27.if.end64_crit_edge112
  %call65 = call i32 @hci_uart_register_device(ptr noundef nonnull %call.i, ptr noundef nonnull @llp) #9
  br label %cleanup66

cleanup66:                                        ; preds = %if.end64, %cleanup60.thread, %if.then27.cleanup66_crit_edge, %if.end11.cleanup66_crit_edge, %if.then8, %entry.cleanup66_crit_edge
  %retval.2 = phi i32 [ %5, %if.then8 ], [ %call65, %if.end64 ], [ -12, %entry.cleanup66_crit_edge ], [ %12, %if.then27.cleanup66_crit_edge ], [ %retval.1.ph, %cleanup60.thread ], [ %7, %if.end11.cleanup66_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_speed) #9
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hci_ti_remove(ptr nocapture noundef readonly %serdev) #2 align 64 {
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_uart_set_speeds(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_cell_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_cell_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmem_cell_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @baswap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_uart_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ll_open(ptr noundef %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ll_open.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ll_open, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !155

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ll_open.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.20, ptr noundef %hu) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 164) #13
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %txq = getelementptr inbounds %struct.ll_struct, ptr %call7.i.i, i32 0, i32 1
  %lock.i = getelementptr inbounds %struct.ll_struct, ptr %call7.i.i, i32 0, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #9
  %1 = ptrtoint ptr %txq to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %txq, ptr %txq, align 4
  %prev.i.i = getelementptr inbounds %struct.ll_struct, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %txq, ptr %prev.i.i, align 8
  %qlen.i.i = getelementptr inbounds %struct.ll_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %qlen.i.i, align 4
  %tx_wait_q = getelementptr inbounds %struct.ll_struct, ptr %call7.i.i, i32 0, i32 4
  %lock.i30 = getelementptr inbounds %struct.ll_struct, ptr %call7.i.i, i32 0, i32 4, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i30, ptr noundef nonnull @.str.22, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #9
  %4 = ptrtoint ptr %tx_wait_q to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tx_wait_q, ptr %tx_wait_q, align 4
  %prev.i.i31 = getelementptr inbounds %struct.ll_struct, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i31 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %tx_wait_q, ptr %prev.i.i31, align 8
  %qlen.i.i32 = getelementptr inbounds %struct.ll_struct, ptr %call7.i.i, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %qlen.i.i32 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %qlen.i.i32, align 4
  %hcill_lock = getelementptr inbounds %struct.ll_struct, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %hcill_lock, ptr noundef nonnull @.str.21, ptr noundef nonnull @ll_open.__key, i16 noundef signext 3) #9
  %hcill_state = getelementptr inbounds %struct.ll_struct, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %hcill_state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %hcill_state, align 8
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %priv, align 4
  %serdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 1
  %9 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %serdev, align 4
  %tobool11.not = icmp eq ptr %10, null
  br i1 %tobool11.not, label %if.end6.cleanup_crit_edge, label %if.then12

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then12:                                        ; preds = %if.end6
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i, align 4
  %ext_clk = getelementptr inbounds %struct.ll_device, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %ext_clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ext_clk, align 4
  %cmp.i = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12.cleanup_crit_edge, label %if.then16

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then16:                                        ; preds = %if.then12
  %call.i = tail call i32 @clk_prepare(ptr noundef %14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then16
  %call1.i = tail call i32 @clk_enable(ptr noundef %14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %14) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i, %if.end.i.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end.cleanup_crit_edge ], [ 0, %if.then12.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %if.then16.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.then3.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ll_close(ptr noundef %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ll_close.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ll_close, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !155

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ll_close.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.20, ptr noundef %hu) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tx_wait_q = getelementptr inbounds %struct.ll_struct, ptr %1, i32 0, i32 4
  tail call void @skb_queue_purge(ptr noundef %tx_wait_q) #9
  %txq = getelementptr inbounds %struct.ll_struct, ptr %1, i32 0, i32 1
  tail call void @skb_queue_purge(ptr noundef %txq) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #9
  %serdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 1
  %4 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serdev, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %do.end.if.end7_crit_edge, label %if.then4

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %enable_gpio = getelementptr inbounds %struct.ll_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 0) #9
  %ext_clk = getelementptr inbounds %struct.ll_device, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %ext_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ext_clk, align 4
  tail call void @clk_disable(ptr noundef %11) #9
  tail call void @clk_unprepare(ptr noundef %11) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %do.end.if.end7_crit_edge
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %priv, align 4
  tail call void @kfree(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ll_flush(ptr noundef %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ll_flush.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ll_flush, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !155

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ll_flush.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.20, ptr noundef %hu) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tx_wait_q = getelementptr inbounds %struct.ll_struct, ptr %1, i32 0, i32 4
  tail call void @skb_queue_purge(ptr noundef %tx_wait_q) #9
  %txq = getelementptr inbounds %struct.ll_struct, ptr %1, i32 0, i32 1
  tail call void @skb_queue_purge(ptr noundef %txq) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ll_setup(ptr nocapture noundef readonly %hu) #2 align 64 {
entry:
  %bdaddr_swapped.i = alloca %struct.bdaddr_t, align 1
  %.compoundliteral = alloca %struct.bdaddr_t, align 1
  %.compoundliteral30 = alloca %struct.bdaddr_t, align 1
  %speed_le = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %serdev1 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 1
  %0 = ptrtoint ptr %serdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serdev1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %4 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev, align 4
  %set_bdaddr = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 242
  %6 = ptrtoint ptr %set_bdaddr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ll_set_bdaddr, ptr %set_bdaddr, align 8
  tail call void @serdev_device_set_flow_control(ptr noundef nonnull %1, i1 noundef zeroext true) #9
  %enable_gpio = getelementptr inbounds %struct.ll_device, ptr %3, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %if.end12.do.body_crit_edge, %if.end
  %retry.0 = phi i32 [ 3, %if.end ], [ %dec16, %if.end12.do.body_crit_edge ]
  %7 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %8, i32 noundef 0) #9
  tail call void @msleep(i32 noundef 5) #9
  %9 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %10, i32 noundef 1) #9
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.body
  %__ms.0121 = phi i32 [ 100, %do.body ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.0121, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #9
  %tobool3.not = icmp eq i32 %dec, 0
  br i1 %tobool3.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -20, %12
  %13 = load volatile i32, ptr @jiffies, align 128
  %sub1.i = add i32 %add.neg.i, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i)
  %cmp2.i = icmp slt i32 %sub1.i, 0
  br i1 %cmp2.i, label %while.end.while.body.i_crit_edge, label %while.end.if.then6_crit_edge

while.end.if.then6_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

while.end.while.body.i_crit_edge:                 ; preds = %while.end
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.end.while.body.i_crit_edge
  %call.i.i = tail call i32 @serdev_device_get_tiocm(ptr noundef nonnull %1) #9
  %and.i.i = and i32 %call.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %if.end8

if.end.i:                                         ; preds = %while.body.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %14, %add.neg.i
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.if.then6_crit_edge

if.end.i.if.then6_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.then6:                                         ; preds = %if.end.i.if.then6_crit_edge, %while.end.if.then6_crit_edge
  %15 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %16, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.25, ptr noundef %name) #9
  br label %cleanup

if.end8:                                          ; preds = %while.body.i
  %call9 = tail call fastcc i32 @download_firmware(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end20, label %if.end12

if.end12:                                         ; preds = %if.end8
  %17 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hdev, align 4
  %name14 = getelementptr inbounds %struct.hci_dev, ptr %18, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.26, ptr noundef %name14) #9
  %dec16 = add nsw i32 %retry.0, -1
  %tobool17.not = icmp eq i32 %retry.0, 0
  br i1 %tobool17.not, label %if.end12.cleanup_crit_edge, label %if.end12.do.body_crit_edge

if.end12.do.body_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %if.end8
  %bdaddr = getelementptr inbounds %struct.ll_device, ptr %3, i32 0, i32 4
  %19 = call ptr @memset(ptr %.compoundliteral, i32 255, i32 6)
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(6) %bdaddr, ptr noundef nonnull dereferenceable(6) %.compoundliteral, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool26.not = icmp eq i32 %bcmp, 0
  br i1 %tobool26.not, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hdev, align 4
  %quirks = getelementptr inbounds %struct.hci_dev, ptr %21, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 7, ptr noundef %quirks) #9
  br label %if.end50

if.else:                                          ; preds = %if.end20
  %22 = call ptr @memset(ptr %.compoundliteral30, i32 0, i32 6)
  %bcmp118 = call i32 @bcmp(ptr noundef dereferenceable(6) %bdaddr, ptr noundef nonnull dereferenceable(6) %.compoundliteral30, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp118)
  %tobool39.not = icmp eq i32 %bcmp118, 0
  br i1 %tobool39.not, label %if.else.if.end50_crit_edge, label %if.then40

if.else.if.end50_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then40:                                        ; preds = %if.else
  %23 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hdev, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bdaddr_swapped.i) #9
  %25 = call ptr @memset(ptr %bdaddr_swapped.i, i32 255, i32 6)
  call void @baswap(ptr noundef nonnull %bdaddr_swapped.i, ptr noundef %bdaddr) #9
  %call1.i = call ptr @__hci_cmd_sync(ptr noundef %24, i16 noundef zeroext -1018, i32 noundef 6, ptr noundef nonnull %bdaddr_swapped.i, i32 noundef 1000) #9
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %ll_set_bdaddr.exit, label %ll_set_bdaddr.exit.thread

ll_set_bdaddr.exit.thread:                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree_skb_reason(ptr noundef %call1.i, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bdaddr_swapped.i) #9
  br label %if.end50

ll_set_bdaddr.exit:                               ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bdaddr_swapped.i) #9
  %26 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hdev, align 4
  %quirks47 = getelementptr inbounds %struct.hci_dev, ptr %27, i32 0, i32 118
  call void @_set_bit(i32 noundef 7, ptr noundef %quirks47) #9
  br label %if.end50

if.end50:                                         ; preds = %ll_set_bdaddr.exit, %ll_set_bdaddr.exit.thread, %if.else.if.end50_crit_edge, %if.then27
  %oper_speed = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 13
  %28 = ptrtoint ptr %oper_speed to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %oper_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool51.not = icmp eq i32 %29, 0
  br i1 %tobool51.not, label %if.end62, label %if.end50.if.then64_crit_edge

if.end50.if.then64_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then64

if.end62:                                         ; preds = %if.end50
  %proto = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 7
  %30 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %proto, align 4
  %oper_speed55 = getelementptr inbounds %struct.hci_uart_proto, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %oper_speed55 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %oper_speed55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool63.not = icmp eq i32 %33, 0
  br i1 %tobool63.not, label %if.end62.cleanup_crit_edge, label %if.end62.if.then64_crit_edge

if.end62.if.then64_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then64

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then64:                                        ; preds = %if.end62.if.then64_crit_edge, %if.end50.if.then64_crit_edge
  %speed.0117 = phi i32 [ %33, %if.end62.if.then64_crit_edge ], [ %29, %if.end50.if.then64_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %speed_le) #9
  %34 = call i32 @llvm.bswap.i32(i32 %speed.0117)
  %35 = ptrtoint ptr %speed_le to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %speed_le, align 4
  %36 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hdev, align 4
  %call67 = call ptr @__hci_cmd_sync(ptr noundef %37, i16 noundef zeroext -202, i32 noundef 4, ptr noundef nonnull %speed_le, i32 noundef 1000) #9
  %cmp.i109 = icmp ugt ptr %call67, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i109, label %if.then64.if.end71_crit_edge, label %if.then69

if.then64.if.end71_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.then69:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree_skb_reason(ptr noundef %call67, i32 noundef 0) #9
  %call70 = call i32 @serdev_device_set_baudrate(ptr noundef nonnull %1, i32 noundef %speed.0117) #9
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.then64.if.end71_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speed_le) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %if.end62.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.then6 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end71 ], [ 0, %if.end62.cleanup_crit_edge ], [ %call9, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ll_recv(ptr noundef %hu, ptr noundef %data, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %flags = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %5 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hdev, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call1 = tail call ptr @h4_recv_buf(ptr noundef %6, ptr noundef %8, ptr noundef %data, i32 noundef %count, ptr noundef nonnull @ll_recv_pkts, i32 noundef 7) #9
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call1, ptr %1, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %call1 to i32
  %11 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %12, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.40, ptr noundef %name, i32 noundef %10) #9
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then5 ], [ -49, %entry.cleanup_crit_edge ], [ %count, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ll_enqueue(ptr noundef %hu, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ll_enqueue.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ll_enqueue, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !155

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ll_enqueue.__UNIQUE_ID_ddebug487, ptr noundef nonnull @.str.59, ptr noundef %hu, ptr noundef %skb) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #9
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cb, align 8
  %4 = ptrtoint ptr %call3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %call3, align 1
  %hcill_lock = getelementptr inbounds %struct.ll_struct, ptr %1, i32 0, i32 2
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hcill_lock) #9
  %hcill_state = getelementptr inbounds %struct.ll_struct, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %hcill_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hcill_state, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %6, label %sw.default [
    i32 2, label %do.body13
    i32 0, label %do.body30
    i32 1, label %do.body53
  ]

do.body13:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ll_enqueue.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ll_enqueue, %if.then25)) #9
          to label %do.end28 [label %if.then25], !srcloc !155

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ll_enqueue.__UNIQUE_ID_ddebug488, ptr noundef nonnull @.str.60) #9
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %do.body13
  %txq = getelementptr inbounds %struct.ll_struct, ptr %1, i32 0, i32 1
  tail call void @skb_queue_tail(ptr noundef %txq, ptr noundef %skb) #9
  br label %sw.epilog

do.body30:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ll_enqueue.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ll_enqueue, %if.then42)) #9
          to label %do.end45 [label %if.then42], !srcloc !155

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ll_enqueue.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.61) #9
  br label %do.end45

do.end45:                                         ; preds = %if.then42, %do.body30
  %tx_wait_q = getelementptr inbounds %struct.ll_struct, ptr %1, i32 0, i32 4
  tail call void @skb_queue_tail(ptr noundef %tx_wait_q, ptr noundef %skb) #9
  %call46 = tail call fastcc i32 @send_hcill_cmd(i8 noundef zeroext 50, ptr noundef %hu)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.62) #9
  br label %sw.epilog

if.end50:                                         ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %hcill_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %hcill_state, align 4
  br label %sw.epilog

do.body53:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ll_enqueue.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ll_enqueue, %if.then65)) #9
          to label %do.end68 [label %if.then65], !srcloc !155

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ll_enqueue.__UNIQUE_ID_ddebug490, ptr noundef nonnull @.str.63) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %do.body53
  %tx_wait_q69 = getelementptr inbounds %struct.ll_struct, ptr %1, i32 0, i32 4
  tail call void @skb_queue_tail(ptr noundef %tx_wait_q69, ptr noundef %skb) #9
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.64, i32 noundef %6) #9
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end68, %if.end50, %if.then49, %do.end28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcill_lock, i32 noundef %call8) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ll_dequeue(ptr nocapture noundef readonly %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %txq = getelementptr inbounds %struct.ll_struct, ptr %1, i32 0, i32 1
  %call = tail call ptr @skb_dequeue(ptr noundef %txq) #9
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ll_set_bdaddr(ptr noundef %hdev, ptr noundef %bdaddr) #2 align 64 {
entry:
  %bdaddr_swapped = alloca %struct.bdaddr_t, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bdaddr_swapped) #9
  %0 = call ptr @memset(ptr %bdaddr_swapped, i32 255, i32 6)
  call void @baswap(ptr noundef nonnull %bdaddr_swapped, ptr noundef %bdaddr) #9
  %call1 = call ptr @__hci_cmd_sync(ptr noundef %hdev, i16 noundef zeroext -1018, i32 noundef 6, ptr noundef nonnull %bdaddr_swapped, i32 noundef 1000) #9
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree_skb_reason(ptr noundef %call1, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = ptrtoint ptr %call1 to i32
  %spec.select.i = select i1 %cmp.i, i32 %1, i32 0
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bdaddr_swapped) #9
  ret i32 %spec.select.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_set_flow_control(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @download_firmware(ptr nocapture noundef readonly %lldev) unnamed_addr #2 align 64 {
entry:
  %bts_scr_name = alloca [40 x i8], align 1
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %bts_scr_name) #9
  %0 = call ptr @memset(ptr %bts_scr_name, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #9
  %1 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !154
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %lldev, i32 0, i32 2
  %2 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev, align 4
  %call1.i = tail call ptr @__hci_cmd_sync(ptr noundef %3, i16 noundef zeroext 4097, i32 noundef 0, ptr noundef null, i32 noundef 1000) #9
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %read_local_version.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call1.i, i32 0, i32 6
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 9
  br i1 %cmp.not.i, label %if.end6.i, label %if.end.i.read_local_version.exit.thread_crit_edge

if.end.i.read_local_version.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_local_version.exit.thread

if.end6.i:                                        ; preds = %if.end.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call1.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %manufacturer.i = getelementptr inbounds %struct.hci_rp_read_local_version, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %manufacturer.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %manufacturer.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 3328, i16 %9)
  %cmp7.not.i = icmp eq i16 %9, 3328
  br i1 %cmp7.not.i, label %read_local_version.exit.thread152, label %if.end6.i.read_local_version.exit.thread_crit_edge

if.end6.i.read_local_version.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_local_version.exit.thread

read_local_version.exit.thread:                   ; preds = %if.end6.i.read_local_version.exit.thread_crit_edge, %if.end.i.read_local_version.exit.thread_crit_edge
  %err.0.ph.i = phi i32 [ -19, %if.end6.i.read_local_version.exit.thread_crit_edge ], [ -84, %if.end.i.read_local_version.exit.thread_crit_edge ]
  %name12.i = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.35, ptr noundef %name12.i, i32 noundef %err.0.ph.i) #9
  tail call void @kfree_skb_reason(ptr noundef %call1.i, i32 noundef 0) #9
  br label %cleanup

read_local_version.exit.thread152:                ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %lmp_subver.i = getelementptr inbounds %struct.hci_rp_read_local_version, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %lmp_subver.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %lmp_subver.i, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #9
  %phi.cast.i = zext i16 %12 to i32
  tail call void @kfree_skb_reason(ptr noundef %call1.i, i32 noundef 0) #9
  br label %if.end

read_local_version.exit:                          ; preds = %entry
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %call1.i to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.34, ptr noundef %name.i, i32 noundef %13) #9
  %cmp = icmp slt ptr %call1.i, null
  br i1 %cmp, label %read_local_version.exit.cleanup_crit_edge, label %read_local_version.exit.if.end_crit_edge

read_local_version.exit.if.end_crit_edge:         ; preds = %read_local_version.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

read_local_version.exit.cleanup_crit_edge:        ; preds = %read_local_version.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %read_local_version.exit.if.end_crit_edge, %read_local_version.exit.thread152
  %retval.0.i149155 = phi i32 [ %phi.cast.i, %read_local_version.exit.thread152 ], [ %13, %read_local_version.exit.if.end_crit_edge ]
  %14 = lshr i32 %retval.0.i149155, 10
  %conv = and i32 %14, 31
  %conv2 = and i32 %retval.0.i149155, 127
  %15 = lshr i32 %retval.0.i149155, 7
  %conv5 = and i32 %15, 7
  %16 = lshr i32 %retval.0.i149155, 12
  %17 = and i32 %16, 8
  %18 = or i32 %17, %conv5
  %call14 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %bts_scr_name, i32 noundef 40, ptr noundef nonnull @.str.27, i32 noundef %conv, i32 noundef %18, i32 noundef %conv2)
  %serdev = getelementptr inbounds %struct.ll_device, ptr %lldev, i32 0, i32 1
  %19 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %serdev, align 4
  %call16 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull %bts_scr_name, ptr noundef %20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %lor.lhs.false, label %if.end.if.then21_crit_edge

if.end.if.then21_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

lor.lhs.false:                                    ; preds = %if.end
  %21 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %tobool18.not = icmp eq ptr %24, null
  br i1 %tobool18.not, label %lor.lhs.false.if.then21_crit_edge, label %lor.lhs.false19

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

lor.lhs.false19:                                  ; preds = %lor.lhs.false
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool20.not = icmp eq i32 %26, 0
  br i1 %tobool20.not, label %lor.lhs.false19.if.then21_crit_edge, label %if.end26

lor.lhs.false19.if.then21_crit_edge:              ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.then21:                                        ; preds = %lor.lhs.false19.if.then21_crit_edge, %lor.lhs.false.if.then21_crit_edge, %if.end.if.then21_crit_edge
  %27 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %28, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.28, ptr noundef %name, i32 noundef %call16, ptr noundef nonnull %bts_scr_name) #9
  br label %cleanup

if.end26:                                         ; preds = %lor.lhs.false19
  %add.ptr = getelementptr i8, ptr %24, i32 32
  %sub = add i32 %26, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp29159 = icmp slt i32 %sub, 1
  %tobool31.not160 = icmp eq ptr %add.ptr, null
  %or.cond161 = select i1 %cmp29159, i1 true, i1 %tobool31.not160
  br i1 %or.cond161, label %if.end26.out_rel_fw_crit_edge, label %if.end26.do.body_crit_edge

if.end26.do.body_crit_edge:                       ; preds = %if.end26
  br label %do.body

if.end26.out_rel_fw_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_rel_fw

do.body:                                          ; preds = %sw.epilog.do.body_crit_edge, %if.end26.do.body_crit_edge
  %ptr.0163 = phi ptr [ %add.ptr104, %sw.epilog.do.body_crit_edge ], [ %add.ptr, %if.end26.do.body_crit_edge ]
  %len.0162 = phi i32 [ %sub100, %sw.epilog.do.body_crit_edge ], [ %sub, %if.end26.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @download_firmware.__UNIQUE_ID_ddebug495, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@download_firmware, %if.then36)) #9
          to label %do.end [label %if.then36], !srcloc !155

if.then36:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hdev, align 4
  %name39 = getelementptr inbounds %struct.hci_dev, ptr %30, i32 0, i32 2
  %size41 = getelementptr inbounds %struct.bts_action, ptr %ptr.0163, i32 0, i32 1
  %31 = ptrtoint ptr %size41 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %size41, align 1
  %conv42 = zext i16 %32 to i32
  %33 = ptrtoint ptr %ptr.0163 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %ptr.0163, align 1
  %conv43 = zext i16 %34 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @download_firmware.__UNIQUE_ID_ddebug495, ptr noundef nonnull @.str.30, ptr noundef %name39, i32 noundef %conv42, i32 noundef %conv43) #9
  br label %do.end

do.end:                                           ; preds = %if.then36, %do.body
  %data45 = getelementptr inbounds %struct.bts_action, ptr %ptr.0163, i32 0, i32 2
  %35 = ptrtoint ptr %ptr.0163 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %ptr.0163, align 1
  %37 = zext i16 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.66)
  switch i16 %36, label %do.end.sw.epilog_crit_edge [
    i16 1, label %do.body48
    i16 2, label %do.body73
    i16 4, label %sw.bb93
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body48:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @download_firmware.__UNIQUE_ID_ddebug496, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@download_firmware, %if.then60)) #9
          to label %do.end67 [label %if.then60], !srcloc !155

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hdev, align 4
  %name63 = getelementptr inbounds %struct.hci_dev, ptr %39, i32 0, i32 2
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @download_firmware.__UNIQUE_ID_ddebug496, ptr noundef nonnull @.str.31, ptr noundef %name63) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then60, %do.body48
  %call68 = call fastcc i32 @send_command_from_firmware(ptr noundef %lldev, ptr noundef %data45)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %do.end67.sw.epilog_crit_edge, label %do.end67.out_rel_fw_crit_edge

do.end67.out_rel_fw_crit_edge:                    ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_rel_fw

do.end67.sw.epilog_crit_edge:                     ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body73:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @download_firmware.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@download_firmware, %if.then85)) #9
          to label %sw.epilog [label %if.then85], !srcloc !155

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hdev, align 4
  %name88 = getelementptr inbounds %struct.hci_dev, ptr %41, i32 0, i32 2
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @download_firmware.__UNIQUE_ID_ddebug497, ptr noundef nonnull @.str.32, ptr noundef %name88) #9
  br label %sw.epilog

sw.bb93:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hdev, align 4
  %name96 = getelementptr inbounds %struct.hci_dev, ptr %43, i32 0, i32 2
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.33, ptr noundef %name96) #9
  %44 = ptrtoint ptr %data45 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %data45, align 1
  call void @msleep(i32 noundef %45) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb93, %if.then85, %do.body73, %do.end67.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge
  %size98 = getelementptr inbounds %struct.bts_action, ptr %ptr.0163, i32 0, i32 1
  %46 = ptrtoint ptr %size98 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %size98, align 1
  %conv99 = zext i16 %47 to i32
  %add = add nuw nsw i32 %conv99, 4
  %sub100 = sub nsw i32 %len.0162, %add
  %add.ptr104 = getelementptr i8, ptr %ptr.0163, i32 %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub100)
  %cmp29 = icmp slt i32 %sub100, 1
  %tobool31.not = icmp eq ptr %add.ptr104, null
  %or.cond = select i1 %cmp29, i1 true, i1 %tobool31.not
  br i1 %or.cond, label %sw.epilog.out_rel_fw_crit_edge, label %sw.epilog.do.body_crit_edge

sw.epilog.do.body_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.epilog.out_rel_fw_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_rel_fw

out_rel_fw:                                       ; preds = %sw.epilog.out_rel_fw_crit_edge, %do.end67.out_rel_fw_crit_edge, %if.end26.out_rel_fw_crit_edge
  %err.2 = phi i32 [ 0, %if.end26.out_rel_fw_crit_edge ], [ 0, %sw.epilog.out_rel_fw_crit_edge ], [ %call68, %do.end67.out_rel_fw_crit_edge ]
  %48 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %49) #9
  br label %cleanup

cleanup:                                          ; preds = %out_rel_fw, %if.then21, %read_local_version.exit.cleanup_crit_edge, %read_local_version.exit.thread
  %retval.0 = phi i32 [ -22, %if.then21 ], [ %err.2, %out_rel_fw ], [ %13, %read_local_version.exit.cleanup_crit_edge ], [ %err.0.ph.i, %read_local_version.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %bts_scr_name) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__hci_cmd_sync(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_set_baudrate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_get_tiocm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @send_command_from_firmware(ptr nocapture noundef readonly %lldev, ptr noundef %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %opcode = getelementptr inbounds %struct.hci_command, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %opcode to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %opcode, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -202, i16 %1)
  %cmp = icmp eq i16 %1, -202
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %lldev, i32 0, i32 2
  %2 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 2
  tail call void (ptr, ...) @bt_warn(ptr noundef nonnull @.str.36, ptr noundef %name) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cmd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp3.not = icmp eq i8 %5, 1
  br i1 %cmp3.not, label %if.end.if.end16_crit_edge, label %do.body

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_command_from_firmware.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_command_from_firmware, %if.then8)) #9
          to label %if.end16 [label %if.then8], !srcloc !155

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %hdev10 = getelementptr inbounds %struct.hci_uart, ptr %lldev, i32 0, i32 2
  %6 = ptrtoint ptr %hdev10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdev10, align 4
  %name11 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cmd, align 1
  %conv14 = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @send_command_from_firmware.__UNIQUE_ID_ddebug494, ptr noundef nonnull @.str.38, ptr noundef %name11, i32 noundef %conv14) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then8, %do.body, %if.end.if.end16_crit_edge
  %hdev18 = getelementptr inbounds %struct.hci_uart, ptr %lldev, i32 0, i32 2
  %10 = ptrtoint ptr %hdev18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hdev18, align 4
  %12 = ptrtoint ptr %opcode to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %opcode, align 1
  %plen = getelementptr inbounds %struct.hci_command, ptr %cmd, i32 0, i32 2
  %14 = ptrtoint ptr %plen to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %plen, align 1
  %conv20 = zext i8 %15 to i32
  %speed = getelementptr inbounds %struct.hci_command, ptr %cmd, i32 0, i32 3
  %call22 = tail call ptr @__hci_cmd_sync(ptr noundef %11, i16 noundef zeroext %13, i32 noundef %conv20, ptr noundef %speed, i32 noundef 1000) #9
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then24, label %if.end30

if.then24:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %hdev18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hdev18, align 4
  %name27 = getelementptr inbounds %struct.hci_dev, ptr %17, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.39, ptr noundef %name27) #9
  %18 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef %call22, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then24, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %18, %if.then24 ], [ 0, %if.end30 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_info(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_warn(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @h4_recv_buf(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_recv_frame(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ll_recv_frame(ptr noundef %hdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cb, align 8
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.67)
  switch i8 %3, label %entry.sw.epilog_crit_edge [
    i8 48, label %do.body
    i8 49, label %sw.bb4
    i8 50, label %do.body7
    i8 51, label %do.body24
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ll_recv_frame.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ll_recv_frame, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !155

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ll_recv_frame.__UNIQUE_ID_ddebug491, ptr noundef nonnull @.str.42) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  tail call fastcc void @ll_device_want_to_sleep(ptr noundef %1)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %priv = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %hcill_state = getelementptr inbounds %struct.ll_struct, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %hcill_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hcill_state, align 4
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.43, ptr noundef %name, i32 noundef %8) #9
  br label %sw.epilog

do.body7:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ll_recv_frame.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ll_recv_frame, %if.then19)) #9
          to label %do.end22 [label %if.then19], !srcloc !155

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ll_recv_frame.__UNIQUE_ID_ddebug492, ptr noundef nonnull @.str.44) #9
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %do.body7
  tail call fastcc void @ll_device_want_to_wakeup(ptr noundef %1)
  br label %sw.epilog

do.body24:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ll_recv_frame.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ll_recv_frame, %if.then36)) #9
          to label %do.end39 [label %if.then36], !srcloc !155

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ll_recv_frame.__UNIQUE_ID_ddebug493, ptr noundef nonnull @.str.45) #9
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body24
  tail call fastcc void @ll_device_woke_up(ptr noundef %1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end39, %do.end22, %sw.bb4, %do.end, %entry.sw.epilog_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ll_device_want_to_sleep(ptr noundef %hu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ll_device_want_to_sleep.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ll_device_want_to_sleep, %if.then)) #9
          to label %do.body4 [label %if.then], !srcloc !155

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ll_device_want_to_sleep.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.20, ptr noundef %hu) #9
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  %hcill_lock = getelementptr inbounds %struct.ll_struct, ptr %1, i32 0, i32 2
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hcill_lock) #9
  %hcill_state = getelementptr inbounds %struct.ll_struct, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %hcill_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hcill_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp12.not = icmp eq i32 %3, 2
  br i1 %cmp12.not, label %do.body4.if.end16_crit_edge, label %if.then14

do.body4.if.end16_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then14:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.47, i32 noundef %3) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %do.body4.if.end16_crit_edge
  %call17 = tail call fastcc i32 @send_hcill_cmd(i8 noundef zeroext 49, ptr noundef %hu)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.48) #9
  br label %out

if.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %hcill_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %hcill_state, align 4
  br label %out

out:                                              ; preds = %if.end21, %if.then20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcill_lock, i32 noundef %call7) #9
  %call24 = tail call i32 @hci_uart_tx_wakeup(ptr noundef %hu) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ll_device_want_to_wakeup(ptr noundef %hu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ll_device_want_to_wakeup.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ll_device_want_to_wakeup, %if.then)) #9
          to label %do.body4 [label %if.then], !srcloc !155

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ll_device_want_to_wakeup.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.20, ptr noundef %hu) #9
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  %hcill_lock = getelementptr inbounds %struct.ll_struct, ptr %1, i32 0, i32 2
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hcill_lock) #9
  %hcill_state = getelementptr inbounds %struct.ll_struct, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %hcill_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hcill_state, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %3, label %sw.default [
    i32 1, label %do.body12
    i32 0, label %do.body4.sw.bb28_crit_edge
  ]

do.body4.sw.bb28_crit_edge:                       ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb28

do.body12:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ll_device_want_to_wakeup.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ll_device_want_to_wakeup, %if.then24)) #9
          to label %sw.bb28 [label %if.then24], !srcloc !155

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ll_device_want_to_wakeup.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.53) #9
  br label %sw.bb28

sw.bb28:                                          ; preds = %if.then24, %do.body12, %do.body4.sw.bb28_crit_edge
  %call29 = tail call fastcc i32 @send_hcill_cmd(i8 noundef zeroext 51, ptr noundef %hu)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then32, label %sw.bb28.sw.epilog_crit_edge

sw.bb28.sw.epilog_crit_edge:                      ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then32:                                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.54) #9
  br label %out

sw.default:                                       ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.55, i32 noundef %3) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb28.sw.epilog_crit_edge
  %tx_wait_q.i = getelementptr inbounds %struct.ll_struct, ptr %1, i32 0, i32 4
  %call3.i = tail call ptr @skb_dequeue(ptr noundef %tx_wait_q.i) #9
  %tobool.not4.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not4.i, label %sw.epilog.__ll_do_awake.exit_crit_edge, label %while.body.lr.ph.i

sw.epilog.__ll_do_awake.exit_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %__ll_do_awake.exit

while.body.lr.ph.i:                               ; preds = %sw.epilog
  %txq.i = getelementptr inbounds %struct.ll_struct, ptr %1, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call5.i = phi ptr [ %call3.i, %while.body.lr.ph.i ], [ %call.i, %while.body.i.while.body.i_crit_edge ]
  tail call void @skb_queue_tail(ptr noundef %txq.i, ptr noundef nonnull %call5.i) #9
  %call.i = tail call ptr @skb_dequeue(ptr noundef %tx_wait_q.i) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.body.i.__ll_do_awake.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.__ll_do_awake.exit_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__ll_do_awake.exit

__ll_do_awake.exit:                               ; preds = %while.body.i.__ll_do_awake.exit_crit_edge, %sw.epilog.__ll_do_awake.exit_crit_edge
  %5 = ptrtoint ptr %hcill_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %hcill_state, align 4
  br label %out

out:                                              ; preds = %__ll_do_awake.exit, %if.then32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcill_lock, i32 noundef %call7) #9
  %call36 = tail call i32 @hci_uart_tx_wakeup(ptr noundef %hu) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ll_device_woke_up(ptr noundef %hu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ll_device_woke_up.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ll_device_woke_up, %if.then)) #9
          to label %do.body4 [label %if.then], !srcloc !155

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ll_device_woke_up.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.20, ptr noundef %hu) #9
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  %hcill_lock = getelementptr inbounds %struct.ll_struct, ptr %1, i32 0, i32 2
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hcill_lock) #9
  %hcill_state = getelementptr inbounds %struct.ll_struct, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %hcill_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hcill_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp12.not = icmp eq i32 %3, 1
  br i1 %cmp12.not, label %do.body4.if.end16_crit_edge, label %if.then14

do.body4.if.end16_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then14:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.57, i32 noundef %3) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %do.body4.if.end16_crit_edge
  %tx_wait_q.i = getelementptr inbounds %struct.ll_struct, ptr %1, i32 0, i32 4
  %call3.i = tail call ptr @skb_dequeue(ptr noundef %tx_wait_q.i) #9
  %tobool.not4.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not4.i, label %if.end16.__ll_do_awake.exit_crit_edge, label %while.body.lr.ph.i

if.end16.__ll_do_awake.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %__ll_do_awake.exit

while.body.lr.ph.i:                               ; preds = %if.end16
  %txq.i = getelementptr inbounds %struct.ll_struct, ptr %1, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call5.i = phi ptr [ %call3.i, %while.body.lr.ph.i ], [ %call.i, %while.body.i.while.body.i_crit_edge ]
  tail call void @skb_queue_tail(ptr noundef %txq.i, ptr noundef nonnull %call5.i) #9
  %call.i = tail call ptr @skb_dequeue(ptr noundef %tx_wait_q.i) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.body.i.__ll_do_awake.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.__ll_do_awake.exit_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__ll_do_awake.exit

__ll_do_awake.exit:                               ; preds = %while.body.i.__ll_do_awake.exit_crit_edge, %if.end16.__ll_do_awake.exit_crit_edge
  %4 = ptrtoint ptr %hcill_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %hcill_state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcill_lock, i32 noundef %call7) #9
  %call18 = tail call i32 @hci_uart_tx_wakeup(ptr noundef %hu) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @send_hcill_cmd(i8 noundef zeroext %cmd, ptr noundef %hu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_hcill_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_hcill_cmd, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !155

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %cmd to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @send_hcill_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.50, ptr noundef %hu, i32 noundef %conv) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 9, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #9
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then5, label %if.end6

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.51) #9
  br label %out

if.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %5, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 1) #9
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %cmd, ptr %call.i, align 1
  %txq = getelementptr inbounds %struct.ll_struct, ptr %1, i32 0, i32 1
  tail call void @skb_queue_tail(ptr noundef %txq, ptr noundef nonnull %call.i.i) #9
  br label %out

out:                                              ; preds = %if.end6, %if.then5
  %err.0 = phi i32 [ 0, %if.end6 ], [ -12, %if.then5 ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_tx_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !35, !37, !38, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !56, !58, !60, !62, !63, !64, !66, !67, !69, !70, !72, !74, !76, !78, !80, !81, !82, !84, !86, !88, !90, !91, !92, !94, !96, !97, !99, !100, !102, !103, !105, !107, !109, !110, !111, !113, !115, !116, !118, !119, !121, !123, !125, !126, !128, !130, !131, !132, !134, !135, !137, !138, !140, !142, !143}
!llvm.module.flags = !{!145, !146, !147, !148, !149, !150, !151, !152}
!llvm.ident = !{!153}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/bluetooth/hci_ll.c", i32 788, i32 11}
!2 = !{ptr @hci_ti_drv, !3, !"hci_ti_drv", i1 false, i1 false}
!3 = !{!"../drivers/bluetooth/hci_ll.c", i32 786, i32 36}
!4 = !{ptr @hci_ti_of_match, !5, !"hci_ti_of_match", i1 false, i1 false}
!5 = !{!"../drivers/bluetooth/hci_ll.c", i32 769, i32 34}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/bluetooth/hci_ll.c", i32 701, i32 12}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/bluetooth/hci_ll.c", i32 706, i32 46}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/bluetooth/hci_ll.c", i32 710, i32 44}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/bluetooth/hci_ll.c", i32 714, i32 45}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/bluetooth/hci_ll.c", i32 730, i32 4}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @hci_ti_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @hci_ti_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/bluetooth/hci_ll.c", i32 742, i32 4}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @hci_ti_probe._entry.10, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @hci_ti_probe._entry_ptr.13, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/bluetooth/hci_ll.c", i32 746, i32 4}
!29 = !{ptr @hci_ti_probe._entry.14, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @hci_ti_probe._entry_ptr.16, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/bluetooth/hci_ll.c", i32 800, i32 11}
!33 = !{ptr @llp, !34, !"llp", i1 false, i1 false}
!34 = !{!"../drivers/bluetooth/hci_ll.c", i32 798, i32 36}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/bluetooth/hci_ll.c", i32 115, i32 2}
!37 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ll_open.__UNIQUE_ID_ddebug480, !36, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!40 = !{ptr @ll_open.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/bluetooth/hci_ll.c", i32 123, i32 2}
!42 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @skb_queue_head_init.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!45 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/bluetooth/hci_ll.c", i32 157, i32 2}
!48 = !{ptr @ll_close.__UNIQUE_ID_ddebug482, !47, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/bluetooth/hci_ll.c", i32 144, i32 2}
!51 = !{ptr @ll_flush.__UNIQUE_ID_ddebug481, !50, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/bluetooth/hci_ll.c", i32 632, i32 4}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/bluetooth/hci_ll.c", i32 641, i32 3}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/bluetooth/hci_ll.c", i32 537, i32 4}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/bluetooth/hci_ll.c", i32 542, i32 3}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/bluetooth/hci_ll.c", i32 555, i32 3}
!62 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @download_firmware.__UNIQUE_ID_ddebug495, !61, !"__UNIQUE_ID_ddebug495", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/bluetooth/hci_ll.c", i32 563, i32 4}
!66 = !{ptr @download_firmware.__UNIQUE_ID_ddebug496, !65, !"__UNIQUE_ID_ddebug496", i1 false, i1 false}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/bluetooth/hci_ll.c", i32 571, i32 4}
!69 = !{ptr @download_firmware.__UNIQUE_ID_ddebug497, !68, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/bluetooth/hci_ll.c", i32 574, i32 4}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/bluetooth/hci_ll.c", i32 462, i32 3}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/bluetooth/hci_ll.c", i32 481, i32 3}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/bluetooth/hci_ll.c", i32 495, i32 3}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/bluetooth/hci_ll.c", i32 500, i32 3}
!80 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @send_command_from_firmware.__UNIQUE_ID_ddebug494, !79, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/bluetooth/hci_ll.c", i32 505, i32 3}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/bluetooth/hci_ll.c", i32 436, i32 3}
!86 = !{ptr @ll_recv_pkts, !87, !"ll_recv_pkts", i1 false, i1 false}
!87 = !{!"../drivers/bluetooth/hci_ll.c", i32 414, i32 33}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/bluetooth/hci_ll.c", i32 364, i32 3}
!90 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @ll_recv_frame.__UNIQUE_ID_ddebug491, !89, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/bluetooth/hci_ll.c", i32 369, i32 3}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/bluetooth/hci_ll.c", i32 373, i32 3}
!96 = !{ptr @ll_recv_frame.__UNIQUE_ID_ddebug492, !95, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!97 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/bluetooth/hci_ll.c", i32 377, i32 3}
!99 = !{ptr @ll_recv_frame.__UNIQUE_ID_ddebug493, !98, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/bluetooth/hci_ll.c", i32 255, i32 2}
!102 = !{ptr @ll_device_want_to_sleep.__UNIQUE_ID_ddebug485, !101, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/bluetooth/hci_ll.c", i32 262, i32 3}
!105 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/bluetooth/hci_ll.c", i32 267, i32 3}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/bluetooth/hci_ll.c", i32 91, i32 2}
!109 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @send_hcill_cmd.__UNIQUE_ID_ddebug479, !108, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/bluetooth/hci_ll.c", i32 96, i32 3}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/bluetooth/hci_ll.c", i32 204, i32 2}
!115 = !{ptr @ll_device_want_to_wakeup.__UNIQUE_ID_ddebug483, !114, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/bluetooth/hci_ll.c", i32 221, i32 3}
!118 = !{ptr @ll_device_want_to_wakeup.__UNIQUE_ID_ddebug484, !117, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!119 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/bluetooth/hci_ll.c", i32 226, i32 4}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/bluetooth/hci_ll.c", i32 232, i32 3}
!123 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/bluetooth/hci_ll.c", i32 289, i32 2}
!125 = !{ptr @ll_device_woke_up.__UNIQUE_ID_ddebug486, !124, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/bluetooth/hci_ll.c", i32 296, i32 3}
!128 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/bluetooth/hci_ll.c", i32 315, i32 2}
!130 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @ll_enqueue.__UNIQUE_ID_ddebug487, !129, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!132 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/bluetooth/hci_ll.c", i32 326, i32 3}
!134 = !{ptr @ll_enqueue.__UNIQUE_ID_ddebug488, !133, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!135 = !{ptr @.str.61, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/bluetooth/hci_ll.c", i32 330, i32 3}
!137 = !{ptr @ll_enqueue.__UNIQUE_ID_ddebug489, !136, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!138 = !{ptr @.str.62, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/bluetooth/hci_ll.c", i32 335, i32 4}
!140 = !{ptr @.str.63, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/bluetooth/hci_ll.c", i32 341, i32 3}
!142 = !{ptr @ll_enqueue.__UNIQUE_ID_ddebug490, !141, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!143 = !{ptr @.str.64, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/bluetooth/hci_ll.c", i32 346, i32 3}
!145 = !{i32 1, !"wchar_size", i32 2}
!146 = !{i32 1, !"min_enum_size", i32 4}
!147 = !{i32 8, !"branch-target-enforcement", i32 0}
!148 = !{i32 8, !"sign-return-address", i32 0}
!149 = !{i32 8, !"sign-return-address-all", i32 0}
!150 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!151 = !{i32 7, !"uwtable", i32 1}
!152 = !{i32 7, !"frame-pointer", i32 2}
!153 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!154 = !{!"auto-init"}
!155 = !{i64 2148971175, i64 2148971180, i64 2148971193, i64 2148971237, i64 2148971271, i64 2148971292}
