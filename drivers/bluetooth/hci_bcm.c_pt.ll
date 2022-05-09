; ModuleID = '/llk/IR_all_yes/drivers/bluetooth/hci_bcm.c_pt.bc'
source_filename = "../drivers/bluetooth/hci_bcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.127 }
%union.anon.127 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.serdev_device_driver = type { %struct.device_driver, ptr, ptr }
%struct.hci_uart_proto = type { i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.bcm_device_data = type { i8, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bcm_set_sleep_mode = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
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
%struct.bcm_device = type { %struct.hci_uart, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x %struct.regulator_bulk_data], i8, i32, i32, i32, i8, i8, ptr, i8, i8, i8, [5 x i8] }
%struct.hci_uart = type { ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.work_struct, ptr, %struct.percpu_rw_semaphore, ptr, ptr, i32, i32, i32, i8, i8 }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rcuwait = type { ptr }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
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
%struct.bcm_data = type { ptr, %struct.sk_buff_head, ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.92, %struct.anon.93, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.92 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.93 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.bcm_set_pcm_int_params = type { i8, i8, i8, i8, i8 }
%struct.bcm_update_uart_baud_rate = type <{ i16, i32 }>
%struct.bcm_write_uart_clock_setting = type { i8 }
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

@__param_str_irq_polarity = internal constant [22 x i8] c"hci_uart.irq_polarity\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@irq_polarity = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_irq_polarity = internal constant %struct.kernel_param { ptr @__param_str_irq_polarity, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.127 { ptr @irq_polarity } }, section "__param", align 4
@__UNIQUE_ID_irq_polaritytype478 = internal constant [35 x i8] c"hci_uart.parmtype=irq_polarity:int\00", section ".modinfo", align 1
@__UNIQUE_ID_irq_polarity479 = internal constant [69 x i8] c"hci_uart.parm=irq_polarity:IRQ polarity 0: active-high 1: active-low\00", section ".modinfo", align 1
@bcm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm_probe, ptr @bcm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@bcm_serdev_driver = internal global { %struct.serdev_device_driver, [44 x i8] } { %struct.serdev_device_driver { %struct.device_driver { ptr @.str.42, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm_bluetooth_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_pm_ops, ptr null, ptr null }, ptr @bcm_serdev_probe, ptr @bcm_serdev_remove }, [44 x i8] zeroinitializer }, align 32
@bcm_proto = internal constant { %struct.hci_uart_proto, [44 x i8] } { %struct.hci_uart_proto { i32 7, ptr @.str.50, i32 15, i32 115200, i32 0, ptr @bcm_open, ptr @bcm_close, ptr @bcm_flush, ptr @bcm_setup, ptr @bcm_set_baudrate, ptr @bcm_recv, ptr @bcm_enqueue, ptr @bcm_dequeue }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hci_bcm\00", [24 x i8] zeroinitializer }, align 32
@bcm_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @bcm_suspend, ptr @bcm_resume, ptr @bcm_suspend, ptr @bcm_resume, ptr @bcm_suspend, ptr @bcm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_suspend_device, ptr @bcm_resume_device, ptr null }, [36 x i8] zeroinitializer }, align 32
@bcm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1213, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s device registered.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bcm_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/bluetooth/hci_bcm.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm_probe._entry_ptr = internal global ptr @bcm_probe._entry, section ".printk_index", align 4
@bcm_device_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.24, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @bcm_device_lock, i64 52), ptr getelementptr (i8, ptr @bcm_device_lock, i64 52) }, ptr @bcm_device_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.25, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@bcm_device_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @bcm_device_list, ptr @bcm_device_list }, [24 x i8] zeroinitializer }, align 32
@bcm_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1222, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to power down\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@bcm_probe._entry_ptr.9 = internal global ptr @bcm_probe._entry.6, section ".printk_index", align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lpo\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"device-wakeup\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"shutdown\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbat\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddio\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"host-wakeup\00", [20 x i8] zeroinitializer }, align 32
@bcm_get_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 1101, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s: Has a broken IRQ config, disabling IRQ support / runtime-pm\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bcm_get_resources\00", [46 x i8] zeroinitializer }, align 32
@bcm_get_resources._entry_ptr = internal global ptr @bcm_get_resources._entry, section ".printk_index", align 4
@bcm_get_resources.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.18, ptr @.str.3, ptr @.str.20, i8 1, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hci_uart\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"BCM irq: %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"txco\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"extclk\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bcm_device_lock.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bcm_device_lock\00", [16 x i8] zeroinitializer }, align 32
@bcm_gpio_set_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 253, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Could not set LPO clock rate\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bcm_gpio_set_power\00", [45 x i8] zeroinitializer }, align 32
@bcm_gpio_set_power._entry_ptr = internal global ptr @bcm_gpio_set_power._entry, section ".printk_index", align 4
@bcm_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 1235, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s device unregistered.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bcm_remove\00", [21 x i8] zeroinitializer }, align 32
@bcm_remove._entry_ptr = internal global ptr @bcm_remove._entry, section ".printk_index", align 4
@bcm_suspend.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.30, ptr @.str.3, ptr @.str.31, i8 0, i8 -55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bcm_suspend\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: suspend: is_suspended %d\0A\00", [34 x i8] zeroinitializer }, align 32
@bcm_suspend.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.30, ptr @.str.3, ptr @.str.32, i8 0, i8 -50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: BCM irq: enabled\0A\00", [42 x i8] zeroinitializer }, align 32
@bcm_resume.__UNIQUE_ID_ddebug495 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.33, ptr @.str.3, ptr @.str.34, i8 0, i8 -47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bcm_resume\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: resume: is_suspended %d\0A\00", [35 x i8] zeroinitializer }, align 32
@bcm_resume.__UNIQUE_ID_ddebug496 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.33, ptr @.str.3, ptr @.str.35, i8 0, i8 -43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: BCM irq: disabled\0A\00", [41 x i8] zeroinitializer }, align 32
@bcm_suspend_device.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.36, ptr @.str.3, ptr @.str.37, i8 0, i8 -70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bcm_suspend_device\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s: \0A\00", [26 x i8] zeroinitializer }, align 32
@bcm_suspend_device.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.36, ptr @.str.3, ptr @.str.38, i8 0, i8 -65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: suspend, delaying 15 ms\0A\00", [35 x i8] zeroinitializer }, align 32
@bcm_resume_device.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.39, ptr @.str.3, ptr @.str.37, i8 0, i8 -62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bcm_resume_device\00", [46 x i8] zeroinitializer }, align 32
@bcm_resume_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.39, ptr @.str.3, i32 780, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to power up\0A\00", [44 x i8] zeroinitializer }, align 32
@bcm_resume_device._entry_ptr = internal global ptr @bcm_resume_device._entry, section ".printk_index", align 4
@bcm_resume_device.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.39, ptr @.str.3, ptr @.str.41, i8 0, i8 -60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: resume, delaying 15 ms\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hci_uart_bcm\00", [19 x i8] zeroinitializer }, align 32
@bcm_bluetooth_of_match = internal constant { [9 x %struct.of_device_id], [444 x i8] } { [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm20702a1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm4329-bt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm4330-bt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm4334-bt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm4345c5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm43438-bt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm43438_device_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm43540-bt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm4354_device_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm4335a0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [444 x i8] zeroinitializer }, align 32
@bcm43438_device_data = internal global { %struct.bcm_device_data, [30 x i8] } { %struct.bcm_device_data { i8 0, i8 1 }, [30 x i8] zeroinitializer }, align 32
@bcm4354_device_data = internal global { %struct.bcm_device_data, [30 x i8] } { %struct.bcm_device_data { i8 1, i8 0 }, [30 x i8] zeroinitializer }, align 32
@bcm_serdev_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 1477, ptr @.str.45, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"No reset resource, using default baud rate\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bcm_serdev_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bcm_serdev_probe._entry_ptr = internal global ptr @bcm_serdev_probe._entry, section ".printk_index", align 4
@bcm_serdev_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.44, ptr @.str.3, i32 1483, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@bcm_serdev_probe._entry_ptr.47 = internal global ptr @bcm_serdev_probe._entry.46, section ".printk_index", align 4
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"max-speed\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"brcm,bt-pcm-int-params\00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Broadcom\00", [23 x i8] zeroinitializer }, align 32
@bcm_open.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.51, ptr @.str.3, ptr @.str.52, i8 0, i8 108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bcm_open\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: hu %p\0A\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@bcm_close.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.54, ptr @.str.3, ptr @.str.52, i8 0, i8 -128, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bcm_close\00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Failed to power down\0A\00", [38 x i8] zeroinitializer }, align 32
@bcm_flush.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.56, ptr @.str.3, ptr @.str.52, i8 0, i8 -118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bcm_flush\00", [22 x i8] zeroinitializer }, align 32
@bcm_setup.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.57, ptr @.str.3, ptr @.str.52, i8 0, i8 -114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bcm_setup\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"host_wake\00", [22 x i8] zeroinitializer }, align 32
@bcm_host_wake.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.59, ptr @.str.3, ptr @.str.60, i8 0, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bcm_host_wake\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: Host wake IRQ\0A\00", [45 x i8] zeroinitializer }, align 32
@default_sleep_params = internal constant { %struct.bcm_set_sleep_mode, [20 x i8] } { %struct.bcm_set_sleep_mode { i8 1, i8 2, i8 2, i8 1, i8 0, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 1 }, [20 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Sleep VSC failed (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@bcm_setup_sleep.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.62, ptr @.str.3, ptr @.str.63, i8 0, i8 98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bcm_setup_sleep\00", [16 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Set Sleep Parameters VSC succeeded\0A\00", [56 x i8] zeroinitializer }, align 32
@bcm_set_baudrate.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.64, ptr @.str.3, ptr @.str.65, i8 0, i8 44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bcm_set_baudrate\00", [47 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Set Controller clock (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: BCM: failed to write clock (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@bcm_set_baudrate.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.64, ptr @.str.3, ptr @.str.67, i8 0, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Set Controller UART speed to %d bit/s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: BCM: failed to write update baudrate (%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@bcm_recv_pkts = internal constant { [8 x %struct.h4_recv_pkt], [32 x i8] } { [8 x %struct.h4_recv_pkt] [%struct.h4_recv_pkt { i8 2, i8 4, i8 2, i8 2, i16 1028, ptr @hci_recv_frame }, %struct.h4_recv_pkt { i8 3, i8 3, i8 2, i8 1, i16 255, ptr @hci_recv_frame }, %struct.h4_recv_pkt { i8 4, i8 2, i8 1, i8 1, i16 260, ptr @hci_recv_frame }, %struct.h4_recv_pkt { i8 5, i8 4, i8 2, i8 2, i16 1028, ptr @hci_recv_frame }, %struct.h4_recv_pkt { i8 7, i8 63, i8 0, i8 0, i16 63, ptr @hci_recv_diag }, %struct.h4_recv_pkt { i8 0, i8 0, i8 0, i8 0, i16 0, ptr @hci_recv_diag }, %struct.h4_recv_pkt { i8 49, i8 0, i8 0, i8 0, i16 0, ptr @hci_recv_diag }, %struct.h4_recv_pkt { i8 52, i8 0, i8 0, i8 0, i16 0, ptr @hci_recv_diag }], [32 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Frame reassembly failed (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@bcm_enqueue.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.70, ptr @.str.3, ptr @.str.71, i8 0, i8 -80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bcm_enqueue\00", [20 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: hu %p skb %p\0A\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.72 = private unnamed_addr constant [13 x i8] c"irq_polarity\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 153, i32 12 }
@___asan_gen_.75 = private unnamed_addr constant [11 x i8] c"bcm_driver\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1434, i32 31 }
@___asan_gen_.78 = private unnamed_addr constant [18 x i8] c"bcm_serdev_driver\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1524, i32 36 }
@___asan_gen_.81 = private unnamed_addr constant [10 x i8] c"bcm_proto\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1240, i32 36 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1438, i32 11 }
@___asan_gen_.87 = private unnamed_addr constant [11 x i8] c"bcm_pm_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1429, i32 32 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1213, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [16 x i8] c"bcm_device_lock\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [16 x i8] c"bcm_device_list\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 151, i32 8 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1222, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1048, i32 40 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1061, i32 57 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1066, i32 52 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1071, i32 49 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1079, i32 28 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1080, i32 28 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1090, i32 44 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1100, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1105, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1015, i32 26 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1020, i32 26 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 150, i32 8 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 253, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1235, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 805, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 824, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 839, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 854, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 746, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 765, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 776, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 780, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 784, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1528, i32 11 }
@___asan_gen_.231 = private unnamed_addr constant [23 x i8] c"bcm_bluetooth_of_match\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1510, i32 34 }
@___asan_gen_.234 = private unnamed_addr constant [21 x i8] c"bcm43438_device_data\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1506, i32 31 }
@___asan_gen_.237 = private unnamed_addr constant [20 x i8] c"bcm4354_device_data\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1502, i32 31 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1476, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1483, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1172, i32 38 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1173, i32 43 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1242, i32 11 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 433, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.274 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1984, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 514, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 537, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 555, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 569, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 340, i32 11 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 312, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant [21 x i8] c"default_sleep_params\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 362, i32 40 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 390, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 395, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 176, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 184, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 192, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 204, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant [14 x i8] c"bcm_recv_pkts\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 662, i32 33 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 684, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.334 = private constant [31 x i8] c"../drivers/bluetooth/hci_bcm.c\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 705, i32 2 }
@llvm.compiler.used = appending global [100 x ptr] [ptr @__UNIQUE_ID_irq_polarity479, ptr @__UNIQUE_ID_irq_polaritytype478, ptr @__param_irq_polarity, ptr @bcm_deinit, ptr @bcm_get_resources._entry, ptr @bcm_get_resources._entry_ptr, ptr @bcm_gpio_set_power._entry, ptr @bcm_gpio_set_power._entry_ptr, ptr @bcm_probe._entry, ptr @bcm_probe._entry.6, ptr @bcm_probe._entry_ptr, ptr @bcm_probe._entry_ptr.9, ptr @bcm_remove._entry, ptr @bcm_remove._entry_ptr, ptr @bcm_resume_device._entry, ptr @bcm_resume_device._entry_ptr, ptr @bcm_serdev_probe._entry, ptr @bcm_serdev_probe._entry.46, ptr @bcm_serdev_probe._entry_ptr, ptr @bcm_serdev_probe._entry_ptr.47, ptr @irq_polarity, ptr @bcm_driver, ptr @bcm_serdev_driver, ptr @bcm_proto, ptr @.str, ptr @bcm_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @bcm_device_lock, ptr @bcm_device_list, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @bcm_bluetooth_of_match, ptr @bcm43438_device_data, ptr @bcm4354_device_data, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @skb_queue_head_init.__key, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @default_sleep_params, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @bcm_recv_pkts, ptr @.str.69, ptr @.str.70, ptr @.str.71], section "llvm.metadata"
@0 = internal global [88 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_polarity to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_serdev_driver to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_proto to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_device_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_device_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_get_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_gpio_set_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_resume_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_bluetooth_of_match to i32), i32 1764, i32 2208, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm43438_device_data to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm4354_device_data to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_serdev_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_serdev_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_sleep_params to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_recv_pkts to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm_driver, ptr noundef null) #7
  %call1 = tail call i32 @__serdev_device_driver_register(ptr noundef nonnull @bcm_serdev_driver, ptr noundef null) #7
  %call2 = tail call i32 @hci_uart_register_proto(ptr noundef nonnull @bcm_proto) #7
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serdev_device_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_register_proto(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm_deinit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm_driver) #7
  tail call void @driver_unregister(ptr noundef nonnull @bcm_serdev_driver) #7
  %call = tail call i32 @hci_uart_unregister_proto(ptr noundef nonnull @bcm_proto) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_unregister_proto(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 396, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev3 = getelementptr inbounds %struct.bcm_device, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev3, align 4
  %call4 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %irq = getelementptr inbounds %struct.bcm_device, ptr %call.i, i32 0, i32 15
  %1 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call4, ptr %irq, align 4
  %pcm_int_params = getelementptr inbounds %struct.bcm_device, ptr %call.i, i32 0, i32 22
  %2 = ptrtoint ptr %pcm_int_params to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %pcm_int_params, align 1
  %call15 = tail call fastcc i32 @bcm_get_resources(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.end6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %name = getelementptr inbounds %struct.bcm_device, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef %5) #10
  tail call void @mutex_lock_nested(ptr noundef nonnull @bcm_device_lock, i32 noundef 0) #7
  %list = getelementptr inbounds %struct.bcm_device, ptr %call.i, i32 0, i32 1
  %6 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @bcm_device_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %6, ptr noundef nonnull @bcm_device_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end18.list_add_tail.exit_crit_edge

if.end18.list_add_tail.exit_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %list, ptr getelementptr inbounds (%struct.list_head, ptr @bcm_device_list, i32 0, i32 1), align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @bcm_device_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.bcm_device, ptr %call.i, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %6, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end18.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @bcm_device_lock) #7
  %call20 = tail call fastcc i32 @bcm_gpio_set_power(ptr noundef nonnull %call.i, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %list_add_tail.exit.cleanup_crit_edge, label %do.end25

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end25:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %list_add_tail.exit.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %call15, %if.end6.cleanup_crit_edge ], [ 0, %do.end25 ], [ 0, %list_add_tail.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @bcm_device_lock, i32 noundef 0) #7
  %list = getelementptr inbounds %struct.bcm_device, ptr %1, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.bcm_device, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.bcm_device, ptr %1, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @bcm_device_lock) #7
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %name = getelementptr inbounds %struct.bcm_device, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.28, ptr noundef %11) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_get_resources(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.bcm_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i147 = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.bcm_device, ptr %dev, i32 0, i32 3
  %6 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %retval.0.i147, ptr %name, align 4
  %call.i = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.21) #7
  %cmp.i.i = icmp ule ptr %call.i, inttoptr (i32 -4096 to ptr)
  %cmp.i = icmp eq ptr %call.i, inttoptr (i32 -517 to ptr)
  %or.cond.i = or i1 %cmp.i.i, %cmp.i
  br i1 %or.cond.i, label %dev_name.exit.bcm_get_txco.exit_crit_edge, label %if.end.i148

