; ModuleID = '/llk/IR_all_yes/drivers/bluetooth/hci_intel.c_pt.bc'
source_filename = "../drivers/bluetooth/hci_intel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hci_uart_proto = type { i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.h4_recv_pkt = type { i8, i8, i8, i8, i16, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.intel_device = type { %struct.list_head, ptr, ptr, ptr, %struct.mutex, i32 }
%struct.hci_uart = type { ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.work_struct, ptr, %struct.percpu_rw_semaphore, ptr, ptr, i32, i32, i32, i8, i8 }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rcuwait = type { ptr }
%struct.intel_data = type { ptr, %struct.sk_buff_head, %struct.work_struct, ptr, i32 }
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
%struct.bdaddr_t = type { [6 x i8] }
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
%struct.intel_version = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.intel_boot_params = type <{ i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, %struct.bdaddr_t, i8, i8, i8, i8, i8 }>
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.92, %struct.anon.93, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.92 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.93 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.hci_event_hdr = type { i8, i8 }
%struct.hci_ev_cmd_complete = type <{ i8, i16 }>
%struct.hci_lpm_pkt = type { i8, i8, [0 x i8] }

@intel_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @intel_probe, ptr @intel_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @intel_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@intel_proto = internal constant { %struct.hci_uart_proto, [44 x i8] } { %struct.hci_uart_proto { i32 6, ptr @.str.42, i32 2, i32 115200, i32 3000000, ptr @intel_open, ptr @intel_close, ptr @intel_flush, ptr @intel_setup, ptr @intel_set_baudrate, ptr @intel_recv, ptr @intel_enqueue, ptr @intel_dequeue }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hci_intel\00", [22 x i8] zeroinitializer }, align 32
@intel_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @intel_suspend, ptr @intel_resume, ptr @intel_suspend, ptr @intel_resume, ptr @intel_suspend, ptr @intel_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @intel_suspend_device, ptr @intel_resume_device, ptr null }, [36 x i8] zeroinitializer }, align 32
@intel_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&idev->hu_lock\00", [17 x i8] zeroinitializer }, align 32
@intel_probe.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 1, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hci_uart\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"intel_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/bluetooth/hci_intel.c\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to add GPIO mapping table\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@intel_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.4, i32 1152, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to retrieve gpio\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@intel_probe._entry_ptr = internal global ptr @intel_probe._entry, section ".printk_index", align 4
@intel_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 1160, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"No IRQ, falling back to gpio-irq\0A\00", [62 x i8] zeroinitializer }, align 32
@intel_probe._entry_ptr.12 = internal global ptr @intel_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"host-wake\00", [22 x i8] zeroinitializer }, align 32
@intel_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 1164, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unable to retrieve IRQ\0A\00", [40 x i8] zeroinitializer }, align 32
@intel_probe._entry_ptr.16 = internal global ptr @intel_probe._entry.14, section ".printk_index", align 4
@intel_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 1170, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No corresponding irq for gpio\0A\00", [33 x i8] zeroinitializer }, align 32
@intel_probe._entry_ptr.19 = internal global ptr @intel_probe._entry.17, section ".printk_index", align 4
@intel_device_list_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.26, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @intel_device_list_lock, i64 52), ptr getelementptr (i8, ptr @intel_device_list_lock, i64 52) }, ptr @intel_device_list_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@intel_device_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @intel_device_list, ptr @intel_device_list }, [24 x i8] zeroinitializer }, align 32
@intel_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 1188, ptr @.str.22, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"registered, gpio(%d)/irq(%d).\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@intel_probe._entry_ptr.23 = internal global ptr @intel_probe._entry.20, section ".printk_index", align 4
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"intel_device_list_lock.wait_lock\00", [63 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"intel_device_list_lock\00", [41 x i8] zeroinitializer }, align 32
@intel_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 1203, ptr @.str.22, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"unregistered.\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"intel_remove\00", [19 x i8] zeroinitializer }, align 32
@intel_remove._entry_ptr = internal global ptr @intel_remove._entry, section ".printk_index", align 4
@intel_lpm_suspend.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.30, ptr @.str.4, ptr @.str.31, i8 0, i8 41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"intel_lpm_suspend\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: Suspending\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Failed to alloc memory for LPM packet\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Device suspend error\0A\00", [38 x i8] zeroinitializer }, align 32
@intel_lpm_suspend.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.30, ptr @.str.4, ptr @.str.34, i8 0, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: Suspended\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: LPM transaction interrupted\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: LPM transaction timeout\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/wait_bit.h\00", [39 x i8] zeroinitializer }, align 32
@intel_lpm_resume.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.38, ptr @.str.4, ptr @.str.39, i8 0, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"intel_lpm_resume\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: Resuming\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Device resume error\0A\00", [39 x i8] zeroinitializer }, align 32
@intel_lpm_resume.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.38, ptr @.str.4, ptr @.str.41, i8 0, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: Resumed\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Intel\00", [26 x i8] zeroinitializer }, align 32
@intel_open.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.43, ptr @.str.4, ptr @.str.44, i8 0, i8 96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"intel_open\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hu %p\0A\00", [25 x i8] zeroinitializer }, align 32
@intel_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&intel->busy_work)\00", [59 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"hu %p, Switching compatible pm device (%s) to %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bt-host-wake\00", [19 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"hu %p, unable to allocate irq-%d\0A\00", [62 x i8] zeroinitializer }, align 32
@intel_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.4, i32 274, ptr @.str.22, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hci_intel irq\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"intel_irq\00", [22 x i8] zeroinitializer }, align 32
@intel_irq._entry_ptr = internal global ptr @intel_irq._entry, section ".printk_index", align 4
@intel_lpm_host_wake.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.52, ptr @.str.4, ptr @.str.53, i8 0, i8 66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"intel_lpm_host_wake\00", [44 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Resumed by controller\0A\00", [37 x i8] zeroinitializer }, align 32
@intel_close.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.54, ptr @.str.4, ptr @.str.44, i8 0, i8 103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"intel_close\00", [20 x i8] zeroinitializer }, align 32
@intel_flush.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.55, ptr @.str.4, ptr @.str.44, i8 0, i8 107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"intel_flush\00", [20 x i8] zeroinitializer }, align 32
@intel_setup.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.56, ptr @.str.4, ptr @.str.57, i8 0, i8 -121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"intel_setup\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: start intel_setup\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: Unsupported Intel hardware platform (%u)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Unsupported Intel hardware variant (%u)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Unsupported Intel firmware variant (%u)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: Unsupported Intel firmware loading method (%u)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: No device address configured\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"intel/ibt-%u-%u.sfi\00", [44 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"intel/ibt-%u-%u-%u.sfi\00", [41 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Failed to load Intel firmware file (%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Found device firmware: %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"intel/ibt-%u-%u.ddc\00", [44 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"intel/ibt-%u-%u-%u.ddc\00", [41 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Invalid size of firmware file (%zu)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: Waiting for firmware download to complete\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Firmware loading interrupted\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Firmware loading timeout\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Firmware loading failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Firmware loaded in %llu usecs\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Waiting for device to boot\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Device booted in %llu usecs\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: Setup complete\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Device boot interrupted\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Device boot timeout\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Change controller speed to %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Unsupported speed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: Reading Intel version information failed (%ld)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: Failed to alloc memory for baudrate packet\0A\00", [48 x i8] zeroinitializer }, align 32
@intel_recv_pkts = internal constant { [4 x %struct.h4_recv_pkt], [48 x i8] } { [4 x %struct.h4_recv_pkt] [%struct.h4_recv_pkt { i8 2, i8 4, i8 2, i8 2, i16 1028, ptr @hci_recv_frame }, %struct.h4_recv_pkt { i8 3, i8 3, i8 2, i8 1, i16 255, ptr @hci_recv_frame }, %struct.h4_recv_pkt { i8 4, i8 2, i8 1, i8 1, i16 260, ptr @intel_recv_event }, %struct.h4_recv_pkt { i8 -15, i8 2, i8 1, i8 1, i16 10, ptr @intel_recv_lpm }], [48 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Frame reassembly failed (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Invalid LPM notification packet\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Unknown LPM opcode (%02x)\0A\00", [33 x i8] zeroinitializer }, align 32
@intel_recv_lpm_notify.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.87, ptr @.str.4, ptr @.str.88, i8 0, i8 -29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"intel_recv_lpm_notify\00", [42 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: TX idle notification (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@intel_enqueue.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.89, ptr @.str.4, ptr @.str.90, i8 0, i8 -8, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"intel_enqueue\00", [18 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hu %p skb %p\0A\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967292]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967292]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967292]
@__sancov_gen_cov_switch_values.93 = internal global [5 x i64] [i64 3, i64 8, i64 11, i64 12, i64 18]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 35]
@__sancov_gen_cov_switch_values.95 = internal global [5 x i64] [i64 3, i64 8, i64 11, i64 12, i64 18]
@__sancov_gen_cov_switch_values.96 = internal global [5 x i64] [i64 3, i64 8, i64 11, i64 12, i64 18]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967292]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967292]
@__sancov_gen_cov_switch_values.99 = internal global [14 x i64] [i64 12, i64 32, i64 9600, i64 19200, i64 38400, i64 57600, i64 115200, i64 230400, i64 460800, i64 921600, i64 1843200, i64 2000000, i64 3000000, i64 3250000]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967292]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 9]
@__sancov_gen_cov_switch_values.102 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@___asan_gen_.103 = private unnamed_addr constant [13 x i8] c"intel_driver\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1208, i32 31 }
@___asan_gen_.106 = private unnamed_addr constant [12 x i8] c"intel_proto\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1046, i32 36 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1212, i32 11 }
@___asan_gen_.112 = private unnamed_addr constant [13 x i8] c"intel_pm_ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1119, i32 32 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1142, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1148, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1150, i32 43 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1152, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1160, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1162, i32 42 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1164, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1170, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant [23 x i8] c"intel_device_list_lock\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [18 x i8] c"intel_device_list\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 64, i32 8 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1187, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 65, i32 8 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1203, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 165, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 169, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 188, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 192, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 140, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 145, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant [28 x i8] c"../include/linux/wait_bit.h\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 125, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 208, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 232, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 236, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1048, i32 11 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 386, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 396, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.254 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1984, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 311, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 333, i32 8 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 335, i32 5 }
@___asan_gen_.265 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 274, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 265, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 412, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 430, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 540, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 589, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 606, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 636, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 653, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 662, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 689, i32 36 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 693, i32 36 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 704, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 709, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 715, i32 36 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 719, i32 36 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 729, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 744, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 761, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 767, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 773, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 782, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 815, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 827, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 860, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 117, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 122, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 481, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 485, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 494, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 502, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant [16 x i8] c"intel_recv_pkts\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 961, i32 33 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 980, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 929, i32 4 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 945, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 910, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.392 = private constant [33 x i8] c"../drivers/bluetooth/hci_intel.c\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 993, i32 2 }
@llvm.compiler.used = appending global [105 x ptr] [ptr @intel_deinit, ptr @intel_irq._entry, ptr @intel_irq._entry_ptr, ptr @intel_probe._entry, ptr @intel_probe._entry.10, ptr @intel_probe._entry.14, ptr @intel_probe._entry.17, ptr @intel_probe._entry.20, ptr @intel_probe._entry_ptr, ptr @intel_probe._entry_ptr.12, ptr @intel_probe._entry_ptr.16, ptr @intel_probe._entry_ptr.19, ptr @intel_probe._entry_ptr.23, ptr @intel_remove._entry, ptr @intel_remove._entry_ptr, ptr @intel_driver, ptr @intel_proto, ptr @.str, ptr @intel_pm_ops, ptr @intel_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @intel_device_list_lock, ptr @intel_device_list, ptr @.str.21, ptr @.str.22, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @intel_open.__key, ptr @.str.45, ptr @skb_queue_head_init.__key, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @intel_recv_pkts, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90], section "llvm.metadata"
@0 = internal global [97 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_proto to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_device_list_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_device_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_recv_pkts to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @intel_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @intel_driver, ptr noundef null) #10
  %call1 = tail call i32 @hci_uart_register_proto(ptr noundef nonnull @intel_proto) #10
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_register_proto(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @intel_deinit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @intel_driver) #10
  %call = tail call i32 @hci_uart_unregister_proto(ptr noundef nonnull @intel_proto) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_unregister_proto(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 116, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup66_crit_edge, label %do.body

entry.cleanup66_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup66

do.body:                                          ; preds = %entry
  %hu_lock = getelementptr inbounds %struct.intel_device, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %hu_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @intel_probe.__key) #10
  %pdev1 = getelementptr inbounds %struct.intel_device, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pdev, ptr %pdev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @intel_probe.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@intel_probe, %if.then11)) #10
          to label %if.end16 [label %if.then11], !srcloc !209

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @intel_probe.__UNIQUE_ID_ddebug487, ptr noundef %dev, ptr noundef nonnull @.str.5) #10
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %do.body
  %call18 = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef 3) #10
  %reset = getelementptr inbounds %struct.intel_device, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call18, ptr %reset, align 4
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end24, label %if.end28

