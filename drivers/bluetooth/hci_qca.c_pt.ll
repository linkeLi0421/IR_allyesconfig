; ModuleID = '/llk/IR_all_yes/drivers/bluetooth/hci_qca.c_pt.bc'
source_filename = "../drivers/bluetooth/hci_qca.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.serdev_device_driver = type { %struct.device_driver, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hci_uart_proto = type { i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qca_device_data = type { i32, ptr, i32, i32 }
%struct.qca_vreg = type { ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.qca_serdev = type { %struct.hci_uart, ptr, ptr, ptr, i32, ptr, i32, i32, ptr }
%struct.hci_uart = type { ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.work_struct, ptr, %struct.percpu_rw_semaphore, ptr, ptr, i32, i32, i32, i8, i8 }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rcuwait = type { ptr }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.qca_power = type { ptr, ptr, i32, i8 }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, i16, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.qca_data = type { ptr, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, i8, i8, i8, i8, %struct.timer_list, i32, %struct.timer_list, i32, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, ptr, i32, %struct.completion, %struct.wait_queue_head, i32, %struct.mutex, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i64 }
%struct.qca_btsoc_version = type { i32, i16, i16, i32 }
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
%struct.qca_memdump_event_hdr = type <{ i8, i8, i16, i16, i8 }>
%struct.qca_memdump_data = type { ptr, ptr, i32, i32, i32 }
%struct.serdev_device = type { %struct.device, i32, ptr, ptr, %struct.completion, %struct.mutex }

@qca_serdev_driver = internal global { %struct.serdev_device_driver, [44 x i8] } { %struct.serdev_device_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qca_bluetooth_of_match, ptr null, ptr null, ptr null, ptr null, ptr @qca_serdev_shutdown, ptr null, ptr null, ptr null, ptr null, ptr @qca_pm_ops, ptr null, ptr null }, ptr @qca_serdev_probe, ptr @qca_serdev_remove }, [44 x i8] zeroinitializer }, align 32
@qca_proto = internal constant { %struct.hci_uart_proto, [44 x i8] } { %struct.hci_uart_proto { i32 8, ptr @.str.60, i32 29, i32 115200, i32 3000000, ptr @qca_open, ptr @qca_close, ptr @qca_flush, ptr @qca_setup, ptr null, ptr @qca_recv, ptr @qca_enqueue, ptr @qca_dequeue }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hci_uart_qca\00", [19 x i8] zeroinitializer }, align 32
@qca_bluetooth_of_match = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,qca6174-bt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,qca6390-bt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @qca_soc_data_qca6390 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,qca9377-bt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,wcn3990-bt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @qca_soc_data_wcn3990 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,wcn3991-bt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @qca_soc_data_wcn3991 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,wcn3998-bt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @qca_soc_data_wcn3998 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,wcn6750-bt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @qca_soc_data_wcn6750 }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@qca_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @qca_suspend, ptr @qca_resume, ptr @qca_suspend, ptr @qca_resume, ptr @qca_suspend, ptr @qca_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@qca_soc_data_qca6390 = internal constant { %struct.qca_device_data, [16 x i8] } { %struct.qca_device_data { i32 5, ptr null, i32 0, i32 0 }, [16 x i8] zeroinitializer }, align 32
@qca_soc_data_wcn3990 = internal constant { %struct.qca_device_data, [16 x i8] } { %struct.qca_device_data { i32 2, ptr @.compoundliteral, i32 4, i32 0 }, [16 x i8] zeroinitializer }, align 32
@qca_soc_data_wcn3991 = internal constant { %struct.qca_device_data, [16 x i8] } { %struct.qca_device_data { i32 4, ptr @.compoundliteral.5, i32 4, i32 3 }, [16 x i8] zeroinitializer }, align 32
@qca_soc_data_wcn3998 = internal constant { %struct.qca_device_data, [16 x i8] } { %struct.qca_device_data { i32 3, ptr @.compoundliteral.6, i32 4, i32 0 }, [16 x i8] zeroinitializer }, align 32
@qca_soc_data_wcn6750 = internal constant { %struct.qca_device_data, [16 x i8] } { %struct.qca_device_data { i32 6, ptr @.compoundliteral.15, i32 9, i32 3 }, [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddio\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddxo\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddrf\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vddch0\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [4 x %struct.qca_vreg], [32 x i8] } { [4 x %struct.qca_vreg] [%struct.qca_vreg { ptr @.str.1, i32 15000 }, %struct.qca_vreg { ptr @.str.2, i32 80000 }, %struct.qca_vreg { ptr @.str.3, i32 300000 }, %struct.qca_vreg { ptr @.str.4, i32 450000 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal global { [4 x %struct.qca_vreg], [32 x i8] } { [4 x %struct.qca_vreg] [%struct.qca_vreg { ptr @.str.1, i32 15000 }, %struct.qca_vreg { ptr @.str.2, i32 80000 }, %struct.qca_vreg { ptr @.str.3, i32 300000 }, %struct.qca_vreg { ptr @.str.4, i32 450000 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal global { [4 x %struct.qca_vreg], [32 x i8] } { [4 x %struct.qca_vreg] [%struct.qca_vreg { ptr @.str.1, i32 10000 }, %struct.qca_vreg { ptr @.str.2, i32 80000 }, %struct.qca_vreg { ptr @.str.3, i32 300000 }, %struct.qca_vreg { ptr @.str.4, i32 450000 }], [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vddaon\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vddbtcxmx\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vddrfacmn\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vddrfa0p8\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vddrfa1p7\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vddrfa1p2\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vddrfa2p2\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vddasd\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal global { [9 x %struct.qca_vreg], [56 x i8] } { [9 x %struct.qca_vreg] [%struct.qca_vreg { ptr @.str.1, i32 5000 }, %struct.qca_vreg { ptr @.str.7, i32 26000 }, %struct.qca_vreg { ptr @.str.8, i32 126000 }, %struct.qca_vreg { ptr @.str.9, i32 12500 }, %struct.qca_vreg { ptr @.str.10, i32 102000 }, %struct.qca_vreg { ptr @.str.11, i32 302000 }, %struct.qca_vreg { ptr @.str.12, i32 257000 }, %struct.qca_vreg { ptr @.str.13, i32 1700000 }, %struct.qca_vreg { ptr @.str.14, i32 200 }], [56 x i8] zeroinitializer }, align 32
@__const.qca_serdev_shutdown.edl_reset_soc_cmd = private unnamed_addr constant [5 x i8] c"\01\00\FC\01\05", align 1
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"QCA send IBS_WAKE_IND error: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"QCA send EDL_RESET_REQ error: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: SSR or FW download time out\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to send SLEEP to device\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Spurious tx state %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/bluetooth/hci_qca.c\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/wait_bit.h\00", [39 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Voting irregularity\0A\00", [43 x i8] zeroinitializer }, align 32
@serial_clock_vote.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.21, ptr @.str.26, i8 0, i8 82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hci_uart\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"serial_clock_vote\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Vote serial clock %s(%s)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"firmware-name\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"max-speed\00", [22 x i8] zeroinitializer }, align 32
@qca_serdev_probe.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.31, ptr @.str.21, ptr @.str.32, i8 1, i8 -3, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qca_serdev_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"UART will pick default operating speed\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to init regulators:%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@qca_serdev_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.31, ptr @.str.21, i32 2063, ptr @.str.36, ptr @.str.37 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to acquire BT_EN gpio\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qca_serdev_probe._entry_ptr = internal global ptr @qca_serdev_probe._entry, section ".printk_index", align 4
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"swctrl\00", [25 x i8] zeroinitializer }, align 32
@qca_serdev_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.31, ptr @.str.21, i32 2070, ptr @.str.41, ptr @.str.37 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to acquire SW_CTRL gpio\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@qca_serdev_probe._entry_ptr.42 = internal global ptr @qca_serdev_probe._entry.39, section ".printk_index", align 4
@qca_serdev_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.31, ptr @.str.21, i32 2074, ptr @.str.36, ptr @.str.37 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to acquire clk\0A\00", [41 x i8] zeroinitializer }, align 32
@qca_serdev_probe._entry_ptr.45 = internal global ptr @qca_serdev_probe._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"wcn3990 serdev registration failed\0A\00", [60 x i8] zeroinitializer }, align 32
@qca_serdev_probe._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.31, ptr @.str.21, i32 2092, ptr @.str.41, ptr @.str.37 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to acquire enable gpio\0A\00", [33 x i8] zeroinitializer }, align 32
@qca_serdev_probe._entry_ptr.49 = internal global ptr @qca_serdev_probe._entry.47, section ".printk_index", align 4
@qca_serdev_probe._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.31, ptr @.str.21, i32 2098, ptr @.str.41, ptr @.str.37 }, [40 x i8] zeroinitializer }, align 32
@qca_serdev_probe._entry_ptr.51 = internal global ptr @qca_serdev_probe._entry.50, section ".printk_index", align 4
@.str.52 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Rome serdev registration failed\0A\00", [63 x i8] zeroinitializer }, align 32
@qca_power_shutdown.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.53, ptr @.str.21, ptr @.str.54, i8 1, i8 -34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qca_power_shutdown\00", [45 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: SW_CTRL is %d\0A\00", [45 x i8] zeroinitializer }, align 32
@qca_flush.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.55, ptr @.str.21, ptr @.str.56, i8 0, i8 -87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qca_flush\00", [22 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hu %p qca flush\0A\00", [47 x i8] zeroinitializer }, align 32
@qca_send_power_pulse.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.57, ptr @.str.21, ptr @.str.58, i8 1, i8 80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qca_send_power_pulse\00", [43 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: sending power pulse %02x to controller\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: failed to send power pulse %02x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"QCA\00", [28 x i8] zeroinitializer }, align 32
@qca_open.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.61, ptr @.str.21, ptr @.str.62, i8 0, i8 -115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qca_open\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hu %p qca_open\0A\00", [16 x i8] zeroinitializer }, align 32
@qca_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&qca->hci_ibs_lock\00", [45 x i8] zeroinitializer }, align 32
@qca_open.__key.64 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&qca->hci_memdump_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qca_wq\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"QCA Workqueue not initialized properly\0A\00", [56 x i8] zeroinitializer }, align 32
@qca_open.__key.68 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.69 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&qca->ws_awake_rx)\00", [59 x i8] zeroinitializer }, align 32
@qca_open.__key.70 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.71 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&qca->ws_awake_device)\00", [55 x i8] zeroinitializer }, align 32
@qca_open.__key.72 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.73 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&qca->ws_rx_vote_off)\00", [56 x i8] zeroinitializer }, align 32
@qca_open.__key.74 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.75 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&qca->ws_tx_vote_off)\00", [56 x i8] zeroinitializer }, align 32
@qca_open.__key.76 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.77 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&qca->ctrl_memdump_evt)\00", [54 x i8] zeroinitializer }, align 32
@qca_open.__key.78 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.79 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"(work_completion)(&(&qca->ctrl_memdump_timeout)->work)\00", [41 x i8] zeroinitializer }, align 32
@qca_open.__key.80 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.81 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"&(&qca->ctrl_memdump_timeout)->timer\00", [59 x i8] zeroinitializer }, align 32
@qca_open.__key.82 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.83 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&qca->suspend_wait_q\00", [43 x i8] zeroinitializer }, align 32
@qca_open.__key.84 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.85 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"(&qca->wake_retrans_timer)\00", [37 x i8] zeroinitializer }, align 32
@qca_open.__key.86 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.87 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(&qca->tx_idle_timer)\00", [42 x i8] zeroinitializer }, align 32
@qca_open.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.61, ptr @.str.21, ptr @.str.88, i8 0, i8 -101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"HCI_UART_QCA open, tx_idle_delay=%u, wake_retrans=%u\0A\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.89 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@qca_wq_awake_rx.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.90, ptr @.str.21, ptr @.str.91, i8 0, i8 102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qca_wq_awake_rx\00", [16 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hu %p wq awake rx\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to acknowledge device wake up\0A\00", [58 x i8] zeroinitializer }, align 32
@send_hci_ibs_cmd.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.93, ptr @.str.21, ptr @.str.94, i8 0, i8 88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"send_hci_ibs_cmd\00", [47 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hu %p send hci ibs cmd 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to allocate memory for HCI_IBS packet\0A\00", [50 x i8] zeroinitializer }, align 32
@qca_wq_awake_device.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.96, ptr @.str.21, ptr @.str.97, i8 0, i8 94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qca_wq_awake_device\00", [44 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hu %p wq awake device\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to send WAKE to device\0A\00", [33 x i8] zeroinitializer }, align 32
@qca_wq_serial_rx_clock_vote_off.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.99, ptr @.str.21, ptr @.str.100, i8 0, i8 109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qca_wq_serial_rx_clock_vote_off\00", [32 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hu %p rx clock vote off\0A\00", [39 x i8] zeroinitializer }, align 32
@qca_wq_serial_tx_clock_vote_off.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.101, ptr @.str.21, ptr @.str.102, i8 0, i8 111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qca_wq_serial_tx_clock_vote_off\00", [32 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hu %p tx clock vote off\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Rx invalid memdump size\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: QCA collecting dump of size:%u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: QCA: Discarding other packets\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: QCA controller missed packet:%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: QCA memdump received %d, no space for missed packet\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: QCA memdump unexpected packet %d\0A\00", [58 x i8] zeroinitializer }, align 32
@qca_controller_memdump.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.109, ptr @.str.21, ptr @.str.110, i8 1, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qca_controller_memdump\00", [41 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: QCA memdump packet %d with length %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: QCA memdump received %d, no space for packet %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: QCA memdump Done, received %d, total %d\0A\00", [51 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.113 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@hci_ibs_wake_retrans_timeout.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.114, ptr @.str.21, ptr @.str.115, i8 0, i8 124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hci_ibs_wake_retrans_timeout\00", [35 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"hu %p wake retransmit timeout in %d state\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Spurious timeout tx state %d\0A\00", [34 x i8] zeroinitializer }, align 32
@hci_ibs_tx_idle_timeout.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.117, ptr @.str.21, ptr @.str.118, i8 0, i8 116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hci_ibs_tx_idle_timeout\00", [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"hu %p idle timeout in %d state\0A\00", [32 x i8] zeroinitializer }, align 32
@qca_close.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.119, ptr @.str.21, ptr @.str.120, i8 0, i8 -83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qca_close\00", [22 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hu %p qca close\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: setting up %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wcn399x\00", [24 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wcn6750\00", [24 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ROME/QCA6390\00", [19 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Retry BT power ON:%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: failed to open port\0A\00", [39 x i8] zeroinitializer }, align 32
@qca_regulator_init.__UNIQUE_ID_ddebug505 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.127, ptr @.str.21, ptr @.str.54, i8 1, i8 -104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.127 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qca_regulator_init\00", [45 x i8] zeroinitializer }, align 32
@qca_regulator_enable.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.128, ptr @.str.21, ptr @.str.129, i8 1, i8 -24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qca_regulator_enable\00", [43 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"enabling %d regulators)\0A\00", [39 x i8] zeroinitializer }, align 32
@qca_set_speed.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.130, ptr @.str.21, ptr @.str.131, i8 1, i8 102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qca_set_speed\00", [18 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Set UART speed to %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Failed to change controller baudrate\0A\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Failed to allocate baudrate packet\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ibs\00", [28 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tx_ibs_state\00", [19 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx_ibs_state\00", [19 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ibs_sent_sleeps\00", [16 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ibs_sent_wakes\00", [17 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ibs_sent_wake_acks\00", [45 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ibs_recv_sleeps\00", [16 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ibs_recv_wakes\00", [17 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ibs_recv_wake_acks\00", [45 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tx_vote\00", [24 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tx_votes_on\00", [20 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tx_votes_off\00", [19 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rx_vote\00", [24 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rx_votes_on\00", [20 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx_votes_off\00", [19 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"votes_on\00", [23 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"votes_off\00", [22 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vote_on_ms\00", [21 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vote_off_ms\00", [20 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wake_retrans\00", [19 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx_idle_delay\00", [18 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: mem_dump_status: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: waiting for dump to complete\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: clearing allocated memory due to memdump timeout\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: Failed to allocate memory for skb packet\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: crash the soc to collect controller dump\0A\00", [50 x i8] zeroinitializer }, align 32
@qca_wakeup.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.160, ptr @.str.21, ptr @.str.161, i8 1, i8 -115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.160 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qca_wakeup\00", [21 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: wakeup status : %d\0A\00", [40 x i8] zeroinitializer }, align 32
@qca_recv_pkts = internal constant { [6 x %struct.h4_recv_pkt], [56 x i8] } { [6 x %struct.h4_recv_pkt] [%struct.h4_recv_pkt { i8 2, i8 4, i8 2, i8 2, i16 1028, ptr @qca_recv_acl_data }, %struct.h4_recv_pkt { i8 3, i8 3, i8 2, i8 1, i16 255, ptr @hci_recv_frame }, %struct.h4_recv_pkt { i8 4, i8 2, i8 1, i8 1, i16 260, ptr @qca_recv_event }, %struct.h4_recv_pkt { i8 -3, i8 0, i8 0, i8 0, i16 10, ptr @qca_ibs_wake_ind }, %struct.h4_recv_pkt { i8 -4, i8 0, i8 0, i8 0, i16 10, ptr @qca_ibs_wake_ack }, %struct.h4_recv_pkt { i8 -2, i8 0, i8 0, i8 0, i16 10, ptr @qca_ibs_sleep_ind }], [56 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Frame reassembly failed (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@qca_ibs_wake_ind.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.163, ptr @.str.21, ptr @.str.164, i8 0, i8 -21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.163 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qca_ibs_wake_ind\00", [47 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hu %p recv hci ibs cmd 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@device_want_to_wakeup.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.165, ptr @.str.21, ptr @.str.166, i8 0, i8 -76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.165 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"device_want_to_wakeup\00", [42 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hu %p want to wake up\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Received HCI_IBS_WAKE_IND in rx state %d\0A\00", [54 x i8] zeroinitializer }, align 32
@qca_ibs_wake_ack.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.168, ptr @.str.21, ptr @.str.164, i8 0, i8 -18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.168 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qca_ibs_wake_ack\00", [47 x i8] zeroinitializer }, align 32
@device_woke_up.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.169, ptr @.str.21, ptr @.str.170, i8 0, i8 -54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.169 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"device_woke_up\00", [17 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hu %p woke up\0A\00", [17 x i8] zeroinitializer }, align 32
@device_woke_up.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.169, ptr @.str.21, ptr @.str.171, i8 0, i8 -50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.171 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Received HCI_IBS_WAKE_ACK in tx state %d\0A\00", [54 x i8] zeroinitializer }, align 32
@qca_ibs_sleep_ind.__UNIQUE_ID_ddebug498 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.172, ptr @.str.21, ptr @.str.164, i8 0, i8 -24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.172 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qca_ibs_sleep_ind\00", [46 x i8] zeroinitializer }, align 32
@device_want_to_sleep.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.173, ptr @.str.21, ptr @.str.174, i8 0, i8 -63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.173 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"device_want_to_sleep\00", [43 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"hu %p want to sleep in %d state\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Received HCI_IBS_SLEEP_IND in rx state %d\0A\00", [53 x i8] zeroinitializer }, align 32
@qca_enqueue.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.176, ptr @.str.21, ptr @.str.177, i8 0, i8 -41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.176 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qca_enqueue\00", [20 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"hu %p qca enq skb %p tx_ibs_state %d\0A\00", [58 x i8] zeroinitializer }, align 32
@qca_enqueue.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.176, ptr @.str.21, ptr @.str.178, i8 0, i8 -40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.178 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: SSR is in progress\0A\00", [40 x i8] zeroinitializer }, align 32
@qca_enqueue.__UNIQUE_ID_ddebug495 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.176, ptr @.str.21, ptr @.str.179, i8 0, i8 -34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.179 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Device awake, sending normally\0A\00", [32 x i8] zeroinitializer }, align 32
@qca_enqueue.__UNIQUE_ID_ddebug496 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.176, ptr @.str.21, ptr @.str.180, i8 0, i8 -32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.180 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Device asleep, waking up and queueing packet\0A\00", [50 x i8] zeroinitializer }, align 32
@qca_enqueue.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.176, ptr @.str.21, ptr @.str.181, i8 0, i8 -30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.181 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Device waking up, queueing packet\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Illegal tx state: %d (losing packet)\0A\00", [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.183 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.184 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.185 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.186 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.187 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.188 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.189 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.190 = internal global [16 x i64] [i64 14, i64 32, i64 9600, i64 19200, i64 38400, i64 57600, i64 115200, i64 230400, i64 460800, i64 500000, i64 921600, i64 1000000, i64 2000000, i64 3000000, i64 3200000, i64 3500000]
@__sancov_gen_cov_switch_values.191 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.192 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967285, i64 4294967294]
@__sancov_gen_cov_switch_values.193 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.194 = internal global [16 x i64] [i64 14, i64 32, i64 9600, i64 19200, i64 38400, i64 57600, i64 115200, i64 230400, i64 460800, i64 500000, i64 921600, i64 1000000, i64 2000000, i64 3000000, i64 3200000, i64 3500000]
@__sancov_gen_cov_switch_values.195 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.196 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.197 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.198 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.199 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.200 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.201 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.202 = private unnamed_addr constant [18 x i8] c"qca_serdev_driver\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 2340, i32 36 }
@___asan_gen_.205 = private unnamed_addr constant [10 x i8] c"qca_proto\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1807, i32 36 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 2344, i32 11 }
@___asan_gen_.211 = private unnamed_addr constant [23 x i8] c"qca_bluetooth_of_match\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 2315, i32 34 }
@___asan_gen_.214 = private unnamed_addr constant [11 x i8] c"qca_pm_ops\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 2312, i32 8 }
@___asan_gen_.217 = private unnamed_addr constant [21 x i8] c"qca_soc_data_qca6390\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1856, i32 37 }
@___asan_gen_.220 = private unnamed_addr constant [21 x i8] c"qca_soc_data_wcn3990\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1822, i32 37 }
@___asan_gen_.223 = private unnamed_addr constant [21 x i8] c"qca_soc_data_wcn3991\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1833, i32 37 }
@___asan_gen_.226 = private unnamed_addr constant [21 x i8] c"qca_soc_data_wcn3998\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1845, i32 37 }
@___asan_gen_.229 = private unnamed_addr constant [21 x i8] c"qca_soc_data_wcn6750\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1861, i32 37 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1825, i32 5 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1826, i32 5 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1827, i32 5 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1828, i32 5 }
@___asan_gen_.244 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.246 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1865, i32 5 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1866, i32 5 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1867, i32 5 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1868, i32 5 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1869, i32 5 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1870, i32 5 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1871, i32 5 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1872, i32 5 }
@___asan_gen_.271 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 2168, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 2178, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 2228, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 2252, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 2265, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 2284, i32 8 }
@___asan_gen_.291 = private unnamed_addr constant [28 x i8] c"../include/linux/wait_bit.h\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 125, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 318, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 330, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 2033, i32 44 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 2035, i32 41 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 2038, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 2054, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 2060, i32 57 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 2063, i32 4 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 2067, i32 59 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 2070, i32 4 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 2074, i32 4 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 2080, i32 4 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 2092, i32 4 }
@___asan_gen_.368 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 2098, i32 4 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 2111, i32 4 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1913, i32 4 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 679, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1346, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1352, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1809, i32 11 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 564, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 576, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 577, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 578, i32 19 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 580, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 585, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 586, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 587, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 588, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 589, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 590, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 592, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 616, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 619, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 622, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1984, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 409, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 420, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 355, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 359, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 379, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 388, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 436, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 447, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1030, i32 5 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1038, i32 4 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1058, i32 4 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1077, i32 4 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1082, i32 5 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1097, i32 5 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1100, i32 4 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1110, i32 4 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1117, i32 4 }
@___asan_gen_.560 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.564 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 87, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 498, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 526, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 464, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 692, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1717, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1784, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1790, i32 5 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1634, i32 4 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1954, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1434, i32 3 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1452, i32 5 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1292, i32 3 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 638, i32 31 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 642, i32 20 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 643, i32 20 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 644, i32 21 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 646, i32 21 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 648, i32 21 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 650, i32 21 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 652, i32 21 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 654, i32 21 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 656, i32 22 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 657, i32 21 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 658, i32 21 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 659, i32 22 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 660, i32 21 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 661, i32 21 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 662, i32 21 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 663, i32 21 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 664, i32 21 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 665, i32 21 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 669, i32 21 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 670, i32 21 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1507, i32 2 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1523, i32 3 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1529, i32 3 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1471, i32 3 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1482, i32 2 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1589, i32 2 }
@___asan_gen_.710 = private unnamed_addr constant [14 x i8] c"qca_recv_pkts\00", align 1
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1207, i32 33 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1227, i32 3 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 940, i32 2 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 720, i32 2 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 754, i32 3 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 952, i32 2 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 809, i32 2 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 824, i32 3 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 928, i32 2 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 772, i32 2 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 791, i32 3 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 861, i32 2 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 866, i32 3 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 890, i32 3 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 897, i32 3 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 907, i32 3 }
@___asan_gen_.773 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.774 = private constant [31 x i8] c"../drivers/bluetooth/hci_qca.c\00", align 1
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 913, i32 3 }
@llvm.compiler.used = appending global [200 x ptr] [ptr @qca_deinit, ptr @qca_serdev_probe._entry, ptr @qca_serdev_probe._entry.39, ptr @qca_serdev_probe._entry.43, ptr @qca_serdev_probe._entry.47, ptr @qca_serdev_probe._entry.50, ptr @qca_serdev_probe._entry_ptr, ptr @qca_serdev_probe._entry_ptr.42, ptr @qca_serdev_probe._entry_ptr.45, ptr @qca_serdev_probe._entry_ptr.49, ptr @qca_serdev_probe._entry_ptr.51, ptr @qca_serdev_driver, ptr @qca_proto, ptr @.str, ptr @qca_bluetooth_of_match, ptr @qca_pm_ops, ptr @qca_soc_data_qca6390, ptr @qca_soc_data_wcn3990, ptr @qca_soc_data_wcn3991, ptr @qca_soc_data_wcn3998, ptr @qca_soc_data_wcn6750, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.compoundliteral, ptr @.compoundliteral.5, ptr @.compoundliteral.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.compoundliteral.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @qca_open.__key, ptr @.str.63, ptr @qca_open.__key.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @qca_open.__key.68, ptr @.str.69, ptr @qca_open.__key.70, ptr @.str.71, ptr @qca_open.__key.72, ptr @.str.73, ptr @qca_open.__key.74, ptr @.str.75, ptr @qca_open.__key.76, ptr @.str.77, ptr @qca_open.__key.78, ptr @.str.79, ptr @qca_open.__key.80, ptr @.str.81, ptr @qca_open.__key.82, ptr @.str.83, ptr @qca_open.__key.84, ptr @.str.85, ptr @qca_open.__key.86, ptr @.str.87, ptr @.str.88, ptr @skb_queue_head_init.__key, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @init_completion.__key, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @qca_recv_pkts, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182], section "llvm.metadata"
@0 = internal global [194 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_serdev_driver to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_proto to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_bluetooth_of_match to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_soc_data_qca6390 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_soc_data_wcn3990 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_soc_data_wcn3991 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_soc_data_wcn3998 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_soc_data_wcn6750 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_serdev_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_serdev_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_serdev_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_serdev_probe._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_serdev_probe._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_open.__key.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_open.__key.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_open.__key.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_open.__key.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_open.__key.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_open.__key.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_open.__key.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_open.__key.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_open.__key.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_open.__key.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_open.__key.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_recv_pkts to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qca_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__serdev_device_driver_register(ptr noundef nonnull @qca_serdev_driver, ptr noundef null) #8
  %call1 = tail call i32 @hci_uart_register_proto(ptr noundef nonnull @qca_proto) #8
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serdev_device_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_register_proto(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qca_deinit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @driver_unregister(ptr noundef nonnull @qca_serdev_driver) #8
  %call = tail call i32 @hci_uart_unregister_proto(ptr noundef nonnull @qca_proto) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_unregister_proto(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qca_serdev_shutdown(ptr noundef %dev) #2 align 64 {
entry:
  %ibs_wake_cmd = alloca [1 x i8], align 1
  %edl_reset_soc_cmd = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ibs_wake_cmd) #8
  %2 = ptrtoint ptr %ibs_wake_cmd to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -3, ptr %ibs_wake_cmd, align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %edl_reset_soc_cmd) #8
  %3 = call ptr @memcpy(ptr %edl_reset_soc_cmd, ptr @__const.qca_serdev_shutdown.edl_reset_soc_cmd, i32 5)
  %btsoc_type = getelementptr inbounds %struct.qca_serdev, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %btsoc_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %btsoc_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp = icmp eq i32 %5, 5
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  tail call void @serdev_device_write_flush(ptr noundef %dev) #8
  %call3 = call i32 @serdev_device_write_buf(ptr noundef %dev, ptr noundef nonnull %ibs_wake_cmd, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.16, i32 noundef %call3) #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @serdev_device_wait_until_sent(ptr noundef %dev, i32 noundef 10) #8
  call void @usleep_range_state(i32 noundef 8000, i32 noundef 10000, i32 noundef 2) #8
  call void @serdev_device_write_flush(ptr noundef %dev) #8
  %call7 = call i32 @serdev_device_write_buf(ptr noundef %dev, ptr noundef nonnull %edl_reset_soc_cmd, i32 noundef 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.17, i32 noundef %call7) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @serdev_device_wait_until_sent(ptr noundef %dev, i32 noundef 10) #8
  call void @usleep_range_state(i32 noundef 8000, i32 noundef 10000, i32 noundef 2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then5, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %edl_reset_soc_cmd) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ibs_wake_cmd) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca_serdev_probe(ptr noundef %serdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %serdev, i32 noundef 328, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %serdev1 = getelementptr inbounds %struct.hci_uart, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %serdev1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %serdev, ptr %serdev1, align 4
  %call3 = tail call ptr @device_get_match_data(ptr noundef %serdev) #8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %firmware_name = getelementptr inbounds %struct.qca_serdev, ptr %call.i, i32 0, i32 8
  %call5 = tail call i32 @device_property_read_string(ptr noundef %serdev, ptr noundef nonnull @.str.29, ptr noundef %firmware_name) #8
  %oper_speed = getelementptr inbounds %struct.qca_serdev, ptr %call.i, i32 0, i32 7
  %call.i225 = tail call i32 @device_property_read_u32_array(ptr noundef %serdev, ptr noundef nonnull @.str.30, ptr noundef %oper_speed, i32 noundef 1) #8
  %2 = ptrtoint ptr %oper_speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %oper_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool9.not = icmp eq i32 %3, 0
  br i1 %tobool9.not, label %do.body, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_serdev_probe.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_serdev_probe, %if.then15)) #8
          to label %if.end17 [label %if.then15], !srcloc !375

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_serdev_probe.__UNIQUE_ID_ddebug508, ptr noundef nonnull @.str.32) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %do.body, %if.end.if.end17_crit_edge
  %tobool18.not = icmp eq ptr %call3, null
  br i1 %tobool18.not, label %if.end17.if.end87_crit_edge, label %land.lhs.true

if.end17.if.end87_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

land.lhs.true:                                    ; preds = %if.end17
  %4 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call3, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %land.lhs.true.if.end87_crit_edge [
    i32 6, label %land.lhs.true.if.then22_crit_edge
    i32 4, label %land.lhs.true.if.then22_crit_edge253
    i32 3, label %land.lhs.true.if.then22_crit_edge254
    i32 2, label %land.lhs.true.if.then22_crit_edge255
  ]

land.lhs.true.if.then22_crit_edge255:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

land.lhs.true.if.then22_crit_edge254:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

land.lhs.true.if.then22_crit_edge253:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

land.lhs.true.if.then22_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

land.lhs.true.if.end87_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then22:                                        ; preds = %land.lhs.true.if.then22_crit_edge, %land.lhs.true.if.then22_crit_edge253, %land.lhs.true.if.then22_crit_edge254, %land.lhs.true.if.then22_crit_edge255
  %btsoc_type = getelementptr inbounds %struct.qca_serdev, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %btsoc_type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %5, ptr %btsoc_type, align 4
  %call.i226 = tail call noalias ptr @devm_kmalloc(ptr noundef %serdev, i32 noundef 16, i32 noundef 3520) #8
  %bt_power = getelementptr inbounds %struct.qca_serdev, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %bt_power to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i226, ptr %bt_power, align 4
  %tobool27.not = icmp eq ptr %call.i226, null
  br i1 %tobool27.not, label %if.then22.cleanup_crit_edge, label %if.end29

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %if.then22
  %9 = ptrtoint ptr %call.i226 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %serdev, ptr %call.i226, align 4
  %vregs = getelementptr inbounds %struct.qca_device_data, ptr %call3, i32 0, i32 1
  %10 = ptrtoint ptr %vregs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vregs, align 4
  %num_vregs = getelementptr inbounds %struct.qca_device_data, ptr %call3, i32 0, i32 2
  %12 = ptrtoint ptr %num_vregs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_vregs, align 4
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %13, i32 12) #8
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %if.end29.if.then36_crit_edge, label %devm_kcalloc.exit.i, !prof !376

if.end29.if.then36_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36

devm_kcalloc.exit.i:                              ; preds = %if.end29
  %16 = extractvalue { i32, i1 } %14, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %serdev, i32 noundef %16, i32 noundef 3520) #8
  %tobool.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i, label %devm_kcalloc.exit.i.if.then36_crit_edge, label %for.cond.preheader.i

devm_kcalloc.exit.i.if.then36_crit_edge:          ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36

for.cond.preheader.i:                             ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp46.not.i = icmp eq i32 %13, 0
  br i1 %cmp46.not.i, label %for.end.thread.i, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.047.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.qca_vreg, ptr %11, i32 %i.047.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr %struct.regulator_bulk_data, ptr %call5.i.i.i, i32 %i.047.i
  %19 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %arrayidx1.i, align 4
  %inc.i = add nuw i32 %i.047.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %13
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %20 = ptrtoint ptr %call.i226 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i226, align 4
  %call3.i = tail call i32 @devm_regulator_bulk_get(ptr noundef %21, i32 noundef %13, ptr noundef nonnull %call5.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %for.end.i.if.then36_crit_edge, label %for.end.i.for.body9.i_crit_edge

for.end.i.for.body9.i_crit_edge:                  ; preds = %for.end.i
  br label %for.body9.i

for.end.i.if.then36_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36

for.end.thread.i:                                 ; preds = %for.cond.preheader.i
  %22 = ptrtoint ptr %call.i226 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i226, align 4
  %call352.i = tail call i32 @devm_regulator_bulk_get(ptr noundef %23, i32 noundef 0, ptr noundef nonnull %call5.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call352.i)
  %cmp453.i = icmp slt i32 %call352.i, 0
  br i1 %cmp453.i, label %for.end.thread.i.if.then36_crit_edge, label %for.end.thread.i.if.end37_crit_edge

for.end.thread.i.if.end37_crit_edge:              ; preds = %for.end.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

for.end.thread.i.if.then36_crit_edge:             ; preds = %for.end.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36

for.cond7.i:                                      ; preds = %for.body9.i
  %inc17.i = add nuw i32 %i.149.i, 1
  %exitcond51.not.i = icmp eq i32 %inc17.i, %13
  br i1 %exitcond51.not.i, label %for.cond7.i.if.end37_crit_edge, label %for.cond7.i.for.body9.i_crit_edge

for.cond7.i.for.body9.i_crit_edge:                ; preds = %for.cond7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9.i

for.cond7.i.if.end37_crit_edge:                   ; preds = %for.cond7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

for.body9.i:                                      ; preds = %for.cond7.i.for.body9.i_crit_edge, %for.end.i.for.body9.i_crit_edge
  %i.149.i = phi i32 [ %inc17.i, %for.cond7.i.for.body9.i_crit_edge ], [ 0, %for.end.i.for.body9.i_crit_edge ]
  %consumer.i = getelementptr %struct.regulator_bulk_data, ptr %call5.i.i.i, i32 %i.149.i, i32 1
  %24 = ptrtoint ptr %consumer.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %consumer.i, align 4
  %load_uA.i = getelementptr %struct.qca_vreg, ptr %11, i32 %i.149.i, i32 1
  %26 = ptrtoint ptr %load_uA.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %load_uA.i, align 4
  %call12.i = tail call i32 @regulator_set_load(ptr noundef %25, i32 noundef %27) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %for.cond7.i, label %for.body9.i.if.then36_crit_edge

for.body9.i.if.then36_crit_edge:                  ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36

if.then36:                                        ; preds = %for.body9.i.if.then36_crit_edge, %for.end.thread.i.if.then36_crit_edge, %for.end.i.if.then36_crit_edge, %devm_kcalloc.exit.i.if.then36_crit_edge, %if.end29.if.then36_crit_edge
  %retval.0.i227.ph = phi i32 [ %call352.i, %for.end.thread.i.if.then36_crit_edge ], [ -12, %if.end29.if.then36_crit_edge ], [ %call3.i, %for.end.i.if.then36_crit_edge ], [ -12, %devm_kcalloc.exit.i.if.then36_crit_edge ], [ %call12.i, %for.body9.i.if.then36_crit_edge ]
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.33, i32 noundef %retval.0.i227.ph) #8
  br label %cleanup

if.end37:                                         ; preds = %for.cond7.i.if.end37_crit_edge, %for.end.thread.i.if.end37_crit_edge
  %vreg_bulk.i = getelementptr inbounds %struct.qca_power, ptr %call.i226, i32 0, i32 1
  %28 = ptrtoint ptr %vreg_bulk.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call5.i.i.i, ptr %vreg_bulk.i, align 4
  %num_vregs19.i = getelementptr inbounds %struct.qca_power, ptr %call.i226, i32 0, i32 2
  %29 = ptrtoint ptr %num_vregs19.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %13, ptr %num_vregs19.i, align 4
  %30 = ptrtoint ptr %bt_power to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bt_power, align 4
  %vregs_on = getelementptr inbounds %struct.qca_power, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %vregs_on to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %vregs_on, align 4
  %call40 = tail call ptr @devm_gpiod_get_optional(ptr noundef %serdev, ptr noundef nonnull @.str.34, i32 noundef 3) #8
  %bt_en = getelementptr inbounds %struct.qca_serdev, ptr %call.i, i32 0, i32 1
  %33 = ptrtoint ptr %bt_en to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call40, ptr %bt_en, align 4
  %tobool.not.i228 = icmp eq ptr %call40, null
  %cmp.i229 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i228, %cmp.i229
  br i1 %spec.select.i, label %land.lhs.true43, label %if.end37.if.end50_crit_edge

if.end37.if.end50_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

land.lhs.true43:                                  ; preds = %if.end37
  %34 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %call3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %35)
  %cmp = icmp eq i32 %35, 6
  br i1 %cmp, label %do.end48, label %land.lhs.true43.if.end50_crit_edge

land.lhs.true43.if.end50_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

do.end48:                                         ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %serdev, ptr noundef nonnull @.str.35) #11
  br label %if.end50

if.end50:                                         ; preds = %do.end48, %land.lhs.true43.if.end50_crit_edge, %if.end37.if.end50_crit_edge
  %extract.t = phi i1 [ false, %do.end48 ], [ true, %land.lhs.true43.if.end50_crit_edge ], [ true, %if.end37.if.end50_crit_edge ]
  %call52 = tail call ptr @devm_gpiod_get_optional(ptr noundef %serdev, ptr noundef nonnull @.str.38, i32 noundef 1) #8
  %sw_ctrl = getelementptr inbounds %struct.qca_serdev, ptr %call.i, i32 0, i32 2
  %36 = ptrtoint ptr %sw_ctrl to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call52, ptr %sw_ctrl, align 4
  %tobool.not.i230 = icmp eq ptr %call52, null
  %cmp.i231 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  %spec.select.i232 = or i1 %tobool.not.i230, %cmp.i231
  br i1 %spec.select.i232, label %land.lhs.true55, label %if.end50.if.end63_crit_edge

if.end50.if.end63_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

land.lhs.true55:                                  ; preds = %if.end50
  %37 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %call3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %38)
  %cmp57 = icmp eq i32 %38, 6
  br i1 %cmp57, label %do.end61, label %land.lhs.true55.if.end63_crit_edge

land.lhs.true55.if.end63_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

do.end61:                                         ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %serdev, ptr noundef nonnull @.str.40) #11
  br label %if.end63

if.end63:                                         ; preds = %do.end61, %land.lhs.true55.if.end63_crit_edge, %if.end50.if.end63_crit_edge
  %call65 = tail call ptr @devm_clk_get_optional(ptr noundef %serdev, ptr noundef null) #8
  %susclk = getelementptr inbounds %struct.qca_serdev, ptr %call.i, i32 0, i32 3
  %39 = ptrtoint ptr %susclk to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call65, ptr %susclk, align 4
  %cmp.i233 = icmp ugt ptr %call65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i233, label %do.end71, label %if.end75

do.end71:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %serdev, ptr noundef nonnull @.str.44) #11
  %40 = ptrtoint ptr %susclk to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %susclk, align 4
  %42 = ptrtoint ptr %41 to i32
  br label %cleanup