dev_name.exit.bcm_get_txco.exit_crit_edge:        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm_get_txco.exit

if.end.i148:                                      ; preds = %dev_name.exit
  %call3.i = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.22) #7
  %cmp.i18.i = icmp ule ptr %call3.i, inttoptr (i32 -4096 to ptr)
  %cmp7.i = icmp eq ptr %call3.i, inttoptr (i32 -517 to ptr)
  %or.cond19.i = or i1 %cmp.i18.i, %cmp7.i
  br i1 %or.cond19.i, label %if.end.i148.bcm_get_txco.exit_crit_edge, label %if.end9.i

if.end.i148.bcm_get_txco.exit_crit_edge:          ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm_get_txco.exit

if.end9.i:                                        ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef null) #7
  br label %bcm_get_txco.exit

bcm_get_txco.exit:                                ; preds = %if.end9.i, %if.end.i148.bcm_get_txco.exit_crit_edge, %dev_name.exit.bcm_get_txco.exit_crit_edge
  %retval.0.i149 = phi ptr [ %call10.i, %if.end9.i ], [ %call.i, %dev_name.exit.bcm_get_txco.exit_crit_edge ], [ %call3.i, %if.end.i148.bcm_get_txco.exit_crit_edge ]
  %txco_clk = getelementptr inbounds %struct.bcm_device, ptr %dev, i32 0, i32 9
  %7 = ptrtoint ptr %txco_clk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %retval.0.i149, ptr %txco_clk, align 4
  %cmp = icmp eq ptr %retval.0.i149, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %bcm_get_txco.exit.cleanup97_crit_edge, label %if.end

bcm_get_txco.exit.cleanup97_crit_edge:            ; preds = %bcm_get_txco.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup97

if.end:                                           ; preds = %bcm_get_txco.exit
  %cmp.i150 = icmp ugt ptr %retval.0.i149, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i150, label %if.then10, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %txco_clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %txco_clk, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end.if.end12_crit_edge
  %9 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1, align 4
  %call14 = tail call ptr @devm_clk_get(ptr noundef %10, ptr noundef nonnull @.str.10) #7
  %lpo_clk = getelementptr inbounds %struct.bcm_device, ptr %dev, i32 0, i32 10
  %11 = ptrtoint ptr %lpo_clk to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call14, ptr %lpo_clk, align 4
  %cmp17 = icmp eq ptr %call14, inttoptr (i32 -517 to ptr)
  br i1 %cmp17, label %if.end12.cleanup97_crit_edge, label %if.end21

if.end12.cleanup97_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup97

if.end21:                                         ; preds = %if.end12
  %cmp.i151 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i151, label %if.end21.if.end35.sink.split_crit_edge, label %if.end26

if.end21.if.end35.sink.split_crit_edge:           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.sink.split

if.end26:                                         ; preds = %if.end21
  %tobool.not = icmp eq ptr %call14, null
  br i1 %tobool.not, label %if.end26.if.end35_crit_edge, label %land.lhs.true

if.end26.if.end35_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end26
  %12 = ptrtoint ptr %txco_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %txco_clk, align 4
  %call30 = tail call zeroext i1 @clk_is_match(ptr noundef nonnull %call14, ptr noundef %13) #7
  br i1 %call30, label %if.then31, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1, align 4
  %16 = ptrtoint ptr %txco_clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %txco_clk, align 4
  tail call void @devm_clk_put(ptr noundef %15, ptr noundef %17) #7
  br label %if.end35.sink.split

if.end35.sink.split:                              ; preds = %if.then31, %if.end21.if.end35.sink.split_crit_edge
  %lpo_clk.sink = phi ptr [ %txco_clk, %if.then31 ], [ %lpo_clk, %if.end21.if.end35.sink.split_crit_edge ]
  %18 = ptrtoint ptr %lpo_clk.sink to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %lpo_clk.sink, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end35.sink.split, %land.lhs.true.if.end35_crit_edge, %if.end26.if.end35_crit_edge
  %19 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev1, align 4
  %call37 = tail call ptr @devm_gpiod_get_optional(ptr noundef %20, ptr noundef nonnull @.str.11, i32 noundef 3) #7
  %device_wakeup = getelementptr inbounds %struct.bcm_device, ptr %dev, i32 0, i32 4
  %21 = ptrtoint ptr %device_wakeup to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call37, ptr %device_wakeup, align 4
  %cmp.i152 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i152, label %if.then40, label %if.end43

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %call37 to i32
  br label %cleanup97

if.end43:                                         ; preds = %if.end35
  %23 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev1, align 4
  %call45 = tail call ptr @devm_gpiod_get_optional(ptr noundef %24, ptr noundef nonnull @.str.12, i32 noundef 3) #7
  %shutdown = getelementptr inbounds %struct.bcm_device, ptr %dev, i32 0, i32 5
  %25 = ptrtoint ptr %shutdown to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call45, ptr %shutdown, align 4
  %cmp.i153 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i153, label %if.then48, label %if.end51

if.then48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %call45 to i32
  br label %cleanup97

if.end51:                                         ; preds = %if.end43
  %27 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev1, align 4
  %call53 = tail call ptr @devm_gpiod_get_optional(ptr noundef %28, ptr noundef nonnull @.str.13, i32 noundef 3) #7
  %reset = getelementptr inbounds %struct.bcm_device, ptr %dev, i32 0, i32 6
  %29 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call53, ptr %reset, align 4
  %cmp.i154 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i154, label %if.then56, label %if.end59

if.then56:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %call53 to i32
  br label %cleanup97

if.end59:                                         ; preds = %if.end51
  %set_device_wakeup = getelementptr inbounds %struct.bcm_device, ptr %dev, i32 0, i32 7
  %31 = ptrtoint ptr %set_device_wakeup to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @bcm_gpio_set_device_wakeup, ptr %set_device_wakeup, align 4
  %set_shutdown = getelementptr inbounds %struct.bcm_device, ptr %dev, i32 0, i32 8
  %32 = ptrtoint ptr %set_shutdown to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @bcm_gpio_set_shutdown, ptr %set_shutdown, align 4
  %supplies = getelementptr inbounds %struct.bcm_device, ptr %dev, i32 0, i32 11
  %33 = ptrtoint ptr %supplies to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.14, ptr %supplies, align 4
  %arrayidx61 = getelementptr %struct.bcm_device, ptr %dev, i32 0, i32 11, i32 1
  %34 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.15, ptr %arrayidx61, align 4
  %35 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev1, align 4
  %call65 = tail call i32 @devm_regulator_bulk_get(ptr noundef %36, i32 noundef 2, ptr noundef %supplies) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end59.cleanup97_crit_edge

if.end59.cleanup97_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup97

if.end68:                                         ; preds = %if.end59
  %irq = getelementptr inbounds %struct.bcm_device, ptr %dev, i32 0, i32 15
  %37 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp69 = icmp slt i32 %38, 1
  br i1 %cmp69, label %if.then70, label %if.end68.if.end79_crit_edge

if.end68.if.end79_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

if.then70:                                        ; preds = %if.end68
  %39 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev1, align 4
  %call72 = tail call ptr @devm_gpiod_get_optional(ptr noundef %40, ptr noundef nonnull @.str.16, i32 noundef 1) #7
  %cmp.i155 = icmp ugt ptr %call72, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i155, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %call72 to i32
  br label %cleanup97

cleanup:                                          ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #9
  %call77 = tail call i32 @gpiod_to_irq(ptr noundef %call72) #7
  %42 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call77, ptr %irq, align 4
  br label %if.end79

if.end79:                                         ; preds = %cleanup, %if.end68.if.end79_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_get_resources.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_get_resources, %if.then91)) #7
          to label %cleanup97 [label %if.then91], !srcloc !192

if.then91:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev1, align 4
  %45 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_get_resources.__UNIQUE_ID_ddebug497, ptr noundef %44, ptr noundef nonnull @.str.20, i32 noundef %46) #7
  br label %cleanup97