do.end24:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #13
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset, align 4
  %4 = ptrtoint ptr %3 to i32
  br label %cleanup66

if.end28:                                         ; preds = %if.end16
  %call29 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  %irq = getelementptr inbounds %struct.intel_device, ptr %call.i, i32 0, i32 5
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call29, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp = icmp slt i32 %call29, 0
  br i1 %cmp, label %if.then31, label %if.end28.if.end55_crit_edge

if.end28.if.end55_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then31:                                        ; preds = %if.end28
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #13
  %call37 = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef 1) #10
  %cmp.i96 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i96, label %do.end42, label %if.end44

do.end42:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #13
  br label %no_irq

if.end44:                                         ; preds = %if.then31
  %call45 = tail call i32 @gpiod_to_irq(ptr noundef %call37) #10
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call45, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp48 = icmp slt i32 %call45, 0
  br i1 %cmp48, label %do.end52, label %if.end44.if.end55_crit_edge

if.end44.if.end55_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

do.end52:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #13
  br label %no_irq

if.end55:                                         ; preds = %if.end44.if.end55_crit_edge, %if.end28.if.end55_crit_edge
  tail call void @device_set_wakeup_capable(ptr noundef %dev, i1 noundef zeroext true) #10
  %call58 = tail call i32 @device_wakeup_disable(ptr noundef %dev) #10
  br label %no_irq

no_irq:                                           ; preds = %if.end55, %do.end52, %do.end42
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @intel_device_list_lock, i32 noundef 0) #10
  %8 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @intel_device_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %8, ptr noundef nonnull @intel_device_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %no_irq.list_add_tail.exit_crit_edge

no_irq.list_add_tail.exit_crit_edge:              ; preds = %no_irq
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %no_irq
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %call.i, ptr getelementptr inbounds (%struct.list_head, ptr @intel_device_list, i32 0, i32 1), align 4
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @intel_device_list, ptr %call.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %call.i, ptr %8, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %no_irq.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @intel_device_list_lock) #10
  %12 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reset, align 4
  %call64 = tail call i32 @desc_to_gpio(ptr noundef %13) #10
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call64, i32 noundef %15) #13
  br label %cleanup66

cleanup66:                                        ; preds = %list_add_tail.exit, %do.end24, %entry.cleanup66_crit_edge
  %retval.0 = phi i32 [ %4, %do.end24 ], [ 0, %list_add_tail.exit ], [ -12, %entry.cleanup66_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call1 = tail call i32 @device_wakeup_disable(ptr noundef %dev) #10
  tail call void @mutex_lock_nested(ptr noundef nonnull @intel_device_list_lock, i32 noundef 0) #10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @intel_device_list_lock) #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.28) #13
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @desc_to_gpio(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  %irq = getelementptr inbounds %struct.intel_device, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i, align 4
  %hu_lock.i = getelementptr inbounds %struct.intel_device, ptr %8, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %hu_lock.i, i32 noundef 0) #10
  %hu.i = getelementptr inbounds %struct.intel_device, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %hu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hu.i, align 4
  %tobool.not.i6 = icmp eq ptr %10, null
  br i1 %tobool.not.i6, label %if.end.intel_suspend_device.exit_crit_edge, label %if.then.i

if.end.intel_suspend_device.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %intel_suspend_device.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @intel_lpm_suspend(ptr noundef nonnull %10) #10
  br label %intel_suspend_device.exit

intel_suspend_device.exit:                        ; preds = %if.then.i, %if.end.intel_suspend_device.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %hu_lock.i) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  %irq = getelementptr inbounds %struct.intel_device, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i, align 4
  %hu_lock.i = getelementptr inbounds %struct.intel_device, ptr %8, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %hu_lock.i, i32 noundef 0) #10
  %hu.i = getelementptr inbounds %struct.intel_device, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %hu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hu.i, align 4
  %tobool.not.i6 = icmp eq ptr %10, null
  br i1 %tobool.not.i6, label %if.end.intel_resume_device.exit_crit_edge, label %if.then.i

if.end.intel_resume_device.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %intel_resume_device.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @intel_lpm_resume(ptr noundef nonnull %10) #10
  br label %intel_resume_device.exit

intel_resume_device.exit:                         ; preds = %if.then.i, %if.end.intel_resume_device.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %hu_lock.i) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_suspend_device(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hu_lock = getelementptr inbounds %struct.intel_device, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %hu_lock, i32 noundef 0) #10
  %hu = getelementptr inbounds %struct.intel_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %hu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hu, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @intel_lpm_suspend(ptr noundef nonnull %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %hu_lock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_resume_device(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hu_lock = getelementptr inbounds %struct.intel_device, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %hu_lock, i32 noundef 0) #10
  %hu = getelementptr inbounds %struct.intel_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %hu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hu, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @intel_lpm_resume(ptr noundef nonnull %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %hu_lock) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @intel_lpm_suspend(ptr noundef %hu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %flags = getelementptr inbounds %struct.intel_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6.not = icmp eq i32 %10, 0
  br i1 %tobool6.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @intel_lpm_suspend.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@intel_lpm_suspend, %if.then13)) #10
          to label %do.end [label %if.then13], !srcloc !209

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %11 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %12, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @intel_lpm_suspend.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.31, ptr noundef %name) #10
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 11, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then17, label %if.end21

if.then17:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %hdev18 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %13 = ptrtoint ptr %hdev18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hdev18, align 4
  %name19 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.32, ptr noundef %name19) #10
  br label %cleanup

if.end21:                                         ; preds = %do.end
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %15 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %17 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %18, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 3) #10
  %19 = call ptr @memset(ptr %call.i, i32 1, i32 3)
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %cb to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -15, ptr %cb, align 8
  tail call void @_set_bit(i32 noundef 8, ptr noundef %flags) #10
  %txq = getelementptr inbounds %struct.intel_data, ptr %1, i32 0, i32 1
  tail call void @skb_queue_head(ptr noundef %txq, ptr noundef nonnull %call.i.i) #10
  %call25 = tail call i32 @hci_uart_tx_wakeup(ptr noundef %hu) #10
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv, align 4
  %flags.i = getelementptr inbounds %struct.intel_data, ptr %22, i32 0, i32 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.37, i32 noundef 125) #10
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags.i, align 4
  %25 = and i32 %24, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i, label %if.end21.intel_wait_lpm_transaction.exit_crit_edge, label %wait_on_bit_timeout.exit.i

if.end21.intel_wait_lpm_transaction.exit_crit_edge: ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %intel_wait_lpm_transaction.exit

wait_on_bit_timeout.exit.i:                       ; preds = %if.end21
  %call3.i.i = tail call i32 @out_of_line_wait_on_bit_timeout(ptr noundef %flags.i, i32 noundef 8, ptr noundef nonnull @bit_wait_timeout, i32 noundef 1, i32 noundef 100) #10
  %26 = zext i32 %call3.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call3.i.i, label %if.then2.i [
    i32 -4, label %wait_on_bit_timeout.exit.i.cleanup.sink.split.i_crit_edge
    i32 0, label %wait_on_bit_timeout.exit.i.intel_wait_lpm_transaction.exit_crit_edge
  ]

wait_on_bit_timeout.exit.i.intel_wait_lpm_transaction.exit_crit_edge: ; preds = %wait_on_bit_timeout.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %intel_wait_lpm_transaction.exit

wait_on_bit_timeout.exit.i.cleanup.sink.split.i_crit_edge: ; preds = %wait_on_bit_timeout.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.then2.i:                                       ; preds = %wait_on_bit_timeout.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then2.i, %wait_on_bit_timeout.exit.i.cleanup.sink.split.i_crit_edge
  %.str.36.sink.i = phi ptr [ @.str.36, %if.then2.i ], [ @.str.35, %wait_on_bit_timeout.exit.i.cleanup.sink.split.i_crit_edge ]
  %hdev3.i = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %27 = ptrtoint ptr %hdev3.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hdev3.i, align 4
  %name4.i = getelementptr inbounds %struct.hci_dev, ptr %28, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull %.str.36.sink.i, ptr noundef %name4.i) #10
  br label %intel_wait_lpm_transaction.exit

intel_wait_lpm_transaction.exit:                  ; preds = %cleanup.sink.split.i, %wait_on_bit_timeout.exit.i.intel_wait_lpm_transaction.exit_crit_edge, %if.end21.intel_wait_lpm_transaction.exit_crit_edge
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %flags) #10
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %flags, align 4
  %31 = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool30.not = icmp eq i32 %31, 0
  br i1 %tobool30.not, label %if.then31, label %do.body36

if.then31:                                        ; preds = %intel_wait_lpm_transaction.exit
  call void @__sanitizer_cov_trace_pc() #12
  %hdev32 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %32 = ptrtoint ptr %hdev32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hdev32, align 4
  %name33 = getelementptr inbounds %struct.hci_dev, ptr %33, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.33, ptr noundef %name33) #10
  br label %cleanup

do.body36:                                        ; preds = %intel_wait_lpm_transaction.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @intel_lpm_suspend.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@intel_lpm_suspend, %if.then48)) #10
          to label %do.end54 [label %if.then48], !srcloc !209

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #12
  %hdev49 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %34 = ptrtoint ptr %hdev49 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hdev49, align 4
  %name50 = getelementptr inbounds %struct.hci_dev, ptr %35, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @intel_lpm_suspend.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.34, ptr noundef %name50) #10
  br label %do.end54

do.end54:                                         ; preds = %if.then48, %do.body36
  tail call void @hci_uart_set_flow_control(ptr noundef %hu, i1 noundef zeroext true) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end54, %if.then31, %if.then17, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_tx_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_uart_set_flow_control(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_on_bit_timeout(ptr noundef %word, i32 noundef %bit, i32 noundef %timeout) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__might_sleep(ptr noundef nonnull @.str.37, i32 noundef 125) #10
  %0 = ptrtoint ptr %word to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %word, align 4
  %and.i = and i32 %bit, 31
  %2 = shl nuw i32 1, %and.i
  %3 = and i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 @out_of_line_wait_on_bit_timeout(ptr noundef %word, i32 noundef %bit, ptr noundef nonnull @bit_wait_timeout, i32 noundef 1, i32 noundef %timeout) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit_timeout(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait_timeout(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @intel_lpm_resume(ptr noundef %hu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %flags = getelementptr inbounds %struct.intel_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %do.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @intel_lpm_resume.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@intel_lpm_resume, %if.then8)) #10
          to label %do.end [label %if.then8], !srcloc !209

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %8 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @intel_lpm_resume.__UNIQUE_ID_ddebug478, ptr noundef nonnull @.str.39, ptr noundef %name) #10
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  tail call void @hci_uart_set_flow_control(ptr noundef %hu, i1 noundef zeroext false) #10
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then12, label %if.end16

if.then12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %hdev13 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %10 = ptrtoint ptr %hdev13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hdev13, align 4
  %name14 = getelementptr inbounds %struct.hci_dev, ptr %11, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.32, ptr noundef %name14) #10
  br label %cleanup

