; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/tegra-tcu.c_pt.bc'
source_filename = "../drivers/tty/serial/tegra-tcu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.tegra_tcu = type { %struct.uart_driver, %struct.console, %struct.uart_port, %struct.mbox_client, %struct.mbox_client, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.mbox_client = type { ptr, i8, i32, i8, ptr, ptr, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.35, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.35 = type { ptr }
%struct.llist_head = type { ptr }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.circ_buf = type { ptr, i32, i32 }

@__initcall__kmod_tegra_tcu__227_299_tegra_tcu_driver_init6 = internal global ptr @tegra_tcu_driver_init, section ".initcall6.init", align 4
@tegra_tcu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_tcu_probe, ptr @tegra_tcu_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_tcu_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra_tcu_driver_exit = internal global ptr @tegra_tcu_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author228 = internal constant [57 x i8] c"tegra_tcu.author=Mikko Perttunen <mperttunen@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [44 x i8] c"tegra_tcu.file=drivers/tty/serial/tegra-tcu\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [25 x i8] c"tegra_tcu.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [56 x i8] c"tegra_tcu.description=NVIDIA Tegra Combined UART driver\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tegra-tcu\00", [22 x i8] zeroinitializer }, align 32
@tegra_tcu_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-tcu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@tegra_tcu_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 194, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get tx mailbox: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tegra_tcu_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/tty/serial/tegra-tcu.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_tcu_probe._entry_ptr = internal global ptr @tegra_tcu_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ttyTCU\00", [25 x i8] zeroinitializer }, align 32
@tegra_tcu_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 221, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to register UART driver: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@tegra_tcu_probe._entry_ptr.10 = internal global ptr @tegra_tcu_probe._entry.8, section ".printk_index", align 4
@tegra_tcu_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&port->lock\00", [20 x i8] zeroinitializer }, align 32
@tegra_tcu_uart_ops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @tegra_tcu_uart_tx_empty, ptr @tegra_tcu_uart_set_mctrl, ptr @tegra_tcu_uart_get_mctrl, ptr @tegra_tcu_uart_stop_tx, ptr @tegra_tcu_uart_start_tx, ptr null, ptr null, ptr null, ptr @tegra_tcu_uart_stop_rx, ptr null, ptr @tegra_tcu_uart_break_ctl, ptr @tegra_tcu_uart_startup, ptr @tegra_tcu_uart_shutdown, ptr null, ptr @tegra_tcu_uart_set_termios, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@tegra_tcu_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 238, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to add UART port: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@tegra_tcu_probe._entry_ptr.14 = internal global ptr @tegra_tcu_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@tegra_tcu_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 249, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get rx mailbox: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_tcu_probe._entry_ptr.18 = internal global ptr @tegra_tcu_probe._entry.16, section ".printk_index", align 4
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"tegra_tcu_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 291, i32 31 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 293, i32 11 }
@___asan_gen_.25 = private unnamed_addr constant [16 x i8] c"tegra_tcu_match\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 285, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 191, i32 57 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 194, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 200, i32 28 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 220, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 227, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [19 x i8] c"tegra_tcu_uart_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 133, i32 30 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 238, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 246, i32 57 }
@___asan_gen_.76 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [34 x i8] c"../drivers/tty/serial/tegra-tcu.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 249, i32 3 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_tegra_tcu_driver_exit, ptr @__initcall__kmod_tegra_tcu__227_299_tegra_tcu_driver_init6, ptr @tegra_tcu_driver_exit, ptr @tegra_tcu_probe._entry, ptr @tegra_tcu_probe._entry.12, ptr @tegra_tcu_probe._entry.16, ptr @tegra_tcu_probe._entry.8, ptr @tegra_tcu_probe._entry_ptr, ptr @tegra_tcu_probe._entry_ptr.10, ptr @tegra_tcu_probe._entry_ptr.14, ptr @tegra_tcu_probe._entry_ptr.18, ptr @tegra_tcu_driver, ptr @.str, ptr @tegra_tcu_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @tegra_tcu_probe.__key, ptr @.str.11, ptr @tegra_tcu_uart_ops, ptr @.str.13, ptr @.str.15, ptr @.str.17], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_tcu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_tcu_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_tcu_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_tcu_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_tcu_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_tcu_uart_ops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_tcu_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_tcu_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_tcu_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_tcu_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra_tcu_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_tcu_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_tcu_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 528, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_client = getelementptr inbounds %struct.tegra_tcu, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %tx_client to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %tx_client, align 4
  %rx_client = getelementptr inbounds %struct.tegra_tcu, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %rx_client to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %rx_client, align 4
  %rx_callback = getelementptr inbounds %struct.tegra_tcu, ptr %call.i, i32 0, i32 4, i32 4
  %2 = ptrtoint ptr %rx_callback to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @tegra_tcu_receive, ptr %rx_callback, align 4
  %call7 = tail call ptr @mbox_request_channel_byname(ptr noundef %tx_client, ptr noundef nonnull @.str.1) #6
  %tx = getelementptr inbounds %struct.tegra_tcu, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7, ptr %tx, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %4) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %console = getelementptr inbounds %struct.tegra_tcu, ptr %call.i, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %console, ptr @.str.7, i32 7)
  %device = getelementptr inbounds %struct.tegra_tcu, ptr %call.i, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @uart_console_device, ptr %device, align 4
  %flags = getelementptr inbounds %struct.tegra_tcu, ptr %call.i, i32 0, i32 1, i32 8
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 17, ptr %flags, align 4
  %index = getelementptr inbounds %struct.tegra_tcu, ptr %call.i, i32 0, i32 1, i32 9
  %8 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %index, align 2
  %write = getelementptr inbounds %struct.tegra_tcu, ptr %call.i, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @tegra_tcu_console_write, ptr %write, align 4
  %setup = getelementptr inbounds %struct.tegra_tcu, ptr %call.i, i32 0, i32 1, i32 5
  %10 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @tegra_tcu_console_setup, ptr %setup, align 4
  %data = getelementptr inbounds %struct.tegra_tcu, ptr %call.i, i32 0, i32 1, i32 13
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %data, align 4
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %call.i, align 4
  %driver_name = getelementptr inbounds %struct.uart_driver, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str, ptr %driver_name, align 4
  %dev_name = getelementptr inbounds %struct.uart_driver, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %dev_name to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.7, ptr %dev_name, align 4
  %cons = getelementptr inbounds %struct.uart_driver, ptr %call.i, i32 0, i32 6
  %15 = ptrtoint ptr %cons to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %console, ptr %cons, align 4
  %nr = getelementptr inbounds %struct.uart_driver, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %nr, align 4
  %call29 = tail call i32 @uart_register_driver(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end36, label %do.end34

do.end34:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call29) #9
  br label %free_tx