cleanup97:                                        ; preds = %if.then91, %if.end79, %cleanup.thread, %if.end59.cleanup97_crit_edge, %if.then56, %if.then48, %if.then40, %if.end12.cleanup97_crit_edge, %bcm_get_txco.exit.cleanup97_crit_edge
  %retval.1 = phi i32 [ %22, %if.then40 ], [ %26, %if.then48 ], [ %30, %if.then56 ], [ %call65, %if.end59.cleanup97_crit_edge ], [ 0, %if.then91 ], [ %41, %cleanup.thread ], [ 0, %if.end79 ], [ -517, %bcm_get_txco.exit.cleanup97_crit_edge ], [ -517, %if.end12.cleanup97_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_gpio_set_power(ptr noundef %dev, i1 noundef zeroext %powered) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %powered to i8
  br i1 %powered, label %land.lhs.true, label %entry.if.end22_crit_edge

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

land.lhs.true:                                    ; preds = %entry
  %res_enabled = getelementptr inbounds %struct.bcm_device, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %res_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %res_enabled, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then:                                          ; preds = %land.lhs.true
  %supplies = getelementptr inbounds %struct.bcm_device, ptr %dev, i32 0, i32 11
  %2 = ptrtoint ptr %supplies to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %supplies, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then.if.end7_crit_edge, label %if.then3

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then3:                                         ; preds = %if.then
  %call = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.then3.if.end7_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end7:                                          ; preds = %if.then3.if.end7_crit_edge, %if.then.if.end7_crit_edge
  %lpo_clk = getelementptr inbounds %struct.bcm_device, ptr %dev, i32 0, i32 10
  %4 = ptrtoint ptr %lpo_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lpo_clk, align 4
  %call8 = tail call i32 @clk_set_rate(ptr noundef %5, i32 noundef 32768) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end12, label %do.end

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %dev11 = getelementptr inbounds %struct.bcm_device, ptr %dev, i32 0, i32 2
  %6 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.26) #10
  br label %land.lhs.true71

if.end12:                                         ; preds = %if.end7
  %8 = ptrtoint ptr %lpo_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lpo_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end12.land.lhs.true71_crit_edge

if.end12.land.lhs.true71_crit_edge:               ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true71

if.end.i:                                         ; preds = %if.end12
  %call1.i = tail call i32 @clk_enable(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end17, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %9) #7
  br label %land.lhs.true71

if.end17:                                         ; preds = %if.end.i
  %txco_clk = getelementptr inbounds %struct.bcm_device, ptr %dev, i32 0, i32 9
  %10 = ptrtoint ptr %txco_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %txco_clk, align 4
  %call.i118 = tail call i32 @clk_prepare(ptr noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118)
  %tobool.not.i119 = icmp eq i32 %call.i118, 0
  br i1 %tobool.not.i119, label %if.end.i122, label %if.end17.land.lhs.true64_crit_edge

if.end17.land.lhs.true64_crit_edge:               ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true64

if.end.i122:                                      ; preds = %if.end17
  %call1.i120 = tail call i32 @clk_enable(ptr noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i120)
  %tobool2.not.i121 = icmp eq i32 %call1.i120, 0
  br i1 %tobool2.not.i121, label %if.end.i122.if.end22_crit_edge, label %if.end.i122.land.lhs.true64.sink.split_crit_edge

if.end.i122.land.lhs.true64.sink.split_crit_edge: ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true64.sink.split

if.end.i122.if.end22_crit_edge:                   ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.end22:                                         ; preds = %if.end.i122.if.end22_crit_edge, %land.lhs.true.if.end22_crit_edge, %entry.if.end22_crit_edge
  %set_shutdown = getelementptr inbounds %struct.bcm_device, ptr %dev, i32 0, i32 8
  %12 = ptrtoint ptr %set_shutdown to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_shutdown, align 4
  %call24 = tail call i32 %13(ptr noundef %dev, i1 noundef zeroext %powered) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end22.err_txco_clk_disable_crit_edge

if.end22.err_txco_clk_disable_crit_edge:          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_txco_clk_disable

if.end27:                                         ; preds = %if.end22
  %set_device_wakeup = getelementptr inbounds %struct.bcm_device, ptr %dev, i32 0, i32 7
  %14 = ptrtoint ptr %set_device_wakeup to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_device_wakeup, align 4
  %call29 = tail call i32 %15(ptr noundef %dev, i1 noundef zeroext %powered) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %err_revert_shutdown

if.end32:                                         ; preds = %if.end27
  br i1 %powered, label %if.end32.if.end49_crit_edge, label %land.lhs.true34

if.end32.if.end49_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

land.lhs.true34:                                  ; preds = %if.end32
  %res_enabled35 = getelementptr inbounds %struct.bcm_device, ptr %dev, i32 0, i32 12
  %16 = ptrtoint ptr %res_enabled35 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %res_enabled35, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool36.not = icmp eq i8 %17, 0
  br i1 %tobool36.not, label %land.lhs.true34.if.end49_crit_edge, label %if.then37

land.lhs.true34.if.end49_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then37:                                        ; preds = %land.lhs.true34
  %txco_clk38 = getelementptr inbounds %struct.bcm_device, ptr %dev, i32 0, i32 9
  %18 = ptrtoint ptr %txco_clk38 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %txco_clk38, align 4
  tail call void @clk_disable(ptr noundef %19) #7
  tail call void @clk_unprepare(ptr noundef %19) #7
  %lpo_clk39 = getelementptr inbounds %struct.bcm_device, ptr %dev, i32 0, i32 10
  %20 = ptrtoint ptr %lpo_clk39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lpo_clk39, align 4
  tail call void @clk_disable(ptr noundef %21) #7
  tail call void @clk_unprepare(ptr noundef %21) #7
  %supplies40 = getelementptr inbounds %struct.bcm_device, ptr %dev, i32 0, i32 11
  %22 = ptrtoint ptr %supplies40 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %supplies40, align 4
  %tobool43.not = icmp eq ptr %23, null
  br i1 %tobool43.not, label %if.then37.if.end49_crit_edge, label %if.then44

if.then37.if.end49_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then44:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %call47 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies40) #7
  br label %if.end49

if.end49:                                         ; preds = %if.then44, %if.then37.if.end49_crit_edge, %land.lhs.true34.if.end49_crit_edge, %if.end32.if.end49_crit_edge
  tail call void @usleep_range_state(i32 noundef 100000, i32 noundef 120000, i32 noundef 2) #7
  %res_enabled51 = getelementptr inbounds %struct.bcm_device, ptr %dev, i32 0, i32 12
  %24 = ptrtoint ptr %res_enabled51 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %frombool, ptr %res_enabled51, align 4
  br label %cleanup

err_revert_shutdown:                              ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %set_shutdown to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %set_shutdown, align 4
  %lnot = xor i1 %powered, true
  %call55 = tail call i32 %26(ptr noundef %dev, i1 noundef zeroext %lnot) #7
  br label %err_txco_clk_disable

err_txco_clk_disable:                             ; preds = %err_revert_shutdown, %if.end22.err_txco_clk_disable_crit_edge
  %err.0 = phi i32 [ %call24, %if.end22.err_txco_clk_disable_crit_edge ], [ %call29, %err_revert_shutdown ]
  br i1 %powered, label %land.lhs.true57, label %err_txco_clk_disable.cleanup_crit_edge

err_txco_clk_disable.cleanup_crit_edge:           ; preds = %err_txco_clk_disable
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true57:                                  ; preds = %err_txco_clk_disable
  %res_enabled58 = getelementptr inbounds %struct.bcm_device, ptr %dev, i32 0, i32 12
  %27 = ptrtoint ptr %res_enabled58 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %res_enabled58, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool59.not = icmp eq i8 %28, 0
  br i1 %tobool59.not, label %if.then60, label %land.lhs.true57.land.lhs.true64_crit_edge

land.lhs.true57.land.lhs.true64_crit_edge:        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true64

if.then60:                                        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #9
  %txco_clk61 = getelementptr inbounds %struct.bcm_device, ptr %dev, i32 0, i32 9
  %29 = ptrtoint ptr %txco_clk61 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %txco_clk61, align 4
  tail call void @clk_disable(ptr noundef %30) #7
  br label %land.lhs.true64.sink.split

land.lhs.true64.sink.split:                       ; preds = %if.then60, %if.end.i122.land.lhs.true64.sink.split_crit_edge
  %.sink = phi ptr [ %30, %if.then60 ], [ %11, %if.end.i122.land.lhs.true64.sink.split_crit_edge ]
  %err.1.ph.ph = phi i32 [ %err.0, %if.then60 ], [ %call1.i120, %if.end.i122.land.lhs.true64.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #7
  br label %land.lhs.true64

land.lhs.true64:                                  ; preds = %land.lhs.true64.sink.split, %land.lhs.true57.land.lhs.true64_crit_edge, %if.end17.land.lhs.true64_crit_edge
  %err.1.ph = phi i32 [ %err.0, %land.lhs.true57.land.lhs.true64_crit_edge ], [ %call.i118, %if.end17.land.lhs.true64_crit_edge ], [ %err.1.ph.ph, %land.lhs.true64.sink.split ]
  %res_enabled65 = getelementptr inbounds %struct.bcm_device, ptr %dev, i32 0, i32 12
  %31 = ptrtoint ptr %res_enabled65 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %res_enabled65, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool66.not = icmp eq i8 %32, 0
  br i1 %tobool66.not, label %if.then67, label %land.lhs.true64.land.lhs.true71_crit_edge

land.lhs.true64.land.lhs.true71_crit_edge:        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true71

if.then67:                                        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #9
  %lpo_clk68 = getelementptr inbounds %struct.bcm_device, ptr %dev, i32 0, i32 10
  %33 = ptrtoint ptr %lpo_clk68 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lpo_clk68, align 4
  tail call void @clk_disable(ptr noundef %34) #7
  tail call void @clk_unprepare(ptr noundef %34) #7
  br label %land.lhs.true71

land.lhs.true71:                                  ; preds = %if.then67, %land.lhs.true64.land.lhs.true71_crit_edge, %if.then3.i, %if.end12.land.lhs.true71_crit_edge, %do.end
  %err.2.ph = phi i32 [ %call8, %do.end ], [ %err.1.ph, %if.then67 ], [ %err.1.ph, %land.lhs.true64.land.lhs.true71_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end12.land.lhs.true71_crit_edge ]
  %res_enabled72 = getelementptr inbounds %struct.bcm_device, ptr %dev, i32 0, i32 12
  %35 = ptrtoint ptr %res_enabled72 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %res_enabled72, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool73.not = icmp eq i8 %36, 0
  br i1 %tobool73.not, label %if.then74, label %land.lhs.true71.cleanup_crit_edge

land.lhs.true71.cleanup_crit_edge:                ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then74:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #9
  %supplies75 = getelementptr inbounds %struct.bcm_device, ptr %dev, i32 0, i32 11
  %call77 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies75) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then74, %land.lhs.true71.cleanup_crit_edge, %err_txco_clk_disable.cleanup_crit_edge, %if.end49, %if.then3.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end49 ], [ %call, %if.then3.cleanup_crit_edge ], [ %err.2.ph, %if.then74 ], [ %err.2.ph, %land.lhs.true71.cleanup_crit_edge ], [ %err.0, %err_txco_clk_disable.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clk_is_match(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_clk_put(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_gpio_set_device_wakeup(ptr nocapture noundef readonly %dev, i1 noundef zeroext %awake) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device_wakeup = getelementptr inbounds %struct.bcm_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %device_wakeup to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_wakeup, align 4
  %conv = zext i1 %awake to i32
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef %conv) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_gpio_set_shutdown(ptr nocapture noundef readonly %dev, i1 noundef zeroext %powered) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shutdown = getelementptr inbounds %struct.bcm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shutdown, align 4
  %conv = zext i1 %powered to i32
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef %conv) #7
  %reset = getelementptr inbounds %struct.bcm_device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %lnot = xor i1 %powered, true
  %lnot.ext = zext i1 %lnot to i32
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %3, i32 noundef %lnot.ext) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_suspend.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_suspend, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !192

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.bcm_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %is_suspended = getelementptr inbounds %struct.bcm_device, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %is_suspended to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_suspended, align 4, !range !193
  %6 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bcm_suspend.__UNIQUE_ID_ddebug493, ptr noundef nonnull @.str.31, ptr noundef %3, i32 noundef %6) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @bcm_device_lock, i32 noundef 0) #7
  %hu = getelementptr inbounds %struct.bcm_device, ptr %1, i32 0, i32 18
  %7 = ptrtoint ptr %hu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hu, align 4
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %do.end.unlock_crit_edge, label %if.end7

do.end.unlock_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end7:                                          ; preds = %do.end
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %9 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp eq i32 %10, 0
  br i1 %cmp.i, label %if.end7.if.then9_crit_edge, label %pm_runtime_active.exit

if.end7.if.then9_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

pm_runtime_active.exit:                           ; preds = %if.end7
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %11 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i)
  %tobool.i = icmp ugt i16 %bf.load.i, 8191
  br i1 %tobool.i, label %pm_runtime_active.exit.if.then9_crit_edge, label %pm_runtime_active.exit.if.end11_crit_edge