if.end16:                                         ; preds = %do.end
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
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %cb to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -16, ptr %cb, align 8
  tail call void @_set_bit(i32 noundef 8, ptr noundef %flags) #10
  %txq = getelementptr inbounds %struct.intel_data, ptr %1, i32 0, i32 1
  tail call void @skb_queue_head(ptr noundef %txq, ptr noundef nonnull %call.i.i) #10
  %call19 = tail call i32 @hci_uart_tx_wakeup(ptr noundef %hu) #10
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv, align 4
  %flags.i = getelementptr inbounds %struct.intel_data, ptr %18, i32 0, i32 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.37, i32 noundef 125) #10
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags.i, align 4
  %21 = and i32 %20, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i, label %if.end16.intel_wait_lpm_transaction.exit_crit_edge, label %wait_on_bit_timeout.exit.i

if.end16.intel_wait_lpm_transaction.exit_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %intel_wait_lpm_transaction.exit

wait_on_bit_timeout.exit.i:                       ; preds = %if.end16
  %call3.i.i = tail call i32 @out_of_line_wait_on_bit_timeout(ptr noundef %flags.i, i32 noundef 8, ptr noundef nonnull @bit_wait_timeout, i32 noundef 1, i32 noundef 100) #10
  %22 = zext i32 %call3.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %call3.i.i, label %if.then2.i [
    i32 -4, label %wait_on_bit_timeout.exit.i.cleanup.sink.split.i_crit_edge
    i32 0, label %wait_on_bit_timeout.exit.i.intel_wait_lpm_transaction.exit_crit_edge
  ]

wait_on_bit_timeout.exit.i.intel_wait_lpm_transaction.exit_crit_edge: ; preds = %wait_on_bit_timeout.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %intel_wait_lpm_transaction.exit

wait_on_bit_timeout.exit.i.cleanup.sink.split.i_crit_edge: ; preds = %wait_on_bit_timeout.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.then2.i:                                       ; preds = %wait_on_bit_timeout.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then2.i, %wait_on_bit_timeout.exit.i.cleanup.sink.split.i_crit_edge
  %.str.36.sink.i = phi ptr [ @.str.36, %if.then2.i ], [ @.str.35, %wait_on_bit_timeout.exit.i.cleanup.sink.split.i_crit_edge ]
  %hdev3.i = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %23 = ptrtoint ptr %hdev3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hdev3.i, align 4
  %name4.i = getelementptr inbounds %struct.hci_dev, ptr %24, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull %.str.36.sink.i, ptr noundef %name4.i) #10
  br label %intel_wait_lpm_transaction.exit

intel_wait_lpm_transaction.exit:                  ; preds = %cleanup.sink.split.i, %wait_on_bit_timeout.exit.i.intel_wait_lpm_transaction.exit_crit_edge, %if.end16.intel_wait_lpm_transaction.exit_crit_edge
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %flags) #10
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags, align 4
  %27 = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool24.not = icmp eq i32 %27, 0
  br i1 %tobool24.not, label %do.body30, label %if.then25

if.then25:                                        ; preds = %intel_wait_lpm_transaction.exit
  call void @__sanitizer_cov_trace_pc() #12
  %hdev26 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %28 = ptrtoint ptr %hdev26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hdev26, align 4
  %name27 = getelementptr inbounds %struct.hci_dev, ptr %29, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.40, ptr noundef %name27) #10
  br label %cleanup

do.body30:                                        ; preds = %intel_wait_lpm_transaction.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @intel_lpm_resume.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@intel_lpm_resume, %if.then42)) #10
          to label %cleanup [label %if.then42], !srcloc !209

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #12
  %hdev43 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %30 = ptrtoint ptr %hdev43 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hdev43, align 4
  %name44 = getelementptr inbounds %struct.hci_dev, ptr %31, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @intel_lpm_resume.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.41, ptr noundef %name44) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %do.body30, %if.then25, %if.then12, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_open(ptr noundef %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @intel_open.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@intel_open, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !209

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @intel_open.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.44, ptr noundef %hu) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call zeroext i1 @hci_uart_has_flow_control(ptr noundef %hu) #10
  br i1 %call3, label %if.end5, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 112) #14
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %txq = getelementptr inbounds %struct.intel_data, ptr %call7.i.i, i32 0, i32 1
  %lock.i = getelementptr inbounds %struct.intel_data, ptr %call7.i.i, i32 0, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %1 = ptrtoint ptr %txq to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %txq, ptr %txq, align 4
  %prev.i.i = getelementptr inbounds %struct.intel_data, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %txq, ptr %prev.i.i, align 8
  %qlen.i.i = getelementptr inbounds %struct.intel_data, ptr %call7.i.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %qlen.i.i, align 4
  %busy_work = getelementptr inbounds %struct.intel_data, ptr %call7.i.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %busy_work, i32 noundef 0) #10
  %4 = ptrtoint ptr %busy_work to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %busy_work, align 4
  %lockdep_map = getelementptr inbounds %struct.intel_data, ptr %call7.i.i, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.45, ptr noundef nonnull @intel_open.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry14 = getelementptr inbounds %struct.intel_data, ptr %call7.i.i, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %entry14 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry14, ptr %entry14, align 8
  %prev.i = getelementptr inbounds %struct.intel_data, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry14, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.intel_data, ptr %call7.i.i, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @intel_busy_work, ptr %func, align 8
  %hu18 = getelementptr inbounds %struct.intel_data, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %hu18 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %hu, ptr %hu18, align 8
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %priv, align 4
  %call19 = tail call fastcc i32 @intel_set_power(ptr noundef %hu, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then21:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.intel_data, ptr %call7.i.i, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %do.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ 0, %if.then21 ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_close(ptr noundef %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @intel_close.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@intel_close, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !209

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @intel_close.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.44, ptr noundef %hu) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %busy_work = getelementptr inbounds %struct.intel_data, ptr %1, i32 0, i32 2
  %call3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %busy_work) #10
  %call4 = tail call fastcc i32 @intel_set_power(ptr noundef %hu, i1 noundef zeroext false)
  %txq = getelementptr inbounds %struct.intel_data, ptr %1, i32 0, i32 1
  tail call void @skb_queue_purge(ptr noundef %txq) #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #10
  tail call void @kfree(ptr noundef %1) #10
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %priv, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_flush(ptr noundef %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @intel_flush.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@intel_flush, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !209

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @intel_flush.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.44, ptr noundef %hu) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %txq = getelementptr inbounds %struct.intel_data, ptr %1, i32 0, i32 1
  tail call void @skb_queue_purge(ptr noundef %txq) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_setup(ptr noundef %hu) #2 align 64 {
entry:
  %ver = alloca %struct.intel_version, align 1
  %params = alloca %struct.intel_boot_params, align 1
  %fw = alloca ptr, align 4
  %fwname = alloca [64 x i8], align 1
  %boot_param = alloca i32, align 4
  %.compoundliteral = alloca %struct.bdaddr_t, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %hdev1 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %2 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev1, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %ver) #10
  %4 = getelementptr inbounds %struct.intel_version, ptr %ver, i32 0, i32 1
  %5 = getelementptr inbounds %struct.intel_version, ptr %ver, i32 0, i32 2
  %6 = getelementptr inbounds %struct.intel_version, ptr %ver, i32 0, i32 3
  %7 = getelementptr inbounds %struct.intel_version, ptr %ver, i32 0, i32 4
  %8 = getelementptr inbounds %struct.intel_version, ptr %ver, i32 0, i32 5
  %9 = call ptr @memset(ptr %ver, i32 255, i32 10)
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %params) #10
  %10 = getelementptr inbounds %struct.intel_boot_params, ptr %params, i32 0, i32 4
  %11 = getelementptr inbounds %struct.intel_boot_params, ptr %params, i32 0, i32 11
  %12 = getelementptr inbounds %struct.intel_boot_params, ptr %params, i32 0, i32 15
  %13 = call ptr @memset(ptr %params, i32 255, i32 23)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #10
  %14 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !210
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fwname) #10
  %15 = call ptr @memset(ptr %fwname, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %boot_param) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @intel_setup.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@intel_setup, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !209

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @intel_setup.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.57, ptr noundef %name) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %16 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hdev1, align 4
  %set_diag = getelementptr inbounds %struct.hci_dev, ptr %17, i32 0, i32 241
  %18 = ptrtoint ptr %set_diag to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @btintel_set_diag, ptr %set_diag, align 4
  %19 = load ptr, ptr %hdev1, align 4
  %set_bdaddr = getelementptr inbounds %struct.hci_dev, ptr %19, i32 0, i32 242
  %20 = ptrtoint ptr %set_bdaddr to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @btintel_set_bdaddr, ptr %set_bdaddr, align 8
  %21 = ptrtoint ptr %boot_param to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %boot_param, align 4
  %call6 = tail call i64 @ktime_get() #10
  %init_speed7 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 12
  %22 = ptrtoint ptr %init_speed7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %init_speed7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool8.not = icmp eq i32 %23, 0
  br i1 %tobool8.not, label %if.else, label %do.end.if.end12_crit_edge

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %proto = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 7
  %24 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %proto, align 4
  %init_speed11 = getelementptr inbounds %struct.hci_uart_proto, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %init_speed11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %init_speed11, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %do.end.if.end12_crit_edge
  %init_speed.0 = phi i32 [ %27, %if.else ], [ %23, %do.end.if.end12_crit_edge ]
  %oper_speed13 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 13
  %28 = ptrtoint ptr %oper_speed13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %oper_speed13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool14.not = icmp eq i32 %29, 0
  br i1 %tobool14.not, label %if.else17, label %if.end12.if.end20_crit_edge

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.else17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %proto18 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 7
  %30 = ptrtoint ptr %proto18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %proto18, align 4
  %oper_speed19 = getelementptr inbounds %struct.hci_uart_proto, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %oper_speed19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %oper_speed19, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else17, %if.end12.if.end20_crit_edge
  %oper_speed.0 = phi i32 [ %33, %if.else17 ], [ %29, %if.end12.if.end20_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oper_speed.0)
  %tobool21.not = icmp eq i32 %oper_speed.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %init_speed.0)
  %tobool22.not = icmp eq i32 %init_speed.0, 0
  %or.cond = select i1 %tobool21.not, i1 true, i1 %tobool22.not
  call void @__sanitizer_cov_trace_cmp4(i32 %oper_speed.0, i32 %init_speed.0)
  %cmp.not = icmp eq i32 %oper_speed.0, %init_speed.0
  %or.cond377 = select i1 %or.cond, i1 true, i1 %cmp.not
  %34 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv, align 4
  %flags.i = getelementptr inbounds %struct.intel_data, ptr %35, i32 0, i32 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.37, i32 noundef 125) #10
  %36 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %flags.i, align 4
  %38 = and i32 %37, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i.i, label %if.end20.if.end31_crit_edge, label %wait_on_bit_timeout.exit.i

if.end20.if.end31_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