if.end36:                                         ; preds = %if.end14
  %port37 = getelementptr inbounds %struct.tegra_tcu, ptr %call.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %port37, ptr noundef nonnull @.str.11, ptr noundef nonnull @tegra_tcu_probe.__key, i16 noundef signext 3) #6
  %dev43 = getelementptr inbounds %struct.tegra_tcu, ptr %call.i, i32 0, i32 2, i32 45
  %17 = ptrtoint ptr %dev43 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %dev43, align 4
  %type = getelementptr inbounds %struct.tegra_tcu, ptr %call.i, i32 0, i32 2, i32 38
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 41, ptr %type, align 4
  %ops = getelementptr inbounds %struct.tegra_tcu, ptr %call.i, i32 0, i32 2, i32 39
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @tegra_tcu_uart_ops, ptr %ops, align 4
  %fifosize = getelementptr inbounds %struct.tegra_tcu, ptr %call.i, i32 0, i32 2, i32 23
  %20 = ptrtoint ptr %fifosize to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %fifosize, align 4
  %iotype = getelementptr inbounds %struct.tegra_tcu, ptr %call.i, i32 0, i32 2, i32 26
  %21 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %iotype, align 2
  %flags44 = getelementptr inbounds %struct.tegra_tcu, ptr %call.i, i32 0, i32 2, i32 33
  %22 = ptrtoint ptr %flags44 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 268435456, ptr %flags44, align 4
  %private_data = getelementptr inbounds %struct.tegra_tcu, ptr %call.i, i32 0, i32 2, i32 59
  %23 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %private_data, align 4
  %call46 = tail call i32 @uart_add_one_port(ptr noundef nonnull %call.i, ptr noundef %port37) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end53, label %do.end51