pm_runtime_active.exit.if.end11_crit_edge:        ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

pm_runtime_active.exit.if.then9_crit_edge:        ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

if.then9:                                         ; preds = %pm_runtime_active.exit.if.then9_crit_edge, %if.end7.if.then9_crit_edge
  %call10 = tail call i32 @bcm_suspend_device(ptr noundef %dev)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %pm_runtime_active.exit.if.end11_crit_edge
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %12 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load.i50 = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i50)
  %tobool.not.i = icmp sgt i16 %bf.load.i50, -1
  br i1 %tobool.not.i, label %if.end11.unlock_crit_edge, label %device_may_wakeup.exit

if.end11.unlock_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

device_may_wakeup.exit:                           ; preds = %if.end11
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %13 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %14, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.unlock_crit_edge, label %land.lhs.true

device_may_wakeup.exit.unlock_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

land.lhs.true:                                    ; preds = %device_may_wakeup.exit
  %irq = getelementptr inbounds %struct.bcm_device, ptr %1, i32 0, i32 15
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp = icmp sgt i32 %16, 0
  br i1 %cmp, label %if.then15, label %land.lhs.true.unlock_crit_edge

land.lhs.true.unlock_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.then15:                                        ; preds = %land.lhs.true
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %16, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %do.body20, label %if.then15.unlock_crit_edge

if.then15.unlock_crit_edge:                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

do.body20:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_suspend.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_suspend, %if.then32)) #7
          to label %unlock [label %if.then32], !srcloc !192

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  %name33 = getelementptr inbounds %struct.bcm_device, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %name33 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name33, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bcm_suspend.__UNIQUE_ID_ddebug494, ptr noundef nonnull @.str.32, ptr noundef %18) #7
  br label %unlock

unlock:                                           ; preds = %if.then32, %do.body20, %if.then15.unlock_crit_edge, %land.lhs.true.unlock_crit_edge, %device_may_wakeup.exit.unlock_crit_edge, %if.end11.unlock_crit_edge, %do.end.unlock_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @bcm_device_lock) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_resume.__UNIQUE_ID_ddebug495, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_resume, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !192

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.bcm_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %is_suspended = getelementptr inbounds %struct.bcm_device, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %is_suspended to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_suspended, align 4, !range !193
  %6 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bcm_resume.__UNIQUE_ID_ddebug495, ptr noundef nonnull @.str.34, ptr noundef %3, i32 noundef %6) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @bcm_device_lock, i32 noundef 0) #7
  %hu = getelementptr inbounds %struct.bcm_device, ptr %1, i32 0, i32 18
  %7 = ptrtoint ptr %hu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hu, align 4
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %if.then34.critedge, label %if.end7

if.end7:                                          ; preds = %do.end
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %9 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end7.if.end31_crit_edge, label %device_may_wakeup.exit

if.end7.if.end31_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

device_may_wakeup.exit:                           ; preds = %if.end7
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %10 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %11, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end31_crit_edge, label %land.lhs.true

device_may_wakeup.exit.if.end31_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

land.lhs.true:                                    ; preds = %device_may_wakeup.exit
  %irq = getelementptr inbounds %struct.bcm_device, ptr %1, i32 0, i32 15
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp sgt i32 %13, 0
  br i1 %cmp, label %if.then11, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %13, i32 noundef 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_resume.__UNIQUE_ID_ddebug496, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_resume, %if.then26)) #7
          to label %if.end31 [label %if.then26], !srcloc !192

if.then26:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %name27 = getelementptr inbounds %struct.bcm_device, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %name27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name27, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bcm_resume.__UNIQUE_ID_ddebug496, ptr noundef nonnull @.str.35, ptr noundef %15) #7
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.then11, %land.lhs.true.if.end31_crit_edge, %device_may_wakeup.exit.if.end31_crit_edge, %if.end7.if.end31_crit_edge
  %call32 = tail call i32 @bcm_resume_device(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %phi.cmp = icmp eq i32 %call32, 0
  tail call void @mutex_unlock(ptr noundef nonnull @bcm_device_lock) #7
  br i1 %phi.cmp, label %if.end31.if.then34_crit_edge, label %if.end31.if.end36_crit_edge

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.end31.if.then34_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34

if.then34.critedge:                               ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef nonnull @bcm_device_lock) #7
  br label %if.then34

if.then34:                                        ; preds = %if.then34.critedge, %if.end31.if.then34_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %call.i50 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #7
  tail call void @pm_runtime_enable(ptr noundef %dev) #7
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end31.if.end36_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_suspend_device(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_suspend_device.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_suspend_device, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !192

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.bcm_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bcm_suspend_device.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.37, ptr noundef %3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %is_suspended = getelementptr inbounds %struct.bcm_device, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %is_suspended to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_suspended, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %land.lhs.true, label %do.end.if.end9_crit_edge

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

land.lhs.true:                                    ; preds = %do.end
  %hu = getelementptr inbounds %struct.bcm_device, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %hu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hu, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %land.lhs.true.if.end9_crit_edge, label %if.then6

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @hci_uart_set_flow_control(ptr noundef nonnull %7, i1 noundef zeroext true) #7
  %8 = ptrtoint ptr %is_suspended to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %is_suspended, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %land.lhs.true.if.end9_crit_edge, %do.end.if.end9_crit_edge
  %set_device_wakeup = getelementptr inbounds %struct.bcm_device, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %set_device_wakeup to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_device_wakeup, align 4
  %call10 = tail call i32 %10(ptr noundef %1, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.body23, label %if.then12

if.then12:                                        ; preds = %if.end9
  %11 = ptrtoint ptr %is_suspended to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_suspended, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool14.not = icmp eq i8 %12, 0
  br i1 %tobool14.not, label %if.then12.cleanup_crit_edge, label %land.lhs.true15

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true15:                                  ; preds = %if.then12
  %hu16 = getelementptr inbounds %struct.bcm_device, ptr %1, i32 0, i32 18
  %13 = ptrtoint ptr %hu16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hu16, align 4
  %tobool17.not = icmp eq ptr %14, null
  br i1 %tobool17.not, label %land.lhs.true15.cleanup_crit_edge, label %if.then18

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then18:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %is_suspended to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %is_suspended, align 4
  tail call void @hci_uart_set_flow_control(ptr noundef nonnull %14, i1 noundef zeroext false) #7
  br label %cleanup

do.body23:                                        ; preds = %if.end9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_suspend_device.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_suspend_device, %if.then35)) #7
          to label %do.end39 [label %if.then35], !srcloc !192

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #9
  %name36 = getelementptr inbounds %struct.bcm_device, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %name36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name36, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bcm_suspend_device.__UNIQUE_ID_ddebug490, ptr noundef nonnull @.str.38, ptr noundef %17) #7
  br label %do.end39

do.end39:                                         ; preds = %if.then35, %do.body23
  tail call void @msleep(i32 noundef 15) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %if.then18, %land.lhs.true15.cleanup_crit_edge, %if.then12.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end39 ], [ -16, %if.then18 ], [ -16, %land.lhs.true15.cleanup_crit_edge ], [ -16, %if.then12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_resume_device(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_resume_device.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_resume_device, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !192

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.bcm_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bcm_resume_device.__UNIQUE_ID_ddebug491, ptr noundef nonnull @.str.37, ptr noundef %3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %set_device_wakeup = getelementptr inbounds %struct.bcm_device, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %set_device_wakeup to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_device_wakeup, align 4
  %call4 = tail call i32 %5(ptr noundef %1, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body11, label %do.end9

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40) #10
  br label %cleanup

do.body11:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_resume_device.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_resume_device, %if.then23)) #7
          to label %do.end27 [label %if.then23], !srcloc !192

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  %name24 = getelementptr inbounds %struct.bcm_device, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %name24 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name24, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bcm_resume_device.__UNIQUE_ID_ddebug492, ptr noundef nonnull @.str.41, ptr noundef %7) #7
  br label %do.end27

do.end27:                                         ; preds = %if.then23, %do.body11
  tail call void @msleep(i32 noundef 15) #7
  %is_suspended = getelementptr inbounds %struct.bcm_device, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %is_suspended to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_suspended, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool28.not = icmp eq i8 %9, 0
  br i1 %tobool28.not, label %do.end27.cleanup_crit_edge, label %land.lhs.true