wait_on_bit_timeout.exit.i:                       ; preds = %if.end20
  %call3.i.i = tail call i32 @out_of_line_wait_on_bit_timeout(ptr noundef %flags.i, i32 noundef 4, ptr noundef nonnull @bit_wait_timeout, i32 noundef 1, i32 noundef 100) #10
  %39 = zext i32 %call3.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %call3.i.i, label %intel_wait_booting.exit [
    i32 -4, label %intel_wait_booting.exit.thread387
    i32 0, label %wait_on_bit_timeout.exit.i.if.end31_crit_edge
  ]

wait_on_bit_timeout.exit.i.if.end31_crit_edge:    ; preds = %wait_on_bit_timeout.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

intel_wait_booting.exit.thread387:                ; preds = %wait_on_bit_timeout.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hdev1, align 4
  %name4.i390 = getelementptr inbounds %struct.hci_dev, ptr %41, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.78, ptr noundef %name4.i390) #10
  %flags391 = getelementptr inbounds %struct.intel_data, ptr %1, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags391) #10
  br label %cleanup

intel_wait_booting.exit:                          ; preds = %wait_on_bit_timeout.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hdev1, align 4
  %name4.i = getelementptr inbounds %struct.hci_dev, ptr %43, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.79, ptr noundef %name4.i) #10
  br label %if.end31

if.end31:                                         ; preds = %intel_wait_booting.exit, %wait_on_bit_timeout.exit.i.if.end31_crit_edge, %if.end20.if.end31_crit_edge
  %flags.sink = getelementptr inbounds %struct.intel_data, ptr %1, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags.sink) #10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.sink) #10
  %call33 = call i32 @btintel_read_version(ptr noundef %3, ptr noundef nonnull %ver) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  %44 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 55, i8 %45)
  %cmp37.not = icmp eq i8 %45, 55
  br i1 %cmp37.not, label %if.end44, label %if.then39

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %45 to i32
  %name40 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.58, ptr noundef %name40, i32 noundef %conv) #10
  br label %cleanup

if.end44:                                         ; preds = %if.end36
  %46 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %5, align 1
  %48 = zext i8 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.93)
  switch i8 %47, label %sw.default [
    i8 11, label %if.end44.sw.epilog_crit_edge
    i8 12, label %if.end44.sw.epilog_crit_edge392
    i8 18, label %if.end44.sw.epilog_crit_edge393
  ]

if.end44.sw.epilog_crit_edge393:                  ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end44.sw.epilog_crit_edge392:                  ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end44.sw.epilog_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.default:                                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  %conv45 = zext i8 %47 to i32
  %name46 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.59, ptr noundef %name46, i32 noundef %conv45) #10
  br label %cleanup

sw.epilog:                                        ; preds = %if.end44.sw.epilog_crit_edge, %if.end44.sw.epilog_crit_edge392, %if.end44.sw.epilog_crit_edge393
  %call50 = call i32 @btintel_version_info(ptr noundef %3, ptr noundef nonnull %ver) #10
  %49 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %7, align 1
  %51 = zext i8 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.94)
  switch i8 %50, label %if.then62 [
    i8 35, label %if.then54
    i8 6, label %if.end67
  ]

if.then54:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags.sink) #10
  %call56 = call i32 @btintel_check_bdaddr(ptr noundef %3) #10
  br label %cleanup

if.then62:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %conv51 = zext i8 %50 to i32
  %name63 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.60, ptr noundef %name63, i32 noundef %conv51) #10
  br label %cleanup

if.end67:                                         ; preds = %sw.epilog
  %call68 = call i32 @btintel_read_boot_params(ptr noundef %3, ptr noundef nonnull %params) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end71:                                         ; preds = %if.end67
  %52 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp73.not = icmp eq i8 %53, 0
  br i1 %cmp73.not, label %if.end80, label %if.then75

if.then75:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  %conv72 = zext i8 %53 to i32
  %name76 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.61, ptr noundef %name76, i32 noundef %conv72) #10
  br label %cleanup

if.end80:                                         ; preds = %if.end71
  %54 = call ptr @memset(ptr %.compoundliteral, i32 0, i32 6)
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(6) %11, ptr noundef nonnull dereferenceable(6) %.compoundliteral, i32 6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool86.not = icmp eq i32 %bcmp, 0
  br i1 %tobool86.not, label %if.then87, label %if.end80.if.end90_crit_edge

if.end80.if.end90_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then87:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  %name88 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 2
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.62, ptr noundef %name88) #10
  %quirks = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 118
  call void @_set_bit(i32 noundef 7, ptr noundef %quirks) #10
  br label %if.end90

if.end90:                                         ; preds = %if.then87, %if.end80.if.end90_crit_edge
  %55 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %5, align 1
  %57 = zext i8 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.95)
  switch i8 %56, label %sw.default106 [
    i8 11, label %if.end90.sw.bb93_crit_edge
    i8 12, label %if.end90.sw.bb93_crit_edge394
    i8 18, label %sw.bb99
  ]

if.end90.sw.bb93_crit_edge394:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb93

if.end90.sw.bb93_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb93

sw.bb93:                                          ; preds = %if.end90.sw.bb93_crit_edge, %if.end90.sw.bb93_crit_edge394
  %conv96 = zext i8 %56 to i32
  %58 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %10, align 1
  %60 = call i16 @llvm.bswap.i16(i16 %59)
  %conv97 = zext i16 %60 to i32
  %call98 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fwname, i32 noundef 64, ptr noundef nonnull @.str.63, i32 noundef %conv96, i32 noundef %conv97)
  br label %sw.epilog111

sw.bb99:                                          ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %6, align 1
  %conv103 = zext i8 %62 to i32
  %63 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %8, align 1
  %conv104 = zext i8 %64 to i32
  %call105 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fwname, i32 noundef 64, ptr noundef nonnull @.str.64, i32 noundef 18, i32 noundef %conv103, i32 noundef %conv104)
  br label %sw.epilog111

sw.default106:                                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  %conv92 = zext i8 %56 to i32
  %name107 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.59, ptr noundef %name107, i32 noundef %conv92) #10
  br label %cleanup

sw.epilog111:                                     ; preds = %sw.bb99, %sw.bb93
  %dev = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 204
  %call113 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull %fwname, ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %cmp114 = icmp slt i32 %call113, 0
  %name117 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 2
  br i1 %cmp114, label %if.then116, label %if.end119

if.then116:                                       ; preds = %sw.epilog111
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.65, ptr noundef %name117, i32 noundef %call113) #10
  br label %cleanup

if.end119:                                        ; preds = %sw.epilog111
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.66, ptr noundef %name117, ptr noundef nonnull %fwname) #10
  %65 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %5, align 1
  %67 = zext i8 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.96)
  switch i8 %66, label %sw.default141 [
    i8 11, label %if.end119.sw.bb125_crit_edge
    i8 12, label %if.end119.sw.bb125_crit_edge395
    i8 18, label %sw.bb132
  ]

if.end119.sw.bb125_crit_edge395:                  ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb125

if.end119.sw.bb125_crit_edge:                     ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb125

sw.bb125:                                         ; preds = %if.end119.sw.bb125_crit_edge, %if.end119.sw.bb125_crit_edge395
  %conv128 = zext i8 %66 to i32
  %68 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 2)
  %69 = load i16, ptr %10, align 1
  %70 = call i16 @llvm.bswap.i16(i16 %69)
  %conv130 = zext i16 %70 to i32
  %call131 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fwname, i32 noundef 64, ptr noundef nonnull @.str.67, i32 noundef %conv128, i32 noundef %conv130)
  br label %sw.epilog146

sw.bb132:                                         ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %6, align 1
  %conv137 = zext i8 %72 to i32
  %73 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %8, align 1
  %conv139 = zext i8 %74 to i32
  %call140 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fwname, i32 noundef 64, ptr noundef nonnull @.str.68, i32 noundef 18, i32 noundef %conv137, i32 noundef %conv139)
  br label %sw.epilog146

sw.default141:                                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  %conv124 = zext i8 %66 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.59, ptr noundef %name117, i32 noundef %conv124) #10
  br label %cleanup

sw.epilog146:                                     ; preds = %sw.bb132, %sw.bb125
  %75 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %fw, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 644, i32 %78)
  %cmp147 = icmp ult i32 %78, 644
  br i1 %cmp147, label %if.then149, label %if.end153

if.then149:                                       ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.69, ptr noundef %name117, i32 noundef %78) #10
  br label %done

if.end153:                                        ; preds = %sw.epilog146
  call void @_set_bit(i32 noundef 1, ptr noundef %flags.sink) #10
  %79 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %fw, align 4
  %call155 = call i32 @btintel_download_firmware(ptr noundef %3, ptr noundef nonnull %ver, ptr noundef %80, ptr noundef nonnull %boot_param) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %cmp156 = icmp slt i32 %call155, 0
  br i1 %cmp156, label %if.end153.done_crit_edge, label %if.end159

if.end153.done_crit_edge:                         ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end159:                                        ; preds = %if.end153
  call void @_set_bit(i32 noundef 2, ptr noundef %flags.sink) #10
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.70, ptr noundef %name117) #10
  %call165 = call fastcc i32 @wait_on_bit_timeout(ptr noundef %flags.sink, i32 noundef 1, i32 noundef 500)
  %81 = zext i32 %call165 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %call165, label %if.then173 [
    i32 -4, label %if.then168
    i32 0, label %if.end176
  ]

if.then168:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.71, ptr noundef %name117) #10
  br label %done

if.then173:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.72, ptr noundef %name117) #10
  br label %done

if.end176:                                        ; preds = %if.end159
  %82 = ptrtoint ptr %flags.sink to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %flags.sink, align 4
  %84 = and i32 %83, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool179.not = icmp eq i32 %84, 0
  br i1 %tobool179.not, label %if.end183, label %if.then180

if.then180:                                       ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.73, ptr noundef %name117) #10
  br label %done

if.end183:                                        ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #12
  %call184 = call i64 @ktime_get() #10
  %sub = sub i64 %call184, %call6
  %shr = lshr i64 %sub, 10
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.74, ptr noundef %name117, i64 noundef %shr) #10
  br label %done

done:                                             ; preds = %if.end183, %if.then180, %if.then173, %if.then168, %if.end153.done_crit_edge, %if.then149
  %err.0 = phi i32 [ -9, %if.then149 ], [ %call155, %if.end153.done_crit_edge ], [ -4, %if.then168 ], [ -110, %if.then173 ], [ -8, %if.then180 ], [ 0, %if.end183 ]
  %85 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %86) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %err.0)
  %cmp188 = icmp sgt i32 %err.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -114, i32 %err.0)
  %cmp191.not = icmp eq i32 %err.0, -114
  %or.cond378 = or i1 %cmp188, %cmp191.not
  br i1 %or.cond378, label %if.end194, label %done.cleanup_crit_edge

done.cleanup_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end194:                                        ; preds = %done
  br i1 %or.cond377, label %if.end194.if.end201_crit_edge, label %if.then196

if.end194.if.end201_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end201

if.then196:                                       ; preds = %if.end194
  %call197 = call i32 @intel_set_baudrate(ptr noundef %hu, i32 noundef %init_speed.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197)
  %tobool198.not = icmp eq i32 %call197, 0
  br i1 %tobool198.not, label %if.then196.if.end201_crit_edge, label %if.then196.cleanup_crit_edge

if.then196.cleanup_crit_edge:                     ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then196.if.end201_crit_edge:                   ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end201