do.end51:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call46) #9
  br label %unregister_uart

if.end53:                                         ; preds = %if.end36
  %call55 = tail call ptr @mbox_request_channel_byname(ptr noundef %rx_client, ptr noundef nonnull @.str.15) #6
  %rx = getelementptr inbounds %struct.tegra_tcu, ptr %call.i, i32 0, i32 6
  %24 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call55, ptr %rx, align 4
  %cmp.i132 = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i132, label %if.then58, label %if.end65

if.then58:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %call55 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %25) #9
  %call69 = tail call i32 @uart_remove_one_port(ptr noundef nonnull %call.i, ptr noundef %port37) #6
  br label %unregister_uart

if.end65:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @register_console(ptr noundef %console) #6
  br label %cleanup

unregister_uart:                                  ; preds = %if.then58, %do.end51
  %err.0 = phi i32 [ %call46, %do.end51 ], [ %25, %if.then58 ]
  tail call void @uart_unregister_driver(ptr noundef nonnull %call.i) #6
  br label %free_tx

free_tx:                                          ; preds = %unregister_uart, %do.end34
  %err.1 = phi i32 [ %call29, %do.end34 ], [ %err.0, %unregister_uart ]
  %27 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tx, align 4
  tail call void @mbox_free_channel(ptr noundef %28) #6
  br label %cleanup