if.end75:                                         ; preds = %if.end63
  %call77 = tail call i32 @hci_uart_register_device(ptr noundef nonnull %call.i, ptr noundef nonnull @qca_proto) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end75.if.end128_crit_edge, label %if.then79

if.end75.if.end128_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128

if.then79:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.46) #8
  br label %cleanup

if.end87:                                         ; preds = %land.lhs.true.if.end87_crit_edge, %if.end17.if.end87_crit_edge
  %.sink = phi i32 [ %5, %land.lhs.true.if.end87_crit_edge ], [ 1, %if.end17.if.end87_crit_edge ]
  %btsoc_type86 = getelementptr inbounds %struct.qca_serdev, ptr %call.i, i32 0, i32 4
  %43 = ptrtoint ptr %btsoc_type86 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %.sink, ptr %btsoc_type86, align 4
  %call89 = tail call ptr @devm_gpiod_get_optional(ptr noundef %serdev, ptr noundef nonnull @.str.34, i32 noundef 3) #8
  %bt_en90 = getelementptr inbounds %struct.qca_serdev, ptr %call.i, i32 0, i32 1
  %44 = ptrtoint ptr %bt_en90 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call89, ptr %bt_en90, align 4
  %tobool.not.i234 = icmp eq ptr %call89, null
  %cmp.i235 = icmp ugt ptr %call89, inttoptr (i32 -4096 to ptr)
  %spec.select.i236 = or i1 %tobool.not.i234, %cmp.i235
  br i1 %spec.select.i236, label %do.end96, label %if.end87.if.end98_crit_edge

if.end87.if.end98_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

do.end96:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %serdev, ptr noundef nonnull @.str.48) #11
  br label %if.end98

if.end98:                                         ; preds = %do.end96, %if.end87.if.end98_crit_edge
  %45 = xor i1 %cmp.i235, %tobool.not.i234
  %46 = xor i1 %45, true
  %call100 = tail call ptr @devm_clk_get_optional(ptr noundef %serdev, ptr noundef null) #8
  %susclk101 = getelementptr inbounds %struct.qca_serdev, ptr %call.i, i32 0, i32 3
  %47 = ptrtoint ptr %susclk101 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call100, ptr %susclk101, align 4
  %cmp.i237 = icmp ugt ptr %call100, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i237, label %do.end107, label %if.end111

do.end107:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %serdev, ptr noundef nonnull @.str.44) #11
  %48 = ptrtoint ptr %susclk101 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %susclk101, align 4
  %50 = ptrtoint ptr %49 to i32
  br label %cleanup

if.end111:                                        ; preds = %if.end98
  %call113 = tail call i32 @clk_set_rate(ptr noundef %call100, i32 noundef 32768) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end116, label %if.end111.cleanup_crit_edge

if.end111.cleanup_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end116:                                        ; preds = %if.end111
  %51 = ptrtoint ptr %susclk101 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %susclk101, align 4
  %call.i238 = tail call i32 @clk_prepare(ptr noundef %52) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i238)
  %tobool.not.i239 = icmp eq i32 %call.i238, 0
  br i1 %tobool.not.i239, label %if.end.i, label %if.end116.cleanup_crit_edge

if.end116.cleanup_crit_edge:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end116
  %call1.i = tail call i32 @clk_enable(ptr noundef %52) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end121, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %52) #8
  br label %cleanup

if.end121:                                        ; preds = %if.end.i
  %call123 = tail call i32 @hci_uart_register_device(ptr noundef nonnull %call.i, ptr noundef nonnull @qca_proto) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end121.if.end128_crit_edge, label %if.then125

if.end121.if.end128_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128

if.then125:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.52) #8
  %53 = ptrtoint ptr %susclk101 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %susclk101, align 4
  tail call void @clk_disable(ptr noundef %54) #8
  tail call void @clk_unprepare(ptr noundef %54) #8
  br label %cleanup

if.end128:                                        ; preds = %if.end121.if.end128_crit_edge, %if.end75.if.end128_crit_edge
  %power_ctrl_enabled.2.off0 = phi i1 [ %extract.t, %if.end75.if.end128_crit_edge ], [ %46, %if.end121.if.end128_crit_edge ]
  %hdev130 = getelementptr inbounds %struct.hci_uart, ptr %call.i, i32 0, i32 2
  %55 = ptrtoint ptr %hdev130 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hdev130, align 4
  br i1 %power_ctrl_enabled.2.off0, label %if.then132, label %if.end128.if.end133_crit_edge

if.end128.if.end133_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end133

if.then132:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  %quirks = getelementptr inbounds %struct.hci_dev, ptr %56, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 12, ptr noundef %quirks) #8
  %shutdown = getelementptr inbounds %struct.hci_dev, ptr %56, i32 0, i32 236
  %57 = ptrtoint ptr %shutdown to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @qca_power_off, ptr %shutdown, align 8
  br label %if.end133

if.end133:                                        ; preds = %if.then132, %if.end128.if.end133_crit_edge
  br i1 %tobool18.not, label %if.end133.cleanup_crit_edge, label %if.then135

if.end133.cleanup_crit_edge:                      ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then135:                                       ; preds = %if.end133
  %capabilities = getelementptr inbounds %struct.qca_device_data, ptr %call3, i32 0, i32 3
  %58 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %capabilities, align 4
  %and = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool136.not = icmp eq i32 %and, 0
  br i1 %tobool136.not, label %if.then135.if.end139_crit_edge, label %if.then137

if.then135.if.end139_crit_edge:                   ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end139

if.then137:                                       ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #10
  %quirks138 = getelementptr inbounds %struct.hci_dev, ptr %56, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 13, ptr noundef %quirks138) #8
  br label %if.end139

if.end139:                                        ; preds = %if.then137, %if.then135.if.end139_crit_edge
  %60 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %capabilities, align 4
  %and141 = and i32 %61, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  br i1 %tobool142.not, label %if.end139.cleanup_crit_edge, label %if.then143

if.end139.cleanup_crit_edge:                      ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then143:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #10
  %quirks144 = getelementptr inbounds %struct.hci_dev, ptr %56, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 14, ptr noundef %quirks144) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then143, %if.end139.cleanup_crit_edge, %if.end133.cleanup_crit_edge, %if.then125, %if.then3.i, %if.end116.cleanup_crit_edge, %if.end111.cleanup_crit_edge, %do.end107, %if.then79, %do.end71, %if.then36, %if.then22.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i227.ph, %if.then36 ], [ %42, %do.end71 ], [ %call77, %if.then79 ], [ %50, %do.end107 ], [ %call123, %if.then125 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.then22.cleanup_crit_edge ], [ %call113, %if.end111.cleanup_crit_edge ], [ 0, %if.end139.cleanup_crit_edge ], [ 0, %if.then143 ], [ 0, %if.end133.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i238, %if.end116.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qca_serdev_remove(ptr nocapture noundef readonly %serdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %btsoc_type = getelementptr inbounds %struct.qca_serdev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %btsoc_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %btsoc_type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.183)
  switch i32 %3, label %entry.if.else_crit_edge [
    i32 6, label %entry.land.lhs.true_crit_edge
    i32 4, label %entry.land.lhs.true_crit_edge15
    i32 3, label %entry.land.lhs.true_crit_edge16
    i32 2, label %entry.land.lhs.true_crit_edge17
  ]

entry.land.lhs.true_crit_edge17:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

entry.land.lhs.true_crit_edge16:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

entry.land.lhs.true_crit_edge15:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %entry.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge15, %entry.land.lhs.true_crit_edge16, %entry.land.lhs.true_crit_edge17
  %bt_power = getelementptr inbounds %struct.qca_serdev, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %bt_power to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bt_power, align 4
  %vregs_on = getelementptr inbounds %struct.qca_power, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %vregs_on to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %vregs_on, align 4, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @qca_power_shutdown(ptr noundef %1)
  br label %if.end7

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %susclk = getelementptr inbounds %struct.qca_serdev, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %susclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %susclk, align 4
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %if.else.if.end7_crit_edge, label %if.then5

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_disable(ptr noundef nonnull %10) #8
  tail call void @clk_unprepare(ptr noundef nonnull %10) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.else.if.end7_crit_edge, %if.then
  tail call void @hci_uart_unregister_device(ptr noundef %1) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_write_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_write_buf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_wait_until_sent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %cmd = alloca i8, align 1
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd) #8
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %cmd, align 1, !annotation !378
  %flags2 = getelementptr inbounds %struct.qca_data, ptr %3, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags2) #8
  %5 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags2, align 4
  %7 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup124_crit_edge

entry.cleanup124_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup124

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags2, align 4
  %10 = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not = icmp eq i32 %10, 0
  br i1 %tobool7.not, label %if.end.if.end12_crit_edge, label %land.lhs.true

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %11 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags2, align 4
  %13 = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not = icmp eq i32 %13, 0
  br i1 %tobool10.not, label %land.lhs.true.cleanup124_crit_edge, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

land.lhs.true.cleanup124_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup124

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %14 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags2, align 4
  %and1.i177 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i177)
  %tobool15.not = icmp eq i32 %and1.i177, 0
  br i1 %tobool15.not, label %lor.lhs.false, label %if.end12.if.then19_crit_edge

if.end12.if.then19_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19

lor.lhs.false:                                    ; preds = %if.end12
  %16 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags2, align 4
  %18 = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool18.not = icmp eq i32 %18, 0
  br i1 %tobool18.not, label %lor.lhs.false.if.end31_crit_edge, label %lor.lhs.false.if.then19_crit_edge

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19

lor.lhs.false.if.end31_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then19:                                        ; preds = %lor.lhs.false.if.then19_crit_edge, %if.end12.if.then19_crit_edge
  %19 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags2, align 4
  %21 = and i32 %20, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool22.not = icmp eq i32 %21, 0
  %cond = select i1 %tobool22.not, i32 3000, i32 11000
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %cond) #8
  tail call void @__might_sleep(ptr noundef nonnull @.str.22, i32 noundef 125) #8
  %22 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags2, align 4
  %24 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %if.then19.wait_on_bit_timeout.exit_crit_edge, label %if.end.i

if.then19.wait_on_bit_timeout.exit_crit_edge:     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_on_bit_timeout.exit

if.end.i:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 @out_of_line_wait_on_bit_timeout(ptr noundef %flags2, i32 noundef 0, ptr noundef nonnull @bit_wait_timeout, i32 noundef 2, i32 noundef %call2.i) #8
  br label %wait_on_bit_timeout.exit

wait_on_bit_timeout.exit:                         ; preds = %if.end.i, %if.then19.wait_on_bit_timeout.exit_crit_edge
  %25 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags2, align 4
  %and1.i182 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i182)
  %tobool28.not = icmp eq i32 %and1.i182, 0
  br i1 %tobool28.not, label %wait_on_bit_timeout.exit.if.end31_crit_edge, label %if.then29

wait_on_bit_timeout.exit.if.end31_crit_edge:      ; preds = %wait_on_bit_timeout.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then29:                                        ; preds = %wait_on_bit_timeout.exit
  call void @__sanitizer_cov_trace_pc() #10
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %28, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.18, ptr noundef %name) #8
  br label %error

if.end31:                                         ; preds = %wait_on_bit_timeout.exit.if.end31_crit_edge, %lor.lhs.false.if.end31_crit_edge
  %ws_awake_device = getelementptr inbounds %struct.qca_data, ptr %3, i32 0, i32 16
  %call32 = tail call zeroext i1 @cancel_work_sync(ptr noundef %ws_awake_device) #8
  %ws_awake_rx = getelementptr inbounds %struct.qca_data, ptr %3, i32 0, i32 15
  %call33 = tail call zeroext i1 @cancel_work_sync(ptr noundef %ws_awake_rx) #8
  %hci_ibs_lock = getelementptr inbounds %struct.qca_data, ptr %3, i32 0, i32 5
  %call36 = tail call i32 @_raw_spin_lock_irqsave_nested(ptr noundef %hci_ibs_lock, i32 noundef 1) #8
  %tx_ibs_state = getelementptr inbounds %struct.qca_data, ptr %3, i32 0, i32 6
  %29 = ptrtoint ptr %tx_ibs_state to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %tx_ibs_state, align 4
  %31 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.184)
  switch i8 %30, label %sw.default [
    i8 1, label %sw.bb
    i8 2, label %if.end31.sw.bb41_crit_edge
    i8 0, label %if.end57
  ]

if.end31.sw.bb41_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb41

sw.bb:                                            ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %wake_retrans_timer = getelementptr inbounds %struct.qca_data, ptr %3, i32 0, i32 12
  %call40 = tail call i32 @del_timer(ptr noundef %wake_retrans_timer) #8
  br label %sw.bb41

sw.bb41:                                          ; preds = %sw.bb, %if.end31.sw.bb41_crit_edge
  %tx_idle_timer = getelementptr inbounds %struct.qca_data, ptr %3, i32 0, i32 10
  %call42 = tail call i32 @del_timer(ptr noundef %tx_idle_timer) #8
  %serdev43 = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %serdev43 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %serdev43, align 4
  tail call void @serdev_device_write_flush(ptr noundef %33) #8
  %34 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -2, ptr %cmd, align 1
  %35 = ptrtoint ptr %serdev43 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %serdev43, align 4
  %call45 = call i32 @serdev_device_write_buf(ptr noundef %36, ptr noundef nonnull %cmd, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.then48, label %if.then59

if.then48:                                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.19) #8
  br label %sw.epilog.thread

sw.default:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %conv39 = zext i8 %30 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.20, i32 noundef %conv39) #8
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %sw.default, %if.then48
  %ret.0.ph = phi i32 [ %call45, %if.then48 ], [ -22, %sw.default ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %hci_ibs_lock, i32 noundef %call36) #8
  br label %error

if.end57:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hci_ibs_lock, i32 noundef %call36) #8
  br label %if.end62

if.then59:                                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %tx_ibs_state to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %tx_ibs_state, align 4
  %ibs_sent_slps = getelementptr inbounds %struct.qca_data, ptr %3, i32 0, i32 28
  %38 = ptrtoint ptr %ibs_sent_slps to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %ibs_sent_slps, align 8
  %inc = add i64 %39, 1
  store i64 %inc, ptr %ibs_sent_slps, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %hci_ibs_lock, i32 noundef %call36) #8
  %40 = ptrtoint ptr %serdev43 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %serdev43, align 4
  call void @serdev_device_wait_until_sent(ptr noundef %41, i32 noundef 10) #8
  call fastcc void @serial_clock_vote(i32 noundef 2, ptr noundef %1)
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %if.end57
  call void @__might_sleep(ptr noundef nonnull @.str.21, i32 noundef 2286) #8
  %rx_ibs_state = getelementptr inbounds %struct.qca_data, ptr %3, i32 0, i32 7
  %42 = ptrtoint ptr %rx_ibs_state to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %rx_ibs_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp71 = icmp eq i8 %43, 0
  br i1 %cmp71, label %if.end62.cleanup124_crit_edge, label %if.then84

if.end62.cleanup124_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup124