do.end27.cleanup_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %do.end27
  %hu = getelementptr inbounds %struct.bcm_device, ptr %1, i32 0, i32 18
  %10 = ptrtoint ptr %hu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hu, align 4
  %tobool29.not = icmp eq ptr %11, null
  br i1 %tobool29.not, label %land.lhs.true.cleanup_crit_edge, label %if.then30

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %is_suspended to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %is_suspended, align 4
  tail call void @hci_uart_set_flow_control(ptr noundef nonnull %11, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %land.lhs.true.cleanup_crit_edge, %do.end27.cleanup_crit_edge, %do.end9
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_uart_set_flow_control(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_serdev_probe(ptr noundef %serdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %serdev, i32 noundef 396, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.bcm_device, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %serdev, ptr %dev2, align 4
  %hu = getelementptr inbounds %struct.bcm_device, ptr %call.i, i32 0, i32 18
  %1 = ptrtoint ptr %hu to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %hu, align 4
  %serdev4 = getelementptr inbounds %struct.hci_uart, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %serdev4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %serdev, ptr %serdev4, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %pcm_int_params = getelementptr inbounds %struct.bcm_device, ptr %call.i, i32 0, i32 22
  %4 = ptrtoint ptr %pcm_int_params to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %pcm_int_params, align 1
  %oper_speed.i = getelementptr inbounds %struct.bcm_device, ptr %call.i, i32 0, i32 14
  %call.i.i = tail call i32 @device_property_read_u32_array(ptr noundef %serdev, ptr noundef nonnull @.str.48, ptr noundef %oper_speed.i, i32 noundef 1) #7
  %5 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev2, align 4
  %call2.i = tail call i32 @device_property_read_u8_array(ptr noundef %6, ptr noundef nonnull @.str.49, ptr noundef %pcm_int_params, i32 noundef 5) #7
  %7 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev2, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node.i, align 8
  %call4.i = tail call i32 @of_irq_get_byname(ptr noundef %10, ptr noundef nonnull @.str.16) #7
  %irq.i = getelementptr inbounds %struct.bcm_device, ptr %call.i, i32 0, i32 15
  %11 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call4.i, ptr %irq.i, align 4
  %call.i1.i = tail call ptr @irq_get_irq_data(i32 noundef %call4.i) #7
  %tobool.not.i.i = icmp eq ptr %call.i1.i, null
  br i1 %tobool.not.i.i, label %if.end.bcm_of_probe.exit_crit_edge, label %cond.true.i.i

if.end.bcm_of_probe.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm_of_probe.exit

cond.true.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %common.i.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i1.i, i32 0, i32 3
  %12 = ptrtoint ptr %common.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %common.i.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %phi.bo.i = and i32 %15, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo.i)
  %phi.cmp.i = icmp ne i32 %phi.bo.i, 0
  br label %bcm_of_probe.exit

bcm_of_probe.exit:                                ; preds = %cond.true.i.i, %if.end.bcm_of_probe.exit_crit_edge
  %cond.i.i = phi i1 [ %phi.cmp.i, %cond.true.i.i ], [ false, %if.end.bcm_of_probe.exit_crit_edge ]
  %irq_active_low.i = getelementptr inbounds %struct.bcm_device, ptr %call.i, i32 0, i32 16
  %frombool.i = zext i1 %cond.i.i to i8
  %16 = ptrtoint ptr %irq_active_low.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool.i, ptr %irq_active_low.i, align 4
  %call14 = tail call fastcc i32 @bcm_get_resources(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %bcm_of_probe.exit.cleanup_crit_edge

bcm_of_probe.exit.cleanup_crit_edge:              ; preds = %bcm_of_probe.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %bcm_of_probe.exit
  %shutdown = getelementptr inbounds %struct.bcm_device, ptr %call.i, i32 0, i32 5
  %17 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %shutdown, align 4
  %tobool18.not = icmp eq ptr %18, null
  br i1 %tobool18.not, label %do.end, label %if.end17.if.end21_crit_edge

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %serdev, ptr noundef nonnull @.str.43) #10
  %init_speed = getelementptr inbounds %struct.bcm_device, ptr %call.i, i32 0, i32 13
  %19 = ptrtoint ptr %init_speed to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %init_speed, align 4
  %21 = ptrtoint ptr %oper_speed.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %oper_speed.i, align 4
  br label %if.end21

if.end21:                                         ; preds = %do.end, %if.end17.if.end21_crit_edge
  %call22 = tail call fastcc i32 @bcm_gpio_set_power(ptr noundef nonnull %call.i, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end21.if.end29_crit_edge, label %do.end27

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %serdev, ptr noundef nonnull @.str.7) #10
  br label %if.end29

if.end29:                                         ; preds = %do.end27, %if.end21.if.end29_crit_edge
  %22 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev2, align 4
  %call31 = tail call ptr @device_get_match_data(ptr noundef %23) #7
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %if.end29.if.end39_crit_edge, label %if.then33

if.end29.if.end39_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %call31 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %call31, align 1, !range !193
  %no_early_set_baudrate35 = getelementptr inbounds %struct.bcm_device, ptr %call.i, i32 0, i32 20
  %26 = ptrtoint ptr %no_early_set_baudrate35 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %no_early_set_baudrate35, align 1
  %drive_rts_on_open = getelementptr inbounds %struct.bcm_device_data, ptr %call31, i32 0, i32 1
  %27 = ptrtoint ptr %drive_rts_on_open to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %drive_rts_on_open, align 1, !range !193
  %drive_rts_on_open37 = getelementptr inbounds %struct.bcm_device, ptr %call.i, i32 0, i32 21
  %29 = ptrtoint ptr %drive_rts_on_open37 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %drive_rts_on_open37, align 2
  br label %if.end39

if.end39:                                         ; preds = %if.then33, %if.end29.if.end39_crit_edge
  %call41 = tail call i32 @hci_uart_register_device(ptr noundef nonnull %call.i, ptr noundef nonnull @bcm_proto) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %bcm_of_probe.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call41, %if.end39 ], [ -12, %entry.cleanup_crit_edge ], [ %call14, %bcm_of_probe.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_serdev_remove(ptr nocapture noundef readonly %serdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @hci_uart_unregister_device(ptr noundef %1) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_uart_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_open(ptr noundef %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_open.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_open, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !192

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bcm_open.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.52, ptr noundef %name, ptr noundef %hu) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call zeroext i1 @hci_uart_has_flow_control(ptr noundef %hu) #7
  br i1 %call3, label %if.end5, label %do.end.cleanup66_crit_edge

do.end.cleanup66_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup66

if.end5:                                          ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 64) #11
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end5.cleanup66_crit_edge, label %if.end9

if.end5.cleanup66_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup66

if.end9:                                          ; preds = %if.end5
  %txq = getelementptr inbounds %struct.bcm_data, ptr %call7.i.i, i32 0, i32 1
  %lock.i = getelementptr inbounds %struct.bcm_data, ptr %call7.i.i, i32 0, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.53, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #7
  %3 = ptrtoint ptr %txq to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %txq, ptr %txq, align 4
  %prev.i.i = getelementptr inbounds %struct.bcm_data, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %txq, ptr %prev.i.i, align 8
  %qlen.i.i = getelementptr inbounds %struct.bcm_data, ptr %call7.i.i, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %qlen.i.i, align 4
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %priv, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @bcm_device_lock, i32 noundef 0) #7
  %serdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 1
  %7 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %serdev, align 4
  %tobool10.not = icmp eq ptr %8, null
  br i1 %tobool10.not, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.bcm_data, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %dev, align 4
  br label %out

if.end14:                                         ; preds = %if.end9
  %12 = ptrtoint ptr %hu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hu, align 4
  %dev15 = getelementptr inbounds %struct.tty_struct, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev15, align 4
  %tobool16.not = icmp eq ptr %15, null
  br i1 %tobool16.not, label %if.end14.out_crit_edge, label %if.end14.for.cond_crit_edge

if.end14.for.cond_crit_edge:                      ; preds = %if.end14
  br label %for.cond

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end14.for.cond_crit_edge
  %p.0.in = phi ptr [ %p.0, %for.body.for.cond_crit_edge ], [ @bcm_device_list, %if.end14.for.cond_crit_edge ]
  %16 = ptrtoint ptr %p.0.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %p.0 = load ptr, ptr %p.0.in, align 4
  %cmp.i.not = icmp eq ptr %p.0, @bcm_device_list
  br i1 %cmp.i.not, label %for.cond.out_crit_edge, label %for.body

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.body:                                         ; preds = %for.cond
  %17 = ptrtoint ptr %hu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hu, align 4
  %dev26 = getelementptr inbounds %struct.tty_struct, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev26, align 4
  %parent = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent, align 8
  %dev27 = getelementptr i8, ptr %p.0, i32 8
  %23 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev27, align 4
  %parent28 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %parent28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent28, align 8
  %cmp = icmp eq ptr %22, %26
  br i1 %cmp, label %cleanup.thread, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %p.0, i32 -296
  %dev30 = getelementptr inbounds %struct.bcm_data, ptr %call7.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %dev30 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr, ptr %dev30, align 4
  %hu31 = getelementptr i8, ptr %p.0, i32 88
  %28 = ptrtoint ptr %hu31 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %hu, ptr %hu31, align 4
  br label %out

out:                                              ; preds = %cleanup.thread, %for.cond.out_crit_edge, %if.end14.out_crit_edge, %if.then11
  %dev33 = getelementptr inbounds %struct.bcm_data, ptr %call7.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev33, align 4
  %tobool34.not = icmp eq ptr %30, null
  br i1 %tobool34.not, label %out.if.end58_crit_edge, label %if.then35

out.if.end58_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then35:                                        ; preds = %out
  %drive_rts_on_open = getelementptr inbounds %struct.bcm_device, ptr %30, i32 0, i32 21
  %31 = ptrtoint ptr %drive_rts_on_open to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %drive_rts_on_open, align 2, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool37.not = icmp eq i8 %32, 0
  br i1 %tobool37.not, label %if.then35.if.end39_crit_edge, label %if.then38

if.then35.if.end39_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then38:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @hci_uart_set_flow_control(ptr noundef %hu, i1 noundef zeroext true) #7
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.then35.if.end39_crit_edge
  %33 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev33, align 4
  %init_speed = getelementptr inbounds %struct.bcm_device, ptr %34, i32 0, i32 13
  %35 = ptrtoint ptr %init_speed to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %init_speed, align 4
  %init_speed41 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 12
  %37 = ptrtoint ptr %init_speed41 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %init_speed41, align 4
  %no_early_set_baudrate = getelementptr inbounds %struct.bcm_device, ptr %34, i32 0, i32 20
  %38 = ptrtoint ptr %no_early_set_baudrate to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %no_early_set_baudrate, align 1, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool43.not = icmp eq i8 %39, 0
  br i1 %tobool43.not, label %if.then44, label %if.end39.if.end47_crit_edge

if.end39.if.end47_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %oper_speed = getelementptr inbounds %struct.bcm_device, ptr %34, i32 0, i32 14
  %40 = ptrtoint ptr %oper_speed to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %oper_speed, align 4
  %oper_speed46 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 13
  %42 = ptrtoint ptr %oper_speed46 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %oper_speed46, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end39.if.end47_crit_edge
  %call49 = tail call fastcc i32 @bcm_gpio_set_power(ptr noundef %34, i1 noundef zeroext true)
  %43 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev33, align 4
  %drive_rts_on_open51 = getelementptr inbounds %struct.bcm_device, ptr %44, i32 0, i32 21
  %45 = ptrtoint ptr %drive_rts_on_open51 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %drive_rts_on_open51, align 2, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool52.not = icmp eq i8 %46, 0
  br i1 %tobool52.not, label %if.end47.if.end54_crit_edge, label %if.then53

if.end47.if.end54_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then53:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @hci_uart_set_flow_control(ptr noundef %hu, i1 noundef zeroext false) #7
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end47.if.end54_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool55.not = icmp eq i32 %call49, 0
  br i1 %tobool55.not, label %if.end54.if.end58_crit_edge, label %err_unset_hu

if.end54.if.end58_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.end58:                                         ; preds = %if.end54.if.end58_crit_edge, %out.if.end58_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @bcm_device_lock) #7
  br label %cleanup66

err_unset_hu:                                     ; preds = %if.end54
  %47 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %serdev, align 4
  %tobool60.not = icmp eq ptr %48, null
  br i1 %tobool60.not, label %if.then61, label %err_unset_hu.if.end64_crit_edge

err_unset_hu.if.end64_crit_edge:                  ; preds = %err_unset_hu
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then61:                                        ; preds = %err_unset_hu
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev33, align 4
  %hu63 = getelementptr inbounds %struct.bcm_device, ptr %50, i32 0, i32 18
  %51 = ptrtoint ptr %hu63 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %hu63, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %err_unset_hu.if.end64_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @bcm_device_lock) #7
  %52 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %priv, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup66

cleanup66:                                        ; preds = %if.end64, %if.end58, %if.end5.cleanup66_crit_edge, %do.end.cleanup66_crit_edge
  %retval.0 = phi i32 [ %call49, %if.end64 ], [ 0, %if.end58 ], [ -95, %do.end.cleanup66_crit_edge ], [ -12, %if.end5.cleanup66_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_close(ptr noundef %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_close.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_close, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !192

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %2 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bcm_close.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.52, ptr noundef %name, ptr noundef %hu) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @bcm_device_lock, i32 noundef 0) #7
  %serdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 1
  %4 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serdev, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  br label %if.end12

if.else:                                          ; preds = %do.end
  %dev = getelementptr inbounds %struct.bcm_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.else.for.cond.i.preheader_crit_edge, label %land.lhs.true.i

if.else.for.cond.i.preheader_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.preheader

land.lhs.true.i:                                  ; preds = %if.else
  %hu.i = getelementptr inbounds %struct.bcm_device, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %hu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hu.i, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.for.cond.i.preheader_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.for.cond.i.preheader_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.preheader

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %serdev.i = getelementptr inbounds %struct.hci_uart, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %serdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %serdev.i, align 4
  %tobool4.not.i = icmp eq ptr %13, null
  br i1 %tobool4.not.i, label %land.lhs.true2.i.for.cond.i.preheader_crit_edge, label %land.lhs.true2.i.if.then8_crit_edge

land.lhs.true2.i.if.then8_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

land.lhs.true2.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %land.lhs.true2.i.for.cond.i.preheader_crit_edge, %land.lhs.true.i.for.cond.i.preheader_crit_edge, %if.else.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %p.0.in.i = phi ptr [ %p.0.i, %for.cond.i.for.cond.i_crit_edge ], [ @bcm_device_list, %for.cond.i.preheader ]
  %14 = ptrtoint ptr %p.0.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %p.0.i = load ptr, ptr %p.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %p.0.i, @bcm_device_list
  %add.ptr.i = getelementptr i8, ptr %p.0.i, i32 -296
  %cmp.i = icmp eq ptr %add.ptr.i, %9
  %or.cond.i = or i1 %cmp.i.not.i, %cmp.i
  br i1 %or.cond.i, label %bcm_device_exists.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

bcm_device_exists.exit:                           ; preds = %for.cond.i
  br i1 %cmp.i.not.i, label %bcm_device_exists.exit.if.end32_crit_edge, label %bcm_device_exists.exit.if.then8_crit_edge

bcm_device_exists.exit.if.then8_crit_edge:        ; preds = %bcm_device_exists.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

bcm_device_exists.exit.if.end32_crit_edge:        ; preds = %bcm_device_exists.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then8:                                         ; preds = %bcm_device_exists.exit.if.then8_crit_edge, %land.lhs.true2.i.if.then8_crit_edge
  %hu10 = getelementptr inbounds %struct.bcm_device, ptr %9, i32 0, i32 18
  %15 = ptrtoint ptr %hu10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %hu10, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.then4
  %bdev.0 = phi ptr [ %7, %if.then4 ], [ %9, %if.then8 ]
  %tobool13.not = icmp eq ptr %bdev.0, null
  br i1 %tobool13.not, label %if.end12.if.end32_crit_edge, label %if.then14

if.end12.if.end32_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then14:                                        ; preds = %if.end12
  %irq_acquired = getelementptr inbounds %struct.bcm_device, ptr %bdev.0, i32 0, i32 17
  %16 = ptrtoint ptr %irq_acquired to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %irq_acquired, align 1, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool15.not = icmp eq i8 %17, 0
  br i1 %tobool15.not, label %if.then14.if.end21_crit_edge, label %if.then16

if.then14.if.end21_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %dev17 = getelementptr inbounds %struct.bcm_device, ptr %bdev.0, i32 0, i32 2
  %18 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev17, align 4
  %irq = getelementptr inbounds %struct.bcm_device, ptr %bdev.0, i32 0, i32 15
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq, align 4
  tail call void @devm_free_irq(ptr noundef %19, i32 noundef %21, ptr noundef nonnull %bdev.0) #7
  %22 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev17, align 4
  %call19 = tail call i32 @device_init_wakeup(ptr noundef %23, i1 noundef zeroext false) #7
  %24 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev17, align 4
  tail call void @__pm_runtime_disable(ptr noundef %25, i1 noundef zeroext true) #7
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.then14.if.end21_crit_edge
  %call22 = tail call fastcc i32 @bcm_gpio_set_power(ptr noundef nonnull %bdev.0, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.else28, label %if.then24

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %hdev25 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %26 = ptrtoint ptr %hdev25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hdev25, align 4
  %name26 = getelementptr inbounds %struct.hci_dev, ptr %27, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.55, ptr noundef %name26) #7
  br label %if.end32

if.else28:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %dev29 = getelementptr inbounds %struct.bcm_device, ptr %bdev.0, i32 0, i32 2
  %28 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev29, align 4
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %29, i32 noundef 2) #7
  br label %if.end32