if.end201:                                        ; preds = %if.then196.if.end201_crit_edge, %if.end194.if.end201_crit_edge
  %call202 = call i64 @ktime_get() #10
  call void @_set_bit(i32 noundef 4, ptr noundef %flags.sink) #10
  %87 = ptrtoint ptr %boot_param to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %boot_param, align 4
  %call204 = call i32 @btintel_send_intel_reset(ptr noundef %3, i32 noundef %88) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call204)
  %tobool205.not = icmp eq i32 %call204, 0
  br i1 %tobool205.not, label %if.end207, label %if.end201.cleanup_crit_edge

if.end201.cleanup_crit_edge:                      ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end207:                                        ; preds = %if.end201
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.75, ptr noundef %name117) #10
  %call210 = call fastcc i32 @intel_wait_booting(ptr noundef %hu)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call210)
  %tobool211.not = icmp eq i32 %call210, 0
  br i1 %tobool211.not, label %if.end213, label %if.end207.cleanup_crit_edge

if.end207.cleanup_crit_edge:                      ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end213:                                        ; preds = %if.end207
  call void @_clear_bit(i32 noundef 4, ptr noundef %flags.sink) #10
  %call215 = call i64 @ktime_get() #10
  %sub216 = sub i64 %call215, %call202
  %shr218 = lshr i64 %sub216, 10
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.76, ptr noundef %name117, i64 noundef %shr218) #10
  call void @mutex_lock_nested(ptr noundef nonnull @intel_device_list_lock, i32 noundef 0) #10
  br label %for.cond

for.cond:                                         ; preds = %if.end229.for.cond_crit_edge, %if.end213
  %idev.0.in = phi ptr [ @intel_device_list, %if.end213 ], [ %idev.0, %if.end229.for.cond_crit_edge ]
  %89 = ptrtoint ptr %idev.0.in to i32
  call void @__asan_load4_noabort(i32 %89)
  %idev.0 = load ptr, ptr %idev.0.in, align 4
  %cmp222.not = icmp eq ptr %idev.0, @intel_device_list
  br i1 %cmp222.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond
  %90 = ptrtoint ptr %hu to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hu, align 4
  %dev226 = getelementptr inbounds %struct.tty_struct, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %dev226 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev226, align 4
  %tobool227.not = icmp eq ptr %93, null
  br i1 %tobool227.not, label %for.body.for.end_crit_edge, label %if.end229

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end229:                                        ; preds = %for.body
  %parent = getelementptr inbounds %struct.device, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %parent, align 8
  %pdev = getelementptr inbounds %struct.intel_device, ptr %idev.0, i32 0, i32 1
  %96 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pdev, align 4
  %parent233 = getelementptr inbounds %struct.platform_device, ptr %97, i32 0, i32 3, i32 1
  %98 = ptrtoint ptr %parent233 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %parent233, align 8
  %cmp234 = icmp eq ptr %95, %99
  br i1 %cmp234, label %if.then236, label %if.end229.for.cond_crit_edge

if.end229.for.cond_crit_edge:                     ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then236:                                       ; preds = %if.end229
  %can_wakeup.i = getelementptr inbounds %struct.platform_device, ptr %97, i32 0, i32 3, i32 12, i32 1
  %100 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.then236.for.end_crit_edge, label %device_may_wakeup.exit

if.then236.for.end_crit_edge:                     ; preds = %if.then236
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

device_may_wakeup.exit:                           ; preds = %if.then236
  %wakeup.i = getelementptr inbounds %struct.platform_device, ptr %97, i32 0, i32 3, i32 12, i32 6
  %101 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %102, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.for.end_crit_edge, label %if.then240

device_may_wakeup.exit.for.end_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then240:                                       ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef 5, ptr noundef %flags.sink) #10
  call void @_set_bit(i32 noundef 6, ptr noundef %flags.sink) #10
  br label %for.end

for.end:                                          ; preds = %if.then240, %device_may_wakeup.exit.for.end_crit_edge, %if.then236.for.end_crit_edge, %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @intel_device_list_lock) #10
  %call250 = call i32 @btintel_load_ddc_config(ptr noundef %3, ptr noundef nonnull %fwname) #10
  %call252 = call ptr @__hci_cmd_sync(ptr noundef %3, i16 noundef zeroext 3075, i32 noundef 0, ptr noundef null, i32 noundef 200) #10
  %cmp.i = icmp ugt ptr %call252, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then254, label %if.end256

if.then254:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %103 = ptrtoint ptr %call252 to i32
  br label %cleanup

if.end256:                                        ; preds = %for.end
  call void @kfree_skb_reason(ptr noundef %call252, i32 noundef 0) #10
  br i1 %or.cond377, label %if.end256.if.end263_crit_edge, label %if.then258

if.end256.if.end263_crit_edge:                    ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end263

if.then258:                                       ; preds = %if.end256
  %call259 = call i32 @intel_set_baudrate(ptr noundef %hu, i32 noundef %oper_speed.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call259)
  %tobool260.not = icmp eq i32 %call259, 0
  br i1 %tobool260.not, label %if.then258.if.end263_crit_edge, label %if.then258.cleanup_crit_edge

if.then258.cleanup_crit_edge:                     ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then258.if.end263_crit_edge:                   ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end263

if.end263:                                        ; preds = %if.then258.if.end263_crit_edge, %if.end256.if.end263_crit_edge
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.77, ptr noundef %name117) #10
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end263, %if.then258.cleanup_crit_edge, %if.then254, %if.end207.cleanup_crit_edge, %if.end201.cleanup_crit_edge, %if.then196.cleanup_crit_edge, %done.cleanup_crit_edge, %sw.default141, %if.then116, %sw.default106, %if.then75, %if.end67.cleanup_crit_edge, %if.then62, %if.then54, %sw.default, %if.then39, %if.end31.cleanup_crit_edge, %intel_wait_booting.exit.thread387
  %retval.0 = phi i32 [ -22, %if.then39 ], [ -22, %sw.default ], [ 0, %if.then54 ], [ -19, %if.then62 ], [ -22, %if.then75 ], [ -22, %sw.default106 ], [ %call113, %if.then116 ], [ -22, %sw.default141 ], [ %103, %if.then254 ], [ 0, %if.end263 ], [ %call33, %if.end31.cleanup_crit_edge ], [ %call68, %if.end67.cleanup_crit_edge ], [ %err.0, %done.cleanup_crit_edge ], [ %call197, %if.then196.cleanup_crit_edge ], [ %call204, %if.end201.cleanup_crit_edge ], [ %call210, %if.end207.cleanup_crit_edge ], [ %call259, %if.then258.cleanup_crit_edge ], [ -4, %intel_wait_booting.exit.thread387 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %boot_param) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fwname) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #10
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %params) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %ver) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_set_baudrate(ptr noundef %hu, i32 noundef %speed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %hdev1 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %2 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev1, align 4
  %flags.i = getelementptr inbounds %struct.intel_data, ptr %1, i32 0, i32 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.37, i32 noundef 125) #10
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %6 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i, label %entry.if.end_crit_edge, label %wait_on_bit_timeout.exit.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

wait_on_bit_timeout.exit.i:                       ; preds = %entry
  %call3.i.i = tail call i32 @out_of_line_wait_on_bit_timeout(ptr noundef %flags.i, i32 noundef 4, ptr noundef nonnull @bit_wait_timeout, i32 noundef 1, i32 noundef 100) #10
  %7 = zext i32 %call3.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %call3.i.i, label %intel_wait_booting.exit [
    i32 -4, label %intel_wait_booting.exit.thread57
    i32 0, label %wait_on_bit_timeout.exit.i.if.end_crit_edge
  ]

wait_on_bit_timeout.exit.i.if.end_crit_edge:      ; preds = %wait_on_bit_timeout.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

intel_wait_booting.exit.thread57:                 ; preds = %wait_on_bit_timeout.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdev1, align 4
  %name4.i60 = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.78, ptr noundef %name4.i60) #10
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags.i) #10
  br label %cleanup

intel_wait_booting.exit:                          ; preds = %wait_on_bit_timeout.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hdev1, align 4
  %name4.i = getelementptr inbounds %struct.hci_dev, ptr %11, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.79, ptr noundef %name4.i) #10
  br label %if.end

if.end:                                           ; preds = %intel_wait_booting.exit, %wait_on_bit_timeout.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags.i) #10
  %name = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 2
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.80, ptr noundef %name, i32 noundef %speed) #10
  %12 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %speed, label %if.then6 [
    i32 9600, label %if.end.if.end9_crit_edge
    i32 19200, label %sw.bb1.i
    i32 38400, label %sw.bb2.i
    i32 57600, label %sw.bb3.i
    i32 115200, label %sw.bb4.i
    i32 230400, label %sw.bb5.i
    i32 460800, label %sw.bb6.i
    i32 921600, label %sw.bb7.i
    i32 1843200, label %sw.bb8.i
    i32 3250000, label %sw.bb9.i
    i32 2000000, label %sw.bb10.i
    i32 3000000, label %sw.bb11.i
  ]

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

sw.bb3.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

sw.bb4.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

sw.bb5.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

sw.bb6.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

sw.bb7.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

sw.bb8.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

sw.bb9.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

sw.bb10.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

sw.bb11.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.81, ptr noundef %name) #10
  br label %cleanup

if.end9:                                          ; preds = %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end.if.end9_crit_edge
  %retval.0.i55.ph = phi i8 [ 0, %if.end.if.end9_crit_edge ], [ 1, %sw.bb1.i ], [ 2, %sw.bb2.i ], [ 3, %sw.bb3.i ], [ 4, %sw.bb4.i ], [ 5, %sw.bb5.i ], [ 6, %sw.bb6.i ], [ 7, %sw.bb7.i ], [ 8, %sw.bb8.i ], [ 9, %sw.bb9.i ], [ 10, %sw.bb10.i ], [ 11, %sw.bb11.i ]
  %call11 = tail call ptr @__hci_cmd_sync(ptr noundef %3, i16 noundef zeroext -1019, i32 noundef 0, ptr noundef null, i32 noundef 200) #10
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end18

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %call11 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.82, ptr noundef %name, i32 noundef %13) #10
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  tail call void @kfree_skb_reason(ptr noundef %call11, i32 noundef 0) #10
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 12, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.83, ptr noundef %name) #10
  br label %cleanup