if.then84:                                        ; preds = %if.end62
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %44 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %suspend_wait_q = getelementptr inbounds %struct.qca_data, ptr %3, i32 0, i32 24
  %call87209 = call i32 @prepare_to_wait_event(ptr noundef %suspend_wait_q, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %45 = ptrtoint ptr %rx_ibs_state to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %rx_ibs_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp91210 = icmp eq i8 %46, 0
  br i1 %cmp91210, label %if.end117.thread, label %if.then84.if.end110_crit_edge

if.then84.if.end110_crit_edge:                    ; preds = %if.then84
  br label %if.end110

if.end117.thread:                                 ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  call void @finish_wait(ptr noundef %suspend_wait_q, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %cleanup124

if.end110:                                        ; preds = %cleanup.if.end110_crit_edge, %if.then84.if.end110_crit_edge
  %__ret85.1212 = phi i32 [ %__ret85.1, %cleanup.if.end110_crit_edge ], [ 20, %if.then84.if.end110_crit_edge ]
  %call87211 = phi i32 [ %call87, %cleanup.if.end110_crit_edge ], [ %call87209, %if.then84.if.end110_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87211)
  %tobool111.not = icmp eq i32 %call87211, 0
  br i1 %tobool111.not, label %cleanup, label %if.end117.thread203

if.end117.thread203:                              ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %cleanup124

cleanup:                                          ; preds = %if.end110
  %call114 = call i32 @schedule_timeout(i32 noundef %__ret85.1212) #8
  %call87 = call i32 @prepare_to_wait_event(ptr noundef %suspend_wait_q, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %47 = ptrtoint ptr %rx_ibs_state to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %rx_ibs_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp91 = icmp eq i8 %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool97.not = icmp eq i32 %call114, 0
  %49 = select i1 %cmp91, i1 %tobool97.not, i1 false
  %__ret85.1 = select i1 %49, i32 1, i32 %call114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret85.1)
  %tobool104.not = icmp eq i32 %__ret85.1, 0
  %50 = select i1 %cmp91, i1 true, i1 %tobool104.not
  br i1 %50, label %if.end117, label %cleanup.if.end110_crit_edge

cleanup.if.end110_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

if.end117:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret85.1)
  %phi.cmp = icmp eq i32 %__ret85.1, 0
  call void @finish_wait(ptr noundef %suspend_wait_q, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br i1 %phi.cmp, label %if.end117.error_crit_edge, label %if.end117.cleanup124_crit_edge

if.end117.cleanup124_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup124

if.end117.error_crit_edge:                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

error:                                            ; preds = %if.end117.error_crit_edge, %sw.epilog.thread, %if.then29
  %ret.1 = phi i32 [ -110, %if.then29 ], [ -110, %if.end117.error_crit_edge ], [ %ret.0.ph, %sw.epilog.thread ]
  call void @_clear_bit(i32 noundef 2, ptr noundef %flags2) #8
  br label %cleanup124

cleanup124:                                       ; preds = %error, %if.end117.cleanup124_crit_edge, %if.end117.thread203, %if.end117.thread, %if.end62.cleanup124_crit_edge, %land.lhs.true.cleanup124_crit_edge, %entry.cleanup124_crit_edge
  %retval.0 = phi i32 [ %ret.1, %error ], [ 0, %entry.cleanup124_crit_edge ], [ 0, %land.lhs.true.cleanup124_crit_edge ], [ 0, %if.end117.cleanup124_crit_edge ], [ 0, %if.end117.thread203 ], [ 0, %if.end62.cleanup124_crit_edge ], [ 0, %if.end117.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %flags = getelementptr inbounds %struct.qca_data, ptr %3, i32 0, i32 22
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave_nested(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @serial_clock_vote(i32 noundef %vote, ptr nocapture noundef readonly %hu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %tx_vote = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %tx_vote to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_vote, align 2, !range !377
  %rx_vote = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %rx_vote to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rx_vote, align 1, !range !377
  %or101 = or i8 %5, %3
  %6 = zext i32 %vote to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.185)
  switch i32 %vote, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 3, label %sw.bb10
    i32 2, label %sw.bb13
    i32 4, label %sw.bb16
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or101)
  %tobool3.not = icmp eq i8 %or101, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %vote_last_jif = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 33
  %8 = ptrtoint ptr %vote_last_jif to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %vote_last_jif, align 8
  %10 = trunc i64 %9 to i32
  %conv5 = sub i32 %7, %10
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %conv5) #8
  br i1 %tobool3.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %vote_off_ms = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 35
  %11 = ptrtoint ptr %vote_off_ms to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vote_off_ms, align 4
  %add = add i32 %12, %call
  store i32 %add, ptr %vote_off_ms, align 4
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %vote_on_ms = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 34
  %13 = ptrtoint ptr %vote_on_ms to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vote_on_ms, align 8
  %add7 = add i32 %14, %call
  store i32 %add7, ptr %vote_on_ms, align 8
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %tx_vote to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %tx_vote, align 2
  %tx_votes_on = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 36
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %rx_vote to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %rx_vote, align 1
  %rx_votes_on = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 37
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %tx_vote to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %tx_vote, align 2
  %tx_votes_off = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 38
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %rx_vote to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %rx_vote, align 1
  %rx_votes_off = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 39
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.23) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb16, %sw.bb13, %sw.bb10, %sw.bb8
  %rx_votes_off.sink104 = phi ptr [ %rx_votes_off, %sw.bb16 ], [ %tx_votes_off, %sw.bb13 ], [ %rx_votes_on, %sw.bb10 ], [ %tx_votes_on, %sw.bb8 ]
  %19 = ptrtoint ptr %rx_votes_off.sink104 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %rx_votes_off.sink104, align 8
  %inc18 = add i64 %20, 1
  store i64 %inc18, ptr %rx_votes_off.sink104, align 8
  %21 = ptrtoint ptr %rx_vote to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %rx_vote, align 1, !range !377
  %23 = ptrtoint ptr %tx_vote to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %tx_vote, align 2, !range !377
  %or25102 = or i8 %24, %22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or25102)
  %tobool26.not = icmp eq i8 %or25102, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %or25102, i8 %or101)
  %cmp.not = icmp eq i8 %or25102, %or101
  br i1 %cmp.not, label %sw.epilog.cleanup_crit_edge, label %do.body

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %sw.epilog
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial_clock_vote.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial_clock_vote, %if.then44)) #8
          to label %do.end [label %if.then44], !srcloc !375

if.then44:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %cond = select i1 %tobool26.not, ptr @.str.28, ptr @.str.27
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @serial_clock_vote.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.26, ptr noundef nonnull %cond, ptr noundef nonnull @.str.27) #8
  br label %do.end

do.end:                                           ; preds = %if.then44, %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %vote_last_jif51 = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 33
  %26 = ptrtoint ptr %vote_last_jif51 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %vote_last_jif51, align 8
  %28 = trunc i64 %27 to i32
  %conv53 = sub i32 %25, %28
  %call54 = tail call i32 @jiffies_to_msecs(i32 noundef %conv53) #8
  br i1 %tobool26.not, label %if.else60, label %if.then56

if.then56:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %votes_on = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 40
  %29 = ptrtoint ptr %votes_on to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %votes_on, align 8
  %inc57 = add i64 %30, 1
  store i64 %inc57, ptr %votes_on, align 8
  %vote_off_ms58 = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 35
  %31 = ptrtoint ptr %vote_off_ms58 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vote_off_ms58, align 4
  %add59 = add i32 %32, %call54
  store i32 %add59, ptr %vote_off_ms58, align 4
  br label %if.end64

if.else60:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %votes_off = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 41
  %33 = ptrtoint ptr %votes_off to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %votes_off, align 8
  %inc61 = add i64 %34, 1
  store i64 %inc61, ptr %votes_off, align 8
  %vote_on_ms62 = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 34
  %35 = ptrtoint ptr %vote_on_ms62 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vote_on_ms62, align 8
  %add63 = add i32 %36, %call54
  store i32 %add63, ptr %vote_on_ms62, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.else60, %if.then56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %conv65 = zext i32 %37 to i64
  %38 = ptrtoint ptr %vote_last_jif51 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %conv65, ptr %vote_last_jif51, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %sw.epilog.cleanup_crit_edge, %sw.default, %if.else, %if.then
  ret void
}

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit_timeout(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait_timeout(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca_power_off(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %serdev.i = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %serdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serdev.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.qca_soc_type.exit_crit_edge, label %if.then.i

entry.qca_soc_type.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %qca_soc_type.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  %btsoc_type.i = getelementptr inbounds %struct.qca_serdev, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %btsoc_type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %btsoc_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %phi.cmp = icmp eq i32 %9, 1
  br label %qca_soc_type.exit

qca_soc_type.exit:                                ; preds = %if.then.i, %entry.qca_soc_type.exit_crit_edge
  %soc_type.0.i = phi i1 [ %phi.cmp, %if.then.i ], [ true, %entry.qca_soc_type.exit_crit_edge ]
  %hdev2 = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %hdev2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hdev2, align 4
  %hw_error = getelementptr inbounds %struct.hci_dev, ptr %11, i32 0, i32 239
  %12 = ptrtoint ptr %hw_error to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %hw_error, align 4
  %13 = load ptr, ptr %hdev2, align 4
  %cmd_timeout = getelementptr inbounds %struct.hci_dev, ptr %13, i32 0, i32 243
  %14 = ptrtoint ptr %cmd_timeout to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %cmd_timeout, align 4
  %wake_retrans_timer = getelementptr inbounds %struct.qca_data, ptr %3, i32 0, i32 12
  %call4 = tail call i32 @del_timer_sync(ptr noundef %wake_retrans_timer) #8
  %tx_idle_timer = getelementptr inbounds %struct.qca_data, ptr %3, i32 0, i32 10
  %call5 = tail call i32 @del_timer_sync(ptr noundef %tx_idle_timer) #8
  br i1 %soc_type.0.i, label %qca_soc_type.exit.if.end_crit_edge, label %land.lhs.true

qca_soc_type.exit.if.end_crit_edge:               ; preds = %qca_soc_type.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %qca_soc_type.exit
  %memdump_state = getelementptr inbounds %struct.qca_data, ptr %3, i32 0, i32 25
  %15 = ptrtoint ptr %memdump_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %memdump_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp6 = icmp eq i32 %16, 0
  br i1 %cmp6, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 @qca_send_pre_shutdown_cmd(ptr noundef %hdev) #8
  tail call void @usleep_range_state(i32 noundef 8000, i32 noundef 10000, i32 noundef 2) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %qca_soc_type.exit.if.end_crit_edge
  tail call fastcc void @qca_power_shutdown(ptr noundef %1)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_load(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qca_send_pre_shutdown_cmd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qca_power_shutdown(ptr noundef %hu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %serdev.i = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 1
  %2 = ptrtoint ptr %serdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serdev.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.qca_soc_type.exit_crit_edge, label %if.then.i

entry.qca_soc_type.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %qca_soc_type.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %btsoc_type.i = getelementptr inbounds %struct.qca_serdev, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %btsoc_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %btsoc_type.i, align 4
  br label %qca_soc_type.exit

qca_soc_type.exit:                                ; preds = %if.then.i, %entry.qca_soc_type.exit_crit_edge
  %soc_type.0.i = phi i32 [ %7, %if.then.i ], [ 1, %entry.qca_soc_type.exit_crit_edge ]
  %hci_ibs_lock = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 5
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hci_ibs_lock) #8
  %flags6 = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags6) #8
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_flush.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_power_shutdown, %if.then.i68)) #8
          to label %qca_flush.exit [label %if.then.i68], !srcloc !375

if.then.i68:                                      ; preds = %qca_soc_type.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_flush.__UNIQUE_ID_ddebug487, ptr noundef nonnull @.str.56, ptr noundef %hu) #8
  br label %qca_flush.exit

qca_flush.exit:                                   ; preds = %if.then.i68, %qca_soc_type.exit
  %tx_wait_q.i = getelementptr inbounds %struct.qca_data, ptr %9, i32 0, i32 3
  tail call void @skb_queue_purge(ptr noundef %tx_wait_q.i) #8
  %txq.i = getelementptr inbounds %struct.qca_data, ptr %9, i32 0, i32 2
  tail call void @skb_queue_purge(ptr noundef %txq.i) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hci_ibs_lock, i32 noundef %call3) #8
  %10 = ptrtoint ptr %serdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %serdev.i, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %qca_flush.exit.cleanup_crit_edge, label %if.end

qca_flush.exit.cleanup_crit_edge:                 ; preds = %qca_flush.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %qca_flush.exit
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i, align 4
  %soc_type.off.i = add i32 %soc_type.0.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %soc_type.off.i)
  %switch.i = icmp ult i32 %soc_type.off.i, 3
  br i1 %switch.i, label %host_set_baudrate.exit, label %if.else

host_set_baudrate.exit:                           ; preds = %if.end
  %call.i = tail call i32 @serdev_device_set_baudrate(ptr noundef nonnull %11, i32 noundef 2400) #8
  %call13 = tail call fastcc i32 @qca_send_power_pulse(ptr noundef %hu, i1 noundef zeroext false)
  %tobool.not.i72 = icmp eq ptr %13, null
  br i1 %tobool.not.i72, label %host_set_baudrate.exit.if.end43_crit_edge, label %if.end.i

host_set_baudrate.exit.if.end43_crit_edge:        ; preds = %host_set_baudrate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.end.i:                                         ; preds = %host_set_baudrate.exit
  %bt_power.i = getelementptr inbounds %struct.qca_serdev, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %bt_power.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bt_power.i, align 4
  %vregs_on.i = getelementptr inbounds %struct.qca_power, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %vregs_on.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %vregs_on.i, align 4, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool1.not.i = icmp eq i8 %17, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end43_crit_edge, label %if.end3.i

if.end.i.if.end43_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %num_vregs.i = getelementptr inbounds %struct.qca_power, ptr %15, i32 0, i32 2
  %18 = ptrtoint ptr %num_vregs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_vregs.i, align 4
  %vreg_bulk.i = getelementptr inbounds %struct.qca_power, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %vreg_bulk.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vreg_bulk.i, align 4
  %call.i73 = tail call i32 @regulator_bulk_disable(i32 noundef %19, ptr noundef %21) #8
  %22 = ptrtoint ptr %vregs_on.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %vregs_on.i, align 4
  %susclk.i = getelementptr inbounds %struct.qca_serdev, ptr %13, i32 0, i32 3
  %23 = ptrtoint ptr %susclk.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %susclk.i, align 4
  tail call void @clk_disable(ptr noundef %24) #8
  tail call void @clk_unprepare(ptr noundef %24) #8
  br label %if.end43

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %soc_type.0.i)
  %cmp14 = icmp eq i32 %soc_type.0.i, 6
  %bt_en = getelementptr inbounds %struct.qca_serdev, ptr %13, i32 0, i32 1
  %25 = ptrtoint ptr %bt_en to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bt_en, align 4
  br i1 %cmp14, label %if.then16, label %if.else36

if.then16:                                        ; preds = %if.else
  tail call void @gpiod_set_value_cansleep(ptr noundef %26, i32 noundef 0) #8
  tail call void @msleep(i32 noundef 100) #8
  %tobool.not.i74 = icmp eq ptr %13, null
  br i1 %tobool.not.i74, label %if.then16.qca_regulator_disable.exit84_crit_edge, label %if.end.i78

if.then16.qca_regulator_disable.exit84_crit_edge: ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %qca_regulator_disable.exit84

if.end.i78:                                       ; preds = %if.then16
  %bt_power.i75 = getelementptr inbounds %struct.qca_serdev, ptr %13, i32 0, i32 5
  %27 = ptrtoint ptr %bt_power.i75 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bt_power.i75, align 4
  %vregs_on.i76 = getelementptr inbounds %struct.qca_power, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %vregs_on.i76 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %vregs_on.i76, align 4, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool1.not.i77 = icmp eq i8 %30, 0
  br i1 %tobool1.not.i77, label %if.end.i78.qca_regulator_disable.exit84_crit_edge, label %if.end3.i83

if.end.i78.qca_regulator_disable.exit84_crit_edge: ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #10
  br label %qca_regulator_disable.exit84

if.end3.i83:                                      ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #10
  %num_vregs.i79 = getelementptr inbounds %struct.qca_power, ptr %28, i32 0, i32 2
  %31 = ptrtoint ptr %num_vregs.i79 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_vregs.i79, align 4
  %vreg_bulk.i80 = getelementptr inbounds %struct.qca_power, ptr %28, i32 0, i32 1
  %33 = ptrtoint ptr %vreg_bulk.i80 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vreg_bulk.i80, align 4
  %call.i81 = tail call i32 @regulator_bulk_disable(i32 noundef %32, ptr noundef %34) #8
  %35 = ptrtoint ptr %vregs_on.i76 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %vregs_on.i76, align 4
  %susclk.i82 = getelementptr inbounds %struct.qca_serdev, ptr %13, i32 0, i32 3
  %36 = ptrtoint ptr %susclk.i82 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %susclk.i82, align 4
  tail call void @clk_disable(ptr noundef %37) #8
  tail call void @clk_unprepare(ptr noundef %37) #8
  br label %qca_regulator_disable.exit84

qca_regulator_disable.exit84:                     ; preds = %if.end3.i83, %if.end.i78.qca_regulator_disable.exit84_crit_edge, %if.then16.qca_regulator_disable.exit84_crit_edge
  %sw_ctrl = getelementptr inbounds %struct.qca_serdev, ptr %13, i32 0, i32 2
  %38 = ptrtoint ptr %sw_ctrl to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sw_ctrl, align 4
  %tobool17.not = icmp eq ptr %39, null
  br i1 %tobool17.not, label %qca_regulator_disable.exit84.if.end43_crit_edge, label %if.then18

qca_regulator_disable.exit84.if.end43_crit_edge:  ; preds = %qca_regulator_disable.exit84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then18:                                        ; preds = %qca_regulator_disable.exit84
  call void @__sanitizer_cov_trace_pc() #10
  %call20 = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %39) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_power_shutdown.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_power_shutdown, %if.then29)) #8
          to label %if.end43 [label %if.then29], !srcloc !375

if.then29:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21 = icmp ne i32 %call20, 0
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %40 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %41, i32 0, i32 2
  %conv31 = zext i1 %tobool21 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_power_shutdown.__UNIQUE_ID_ddebug506, ptr noundef nonnull @.str.54, ptr noundef %name, i32 noundef %conv31) #8
  br label %if.end43

if.else36:                                        ; preds = %if.else
  %tobool38.not = icmp eq ptr %26, null
  br i1 %tobool38.not, label %if.else36.if.end43_crit_edge, label %if.then39

if.else36.if.end43_crit_edge:                     ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then39:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %26, i32 noundef 0) #8
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %if.else36.if.end43_crit_edge, %if.then29, %if.then18, %qca_regulator_disable.exit84.if.end43_crit_edge, %if.end3.i, %if.end.i.if.end43_crit_edge, %host_set_baudrate.exit.if.end43_crit_edge
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags6) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %qca_flush.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca_flush(ptr noundef %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_flush.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_flush, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !375

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_flush.__UNIQUE_ID_ddebug487, ptr noundef nonnull @.str.56, ptr noundef %hu) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tx_wait_q = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 3
  tail call void @skb_queue_purge(ptr noundef %tx_wait_q) #8
  %txq = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 2
  tail call void @skb_queue_purge(ptr noundef %txq) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qca_send_power_pulse(ptr noundef %hu, i1 noundef zeroext %on) unnamed_addr #2 align 64 {
entry:
  %cmd = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd) #8
  %conv = select i1 %on, i8 -4, i8 -64
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %cmd, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_send_power_pulse.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_send_power_pulse, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !375

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %1 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cmd, align 1
  %conv6 = zext i8 %4 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_send_power_pulse.__UNIQUE_ID_ddebug502, ptr noundef nonnull @.str.58, ptr noundef %name, i32 noundef %conv6) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %serdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 1
  %5 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %serdev, align 4
  tail call void @serdev_device_write_flush(ptr noundef %6) #8
  tail call void @hci_uart_set_flow_control(ptr noundef %hu, i1 noundef zeroext true) #8
  %7 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %serdev, align 4
  %call8 = call i32 @serdev_device_write_buf(ptr noundef %8, ptr noundef nonnull %cmd, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.then10, label %if.end15

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %hdev11 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %9 = ptrtoint ptr %hdev11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hdev11, align 4
  %name12 = getelementptr inbounds %struct.hci_dev, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cmd, align 1
  %conv14 = zext i8 %12 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.59, ptr noundef %name12, i32 noundef %conv14) #8
  br label %cleanup

if.end15:                                         ; preds = %do.end
  %13 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %serdev, align 4
  call void @serdev_device_wait_until_sent(ptr noundef %14, i32 noundef 10) #8
  call void @hci_uart_set_flow_control(ptr noundef %hu, i1 noundef zeroext false) #8
  br i1 %on, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  call void @msleep(i32 noundef 100) #8
  br label %cleanup

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then18, %if.then10
  %retval.0 = phi i32 [ %call8, %if.then10 ], [ 0, %if.else ], [ 0, %if.then18 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_set_baudrate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_uart_set_baudrate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_uart_set_flow_control(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_uart_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca_open(ptr noundef %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_open.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_open, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !375

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_open.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.62, ptr noundef %hu) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call zeroext i1 @hci_uart_has_flow_control(ptr noundef %hu) #8
  br i1 %call3, label %if.end5, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 976) #12
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %txq = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 2
  %lock.i = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 2, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.89, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #8
  %1 = ptrtoint ptr %txq to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %txq, ptr %txq, align 8
  %prev.i.i = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %txq, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %qlen.i.i, align 8
  %tx_wait_q = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 3
  %lock.i220 = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 3, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i220, ptr noundef nonnull @.str.89, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #8
  %4 = ptrtoint ptr %tx_wait_q to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tx_wait_q, ptr %tx_wait_q, align 8
  %prev.i.i221 = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i221 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %tx_wait_q, ptr %prev.i.i221, align 4
  %qlen.i.i222 = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %qlen.i.i222 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %qlen.i.i222, align 8
  %rx_memdump_q = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 4
  %lock.i223 = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 4, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i223, ptr noundef nonnull @.str.89, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #8
  %7 = ptrtoint ptr %rx_memdump_q to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %rx_memdump_q, ptr %rx_memdump_q, align 8
  %prev.i.i224 = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i224 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %rx_memdump_q, ptr %prev.i.i224, align 4
  %qlen.i.i225 = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %qlen.i.i225 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %qlen.i.i225, align 8
  %hci_ibs_lock = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %hci_ibs_lock, ptr noundef nonnull @.str.63, ptr noundef nonnull @qca_open.__key, i16 noundef signext 3) #8
  %hci_memdump_lock = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 26
  tail call void @__mutex_init(ptr noundef %hci_memdump_lock, ptr noundef nonnull @.str.65, ptr noundef nonnull @qca_open.__key.64) #8
  %call17 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.66, i32 noundef 655362, i32 noundef 1) #8
  %workqueue = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 14
  %10 = ptrtoint ptr %workqueue to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call17, ptr %workqueue, align 8
  %tobool19.not = icmp eq ptr %call17, null
  br i1 %tobool19.not, label %if.then20, label %do.body22

if.then20:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.67) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

do.body22:                                        ; preds = %if.end9
  %ws_awake_rx = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 15
  tail call void @__init_work(ptr noundef %ws_awake_rx, i32 noundef 0) #8
  %11 = ptrtoint ptr %ws_awake_rx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %ws_awake_rx, align 4
  %lockdep_map = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 15, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.69, ptr noundef nonnull @qca_open.__key.68, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry26 = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 15, i32 1
  %12 = ptrtoint ptr %entry26 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entry26, ptr %entry26, align 8
  %prev.i = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 15, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry26, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 15, i32 2
  %14 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @qca_wq_awake_rx, ptr %func, align 8
  %ws_awake_device = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 16
  tail call void @__init_work(ptr noundef %ws_awake_device, i32 noundef 0) #8
  %15 = ptrtoint ptr %ws_awake_device to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -64, ptr %ws_awake_device, align 8
  %lockdep_map36 = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 16, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map36, ptr noundef nonnull @.str.71, ptr noundef nonnull @qca_open.__key.70, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry38 = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 16, i32 1
  %16 = ptrtoint ptr %entry38 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry38, ptr %entry38, align 4
  %prev.i226 = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 16, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i226 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry38, ptr %prev.i226, align 8
  %func40 = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 16, i32 2
  %18 = ptrtoint ptr %func40 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @qca_wq_awake_device, ptr %func40, align 4
  %ws_rx_vote_off = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 17
  tail call void @__init_work(ptr noundef %ws_rx_vote_off, i32 noundef 0) #8
  %19 = ptrtoint ptr %ws_rx_vote_off to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -64, ptr %ws_rx_vote_off, align 4
  %lockdep_map49 = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 17, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map49, ptr noundef nonnull @.str.73, ptr noundef nonnull @qca_open.__key.72, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry51 = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 17, i32 1
  %20 = ptrtoint ptr %entry51 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %entry51, ptr %entry51, align 8
  %prev.i227 = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 17, i32 1, i32 1
  %21 = ptrtoint ptr %prev.i227 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %entry51, ptr %prev.i227, align 4
  %func53 = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 17, i32 2
  %22 = ptrtoint ptr %func53 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @qca_wq_serial_rx_clock_vote_off, ptr %func53, align 8
  %ws_tx_vote_off = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 18
  tail call void @__init_work(ptr noundef %ws_tx_vote_off, i32 noundef 0) #8
  %23 = ptrtoint ptr %ws_tx_vote_off to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -64, ptr %ws_tx_vote_off, align 8
  %lockdep_map62 = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 18, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map62, ptr noundef nonnull @.str.75, ptr noundef nonnull @qca_open.__key.74, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry64 = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 18, i32 1
  %24 = ptrtoint ptr %entry64 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %entry64, ptr %entry64, align 4
  %prev.i228 = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 18, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i228 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %entry64, ptr %prev.i228, align 8
  %func66 = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 18, i32 2
  %26 = ptrtoint ptr %func66 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @qca_wq_serial_tx_clock_vote_off, ptr %func66, align 4
  %ctrl_memdump_evt = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 19
  tail call void @__init_work(ptr noundef %ctrl_memdump_evt, i32 noundef 0) #8
  %27 = ptrtoint ptr %ctrl_memdump_evt to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -64, ptr %ctrl_memdump_evt, align 4
  %lockdep_map75 = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 19, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map75, ptr noundef nonnull @.str.77, ptr noundef nonnull @qca_open.__key.76, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry77 = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 19, i32 1
  %28 = ptrtoint ptr %entry77 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %entry77, ptr %entry77, align 8
  %prev.i229 = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 19, i32 1, i32 1
  %29 = ptrtoint ptr %prev.i229 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %entry77, ptr %prev.i229, align 4
  %func79 = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 19, i32 2
  %30 = ptrtoint ptr %func79 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @qca_controller_memdump, ptr %func79, align 8
  %ctrl_memdump_timeout = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 20
  tail call void @__init_work(ptr noundef %ctrl_memdump_timeout, i32 noundef 0) #8
  %31 = ptrtoint ptr %ctrl_memdump_timeout to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -64, ptr %ctrl_memdump_timeout, align 8
  %lockdep_map91 = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 20, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map91, ptr noundef nonnull @.str.79, ptr noundef nonnull @qca_open.__key.78, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry94 = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 20, i32 0, i32 1
  %32 = ptrtoint ptr %entry94 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %entry94, ptr %entry94, align 4
  %prev.i230 = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 20, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %prev.i230 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %entry94, ptr %prev.i230, align 8
  %func97 = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 20, i32 0, i32 2
  %34 = ptrtoint ptr %func97 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @qca_controller_memdump_timeout, ptr %func97, align 4
  %timer = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 20, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.81, ptr noundef nonnull @qca_open.__key.80) #8
  %suspend_wait_q = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 24
  tail call void @__init_waitqueue_head(ptr noundef %suspend_wait_q, ptr noundef nonnull @.str.83, ptr noundef nonnull @qca_open.__key.82) #8
  %35 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %hu, ptr %call7.i.i, align 8
  %drop_ev_comp = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 23
  %36 = ptrtoint ptr %drop_ev_comp to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %drop_ev_comp, align 4
  %wait.i = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 23, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.113, ptr noundef nonnull @init_completion.__key) #8
  %tx_ibs_state = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 6
  %37 = ptrtoint ptr %tx_ibs_state to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %tx_ibs_state, align 4
  %rx_ibs_state = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 7
  %38 = ptrtoint ptr %rx_ibs_state to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %rx_ibs_state, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %conv = zext i32 %39 to i64
  %vote_last_jif = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 33
  %40 = ptrtoint ptr %vote_last_jif to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %conv, ptr %vote_last_jif, align 8
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %41 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i, ptr %priv, align 4
  %serdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 1
  %42 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %serdev, align 4
  %tobool110.not = icmp eq ptr %43, null
  br i1 %tobool110.not, label %do.body22.do.body128_crit_edge, label %if.then111