if.end32:                                         ; preds = %if.else28, %if.then24, %if.end12.if.end32_crit_edge, %bcm_device_exists.exit.if.end32_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @bcm_device_lock) #7
  %txq = getelementptr inbounds %struct.bcm_data, ptr %1, i32 0, i32 1
  tail call void @skb_queue_purge(ptr noundef %txq) #7
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  tail call void @kfree_skb_reason(ptr noundef %31, i32 noundef 0) #7
  tail call void @kfree(ptr noundef %1) #7
  %32 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %priv, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_flush(ptr noundef %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_flush.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_flush, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !192

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %2 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bcm_flush.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.52, ptr noundef %name, ptr noundef %hu) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %txq = getelementptr inbounds %struct.bcm_data, ptr %1, i32 0, i32 1
  tail call void @skb_queue_purge(ptr noundef %txq) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_setup(ptr noundef %hu) #2 align 64 {
entry:
  %fw_load_done = alloca i8, align 1
  %params = alloca %struct.bcm_set_pcm_int_params, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fw_load_done) #7
  %2 = ptrtoint ptr %fw_load_done to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %fw_load_done, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_setup.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_setup, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !192

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %3 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bcm_setup.__UNIQUE_ID_ddebug487, ptr noundef nonnull @.str.52, ptr noundef %name, ptr noundef %hu) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %hdev3 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %5 = ptrtoint ptr %hdev3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hdev3, align 4
  %set_diag = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 241
  %7 = ptrtoint ptr %set_diag to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @bcm_set_diag, ptr %set_diag, align 4
  %8 = load ptr, ptr %hdev3, align 4
  %set_bdaddr = getelementptr inbounds %struct.hci_dev, ptr %8, i32 0, i32 242
  %9 = ptrtoint ptr %set_bdaddr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @btbcm_set_bdaddr, ptr %set_bdaddr, align 8
  %10 = load ptr, ptr %hdev3, align 4
  %call6 = call i32 @btbcm_initialize(ptr noundef %10, ptr noundef nonnull %fw_load_done) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %11 = ptrtoint ptr %fw_load_done to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fw_load_done, align 1, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool10.not = icmp eq i8 %12, 0
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %init_speed = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 12
  %13 = ptrtoint ptr %init_speed to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %init_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool13.not = icmp eq i32 %14, 0
  br i1 %tobool13.not, label %if.end23, label %if.end12.if.then25_crit_edge

if.end12.if.then25_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25

if.end23:                                         ; preds = %if.end12
  %proto = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 7
  %15 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %proto, align 4
  %init_speed16 = getelementptr inbounds %struct.hci_uart_proto, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %init_speed16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %init_speed16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool24.not = icmp eq i32 %18, 0
  br i1 %tobool24.not, label %if.end23.if.end26_crit_edge, label %if.end23.if.then25_crit_edge

if.end23.if.then25_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25

if.end23.if.end26_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then25:                                        ; preds = %if.end23.if.then25_crit_edge, %if.end12.if.then25_crit_edge
  %speed.0137 = phi i32 [ %18, %if.end23.if.then25_crit_edge ], [ %14, %if.end12.if.then25_crit_edge ]
  %serdev.i = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 1
  %19 = ptrtoint ptr %serdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %serdev.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call i32 @serdev_device_set_baudrate(ptr noundef nonnull %20, i32 noundef %speed.0137) #7
  br label %if.end26

if.else.i:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  call void @hci_uart_set_baudrate(ptr noundef %hu, i32 noundef %speed.0137) #7
  br label %if.end26

if.end26:                                         ; preds = %if.else.i, %if.then.i, %if.end23.if.end26_crit_edge
  %oper_speed = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 13
  %21 = ptrtoint ptr %oper_speed to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %oper_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool27.not = icmp eq i32 %22, 0
  br i1 %tobool27.not, label %if.else30, label %if.end26.if.then50_crit_edge

if.end26.if.then50_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then50

if.else30:                                        ; preds = %if.end26
  %dev = getelementptr inbounds %struct.bcm_data, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %tobool31.not = icmp eq ptr %24, null
  br i1 %tobool31.not, label %if.else30.if.end48_crit_edge, label %land.lhs.true

if.else30.if.end48_crit_edge:                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

land.lhs.true:                                    ; preds = %if.else30
  %oper_speed33 = getelementptr inbounds %struct.bcm_device, ptr %24, i32 0, i32 14
  %25 = ptrtoint ptr %oper_speed33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %oper_speed33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool34.not = icmp eq i32 %26, 0
  br i1 %tobool34.not, label %land.lhs.true.if.end48_crit_edge, label %land.lhs.true.if.then50_crit_edge

land.lhs.true.if.then50_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then50

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.end48:                                         ; preds = %land.lhs.true.if.end48_crit_edge, %if.else30.if.end48_crit_edge
  %proto39 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 7
  %27 = ptrtoint ptr %proto39 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %proto39, align 4
  %oper_speed40 = getelementptr inbounds %struct.hci_uart_proto, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %oper_speed40 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %oper_speed40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool49.not = icmp eq i32 %30, 0
  br i1 %tobool49.not, label %if.end48.if.end55_crit_edge, label %if.end48.if.then50_crit_edge

if.end48.if.then50_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then50

if.end48.if.end55_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then50:                                        ; preds = %if.end48.if.then50_crit_edge, %land.lhs.true.if.then50_crit_edge, %if.end26.if.then50_crit_edge
  %speed.1140 = phi i32 [ %30, %if.end48.if.then50_crit_edge ], [ %26, %land.lhs.true.if.then50_crit_edge ], [ %22, %if.end26.if.then50_crit_edge ]
  %call51 = call i32 @bcm_set_baudrate(ptr noundef %hu, i32 noundef %speed.1140)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then53, label %if.then50.if.end55_crit_edge

if.then50.if.end55_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then53:                                        ; preds = %if.then50
  %serdev.i127 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 1
  %31 = ptrtoint ptr %serdev.i127 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %serdev.i127, align 4
  %tobool.not.i128 = icmp eq ptr %32, null
  br i1 %tobool.not.i128, label %if.else.i131, label %if.then.i130

if.then.i130:                                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  %call.i129 = call i32 @serdev_device_set_baudrate(ptr noundef nonnull %32, i32 noundef %speed.1140) #7
  br label %if.end55

if.else.i131:                                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  call void @hci_uart_set_baudrate(ptr noundef %hu, i32 noundef %speed.1140) #7
  br label %if.end55

if.end55:                                         ; preds = %if.else.i131, %if.then.i130, %if.then50.if.end55_crit_edge, %if.end48.if.end55_crit_edge
  %dev56 = getelementptr inbounds %struct.bcm_data, ptr %1, i32 0, i32 2
  %33 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev56, align 4
  %tobool57.not = icmp eq ptr %34, null
  br i1 %tobool57.not, label %if.end55.if.end69_crit_edge, label %land.lhs.true58

if.end55.if.end69_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

land.lhs.true58:                                  ; preds = %if.end55
  %pcm_int_params = getelementptr inbounds %struct.bcm_device, ptr %34, i32 0, i32 22
  %35 = ptrtoint ptr %pcm_int_params to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %pcm_int_params, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %36)
  %cmp.not = icmp eq i8 %36, -1
  br i1 %cmp.not, label %land.lhs.true58.if.end69_crit_edge, label %if.then61

land.lhs.true58.if.end69_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then61:                                        ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %params) #7
  %37 = call ptr @memset(ptr %params, i32 255, i32 5)
  %38 = ptrtoint ptr %hdev3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hdev3, align 4
  %call63 = call i32 @btbcm_read_pcm_int_params(ptr noundef %39, ptr noundef nonnull %params) #7
  %40 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev56, align 4
  %pcm_int_params65 = getelementptr inbounds %struct.bcm_device, ptr %41, i32 0, i32 22
  %42 = call ptr @memcpy(ptr %params, ptr %pcm_int_params65, i32 5)
  %43 = ptrtoint ptr %hdev3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hdev3, align 4
  %call68 = call i32 @btbcm_write_pcm_int_params(ptr noundef %44, ptr noundef nonnull %params) #7
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %params) #7
  br label %if.end69

if.end69:                                         ; preds = %if.then61, %land.lhs.true58.if.end69_crit_edge, %if.end55.if.end69_crit_edge
  %45 = ptrtoint ptr %hdev3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hdev3, align 4
  %call71 = call i32 @btbcm_finalize(ptr noundef %46, ptr noundef nonnull %fw_load_done) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %if.end69.cleanup_crit_edge

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end74:                                         ; preds = %if.end69
  %47 = ptrtoint ptr %hdev3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hdev3, align 4
  %quirks = getelementptr inbounds %struct.hci_dev, ptr %48, i32 0, i32 118
  call void @_set_bit(i32 noundef 8, ptr noundef %quirks) #7
  %49 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev56, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @bcm_device_lock, i32 noundef 0) #7
  %tobool.not.i.i = icmp eq ptr %50, null
  br i1 %tobool.not.i.i, label %if.end74.for.cond.i.i.preheader_crit_edge, label %land.lhs.true.i.i

if.end74.for.cond.i.i.preheader_crit_edge:        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i.preheader

land.lhs.true.i.i:                                ; preds = %if.end74
  %hu.i.i = getelementptr inbounds %struct.bcm_device, ptr %50, i32 0, i32 18
  %51 = ptrtoint ptr %hu.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hu.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %52, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.for.cond.i.i.preheader_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.for.cond.i.i.preheader_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i.preheader

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %serdev.i.i = getelementptr inbounds %struct.hci_uart, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %serdev.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %serdev.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %54, null
  br i1 %tobool4.not.i.i, label %land.lhs.true2.i.i.for.cond.i.i.preheader_crit_edge, label %land.lhs.true2.i.i.if.end.i_crit_edge

land.lhs.true2.i.i.if.end.i_crit_edge:            ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true2.i.i.for.cond.i.i.preheader_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i.preheader

for.cond.i.i.preheader:                           ; preds = %land.lhs.true2.i.i.for.cond.i.i.preheader_crit_edge, %land.lhs.true.i.i.for.cond.i.i.preheader_crit_edge, %if.end74.for.cond.i.i.preheader_crit_edge
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %for.cond.i.i.preheader
  %p.0.in.i.i = phi ptr [ %p.0.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ], [ @bcm_device_list, %for.cond.i.i.preheader ]
  %55 = ptrtoint ptr %p.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %p.0.i.i = load ptr, ptr %p.0.in.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %p.0.i.i, @bcm_device_list
  %add.ptr.i.i = getelementptr i8, ptr %p.0.i.i, i32 -296
  %cmp.i.i = icmp eq ptr %add.ptr.i.i, %50
  %or.cond.i.i = or i1 %cmp.i.not.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %bcm_device_exists.exit.i, label %for.cond.i.i.for.cond.i.i_crit_edge

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

bcm_device_exists.exit.i:                         ; preds = %for.cond.i.i
  br i1 %cmp.i.not.i.i, label %bcm_device_exists.exit.i.bcm_request_irq.exit.thread_crit_edge, label %bcm_device_exists.exit.i.if.end.i_crit_edge

bcm_device_exists.exit.i.if.end.i_crit_edge:      ; preds = %bcm_device_exists.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

bcm_device_exists.exit.i.bcm_request_irq.exit.thread_crit_edge: ; preds = %bcm_device_exists.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm_request_irq.exit.thread

if.end.i:                                         ; preds = %bcm_device_exists.exit.i.if.end.i_crit_edge, %land.lhs.true2.i.i.if.end.i_crit_edge
  %irq.i = getelementptr inbounds %struct.bcm_device, ptr %50, i32 0, i32 15
  %56 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp.i = icmp slt i32 %57, 1
  br i1 %cmp.i, label %if.end.i.bcm_request_irq.exit.thread_crit_edge, label %if.end2.i

if.end.i.bcm_request_irq.exit.thread_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm_request_irq.exit.thread

if.end2.i:                                        ; preds = %if.end.i
  %dev3.i = getelementptr inbounds %struct.bcm_device, ptr %50, i32 0, i32 2
  %58 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev3.i, align 4
  %irq_active_low.i = getelementptr inbounds %struct.bcm_device, ptr %50, i32 0, i32 16
  %60 = ptrtoint ptr %irq_active_low.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %irq_active_low.i, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i133 = icmp eq i8 %61, 0
  %cond.i = select i1 %tobool.not.i133, i32 1, i32 2
  %call.i.i = call i32 @devm_request_threaded_irq(ptr noundef %59, i32 noundef %57, ptr noundef nonnull @bcm_host_wake, ptr noundef null, i32 noundef %cond.i, ptr noundef nonnull @.str.58, ptr noundef %50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool6.not.i, label %if.then78, label %if.then7.i

if.then7.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call.i.i, ptr %irq.i, align 4
  br label %bcm_request_irq.exit.thread

bcm_request_irq.exit.thread:                      ; preds = %if.then7.i, %if.end.i.bcm_request_irq.exit.thread_crit_edge, %bcm_device_exists.exit.i.bcm_request_irq.exit.thread_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @bcm_device_lock) #7
  br label %cleanup