if.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %14 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %16 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %17, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 4) #10
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 3)
  store i24 457729, ptr %call.i, align 1
  %speed_cmd.sroa.4.0.call.i.sroa_idx = getelementptr inbounds i8, ptr %call.i, i32 3
  %19 = ptrtoint ptr %speed_cmd.sroa.4.0.call.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %retval.0.i55.ph, ptr %speed_cmd.sroa.4.0.call.i.sroa_idx, align 1
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %cb to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %cb, align 8
  tail call void @hci_uart_set_flow_control(ptr noundef %hu, i1 noundef zeroext true) #10
  %txq = getelementptr inbounds %struct.intel_data, ptr %1, i32 0, i32 1
  tail call void @skb_queue_tail(ptr noundef %txq, ptr noundef nonnull %call.i.i) #10
  %call28 = tail call i32 @hci_uart_tx_wakeup(ptr noundef %hu) #10
  tail call void @msleep(i32 noundef 100) #10
  tail call void @hci_uart_set_baudrate(ptr noundef %hu, i32 noundef %speed) #10
  tail call void @hci_uart_set_flow_control(ptr noundef %hu, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then21, %if.then13, %if.then6, %intel_wait_booting.exit.thread57
  %retval.0 = phi i32 [ -22, %if.then6 ], [ %13, %if.then13 ], [ 0, %if.end24 ], [ -12, %if.then21 ], [ -4, %intel_wait_booting.exit.thread57 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_recv(ptr noundef %hu, ptr noundef %data, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %5 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hdev, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call1 = tail call ptr @h4_recv_buf(ptr noundef %6, ptr noundef %8, ptr noundef %data, i32 noundef %count, ptr noundef nonnull @intel_recv_pkts, i32 noundef 4) #10
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call1, ptr %1, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %call1 to i32
  %11 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %12, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.84, ptr noundef %name, i32 noundef %10) #10
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then5 ], [ -49, %entry.cleanup_crit_edge ], [ %count, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_enqueue(ptr noundef %hu, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @intel_enqueue.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@intel_enqueue, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !209

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @intel_enqueue.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.90, ptr noundef %hu, ptr noundef %skb) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %hu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hu, align 4
  %dev = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %do.end.out_enqueue_crit_edge, label %if.end5

do.end.out_enqueue_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_enqueue

if.end5:                                          ; preds = %do.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @intel_device_list_lock, i32 noundef 0) #10
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end5
  %idev.0.in = phi ptr [ @intel_device_list, %if.end5 ], [ %idev.0, %for.body.for.cond_crit_edge ]
  %6 = ptrtoint ptr %idev.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %idev.0 = load ptr, ptr %idev.0.in, align 4
  %cmp.not = icmp eq ptr %idev.0, @intel_device_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond
  %7 = ptrtoint ptr %hu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hu, align 4
  %dev10 = getelementptr inbounds %struct.tty_struct, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev10, align 4
  %parent = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  %pdev = getelementptr inbounds %struct.intel_device, ptr %idev.0, i32 0, i32 1
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 4
  %parent12 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %parent12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent12, align 8
  %cmp13 = icmp eq ptr %12, %16
  br i1 %cmp13, label %if.then14, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then14:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %pdev.le = getelementptr inbounds %struct.intel_device, ptr %idev.0, i32 0, i32 1
  %dev11 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev11, i32 noundef 4) #10
  %17 = ptrtoint ptr %pdev.le to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev.le, align 4
  %call.i37 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3, i32 12, i32 22
  %19 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store volatile i64 %call.i37, ptr %last_busy.i, align 8
  %20 = ptrtoint ptr %pdev.le to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev.le, align 4
  %dev21 = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3
  %call.i38 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev21, i32 noundef 13) #10
  br label %for.end

for.end:                                          ; preds = %if.then14, %for.cond.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @intel_device_list_lock) #10
  br label %out_enqueue

out_enqueue:                                      ; preds = %for.end, %do.end.out_enqueue_crit_edge
  %txq = getelementptr inbounds %struct.intel_data, ptr %1, i32 0, i32 1
  tail call void @skb_queue_tail(ptr noundef %txq, ptr noundef %skb) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @intel_dequeue(ptr nocapture noundef readonly %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %txq = getelementptr inbounds %struct.intel_data, ptr %1, i32 0, i32 1
  %call = tail call ptr @skb_dequeue(ptr noundef %txq) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.intel_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not, label %if.end.if.end12_crit_edge, label %land.lhs.true

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cb, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %if.then4, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then4:                                         ; preds = %land.lhs.true
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 508, i16 %9)
  %cmp7 = icmp eq i16 %9, 508
  br i1 %cmp7, label %if.then9, label %if.then4.if.end12_crit_edge

if.then4.if.end12_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then9:                                         ; preds = %if.then4
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %10 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hdev, align 4
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 14, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then9.if.end12_crit_edge, label %if.end.i

if.then9.if.end12_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %12 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %15, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 2) #10
  %16 = ptrtoint ptr %call1.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 14, ptr %call1.i, align 1
  %plen.i = getelementptr inbounds %struct.hci_event_hdr, ptr %call1.i, i32 0, i32 1
  %17 = ptrtoint ptr %plen.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 4, ptr %plen.i, align 1
  %call3.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3) #10
  %18 = ptrtoint ptr %call3.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %call3.i, align 1
  %opcode4.i = getelementptr inbounds %struct.hci_ev_cmd_complete, ptr %call3.i, i32 0, i32 1
  %19 = ptrtoint ptr %opcode4.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 508, ptr %opcode4.i, align 1
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 1) #10
  %20 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %call.i.i, align 1
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 4, ptr %cb.i, align 8
  %call5.i = tail call i32 @hci_recv_frame(ptr noundef %11, ptr noundef nonnull %call.i.i.i) #10
  br label %if.end12

if.end12:                                         ; preds = %if.end.i, %if.then9.if.end12_crit_edge, %if.then4.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %call13 = tail call ptr @skb_push(ptr noundef nonnull %call, i32 noundef 1) #10
  %cb14 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3
  %22 = ptrtoint ptr %cb14 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %cb14, align 8
  %24 = ptrtoint ptr %call13 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %call13, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hci_uart_has_flow_control(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @intel_busy_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hu = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %hu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hu, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @intel_device_list_lock, i32 noundef 0) #10
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %idev.0.in = phi ptr [ @intel_device_list, %if.end ], [ %idev.0, %for.body.for.cond_crit_edge ]
  %6 = ptrtoint ptr %idev.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %idev.0 = load ptr, ptr %idev.0.in, align 4
  %cmp.not = icmp eq ptr %idev.0, @intel_device_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond
  %7 = ptrtoint ptr %hu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hu, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %dev6 = getelementptr inbounds %struct.tty_struct, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev6, align 4
  %parent = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent, align 8
  %pdev = getelementptr inbounds %struct.intel_device, ptr %idev.0, i32 0, i32 1
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 4
  %parent8 = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %parent8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent8, align 8
  %cmp9 = icmp eq ptr %14, %18
  br i1 %cmp9, label %if.then10, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %pdev.le = getelementptr inbounds %struct.intel_device, ptr %idev.0, i32 0, i32 1
  %dev7 = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev7, i32 noundef 5) #10
  %19 = ptrtoint ptr %pdev.le to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev.le, align 4
  %call.i30 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3, i32 12, i32 22
  %21 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store volatile i64 %call.i30, ptr %last_busy.i, align 8
  %22 = ptrtoint ptr %pdev.le to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev.le, align 4
  %dev16 = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3
  %call.i31 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev16, i32 noundef 13) #10
  br label %for.end

for.end:                                          ; preds = %if.then10, %for.cond.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @intel_device_list_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @intel_set_power(ptr noundef %hu, i1 noundef zeroext %powered) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hu, align 4
  %dev = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @intel_device_list_lock, i32 noundef 0) #10
  %idev.0112 = load ptr, ptr @intel_device_list, align 4
  %cmp.not113 = icmp eq ptr %idev.0112, @intel_device_list
  br i1 %cmp.not113, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %conv = zext i1 %powered to i32
  %spec.select = select i1 %powered, ptr %hu, ptr null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %idev.0115 = phi ptr [ %idev.0112, %for.body.lr.ph ], [ %idev.0, %for.inc.for.body_crit_edge ]
  %err.0114 = phi i32 [ -19, %for.body.lr.ph ], [ %err.1, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %hu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hu, align 4
  %dev2 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 4
  %parent = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %pdev = getelementptr inbounds %struct.intel_device, ptr %idev.0115, i32 0, i32 1
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %parent4 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %parent4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent4, align 8
  %cmp5.not = icmp eq ptr %9, %13
  br i1 %cmp5.not, label %if.end7, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end7:                                          ; preds = %for.body
  %reset = getelementptr inbounds %struct.intel_device, ptr %idev.0115, i32 0, i32 2
  %14 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reset, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %if.end7.for.end_crit_edge, label %if.end10

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end10:                                         ; preds = %if.end7
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end10.dev_name.exit_crit_edge

if.end10.dev_name.exit_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev3, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end10.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %19, %if.end.i ], [ %17, %if.end10.dev_name.exit_crit_edge ]
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.47, ptr noundef %hu, ptr noundef %retval.0.i, i32 noundef %conv) #10
  %20 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value(ptr noundef %21, i32 noundef %conv) #10
  %hu_lock = getelementptr inbounds %struct.intel_device, ptr %idev.0115, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %hu_lock, i32 noundef 0) #10
  %hu19 = getelementptr inbounds %struct.intel_device, ptr %idev.0115, i32 0, i32 3
  %22 = ptrtoint ptr %hu19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %spec.select, ptr %hu19, align 4
  tail call void @mutex_unlock(ptr noundef %hu_lock) #10
  %irq = getelementptr inbounds %struct.intel_device, ptr %idev.0115, i32 0, i32 5
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp21 = icmp slt i32 %24, 0
  br i1 %cmp21, label %dev_name.exit.for.end_crit_edge, label %if.end24

dev_name.exit.for.end_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end24:                                         ; preds = %dev_name.exit
  %25 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev, align 4
  br i1 %powered, label %land.lhs.true, label %land.lhs.true53.critedge

land.lhs.true:                                    ; preds = %if.end24
  %can_wakeup.i = getelementptr inbounds %struct.platform_device, ptr %26, i32 0, i32 3, i32 12, i32 1
  %27 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.then31, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then31:                                        ; preds = %land.lhs.true
  %dev28 = getelementptr inbounds %struct.platform_device, ptr %26, i32 0, i32 3
  %call35 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev28, i32 noundef %24, ptr noundef null, ptr noundef nonnull @intel_irq, i32 noundef 8192, ptr noundef nonnull @.str.48, ptr noundef %idev.0115) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end39, label %if.then37

if.then37:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  %irq.le = getelementptr inbounds %struct.intel_device, ptr %idev.0115, i32 0, i32 5
  %28 = ptrtoint ptr %irq.le to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq.le, align 4
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.49, ptr noundef %hu, i32 noundef %29) #10
  br label %for.end

if.end39:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev, align 4
  %dev41 = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3
  %call42 = tail call i32 @device_wakeup_enable(ptr noundef %dev41) #10
  %32 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev, align 4
  %dev44 = getelementptr inbounds %struct.platform_device, ptr %33, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev44, i32 noundef 0) #10
  %34 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev, align 4
  %dev47 = getelementptr inbounds %struct.platform_device, ptr %35, i32 0, i32 3
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev47, i1 noundef zeroext true) #10
  %36 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev, align 4
  %dev49 = getelementptr inbounds %struct.platform_device, ptr %37, i32 0, i32 3
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev49, i32 noundef 1000) #10
  %38 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev, align 4
  %dev51 = getelementptr inbounds %struct.platform_device, ptr %39, i32 0, i32 3
  tail call void @pm_runtime_enable(ptr noundef %dev51) #10
  br label %for.inc

land.lhs.true53.critedge:                         ; preds = %if.end24
  %dev55 = getelementptr inbounds %struct.platform_device, ptr %26, i32 0, i32 3
  %can_wakeup.i109 = getelementptr inbounds %struct.platform_device, ptr %26, i32 0, i32 3, i32 12, i32 1
  %40 = ptrtoint ptr %can_wakeup.i109 to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load.i110 = load i16, ptr %can_wakeup.i109, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i110)
  %tobool.not.i111 = icmp sgt i16 %bf.load.i110, -1
  br i1 %tobool.not.i111, label %land.lhs.true53.critedge.for.inc_crit_edge, label %device_may_wakeup.exit

land.lhs.true53.critedge.for.inc_crit_edge:       ; preds = %land.lhs.true53.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

device_may_wakeup.exit:                           ; preds = %land.lhs.true53.critedge
  %wakeup.i = getelementptr inbounds %struct.platform_device, ptr %26, i32 0, i32 3, i32 12, i32 6
  %41 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %42, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.for.inc_crit_edge, label %if.then58