do.body22.do.body128_crit_edge:                   ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body128

if.then111:                                       ; preds = %do.body22
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %43, i32 0, i32 8
  %44 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %driver_data.i.i, align 4
  %btsoc_type = getelementptr inbounds %struct.qca_serdev, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %btsoc_type to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %btsoc_type, align 4
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.186)
  switch i32 %47, label %if.then111.if.end121_crit_edge [
    i32 6, label %if.then111.if.then119_crit_edge
    i32 4, label %if.then111.if.then119_crit_edge233
    i32 3, label %if.then111.if.then119_crit_edge234
    i32 2, label %if.then111.if.then119_crit_edge235
  ]

if.then111.if.then119_crit_edge235:               ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then119

if.then111.if.then119_crit_edge234:               ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then119

if.then111.if.then119_crit_edge233:               ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then119

if.then111.if.then119_crit_edge:                  ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then119

if.then111.if.end121_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end121

if.then119:                                       ; preds = %if.then111.if.then119_crit_edge, %if.then111.if.then119_crit_edge233, %if.then111.if.then119_crit_edge234, %if.then111.if.then119_crit_edge235
  %init_speed = getelementptr inbounds %struct.qca_serdev, ptr %45, i32 0, i32 6
  %49 = ptrtoint ptr %init_speed to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %init_speed, align 4
  %init_speed120 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 12
  %51 = ptrtoint ptr %init_speed120 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %init_speed120, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.then119, %if.then111.if.end121_crit_edge
  %oper_speed = getelementptr inbounds %struct.qca_serdev, ptr %45, i32 0, i32 7
  %52 = ptrtoint ptr %oper_speed to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %oper_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool122.not = icmp eq i32 %53, 0
  br i1 %tobool122.not, label %if.end121.do.body128_crit_edge, label %if.then123

if.end121.do.body128_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body128

if.then123:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  %oper_speed125 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 13
  %54 = ptrtoint ptr %oper_speed125 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %oper_speed125, align 4
  br label %do.body128

do.body128:                                       ; preds = %if.then123, %if.end121.do.body128_crit_edge, %do.body22.do.body128_crit_edge
  %wake_retrans_timer = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 12
  tail call void @init_timer_key(ptr noundef %wake_retrans_timer, ptr noundef nonnull @hci_ibs_wake_retrans_timeout, i32 noundef 0, ptr noundef nonnull @.str.85, ptr noundef nonnull @qca_open.__key.84) #8
  %wake_retrans = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 13
  %55 = ptrtoint ptr %wake_retrans to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 100, ptr %wake_retrans, align 4
  %tx_idle_timer = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 10
  tail call void @init_timer_key(ptr noundef %tx_idle_timer, ptr noundef nonnull @hci_ibs_tx_idle_timeout, i32 noundef 0, ptr noundef nonnull @.str.87, ptr noundef nonnull @qca_open.__key.86) #8
  %tx_idle_delay = getelementptr inbounds %struct.qca_data, ptr %call7.i.i, i32 0, i32 11
  %56 = ptrtoint ptr %tx_idle_delay to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 2000, ptr %tx_idle_delay, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_open.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_open, %if.then146)) #8
          to label %cleanup [label %if.then146], !srcloc !375

if.then146:                                       ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %tx_idle_delay to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tx_idle_delay, align 8
  %59 = ptrtoint ptr %wake_retrans to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %wake_retrans, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_open.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.88, i32 noundef %58, i32 noundef %60) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then146, %do.body128, %if.then20, %if.end5.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then20 ], [ -95, %do.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ 0, %if.then146 ], [ 0, %do.body128 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca_close(ptr noundef %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_close.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_close, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !375

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_close.__UNIQUE_ID_ddebug488, ptr noundef nonnull @.str.120, ptr noundef %hu) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %tx_vote.i = getelementptr inbounds %struct.qca_data, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %tx_vote.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tx_vote.i, align 2, !range !377
  %rx_vote.i = getelementptr inbounds %struct.qca_data, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %rx_vote.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rx_vote.i, align 1, !range !377
  %or101.i = or i8 %7, %5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or101.i)
  %tobool3.not.i = icmp eq i8 %or101.i, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %vote_last_jif.i = getelementptr inbounds %struct.qca_data, ptr %3, i32 0, i32 33
  %9 = ptrtoint ptr %vote_last_jif.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %vote_last_jif.i, align 8
  %11 = trunc i64 %10 to i32
  %conv5.i = sub i32 %8, %11
  %call.i = tail call i32 @jiffies_to_msecs(i32 noundef %conv5.i) #8
  br i1 %tobool3.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %vote_off_ms.i = getelementptr inbounds %struct.qca_data, ptr %3, i32 0, i32 35
  %12 = ptrtoint ptr %vote_off_ms.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vote_off_ms.i, align 4
  %add.i = add i32 %13, %call.i
  store i32 %add.i, ptr %vote_off_ms.i, align 4
  br label %serial_clock_vote.exit

if.else.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %vote_on_ms.i = getelementptr inbounds %struct.qca_data, ptr %3, i32 0, i32 34
  %14 = ptrtoint ptr %vote_on_ms.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vote_on_ms.i, align 8
  %add7.i = add i32 %15, %call.i
  store i32 %add7.i, ptr %vote_on_ms.i, align 8
  br label %serial_clock_vote.exit

serial_clock_vote.exit:                           ; preds = %if.else.i, %if.then.i
  %tx_wait_q = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 3
  tail call void @skb_queue_purge(ptr noundef %tx_wait_q) #8
  %txq = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 2
  tail call void @skb_queue_purge(ptr noundef %txq) #8
  %rx_memdump_q = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 4
  tail call void @skb_queue_purge(ptr noundef %rx_memdump_q) #8
  %tx_idle_timer = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 10
  %call3 = tail call i32 @del_timer(ptr noundef %tx_idle_timer) #8
  %wake_retrans_timer = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 12
  %call4 = tail call i32 @del_timer(ptr noundef %wake_retrans_timer) #8
  %workqueue = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 14
  %16 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %workqueue, align 8
  tail call void @destroy_workqueue(ptr noundef %17) #8
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %1, align 8
  %rx_skb = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx_skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %20, i32 noundef 0) #8
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %priv, align 4
  tail call void @kfree(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca_setup(ptr noundef %hu) #2 align 64 {
entry:
  %ver = alloca %struct.qca_btsoc_version, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %serdev.i = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 1
  %4 = ptrtoint ptr %serdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serdev.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %qca_get_firmware_name.exit.thread, label %qca_soc_type.exit.i

qca_get_firmware_name.exit.thread:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ver) #8
  %6 = call ptr @memset(ptr %ver, i32 255, i32 12)
  br label %if.else.i

qca_soc_type.exit.i:                              ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i.i, align 4
  %btsoc_type.i = getelementptr inbounds %struct.qca_serdev, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %btsoc_type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %btsoc_type.i, align 4
  %firmware_name.i = getelementptr inbounds %struct.qca_serdev, ptr %8, i32 0, i32 8
  %11 = ptrtoint ptr %firmware_name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %firmware_name.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ver) #8
  %13 = call ptr @memset(ptr %ver, i32 255, i32 12)
  %14 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.187)
  switch i32 %10, label %qca_soc_type.exit.i.if.else.i_crit_edge [
    i32 6, label %qca_soc_type.exit.i.if.then.i157_crit_edge
    i32 4, label %qca_soc_type.exit.i.if.then.i157_crit_edge227
    i32 3, label %qca_soc_type.exit.i.if.then.i157_crit_edge228
    i32 2, label %qca_soc_type.exit.i.if.then.i157_crit_edge229
  ]

qca_soc_type.exit.i.if.then.i157_crit_edge229:    ; preds = %qca_soc_type.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i157

qca_soc_type.exit.i.if.then.i157_crit_edge228:    ; preds = %qca_soc_type.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i157

qca_soc_type.exit.i.if.then.i157_crit_edge227:    ; preds = %qca_soc_type.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i157

qca_soc_type.exit.i.if.then.i157_crit_edge:       ; preds = %qca_soc_type.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i157

qca_soc_type.exit.i.if.else.i_crit_edge:          ; preds = %qca_soc_type.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i157:                                     ; preds = %qca_soc_type.exit.i.if.then.i157_crit_edge, %qca_soc_type.exit.i.if.then.i157_crit_edge227, %qca_soc_type.exit.i.if.then.i157_crit_edge228, %qca_soc_type.exit.i.if.then.i157_crit_edge229
  %init_speed.i.i = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 12
  %15 = ptrtoint ptr %init_speed.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %init_speed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i28.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i28.i, label %qca_get_speed.exit.i, label %if.then.i157.if.end_crit_edge

if.then.i157.if.end_crit_edge:                    ; preds = %if.then.i157
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

qca_get_speed.exit.i:                             ; preds = %if.then.i157
  %proto.i.i = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 7
  %17 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %proto.i.i, align 4
  %init_speed3.i.i = getelementptr inbounds %struct.hci_uart_proto, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %init_speed3.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %init_speed3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i158 = icmp eq i32 %20, 0
  br i1 %tobool.not.i158, label %land.lhs.true.i, label %qca_get_speed.exit.i.if.end_crit_edge

qca_get_speed.exit.i.if.end_crit_edge:            ; preds = %qca_get_speed.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.i:                                  ; preds = %qca_get_speed.exit.i
  %oper_speed.i.i = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 13
  %21 = ptrtoint ptr %oper_speed.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %oper_speed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool10.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool10.not.i.i, label %qca_get_speed.exit31.i, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

qca_get_speed.exit31.i:                           ; preds = %land.lhs.true.i
  %oper_speed15.i.i = getelementptr inbounds %struct.hci_uart_proto, ptr %18, i32 0, i32 4
  %23 = ptrtoint ptr %oper_speed15.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %oper_speed15.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool6.not.i = icmp eq i32 %24, 0
  br i1 %tobool6.not.i, label %qca_get_speed.exit31.i.cleanup_crit_edge, label %qca_get_speed.exit31.i.if.end_crit_edge

qca_get_speed.exit31.i.if.end_crit_edge:          ; preds = %qca_get_speed.exit31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

qca_get_speed.exit31.i.cleanup_crit_edge:         ; preds = %qca_get_speed.exit31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.i:                                        ; preds = %qca_soc_type.exit.i.if.else.i_crit_edge, %qca_get_firmware_name.exit.thread
  %retval.0.i195 = phi ptr [ null, %qca_get_firmware_name.exit.thread ], [ %12, %qca_soc_type.exit.i.if.else.i_crit_edge ]
  %soc_type.0.i187192 = phi i32 [ 1, %qca_get_firmware_name.exit.thread ], [ %10, %qca_soc_type.exit.i.if.else.i_crit_edge ]
  %init_speed.i32.i = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 12
  %25 = ptrtoint ptr %init_speed.i32.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %init_speed.i32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i33.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i33.i, label %qca_get_speed.exit39.i, label %if.else.i.lor.lhs.false10.i_crit_edge

if.else.i.lor.lhs.false10.i_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false10.i

qca_get_speed.exit39.i:                           ; preds = %if.else.i
  %proto.i35.i = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 7
  %27 = ptrtoint ptr %proto.i35.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %proto.i35.i, align 4
  %init_speed3.i36.i = getelementptr inbounds %struct.hci_uart_proto, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %init_speed3.i36.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %init_speed3.i36.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool9.not.i = icmp eq i32 %30, 0
  br i1 %tobool9.not.i, label %qca_get_speed.exit39.i.cleanup_crit_edge, label %qca_get_speed.exit39.i.lor.lhs.false10.i_crit_edge

qca_get_speed.exit39.i.lor.lhs.false10.i_crit_edge: ; preds = %qca_get_speed.exit39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false10.i

qca_get_speed.exit39.i.cleanup_crit_edge:         ; preds = %qca_get_speed.exit39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false10.i:                                ; preds = %qca_get_speed.exit39.i.lor.lhs.false10.i_crit_edge, %if.else.i.lor.lhs.false10.i_crit_edge
  %oper_speed.i40.i = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 13
  %31 = ptrtoint ptr %oper_speed.i40.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %oper_speed.i40.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool10.not.i41.i = icmp eq i32 %32, 0
  br i1 %tobool10.not.i41.i, label %qca_get_speed.exit46.i, label %lor.lhs.false10.i.if.end_crit_edge

lor.lhs.false10.i.if.end_crit_edge:               ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

qca_get_speed.exit46.i:                           ; preds = %lor.lhs.false10.i
  %proto14.i42.i = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 7
  %33 = ptrtoint ptr %proto14.i42.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %proto14.i42.i, align 4
  %oper_speed15.i43.i = getelementptr inbounds %struct.hci_uart_proto, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %oper_speed15.i43.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %oper_speed15.i43.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool12.not.i = icmp eq i32 %36, 0
  br i1 %tobool12.not.i, label %qca_get_speed.exit46.i.cleanup_crit_edge, label %qca_get_speed.exit46.i.if.end_crit_edge

qca_get_speed.exit46.i.if.end_crit_edge:          ; preds = %qca_get_speed.exit46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

qca_get_speed.exit46.i.cleanup_crit_edge:         ; preds = %qca_get_speed.exit46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %qca_get_speed.exit46.i.if.end_crit_edge, %lor.lhs.false10.i.if.end_crit_edge, %qca_get_speed.exit31.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %qca_get_speed.exit.i.if.end_crit_edge, %if.then.i157.if.end_crit_edge
  %retval.0.i194 = phi ptr [ %retval.0.i195, %qca_get_speed.exit46.i.if.end_crit_edge ], [ %retval.0.i195, %lor.lhs.false10.i.if.end_crit_edge ], [ %12, %qca_get_speed.exit31.i.if.end_crit_edge ], [ %12, %land.lhs.true.i.if.end_crit_edge ], [ %12, %qca_get_speed.exit.i.if.end_crit_edge ], [ %12, %if.then.i157.if.end_crit_edge ]
  %soc_type.0.i187191 = phi i32 [ %soc_type.0.i187192, %qca_get_speed.exit46.i.if.end_crit_edge ], [ %soc_type.0.i187192, %lor.lhs.false10.i.if.end_crit_edge ], [ %10, %qca_get_speed.exit31.i.if.end_crit_edge ], [ %10, %land.lhs.true.i.if.end_crit_edge ], [ %10, %qca_get_speed.exit.i.if.end_crit_edge ], [ %10, %if.then.i157.if.end_crit_edge ]
  %flags = getelementptr inbounds %struct.qca_data, ptr %3, i32 0, i32 22
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %flags) #8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #8
  %quirks = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 10, ptr noundef %quirks) #8
  %name = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  %soc_type.off.i = add i32 %soc_type.0.i187191, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %soc_type.off.i)
  %switch.i = icmp ult i32 %soc_type.off.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %soc_type.0.i187191)
  %cmp = icmp eq i32 %soc_type.0.i187191, 6
  %cond = select i1 %cmp, ptr @.str.123, ptr @.str.124
  %cond6 = select i1 %switch.i, ptr @.str.122, ptr %cond
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.121, ptr noundef %name, ptr noundef nonnull %cond6) #8
  %memdump_state = getelementptr inbounds %struct.qca_data, ptr %3, i32 0, i32 25
  %37 = ptrtoint ptr %memdump_state to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %memdump_state, align 8
  %driver_data.i.i.i160 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 204, i32 8
  %aosp_capable.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 230
  %init_speed.i.i170 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 12
  %proto.i.i173 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 7
  %oper_speed.i = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 13
  %.fca.1.gep = getelementptr inbounds [3 x i32], ptr %ver, i32 0, i32 1
  %.fca.2.gep = getelementptr inbounds [3 x i32], ptr %ver, i32 0, i32 2
  br label %retry

retry:                                            ; preds = %if.end79, %if.end
  %qca_baudrate.0 = phi i32 [ 0, %if.end ], [ %qca_baudrate.2, %if.end79 ]
  %retries.0 = phi i32 [ 0, %if.end ], [ %inc, %if.end79 ]
  %38 = ptrtoint ptr %driver_data.i.i.i160 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %driver_data.i.i.i160, align 4
  %serdev.i.i161 = getelementptr inbounds %struct.hci_uart, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %serdev.i.i161 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %serdev.i.i161, align 4
  %tobool.not.i.i162 = icmp eq ptr %41, null
  br i1 %tobool.not.i.i162, label %retry.if.end10_crit_edge, label %if.end.i

retry.if.end10_crit_edge:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end.i:                                         ; preds = %retry
  %driver_data.i.i.i.i163 = getelementptr inbounds %struct.device, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %driver_data.i.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %driver_data.i.i.i.i163, align 4
  %btsoc_type.i.i164 = getelementptr inbounds %struct.qca_serdev, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %btsoc_type.i.i164 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %btsoc_type.i.i164, align 4
  %priv.i = getelementptr inbounds %struct.hci_uart, ptr %39, i32 0, i32 9
  %46 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %priv.i, align 4
  %48 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.188)
  switch i32 %45, label %if.else.i165 [
    i32 6, label %if.end.i.qca_power_on.exit_crit_edge
    i32 4, label %if.end.i.qca_power_on.exit_crit_edge230
    i32 3, label %if.end.i.qca_power_on.exit_crit_edge231
    i32 2, label %if.end.i.qca_power_on.exit_crit_edge232
  ]

if.end.i.qca_power_on.exit_crit_edge232:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qca_power_on.exit

if.end.i.qca_power_on.exit_crit_edge231:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qca_power_on.exit

if.end.i.qca_power_on.exit_crit_edge230:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qca_power_on.exit

if.end.i.qca_power_on.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qca_power_on.exit

if.else.i165:                                     ; preds = %if.end.i
  %bt_en.i = getelementptr inbounds %struct.qca_serdev, ptr %43, i32 0, i32 1
  %49 = ptrtoint ptr %bt_en.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bt_en.i, align 4
  %tobool8.not.i = icmp eq ptr %50, null
  br i1 %tobool8.not.i, label %if.else.i165.qca_power_on.exit.thread202_crit_edge, label %if.then9.i

if.else.i165.qca_power_on.exit.thread202_crit_edge: ; preds = %if.else.i165
  call void @__sanitizer_cov_trace_pc() #10
  br label %qca_power_on.exit.thread202

if.then9.i:                                       ; preds = %if.else.i165
  call void @__sanitizer_cov_trace_pc() #10
  call void @gpiod_set_value_cansleep(ptr noundef nonnull %50, i32 noundef 1) #8
  call void @msleep(i32 noundef 150) #8
  br label %qca_power_on.exit.thread202

qca_power_on.exit.thread202:                      ; preds = %if.then9.i, %if.else.i165.qca_power_on.exit.thread202_crit_edge
  %flags.i204 = getelementptr inbounds %struct.qca_data, ptr %47, i32 0, i32 22
  call void @_clear_bit(i32 noundef 6, ptr noundef %flags.i204) #8
  br label %if.end10

qca_power_on.exit:                                ; preds = %if.end.i.qca_power_on.exit_crit_edge, %if.end.i.qca_power_on.exit_crit_edge230, %if.end.i.qca_power_on.exit_crit_edge231, %if.end.i.qca_power_on.exit_crit_edge232
  %call5.i = call fastcc i32 @qca_regulator_init(ptr noundef %39) #8
  %flags.i = getelementptr inbounds %struct.qca_data, ptr %47, i32 0, i32 22
  call void @_clear_bit(i32 noundef 6, ptr noundef %flags.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool8.not = icmp eq i32 %call5.i, 0
  br i1 %tobool8.not, label %qca_power_on.exit.if.end10_crit_edge, label %qca_power_on.exit.out_crit_edge

qca_power_on.exit.out_crit_edge:                  ; preds = %qca_power_on.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

qca_power_on.exit.if.end10_crit_edge:             ; preds = %qca_power_on.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end10:                                         ; preds = %qca_power_on.exit.if.end10_crit_edge, %qca_power_on.exit.thread202, %retry.if.end10_crit_edge
  call void @_clear_bit(i32 noundef 5, ptr noundef %flags) #8
  %51 = zext i32 %soc_type.0.i187191 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.189)
  switch i32 %soc_type.0.i187191, label %if.else [
    i32 6, label %if.end10.if.then14_crit_edge
    i32 4, label %if.end10.if.then14_crit_edge233
    i32 3, label %if.end10.if.then14_crit_edge234
    i32 2, label %if.end10.if.then14_crit_edge235
  ]

if.end10.if.then14_crit_edge235:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

if.end10.if.then14_crit_edge234:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

if.end10.if.then14_crit_edge233:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

if.end10.if.then14_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

if.then14:                                        ; preds = %if.end10.if.then14_crit_edge, %if.end10.if.then14_crit_edge233, %if.end10.if.then14_crit_edge234, %if.end10.if.then14_crit_edge235
  call void @_set_bit(i32 noundef 8, ptr noundef %quirks) #8
  %52 = ptrtoint ptr %aosp_capable.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %aosp_capable.i, align 1
  %call16 = call i32 @qca_read_soc_version(ptr noundef %1, ptr noundef nonnull %ver, i32 noundef %soc_type.0.i187191) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then14.if.end21_crit_edge, label %if.then14.out_crit_edge

if.then14.out_crit_edge:                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then14.if.end21_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.else:                                          ; preds = %if.end10
  %53 = ptrtoint ptr %init_speed.i.i170 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %init_speed.i.i170, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i.i171 = icmp eq i32 %54, 0
  br i1 %tobool.not.i.i171, label %qca_get_speed.exit.i176, label %if.else.if.then1.i_crit_edge

if.else.if.then1.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then1.i

qca_get_speed.exit.i176:                          ; preds = %if.else
  %55 = ptrtoint ptr %proto.i.i173 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %proto.i.i173, align 4
  %init_speed3.i.i174 = getelementptr inbounds %struct.hci_uart_proto, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %init_speed3.i.i174 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %init_speed3.i.i174, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i175 = icmp eq i32 %58, 0
  br i1 %tobool.not.i175, label %qca_get_speed.exit.i176.if.end21_crit_edge, label %qca_get_speed.exit.i176.if.then1.i_crit_edge

qca_get_speed.exit.i176.if.then1.i_crit_edge:     ; preds = %qca_get_speed.exit.i176
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then1.i

qca_get_speed.exit.i176.if.end21_crit_edge:       ; preds = %qca_get_speed.exit.i176
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then1.i:                                       ; preds = %qca_get_speed.exit.i176.if.then1.i_crit_edge, %if.else.if.then1.i_crit_edge
  %speed.0.i103.i = phi i32 [ %58, %qca_get_speed.exit.i176.if.then1.i_crit_edge ], [ %54, %if.else.if.then1.i_crit_edge ]
  %59 = ptrtoint ptr %serdev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %serdev.i, align 4
  %tobool.not.i78.i = icmp eq ptr %60, null
  br i1 %tobool.not.i78.i, label %if.else.i79.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = call i32 @serdev_device_set_baudrate(ptr noundef nonnull %60, i32 noundef %speed.0.i103.i) #8
  br label %if.end21

if.else.i79.i:                                    ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @hci_uart_set_baudrate(ptr noundef %hu, i32 noundef %speed.0.i103.i) #8
  br label %if.end21

if.end21:                                         ; preds = %if.else.i79.i, %if.then.i.i, %qca_get_speed.exit.i176.if.end21_crit_edge, %if.then14.if.end21_crit_edge
  %61 = ptrtoint ptr %oper_speed.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %oper_speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool10.not.i = icmp eq i32 %62, 0
  br i1 %tobool10.not.i, label %qca_get_speed.exit, label %if.end21.if.then24_crit_edge

if.end21.if.then24_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

qca_get_speed.exit:                               ; preds = %if.end21
  %63 = ptrtoint ptr %proto.i.i173 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %proto.i.i173, align 4
  %oper_speed15.i = getelementptr inbounds %struct.hci_uart_proto, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %oper_speed15.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %oper_speed15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool23.not = icmp eq i32 %66, 0
  br i1 %tobool23.not, label %qca_get_speed.exit.if.end30_crit_edge, label %qca_get_speed.exit.if.then24_crit_edge

qca_get_speed.exit.if.then24_crit_edge:           ; preds = %qca_get_speed.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

qca_get_speed.exit.if.end30_crit_edge:            ; preds = %qca_get_speed.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then24:                                        ; preds = %qca_get_speed.exit.if.then24_crit_edge, %if.end21.if.then24_crit_edge
  %speed.0.i208 = phi i32 [ %66, %qca_get_speed.exit.if.then24_crit_edge ], [ %62, %if.end21.if.then24_crit_edge ]
  %call25 = call fastcc i32 @qca_set_speed(ptr noundef %hu, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.then24.out_crit_edge

if.then24.out_crit_edge:                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end28:                                         ; preds = %if.then24
  %67 = zext i32 %speed.0.i208 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.190)
  switch i32 %speed.0.i208, label %sw.default.i [
    i32 9600, label %if.end28.if.end30_crit_edge
    i32 19200, label %sw.bb1.i
    i32 38400, label %sw.bb2.i
    i32 57600, label %sw.bb3.i
    i32 115200, label %sw.bb4.i
    i32 230400, label %sw.bb5.i
    i32 460800, label %sw.bb6.i
    i32 500000, label %sw.bb7.i
    i32 921600, label %sw.bb8.i
    i32 1000000, label %sw.bb9.i
    i32 2000000, label %sw.bb10.i
    i32 3000000, label %sw.bb11.i
    i32 3200000, label %sw.bb12.i
    i32 3500000, label %sw.bb13.i
  ]

if.end28.if.end30_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

sw.bb1.i:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

sw.bb2.i:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

sw.bb3.i:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

sw.bb4.i:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

sw.bb5.i:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

sw.bb6.i:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

sw.bb7.i:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

sw.bb8.i:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

sw.bb9.i:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

sw.bb10.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

sw.bb11.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

sw.bb12.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

sw.bb13.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

sw.default.i:                                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.end30:                                         ; preds = %sw.default.i, %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end28.if.end30_crit_edge, %qca_get_speed.exit.if.end30_crit_edge
  %qca_baudrate.1 = phi i32 [ %qca_baudrate.0, %qca_get_speed.exit.if.end30_crit_edge ], [ 0, %sw.default.i ], [ 18, %sw.bb13.i ], [ 17, %sw.bb12.i ], [ 14, %sw.bb11.i ], [ 13, %sw.bb10.i ], [ 11, %sw.bb9.i ], [ 10, %sw.bb8.i ], [ 8, %sw.bb7.i ], [ 7, %sw.bb6.i ], [ 5, %sw.bb5.i ], [ 0, %sw.bb4.i ], [ 1, %sw.bb3.i ], [ 2, %sw.bb2.i ], [ 3, %sw.bb1.i ], [ 4, %if.end28.if.end30_crit_edge ]
  %68 = zext i32 %soc_type.0.i187191 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.191)
  switch i32 %soc_type.0.i187191, label %if.then36 [
    i32 6, label %if.end30.if.end41_crit_edge
    i32 4, label %if.end30.if.end41_crit_edge236
    i32 3, label %if.end30.if.end41_crit_edge237
    i32 2, label %if.end30.if.end41_crit_edge238
  ]

if.end30.if.end41_crit_edge238:                   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.end30.if.end41_crit_edge237:                   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.end30.if.end41_crit_edge236:                   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.end30.if.end41_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then36:                                        ; preds = %if.end30
  %call37 = call i32 @qca_read_soc_version(ptr noundef %1, ptr noundef nonnull %ver, i32 noundef %soc_type.0.i187191) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then36.if.end41_crit_edge, label %if.then36.out_crit_edge