if.then78:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  %irq_acquired.i = getelementptr inbounds %struct.bcm_device, ptr %50, i32 0, i32 17
  %63 = ptrtoint ptr %irq_acquired.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %irq_acquired.i, align 1
  %64 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev3.i, align 4
  %call11.i = call i32 @device_init_wakeup(ptr noundef %65, i1 noundef zeroext true) #7
  %66 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev3.i, align 4
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %67, i32 noundef 5000) #7
  %68 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev3.i, align 4
  call void @__pm_runtime_use_autosuspend(ptr noundef %69, i1 noundef zeroext true) #7
  %70 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev3.i, align 4
  %call.i31.i = call i32 @__pm_runtime_set_status(ptr noundef %71, i32 noundef 0) #7
  %72 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev3.i, align 4
  call void @pm_runtime_enable(ptr noundef %73) #7
  call void @mutex_unlock(ptr noundef nonnull @bcm_device_lock) #7
  %call79 = call fastcc i32 @bcm_setup_sleep(ptr noundef %hu)
  br label %cleanup

cleanup:                                          ; preds = %if.then78, %bcm_request_irq.exit.thread, %if.end69.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %do.end.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ %call71, %if.end69.cleanup_crit_edge ], [ %call79, %if.then78 ], [ 0, %bcm_request_irq.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fw_load_done) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_set_baudrate(ptr nocapture noundef readonly %hu, i32 noundef %speed) #2 align 64 {
entry:
  %param = alloca %struct.bcm_update_uart_baud_rate, align 2
  %clock = alloca %struct.bcm_write_uart_clock_setting, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %param) #7
  %2 = getelementptr inbounds %struct.bcm_update_uart_baud_rate, ptr %param, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %speed)
  %cmp = icmp ugt i32 %speed, 3000000
  br i1 %cmp, label %if.then, label %entry.do.body15_crit_edge

entry.do.body15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body15

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %clock) #7
  %3 = ptrtoint ptr %clock to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %clock, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_set_baudrate.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_set_baudrate, %if.then4)) #7
          to label %do.end [label %if.then4], !srcloc !192

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %clock to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %clock, align 1
  %conv = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bcm_set_baudrate.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.65, ptr noundef %name, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then4, %if.then
  %call7 = call ptr @__hci_cmd_sync(ptr noundef %1, i16 noundef zeroext -955, i32 noundef 1, ptr noundef nonnull %clock, i32 noundef 1000) #7
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call7 to i32
  %name11 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.66, ptr noundef %name11, i32 noundef %6) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %clock) #7
  br label %cleanup43

cleanup:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree_skb_reason(ptr noundef %call7, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %clock) #7
  br label %do.body15

do.body15:                                        ; preds = %cleanup, %entry.do.body15_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_set_baudrate.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_set_baudrate, %if.then27)) #7
          to label %do.end32 [label %if.then27], !srcloc !192

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  %name28 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bcm_set_baudrate.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.67, ptr noundef %name28, i32 noundef %speed) #7
  br label %do.end32

do.end32:                                         ; preds = %if.then27, %do.body15
  %7 = ptrtoint ptr %param to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %param, align 2
  %8 = call i32 @llvm.bswap.i32(i32 %speed)
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %2, align 2
  %call34 = call ptr @__hci_cmd_sync(ptr noundef %1, i16 noundef zeroext -1000, i32 noundef 6, ptr noundef nonnull %param, i32 noundef 1000) #7
  %cmp.i63 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i63, label %if.then36, label %if.end42

if.then36:                                        ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call34 to i32
  %name39 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.68, ptr noundef %name39, i32 noundef %10) #7
  br label %cleanup43

if.end42:                                         ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree_skb_reason(ptr noundef %call34, i32 noundef 0) #7
  br label %cleanup43

cleanup43:                                        ; preds = %if.end42, %if.then36, %cleanup.thread
  %retval.1 = phi i32 [ %10, %if.then36 ], [ 0, %if.end42 ], [ %6, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %param) #7
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_recv(ptr noundef %hu, ptr noundef %data, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %5 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hdev, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call1 = tail call ptr @h4_recv_buf(ptr noundef %6, ptr noundef %8, ptr noundef %data, i32 noundef %count, ptr noundef nonnull @bcm_recv_pkts, i32 noundef 8) #7
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call1, ptr %1, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call1 to i32
  %11 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %12, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.69, ptr noundef %name, i32 noundef %10) #7
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %1, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  %tobool11.not = icmp eq ptr %call1, null
  br i1 %tobool11.not, label %if.then12, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then12:                                        ; preds = %if.else
  tail call void @mutex_lock_nested(ptr noundef nonnull @bcm_device_lock, i32 noundef 0) #7
  %dev = getelementptr inbounds %struct.bcm_data, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %tobool13.not = icmp eq ptr %15, null
  br i1 %tobool13.not, label %if.then12.if.end25_crit_edge, label %land.lhs.true.i

if.then12.if.end25_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

land.lhs.true.i:                                  ; preds = %if.then12
  %hu.i = getelementptr inbounds %struct.bcm_device, ptr %15, i32 0, i32 18
  %16 = ptrtoint ptr %hu.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hu.i, align 4
  %tobool1.not.i = icmp eq ptr %17, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.for.cond.i.preheader_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.for.cond.i.preheader_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.preheader

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %serdev.i = getelementptr inbounds %struct.hci_uart, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %serdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %serdev.i, align 4
  %tobool4.not.i = icmp eq ptr %19, null
  br i1 %tobool4.not.i, label %land.lhs.true2.i.for.cond.i.preheader_crit_edge, label %land.lhs.true2.i.if.then16_crit_edge

land.lhs.true2.i.if.then16_crit_edge:             ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

land.lhs.true2.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %land.lhs.true2.i.for.cond.i.preheader_crit_edge, %land.lhs.true.i.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %p.0.in.i = phi ptr [ %p.0.i, %for.cond.i.for.cond.i_crit_edge ], [ @bcm_device_list, %for.cond.i.preheader ]
  %20 = ptrtoint ptr %p.0.in.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %p.0.i = load ptr, ptr %p.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %p.0.i, @bcm_device_list
  %add.ptr.i = getelementptr i8, ptr %p.0.i, i32 -296
  %cmp.i43 = icmp eq ptr %add.ptr.i, %15
  %or.cond.i = or i1 %cmp.i.not.i, %cmp.i43
  br i1 %or.cond.i, label %bcm_device_exists.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

bcm_device_exists.exit:                           ; preds = %for.cond.i
  br i1 %cmp.i.not.i, label %bcm_device_exists.exit.if.end25_crit_edge, label %bcm_device_exists.exit.if.then16_crit_edge

bcm_device_exists.exit.if.then16_crit_edge:       ; preds = %bcm_device_exists.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

bcm_device_exists.exit.if.end25_crit_edge:        ; preds = %bcm_device_exists.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then16:                                        ; preds = %bcm_device_exists.exit.if.then16_crit_edge, %land.lhs.true2.i.if.then16_crit_edge
  %dev18 = getelementptr inbounds %struct.bcm_device, ptr %15, i32 0, i32 2
  %21 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev18, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %22, i32 noundef 5) #7
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %dev21 = getelementptr inbounds %struct.bcm_device, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev21, align 4
  %call.i44 = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 12, i32 22
  %27 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store volatile i64 %call.i44, ptr %last_busy.i, align 8
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %dev23 = getelementptr inbounds %struct.bcm_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev23, align 4
  %call.i45 = tail call i32 @__pm_runtime_suspend(ptr noundef %31, i32 noundef 13) #7
  br label %if.end25