device_may_wakeup.exit.for.inc_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then58:                                        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @devm_free_irq(ptr noundef %dev55, i32 noundef %24, ptr noundef %idev.0115) #10
  %43 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev, align 4
  %dev63 = getelementptr inbounds %struct.platform_device, ptr %44, i32 0, i32 3
  %call64 = tail call i32 @device_wakeup_disable(ptr noundef %dev63) #10
  %45 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdev, align 4
  %dev66 = getelementptr inbounds %struct.platform_device, ptr %46, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev66, i1 noundef zeroext true) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then58, %device_may_wakeup.exit.for.inc_crit_edge, %land.lhs.true53.critedge.for.inc_crit_edge, %if.end39, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %err.1 = phi i32 [ %err.0114, %for.body.for.inc_crit_edge ], [ 0, %if.end39 ], [ %err.0114, %if.then58 ], [ %err.0114, %device_may_wakeup.exit.for.inc_crit_edge ], [ %err.0114, %land.lhs.true.for.inc_crit_edge ], [ %err.0114, %land.lhs.true53.critedge.for.inc_crit_edge ]
  %47 = ptrtoint ptr %idev.0115 to i32
  call void @__asan_load4_noabort(i32 %47)
  %idev.0 = load ptr, ptr %idev.0115, align 4
  %cmp.not = icmp eq ptr %idev.0, @intel_device_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then37, %dev_name.exit.for.end_crit_edge, %if.end7.for.end_crit_edge, %if.end.for.end_crit_edge
  %err.2 = phi i32 [ %call35, %if.then37 ], [ -19, %if.end.for.end_crit_edge ], [ %err.1, %for.inc.for.end_crit_edge ], [ %err.0114, %dev_name.exit.for.end_crit_edge ], [ -524, %if.end7.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @intel_device_list_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %for.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_info(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.intel_device, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.50) #13
  %hu_lock = getelementptr inbounds %struct.intel_device, ptr %dev_id, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %hu_lock, i32 noundef 0) #10
  %hu = getelementptr inbounds %struct.intel_device, ptr %dev_id, i32 0, i32 3
  %2 = ptrtoint ptr %hu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hu, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @intel_lpm_host_wake(ptr noundef nonnull %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %hu_lock) #10
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev4, i32 noundef 5) #10
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %call.i18 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 12, i32 22
  %8 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store volatile i64 %call.i18, ptr %last_busy.i, align 8
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 4
  %dev9 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  %call.i19 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev9, i32 noundef 13) #10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @intel_lpm_host_wake(ptr noundef %hu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void @hci_uart_set_flow_control(ptr noundef %hu, i1 noundef zeroext false) #10
  %flags = getelementptr inbounds %struct.intel_data, ptr %1, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %flags) #10
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 10, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %2 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.32, ptr noundef %name) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 2) #10
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 768, ptr %call.i, align 1
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %cb to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -15, ptr %cb, align 8
  %txq = getelementptr inbounds %struct.intel_data, ptr %1, i32 0, i32 1
  tail call void @skb_queue_head(ptr noundef %txq, ptr noundef nonnull %call.i.i) #10
  %call3 = tail call i32 @hci_uart_tx_wakeup(ptr noundef %hu) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @intel_lpm_host_wake.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@intel_lpm_host_wake, %if.then8)) #10
          to label %cleanup [label %if.then8], !srcloc !209

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %hdev9 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %10 = ptrtoint ptr %hdev9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hdev9, align 4
  %name10 = getelementptr inbounds %struct.hci_dev, ptr %11, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @intel_lpm_host_wake.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.53, ptr noundef %name10) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btintel_set_diag(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btintel_set_bdaddr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @intel_wait_booting(ptr nocapture noundef readonly %hu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %flags = getelementptr inbounds %struct.intel_data, ptr %1, i32 0, i32 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.37, i32 noundef 125) #10
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %wait_on_bit_timeout.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

wait_on_bit_timeout.exit:                         ; preds = %entry
  %call3.i = tail call i32 @out_of_line_wait_on_bit_timeout(ptr noundef %flags, i32 noundef 4, ptr noundef nonnull @bit_wait_timeout, i32 noundef 1, i32 noundef 100) #10
  %5 = zext i32 %call3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %call3.i, label %if.then2 [
    i32 -4, label %wait_on_bit_timeout.exit.cleanup.sink.split_crit_edge
    i32 0, label %wait_on_bit_timeout.exit.cleanup_crit_edge
  ]

wait_on_bit_timeout.exit.cleanup_crit_edge:       ; preds = %wait_on_bit_timeout.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

wait_on_bit_timeout.exit.cleanup.sink.split_crit_edge: ; preds = %wait_on_bit_timeout.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then2:                                         ; preds = %wait_on_bit_timeout.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then2, %wait_on_bit_timeout.exit.cleanup.sink.split_crit_edge
  %.str.79.sink = phi ptr [ @.str.79, %if.then2 ], [ @.str.78, %wait_on_bit_timeout.exit.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -110, %if.then2 ], [ %call3.i, %wait_on_bit_timeout.exit.cleanup.sink.split_crit_edge ]
  %hdev3 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %6 = ptrtoint ptr %hdev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdev3, align 4
  %name4 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull %.str.79.sink, ptr noundef %name4) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %wait_on_bit_timeout.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3.i, %wait_on_bit_timeout.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btintel_read_version(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btintel_version_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btintel_check_bdaddr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btintel_read_boot_params(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btintel_download_firmware(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btintel_send_intel_reset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btintel_load_ddc_config(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__hci_cmd_sync(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_uart_set_baudrate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @h4_recv_buf(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_recv_frame(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_recv_event(ptr noundef %hdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %flags = getelementptr inbounds %struct.intel_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp eq i32 %8, 0
  br i1 %tobool4.not, label %land.lhs.true.recv_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.recv_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %recv

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %12, label %if.end.recv_crit_edge [
    i32 7, label %land.lhs.true5
    i32 9, label %land.lhs.true39
  ]

if.end.recv_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %recv

land.lhs.true5:                                   ; preds = %if.end
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %cmp6 = icmp eq i8 %15, -1
  br i1 %cmp6, label %land.lhs.true8, label %land.lhs.true5.recv_crit_edge

land.lhs.true5.recv_crit_edge:                    ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %recv

land.lhs.true8:                                   ; preds = %land.lhs.true5
  %plen = getelementptr inbounds %struct.hci_event_hdr, ptr %10, i32 0, i32 1
  %16 = ptrtoint ptr %plen to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %plen, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %17)
  %cmp10 = icmp eq i8 %17, 5
  br i1 %cmp10, label %land.lhs.true12, label %land.lhs.true8.recv_crit_edge

land.lhs.true8.recv_crit_edge:                    ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %recv

land.lhs.true12:                                  ; preds = %land.lhs.true8
  %arrayidx = getelementptr i8, ptr %10, i32 2
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %19)
  %cmp15 = icmp eq i8 %19, 6
  br i1 %cmp15, label %if.then17, label %land.lhs.true12.recv_crit_edge

land.lhs.true12.recv_crit_edge:                   ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %recv

if.then17:                                        ; preds = %land.lhs.true12
  %arrayidx19 = getelementptr i8, ptr %10, i32 3
  %20 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp21.not = icmp eq i8 %21, 0
  br i1 %cmp21.not, label %if.then17.if.end25_crit_edge, label %if.then23

if.then17.if.end25_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then23:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #10
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.then17.if.end25_crit_edge
  %call27 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end25.recv_crit_edge, label %land.lhs.true29

if.end25.recv_crit_edge:                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %recv

land.lhs.true29:                                  ; preds = %if.end25
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags, align 4
  %24 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool32.not = icmp eq i32 %24, 0
  br i1 %tobool32.not, label %land.lhs.true29.recv_crit_edge, label %land.lhs.true29.recv.sink.split_crit_edge

land.lhs.true29.recv.sink.split_crit_edge:        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #12
  br label %recv.sink.split

land.lhs.true29.recv_crit_edge:                   ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #12
  br label %recv

land.lhs.true39:                                  ; preds = %if.end
  %25 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %26)
  %cmp42 = icmp eq i8 %26, -1
  br i1 %cmp42, label %land.lhs.true44, label %land.lhs.true39.recv_crit_edge

land.lhs.true39.recv_crit_edge:                   ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #12
  br label %recv

land.lhs.true44:                                  ; preds = %land.lhs.true39
  %plen45 = getelementptr inbounds %struct.hci_event_hdr, ptr %10, i32 0, i32 1
  %27 = ptrtoint ptr %plen45 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %plen45, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %28)
  %cmp47 = icmp eq i8 %28, 7
  br i1 %cmp47, label %land.lhs.true49, label %land.lhs.true44.recv_crit_edge

land.lhs.true44.recv_crit_edge:                   ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #12
  br label %recv

land.lhs.true49:                                  ; preds = %land.lhs.true44
  %arrayidx51 = getelementptr i8, ptr %10, i32 2
  %29 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx51, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %30)
  %cmp53 = icmp eq i8 %30, 2
  br i1 %cmp53, label %if.then55, label %land.lhs.true49.recv_crit_edge

land.lhs.true49.recv_crit_edge:                   ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #12
  br label %recv

if.then55:                                        ; preds = %land.lhs.true49
  %call57 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then55.recv_crit_edge, label %if.then55.recv.sink.split_crit_edge

if.then55.recv.sink.split_crit_edge:              ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  br label %recv.sink.split

if.then55.recv_crit_edge:                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  br label %recv

recv.sink.split:                                  ; preds = %if.then55.recv.sink.split_crit_edge, %land.lhs.true29.recv.sink.split_crit_edge
  %.sink = phi i32 [ 1, %land.lhs.true29.recv.sink.split_crit_edge ], [ 4, %if.then55.recv.sink.split_crit_edge ]
  tail call void @wake_up_bit(ptr noundef %flags, i32 noundef %.sink) #10
  br label %recv

recv:                                             ; preds = %recv.sink.split, %if.then55.recv_crit_edge, %land.lhs.true49.recv_crit_edge, %land.lhs.true44.recv_crit_edge, %land.lhs.true39.recv_crit_edge, %land.lhs.true29.recv_crit_edge, %if.end25.recv_crit_edge, %land.lhs.true12.recv_crit_edge, %land.lhs.true8.recv_crit_edge, %land.lhs.true5.recv_crit_edge, %if.end.recv_crit_edge, %land.lhs.true.recv_crit_edge
  %call64 = tail call i32 @hci_recv_frame(ptr noundef %hdev, ptr noundef %skb) #10
  ret i32 %call64
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_recv_lpm(ptr noundef %hdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %1, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.102)
  switch i8 %7, label %sw.default [
    i8 0, label %sw.bb
    i8 2, label %sw.bb6
    i8 3, label %sw.bb12
  ]

sw.bb:                                            ; preds = %entry
  %dlen = getelementptr inbounds %struct.hci_lpm_pkt, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %dlen to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dlen, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp = icmp eq i8 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %hdev3 = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %hdev3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hdev3, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %12, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.85, ptr noundef %name) #10
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  %data4 = getelementptr inbounds %struct.hci_lpm_pkt, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %data4 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %data4, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @intel_recv_lpm_notify.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@intel_recv_lpm, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !209

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv5 = zext i8 %14 to i32
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @intel_recv_lpm_notify.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.88, ptr noundef %name.i, i32 noundef %conv5) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool4.not.i = icmp eq i8 %14, 0
  %flags7.i = getelementptr inbounds %struct.intel_data, ptr %5, i32 0, i32 4
  br i1 %tobool4.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags7.i) #10
  %busy_work.i = getelementptr inbounds %struct.intel_data, ptr %5, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %15 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %busy_work.i) #10
  br label %sw.epilog