if.then36.out_crit_edge:                          ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then36.if.end41_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.end41:                                         ; preds = %if.then36.if.end41_crit_edge, %if.end30.if.end41_crit_edge, %if.end30.if.end41_crit_edge236, %if.end30.if.end41_crit_edge237, %if.end30.if.end41_crit_edge238
  %conv42 = trunc i32 %qca_baudrate.1 to i8
  %69 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %69)
  %.fca.0.load = load i32, ptr %ver, align 4
  %.fca.0.insert = insertvalue [3 x i32] poison, i32 %.fca.0.load, 0
  %70 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %70)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [3 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %71 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %71)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [3 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %call43 = call i32 @qca_uart_setup(ptr noundef %1, i8 noundef zeroext %conv42, i32 noundef %soc_type.0.i187191, [3 x i32] %.fca.2.insert, ptr noundef %retval.0.i194) #8
  %72 = zext i32 %call43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.192)
  switch i32 %call43, label %if.end41.out_crit_edge [
    i32 0, label %if.then45
    i32 -2, label %if.then53
    i32 -11, label %if.then58
  ]

if.end41.out_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then45:                                        ; preds = %if.end41
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #8
  %debugfs.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 203
  %73 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %debugfs.i, align 4
  %tobool.not.i182 = icmp eq ptr %74, null
  br i1 %tobool.not.i182, label %if.then45.qca_debugfs_init.exit_crit_edge, label %if.end.i185

if.then45.qca_debugfs_init.exit_crit_edge:        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %qca_debugfs_init.exit

if.end.i185:                                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %driver_data.i.i.i160 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %driver_data.i.i.i160, align 4
  %priv.i184 = getelementptr inbounds %struct.hci_uart, ptr %76, i32 0, i32 9
  %77 = ptrtoint ptr %priv.i184 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %priv.i184, align 4
  %call2.i = call ptr @debugfs_create_dir(ptr noundef nonnull @.str.134, ptr noundef nonnull %74) #8
  %tx_ibs_state.i = getelementptr inbounds %struct.qca_data, ptr %78, i32 0, i32 6
  call void @debugfs_create_u8(ptr noundef nonnull @.str.135, i16 noundef zeroext 292, ptr noundef %call2.i, ptr noundef %tx_ibs_state.i) #8
  %rx_ibs_state.i = getelementptr inbounds %struct.qca_data, ptr %78, i32 0, i32 7
  call void @debugfs_create_u8(ptr noundef nonnull @.str.136, i16 noundef zeroext 292, ptr noundef %call2.i, ptr noundef %rx_ibs_state.i) #8
  %ibs_sent_slps.i = getelementptr inbounds %struct.qca_data, ptr %78, i32 0, i32 28
  call void @debugfs_create_u64(ptr noundef nonnull @.str.137, i16 noundef zeroext 292, ptr noundef %call2.i, ptr noundef %ibs_sent_slps.i) #8
  %ibs_sent_wakes.i = getelementptr inbounds %struct.qca_data, ptr %78, i32 0, i32 29
  call void @debugfs_create_u64(ptr noundef nonnull @.str.138, i16 noundef zeroext 292, ptr noundef %call2.i, ptr noundef %ibs_sent_wakes.i) #8
  %ibs_sent_wacks.i = getelementptr inbounds %struct.qca_data, ptr %78, i32 0, i32 27
  call void @debugfs_create_u64(ptr noundef nonnull @.str.139, i16 noundef zeroext 292, ptr noundef %call2.i, ptr noundef %ibs_sent_wacks.i) #8
  %ibs_recv_slps.i = getelementptr inbounds %struct.qca_data, ptr %78, i32 0, i32 31
  call void @debugfs_create_u64(ptr noundef nonnull @.str.140, i16 noundef zeroext 292, ptr noundef %call2.i, ptr noundef %ibs_recv_slps.i) #8
  %ibs_recv_wakes.i = getelementptr inbounds %struct.qca_data, ptr %78, i32 0, i32 32
  call void @debugfs_create_u64(ptr noundef nonnull @.str.141, i16 noundef zeroext 292, ptr noundef %call2.i, ptr noundef %ibs_recv_wakes.i) #8
  %ibs_recv_wacks.i = getelementptr inbounds %struct.qca_data, ptr %78, i32 0, i32 30
  call void @debugfs_create_u64(ptr noundef nonnull @.str.142, i16 noundef zeroext 292, ptr noundef %call2.i, ptr noundef %ibs_recv_wacks.i) #8
  %tx_vote.i = getelementptr inbounds %struct.qca_data, ptr %78, i32 0, i32 8
  call void @debugfs_create_bool(ptr noundef nonnull @.str.143, i16 noundef zeroext 292, ptr noundef %call2.i, ptr noundef %tx_vote.i) #8
  %tx_votes_on.i = getelementptr inbounds %struct.qca_data, ptr %78, i32 0, i32 36
  call void @debugfs_create_u64(ptr noundef nonnull @.str.144, i16 noundef zeroext 292, ptr noundef %call2.i, ptr noundef %tx_votes_on.i) #8
  %tx_votes_off.i = getelementptr inbounds %struct.qca_data, ptr %78, i32 0, i32 38
  call void @debugfs_create_u64(ptr noundef nonnull @.str.145, i16 noundef zeroext 292, ptr noundef %call2.i, ptr noundef %tx_votes_off.i) #8
  %rx_vote.i = getelementptr inbounds %struct.qca_data, ptr %78, i32 0, i32 9
  call void @debugfs_create_bool(ptr noundef nonnull @.str.146, i16 noundef zeroext 292, ptr noundef %call2.i, ptr noundef %rx_vote.i) #8
  %rx_votes_on.i = getelementptr inbounds %struct.qca_data, ptr %78, i32 0, i32 37
  call void @debugfs_create_u64(ptr noundef nonnull @.str.147, i16 noundef zeroext 292, ptr noundef %call2.i, ptr noundef %rx_votes_on.i) #8
  %rx_votes_off.i = getelementptr inbounds %struct.qca_data, ptr %78, i32 0, i32 39
  call void @debugfs_create_u64(ptr noundef nonnull @.str.148, i16 noundef zeroext 292, ptr noundef %call2.i, ptr noundef %rx_votes_off.i) #8
  %votes_on.i = getelementptr inbounds %struct.qca_data, ptr %78, i32 0, i32 40
  call void @debugfs_create_u64(ptr noundef nonnull @.str.149, i16 noundef zeroext 292, ptr noundef %call2.i, ptr noundef %votes_on.i) #8
  %votes_off.i = getelementptr inbounds %struct.qca_data, ptr %78, i32 0, i32 41
  call void @debugfs_create_u64(ptr noundef nonnull @.str.150, i16 noundef zeroext 292, ptr noundef %call2.i, ptr noundef %votes_off.i) #8
  %vote_on_ms.i = getelementptr inbounds %struct.qca_data, ptr %78, i32 0, i32 34
  call void @debugfs_create_u32(ptr noundef nonnull @.str.151, i16 noundef zeroext 292, ptr noundef %call2.i, ptr noundef %vote_on_ms.i) #8
  %vote_off_ms.i = getelementptr inbounds %struct.qca_data, ptr %78, i32 0, i32 35
  call void @debugfs_create_u32(ptr noundef nonnull @.str.152, i16 noundef zeroext 292, ptr noundef %call2.i, ptr noundef %vote_off_ms.i) #8
  %wake_retrans.i = getelementptr inbounds %struct.qca_data, ptr %78, i32 0, i32 13
  call void @debugfs_create_u32(ptr noundef nonnull @.str.153, i16 noundef zeroext 420, ptr noundef %call2.i, ptr noundef %wake_retrans.i) #8
  %tx_idle_delay.i = getelementptr inbounds %struct.qca_data, ptr %78, i32 0, i32 11
  call void @debugfs_create_u32(ptr noundef nonnull @.str.154, i16 noundef zeroext 420, ptr noundef %call2.i, ptr noundef %tx_idle_delay.i) #8
  br label %qca_debugfs_init.exit

qca_debugfs_init.exit:                            ; preds = %if.end.i185, %if.then45.qca_debugfs_init.exit_crit_edge
  %79 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hdev1, align 4
  %hw_error = getelementptr inbounds %struct.hci_dev, ptr %80, i32 0, i32 239
  %81 = ptrtoint ptr %hw_error to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @qca_hw_error, ptr %hw_error, align 4
  %82 = load ptr, ptr %hdev1, align 4
  %cmd_timeout = getelementptr inbounds %struct.hci_dev, ptr %82, i32 0, i32 243
  %83 = ptrtoint ptr %cmd_timeout to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @qca_cmd_timeout, ptr %cmd_timeout, align 4
  %84 = load ptr, ptr %hdev1, align 4
  %wakeup = getelementptr inbounds %struct.hci_dev, ptr %84, i32 0, i32 244
  %85 = ptrtoint ptr %wakeup to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @qca_wakeup, ptr %wakeup, align 8
  br label %if.end80

if.then53:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 7, ptr noundef %flags) #8
  br label %if.end80

if.then58:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 7, ptr noundef %flags) #8
  br label %if.end80

out:                                              ; preds = %if.end41.out_crit_edge, %if.then36.out_crit_edge, %if.then24.out_crit_edge, %if.then14.out_crit_edge, %qca_power_on.exit.out_crit_edge
  %qca_baudrate.2 = phi i32 [ %qca_baudrate.0, %qca_power_on.exit.out_crit_edge ], [ %qca_baudrate.0, %if.then14.out_crit_edge ], [ %qca_baudrate.0, %if.then24.out_crit_edge ], [ %qca_baudrate.1, %if.then36.out_crit_edge ], [ %qca_baudrate.1, %if.end41.out_crit_edge ]
  %ret.0 = phi i32 [ %call5.i, %qca_power_on.exit.out_crit_edge ], [ %call16, %if.then14.out_crit_edge ], [ %call25, %if.then24.out_crit_edge ], [ %call37, %if.then36.out_crit_edge ], [ %call43, %if.end41.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool63.not = icmp ne i32 %ret.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %retries.0)
  %cmp64 = icmp ult i32 %retries.0, 3
  %or.cond = select i1 %tobool63.not, i1 %cmp64, i1 false
  br i1 %or.cond, label %if.then66, label %out.if.end80_crit_edge

out.if.end80_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.then66:                                        ; preds = %out
  call void (ptr, ...) @bt_warn(ptr noundef nonnull @.str.125, ptr noundef %name, i32 noundef %retries.0) #8
  call fastcc void @qca_power_shutdown(ptr noundef %hu)
  %86 = ptrtoint ptr %serdev.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %serdev.i, align 4
  %tobool69.not = icmp eq ptr %87, null
  br i1 %tobool69.not, label %if.then66.if.end79_crit_edge, label %if.then70

if.then66.if.end79_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.then70:                                        ; preds = %if.then66
  call void @serdev_device_close(ptr noundef nonnull %87) #8
  %88 = ptrtoint ptr %serdev.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %serdev.i, align 4
  %call73 = call i32 @serdev_device_open(ptr noundef %89) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.then70.if.end79_crit_edge, label %if.then75

if.then70.if.end79_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.then75:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.126, ptr noundef %name) #8
  br label %cleanup

if.end79:                                         ; preds = %if.then70.if.end79_crit_edge, %if.then66.if.end79_crit_edge
  %inc = add nuw nsw i32 %retries.0, 1
  br label %retry

if.end80:                                         ; preds = %out.if.end80_crit_edge, %if.then58, %if.then53, %qca_debugfs_init.exit
  %ret.0214 = phi i32 [ 0, %if.then53 ], [ 0, %if.then58 ], [ 0, %qca_debugfs_init.exit ], [ %ret.0, %out.if.end80_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %soc_type.0.i187191)
  %cmp81 = icmp eq i32 %soc_type.0.i187191, 1
  %90 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hdev1, align 4
  %set_bdaddr = getelementptr inbounds %struct.hci_dev, ptr %91, i32 0, i32 242
  br i1 %cmp81, label %if.then83, label %if.else85

if.then83:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %set_bdaddr to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @qca_set_bdaddr_rome, ptr %set_bdaddr, align 8
  br label %cleanup

if.else85:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %set_bdaddr to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @qca_set_bdaddr, ptr %set_bdaddr, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else85, %if.then83, %if.then75, %qca_get_speed.exit46.i.cleanup_crit_edge, %qca_get_speed.exit39.i.cleanup_crit_edge, %qca_get_speed.exit31.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call73, %if.then75 ], [ %ret.0214, %if.else85 ], [ %ret.0214, %if.then83 ], [ -22, %qca_get_speed.exit31.i.cleanup_crit_edge ], [ -22, %qca_get_speed.exit46.i.cleanup_crit_edge ], [ -22, %qca_get_speed.exit39.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ver) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca_recv(ptr noundef %hu, ptr noundef %data, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %5 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hdev, align 4
  %rx_skb = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_skb, align 4
  %call1 = tail call ptr @h4_recv_buf(ptr noundef %6, ptr noundef %8, ptr noundef %data, i32 noundef %count, ptr noundef nonnull @qca_recv_pkts, i32 noundef 6) #8
  %9 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call1, ptr %rx_skb, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %call1 to i32
  %11 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %12, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.162, ptr noundef %name, i32 noundef %10) #8
  %13 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %rx_skb, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then5 ], [ -49, %entry.cleanup_crit_edge ], [ %count, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca_enqueue(ptr noundef %hu, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_enqueue.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_enqueue, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !375

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tx_ibs_state = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %tx_ibs_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_ibs_state, align 4
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_enqueue.__UNIQUE_ID_ddebug493, ptr noundef nonnull @.str.177, ptr noundef %hu, ptr noundef %skb, i32 noundef %conv) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags3 = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags3, align 4
  %6 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp eq i32 %6, 0
  br i1 %tobool5.not, label %if.end23, label %do.body7

do.body7:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_enqueue.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_enqueue, %if.then19)) #8
          to label %do.end22 [label %if.then19], !srcloc !375

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %7 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %8, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_enqueue.__UNIQUE_ID_ddebug494, ptr noundef nonnull @.str.178, ptr noundef %name) #8
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %do.body7
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %cleanup

if.end23:                                         ; preds = %do.end
  %call24 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %9 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cb, align 8
  %11 = ptrtoint ptr %call24 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %call24, align 1
  %hci_ibs_lock = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 5
  %call31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hci_ibs_lock) #8
  %12 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags3, align 4
  %and1.i139 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i139)
  %tobool38.not = icmp eq i32 %and1.i139, 0
  br i1 %tobool38.not, label %lor.lhs.false, label %if.end23.if.then42_crit_edge

if.end23.if.then42_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

lor.lhs.false:                                    ; preds = %if.end23
  %14 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags3, align 4
  %16 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool41.not = icmp eq i32 %16, 0
  br i1 %tobool41.not, label %if.end44, label %lor.lhs.false.if.then42_crit_edge

lor.lhs.false.if.then42_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

if.then42:                                        ; preds = %lor.lhs.false.if.then42_crit_edge, %if.end23.if.then42_crit_edge
  %txq = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 2
  tail call void @skb_queue_tail(ptr noundef %txq, ptr noundef %skb) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hci_ibs_lock, i32 noundef %call31) #8
  br label %cleanup

if.end44:                                         ; preds = %lor.lhs.false
  %tx_ibs_state45 = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %tx_ibs_state45 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %tx_ibs_state45, align 4
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.193)
  switch i8 %18, label %sw.default [
    i8 2, label %do.body47
    i8 0, label %do.body67
    i8 1, label %do.body86
  ]

do.body47:                                        ; preds = %if.end44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_enqueue.__UNIQUE_ID_ddebug495, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_enqueue, %if.then59)) #8
          to label %do.end62 [label %if.then59], !srcloc !375

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_enqueue.__UNIQUE_ID_ddebug495, ptr noundef nonnull @.str.179) #8
  br label %do.end62

do.end62:                                         ; preds = %if.then59, %do.body47
  %txq63 = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 2
  tail call void @skb_queue_tail(ptr noundef %txq63, ptr noundef %skb) #8
  %tx_idle_delay = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 11
  %20 = ptrtoint ptr %tx_idle_delay to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_idle_delay, align 8
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %21) #8
  %tx_idle_timer = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %22, %call2.i
  %call65 = tail call i32 @mod_timer(ptr noundef %tx_idle_timer, i32 noundef %add) #8
  br label %sw.epilog

do.body67:                                        ; preds = %if.end44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_enqueue.__UNIQUE_ID_ddebug496, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_enqueue, %if.then79)) #8
          to label %do.end82 [label %if.then79], !srcloc !375

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_enqueue.__UNIQUE_ID_ddebug496, ptr noundef nonnull @.str.180) #8
  br label %do.end82

do.end82:                                         ; preds = %if.then79, %do.body67
  %tx_wait_q = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 3
  tail call void @skb_queue_tail(ptr noundef %tx_wait_q, ptr noundef %skb) #8
  %23 = ptrtoint ptr %tx_ibs_state45 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %tx_ibs_state45, align 4
  %workqueue = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 14
  %24 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %workqueue, align 8
  %ws_awake_device = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 16
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %ws_awake_device) #8
  br label %sw.epilog

do.body86:                                        ; preds = %if.end44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_enqueue.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_enqueue, %if.then98)) #8
          to label %do.end101 [label %if.then98], !srcloc !375

if.then98:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_enqueue.__UNIQUE_ID_ddebug497, ptr noundef nonnull @.str.181) #8
  br label %do.end101

do.end101:                                        ; preds = %if.then98, %do.body86
  %tx_wait_q102 = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 3
  tail call void @skb_queue_tail(ptr noundef %tx_wait_q102, ptr noundef %skb) #8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %conv46 = zext i8 %18 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.182, i32 noundef %conv46) #8
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end101, %do.end82, %do.end62
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hci_ibs_lock, i32 noundef %call31) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then42, %do.end22
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qca_dequeue(ptr nocapture noundef readonly %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %txq = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 2
  %call = tail call ptr @skb_dequeue(ptr noundef %txq) #8
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hci_uart_has_flow_control(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qca_wq_awake_rx(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -332
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_wq_awake_rx.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_wq_awake_rx, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !375

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_wq_awake_rx.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.91, ptr noundef %1) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @serial_clock_vote(i32 noundef 3, ptr noundef %1)
  %hci_ibs_lock = getelementptr i8, ptr %work, i32 -156
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hci_ibs_lock) #8
  %rx_ibs_state = getelementptr i8, ptr %work, i32 -111
  %2 = ptrtoint ptr %rx_ibs_state to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %rx_ibs_state, align 1
  %call14 = tail call fastcc i32 @send_hci_ibs_cmd(i8 noundef zeroext -4, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %do.end.if.end18_crit_edge

do.end.if.end18_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then17:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.92) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %do.end.if.end18_crit_edge
  %ibs_sent_wacks = getelementptr i8, ptr %work, i32 532
  %3 = ptrtoint ptr %ibs_sent_wacks to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %ibs_sent_wacks, align 8
  %inc = add i64 %4, 1
  store i64 %inc, ptr %ibs_sent_wacks, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hci_ibs_lock, i32 noundef %call9) #8
  %call20 = tail call i32 @hci_uart_tx_wakeup(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qca_wq_awake_device(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -376
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_wq_awake_device.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_wq_awake_device, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !375

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_wq_awake_device.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.97, ptr noundef %1) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @serial_clock_vote(i32 noundef 1, ptr noundef %1)
  %hci_ibs_lock = getelementptr i8, ptr %work, i32 -200
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hci_ibs_lock) #8
  %call14 = tail call fastcc i32 @send_hci_ibs_cmd(i8 noundef zeroext -3, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %do.end.if.end18_crit_edge

do.end.if.end18_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then17:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.98) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %do.end.if.end18_crit_edge
  %ibs_sent_wakes = getelementptr i8, ptr %work, i32 504
  %2 = ptrtoint ptr %ibs_sent_wakes to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ibs_sent_wakes, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %ibs_sent_wakes, align 8
  %wake_retrans = getelementptr i8, ptr %work, i32 -52
  %4 = ptrtoint ptr %wake_retrans to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wake_retrans, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %5) #8
  %wake_retrans_timer = getelementptr i8, ptr %work, i32 -100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %6, %call2.i
  %call20 = tail call i32 @mod_timer(ptr noundef %wake_retrans_timer, i32 noundef %add) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hci_ibs_lock, i32 noundef %call9) #8
  %call22 = tail call i32 @hci_uart_tx_wakeup(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qca_wq_serial_rx_clock_vote_off(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -420
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_wq_serial_rx_clock_vote_off.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_wq_serial_rx_clock_vote_off, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !375

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_wq_serial_rx_clock_vote_off.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.100, ptr noundef %1) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @serial_clock_vote(i32 noundef 4, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qca_wq_serial_tx_clock_vote_off(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -464
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_wq_serial_tx_clock_vote_off.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_wq_serial_tx_clock_vote_off, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !375

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_wq_serial_tx_clock_vote_off.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.102, ptr noundef %1) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = tail call i32 @hci_uart_tx_wakeup(ptr noundef %1) #8
  tail call fastcc void @serial_clock_vote(i32 noundef 2, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qca_controller_memdump(ptr noundef %work) #2 align 64 {
entry:
  %nullBuff = alloca [255 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -508
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %qca_memdump2 = getelementptr i8, ptr %work, i32 144
  %2 = ptrtoint ptr %qca_memdump2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qca_memdump2, align 4
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %nullBuff)
  %4 = call ptr @memset(ptr %nullBuff, i32 0, i32 255)
  %serdev.i = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %serdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %serdev.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %entry.qca_soc_type.exit_crit_edge, label %if.then.i

entry.qca_soc_type.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %qca_soc_type.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i.i, align 4
  %btsoc_type.i = getelementptr inbounds %struct.qca_serdev, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %btsoc_type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %btsoc_type.i, align 4
  br label %qca_soc_type.exit

qca_soc_type.exit:                                ; preds = %if.then.i, %entry.qca_soc_type.exit_crit_edge
  %soc_type.0.i = phi i32 [ %10, %if.then.i ], [ 1, %entry.qca_soc_type.exit_crit_edge ]
  %rx_memdump_q = getelementptr i8, ptr %work, i32 -388
  %call3281 = tail call ptr @skb_dequeue(ptr noundef %rx_memdump_q) #8
  %tobool.not282 = icmp eq ptr %call3281, null
  br i1 %tobool.not282, label %qca_soc_type.exit.cleanup_crit_edge, label %while.body.lr.ph

qca_soc_type.exit.cleanup_crit_edge:              ; preds = %qca_soc_type.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph:                                 ; preds = %qca_soc_type.exit
  %hci_memdump_lock = getelementptr i8, ptr %work, i32 264
  %memdump_state = getelementptr i8, ptr %work, i32 260
  %flags = getelementptr i8, ptr %work, i32 148
  %hdev29 = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 2
  %workqueue = getelementptr i8, ptr %work, i32 -180
  %ctrl_memdump_timeout = getelementptr i8, ptr %work, i32 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %soc_type.0.i)
  %cmp49.not = icmp eq i32 %soc_type.0.i, 5
  br label %while.body

while.body:                                       ; preds = %if.end141.while.body_crit_edge, %while.body.lr.ph
  %call3284 = phi ptr [ %call3281, %while.body.lr.ph ], [ %call3, %if.end141.while.body_crit_edge ]
  %qca_memdump.0283 = phi ptr [ %3, %while.body.lr.ph ], [ %qca_memdump.1, %if.end141.while.body_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef %hci_memdump_lock, i32 noundef 0) #8
  %11 = ptrtoint ptr %memdump_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %memdump_state, align 8
  %13 = and i32 %12, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %switch = icmp eq i32 %13, 2
  br i1 %switch, label %while.body.cleanup.sink.split_crit_edge, label %if.end

while.body.cleanup.sink.split_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end:                                           ; preds = %while.body
  %tobool7.not = icmp eq ptr %qca_memdump.0283, null
  br i1 %tobool7.not, label %if.then8, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then8:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 2848, i32 noundef 20) #12
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %if.then8.cleanup.sink.split_crit_edge, label %if.end13

if.then8.cleanup.sink.split_crit_edge:            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end13:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %qca_memdump2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %qca_memdump2, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end13, %if.end.if.end15_crit_edge
  %qca_memdump.1 = phi ptr [ %qca_memdump.0283, %if.end.if.end15_crit_edge ], [ %call7.i.i, %if.end13 ]
  %16 = ptrtoint ptr %memdump_state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %memdump_state, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %call3284, i32 0, i32 19
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %seq_no17 = getelementptr inbounds %struct.qca_memdump_event_hdr, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %seq_no17 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %seq_no17, align 1
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %call18 = tail call ptr @skb_pull(ptr noundef nonnull %call3284, i32 noundef 7) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool19.not = icmp eq i16 %20, 0
  br i1 %tobool19.not, label %if.then20, label %if.end15.if.end36_crit_edge

if.end15.if.end36_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then20:                                        ; preds = %if.end15
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #8
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #8
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %23, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool24.not = icmp eq i32 %25, 0
  br i1 %tobool24.not, label %if.then20.cleanup.sink.split.sink.split_crit_edge, label %if.end28

if.then20.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.sink.split

if.end28:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %27 = ptrtoint ptr %hdev29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hdev29, align 4
  %name30 = getelementptr inbounds %struct.hci_dev, ptr %28, i32 0, i32 2
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.104, ptr noundef %name30, i32 noundef %26) #8
  %29 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %workqueue, align 8
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %30, ptr noundef %ctrl_memdump_timeout, i32 noundef 800) #8
  %call34 = tail call ptr @skb_pull(ptr noundef nonnull %call3284, i32 noundef 4) #8
  %call35 = tail call noalias ptr @vmalloc(i32 noundef %26) #13
  %ram_dump_size = getelementptr inbounds %struct.qca_memdump_data, ptr %qca_memdump.1, i32 0, i32 4
  %31 = ptrtoint ptr %ram_dump_size to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %26, ptr %ram_dump_size, align 4
  %32 = ptrtoint ptr %qca_memdump.1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call35, ptr %qca_memdump.1, align 4
  %memdump_buf_tail = getelementptr inbounds %struct.qca_memdump_data, ptr %qca_memdump.1, i32 0, i32 1
  %33 = ptrtoint ptr %memdump_buf_tail to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call35, ptr %memdump_buf_tail, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end28, %if.end15.if.end36_crit_edge
  %memdump_buf_tail37 = getelementptr inbounds %struct.qca_memdump_data, ptr %qca_memdump.1, i32 0, i32 1
  %34 = ptrtoint ptr %memdump_buf_tail37 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %memdump_buf_tail37, align 4
  %tobool38.not = icmp eq ptr %35, null
  br i1 %tobool38.not, label %if.end36.cleanup.sink.split.sink.split_crit_edge, label %while.cond46.preheader

if.end36.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.sink.split

while.cond46.preheader:                           ; preds = %if.end36
  %conv = zext i16 %21 to i32
  %current_seq_no = getelementptr inbounds %struct.qca_memdump_data, ptr %qca_memdump.1, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %20)
  %cmp52.not = icmp eq i16 %20, -1
  %36 = ptrtoint ptr %current_seq_no to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %current_seq_no, align 4
  %add273 = add i32 %37, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add273, i32 %conv)
  %cmp47274 = icmp uge i32 %add273, %conv
  %or.cond275 = select i1 %cmp47274, i1 true, i1 %cmp49.not
  %or.cond253276 = select i1 %or.cond275, i1 true, i1 %cmp52.not
  br i1 %or.cond253276, label %while.cond46.preheader.while.end_crit_edge, label %while.body54.lr.ph

while.cond46.preheader.while.end_crit_edge:       ; preds = %while.cond46.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body54.lr.ph:                               ; preds = %while.cond46.preheader
  %received_dump = getelementptr inbounds %struct.qca_memdump_data, ptr %qca_memdump.1, i32 0, i32 3
  %ram_dump_size60 = getelementptr inbounds %struct.qca_memdump_data, ptr %qca_memdump.1, i32 0, i32 4
  br label %while.body54

while.body54:                                     ; preds = %if.end68.while.body54_crit_edge, %while.body54.lr.ph
  %38 = phi i32 [ %37, %while.body54.lr.ph ], [ %inc, %if.end68.while.body54_crit_edge ]
  %memdump_buf.0277 = phi ptr [ %35, %while.body54.lr.ph ], [ %add.ptr70, %if.end68.while.body54_crit_edge ]
  %39 = ptrtoint ptr %hdev29 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hdev29, align 4
  %name56 = getelementptr inbounds %struct.hci_dev, ptr %40, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.106, ptr noundef %name56, i32 noundef %38) #8
  %41 = ptrtoint ptr %received_dump to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %received_dump, align 4
  %add59 = add i32 %42, 255
  %43 = ptrtoint ptr %ram_dump_size60 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ram_dump_size60, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add59, i32 %44)
  %cmp61 = icmp ugt i32 %add59, %44
  br i1 %cmp61, label %if.then63, label %if.end68