if.end25:                                         ; preds = %if.then16, %bcm_device_exists.exit.if.end25_crit_edge, %if.then12.if.end25_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @bcm_device_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.else.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then5 ], [ -49, %entry.cleanup_crit_edge ], [ %count, %if.else.cleanup_crit_edge ], [ %count, %if.end25 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_enqueue(ptr noundef %hu, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_enqueue.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_enqueue, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !192

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %2 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bcm_enqueue.__UNIQUE_ID_ddebug488, ptr noundef nonnull @.str.71, ptr noundef %name, ptr noundef %hu, ptr noundef %skb) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #7
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %4 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cb, align 8
  %6 = ptrtoint ptr %call3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %call3, align 1
  %txq = getelementptr inbounds %struct.bcm_data, ptr %1, i32 0, i32 1
  tail call void @skb_queue_tail(ptr noundef %txq, ptr noundef %skb) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bcm_dequeue(ptr nocapture noundef readonly %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @bcm_device_lock, i32 noundef 0) #7
  %dev = getelementptr inbounds %struct.bcm_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.for.cond.i.preheader_crit_edge, label %land.lhs.true.i

entry.for.cond.i.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.preheader

land.lhs.true.i:                                  ; preds = %entry
  %hu.i = getelementptr inbounds %struct.bcm_device, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %hu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hu.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.for.cond.i.preheader_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.for.cond.i.preheader_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.preheader

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %serdev.i = getelementptr inbounds %struct.hci_uart, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %serdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %serdev.i, align 4
  %tobool4.not.i = icmp eq ptr %7, null
  br i1 %tobool4.not.i, label %land.lhs.true2.i.for.cond.i.preheader_crit_edge, label %land.lhs.true2.i.if.end_crit_edge

land.lhs.true2.i.if.end_crit_edge:                ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true2.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %land.lhs.true2.i.for.cond.i.preheader_crit_edge, %land.lhs.true.i.for.cond.i.preheader_crit_edge, %entry.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %p.0.in.i = phi ptr [ %p.0.i, %for.cond.i.for.cond.i_crit_edge ], [ @bcm_device_list, %for.cond.i.preheader ]
  %8 = ptrtoint ptr %p.0.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %p.0.i = load ptr, ptr %p.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %p.0.i, @bcm_device_list
  %add.ptr.i = getelementptr i8, ptr %p.0.i, i32 -296
  %cmp.i = icmp eq ptr %add.ptr.i, %3
  %or.cond.i = or i1 %cmp.i.not.i, %cmp.i
  br i1 %or.cond.i, label %bcm_device_exists.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

bcm_device_exists.exit:                           ; preds = %for.cond.i
  br i1 %cmp.i.not.i, label %if.end.thread, label %bcm_device_exists.exit.if.end_crit_edge

bcm_device_exists.exit.if.end_crit_edge:          ; preds = %bcm_device_exists.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.thread:                                    ; preds = %bcm_device_exists.exit
  call void @__sanitizer_cov_trace_pc() #9
  %txq19 = getelementptr inbounds %struct.bcm_data, ptr %1, i32 0, i32 1
  %call420 = tail call ptr @skb_dequeue(ptr noundef %txq19) #7
  br label %if.end9

if.end:                                           ; preds = %bcm_device_exists.exit.if.end_crit_edge, %land.lhs.true2.i.if.end_crit_edge
  %dev2 = getelementptr inbounds %struct.bcm_device, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev2, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #7
  %txq = getelementptr inbounds %struct.bcm_data, ptr %1, i32 0, i32 1
  %call4 = tail call ptr @skb_dequeue(ptr noundef %txq) #7
  br i1 %tobool.not.i, label %if.end.if.end9_crit_edge, label %if.then5

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev2, align 4
  %call.i15 = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 12, i32 22
  %13 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store volatile i64 %call.i15, ptr %last_busy.i, align 8
  %14 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev2, align 4
  %call.i16 = tail call i32 @__pm_runtime_suspend(ptr noundef %15, i32 noundef 13) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge, %if.end.thread
  %call422 = phi ptr [ %call420, %if.end.thread ], [ %call4, %if.then5 ], [ %call4, %if.end.if.end9_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @bcm_device_lock) #7
  ret ptr %call422
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hci_uart_has_flow_control(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_set_diag(ptr noundef %hdev, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %flags = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 11, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %7 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %9 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %10, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 1) #7
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 7, ptr %call.i, align 1
  %call.i16 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 1) #7
  %12 = ptrtoint ptr %call.i16 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -16, ptr %call.i16, align 1
  %call.i17 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 1) #7
  %13 = ptrtoint ptr %call.i17 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool, ptr %call.i17, align 1
  %txq = getelementptr inbounds %struct.bcm_data, ptr %3, i32 0, i32 1
  tail call void @skb_queue_tail(ptr noundef %txq, ptr noundef nonnull %call.i.i) #7
  %call7 = tail call i32 @hci_uart_tx_wakeup(ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -100, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btbcm_set_bdaddr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btbcm_initialize(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btbcm_read_pcm_int_params(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btbcm_write_pcm_int_params(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btbcm_finalize(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_setup_sleep(ptr nocapture noundef readonly %hu) unnamed_addr #2 align 64 {
entry:
  %sleep_params = alloca %struct.bcm_set_sleep_mode, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sleep_params) #7
  %2 = getelementptr inbounds %struct.bcm_set_sleep_mode, ptr %sleep_params, i32 0, i32 4
  %3 = call ptr @memcpy(ptr %sleep_params, ptr @default_sleep_params, i32 12)
  %dev = getelementptr inbounds %struct.bcm_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %irq_active_low = getelementptr inbounds %struct.bcm_device, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %irq_active_low to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %irq_active_low, align 4, !range !193
  %8 = xor i8 %7, 1
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %2, align 1
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %10 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hdev, align 4
  %call1 = call ptr @__hci_cmd_sync(ptr noundef %11, i16 noundef zeroext -985, i32 noundef 12, ptr noundef nonnull %sleep_params, i32 noundef 1000) #7
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %call1 to i32
  %13 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.61, ptr noundef %name, i32 noundef %12) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree_skb_reason(ptr noundef %call1, i32 noundef 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_setup_sleep.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_setup_sleep, %if.then12)) #7
          to label %cleanup [label %if.then12], !srcloc !192

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hdev, align 4
  %name14 = getelementptr inbounds %struct.hci_dev, ptr %16, i32 0, i32 2
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bcm_setup_sleep.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.63, ptr noundef %name14) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end, %if.then
  %retval.0 = phi i32 [ %12, %if.then ], [ 0, %if.then12 ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sleep_params) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_tx_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_set_baudrate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_uart_set_baudrate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_host_wake(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_host_wake.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_host_wake, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !192

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.bcm_device, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bcm_host_wake.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.60, ptr noundef %1) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev = getelementptr inbounds %struct.bcm_device, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 5) #7
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i10 = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 22
  %6 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store volatile i64 %call.i10, ptr %last_busy.i, align 8
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %call.i11 = tail call i32 @__pm_runtime_suspend(ptr noundef %8, i32 noundef 13) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__hci_cmd_sync(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @h4_recv_buf(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_recv_frame(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_recv_diag(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43, !44, !46, !47, !48, !50, !52, !54, !56, !58, !59, !60, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !76, !77, !78, !80, !81, !83, !84, !85, !87, !88, !90, !91, !92, !94, !95, !97, !98, !100, !101, !102, !104, !105, !107, !109, !111, !113, !115, !117, !118, !119, !120, !121, !123, !124, !126, !128, !130, !132, !134, !135, !136, !138, !139, !141, !142, !144, !146, !147, !149, !150, !152, !154, !155, !156, !158, !160, !161, !162, !164, !166, !167, !168, !170, !172, !173, !175, !177, !179, !181, !182}
!llvm.module.flags = !{!183, !184, !185, !186, !187, !188, !189, !190}
!llvm.ident = !{!191}

!0 = !{ptr @__param_irq_polarity, !1, !"__param_irq_polarity", i1 false, i1 false}
!1 = !{!"../drivers/bluetooth/hci_bcm.c", i32 154, i32 1}
!2 = !{ptr @__UNIQUE_ID_irq_polaritytype478, !1, !"__UNIQUE_ID_irq_polaritytype478", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_irq_polarity479, !4, !"__UNIQUE_ID_irq_polarity479", i1 false, i1 false}
!4 = !{!"../drivers/bluetooth/hci_bcm.c", i32 155, i32 1}
!5 = !{ptr @__param_str_irq_polarity, !1, !"__param_str_irq_polarity", i1 false, i1 false}
!6 = !{ptr @irq_polarity, !7, !"irq_polarity", i1 false, i1 false}
!7 = !{!"../drivers/bluetooth/hci_bcm.c", i32 153, i32 12}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/bluetooth/hci_bcm.c", i32 1438, i32 11}
!10 = !{ptr @bcm_driver, !11, !"bcm_driver", i1 false, i1 false}
!11 = !{!"../drivers/bluetooth/hci_bcm.c", i32 1434, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/bluetooth/hci_bcm.c", i32 1213, i32 2}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @bcm_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @bcm_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/bluetooth/hci_bcm.c", i32 1222, i32 3}
!22 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @bcm_probe._entry.6, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @bcm_probe._entry_ptr.9, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/bluetooth/hci_bcm.c", i32 1048, i32 40}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/bluetooth/hci_bcm.c", i32 1061, i32 57}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/bluetooth/hci_bcm.c", i32 1066, i32 52}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/bluetooth/hci_bcm.c", i32 1071, i32 49}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/bluetooth/hci_bcm.c", i32 1079, i32 28}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/bluetooth/hci_bcm.c", i32 1080, i32 28}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/bluetooth/hci_bcm.c", i32 1090, i32 44}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/bluetooth/hci_bcm.c", i32 1100, i32 3}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @bcm_get_resources._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @bcm_get_resources._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/bluetooth/hci_bcm.c", i32 1105, i32 2}
!46 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @bcm_get_resources.__UNIQUE_ID_ddebug497, !45, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/bluetooth/hci_bcm.c", i32 1015, i32 26}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/bluetooth/hci_bcm.c", i32 1020, i32 26}
!52 = distinct !{null, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/bluetooth/hci_bcm.c", i32 875, i32 12}
!54 = distinct !{null, !55, !"bcm_broken_irq_dmi_table", i1 false, i1 false}
!55 = !{!"../drivers/bluetooth/hci_bcm.c", i32 873, i32 35}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/bluetooth/hci_bcm.c", i32 150, i32 8}
!58 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @bcm_device_lock, !57, !"bcm_device_lock", i1 false, i1 false}
!60 = !{ptr @bcm_device_list, !61, !"bcm_device_list", i1 false, i1 false}
!61 = !{!"../drivers/bluetooth/hci_bcm.c", i32 151, i32 8}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/bluetooth/hci_bcm.c", i32 253, i32 4}
!64 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @bcm_gpio_set_power._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @bcm_gpio_set_power._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/bluetooth/hci_bcm.c", i32 1235, i32 2}
!69 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @bcm_remove._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @bcm_remove._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @bcm_pm_ops, !73, !"bcm_pm_ops", i1 false, i1 false}
!73 = !{!"../drivers/bluetooth/hci_bcm.c", i32 1429, i32 32}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/bluetooth/hci_bcm.c", i32 805, i32 2}
!76 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @bcm_suspend.__UNIQUE_ID_ddebug493, !75, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/bluetooth/hci_bcm.c", i32 824, i32 4}
!80 = !{ptr @bcm_suspend.__UNIQUE_ID_ddebug494, !79, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/bluetooth/hci_bcm.c", i32 839, i32 2}
!83 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @bcm_resume.__UNIQUE_ID_ddebug495, !82, !"__UNIQUE_ID_ddebug495", i1 false, i1 false}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/bluetooth/hci_bcm.c", i32 854, i32 3}
!87 = !{ptr @bcm_resume.__UNIQUE_ID_ddebug496, !86, !"__UNIQUE_ID_ddebug496", i1 false, i1 false}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/bluetooth/hci_bcm.c", i32 746, i32 2}
!90 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @bcm_suspend_device.__UNIQUE_ID_ddebug489, !89, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/bluetooth/hci_bcm.c", i32 765, i32 2}
!94 = !{ptr @bcm_suspend_device.__UNIQUE_ID_ddebug490, !93, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/bluetooth/hci_bcm.c", i32 776, i32 2}
!97 = !{ptr @bcm_resume_device.__UNIQUE_ID_ddebug491, !96, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/bluetooth/hci_bcm.c", i32 780, i32 3}
!100 = !{ptr @bcm_resume_device._entry, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @bcm_resume_device._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/bluetooth/hci_bcm.c", i32 784, i32 2}
!104 = !{ptr @bcm_resume_device.__UNIQUE_ID_ddebug492, !103, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!105 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/bluetooth/hci_bcm.c", i32 1528, i32 11}
!107 = !{ptr @bcm_serdev_driver, !108, !"bcm_serdev_driver", i1 false, i1 false}
!108 = !{!"../drivers/bluetooth/hci_bcm.c", i32 1524, i32 36}
!109 = !{ptr @bcm_bluetooth_of_match, !110, !"bcm_bluetooth_of_match", i1 false, i1 false}
!110 = !{!"../drivers/bluetooth/hci_bcm.c", i32 1510, i32 34}
!111 = !{ptr @bcm43438_device_data, !112, !"bcm43438_device_data", i1 false, i1 false}
!112 = !{!"../drivers/bluetooth/hci_bcm.c", i32 1506, i32 31}
!113 = !{ptr @bcm4354_device_data, !114, !"bcm4354_device_data", i1 false, i1 false}
!114 = !{!"../drivers/bluetooth/hci_bcm.c", i32 1502, i32 31}
!115 = !{ptr @.str.43, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/bluetooth/hci_bcm.c", i32 1476, i32 3}
!117 = !{ptr @.str.44, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.45, !116, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @bcm_serdev_probe._entry, !116, !"_entry", i1 false, i1 false}
!120 = !{ptr @bcm_serdev_probe._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @bcm_serdev_probe._entry.46, !122, !"_entry", i1 false, i1 false}
!122 = !{!"../drivers/bluetooth/hci_bcm.c", i32 1483, i32 3}
!123 = !{ptr @bcm_serdev_probe._entry_ptr.47, !122, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.48, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/bluetooth/hci_bcm.c", i32 1172, i32 38}
!126 = !{ptr @.str.49, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/bluetooth/hci_bcm.c", i32 1173, i32 43}
!128 = !{ptr @.str.50, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/bluetooth/hci_bcm.c", i32 1242, i32 11}
!130 = !{ptr @bcm_proto, !131, !"bcm_proto", i1 false, i1 false}
!131 = !{!"../drivers/bluetooth/hci_bcm.c", i32 1240, i32 36}
!132 = !{ptr @.str.51, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/bluetooth/hci_bcm.c", i32 433, i32 2}
!134 = !{ptr @.str.52, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @bcm_open.__UNIQUE_ID_ddebug484, !133, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!136 = !{ptr @skb_queue_head_init.__key, !137, !"__key", i1 false, i1 false}
!137 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!138 = !{ptr @.str.53, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.54, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/bluetooth/hci_bcm.c", i32 514, i32 2}
!141 = !{ptr @bcm_close.__UNIQUE_ID_ddebug485, !140, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!142 = !{ptr @.str.55, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/bluetooth/hci_bcm.c", i32 537, i32 4}
!144 = !{ptr @.str.56, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/bluetooth/hci_bcm.c", i32 555, i32 2}
!146 = !{ptr @bcm_flush.__UNIQUE_ID_ddebug486, !145, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!147 = !{ptr @.str.57, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/bluetooth/hci_bcm.c", i32 569, i32 2}
!149 = !{ptr @bcm_setup.__UNIQUE_ID_ddebug487, !148, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!150 = !{ptr @.str.58, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/bluetooth/hci_bcm.c", i32 340, i32 11}
!152 = !{ptr @.str.59, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/bluetooth/hci_bcm.c", i32 312, i32 2}
!154 = !{ptr @.str.60, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @bcm_host_wake.__UNIQUE_ID_ddebug482, !153, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!156 = !{ptr @.str.61, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/bluetooth/hci_bcm.c", i32 390, i32 3}
!158 = !{ptr @.str.62, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/bluetooth/hci_bcm.c", i32 395, i32 2}
!160 = !{ptr @.str.63, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @bcm_setup_sleep.__UNIQUE_ID_ddebug483, !159, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!162 = !{ptr @default_sleep_params, !163, !"default_sleep_params", i1 false, i1 false}
!163 = !{!"../drivers/bluetooth/hci_bcm.c", i32 362, i32 40}
!164 = !{ptr @.str.64, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/bluetooth/hci_bcm.c", i32 176, i32 3}
!166 = !{ptr @.str.65, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @bcm_set_baudrate.__UNIQUE_ID_ddebug480, !165, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!168 = !{ptr @.str.66, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/bluetooth/hci_bcm.c", i32 184, i32 4}
!170 = !{ptr @.str.67, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/bluetooth/hci_bcm.c", i32 192, i32 2}
!172 = !{ptr @bcm_set_baudrate.__UNIQUE_ID_ddebug481, !171, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!173 = !{ptr @.str.68, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/bluetooth/hci_bcm.c", i32 204, i32 3}
!175 = !{ptr @.str.69, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/bluetooth/hci_bcm.c", i32 684, i32 3}
!177 = !{ptr @bcm_recv_pkts, !178, !"bcm_recv_pkts", i1 false, i1 false}
!178 = !{!"../drivers/bluetooth/hci_bcm.c", i32 662, i32 33}
!179 = !{ptr @.str.70, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/bluetooth/hci_bcm.c", i32 705, i32 2}
!181 = !{ptr @.str.71, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @bcm_enqueue.__UNIQUE_ID_ddebug488, !180, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!183 = !{i32 1, !"wchar_size", i32 2}
!184 = !{i32 1, !"min_enum_size", i32 4}
!185 = !{i32 8, !"branch-target-enforcement", i32 0}
!186 = !{i32 8, !"sign-return-address", i32 0}
!187 = !{i32 8, !"sign-return-address-all", i32 0}
!188 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!189 = !{i32 7, !"uwtable", i32 1}
!190 = !{i32 7, !"frame-pointer", i32 2}
!191 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!192 = !{i64 2148726219, i64 2148726224, i64 2148726237, i64 2148726281, i64 2148726315, i64 2148726336}
!193 = !{i8 0, i8 2}