if.else.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flags7.i) #10
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.intel_data, ptr %5, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flags) #10
  %call8 = tail call i32 @_test_and_clear_bit(i32 noundef 8, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %sw.bb6.sw.epilog_crit_edge, label %if.then9

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then9:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @wake_up_bit(ptr noundef %flags, i32 noundef 8) #10
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %flags13 = getelementptr inbounds %struct.intel_data, ptr %5, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %flags13) #10
  %call15 = tail call i32 @_test_and_clear_bit(i32 noundef 8, ptr noundef %flags13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %sw.bb12.sw.epilog_crit_edge, label %if.then17

sw.bb12.sw.epilog_crit_edge:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then17:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @wake_up_bit(ptr noundef %flags13, i32 noundef 8) #10
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %7 to i32
  %name20 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.86, ptr noundef %name20, i32 noundef %conv) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then17, %sw.bb12.sw.epilog_crit_edge, %if.then9, %sw.bb6.sw.epilog_crit_edge, %if.else.i, %if.then5.i, %if.then
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !17, !18, !19, !20, !21, !23, !24, !25, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !44, !46, !48, !50, !52, !53, !54, !56, !58, !59, !60, !61, !63, !65, !67, !68, !69, !71, !73, !75, !76, !78, !80, !82, !84, !85, !86, !88, !90, !91, !93, !95, !97, !98, !99, !101, !102, !104, !105, !107, !109, !111, !113, !114, !115, !116, !118, !120, !121, !122, !124, !125, !127, !128, !130, !131, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !195, !196, !198, !199}
!llvm.module.flags = !{!200, !201, !202, !203, !204, !205, !206, !207}
!llvm.ident = !{!208}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/bluetooth/hci_intel.c", i32 1212, i32 11}
!2 = !{ptr @intel_driver, !3, !"intel_driver", i1 false, i1 false}
!3 = !{!"../drivers/bluetooth/hci_intel.c", i32 1208, i32 31}
!4 = !{ptr @intel_probe.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/bluetooth/hci_intel.c", i32 1142, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/bluetooth/hci_intel.c", i32 1148, i32 3}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @intel_probe.__UNIQUE_ID_ddebug487, !8, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/bluetooth/hci_intel.c", i32 1150, i32 43}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/bluetooth/hci_intel.c", i32 1152, i32 3}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @intel_probe._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @intel_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/bluetooth/hci_intel.c", i32 1160, i32 3}
!23 = !{ptr @intel_probe._entry.10, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @intel_probe._entry_ptr.12, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/bluetooth/hci_intel.c", i32 1162, i32 42}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/bluetooth/hci_intel.c", i32 1164, i32 4}
!29 = !{ptr @intel_probe._entry.14, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @intel_probe._entry_ptr.16, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/bluetooth/hci_intel.c", i32 1170, i32 4}
!33 = !{ptr @intel_probe._entry.17, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @intel_probe._entry_ptr.19, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/bluetooth/hci_intel.c", i32 1187, i32 2}
!37 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @intel_probe._entry.20, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @intel_probe._entry_ptr.23, !36, !"_entry_ptr", i1 false, i1 false}
!40 = distinct !{null, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/bluetooth/hci_intel.c", i32 1128, i32 4}
!42 = distinct !{null, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/bluetooth/hci_intel.c", i32 1129, i32 4}
!44 = distinct !{null, !45, !"acpi_hci_intel_gpios", i1 false, i1 false}
!45 = !{!"../drivers/bluetooth/hci_intel.c", i32 1127, i32 39}
!46 = distinct !{null, !47, !"reset_gpios", i1 false, i1 false}
!47 = !{!"../drivers/bluetooth/hci_intel.c", i32 1124, i32 38}
!48 = distinct !{null, !49, !"host_wake_gpios", i1 false, i1 false}
!49 = !{!"../drivers/bluetooth/hci_intel.c", i32 1125, i32 38}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/bluetooth/hci_intel.c", i32 65, i32 8}
!52 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @intel_device_list_lock, !51, !"intel_device_list_lock", i1 false, i1 false}
!54 = !{ptr @intel_device_list, !55, !"intel_device_list", i1 false, i1 false}
!55 = !{!"../drivers/bluetooth/hci_intel.c", i32 64, i32 8}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/bluetooth/hci_intel.c", i32 1203, i32 2}
!58 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @intel_remove._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @intel_remove._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @intel_pm_ops, !62, !"intel_pm_ops", i1 false, i1 false}
!62 = !{!"../drivers/bluetooth/hci_intel.c", i32 1119, i32 32}
!63 = distinct !{null, !64, !"suspend", i1 false, i1 false}
!64 = !{!"../drivers/bluetooth/hci_intel.c", i32 154, i32 18}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/bluetooth/hci_intel.c", i32 165, i32 2}
!67 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @intel_lpm_suspend.__UNIQUE_ID_ddebug476, !66, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/bluetooth/hci_intel.c", i32 169, i32 3}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/bluetooth/hci_intel.c", i32 188, i32 3}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/bluetooth/hci_intel.c", i32 192, i32 2}
!75 = !{ptr @intel_lpm_suspend.__UNIQUE_ID_ddebug477, !74, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/bluetooth/hci_intel.c", i32 140, i32 3}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/bluetooth/hci_intel.c", i32 145, i32 3}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../include/linux/wait_bit.h", i32 125, i32 2}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/bluetooth/hci_intel.c", i32 208, i32 2}
!84 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @intel_lpm_resume.__UNIQUE_ID_ddebug478, !83, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/bluetooth/hci_intel.c", i32 232, i32 3}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/bluetooth/hci_intel.c", i32 236, i32 2}
!90 = !{ptr @intel_lpm_resume.__UNIQUE_ID_ddebug479, !89, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/bluetooth/hci_intel.c", i32 1048, i32 11}
!93 = !{ptr @intel_proto, !94, !"intel_proto", i1 false, i1 false}
!94 = !{!"../drivers/bluetooth/hci_intel.c", i32 1046, i32 36}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/bluetooth/hci_intel.c", i32 386, i32 2}
!97 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @intel_open.__UNIQUE_ID_ddebug481, !96, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!99 = !{ptr @intel_open.__key, !100, !"__key", i1 false, i1 false}
!100 = !{!"../drivers/bluetooth/hci_intel.c", i32 396, i32 2}
!101 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @skb_queue_head_init.__key, !103, !"__key", i1 false, i1 false}
!103 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!104 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/bluetooth/hci_intel.c", i32 311, i32 3}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/bluetooth/hci_intel.c", i32 333, i32 8}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/bluetooth/hci_intel.c", i32 335, i32 5}
!111 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/bluetooth/hci_intel.c", i32 274, i32 2}
!113 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @intel_irq._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @intel_irq._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = distinct !{null, !117, !"lpm_resume_ack", i1 false, i1 false}
!117 = !{!"../drivers/bluetooth/hci_intel.c", i32 244, i32 18}
!118 = !{ptr @.str.52, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/bluetooth/hci_intel.c", i32 265, i32 2}
!120 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @intel_lpm_host_wake.__UNIQUE_ID_ddebug480, !119, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!122 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/bluetooth/hci_intel.c", i32 412, i32 2}
!124 = !{ptr @intel_close.__UNIQUE_ID_ddebug482, !123, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!125 = !{ptr @.str.55, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/bluetooth/hci_intel.c", i32 430, i32 2}
!127 = !{ptr @intel_flush.__UNIQUE_ID_ddebug483, !126, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!128 = !{ptr @.str.56, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/bluetooth/hci_intel.c", i32 540, i32 2}
!130 = !{ptr @.str.57, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @intel_setup.__UNIQUE_ID_ddebug484, !129, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!132 = !{ptr @.str.58, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/bluetooth/hci_intel.c", i32 589, i32 3}
!134 = !{ptr @.str.59, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/bluetooth/hci_intel.c", i32 606, i32 3}
!136 = !{ptr @.str.60, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/bluetooth/hci_intel.c", i32 636, i32 3}
!138 = !{ptr @.str.61, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/bluetooth/hci_intel.c", i32 653, i32 3}
!140 = !{ptr @.str.62, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/bluetooth/hci_intel.c", i32 662, i32 3}
!142 = !{ptr @.str.63, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/bluetooth/hci_intel.c", i32 689, i32 36}
!144 = !{ptr @.str.64, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/bluetooth/hci_intel.c", i32 693, i32 36}
!146 = !{ptr @.str.65, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/bluetooth/hci_intel.c", i32 704, i32 3}
!148 = !{ptr @.str.66, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/bluetooth/hci_intel.c", i32 709, i32 2}
!150 = !{ptr @.str.67, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/bluetooth/hci_intel.c", i32 715, i32 36}
!152 = !{ptr @.str.68, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/bluetooth/hci_intel.c", i32 719, i32 36}
!154 = !{ptr @.str.69, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/bluetooth/hci_intel.c", i32 729, i32 3}
!156 = !{ptr @.str.70, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/bluetooth/hci_intel.c", i32 744, i32 2}
!158 = !{ptr @.str.71, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/bluetooth/hci_intel.c", i32 761, i32 3}
!160 = !{ptr @.str.72, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/bluetooth/hci_intel.c", i32 767, i32 3}
!162 = !{ptr @.str.73, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/bluetooth/hci_intel.c", i32 773, i32 3}
!164 = !{ptr @.str.74, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/bluetooth/hci_intel.c", i32 782, i32 2}
!166 = !{ptr @.str.75, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/bluetooth/hci_intel.c", i32 815, i32 2}
!168 = !{ptr @.str.76, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/bluetooth/hci_intel.c", i32 827, i32 2}
!170 = !{ptr @.str.77, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/bluetooth/hci_intel.c", i32 860, i32 2}
!172 = !{ptr @.str.78, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/bluetooth/hci_intel.c", i32 117, i32 3}
!174 = !{ptr @.str.79, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/bluetooth/hci_intel.c", i32 122, i32 3}
!176 = !{ptr @.str.80, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/bluetooth/hci_intel.c", i32 481, i32 2}
!178 = !{ptr @.str.81, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/bluetooth/hci_intel.c", i32 485, i32 3}
!180 = !{ptr @.str.82, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/bluetooth/hci_intel.c", i32 494, i32 3}
!182 = !{ptr @.str.83, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/bluetooth/hci_intel.c", i32 502, i32 3}
!184 = !{ptr @.str.84, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/bluetooth/hci_intel.c", i32 980, i32 3}
!186 = !{ptr @intel_recv_pkts, !187, !"intel_recv_pkts", i1 false, i1 false}
!187 = !{!"../drivers/bluetooth/hci_intel.c", i32 961, i32 33}
!188 = !{ptr @.str.85, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/bluetooth/hci_intel.c", i32 929, i32 4}
!190 = !{ptr @.str.86, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/bluetooth/hci_intel.c", i32 945, i32 3}
!192 = !{ptr @.str.87, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/bluetooth/hci_intel.c", i32 910, i32 2}
!194 = !{ptr @.str.88, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @intel_recv_lpm_notify.__UNIQUE_ID_ddebug485, !193, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!196 = !{ptr @.str.89, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/bluetooth/hci_intel.c", i32 993, i32 2}
!198 = !{ptr @.str.90, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @intel_enqueue.__UNIQUE_ID_ddebug486, !197, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!200 = !{i32 1, !"wchar_size", i32 2}
!201 = !{i32 1, !"min_enum_size", i32 4}
!202 = !{i32 8, !"branch-target-enforcement", i32 0}
!203 = !{i32 8, !"sign-return-address", i32 0}
!204 = !{i32 8, !"sign-return-address-all", i32 0}
!205 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!206 = !{i32 7, !"uwtable", i32 1}
!207 = !{i32 7, !"frame-pointer", i32 2}
!208 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!209 = !{i64 2148719814, i64 2148719819, i64 2148719832, i64 2148719876, i64 2148719910, i64 2148719931}
!210 = !{!"auto-init"}