if.then63:                                        ; preds = %while.body54
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %hdev29 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hdev29, align 4
  %name65 = getelementptr inbounds %struct.hci_dev, ptr %46, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.107, ptr noundef %name65, i32 noundef %42) #8
  br label %while.end

if.end68:                                         ; preds = %while.body54
  %47 = call ptr @memcpy(ptr %memdump_buf.0277, ptr %nullBuff, i32 255)
  %add.ptr70 = getelementptr i8, ptr %memdump_buf.0277, i32 255
  %48 = ptrtoint ptr %received_dump to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %received_dump, align 4
  %add72 = add i32 %49, 255
  store i32 %add72, ptr %received_dump, align 4
  %50 = ptrtoint ptr %current_seq_no to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %current_seq_no, align 4
  %inc = add i32 %51, 1
  store i32 %inc, ptr %current_seq_no, align 4
  %add = add i32 %51, 2
  %cmp47.not = icmp ult i32 %add, %conv
  br i1 %cmp47.not, label %if.end68.while.body54_crit_edge, label %if.end68.while.end_crit_edge

if.end68.while.end_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end68.while.body54_crit_edge:                  ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body54

while.end:                                        ; preds = %if.end68.while.end_crit_edge, %if.then63, %while.cond46.preheader.while.end_crit_edge
  %memdump_buf.0264 = phi ptr [ %memdump_buf.0277, %if.then63 ], [ %35, %while.cond46.preheader.while.end_crit_edge ], [ %add.ptr70, %if.end68.while.end_crit_edge ]
  %received_dump74 = getelementptr inbounds %struct.qca_memdump_data, ptr %qca_memdump.1, i32 0, i32 3
  %52 = ptrtoint ptr %received_dump74 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %received_dump74, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %call3284, i32 0, i32 6
  %54 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len, align 4
  %add75 = add i32 %55, %53
  %ram_dump_size76 = getelementptr inbounds %struct.qca_memdump_data, ptr %qca_memdump.1, i32 0, i32 4
  %56 = ptrtoint ptr %ram_dump_size76 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ram_dump_size76, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add75, i32 %57)
  %cmp77.not = icmp ugt i32 %add75, %57
  br i1 %cmp77.not, label %if.else, label %if.then79

if.then79:                                        ; preds = %while.end
  br i1 %cmp52.not, label %if.then79.do.body_crit_edge, label %land.lhs.true83

if.then79.do.body_crit_edge:                      ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.lhs.true83:                                  ; preds = %if.then79
  %58 = ptrtoint ptr %current_seq_no to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %current_seq_no, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %conv)
  %cmp86.not = icmp eq i32 %59, %conv
  br i1 %cmp86.not, label %land.lhs.true83.do.body_crit_edge, label %if.then88

land.lhs.true83.do.body_crit_edge:                ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then88:                                        ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %hdev29 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hdev29, align 4
  %name90 = getelementptr inbounds %struct.hci_dev, ptr %61, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.108, ptr noundef %name90, i32 noundef %conv) #8
  br label %do.body

do.body:                                          ; preds = %if.then88, %land.lhs.true83.do.body_crit_edge, %if.then79.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_controller_memdump.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_controller_memdump, %if.then99)) #8
          to label %do.end [label %if.then99], !srcloc !375

if.then99:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %hdev29 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hdev29, align 4
  %name101 = getelementptr inbounds %struct.hci_dev, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_controller_memdump.__UNIQUE_ID_ddebug501, ptr noundef nonnull @.str.110, ptr noundef %name101, i32 noundef %conv, i32 noundef %65) #8
  br label %do.end

do.end:                                           ; preds = %if.then99, %do.body
  %66 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data, align 4
  %68 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %len, align 4
  %70 = call ptr @memcpy(ptr %memdump_buf.0264, ptr %67, i32 %69)
  %71 = load i32, ptr %len, align 4
  %add.ptr109 = getelementptr i8, ptr %memdump_buf.0264, i32 %71
  %72 = ptrtoint ptr %memdump_buf_tail37 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %add.ptr109, ptr %memdump_buf_tail37, align 4
  %add112 = add nuw nsw i32 %conv, 1
  %73 = ptrtoint ptr %current_seq_no to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %add112, ptr %current_seq_no, align 4
  %74 = load i32, ptr %len, align 4
  %75 = ptrtoint ptr %received_dump74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %received_dump74, align 4
  %add116 = add i32 %76, %74
  store i32 %add116, ptr %received_dump74, align 4
  br label %if.end122

if.else:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %hdev29 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hdev29, align 4
  %name118 = getelementptr inbounds %struct.hci_dev, ptr %78, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.111, ptr noundef %name118, i32 noundef %53, i32 noundef %conv) #8
  br label %if.end122

if.end122:                                        ; preds = %if.else, %do.end
  %79 = ptrtoint ptr %qca_memdump2 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %qca_memdump.1, ptr %qca_memdump2, align 4
  tail call void @kfree_skb_reason(ptr noundef nonnull %call3284, i32 noundef 0) #8
  br i1 %cmp52.not, label %if.then127, label %if.end122.if.end141_crit_edge

if.end122.if.end141_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end141

if.then127:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %hdev29 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hdev29, align 4
  %name129 = getelementptr inbounds %struct.hci_dev, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %received_dump74 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %received_dump74, align 4
  %84 = ptrtoint ptr %ram_dump_size76 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ram_dump_size76, align 4
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.112, ptr noundef %name129, i32 noundef %83, i32 noundef %85) #8
  %86 = ptrtoint ptr %qca_memdump.1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %qca_memdump.1, align 4
  %88 = ptrtoint ptr %serdev.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %serdev.i, align 4
  %90 = ptrtoint ptr %received_dump74 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %received_dump74, align 4
  tail call void @dev_coredumpv(ptr noundef %89, ptr noundef %87, i32 noundef %91, i32 noundef 3264) #8
  %call136 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %ctrl_memdump_timeout) #8
  %92 = ptrtoint ptr %qca_memdump2 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %qca_memdump2, align 4
  tail call void @kfree(ptr noundef %93) #8
  %94 = ptrtoint ptr %qca_memdump2 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %qca_memdump2, align 4
  %95 = ptrtoint ptr %memdump_state to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 2, ptr %memdump_state, align 8
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags) #8
  br label %if.end141

if.end141:                                        ; preds = %if.then127, %if.end122.if.end141_crit_edge
  tail call void @mutex_unlock(ptr noundef %hci_memdump_lock) #8
  %call3 = tail call ptr @skb_dequeue(ptr noundef %rx_memdump_q) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end141.cleanup_crit_edge, label %if.end141.while.body_crit_edge

if.end141.while.body_crit_edge:                   ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end141.cleanup_crit_edge:                      ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split.sink.split:                    ; preds = %if.end36.cleanup.sink.split.sink.split_crit_edge, %if.then20.cleanup.sink.split.sink.split_crit_edge
  %.str.103.sink = phi ptr [ @.str.103, %if.then20.cleanup.sink.split.sink.split_crit_edge ], [ @.str.105, %if.end36.cleanup.sink.split.sink.split_crit_edge ]
  %96 = ptrtoint ptr %hdev29 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hdev29, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %97, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull %.str.103.sink, ptr noundef %name) #8
  tail call void @kfree(ptr noundef nonnull %qca_memdump.1) #8
  tail call void @kfree_skb_reason(ptr noundef nonnull %call3284, i32 noundef 0) #8
  %98 = ptrtoint ptr %qca_memdump2 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %qca_memdump2, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.then8.cleanup.sink.split_crit_edge, %while.body.cleanup.sink.split_crit_edge
  tail call void @mutex_unlock(ptr noundef %hci_memdump_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end141.cleanup_crit_edge, %qca_soc_type.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %nullBuff)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qca_controller_memdump_timeout(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -552
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %hci_memdump_lock = getelementptr i8, ptr %work, i32 220
  tail call void @mutex_lock_nested(ptr noundef %hci_memdump_lock, i32 noundef 0) #8
  %flags = getelementptr i8, ptr %work, i32 104
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then:                                          ; preds = %entry
  %memdump_state = getelementptr i8, ptr %work, i32 216
  %5 = ptrtoint ptr %memdump_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %memdump_state, align 8
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp eq i32 %8, 0
  br i1 %tobool4.not, label %if.then5, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hdev, align 4
  %call6 = tail call i32 @hci_reset_dev(ptr noundef %10) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  tail call void @mutex_unlock(ptr noundef %hci_memdump_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hci_ibs_wake_retrans_timeout(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -276
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_ibs_wake_retrans_timeout.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_ibs_wake_retrans_timeout, %if.then)) #8
          to label %do.body6 [label %if.then], !srcloc !375

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tx_ibs_state = getelementptr i8, ptr %t, i32 -56
  %2 = ptrtoint ptr %tx_ibs_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_ibs_state, align 4
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_ibs_wake_retrans_timeout.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.115, ptr noundef %1, i32 noundef %conv) #8
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  %hci_ibs_lock = getelementptr i8, ptr %t, i32 -100
  %call10 = tail call i32 @_raw_spin_lock_irqsave_nested(ptr noundef %hci_ibs_lock, i32 noundef 1) #8
  %flags15 = getelementptr i8, ptr %t, i32 380
  %4 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags15, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool17.not = icmp eq i32 %6, 0
  br i1 %tobool17.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hci_ibs_lock, i32 noundef %call10) #8
  br label %cleanup

if.end20:                                         ; preds = %do.body6
  %tx_ibs_state21 = getelementptr i8, ptr %t, i32 -56
  %7 = ptrtoint ptr %tx_ibs_state21 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tx_ibs_state21, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cond = icmp eq i8 %8, 1
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end20
  %call23 = tail call fastcc i32 @send_hci_ibs_cmd(i8 noundef zeroext -3, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.92) #8
  br label %if.then35

if.end27:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %ibs_sent_wakes = getelementptr i8, ptr %t, i32 604
  %9 = ptrtoint ptr %ibs_sent_wakes to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %ibs_sent_wakes, align 8
  %inc = add i64 %10, 1
  store i64 %inc, ptr %ibs_sent_wakes, align 8
  %wake_retrans = getelementptr i8, ptr %t, i32 48
  %11 = ptrtoint ptr %wake_retrans to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wake_retrans, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %12) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %13, %call2.i
  %call29 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #8
  br label %if.then35

sw.default:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %conv22 = zext i8 %8 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.116, i32 noundef %conv22) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hci_ibs_lock, i32 noundef %call10) #8
  br label %cleanup

if.then35:                                        ; preds = %if.end27, %if.then26
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hci_ibs_lock, i32 noundef %call10) #8
  %call36 = tail call i32 @hci_uart_tx_wakeup(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %sw.default, %if.then18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hci_ibs_tx_idle_timeout(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -224
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_ibs_tx_idle_timeout.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_ibs_tx_idle_timeout, %if.then)) #8
          to label %do.body6 [label %if.then], !srcloc !375

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tx_ibs_state = getelementptr i8, ptr %t, i32 -4
  %2 = ptrtoint ptr %tx_ibs_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_ibs_state, align 4
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_ibs_tx_idle_timeout.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.118, ptr noundef %1, i32 noundef %conv) #8
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  %hci_ibs_lock = getelementptr i8, ptr %t, i32 -48
  %call10 = tail call i32 @_raw_spin_lock_irqsave_nested(ptr noundef %hci_ibs_lock, i32 noundef 1) #8
  %tx_ibs_state15 = getelementptr i8, ptr %t, i32 -4
  %4 = ptrtoint ptr %tx_ibs_state15 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tx_ibs_state15, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cond = icmp eq i8 %5, 2
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %do.body6
  %call17 = tail call fastcc i32 @send_hci_ibs_cmd(i8 noundef zeroext -2, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.19) #8
  br label %sw.epilog

if.end21:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %tx_ibs_state15 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %tx_ibs_state15, align 4
  %ibs_sent_slps = getelementptr i8, ptr %t, i32 648
  %7 = ptrtoint ptr %ibs_sent_slps to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ibs_sent_slps, align 8
  %inc = add i64 %8, 1
  store i64 %inc, ptr %ibs_sent_slps, align 8
  %workqueue = getelementptr i8, ptr %t, i32 104
  %9 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %workqueue, align 8
  %ws_tx_vote_off = getelementptr i8, ptr %t, i32 240
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %ws_tx_vote_off) #8
  br label %sw.epilog

sw.default:                                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  %conv16 = zext i8 %5 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.116, i32 noundef %conv16) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end21, %if.then20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hci_ibs_lock, i32 noundef %call10) #8
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @send_hci_ibs_cmd(i8 noundef zeroext %cmd, ptr noundef %hu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_hci_ibs_cmd.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_hci_ibs_cmd, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !375

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %cmd to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @send_hci_ibs_cmd.__UNIQUE_ID_ddebug478, ptr noundef nonnull @.str.94, ptr noundef %hu, i32 noundef %conv) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 9, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then5, label %if.end6

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.95) #8
  br label %cleanup

if.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
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
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 1) #8
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %cmd, ptr %call.i, align 1
  %txq = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 2
  tail call void @skb_queue_tail(ptr noundef %txq, ptr noundef nonnull %call.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -12, %if.then5 ]
  ret i32 %retval.0
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
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_info(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_coredumpv(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_reset_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qca_read_soc_version(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qca_set_speed(ptr noundef %hu, i32 noundef %speed_type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %speed_type)
  %cmp = icmp eq i32 %speed_type, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %init_speed.i = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 12
  %2 = ptrtoint ptr %init_speed.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %init_speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %qca_get_speed.exit, label %if.then.if.then1_crit_edge

if.then.if.then1_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then1

qca_get_speed.exit:                               ; preds = %if.then
  %proto.i = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 7
  %4 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %proto.i, align 4
  %init_speed3.i = getelementptr inbounds %struct.hci_uart_proto, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %init_speed3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %init_speed3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %qca_get_speed.exit.cleanup49_crit_edge, label %qca_get_speed.exit.if.then1_crit_edge

qca_get_speed.exit.if.then1_crit_edge:            ; preds = %qca_get_speed.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then1

qca_get_speed.exit.cleanup49_crit_edge:           ; preds = %qca_get_speed.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup49

if.then1:                                         ; preds = %qca_get_speed.exit.if.then1_crit_edge, %if.then.if.then1_crit_edge
  %speed.0.i103 = phi i32 [ %7, %qca_get_speed.exit.if.then1_crit_edge ], [ %3, %if.then.if.then1_crit_edge ]
  %serdev.i = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 1
  %8 = ptrtoint ptr %serdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %serdev.i, align 4
  %tobool.not.i78 = icmp eq ptr %9, null
  br i1 %tobool.not.i78, label %if.else.i79, label %if.then.i

if.then.i:                                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @serdev_device_set_baudrate(ptr noundef nonnull %9, i32 noundef %speed.0.i103) #8
  br label %cleanup49

if.else.i79:                                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @hci_uart_set_baudrate(ptr noundef %hu, i32 noundef %speed.0.i103) #8
  br label %cleanup49

if.else:                                          ; preds = %entry
  %serdev.i80 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 1
  %10 = ptrtoint ptr %serdev.i80 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %serdev.i80, align 4
  %tobool.not.i81 = icmp eq ptr %11, null
  br i1 %tobool.not.i81, label %if.else.qca_soc_type.exit_crit_edge, label %if.then.i82

if.else.qca_soc_type.exit_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %qca_soc_type.exit

if.then.i82:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i.i, align 4
  %btsoc_type.i = getelementptr inbounds %struct.qca_serdev, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %btsoc_type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %btsoc_type.i, align 4
  br label %qca_soc_type.exit

qca_soc_type.exit:                                ; preds = %if.then.i82, %if.else.qca_soc_type.exit_crit_edge
  %soc_type.0.i = phi i32 [ %15, %if.then.i82 ], [ 1, %if.else.qca_soc_type.exit_crit_edge ]
  %oper_speed.i = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 13
  %16 = ptrtoint ptr %oper_speed.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %oper_speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool10.not.i = icmp eq i32 %17, 0
  br i1 %tobool10.not.i, label %qca_get_speed.exit84, label %qca_soc_type.exit.if.end6_crit_edge

qca_soc_type.exit.if.end6_crit_edge:              ; preds = %qca_soc_type.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

qca_get_speed.exit84:                             ; preds = %qca_soc_type.exit
  %proto14.i = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 7
  %18 = ptrtoint ptr %proto14.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %proto14.i, align 4
  %oper_speed15.i = getelementptr inbounds %struct.hci_uart_proto, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %oper_speed15.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %oper_speed15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool4.not = icmp eq i32 %21, 0
  br i1 %tobool4.not, label %qca_get_speed.exit84.cleanup49_crit_edge, label %qca_get_speed.exit84.if.end6_crit_edge

qca_get_speed.exit84.if.end6_crit_edge:           ; preds = %qca_get_speed.exit84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

qca_get_speed.exit84.cleanup49_crit_edge:         ; preds = %qca_get_speed.exit84
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup49

if.end6:                                          ; preds = %qca_get_speed.exit84.if.end6_crit_edge, %qca_soc_type.exit.if.end6_crit_edge
  %speed.0.i83106 = phi i32 [ %21, %qca_get_speed.exit84.if.end6_crit_edge ], [ %17, %qca_soc_type.exit.if.end6_crit_edge ]
  %soc_type.off.i = add i32 %soc_type.0.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %soc_type.off.i)
  %switch.i = icmp ult i32 %soc_type.off.i, 3
  br i1 %switch.i, label %if.end10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %soc_type.0.i)
  %cmp.i = icmp eq i32 %soc_type.0.i, 6
  br i1 %cmp.i, label %if.end10.thread112, label %lor.lhs.false.if.end13_crit_edge

lor.lhs.false.if.end13_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.end10.thread112:                               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @hci_uart_set_flow_control(ptr noundef %hu, i1 noundef zeroext true) #8
  br label %if.end13

if.end10:                                         ; preds = %if.end6
  tail call void @hci_uart_set_flow_control(ptr noundef %hu, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %soc_type.0.i)
  %cmp11 = icmp eq i32 %soc_type.0.i, 2
  br i1 %cmp11, label %if.then12, label %if.end10.if.end13_crit_edge

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %drop_ev_comp = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 23
  %22 = ptrtoint ptr %drop_ev_comp to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %drop_ev_comp, align 4
  %flags = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10.if.end13_crit_edge, %if.end10.thread112, %lor.lhs.false.if.end13_crit_edge
  %cmp11111 = phi i1 [ true, %if.then12 ], [ false, %if.end10.if.end13_crit_edge ], [ false, %if.end10.thread112 ], [ false, %lor.lhs.false.if.end13_crit_edge ]
  %23 = zext i32 %speed.0.i83106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.194)
  switch i32 %speed.0.i83106, label %sw.default.i [
    i32 9600, label %if.end13.qca_get_baudrate_value.exit_crit_edge
    i32 19200, label %sw.bb1.i
    i32 38400, label %sw.bb2.i
    i32 57600, label %sw.bb3.i
    i32 115200, label %sw.bb4.i
    i32 230400, label %sw.bb5.i
    i32 460800, label %sw.bb6.i
    i32 500000, label %sw.bb7.i
    i32 921600, label %sw.bb8.i
    i32 1000000, label %sw.bb9.i
    i32 2000000, label %sw.bb10.i
    i32 3000000, label %sw.bb11.i
    i32 3200000, label %sw.bb12.i
    i32 3500000, label %sw.bb13.i
  ]

if.end13.qca_get_baudrate_value.exit_crit_edge:   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %qca_get_baudrate_value.exit

sw.bb1.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %qca_get_baudrate_value.exit

sw.bb2.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %qca_get_baudrate_value.exit

sw.bb3.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %qca_get_baudrate_value.exit

sw.bb4.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %qca_get_baudrate_value.exit

sw.bb5.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %qca_get_baudrate_value.exit

sw.bb6.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %qca_get_baudrate_value.exit

sw.bb7.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %qca_get_baudrate_value.exit

sw.bb8.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %qca_get_baudrate_value.exit

sw.bb9.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %qca_get_baudrate_value.exit

sw.bb10.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %qca_get_baudrate_value.exit

sw.bb11.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %qca_get_baudrate_value.exit

sw.bb12.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %qca_get_baudrate_value.exit

sw.bb13.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %qca_get_baudrate_value.exit

sw.default.i:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %qca_get_baudrate_value.exit

qca_get_baudrate_value.exit:                      ; preds = %sw.default.i, %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end13.qca_get_baudrate_value.exit_crit_edge
  %cmp.i87 = phi i1 [ false, %if.end13.qca_get_baudrate_value.exit_crit_edge ], [ false, %sw.bb1.i ], [ false, %sw.bb2.i ], [ false, %sw.bb3.i ], [ false, %sw.bb4.i ], [ false, %sw.bb5.i ], [ false, %sw.bb6.i ], [ false, %sw.bb7.i ], [ false, %sw.bb8.i ], [ false, %sw.bb9.i ], [ false, %sw.bb10.i ], [ false, %sw.bb11.i ], [ false, %sw.bb12.i ], [ true, %sw.bb13.i ], [ false, %sw.default.i ]
  %retval.0.i85 = phi i8 [ 4, %if.end13.qca_get_baudrate_value.exit_crit_edge ], [ 3, %sw.bb1.i ], [ 2, %sw.bb2.i ], [ 1, %sw.bb3.i ], [ 0, %sw.bb4.i ], [ 5, %sw.bb5.i ], [ 7, %sw.bb6.i ], [ 8, %sw.bb7.i ], [ 10, %sw.bb8.i ], [ 11, %sw.bb9.i ], [ 13, %sw.bb10.i ], [ 14, %sw.bb11.i ], [ 17, %sw.bb12.i ], [ 18, %sw.bb13.i ], [ 0, %sw.default.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_set_speed.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_set_speed, %if.then19)) #8
          to label %do.end [label %if.then19], !srcloc !375

if.then19:                                        ; preds = %qca_get_baudrate_value.exit
  call void @__sanitizer_cov_trace_pc() #10
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %24 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %25, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_set_speed.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.131, ptr noundef %name, i32 noundef %speed.0.i83106) #8
  br label %do.end

do.end:                                           ; preds = %if.then19, %qca_get_baudrate_value.exit
  %hdev21 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %26 = ptrtoint ptr %hdev21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hdev21, align 4
  %driver_data.i.i.i86 = getelementptr inbounds %struct.hci_dev, ptr %27, i32 0, i32 204, i32 8
  %28 = ptrtoint ptr %driver_data.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i.i86, align 4
  %priv.i = getelementptr inbounds %struct.hci_uart, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv.i, align 4
  br i1 %cmp.i87, label %do.end.error_crit_edge, label %if.end.i

do.end.error_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end.i:                                         ; preds = %do.end
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 13, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then3.i, label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %27, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.133, ptr noundef %name.i) #8
  br label %error

if.end4.i:                                        ; preds = %if.end.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %32 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %33, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %34 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %35, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 5) #8
  %36 = ptrtoint ptr %call.i.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 21560321, ptr %call.i.i, align 1
  %cmd.sroa.4.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 4
  %37 = ptrtoint ptr %cmd.sroa.4.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %retval.0.i85, ptr %cmd.sroa.4.0.call.i.sroa_idx.i, align 1
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %cb.i, align 8
  %txq.i = getelementptr inbounds %struct.qca_data, ptr %31, i32 0, i32 2
  tail call void @skb_queue_tail(ptr noundef %txq.i, ptr noundef nonnull %call.i.i.i) #8
  %call8.i = tail call i32 @hci_uart_tx_wakeup(ptr noundef %29) #8
  %39 = ptrtoint ptr %txq.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %txq.i, align 4
  %cmp.i.not64.i = icmp eq ptr %40, %txq.i
  br i1 %cmp.i.not64.i, label %if.end4.i.while.end.i_crit_edge, label %if.end4.i.while.body.i_crit_edge

if.end4.i.while.body.i_crit_edge:                 ; preds = %if.end4.i
  br label %while.body.i

if.end4.i.while.end.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end4.i.while.body.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #8
  %41 = ptrtoint ptr %txq.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %txq.i, align 4
  %cmp.i.not.i = icmp eq ptr %42, %txq.i
  br i1 %cmp.i.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end4.i.while.end.i_crit_edge
  %serdev.i88 = getelementptr inbounds %struct.hci_uart, ptr %29, i32 0, i32 1
  %43 = ptrtoint ptr %serdev.i88 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %serdev.i88, align 4
  %tobool12.not.i = icmp eq ptr %44, null
  br i1 %tobool12.not.i, label %while.end.i.if.else.i89_crit_edge, label %if.end16.i

while.end.i.if.else.i89_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i89

if.end16.i:                                       ; preds = %while.end.i
  tail call void @serdev_device_wait_until_sent(ptr noundef nonnull %44, i32 noundef 10) #8
  %45 = ptrtoint ptr %serdev.i88 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr.i = load ptr, ptr %serdev.i88, align 4
  %tobool.not.i39.i = icmp eq ptr %.pr.i, null
  br i1 %tobool.not.i39.i, label %if.end16.i.if.else.i89_crit_edge, label %qca_soc_type.exit.i

if.end16.i.if.else.i89_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i89

qca_soc_type.exit.i:                              ; preds = %if.end16.i
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %.pr.i, i32 0, i32 8
  %46 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %btsoc_type.i.i = getelementptr inbounds %struct.qca_serdev, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %btsoc_type.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %btsoc_type.i.i, align 4
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.195)
  switch i32 %49, label %qca_soc_type.exit.i.if.else.i89_crit_edge [
    i32 6, label %qca_soc_type.exit.i.if.then23.i_crit_edge
    i32 4, label %qca_soc_type.exit.i.if.then23.i_crit_edge122
    i32 3, label %qca_soc_type.exit.i.if.then23.i_crit_edge123
    i32 2, label %qca_soc_type.exit.i.if.then23.i_crit_edge124
  ]

qca_soc_type.exit.i.if.then23.i_crit_edge124:     ; preds = %qca_soc_type.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23.i

qca_soc_type.exit.i.if.then23.i_crit_edge123:     ; preds = %qca_soc_type.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23.i

qca_soc_type.exit.i.if.then23.i_crit_edge122:     ; preds = %qca_soc_type.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23.i

qca_soc_type.exit.i.if.then23.i_crit_edge:        ; preds = %qca_soc_type.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23.i

qca_soc_type.exit.i.if.else.i89_crit_edge:        ; preds = %qca_soc_type.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i89

if.then23.i:                                      ; preds = %qca_soc_type.exit.i.if.then23.i_crit_edge, %qca_soc_type.exit.i.if.then23.i_crit_edge122, %qca_soc_type.exit.i.if.then23.i_crit_edge123, %qca_soc_type.exit.i.if.then23.i_crit_edge124
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #8
  br label %if.end26

if.else.i89:                                      ; preds = %qca_soc_type.exit.i.if.else.i89_crit_edge, %if.end16.i.if.else.i89_crit_edge, %while.end.i.if.else.i89_crit_edge
  tail call void @msleep(i32 noundef 300) #8
  br label %if.end26

if.end26:                                         ; preds = %if.else.i89, %if.then23.i
  %51 = ptrtoint ptr %serdev.i80 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %serdev.i80, align 4
  %tobool.not.i92 = icmp eq ptr %52, null
  br i1 %tobool.not.i92, label %if.else.i95, label %if.then.i94

if.then.i94:                                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %call.i93 = tail call i32 @serdev_device_set_baudrate(ptr noundef nonnull %52, i32 noundef %speed.0.i83106) #8
  br label %error

if.else.i95:                                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @hci_uart_set_baudrate(ptr noundef %hu, i32 noundef %speed.0.i83106) #8
  br label %error