cleanup:                                          ; preds = %free_tx, %if.end65, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then10 ], [ %err.1, %free_tx ], [ 0, %if.end65 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_tcu_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %console = getelementptr inbounds %struct.tegra_tcu, ptr %1, i32 0, i32 1
  %call1 = tail call i32 @unregister_console(ptr noundef %console) #6
  %rx = getelementptr inbounds %struct.tegra_tcu, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx, align 4
  tail call void @mbox_free_channel(ptr noundef %3) #6
  %port = getelementptr inbounds %struct.tegra_tcu, ptr %1, i32 0, i32 2
  %call2 = tail call i32 @uart_remove_one_port(ptr noundef %1, ptr noundef %port) #6
  tail call void @uart_unregister_driver(ptr noundef %1) #6
  %tx = getelementptr inbounds %struct.tegra_tcu, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx, align 4
  tail call void @mbox_free_channel(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_tcu_receive(ptr nocapture noundef readonly %cl, ptr noundef %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr i8, ptr %cl, i32 -240
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %2 = ptrtoint ptr %msg to i32
  %shr = lshr i32 %2, 24
  %and = and i32 %shr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp9.not = icmp eq i32 %and, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tail.i = getelementptr inbounds %struct.tty_bufhead, ptr %1, i32 0, i32 8
  %conv = trunc i32 %2 to i8
  %3 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tail.i, align 4
  %used.i = getelementptr inbounds %struct.tty_buffer, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %used.i, align 4
  %size.i = getelementptr inbounds %struct.tty_buffer, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp3.i = icmp slt i32 %6, %8
  br i1 %cmp3.i, label %if.then.i, label %if.end12.i

if.then.i:                                        ; preds = %for.body.lr.ph
  %flags.i = getelementptr inbounds %struct.tty_buffer, ptr %4, i32 0, i32 5
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.not.i, label %if.then8.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %4, i32 0, i32 6
  %add.ptr.i.i.i = getelementptr i8, ptr %data.i.i.i, i32 %6
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %8
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %add.ptr.i.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then8.i, %if.then.i.if.end.i_crit_edge
  %12 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %used.i, align 4
  %inc.i = add i32 %13, 1
  store i32 %inc.i, ptr %used.i, align 4
  %data.i.i = getelementptr inbounds %struct.tty_buffer, ptr %4, i32 0, i32 6
  %add.ptr.i1.i = getelementptr i8, ptr %data.i.i, i32 %13
  %14 = ptrtoint ptr %add.ptr.i1.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %add.ptr.i1.i, align 1
  br label %tty_insert_flip_char.exit

if.end12.i:                                       ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #8
  %call13.i = tail call i32 @__tty_insert_flip_char(ptr noundef %1, i8 noundef zeroext %conv, i8 noundef zeroext 0) #6
  br label %tty_insert_flip_char.exit

tty_insert_flip_char.exit:                        ; preds = %if.end12.i, %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %exitcond.not = icmp eq i32 %and, 1
  br i1 %exitcond.not, label %tty_insert_flip_char.exit.for.end_crit_edge, label %for.body.1

tty_insert_flip_char.exit.for.end_crit_edge:      ; preds = %tty_insert_flip_char.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.1:                                       ; preds = %tty_insert_flip_char.exit
  %shr3.1 = lshr i32 %2, 8
  %conv.1 = trunc i32 %shr3.1 to i8
  %15 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tail.i, align 4
  %used.i.1 = getelementptr inbounds %struct.tty_buffer, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %used.i.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %used.i.1, align 4
  %size.i.1 = getelementptr inbounds %struct.tty_buffer, ptr %16, i32 0, i32 2
  %19 = ptrtoint ptr %size.i.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size.i.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp3.i.1 = icmp slt i32 %18, %20
  br i1 %cmp3.i.1, label %if.then.i.1, label %if.end12.i.1

if.end12.i.1:                                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #8
  %call13.i.1 = tail call i32 @__tty_insert_flip_char(ptr noundef %1, i8 noundef zeroext %conv.1, i8 noundef zeroext 0) #6
  br label %tty_insert_flip_char.exit.1

if.then.i.1:                                      ; preds = %for.body.1
  %flags.i.1 = getelementptr inbounds %struct.tty_buffer, ptr %16, i32 0, i32 5
  %21 = ptrtoint ptr %flags.i.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i.1, align 4
  %and.i.1 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %tobool7.not.not.i.1 = icmp eq i32 %and.i.1, 0
  br i1 %tobool7.not.not.i.1, label %if.then8.i.1, label %if.then.i.1.if.end.i.1_crit_edge

if.then.i.1.if.end.i.1_crit_edge:                 ; preds = %if.then.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.1

if.then8.i.1:                                     ; preds = %if.then.i.1
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i.i.1 = getelementptr inbounds %struct.tty_buffer, ptr %16, i32 0, i32 6
  %add.ptr.i.i.i.1 = getelementptr i8, ptr %data.i.i.i.1, i32 %18
  %add.ptr.i.i.1 = getelementptr i8, ptr %add.ptr.i.i.i.1, i32 %20
  %23 = ptrtoint ptr %add.ptr.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %add.ptr.i.i.1, align 1
  br label %if.end.i.1

if.end.i.1:                                       ; preds = %if.then8.i.1, %if.then.i.1.if.end.i.1_crit_edge
  %24 = ptrtoint ptr %used.i.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %used.i.1, align 4
  %inc.i.1 = add i32 %25, 1
  store i32 %inc.i.1, ptr %used.i.1, align 4
  %data.i.i.1 = getelementptr inbounds %struct.tty_buffer, ptr %16, i32 0, i32 6
  %add.ptr.i1.i.1 = getelementptr i8, ptr %data.i.i.1, i32 %25
  %26 = ptrtoint ptr %add.ptr.i1.i.1 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv.1, ptr %add.ptr.i1.i.1, align 1
  br label %tty_insert_flip_char.exit.1

tty_insert_flip_char.exit.1:                      ; preds = %if.end.i.1, %if.end12.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %exitcond.not.1 = icmp eq i32 %and, 2
  br i1 %exitcond.not.1, label %tty_insert_flip_char.exit.1.for.end_crit_edge, label %for.body.2

tty_insert_flip_char.exit.1.for.end_crit_edge:    ; preds = %tty_insert_flip_char.exit.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.2:                                       ; preds = %tty_insert_flip_char.exit.1
  %shr3.2 = lshr i32 %2, 16
  %conv.2 = trunc i32 %shr3.2 to i8
  %27 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tail.i, align 4
  %used.i.2 = getelementptr inbounds %struct.tty_buffer, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %used.i.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %used.i.2, align 4
  %size.i.2 = getelementptr inbounds %struct.tty_buffer, ptr %28, i32 0, i32 2
  %31 = ptrtoint ptr %size.i.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size.i.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp3.i.2 = icmp slt i32 %30, %32
  br i1 %cmp3.i.2, label %if.then.i.2, label %if.end12.i.2

if.end12.i.2:                                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #8
  %call13.i.2 = tail call i32 @__tty_insert_flip_char(ptr noundef %1, i8 noundef zeroext %conv.2, i8 noundef zeroext 0) #6
  br label %for.end

if.then.i.2:                                      ; preds = %for.body.2
  %flags.i.2 = getelementptr inbounds %struct.tty_buffer, ptr %28, i32 0, i32 5
  %33 = ptrtoint ptr %flags.i.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i.2, align 4
  %and.i.2 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.2)
  %tobool7.not.not.i.2 = icmp eq i32 %and.i.2, 0
  br i1 %tobool7.not.not.i.2, label %if.then8.i.2, label %if.then.i.2.if.end.i.2_crit_edge

if.then.i.2.if.end.i.2_crit_edge:                 ; preds = %if.then.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.2

if.then8.i.2:                                     ; preds = %if.then.i.2
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i.i.2 = getelementptr inbounds %struct.tty_buffer, ptr %28, i32 0, i32 6
  %add.ptr.i.i.i.2 = getelementptr i8, ptr %data.i.i.i.2, i32 %30
  %add.ptr.i.i.2 = getelementptr i8, ptr %add.ptr.i.i.i.2, i32 %32
  %35 = ptrtoint ptr %add.ptr.i.i.2 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %add.ptr.i.i.2, align 1
  br label %if.end.i.2

if.end.i.2:                                       ; preds = %if.then8.i.2, %if.then.i.2.if.end.i.2_crit_edge
  %36 = ptrtoint ptr %used.i.2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %used.i.2, align 4
  %inc.i.2 = add i32 %37, 1
  store i32 %inc.i.2, ptr %used.i.2, align 4
  %data.i.i.2 = getelementptr inbounds %struct.tty_buffer, ptr %28, i32 0, i32 6
  %add.ptr.i1.i.2 = getelementptr i8, ptr %data.i.i.2, i32 %37
  %38 = ptrtoint ptr %add.ptr.i1.i.2 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv.2, ptr %add.ptr.i1.i.2, align 1
  br label %for.end

for.end:                                          ; preds = %if.end.i.2, %if.end12.i.2, %tty_insert_flip_char.exit.1.for.end_crit_edge, %tty_insert_flip_char.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @tty_flip_buffer_push(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mbox_request_channel_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_tcu_console_write(ptr nocapture noundef readonly %cons, ptr nocapture noundef readonly %s, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cons, i32 -36
  tail call fastcc void @tegra_tcu_write(ptr noundef %add.ptr, ptr noundef %s, i32 noundef %count)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra_tcu_console_setup(ptr nocapture noundef readnone %cons, ptr nocapture noundef readnone %options) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_console(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_free_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_tcu_write(ptr nocapture noundef readonly %tcu, ptr nocapture noundef readonly %s, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp44.not = icmp eq i32 %count, 0
  br i1 %cmp44.not, label %entry.if.end24_crit_edge, label %while.body.lr.ph

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

while.body.lr.ph:                                 ; preds = %entry
  %tx.i = getelementptr inbounds %struct.tegra_tcu, ptr %tcu, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %if.end21.while.body_crit_edge, %while.body.lr.ph
  %value.049 = phi i32 [ 0, %while.body.lr.ph ], [ %value.2, %if.end21.while.body_crit_edge ]
  %insert_nl.0.off048 = phi i1 [ false, %while.body.lr.ph ], [ %insert_nl.1.off0, %if.end21.while.body_crit_edge ]
  %i.047 = phi i32 [ 0, %while.body.lr.ph ], [ %i.1, %if.end21.while.body_crit_edge ]
  %written.045 = phi i32 [ 0, %while.body.lr.ph ], [ %written.2, %if.end21.while.body_crit_edge ]
  br i1 %insert_nl.0.off048, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %mul = shl i32 %written.045, 3
  %shl = shl i32 10, %mul
  %inc1 = add nuw i32 %i.047, 1
  br label %if.end17

if.else:                                          ; preds = %while.body
  %arrayidx = getelementptr i8, ptr %s, i32 %i.047
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %1)
  %cmp2 = icmp eq i8 %1, 10
  br i1 %cmp2, label %if.then4, label %if.else9

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %mul6 = shl i32 %written.045, 3
  %shl7 = shl i32 13, %mul6
  br label %if.end17

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %1 to i32
  %inc10 = add nuw i32 %i.047, 1
  %mul14 = shl i32 %written.045, 3
  %shl15 = shl i32 %conv, %mul14
  br label %if.end17

if.end17:                                         ; preds = %if.else9, %if.then4, %if.then
  %i.1 = phi i32 [ %inc1, %if.then ], [ %i.047, %if.then4 ], [ %inc10, %if.else9 ]
  %insert_nl.1.off0 = phi i1 [ false, %if.then ], [ true, %if.then4 ], [ false, %if.else9 ]
  %shl.pn = phi i32 [ %shl, %if.then ], [ %shl7, %if.then4 ], [ %shl15, %if.else9 ]
  %value.1 = or i32 %shl.pn, %value.049
  %written.1 = add i32 %written.045, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %written.1)
  %cmp18 = icmp eq i32 %written.1, 3
  br i1 %cmp18, label %if.then20, label %if.end17.if.end21_crit_edge

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %or.i = or i32 %value.1, 50331648
  %2 = inttoptr i32 %or.i to ptr
  %3 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tx.i, align 4
  %call.i = tail call i32 @mbox_send_message(ptr noundef %4, ptr noundef nonnull %2) #6
  %5 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tx.i, align 4
  %call2.i = tail call i32 @mbox_flush(ptr noundef %6, i32 noundef 1000) #6
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end17.if.end21_crit_edge
  %written.2 = phi i32 [ 0, %if.then20 ], [ %written.1, %if.end17.if.end21_crit_edge ]
  %value.2 = phi i32 [ 0, %if.then20 ], [ %value.1, %if.end17.if.end21_crit_edge ]
  %cmp = icmp ult i32 %i.1, %count
  br i1 %cmp, label %if.end21.while.body_crit_edge, label %while.end

if.end21.while.body_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %written.2)
  %tobool22.not = icmp eq i32 %written.2, 0
  br i1 %tobool22.not, label %while.end.if.end24_crit_edge, label %if.then23

while.end.if.end24_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then23:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i = shl i32 %written.2, 24
  %or.i40 = or i32 %value.2, %shl.i
  %7 = inttoptr i32 %or.i40 to ptr
  %tx.i41 = getelementptr inbounds %struct.tegra_tcu, ptr %tcu, i32 0, i32 5
  %8 = ptrtoint ptr %tx.i41 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx.i41, align 4
  %call.i42 = tail call i32 @mbox_send_message(ptr noundef %9, ptr noundef %7) #6
  %10 = ptrtoint ptr %tx.i41 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx.i41, align 4
  %call2.i43 = tail call i32 @mbox_flush(ptr noundef %11, i32 noundef 1000) #6
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %while.end.if.end24_crit_edge, %entry.if.end24_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mbox_send_message(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mbox_flush(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra_tcu_uart_tx_empty(ptr nocapture noundef readnone %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tegra_tcu_uart_set_mctrl(ptr nocapture noundef %port, i32 noundef %mctrl) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra_tcu_uart_get_mctrl(ptr nocapture noundef readnone %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tegra_tcu_uart_stop_tx(ptr nocapture noundef %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_tcu_uart_start_tx(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %xmit1 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2
  %tail = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 2
  %head = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tail, align 4
  %sub19 = sub i32 4096, %5
  %6 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %head, align 4
  %add20 = add i32 %7, %sub19
  %and21 = and i32 %add20, 4095
  %8 = tail call i32 @llvm.smin.i32(i32 %and21, i32 %sub19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not22 = icmp eq i32 %8, 0
  br i1 %tobool.not22, label %entry.for.end_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end:                                           ; preds = %if.end.if.end_crit_edge, %entry.if.end_crit_edge
  %9 = phi i32 [ %17, %if.end.if.end_crit_edge ], [ %8, %entry.if.end_crit_edge ]
  %10 = phi i32 [ %and5, %if.end.if.end_crit_edge ], [ %5, %entry.if.end_crit_edge ]
  %11 = ptrtoint ptr %xmit1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xmit1, align 4
  %arrayidx = getelementptr i8, ptr %12, i32 %10
  tail call fastcc void @tegra_tcu_write(ptr noundef %1, ptr noundef %arrayidx, i32 noundef %9)
  %13 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tail, align 4
  %add4 = add i32 %14, %9
  %and5 = and i32 %add4, 4095
  store i32 %and5, ptr %tail, align 4
  %sub = sub nuw nsw i32 4096, %and5
  %15 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %head, align 4
  %add = add i32 %16, %sub
  %and = and i32 %add, 4095
  %17 = tail call i32 @llvm.smin.i32(i32 %and, i32 %sub)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %if.end.for.end_crit_edge, label %if.end.if.end_crit_edge

if.end.if.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @uart_write_wakeup(ptr noundef %port) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tegra_tcu_uart_stop_rx(ptr nocapture noundef %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tegra_tcu_uart_break_ctl(ptr nocapture noundef %port, i32 noundef %ctl) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra_tcu_uart_startup(ptr nocapture noundef readnone %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tegra_tcu_uart_shutdown(ptr nocapture noundef %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tegra_tcu_uart_set_termios(ptr nocapture noundef %port, ptr nocapture noundef %new, ptr nocapture noundef %old) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_console(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !35, !36, !37, !39, !41, !42, !43, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @__initcall__kmod_tegra_tcu__227_299_tegra_tcu_driver_init6, !1, !"__initcall__kmod_tegra_tcu__227_299_tegra_tcu_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/tegra-tcu.c", i32 299, i32 1}
!2 = !{ptr @__exitcall_tegra_tcu_driver_exit, !1, !"__exitcall_tegra_tcu_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author228, !4, !"__UNIQUE_ID_author228", i1 false, i1 false}
!4 = !{!"../drivers/tty/serial/tegra-tcu.c", i32 301, i32 1}
!5 = !{ptr @__UNIQUE_ID_file229, !6, !"__UNIQUE_ID_file229", i1 false, i1 false}
!6 = !{!"../drivers/tty/serial/tegra-tcu.c", i32 302, i32 1}
!7 = !{ptr @__UNIQUE_ID_license230, !6, !"__UNIQUE_ID_license230", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description231, !9, !"__UNIQUE_ID_description231", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/tegra-tcu.c", i32 303, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/tegra-tcu.c", i32 293, i32 11}
!12 = !{ptr @tegra_tcu_driver, !13, !"tegra_tcu_driver", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/tegra-tcu.c", i32 291, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/tty/serial/tegra-tcu.c", i32 191, i32 57}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/tty/serial/tegra-tcu.c", i32 194, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @tegra_tcu_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @tegra_tcu_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/tty/serial/tegra-tcu.c", i32 200, i32 28}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/tty/serial/tegra-tcu.c", i32 220, i32 3}
!28 = !{ptr @tegra_tcu_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @tegra_tcu_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @tegra_tcu_probe.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/tty/serial/tegra-tcu.c", i32 227, i32 2}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/tty/serial/tegra-tcu.c", i32 238, i32 3}
!35 = !{ptr @tegra_tcu_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @tegra_tcu_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/tty/serial/tegra-tcu.c", i32 246, i32 57}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/tty/serial/tegra-tcu.c", i32 249, i32 3}
!41 = !{ptr @tegra_tcu_probe._entry.16, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @tegra_tcu_probe._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @tegra_tcu_uart_ops, !44, !"tegra_tcu_uart_ops", i1 false, i1 false}
!44 = !{!"../drivers/tty/serial/tegra-tcu.c", i32 133, i32 30}
!45 = !{ptr @tegra_tcu_match, !46, !"tegra_tcu_match", i1 false, i1 false}
!46 = !{!"../drivers/tty/serial/tegra-tcu.c", i32 285, i32 34}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