error:                                            ; preds = %if.else.i95, %if.then.i94, %if.then3.i, %do.end.error_crit_edge
  %retval.0.i90117 = phi i32 [ -12, %if.then3.i ], [ -22, %do.end.error_crit_edge ], [ 0, %if.then.i94 ], [ 0, %if.else.i95 ]
  %53 = zext i32 %soc_type.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.196)
  switch i32 %soc_type.0.i, label %error.if.end33_crit_edge [
    i32 6, label %error.if.then32_crit_edge
    i32 4, label %error.if.then32_crit_edge125
    i32 3, label %error.if.then32_crit_edge126
    i32 2, label %error.if.then32_crit_edge127
  ]

error.if.then32_crit_edge127:                     ; preds = %error
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

error.if.then32_crit_edge126:                     ; preds = %error
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

error.if.then32_crit_edge125:                     ; preds = %error
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

error.if.then32_crit_edge:                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

error.if.end33_crit_edge:                         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then32:                                        ; preds = %error.if.then32_crit_edge, %error.if.then32_crit_edge125, %error.if.then32_crit_edge126, %error.if.then32_crit_edge127
  tail call void @hci_uart_set_flow_control(ptr noundef %hu, i1 noundef zeroext false) #8
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %error.if.end33_crit_edge
  br i1 %cmp11111, label %if.then36, label %if.end33.cleanup49_crit_edge

if.end33.cleanup49_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup49

if.then36:                                        ; preds = %if.end33
  %drop_ev_comp37 = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 23
  %call39 = tail call i32 @wait_for_completion_timeout(ptr noundef %drop_ev_comp37, i32 noundef 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then41, label %if.then36.if.end45_crit_edge

if.then36.if.end45_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then41:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %hdev21 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hdev21, align 4
  %name43 = getelementptr inbounds %struct.hci_dev, ptr %55, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.132, ptr noundef %name43) #8
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %if.then36.if.end45_crit_edge
  %ret.0 = phi i32 [ %retval.0.i90117, %if.then36.if.end45_crit_edge ], [ -110, %if.then41 ]
  %flags46 = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 22
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags46) #8
  br label %cleanup49

cleanup49:                                        ; preds = %if.end45, %if.end33.cleanup49_crit_edge, %qca_get_speed.exit84.cleanup49_crit_edge, %if.else.i79, %if.then.i, %qca_get_speed.exit.cleanup49_crit_edge
  %retval.1 = phi i32 [ 0, %qca_get_speed.exit84.cleanup49_crit_edge ], [ 0, %qca_get_speed.exit.cleanup49_crit_edge ], [ 0, %if.then.i ], [ 0, %if.else.i79 ], [ %ret.0, %if.end45 ], [ %retval.0.i90117, %if.end33.cleanup49_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qca_uart_setup(ptr noundef, i8 noundef zeroext, i32 noundef, [3 x i32], ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qca_hw_error(ptr noundef %hdev, i8 noundef zeroext %code) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %flags = getelementptr inbounds %struct.qca_data, ptr %3, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags) #8
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags) #8
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %memdump_state = getelementptr inbounds %struct.qca_data, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %memdump_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %memdump_state, align 8
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.155, ptr noundef %name, i32 noundef %5) #8
  %6 = ptrtoint ptr %memdump_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %memdump_state, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.197)
  switch i32 %7, label %entry.if.end10_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then7
  ]

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then:                                          ; preds = %entry
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #8
  tail call fastcc void @qca_send_crashbuffer(ptr noundef %1)
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.hci_uart, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv.i, align 4
  %flags.i = getelementptr inbounds %struct.qca_data, ptr %12, i32 0, i32 22
  tail call void @__might_sleep(ptr noundef nonnull @.str.22, i32 noundef 125) #8
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags.i, align 4
  %15 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i, label %if.then.if.end10.sink.split_crit_edge, label %if.then.if.end10.sink.split.sink.split_crit_edge

if.then.if.end10.sink.split.sink.split_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.sink.split.sink.split

if.then.if.end10.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.sink.split

if.then7:                                         ; preds = %entry
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.156, ptr noundef %name) #8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i62 = getelementptr inbounds %struct.hci_uart, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %priv.i62 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv.i62, align 4
  %flags.i63 = getelementptr inbounds %struct.qca_data, ptr %19, i32 0, i32 22
  tail call void @__might_sleep(ptr noundef nonnull @.str.22, i32 noundef 125) #8
  %20 = ptrtoint ptr %flags.i63 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags.i63, align 4
  %22 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i64 = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i64, label %if.then7.if.end10.sink.split_crit_edge, label %if.then7.if.end10.sink.split.sink.split_crit_edge

if.then7.if.end10.sink.split.sink.split_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.sink.split.sink.split

if.then7.if.end10.sink.split_crit_edge:           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.sink.split

if.end10.sink.split.sink.split:                   ; preds = %if.then7.if.end10.sink.split.sink.split_crit_edge, %if.then.if.end10.sink.split.sink.split_crit_edge
  %flags.i63.sink68 = phi ptr [ %flags.i, %if.then.if.end10.sink.split.sink.split_crit_edge ], [ %flags.i63, %if.then7.if.end10.sink.split.sink.split_crit_edge ]
  %call3.i.i65 = tail call i32 @out_of_line_wait_on_bit_timeout(ptr noundef %flags.i63.sink68, i32 noundef 3, ptr noundef nonnull @bit_wait_timeout, i32 noundef 2, i32 noundef 8000) #8
  br label %if.end10.sink.split

if.end10.sink.split:                              ; preds = %if.end10.sink.split.sink.split, %if.then7.if.end10.sink.split_crit_edge, %if.then.if.end10.sink.split_crit_edge
  %flags.i63.sink = phi ptr [ %flags.i, %if.then.if.end10.sink.split_crit_edge ], [ %flags.i63, %if.then7.if.end10.sink.split_crit_edge ], [ %flags.i63.sink68, %if.end10.sink.split.sink.split ]
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags.i63.sink) #8
  br label %if.end10

if.end10:                                         ; preds = %if.end10.sink.split, %entry.if.end10_crit_edge
  %hci_memdump_lock = getelementptr inbounds %struct.qca_data, ptr %3, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hci_memdump_lock, i32 noundef 0) #8
  %23 = ptrtoint ptr %memdump_state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %memdump_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp12.not = icmp eq i32 %24, 2
  br i1 %cmp12.not, label %if.end10.if.end24_crit_edge, label %if.then13

if.end10.if.end24_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then13:                                        ; preds = %if.end10
  %hdev14 = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %hdev14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hdev14, align 4
  %name15 = getelementptr inbounds %struct.hci_dev, ptr %26, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.157, ptr noundef %name15) #8
  %qca_memdump = getelementptr inbounds %struct.qca_data, ptr %3, i32 0, i32 21
  %27 = ptrtoint ptr %qca_memdump to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %qca_memdump, align 4
  %tobool.not = icmp eq ptr %28, null
  br i1 %tobool.not, label %if.then13.if.end21_crit_edge, label %if.then17

if.then13.if.end21_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then17:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  tail call void @vfree(ptr noundef %30) #8
  %31 = ptrtoint ptr %qca_memdump to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %qca_memdump, align 4
  tail call void @kfree(ptr noundef %32) #8
  %33 = ptrtoint ptr %qca_memdump to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %qca_memdump, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.then13.if.end21_crit_edge
  %34 = ptrtoint ptr %memdump_state to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 3, ptr %memdump_state, align 8
  %ctrl_memdump_timeout = getelementptr inbounds %struct.qca_data, ptr %3, i32 0, i32 20
  %call23 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %ctrl_memdump_timeout) #8
  br label %if.end24

if.end24:                                         ; preds = %if.end21, %if.end10.if.end24_crit_edge
  tail call void @mutex_unlock(ptr noundef %hci_memdump_lock) #8
  %35 = ptrtoint ptr %memdump_state to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %memdump_state, align 8
  %37 = and i32 %36, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %switch = icmp eq i32 %37, 2
  br i1 %switch, label %if.then30, label %if.end24.if.end32_crit_edge

if.end24.if.end32_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then30:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %ctrl_memdump_evt = getelementptr inbounds %struct.qca_data, ptr %3, i32 0, i32 19
  %call31 = tail call zeroext i1 @cancel_work_sync(ptr noundef %ctrl_memdump_evt) #8
  %rx_memdump_q = getelementptr inbounds %struct.qca_data, ptr %3, i32 0, i32 4
  tail call void @skb_queue_purge(ptr noundef %rx_memdump_q) #8
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end24.if.end32_crit_edge
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qca_cmd_timeout(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %flags = getelementptr inbounds %struct.qca_data, ptr %3, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags) #8
  %memdump_state = getelementptr inbounds %struct.qca_data, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %memdump_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %memdump_state, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.198)
  switch i32 %5, label %entry.if.end6_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then5
  ]

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then:                                          ; preds = %entry
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #8
  tail call fastcc void @qca_send_crashbuffer(ptr noundef %1)
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.hci_uart, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv.i, align 4
  %flags.i = getelementptr inbounds %struct.qca_data, ptr %10, i32 0, i32 22
  tail call void @__might_sleep(ptr noundef nonnull @.str.22, i32 noundef 125) #8
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags.i, align 4
  %13 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i, label %if.then.if.end6.sink.split_crit_edge, label %if.then.if.end6.sink.split.sink.split_crit_edge

if.then.if.end6.sink.split.sink.split_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.sink.split.sink.split

if.then.if.end6.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.sink.split

if.then5:                                         ; preds = %entry
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.156, ptr noundef %name) #8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i33 = getelementptr inbounds %struct.hci_uart, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %priv.i33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv.i33, align 4
  %flags.i34 = getelementptr inbounds %struct.qca_data, ptr %17, i32 0, i32 22
  tail call void @__might_sleep(ptr noundef nonnull @.str.22, i32 noundef 125) #8
  %18 = ptrtoint ptr %flags.i34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags.i34, align 4
  %20 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i35 = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i35, label %if.then5.if.end6.sink.split_crit_edge, label %if.then5.if.end6.sink.split.sink.split_crit_edge

if.then5.if.end6.sink.split.sink.split_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.sink.split.sink.split

if.then5.if.end6.sink.split_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.sink.split

if.end6.sink.split.sink.split:                    ; preds = %if.then5.if.end6.sink.split.sink.split_crit_edge, %if.then.if.end6.sink.split.sink.split_crit_edge
  %flags.i34.sink39 = phi ptr [ %flags.i, %if.then.if.end6.sink.split.sink.split_crit_edge ], [ %flags.i34, %if.then5.if.end6.sink.split.sink.split_crit_edge ]
  %call3.i.i36 = tail call i32 @out_of_line_wait_on_bit_timeout(ptr noundef %flags.i34.sink39, i32 noundef 3, ptr noundef nonnull @bit_wait_timeout, i32 noundef 2, i32 noundef 8000) #8
  br label %if.end6.sink.split

if.end6.sink.split:                               ; preds = %if.end6.sink.split.sink.split, %if.then5.if.end6.sink.split_crit_edge, %if.then.if.end6.sink.split_crit_edge
  %flags.i34.sink = phi ptr [ %flags.i, %if.then.if.end6.sink.split_crit_edge ], [ %flags.i34, %if.then5.if.end6.sink.split_crit_edge ], [ %flags.i34.sink39, %if.end6.sink.split.sink.split ]
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags.i34.sink) #8
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %entry.if.end6_crit_edge
  %hci_memdump_lock = getelementptr inbounds %struct.qca_data, ptr %3, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %hci_memdump_lock, i32 noundef 0) #8
  %21 = ptrtoint ptr %memdump_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %memdump_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp8.not = icmp eq i32 %22, 2
  br i1 %cmp8.not, label %if.end6.if.end17_crit_edge, label %if.then9

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then9:                                         ; preds = %if.end6
  %23 = ptrtoint ptr %memdump_state to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %memdump_state, align 8
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags, align 4
  %26 = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not = icmp eq i32 %26, 0
  br i1 %tobool.not, label %if.then13, label %if.then9.if.end17_crit_edge

if.then9.if.end17_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then13:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %hdev14 = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %hdev14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hdev14, align 4
  %call15 = tail call i32 @hci_reset_dev(ptr noundef %28) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.then9.if.end17_crit_edge, %if.end6.if.end17_crit_edge
  tail call void @mutex_unlock(ptr noundef %hci_memdump_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @qca_wakeup(ptr nocapture noundef readonly %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %serdev = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serdev, align 4
  %ctrl = getelementptr inbounds %struct.serdev_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl, align 4
  %parent = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.device_may_wakeup.exit_crit_edge, label %land.rhs.i

entry.device_may_wakeup.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %device_may_wakeup.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %wakeup.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 6
  %9 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i = icmp ne ptr %10, null
  br label %device_may_wakeup.exit

device_may_wakeup.exit:                           ; preds = %land.rhs.i, %entry.device_may_wakeup.exit_crit_edge
  %11 = phi i1 [ false, %entry.device_may_wakeup.exit_crit_edge ], [ %tobool2.i, %land.rhs.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_wakeup.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_wakeup, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !375

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  %hdev6 = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %hdev6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hdev6, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %13, i32 0, i32 2
  %conv = zext i1 %11 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_wakeup.__UNIQUE_ID_ddebug504, ptr noundef nonnull @.str.161, ptr noundef %name, i32 noundef %conv) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %device_may_wakeup.exit
  %lnot9 = xor i1 %11, true
  ret i1 %lnot9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_warn(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qca_set_bdaddr_rome(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qca_set_bdaddr(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qca_regulator_init(ptr noundef %hu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %serdev.i = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 1
  %0 = ptrtoint ptr %serdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serdev.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.qca_soc_type.exit_crit_edge, label %if.then.i

entry.qca_soc_type.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %qca_soc_type.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %btsoc_type.i = getelementptr inbounds %struct.qca_serdev, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %btsoc_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %btsoc_type.i, align 4
  %phi.bo = add i32 %5, -2
  br label %qca_soc_type.exit

qca_soc_type.exit:                                ; preds = %if.then.i, %entry.qca_soc_type.exit_crit_edge
  %soc_type.0.i = phi i32 [ %phi.bo, %if.then.i ], [ -1, %entry.qca_soc_type.exit_crit_edge ]
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %bt_power = getelementptr inbounds %struct.qca_serdev, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %bt_power to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bt_power, align 4
  %vregs_on = getelementptr inbounds %struct.qca_power, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %vregs_on to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %vregs_on, align 4, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.then, label %qca_soc_type.exit.if.end11_crit_edge

qca_soc_type.exit.if.end11_crit_edge:             ; preds = %qca_soc_type.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then:                                          ; preds = %qca_soc_type.exit
  tail call void @serdev_device_close(ptr noundef %1) #8
  %call3 = tail call fastcc i32 @qca_regulator_enable(ptr noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %12 = ptrtoint ptr %serdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %serdev.i, align 4
  %call7 = tail call i32 @serdev_device_open(ptr noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end.if.end11_crit_edge, label %if.then9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %14 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %15, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.126, ptr noundef %name) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end.if.end11_crit_edge, %qca_soc_type.exit.if.end11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %soc_type.0.i)
  %switch.i = icmp ult i32 %soc_type.0.i, 3
  br i1 %switch.i, label %if.then13, label %if.end11.if.end18_crit_edge

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then13:                                        ; preds = %if.end11
  %16 = ptrtoint ptr %serdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %serdev.i, align 4
  %tobool.not.i92 = icmp eq ptr %17, null
  br i1 %tobool.not.i92, label %if.else.i, label %if.then.i93

if.then.i93:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @serdev_device_set_baudrate(ptr noundef nonnull %17, i32 noundef 2400) #8
  br label %host_set_baudrate.exit

if.else.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @hci_uart_set_baudrate(ptr noundef %hu, i32 noundef 2400) #8
  br label %host_set_baudrate.exit

host_set_baudrate.exit:                           ; preds = %if.else.i, %if.then.i93
  %call14 = tail call fastcc i32 @qca_send_power_pulse(ptr noundef %hu, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %host_set_baudrate.exit.if.end18_crit_edge, label %host_set_baudrate.exit.cleanup_crit_edge

host_set_baudrate.exit.cleanup_crit_edge:         ; preds = %host_set_baudrate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

host_set_baudrate.exit.if.end18_crit_edge:        ; preds = %host_set_baudrate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.end18:                                         ; preds = %host_set_baudrate.exit.if.end18_crit_edge, %if.end11.if.end18_crit_edge
  %bt_en = getelementptr inbounds %struct.qca_serdev, ptr %7, i32 0, i32 1
  %18 = ptrtoint ptr %bt_en to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bt_en, align 4
  %tobool19.not = icmp eq ptr %19, null
  br i1 %tobool19.not, label %if.end18.if.end40_crit_edge, label %if.then20

if.end18.if.end40_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then20:                                        ; preds = %if.end18
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %19, i32 noundef 0) #8
  tail call void @msleep(i32 noundef 50) #8
  %20 = ptrtoint ptr %bt_en to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bt_en, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %21, i32 noundef 1) #8
  tail call void @msleep(i32 noundef 50) #8
  %sw_ctrl = getelementptr inbounds %struct.qca_serdev, ptr %7, i32 0, i32 2
  %22 = ptrtoint ptr %sw_ctrl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sw_ctrl, align 4
  %tobool23.not = icmp eq ptr %23, null
  br i1 %tobool23.not, label %if.then20.if.end40_crit_edge, label %if.then24

if.then20.if.end40_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then24:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %23) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_regulator_init.__UNIQUE_ID_ddebug505, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_regulator_init, %if.then33)) #8
          to label %if.end40 [label %if.then33], !srcloc !375

if.then33:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27 = icmp ne i32 %call26, 0
  %hdev34 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %24 = ptrtoint ptr %hdev34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hdev34, align 4
  %name35 = getelementptr inbounds %struct.hci_dev, ptr %25, i32 0, i32 2
  %conv = zext i1 %tobool27 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_regulator_init.__UNIQUE_ID_ddebug505, ptr noundef nonnull @.str.54, ptr noundef %name35, i32 noundef %conv) #8
  br label %if.end40

if.end40:                                         ; preds = %if.then33, %if.then24, %if.then20.if.end40_crit_edge, %if.end18.if.end40_crit_edge
  %init_speed.i.i = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 12
  %26 = ptrtoint ptr %init_speed.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %init_speed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i, label %qca_get_speed.exit.i, label %if.end40.if.then1.i_crit_edge

if.end40.if.then1.i_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then1.i

qca_get_speed.exit.i:                             ; preds = %if.end40
  %proto.i.i = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 7
  %28 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %proto.i.i, align 4
  %init_speed3.i.i = getelementptr inbounds %struct.hci_uart_proto, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %init_speed3.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %init_speed3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i95 = icmp eq i32 %31, 0
  br i1 %tobool.not.i95, label %qca_get_speed.exit.i.qca_set_speed.exit_crit_edge, label %qca_get_speed.exit.i.if.then1.i_crit_edge

qca_get_speed.exit.i.if.then1.i_crit_edge:        ; preds = %qca_get_speed.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then1.i

qca_get_speed.exit.i.qca_set_speed.exit_crit_edge: ; preds = %qca_get_speed.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qca_set_speed.exit

if.then1.i:                                       ; preds = %qca_get_speed.exit.i.if.then1.i_crit_edge, %if.end40.if.then1.i_crit_edge
  %speed.0.i103.i = phi i32 [ %31, %qca_get_speed.exit.i.if.then1.i_crit_edge ], [ %27, %if.end40.if.then1.i_crit_edge ]
  %32 = ptrtoint ptr %serdev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %serdev.i, align 4
  %tobool.not.i78.i = icmp eq ptr %33, null
  br i1 %tobool.not.i78.i, label %if.else.i79.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @serdev_device_set_baudrate(ptr noundef nonnull %33, i32 noundef %speed.0.i103.i) #8
  br label %qca_set_speed.exit

if.else.i79.i:                                    ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @hci_uart_set_baudrate(ptr noundef %hu, i32 noundef %speed.0.i103.i) #8
  br label %qca_set_speed.exit

qca_set_speed.exit:                               ; preds = %if.else.i79.i, %if.then.i.i, %qca_get_speed.exit.i.qca_set_speed.exit_crit_edge
  br i1 %switch.i, label %if.then43, label %qca_set_speed.exit.if.end48_crit_edge

qca_set_speed.exit.if.end48_crit_edge:            ; preds = %qca_set_speed.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then43:                                        ; preds = %qca_set_speed.exit
  %call44 = tail call fastcc i32 @qca_send_power_pulse(ptr noundef %hu, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then43.if.end48_crit_edge, label %if.then43.cleanup_crit_edge

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then43.if.end48_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.end48:                                         ; preds = %if.then43.if.end48_crit_edge, %qca_set_speed.exit.if.end48_crit_edge
  %34 = ptrtoint ptr %serdev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %serdev.i, align 4
  tail call void @serdev_device_close(ptr noundef %35) #8
  %36 = ptrtoint ptr %serdev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %serdev.i, align 4
  %call51 = tail call i32 @serdev_device_open(ptr noundef %37) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end57, label %if.then53

if.then53:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %hdev54 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %38 = ptrtoint ptr %hdev54 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hdev54, align 4
  %name55 = getelementptr inbounds %struct.hci_dev, ptr %39, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.126, ptr noundef %name55) #8
  br label %cleanup

if.end57:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @hci_uart_set_flow_control(ptr noundef %hu, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.then53, %if.then43.cleanup_crit_edge, %host_set_baudrate.exit.cleanup_crit_edge, %if.then9, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call51, %if.then53 ], [ 0, %if.end57 ], [ %call7, %if.then9 ], [ %call3, %if.then.cleanup_crit_edge ], [ %call14, %host_set_baudrate.exit.cleanup_crit_edge ], [ %call44, %if.then43.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qca_regulator_enable(ptr noundef readonly %qcadev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bt_power = getelementptr inbounds %struct.qca_serdev, ptr %qcadev, i32 0, i32 5
  %0 = ptrtoint ptr %bt_power to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bt_power, align 4
  %vregs_on = getelementptr inbounds %struct.qca_power, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %vregs_on to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vregs_on, align 4, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_regulator_enable.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_regulator_enable, %if.then4)) #8
          to label %do.end [label %if.then4], !srcloc !375

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %num_vregs = getelementptr inbounds %struct.qca_power, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %num_vregs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_vregs, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_regulator_enable.__UNIQUE_ID_ddebug507, ptr noundef nonnull @.str.129, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %num_vregs6 = getelementptr inbounds %struct.qca_power, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %num_vregs6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_vregs6, align 4
  %vreg_bulk = getelementptr inbounds %struct.qca_power, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %vreg_bulk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vreg_bulk, align 4
  %call7 = tail call i32 @regulator_bulk_enable(i32 noundef %7, ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %10 = ptrtoint ptr %vregs_on to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %vregs_on, align 4
  %susclk = getelementptr inbounds %struct.qca_serdev, ptr %qcadev, i32 0, i32 3
  %11 = ptrtoint ptr %susclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %susclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end10.if.then14_crit_edge

if.end10.if.then14_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

if.end.i:                                         ; preds = %if.end10
  %call1.i = tail call i32 @clk_enable(ptr noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %12) #8
  br label %if.then14

if.then14:                                        ; preds = %if.then3.i, %if.end10.if.then14_crit_edge
  %retval.0.i26.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end10.if.then14_crit_edge ]
  %tobool.not.i27 = icmp eq ptr %qcadev, null
  br i1 %tobool.not.i27, label %if.then14.cleanup_crit_edge, label %if.end.i28

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i28:                                       ; preds = %if.then14
  %13 = ptrtoint ptr %bt_power to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bt_power, align 4
  %vregs_on.i = getelementptr inbounds %struct.qca_power, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %vregs_on.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %vregs_on.i, align 4, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool1.not.i = icmp eq i8 %16, 0
  br i1 %tobool1.not.i, label %if.end.i28.cleanup_crit_edge, label %if.end3.i

if.end.i28.cleanup_crit_edge:                     ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #10
  %num_vregs.i = getelementptr inbounds %struct.qca_power, ptr %14, i32 0, i32 2
  %17 = ptrtoint ptr %num_vregs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_vregs.i, align 4
  %vreg_bulk.i = getelementptr inbounds %struct.qca_power, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %vreg_bulk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vreg_bulk.i, align 4
  %call.i29 = tail call i32 @regulator_bulk_disable(i32 noundef %18, ptr noundef %20) #8
  %21 = ptrtoint ptr %vregs_on.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %vregs_on.i, align 4
  %22 = ptrtoint ptr %susclk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %susclk, align 4
  tail call void @clk_disable(ptr noundef %23) #8
  tail call void @clk_unprepare(ptr noundef %23) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end3.i, %if.end.i28.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call7, %do.end.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ %retval.0.i26.ph, %if.then14.cleanup_crit_edge ], [ %retval.0.i26.ph, %if.end.i28.cleanup_crit_edge ], [ %retval.0.i26.ph, %if.end3.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u8(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u64(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_bool(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qca_send_crashbuffer(ptr noundef %hu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 1104, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %2 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.158, ptr noundef %name) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %4 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %7, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call1 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 1096) #8
  %8 = call ptr @memset(ptr %call1, i32 251, i32 1096)
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %cb to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %cb, align 8
  %hdev3 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %10 = ptrtoint ptr %hdev3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hdev3, align 4
  %name4 = getelementptr inbounds %struct.hci_dev, ptr %11, i32 0, i32 2
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.159, ptr noundef %name4) #8
  %txq = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 2
  tail call void @skb_queue_tail(ptr noundef %txq, ptr noundef nonnull %call.i.i) #8
  %call6 = tail call i32 @hci_uart_tx_wakeup(ptr noundef %hu) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @h4_recv_buf(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca_recv_acl_data(ptr noundef %hdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -9170, i16 %3)
  %cmp = icmp eq i16 %3, -9170
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @hci_recv_diag(ptr noundef %hdev, ptr noundef %skb) #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 @hci_recv_frame(ptr noundef %hdev, ptr noundef %skb) #8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_recv_frame(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca_recv_event(ptr noundef %hdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %flags = getelementptr inbounds %struct.qca_data, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %data5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data5, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %cmp7 = icmp eq i8 %10, -1
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp7, label %if.then3, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %drop_ev_comp = getelementptr inbounds %struct.qca_data, ptr %3, i32 0, i32 23
  tail call void @complete(ptr noundef %drop_ev_comp) #8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %cleanup

if.end4:                                          ; preds = %entry
  br i1 %cmp7, label %land.lhs.true, label %if.end4.if.end16_crit_edge

if.end4.if.end16_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end4
  %add.ptr = getelementptr i8, ptr %8, i32 2
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 264, i16 %12)
  %cmp12 = icmp eq i16 %12, 264
  br i1 %cmp12, label %if.then14, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags) #8
  %rx_memdump_q.i = getelementptr inbounds %struct.qca_data, ptr %3, i32 0, i32 4
  tail call void @skb_queue_tail(ptr noundef %rx_memdump_q.i, ptr noundef %skb) #8
  %workqueue.i = getelementptr inbounds %struct.qca_data, ptr %3, i32 0, i32 14
  %13 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %workqueue.i, align 8
  %ctrl_memdump_evt.i = getelementptr inbounds %struct.qca_data, ptr %3, i32 0, i32 19
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %ctrl_memdump_evt.i) #8
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %if.end4.if.end16_crit_edge
  %call17 = tail call i32 @hci_recv_frame(ptr noundef %hdev, ptr noundef %skb) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then14, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 0, %if.then14 ], [ %call17, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca_ibs_wake_ind(ptr nocapture noundef readonly %hdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_ibs_wake_ind.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_ibs_wake_ind, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !375

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_ibs_wake_ind.__UNIQUE_ID_ddebug499, ptr noundef nonnull @.str.164, ptr noundef %1, i32 noundef 253) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @device_want_to_wakeup(ptr noundef %1)
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca_ibs_wake_ack(ptr nocapture noundef readonly %hdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_ibs_wake_ack.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_ibs_wake_ack, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !375

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_ibs_wake_ack.__UNIQUE_ID_ddebug500, ptr noundef nonnull @.str.164, ptr noundef %1, i32 noundef 252) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @device_woke_up(ptr noundef %1)
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca_ibs_sleep_ind(ptr nocapture noundef readonly %hdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_ibs_sleep_ind.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_ibs_sleep_ind, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !375

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qca_ibs_sleep_ind.__UNIQUE_ID_ddebug498, ptr noundef nonnull @.str.164, ptr noundef %1, i32 noundef 254) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @device_want_to_sleep(ptr noundef %1)
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_recv_diag(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @device_want_to_wakeup(ptr noundef %hu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @device_want_to_wakeup.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@device_want_to_wakeup, %if.then)) #8
          to label %do.body4 [label %if.then], !srcloc !375

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @device_want_to_wakeup.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.166, ptr noundef %hu) #8
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  %hci_ibs_lock = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 5
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hci_ibs_lock) #8
  %ibs_recv_wakes = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %ibs_recv_wakes to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ibs_recv_wakes, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %ibs_recv_wakes, align 8
  %flags12 = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %flags12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags12, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool14.not = icmp eq i32 %6, 0
  br i1 %tobool14.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hci_ibs_lock, i32 noundef %call7) #8
  br label %cleanup

if.end17:                                         ; preds = %do.body4
  %rx_ibs_state = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %rx_ibs_state to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rx_ibs_state, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.199)
  switch i8 %8, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb21
  ]

sw.bb:                                            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %workqueue = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %workqueue, align 8
  %ws_awake_rx = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 15
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %ws_awake_rx) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hci_ibs_lock, i32 noundef %call7) #8
  br label %cleanup

sw.bb21:                                          ; preds = %if.end17
  %call22 = tail call fastcc i32 @send_hci_ibs_cmd(i8 noundef zeroext -4, ptr noundef %hu)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.92) #8
  br label %sw.epilog

if.end26:                                         ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  %ibs_sent_wacks = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 27
  %12 = ptrtoint ptr %ibs_sent_wacks to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ibs_sent_wacks, align 8
  %inc27 = add i64 %13, 1
  store i64 %inc27, ptr %ibs_sent_wacks, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %conv18 = zext i8 %8 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.167, i32 noundef %conv18) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end26, %if.then25
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hci_ibs_lock, i32 noundef %call7) #8
  %call31 = tail call i32 @hci_uart_tx_wakeup(ptr noundef %hu) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb, %if.then15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @device_woke_up(ptr noundef %hu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @device_woke_up.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@device_woke_up, %if.then)) #8
          to label %do.body4 [label %if.then], !srcloc !375

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @device_woke_up.__UNIQUE_ID_ddebug491, ptr noundef nonnull @.str.170, ptr noundef %hu) #8
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  %hci_ibs_lock = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 5
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hci_ibs_lock) #8
  %ibs_recv_wacks = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %ibs_recv_wacks to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ibs_recv_wacks, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %ibs_recv_wacks, align 8
  %flags12 = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %flags12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags12, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool14.not = icmp eq i32 %6, 0
  br i1 %tobool14.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hci_ibs_lock, i32 noundef %call7) #8
  br label %cleanup

if.end17:                                         ; preds = %do.body4
  %tx_ibs_state = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %tx_ibs_state to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tx_ibs_state, align 4
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.200)
  switch i8 %8, label %sw.default [
    i8 2, label %do.body19
    i8 1, label %while.cond.preheader
  ]

while.cond.preheader:                             ; preds = %if.end17
  %tx_wait_q = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 3
  %call3874 = tail call ptr @skb_dequeue(ptr noundef %tx_wait_q) #8
  %tobool39.not75 = icmp eq ptr %call3874, null
  br i1 %tobool39.not75, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %txq = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 2
  br label %while.body

do.body19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @device_woke_up.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@device_woke_up, %if.then31)) #8
          to label %sw.epilog [label %if.then31], !srcloc !375

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %tx_ibs_state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tx_ibs_state, align 4
  %conv33 = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @device_woke_up.__UNIQUE_ID_ddebug492, ptr noundef nonnull @.str.171, i32 noundef %conv33) #8
  br label %sw.epilog

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %call3876 = phi ptr [ %call3874, %while.body.lr.ph ], [ %call38, %while.body.while.body_crit_edge ]
  tail call void @skb_queue_tail(ptr noundef %txq, ptr noundef nonnull %call3876) #8
  %call38 = tail call ptr @skb_dequeue(ptr noundef %tx_wait_q) #8
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %wake_retrans_timer = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 12
  %call40 = tail call i32 @del_timer(ptr noundef %wake_retrans_timer) #8
  %tx_idle_delay = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %tx_idle_delay to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_idle_delay, align 8
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %13) #8
  %tx_idle_timer = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %14, %call2.i
  %call42 = tail call i32 @mod_timer(ptr noundef %tx_idle_timer, i32 noundef %add) #8
  %15 = ptrtoint ptr %tx_ibs_state to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %tx_ibs_state, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %conv18 = zext i8 %8 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.171, i32 noundef %conv18) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %while.end, %if.then31, %do.body19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hci_ibs_lock, i32 noundef %call7) #8
  %call48 = tail call i32 @hci_uart_tx_wakeup(ptr noundef %hu) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @device_want_to_sleep(ptr noundef %hu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @device_want_to_sleep.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@device_want_to_sleep, %if.then)) #8
          to label %do.body4 [label %if.then], !srcloc !375

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rx_ibs_state = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %rx_ibs_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rx_ibs_state, align 1
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @device_want_to_sleep.__UNIQUE_ID_ddebug490, ptr noundef nonnull @.str.174, ptr noundef %hu, i32 noundef %conv) #8
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  %hci_ibs_lock = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 5
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hci_ibs_lock) #8
  %ibs_recv_slps = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 31
  %4 = ptrtoint ptr %ibs_recv_slps to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ibs_recv_slps, align 8
  %inc = add i64 %5, 1
  store i64 %inc, ptr %ibs_recv_slps, align 8
  %rx_ibs_state13 = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %rx_ibs_state13 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rx_ibs_state13, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.201)
  switch i8 %7, label %sw.default [
    i8 1, label %sw.bb
    i8 0, label %do.body4.sw.epilog_crit_edge
  ]

do.body4.sw.epilog_crit_edge:                     ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %rx_ibs_state13 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %rx_ibs_state13, align 1
  %workqueue = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %workqueue, align 8
  %ws_rx_vote_off = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 17
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %ws_rx_vote_off) #8
  br label %sw.epilog

sw.default:                                       ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  %conv14 = zext i8 %7 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.175, i32 noundef %conv14) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb, %do.body4.sw.epilog_crit_edge
  %suspend_wait_q = getelementptr inbounds %struct.qca_data, ptr %1, i32 0, i32 24
  tail call void @__wake_up(ptr noundef %suspend_wait_q, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hci_ibs_lock, i32 noundef %call8) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 194)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 194)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !62, !63, !64, !65, !67, !69, !71, !72, !73, !75, !77, !79, !80, !81, !82, !83, !85, !87, !88, !89, !90, !92, !93, !94, !96, !98, !99, !100, !102, !103, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !121, !123, !125, !126, !127, !129, !130, !132, !133, !135, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !152, !154, !155, !156, !157, !159, !160, !162, !163, !165, !166, !168, !169, !171, !172, !174, !175, !176, !178, !180, !181, !182, !184, !186, !187, !188, !190, !192, !193, !194, !196, !197, !198, !200, !202, !204, !206, !208, !210, !212, !213, !214, !216, !218, !220, !221, !223, !224, !225, !227, !229, !230, !231, !233, !234, !235, !237, !238, !239, !240, !242, !244, !246, !247, !249, !250, !251, !253, !254, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !314, !315, !317, !319, !321, !322, !323, !325, !326, !327, !329, !331, !332, !334, !335, !336, !338, !339, !341, !342, !344, !345, !346, !348, !350, !351, !352, !354, !355, !357, !358, !360, !361, !363, !364}
!llvm.module.flags = !{!366, !367, !368, !369, !370, !371, !372, !373}
!llvm.ident = !{!374}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/bluetooth/hci_qca.c", i32 2344, i32 11}
!2 = !{ptr @qca_serdev_driver, !3, !"qca_serdev_driver", i1 false, i1 false}
!3 = !{!"../drivers/bluetooth/hci_qca.c", i32 2340, i32 36}
!4 = !{ptr @qca_bluetooth_of_match, !5, !"qca_bluetooth_of_match", i1 false, i1 false}
!5 = !{!"../drivers/bluetooth/hci_qca.c", i32 2315, i32 34}
!6 = !{ptr @qca_soc_data_qca6390, !7, !"qca_soc_data_qca6390", i1 false, i1 false}
!7 = !{!"../drivers/bluetooth/hci_qca.c", i32 1856, i32 37}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/bluetooth/hci_qca.c", i32 1825, i32 5}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/bluetooth/hci_qca.c", i32 1826, i32 5}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/bluetooth/hci_qca.c", i32 1827, i32 5}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/bluetooth/hci_qca.c", i32 1828, i32 5}
!16 = !{ptr @qca_soc_data_wcn3990, !17, !"qca_soc_data_wcn3990", i1 false, i1 false}
!17 = !{!"../drivers/bluetooth/hci_qca.c", i32 1822, i32 37}
!18 = !{ptr @qca_soc_data_wcn3991, !19, !"qca_soc_data_wcn3991", i1 false, i1 false}
!19 = !{!"../drivers/bluetooth/hci_qca.c", i32 1833, i32 37}
!20 = !{ptr @qca_soc_data_wcn3998, !21, !"qca_soc_data_wcn3998", i1 false, i1 false}
!21 = !{!"../drivers/bluetooth/hci_qca.c", i32 1845, i32 37}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/bluetooth/hci_qca.c", i32 1865, i32 5}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/bluetooth/hci_qca.c", i32 1866, i32 5}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/bluetooth/hci_qca.c", i32 1867, i32 5}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/bluetooth/hci_qca.c", i32 1868, i32 5}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/bluetooth/hci_qca.c", i32 1869, i32 5}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/bluetooth/hci_qca.c", i32 1870, i32 5}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/bluetooth/hci_qca.c", i32 1871, i32 5}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/bluetooth/hci_qca.c", i32 1872, i32 5}
!38 = !{ptr @qca_soc_data_wcn6750, !39, !"qca_soc_data_wcn6750", i1 false, i1 false}
!39 = !{!"../drivers/bluetooth/hci_qca.c", i32 1861, i32 37}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/bluetooth/hci_qca.c", i32 2168, i32 4}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/bluetooth/hci_qca.c", i32 2178, i32 4}
!44 = !{ptr @qca_pm_ops, !45, !"qca_pm_ops", i1 false, i1 false}
!45 = !{!"../drivers/bluetooth/hci_qca.c", i32 2312, i32 8}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/bluetooth/hci_qca.c", i32 2228, i32 4}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/bluetooth/hci_qca.c", i32 2252, i32 4}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/bluetooth/hci_qca.c", i32 2265, i32 3}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/bluetooth/hci_qca.c", i32 2284, i32 8}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/linux/wait_bit.h", i32 125, i32 2}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/bluetooth/hci_qca.c", i32 318, i32 3}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/bluetooth/hci_qca.c", i32 330, i32 3}
!60 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @serial_clock_vote.__UNIQUE_ID_ddebug477, !59, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!63 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/bluetooth/hci_qca.c", i32 2033, i32 44}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/bluetooth/hci_qca.c", i32 2035, i32 41}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/bluetooth/hci_qca.c", i32 2038, i32 3}
!71 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @qca_serdev_probe.__UNIQUE_ID_ddebug508, !70, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/bluetooth/hci_qca.c", i32 2054, i32 4}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/bluetooth/hci_qca.c", i32 2060, i32 57}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/bluetooth/hci_qca.c", i32 2063, i32 4}
!79 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @qca_serdev_probe._entry, !78, !"_entry", i1 false, i1 false}
!82 = !{ptr @qca_serdev_probe._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/bluetooth/hci_qca.c", i32 2067, i32 59}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/bluetooth/hci_qca.c", i32 2070, i32 4}
!87 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @qca_serdev_probe._entry.39, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @qca_serdev_probe._entry_ptr.42, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/bluetooth/hci_qca.c", i32 2074, i32 4}
!92 = !{ptr @qca_serdev_probe._entry.43, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @qca_serdev_probe._entry_ptr.45, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/bluetooth/hci_qca.c", i32 2080, i32 4}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/bluetooth/hci_qca.c", i32 2092, i32 4}
!98 = !{ptr @qca_serdev_probe._entry.47, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @qca_serdev_probe._entry_ptr.49, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @qca_serdev_probe._entry.50, !101, !"_entry", i1 false, i1 false}
!101 = !{!"../drivers/bluetooth/hci_qca.c", i32 2098, i32 4}
!102 = !{ptr @qca_serdev_probe._entry_ptr.51, !101, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/bluetooth/hci_qca.c", i32 2111, i32 4}
!105 = !{ptr @.str.53, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/bluetooth/hci_qca.c", i32 1913, i32 4}
!107 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @qca_power_shutdown.__UNIQUE_ID_ddebug506, !106, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!109 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/bluetooth/hci_qca.c", i32 679, i32 2}
!111 = !{ptr @.str.56, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @qca_flush.__UNIQUE_ID_ddebug487, !110, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!113 = !{ptr @.str.57, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/bluetooth/hci_qca.c", i32 1346, i32 2}
!115 = !{ptr @.str.58, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @qca_send_power_pulse.__UNIQUE_ID_ddebug502, !114, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!117 = !{ptr @.str.59, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/bluetooth/hci_qca.c", i32 1352, i32 3}
!119 = !{ptr @.str.60, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/bluetooth/hci_qca.c", i32 1809, i32 11}
!121 = !{ptr @qca_proto, !122, !"qca_proto", i1 false, i1 false}
!122 = !{!"../drivers/bluetooth/hci_qca.c", i32 1807, i32 36}
!123 = !{ptr @.str.61, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/bluetooth/hci_qca.c", i32 564, i32 2}
!125 = !{ptr @.str.62, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @qca_open.__UNIQUE_ID_ddebug485, !124, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!127 = !{ptr @qca_open.__key, !128, !"__key", i1 false, i1 false}
!128 = !{!"../drivers/bluetooth/hci_qca.c", i32 576, i32 2}
!129 = !{ptr @.str.63, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @qca_open.__key.64, !131, !"__key", i1 false, i1 false}
!131 = !{!"../drivers/bluetooth/hci_qca.c", i32 577, i32 2}
!132 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.66, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/bluetooth/hci_qca.c", i32 578, i32 19}
!135 = !{ptr @.str.67, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/bluetooth/hci_qca.c", i32 580, i32 3}
!137 = !{ptr @qca_open.__key.68, !138, !"__key", i1 false, i1 false}
!138 = !{!"../drivers/bluetooth/hci_qca.c", i32 585, i32 2}
!139 = !{ptr @.str.69, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @qca_open.__key.70, !141, !"__key", i1 false, i1 false}
!141 = !{!"../drivers/bluetooth/hci_qca.c", i32 586, i32 2}
!142 = !{ptr @.str.71, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @qca_open.__key.72, !144, !"__key", i1 false, i1 false}
!144 = !{!"../drivers/bluetooth/hci_qca.c", i32 587, i32 2}
!145 = !{ptr @.str.73, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @qca_open.__key.74, !147, !"__key", i1 false, i1 false}
!147 = !{!"../drivers/bluetooth/hci_qca.c", i32 588, i32 2}
!148 = !{ptr @.str.75, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @qca_open.__key.76, !150, !"__key", i1 false, i1 false}
!150 = !{!"../drivers/bluetooth/hci_qca.c", i32 589, i32 2}
!151 = !{ptr @.str.77, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @qca_open.__key.78, !153, !"__key", i1 false, i1 false}
!153 = !{!"../drivers/bluetooth/hci_qca.c", i32 590, i32 2}
!154 = !{ptr @.str.79, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @qca_open.__key.80, !153, !"__key", i1 false, i1 false}
!156 = !{ptr @.str.81, !153, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @qca_open.__key.82, !158, !"__key", i1 false, i1 false}
!158 = !{!"../drivers/bluetooth/hci_qca.c", i32 592, i32 2}
!159 = !{ptr @.str.83, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @qca_open.__key.84, !161, !"__key", i1 false, i1 false}
!161 = !{!"../drivers/bluetooth/hci_qca.c", i32 616, i32 2}
!162 = !{ptr @.str.85, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @qca_open.__key.86, !164, !"__key", i1 false, i1 false}
!164 = !{!"../drivers/bluetooth/hci_qca.c", i32 619, i32 2}
!165 = !{ptr @.str.87, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.88, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/bluetooth/hci_qca.c", i32 622, i32 2}
!168 = !{ptr @qca_open.__UNIQUE_ID_ddebug486, !167, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!169 = !{ptr @skb_queue_head_init.__key, !170, !"__key", i1 false, i1 false}
!170 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!171 = !{ptr @.str.89, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.90, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/bluetooth/hci_qca.c", i32 409, i32 2}
!174 = !{ptr @.str.91, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @qca_wq_awake_rx.__UNIQUE_ID_ddebug480, !173, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!176 = !{ptr @.str.92, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/bluetooth/hci_qca.c", i32 420, i32 3}
!178 = !{ptr @.str.93, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/bluetooth/hci_qca.c", i32 355, i32 2}
!180 = !{ptr @.str.94, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @send_hci_ibs_cmd.__UNIQUE_ID_ddebug478, !179, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!182 = !{ptr @.str.95, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/bluetooth/hci_qca.c", i32 359, i32 3}
!184 = !{ptr @.str.96, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/bluetooth/hci_qca.c", i32 379, i32 2}
!186 = !{ptr @.str.97, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @qca_wq_awake_device.__UNIQUE_ID_ddebug479, !185, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!188 = !{ptr @.str.98, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/bluetooth/hci_qca.c", i32 388, i32 3}
!190 = !{ptr @.str.99, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/bluetooth/hci_qca.c", i32 436, i32 2}
!192 = !{ptr @.str.100, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @qca_wq_serial_rx_clock_vote_off.__UNIQUE_ID_ddebug481, !191, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!194 = !{ptr @.str.101, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/bluetooth/hci_qca.c", i32 447, i32 2}
!196 = !{ptr @.str.102, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @qca_wq_serial_tx_clock_vote_off.__UNIQUE_ID_ddebug482, !195, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!198 = !{ptr @.str.103, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/bluetooth/hci_qca.c", i32 1030, i32 5}
!200 = !{ptr @.str.104, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/bluetooth/hci_qca.c", i32 1038, i32 4}
!202 = !{ptr @.str.105, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/bluetooth/hci_qca.c", i32 1058, i32 4}
!204 = !{ptr @.str.106, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/bluetooth/hci_qca.c", i32 1077, i32 4}
!206 = !{ptr @.str.107, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/bluetooth/hci_qca.c", i32 1082, i32 5}
!208 = !{ptr @.str.108, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/bluetooth/hci_qca.c", i32 1097, i32 5}
!210 = !{ptr @.str.109, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/bluetooth/hci_qca.c", i32 1100, i32 4}
!212 = !{ptr @.str.110, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @qca_controller_memdump.__UNIQUE_ID_ddebug501, !211, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!214 = !{ptr @.str.111, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/bluetooth/hci_qca.c", i32 1110, i32 4}
!216 = !{ptr @.str.112, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/bluetooth/hci_qca.c", i32 1117, i32 4}
!218 = !{ptr @init_completion.__key, !219, !"__key", i1 false, i1 false}
!219 = !{!"../include/linux/completion.h", i32 87, i32 2}
!220 = !{ptr @.str.113, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @.str.114, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/bluetooth/hci_qca.c", i32 498, i32 2}
!223 = !{ptr @.str.115, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @hci_ibs_wake_retrans_timeout.__UNIQUE_ID_ddebug484, !222, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!225 = !{ptr @.str.116, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/bluetooth/hci_qca.c", i32 526, i32 3}
!227 = !{ptr @.str.117, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/bluetooth/hci_qca.c", i32 464, i32 2}
!229 = !{ptr @.str.118, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @hci_ibs_tx_idle_timeout.__UNIQUE_ID_ddebug483, !228, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!231 = !{ptr @.str.119, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/bluetooth/hci_qca.c", i32 692, i32 2}
!233 = !{ptr @.str.120, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @qca_close.__UNIQUE_ID_ddebug488, !232, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!235 = !{ptr @.str.121, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/bluetooth/hci_qca.c", i32 1717, i32 2}
!237 = !{ptr @.str.122, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @.str.123, !236, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @.str.124, !236, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @.str.125, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/bluetooth/hci_qca.c", i32 1784, i32 3}
!242 = !{ptr @.str.126, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/bluetooth/hci_qca.c", i32 1790, i32 5}
!244 = !{ptr @.str.127, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/bluetooth/hci_qca.c", i32 1634, i32 4}
!246 = !{ptr @qca_regulator_init.__UNIQUE_ID_ddebug505, !245, !"__UNIQUE_ID_ddebug505", i1 false, i1 false}
!247 = !{ptr @.str.128, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/bluetooth/hci_qca.c", i32 1954, i32 2}
!249 = !{ptr @.str.129, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @qca_regulator_enable.__UNIQUE_ID_ddebug507, !248, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!251 = !{ptr @.str.130, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/bluetooth/hci_qca.c", i32 1434, i32 3}
!253 = !{ptr @.str.131, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @qca_set_speed.__UNIQUE_ID_ddebug503, !252, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!255 = !{ptr @.str.132, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/bluetooth/hci_qca.c", i32 1452, i32 5}
!257 = !{ptr @.str.133, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/bluetooth/hci_qca.c", i32 1292, i32 3}
!259 = !{ptr @.str.134, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/bluetooth/hci_qca.c", i32 638, i32 31}
!261 = !{ptr @.str.135, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/bluetooth/hci_qca.c", i32 642, i32 20}
!263 = !{ptr @.str.136, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/bluetooth/hci_qca.c", i32 643, i32 20}
!265 = !{ptr @.str.137, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/bluetooth/hci_qca.c", i32 644, i32 21}
!267 = !{ptr @.str.138, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/bluetooth/hci_qca.c", i32 646, i32 21}
!269 = !{ptr @.str.139, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/bluetooth/hci_qca.c", i32 648, i32 21}
!271 = !{ptr @.str.140, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/bluetooth/hci_qca.c", i32 650, i32 21}
!273 = !{ptr @.str.141, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/bluetooth/hci_qca.c", i32 652, i32 21}
!275 = !{ptr @.str.142, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/bluetooth/hci_qca.c", i32 654, i32 21}
!277 = !{ptr @.str.143, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/bluetooth/hci_qca.c", i32 656, i32 22}
!279 = !{ptr @.str.144, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/bluetooth/hci_qca.c", i32 657, i32 21}
!281 = !{ptr @.str.145, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/bluetooth/hci_qca.c", i32 658, i32 21}
!283 = !{ptr @.str.146, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/bluetooth/hci_qca.c", i32 659, i32 22}
!285 = !{ptr @.str.147, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/bluetooth/hci_qca.c", i32 660, i32 21}
!287 = !{ptr @.str.148, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/bluetooth/hci_qca.c", i32 661, i32 21}
!289 = !{ptr @.str.149, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/bluetooth/hci_qca.c", i32 662, i32 21}
!291 = !{ptr @.str.150, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/bluetooth/hci_qca.c", i32 663, i32 21}
!293 = !{ptr @.str.151, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/bluetooth/hci_qca.c", i32 664, i32 21}
!295 = !{ptr @.str.152, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/bluetooth/hci_qca.c", i32 665, i32 21}
!297 = !{ptr @.str.153, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/bluetooth/hci_qca.c", i32 669, i32 21}
!299 = !{ptr @.str.154, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/bluetooth/hci_qca.c", i32 670, i32 21}
!301 = !{ptr @.str.155, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/bluetooth/hci_qca.c", i32 1507, i32 2}
!303 = !{ptr @.str.156, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/bluetooth/hci_qca.c", i32 1523, i32 3}
!305 = !{ptr @.str.157, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/bluetooth/hci_qca.c", i32 1529, i32 3}
!307 = !{ptr @.str.158, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/bluetooth/hci_qca.c", i32 1471, i32 3}
!309 = !{ptr @.str.159, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/bluetooth/hci_qca.c", i32 1482, i32 2}
!311 = !{ptr @.str.160, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/bluetooth/hci_qca.c", i32 1589, i32 2}
!313 = !{ptr @.str.161, !312, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @qca_wakeup.__UNIQUE_ID_ddebug504, !312, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!315 = !{ptr @.str.162, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/bluetooth/hci_qca.c", i32 1227, i32 3}
!317 = !{ptr @qca_recv_pkts, !318, !"qca_recv_pkts", i1 false, i1 false}
!318 = !{!"../drivers/bluetooth/hci_qca.c", i32 1207, i32 33}
!319 = !{ptr @.str.163, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/bluetooth/hci_qca.c", i32 940, i32 2}
!321 = !{ptr @.str.164, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @qca_ibs_wake_ind.__UNIQUE_ID_ddebug499, !320, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!323 = !{ptr @.str.165, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/bluetooth/hci_qca.c", i32 720, i32 2}
!325 = !{ptr @.str.166, !324, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @device_want_to_wakeup.__UNIQUE_ID_ddebug489, !324, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!327 = !{ptr @.str.167, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/bluetooth/hci_qca.c", i32 754, i32 3}
!329 = !{ptr @.str.168, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/bluetooth/hci_qca.c", i32 952, i32 2}
!331 = !{ptr @qca_ibs_wake_ack.__UNIQUE_ID_ddebug500, !330, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!332 = !{ptr @.str.169, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/bluetooth/hci_qca.c", i32 809, i32 2}
!334 = !{ptr @.str.170, !333, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @device_woke_up.__UNIQUE_ID_ddebug491, !333, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!336 = !{ptr @.str.171, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/bluetooth/hci_qca.c", i32 824, i32 3}
!338 = !{ptr @device_woke_up.__UNIQUE_ID_ddebug492, !337, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!339 = !{ptr @.str.172, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/bluetooth/hci_qca.c", i32 928, i32 2}
!341 = !{ptr @qca_ibs_sleep_ind.__UNIQUE_ID_ddebug498, !340, !"__UNIQUE_ID_ddebug498", i1 false, i1 false}
!342 = !{ptr @.str.173, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/bluetooth/hci_qca.c", i32 772, i32 2}
!344 = !{ptr @.str.174, !343, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @device_want_to_sleep.__UNIQUE_ID_ddebug490, !343, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!346 = !{ptr @.str.175, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/bluetooth/hci_qca.c", i32 791, i32 3}
!348 = !{ptr @.str.176, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/bluetooth/hci_qca.c", i32 861, i32 2}
!350 = !{ptr @.str.177, !349, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @qca_enqueue.__UNIQUE_ID_ddebug493, !349, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!352 = !{ptr @.str.178, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/bluetooth/hci_qca.c", i32 866, i32 3}
!354 = !{ptr @qca_enqueue.__UNIQUE_ID_ddebug494, !353, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!355 = !{ptr @.str.179, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/bluetooth/hci_qca.c", i32 890, i32 3}
!357 = !{ptr @qca_enqueue.__UNIQUE_ID_ddebug495, !356, !"__UNIQUE_ID_ddebug495", i1 false, i1 false}
!358 = !{ptr @.str.180, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/bluetooth/hci_qca.c", i32 897, i32 3}
!360 = !{ptr @qca_enqueue.__UNIQUE_ID_ddebug496, !359, !"__UNIQUE_ID_ddebug496", i1 false, i1 false}
!361 = !{ptr @.str.181, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/bluetooth/hci_qca.c", i32 907, i32 3}
!363 = !{ptr @qca_enqueue.__UNIQUE_ID_ddebug497, !362, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!364 = !{ptr @.str.182, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/bluetooth/hci_qca.c", i32 913, i32 3}
!366 = !{i32 1, !"wchar_size", i32 2}
!367 = !{i32 1, !"min_enum_size", i32 4}
!368 = !{i32 8, !"branch-target-enforcement", i32 0}
!369 = !{i32 8, !"sign-return-address", i32 0}
!370 = !{i32 8, !"sign-return-address-all", i32 0}
!371 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!372 = !{i32 7, !"uwtable", i32 1}
!373 = !{i32 7, !"frame-pointer", i32 2}
!374 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!375 = !{i64 2148751283, i64 2148751288, i64 2148751301, i64 2148751345, i64 2148751379, i64 2148751400}
!376 = !{!"branch_weights", i32 1, i32 2000}
!377 = !{i8 0, i8 2}
!378 = !{!"auto-init"}
