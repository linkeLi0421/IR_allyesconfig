; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/omap-serial.c_pt.bc'
source_filename = "../drivers/tty/serial/omap-serial.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.earlycon_device = type { ptr, %struct.uart_port, [16 x i8], i32 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.omap_uart_port_info = type { i8, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.uart_omap_port = type { %struct.uart_port, %struct.uart_omap_dma, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, [20 x i8], i32, i32, i32, i32, ptr, %struct.pm_qos_request, i32, i32, %struct.work_struct, i8, i32 }
%struct.uart_omap_dma = type { i8, i8, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.timer_list, i32, i32, i32 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.35, %struct.anon.36, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.35 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.36 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }

@__UNIQUE_ID___earlycon_omapserial242 = internal constant %struct.earlycon_id { [15 x i8] c"omapserial\00\00\00\00\00", i8 0, [128 x i8] c"ti,omap2-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @early_omap_serial_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_omapserial243 = internal constant %struct.earlycon_id { [15 x i8] c"omapserial\00\00\00\00\00", i8 0, [128 x i8] c"ti,omap3-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @early_omap_serial_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_omapserial244 = internal constant %struct.earlycon_id { [15 x i8] c"omapserial\00\00\00\00\00", i8 0, [128 x i8] c"ti,omap4-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @early_omap_serial_setup }, section "__earlycon_table", align 4
@serial_omap_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @serial_omap_probe, ptr @serial_omap_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_serial_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @serial_omap_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@serial_omap_reg = internal global { %struct.uart_driver, [60 x i8] } { %struct.uart_driver { ptr null, ptr @.str.60, ptr @.str.61, i32 0, i32 0, i32 10, ptr @serial_omap_console, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_omap_serial__250_1880_serial_omap_init6 = internal global ptr @serial_omap_init, section ".initcall6.init", align 4
@__exitcall_serial_omap_exit = internal global ptr @serial_omap_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description251 = internal constant [52 x i8] c"omap_serial.description=OMAP High Speed UART driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file252 = internal constant [48 x i8] c"omap_serial.file=drivers/tty/serial/omap-serial\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [24 x i8] c"omap_serial.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [41 x i8] c"omap_serial.author=Texas Instruments Inc\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"omap_uart\00", [22 x i8] zeroinitializer }, align 32
@omap_serial_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@serial_omap_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr @serial_omap_prepare, ptr @serial_omap_complete, ptr @serial_omap_suspend, ptr @serial_omap_resume, ptr @serial_omap_suspend, ptr @serial_omap_resume, ptr @serial_omap_suspend, ptr @serial_omap_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @serial_omap_runtime_suspend, ptr @serial_omap_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@serial_omap_pops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @serial_omap_tx_empty, ptr @serial_omap_set_mctrl, ptr @serial_omap_get_mctrl, ptr @serial_omap_stop_tx, ptr @serial_omap_start_tx, ptr @serial_omap_throttle, ptr @serial_omap_unthrottle, ptr null, ptr @serial_omap_stop_rx, ptr @serial_omap_enable_ms, ptr @serial_omap_break_ctl, ptr @serial_omap_startup, ptr @serial_omap_shutdown, ptr null, ptr @serial_omap_set_termios, ptr null, ptr @serial_omap_pm, ptr @serial_omap_type, ptr @serial_omap_release_port, ptr @serial_omap_request_port, ptr @serial_omap_config_port, ptr @serial_omap_verify_port, ptr null, ptr null, ptr @serial_omap_poll_put_char, ptr @serial_omap_poll_get_char }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@serial_omap_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1633, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to get alias/pdev id, errno %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"serial_omap_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/tty/serial/omap-serial.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@serial_omap_probe._entry_ptr = internal global ptr @serial_omap_probe._entry, section ".printk_index", align 4
@serial_omap_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1640, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"uart ID %d >  MAX %d.\0A\00", [41 x i8] zeroinitializer }, align 32
@serial_omap_probe._entry_ptr.9 = internal global ptr @serial_omap_probe._entry.7, section ".printk_index", align 4
@serial_omap_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 1648, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no wakeirq for uart%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@serial_omap_probe._entry_ptr.13 = internal global ptr @serial_omap_probe._entry.10, section ".printk_index", align 4
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"OMAP UART%d\00", [20 x i8] zeroinitializer }, align 32
@serial_omap_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 1664, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"No clock speed specified: using default: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@serial_omap_probe._entry_ptr.18 = internal global ptr @serial_omap_probe._entry.15, section ".printk_index", align 4
@serial_omap_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&up->qos_work)\00", [63 x i8] zeroinitializer }, align 32
@ui = internal global { [10 x ptr], [56 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@serial_omap_tx_empty.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.22, ptr @.str.4, ptr @.str.23, i8 0, i8 -104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"omap_serial\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"serial_omap_tx_empty\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"serial_omap_tx_empty+%d\0A\00", [39 x i8] zeroinitializer }, align 32
@serial_omap_set_mctrl.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.24, ptr @.str.4, ptr @.str.25, i8 0, i8 -96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"serial_omap_set_mctrl\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"serial_omap_set_mctrl+%d\0A\00", [38 x i8] zeroinitializer }, align 32
@serial_omap_get_mctrl.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.26, ptr @.str.4, ptr @.str.27, i8 0, i8 -100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"serial_omap_get_mctrl\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"serial_omap_get_mctrl+%d\0A\00", [38 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@serial_omap_enable_ms.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.28, ptr @.str.4, ptr @.str.29, i8 0, i8 69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"serial_omap_enable_ms\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"serial_omap_enable_ms+%d\0A\00", [38 x i8] zeroinitializer }, align 32
@serial_omap_break_ctl.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.30, ptr @.str.4, ptr @.str.31, i8 0, i8 -87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"serial_omap_break_ctl\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"serial_omap_break_ctl+%d\0A\00", [38 x i8] zeroinitializer }, align 32
@serial_omap_startup.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.32, ptr @.str.4, ptr @.str.33, i8 0, i8 -79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"serial_omap_startup\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"serial_omap_startup+%d\0A\00", [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@serial_omap_shutdown.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.34, ptr @.str.4, ptr @.str.35, i8 0, i8 -65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"serial_omap_shutdown\00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"serial_omap_shutdown+%d\0A\00", [39 x i8] zeroinitializer }, align 32
@serial_omap_set_termios.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.36, ptr @.str.4, ptr @.str.37, i8 1, i8 8, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"serial_omap_set_termios\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"serial_omap_set_termios+%d\0A\00", [36 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@serial_omap_mdr1_errataset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 1746, ptr @.str.40, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Errata i202: timedout %x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"serial_omap_mdr1_errataset\00", [37 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@serial_omap_mdr1_errataset._entry_ptr = internal global ptr @serial_omap_mdr1_errataset._entry, section ".printk_index", align 4
@serial_omap_pm.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.41, ptr @.str.4, ptr @.str.42, i8 1, i8 11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"serial_omap_pm\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"serial_omap_pm+%d\0A\00", [45 x i8] zeroinitializer }, align 32
@serial_omap_type.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.43, ptr @.str.4, ptr @.str.44, i8 1, i8 22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"serial_omap_type\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"serial_omap_type+%d\0A\00", [43 x i8] zeroinitializer }, align 32
@serial_omap_release_port.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.45, ptr @.str.4, ptr @.str.46, i8 1, i8 14, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"serial_omap_release_port\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"serial_omap_release_port+\0A\00", [37 x i8] zeroinitializer }, align 32
@serial_omap_request_port.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.47, ptr @.str.4, ptr @.str.48, i8 1, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"serial_omap_request_port\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"serial_omap_request_port+\0A\00", [37 x i8] zeroinitializer }, align 32
@serial_omap_config_port.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.49, ptr @.str.4, ptr @.str.50, i8 1, i8 18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"serial_omap_config_port\00", [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"serial_omap_config_port+%d\0A\00", [36 x i8] zeroinitializer }, align 32
@serial_omap_verify_port.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.51, ptr @.str.4, ptr @.str.52, i8 1, i8 20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"serial_omap_verify_port\00", [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"serial_omap_verify_port+\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rs485-rts-active-high\00", [42 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rts\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"omap-serial\00", [20 x i8] zeroinitializer }, align 32
@omap_serial_fill_features_erratas._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.4, i32 1493, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Unknown %s revision, defaulting to highest\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"omap_serial_fill_features_erratas\00", [62 x i8] zeroinitializer }, align 32
@omap_serial_fill_features_erratas._entry_ptr = internal global ptr @omap_serial_fill_features_erratas._entry, section ".printk_index", align 4
@serial_omap_console_ports = internal global { [10 x ptr], [56 x i8] } zeroinitializer, align 32
@console_suspend_enabled = external dso_local local_unnamed_addr global i8, align 1
@serial_omap_runtime_resume.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.58, ptr @.str.4, ptr @.str.59, i8 1, i8 -57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"serial_omap_runtime_resume\00", [37 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"serial_omap_get_context_loss_count failed : %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"OMAP-SERIAL\00", [20 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ttyO\00", [27 x i8] zeroinitializer }, align 32
@serial_omap_console = internal global { %struct.console, [60 x i8] } { %struct.console { [16 x i8] c"ttyO\00\00\00\00\00\00\00\00\00\00\00\00", ptr @serial_omap_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @serial_omap_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @serial_omap_reg, ptr null }, [60 x i8] zeroinitializer }, align 32
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 16, i64 1030, i64 1282, i64 1539]
@__sancov_gen_cov_switch_values.63 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 6]
@___asan_gen_.64 = private unnamed_addr constant [19 x i8] c"serial_omap_driver\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1851, i32 31 }
@___asan_gen_.67 = private unnamed_addr constant [16 x i8] c"serial_omap_reg\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1410, i32 27 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1855, i32 11 }
@___asan_gen_.73 = private unnamed_addr constant [21 x i8] c"omap_serial_of_match\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1842, i32 34 }
@___asan_gen_.76 = private unnamed_addr constant [23 x i8] c"serial_omap_dev_pm_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1833, i32 32 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"serial_omap_pops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1384, i32 30 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1627, i32 44 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1632, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1639, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1647, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1654, i32 20 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1662, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1670, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [3 x i8] c"ui\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 168, i32 31 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1529, i32 37 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 608, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 642, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 624, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 277, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 676, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 709, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 764, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1058, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1745, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1068, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1115, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1083, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1088, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1096, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1106, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1555, i32 32 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1566, i32 47 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1577, i32 42 }
@___asan_gen_.250 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1491, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant [26 x i8] c"serial_omap_console_ports\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1237, i32 31 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1820, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1412, i32 17 }
@___asan_gen_.271 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1413, i32 14 }
@___asan_gen_.274 = private unnamed_addr constant [20 x i8] c"serial_omap_console\00", align 1
@___asan_gen_.275 = private constant [36 x i8] c"../drivers/tty/serial/omap-serial.c\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1314, i32 23 }
@llvm.compiler.used = appending global [87 x ptr] [ptr @__UNIQUE_ID___earlycon_omapserial242, ptr @__UNIQUE_ID___earlycon_omapserial243, ptr @__UNIQUE_ID___earlycon_omapserial244, ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_file252, ptr @__UNIQUE_ID_license253, ptr @__exitcall_serial_omap_exit, ptr @__initcall__kmod_omap_serial__250_1880_serial_omap_init6, ptr @omap_serial_fill_features_erratas._entry, ptr @omap_serial_fill_features_erratas._entry_ptr, ptr @serial_omap_exit, ptr @serial_omap_mdr1_errataset._entry, ptr @serial_omap_mdr1_errataset._entry_ptr, ptr @serial_omap_probe._entry, ptr @serial_omap_probe._entry.10, ptr @serial_omap_probe._entry.15, ptr @serial_omap_probe._entry.7, ptr @serial_omap_probe._entry_ptr, ptr @serial_omap_probe._entry_ptr.13, ptr @serial_omap_probe._entry_ptr.18, ptr @serial_omap_probe._entry_ptr.9, ptr @serial_omap_driver, ptr @serial_omap_reg, ptr @.str, ptr @omap_serial_of_match, ptr @serial_omap_dev_pm_ops, ptr @serial_omap_pops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @serial_omap_probe.__key, ptr @.str.19, ptr @ui, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @serial_omap_console_ports, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @serial_omap_console], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_omap_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_omap_reg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_serial_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_omap_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_omap_pops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_omap_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_omap_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_omap_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_omap_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_omap_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ui to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_omap_mdr1_errataset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_serial_fill_features_erratas._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_omap_console_ports to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_omap_console to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @early_omap_serial_setup(ptr nocapture noundef %device, ptr nocapture noundef readnone %options) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %iobase = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %regshift = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 25
  %4 = ptrtoint ptr %regshift to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %regshift, align 1
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 4
  %write = getelementptr inbounds %struct.console, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @early_omap_serial_write, ptr %write, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @serial_omap_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @serial_omap_driver) #9
  tail call void @uart_unregister_driver(ptr noundef nonnull @serial_omap_reg) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_omap_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @uart_register_driver(ptr noundef nonnull @serial_omap_reg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @serial_omap_driver, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @uart_unregister_driver(ptr noundef nonnull @serial_omap_reg) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @early_omap_serial_write(ptr nocapture noundef readonly %console, ptr noundef %s, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.console, ptr %console, i32 0, i32 13
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %port1 = getelementptr inbounds %struct.earlycon_device, ptr %1, i32 0, i32 1
  tail call void @uart_console_write(ptr noundef %port1, ptr noundef %s, i32 noundef %count, ptr noundef nonnull @omap_serial_early_putc) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_serial_early_putc(ptr nocapture noundef readonly %port, i32 noundef %c) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %regshift.i, align 1
  %conv.i9 = zext i8 %1 to i32
  %shl.i10 = shl i32 5, %conv.i9
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %3, i32 %shl.i10
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i11) #9, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  %5 = and i16 %4, 24576
  call void @__sanitizer_cov_trace_const_cmp2(i16 24576, i16 %5)
  %cmp12 = icmp eq i16 %5, 24576
  br i1 %cmp12, label %entry.for.end_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !159
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !160
  %6 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %7 to i32
  %shl.i = shl i32 5, %conv.i
  %8 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %shl.i
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #9, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  %11 = and i16 %10, 24576
  %cmp = icmp eq i16 %11, 24576
  br i1 %cmp, label %do.end.for.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %do.end.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !161
  tail call void @arm_heavy_mb() #9
  %conv1.i = trunc i32 %c to i16
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv1.i) #9
  %13 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %14, i16 %12) #9, !srcloc !162
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_omap_probe(ptr noundef %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call4 = tail call i32 @irq_of_parse_and_map(ptr noundef nonnull %1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call9 = tail call i32 @irq_of_parse_and_map(ptr noundef %3, i32 noundef 1) #9
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 36, i32 noundef 3520) #9
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.of_get_uart_port_info.exit_crit_edge, label %if.end.i

if.end.of_get_uart_port_info.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %of_get_uart_port_info.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %uartclk.i = getelementptr inbounds %struct.omap_uart_port_info, ptr %call.i.i, i32 0, i32 1
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef %uartclk.i, i32 noundef 1, i32 noundef 0) #9
  %flags.i = getelementptr inbounds %struct.omap_uart_port_info, ptr %call.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 268435456, ptr %flags.i, align 4
  br label %of_get_uart_port_info.exit

of_get_uart_port_info.exit:                       ; preds = %if.end.i, %if.end.of_get_uart_port_info.exit_crit_edge
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %7 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i.i, ptr %platform_data, align 8
  br label %if.end16

if.else:                                          ; preds = %entry
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %8 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_data.i, align 8
  %call13 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %if.else.cleanup_crit_edge, label %if.else.if.end16_crit_edge

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.else.if.end16_crit_edge, %of_get_uart_port_info.exit
  %omap_up_info.0 = phi ptr [ %call.i.i, %of_get_uart_port_info.exit ], [ %9, %if.else.if.end16_crit_edge ]
  %uartirq.0 = phi i32 [ %call4, %of_get_uart_port_info.exit ], [ %call13, %if.else.if.end16_crit_edge ]
  %wakeirq.0 = phi i32 [ %call9, %of_get_uart_port_info.exit ], [ 0, %if.else.if.end16_crit_edge ]
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 708, i32 noundef 3520) #9
  %tobool19.not = icmp eq ptr %call.i, null
  br i1 %tobool19.not, label %if.end16.cleanup_crit_edge, label %if.end21

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %call22 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %call24 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call22) #9
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %call24 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  %dev30 = getelementptr inbounds %struct.uart_omap_port, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %dev30 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %dev30, align 4
  %dev32 = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 45
  %12 = ptrtoint ptr %dev32 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %dev32, align 4
  %type = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 38
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 96, ptr %type, align 4
  %iotype = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 26
  %14 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %iotype, align 2
  %irq = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 20
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %uartirq.0, ptr %irq, align 4
  %regshift = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 25
  %16 = ptrtoint ptr %regshift to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %regshift, align 1
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 23
  %17 = ptrtoint ptr %fifosize to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 64, ptr %fifosize, align 4
  %ops = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 39
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @serial_omap_pops, ptr %ops, align 4
  %has_sysrq = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 48
  %19 = ptrtoint ptr %has_sysrq to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %has_sysrq, align 4
  %20 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node, align 8
  %tobool42.not = icmp eq ptr %21, null
  br i1 %tobool42.not, label %if.else47, label %if.then43

if.then43:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %call46 = tail call i32 @of_alias_get_id(ptr noundef nonnull %21, ptr noundef nonnull @.str.1) #9
  br label %if.end48

if.else47:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.else47, %if.then43
  %ret.0 = phi i32 [ %call46, %if.then43 ], [ %23, %if.else47 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp49 = icmp slt i32 %ret.0, 0
  br i1 %cmp49, label %do.end, label %if.end52

do.end:                                           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %ret.0) #12
  br label %cleanup

if.end52:                                         ; preds = %if.end48
  %line = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 41
  %24 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %ret.0, ptr %line, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %ret.0)
  %cmp56 = icmp ugt i32 %ret.0, 9
  br i1 %cmp56, label %do.end60, label %if.end64

do.end60:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %ret.0, i32 noundef 10) #12
  br label %cleanup

if.end64:                                         ; preds = %if.end52
  %wakeirq65 = getelementptr inbounds %struct.uart_omap_port, ptr %call.i, i32 0, i32 3
  %25 = ptrtoint ptr %wakeirq65 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %wakeirq.0, ptr %wakeirq65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wakeirq.0)
  %tobool67.not = icmp eq i32 %wakeirq.0, 0
  br i1 %tobool67.not, label %do.end71, label %if.end64.if.end76_crit_edge

if.end64.if.end76_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

do.end71:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev32, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.11, i32 noundef %ret.0) #12
  br label %if.end76

if.end76:                                         ; preds = %do.end71, %if.end64.if.end76_crit_edge
  %rs485.i = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 56
  %28 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %of_node, align 8
  %30 = ptrtoint ptr %rs485.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %rs485.i, align 4
  %rts_gpiod.i = getelementptr inbounds %struct.uart_omap_port, ptr %call.i, i32 0, i32 22
  %31 = ptrtoint ptr %rts_gpiod.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %rts_gpiod.i, align 4
  %tobool.not.i223 = icmp eq ptr %29, null
  br i1 %tobool.not.i223, label %if.end76.if.end81_crit_edge, label %if.end.i225

if.end76.if.end81_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.end.i225:                                      ; preds = %if.end76
  %call.i224 = tail call i32 @uart_get_rs485_mode(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i224)
  %tobool2.not.i = icmp eq i32 %call.i224, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %serial_omap_probe_rs485.exit

if.end4.i:                                        ; preds = %if.end.i225
  %call.i.i226 = tail call ptr @of_find_property(ptr noundef nonnull %29, ptr noundef nonnull @.str.53, ptr noundef null) #9
  %tobool.i.not.i = icmp eq ptr %call.i.i226, null
  %32 = ptrtoint ptr %rs485.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rs485.i, align 4
  %and10.i = and i32 %33, -7
  %..i = select i1 %tobool.i.not.i, i32 4, i32 2
  %or12.i = or i32 %and10.i, %..i
  store i32 %or12.i, ptr %rs485.i, align 4
  %34 = or i32 %..i, 3
  %call17.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.54, i32 noundef %34) #9
  %35 = ptrtoint ptr %rts_gpiod.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call17.i, ptr %rts_gpiod.i, align 4
  %cmp.i.i = icmp ugt ptr %call17.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then21.i, label %if.else27.i

if.then21.i:                                      ; preds = %if.end4.i
  %cmp.i227 = icmp eq ptr %call17.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp.i227, label %if.then21.i.cleanup_crit_edge, label %if.end25.i

if.then21.i.cleanup_crit_edge:                    ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end25.i:                                       ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %rts_gpiod.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %rts_gpiod.i, align 4
  br label %if.end81

if.else27.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %call29.i = tail call i32 @gpiod_set_consumer_name(ptr noundef %call17.i, ptr noundef nonnull @.str.55) #9
  br label %if.end81

serial_omap_probe_rs485.exit:                     ; preds = %if.end.i225
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i224)
  %cmp79 = icmp slt i32 %call.i224, 0
  br i1 %cmp79, label %serial_omap_probe_rs485.exit.cleanup_crit_edge, label %serial_omap_probe_rs485.exit.if.end81_crit_edge

serial_omap_probe_rs485.exit.if.end81_crit_edge:  ; preds = %serial_omap_probe_rs485.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

serial_omap_probe_rs485.exit.cleanup_crit_edge:   ; preds = %serial_omap_probe_rs485.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end81:                                         ; preds = %serial_omap_probe_rs485.exit.if.end81_crit_edge, %if.else27.i, %if.end25.i, %if.end76.if.end81_crit_edge
  %name = getelementptr inbounds %struct.uart_omap_port, ptr %call.i, i32 0, i32 17
  %37 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %line, align 4
  %call84 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.14, i32 noundef %38)
  %39 = ptrtoint ptr %call22 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %call22, align 4
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 43
  %41 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %mapbase, align 4
  %membase = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 2
  %42 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call24, ptr %membase, align 4
  %flags = getelementptr inbounds %struct.omap_uart_port_info, ptr %omap_up_info.0, i32 0, i32 2
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags, align 4
  %flags88 = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 33
  %45 = ptrtoint ptr %flags88 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %flags88, align 4
  %uartclk = getelementptr inbounds %struct.omap_uart_port_info, ptr %omap_up_info.0, i32 0, i32 1
  %46 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %uartclk, align 4
  %uartclk90 = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 22
  %48 = ptrtoint ptr %uartclk90 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %uartclk90, align 4
  %rs485_config = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 18
  %49 = ptrtoint ptr %rs485_config to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @serial_omap_config_rs485, ptr %rs485_config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool94.not = icmp eq i32 %47, 0
  br i1 %tobool94.not, label %if.then95, label %if.end81.if.end102_crit_edge

if.end81.if.end102_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102

if.then95:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %uartclk90 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 48000000, ptr %uartclk90, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef 48000000) #12
  br label %if.end102

if.end102:                                        ; preds = %if.then95, %if.end81.if.end102_crit_edge
  %latency = getelementptr inbounds %struct.uart_omap_port, ptr %call.i, i32 0, i32 24
  %51 = ptrtoint ptr %latency to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 2000000000, ptr %latency, align 4
  %calc_latency = getelementptr inbounds %struct.uart_omap_port, ptr %call.i, i32 0, i32 25
  %52 = ptrtoint ptr %calc_latency to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 2000000000, ptr %calc_latency, align 4
  %pm_qos_request = getelementptr inbounds %struct.uart_omap_port, ptr %call.i, i32 0, i32 23
  tail call void @cpu_latency_qos_add_request(ptr noundef %pm_qos_request, i32 noundef 2000000000) #9
  %qos_work = getelementptr inbounds %struct.uart_omap_port, ptr %call.i, i32 0, i32 26
  tail call void @__init_work(ptr noundef %qos_work, i32 noundef 0) #9
  %53 = ptrtoint ptr %qos_work to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -64, ptr %qos_work, align 4
  %lockdep_map = getelementptr inbounds %struct.uart_omap_port, ptr %call.i, i32 0, i32 26, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.19, ptr noundef nonnull @serial_omap_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry108 = getelementptr inbounds %struct.uart_omap_port, ptr %call.i, i32 0, i32 26, i32 1
  %54 = ptrtoint ptr %entry108 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %entry108, ptr %entry108, align 4
  %prev.i = getelementptr inbounds %struct.uart_omap_port, ptr %call.i, i32 0, i32 26, i32 1, i32 1
  %55 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %entry108, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.uart_omap_port, ptr %call.i, i32 0, i32 26, i32 2
  %56 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @serial_omap_uart_qos_work, ptr %func, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %57 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %autosuspend_timeout = getelementptr inbounds %struct.omap_uart_port_info, ptr %omap_up_info.0, i32 0, i32 5
  %58 = ptrtoint ptr %autosuspend_timeout to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %autosuspend_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp112 = icmp eq i32 %59, 0
  br i1 %cmp112, label %if.then113, label %if.end102.if.end115_crit_edge

if.end102.if.end115_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end115

if.then113:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %autosuspend_timeout to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1, ptr %autosuspend_timeout, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.then113, %if.end102.if.end115_crit_edge
  %61 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev30, align 4
  %call117 = tail call i32 @device_init_wakeup(ptr noundef %62, i1 noundef zeroext true) #9
  tail call void @pm_runtime_enable(ptr noundef %dev) #9
  %call.i228 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #9
  %63 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %membase, align 4
  %65 = ptrtoint ptr %regshift to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %regshift, align 1
  %conv.i = zext i8 %66 to i32
  %shl.i = shl i32 20, %conv.i
  %add.ptr.i = getelementptr i8, ptr %64, i32 %shl.i
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !163
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  %shr.i = lshr i32 %68, 30
  %69 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb7.i
  ]

sw.bb.i:                                          ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  %and.i = lshr i32 %68, 4
  %shr3.i = and i32 %and.i, 15
  %and5.i = and i32 %68, 15
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  %70 = lshr i32 %68, 8
  %conv10.i = and i32 %70, 7
  %conv12.i = and i32 %68, 63
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev30, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %72, ptr noundef nonnull @.str.56, ptr noundef %name) #12
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end.i, %sw.bb7.i, %sw.bb.i
  %minor.0.i = phi i32 [ 255, %do.end.i ], [ %conv12.i, %sw.bb7.i ], [ %and5.i, %sw.bb.i ]
  %major.0.i = phi i32 [ 255, %do.end.i ], [ %conv10.i, %sw.bb7.i ], [ %shr3.i, %sw.bb.i ]
  %conv13.i = shl nuw nsw i32 %major.0.i, 8
  %conv17.i = or i32 %conv13.i, %minor.0.i
  %trunc.i = trunc i32 %conv17.i to i16
  %73 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.62)
  switch i16 %trunc.i, label %sw.epilog.i.omap_serial_fill_features_erratas.exit_crit_edge [
    i16 1030, label %sw.bb18.i
    i16 1282, label %sw.bb20.i
    i16 1539, label %sw.bb24.i
  ]

sw.epilog.i.omap_serial_fill_features_erratas.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %omap_serial_fill_features_erratas.exit

sw.bb18.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %errata.i = getelementptr inbounds %struct.uart_omap_port, ptr %call.i, i32 0, i32 20
  br label %sw.epilog30.sink.split.i

sw.bb20.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %errata21.i = getelementptr inbounds %struct.uart_omap_port, ptr %call.i, i32 0, i32 20
  %74 = ptrtoint ptr %errata21.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %errata21.i, align 4
  %or22.i = or i32 %75, 3
  store i32 %or22.i, ptr %errata21.i, align 4
  %features.i = getelementptr inbounds %struct.uart_omap_port, ptr %call.i, i32 0, i32 21
  br label %sw.epilog30.sink.split.i

sw.bb24.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %errata25.i = getelementptr inbounds %struct.uart_omap_port, ptr %call.i, i32 0, i32 20
  %76 = ptrtoint ptr %errata25.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %errata25.i, align 4
  %or26.i = or i32 %77, 1
  store i32 %or26.i, ptr %errata25.i, align 4
  %features27.i = getelementptr inbounds %struct.uart_omap_port, ptr %call.i, i32 0, i32 21
  br label %sw.epilog30.sink.split.i

sw.epilog30.sink.split.i:                         ; preds = %sw.bb24.i, %sw.bb20.i, %sw.bb18.i
  %features27.sink44.i = phi ptr [ %features27.i, %sw.bb24.i ], [ %features.i, %sw.bb20.i ], [ %errata.i, %sw.bb18.i ]
  %.sink43.i = phi i32 [ 1, %sw.bb24.i ], [ 1, %sw.bb20.i ], [ 3, %sw.bb18.i ]
  %78 = ptrtoint ptr %features27.sink44.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %features27.sink44.i, align 4
  %or28.i = or i32 %79, %.sink43.i
  store i32 %or28.i, ptr %features27.sink44.i, align 4
  br label %omap_serial_fill_features_erratas.exit

omap_serial_fill_features_erratas.exit:           ; preds = %sw.epilog30.sink.split.i, %sw.epilog.i.omap_serial_fill_features_erratas.exit_crit_edge
  %80 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %line, align 4
  %arrayidx = getelementptr [10 x ptr], ptr @ui, i32 0, i32 %81
  %82 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call.i, ptr %arrayidx, align 4
  %arrayidx.i = getelementptr [10 x ptr], ptr @serial_omap_console_ports, i32 0, i32 %81
  %83 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call.i, ptr %arrayidx.i, align 4
  %call124 = tail call i32 @uart_add_one_port(ptr noundef nonnull @serial_omap_reg, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %cmp125.not = icmp eq i32 %call124, 0
  br i1 %cmp125.not, label %omap_serial_fill_features_erratas.exit.cleanup_crit_edge, label %err_add_port

omap_serial_fill_features_erratas.exit.cleanup_crit_edge: ; preds = %omap_serial_fill_features_erratas.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_add_port:                                     ; preds = %omap_serial_fill_features_erratas.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i229 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #9
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  tail call void @cpu_latency_qos_remove_request(ptr noundef %pm_qos_request) #9
  %84 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev30, align 4
  %call133 = tail call i32 @device_init_wakeup(ptr noundef %85, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %err_add_port, %omap_serial_fill_features_erratas.exit.cleanup_crit_edge, %serial_omap_probe_rs485.exit.cleanup_crit_edge, %if.then21.i.cleanup_crit_edge, %do.end60, %do.end, %if.then26, %if.end16.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then26 ], [ -517, %if.then.cleanup_crit_edge ], [ -517, %if.else.cleanup_crit_edge ], [ -12, %if.end16.cleanup_crit_edge ], [ 0, %omap_serial_fill_features_erratas.exit.cleanup_crit_edge ], [ %ret.0, %do.end ], [ -6, %do.end60 ], [ %call.i224, %serial_omap_probe_rs485.exit.cleanup_crit_edge ], [ %call124, %err_add_port ], [ -517, %if.then21.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_omap_remove(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.uart_omap_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #9
  %call3 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @serial_omap_reg, ptr noundef %1) #9
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %call.i14 = tail call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 4) #9
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  tail call void @__pm_runtime_disable(ptr noundef %7, i1 noundef zeroext true) #9
  %pm_qos_request = getelementptr inbounds %struct.uart_omap_port, ptr %1, i32 0, i32 23
  tail call void @cpu_latency_qos_remove_request(ptr noundef %pm_qos_request) #9
  %dev7 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %call8 = tail call i32 @device_init_wakeup(ptr noundef %dev7, i1 noundef zeroext false) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_omap_config_rs485(ptr nocapture noundef %port, ptr nocapture noundef %rs485) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ier = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 4
  %0 = ptrtoint ptr %ier to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ier, align 4
  store i8 0, ptr %ier, align 4
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %2 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %3 to i32
  %shl.i = shl nuw i32 1, %conv.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %shl.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 0) #9, !srcloc !162
  %delay_rts_before_send = getelementptr inbounds %struct.serial_rs485, ptr %rs485, i32 0, i32 1
  %6 = ptrtoint ptr %delay_rts_before_send to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %delay_rts_before_send, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 100)
  %9 = ptrtoint ptr %delay_rts_before_send to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %delay_rts_before_send, align 4
  %delay_rts_after_send = getelementptr inbounds %struct.serial_rs485, ptr %rs485, i32 0, i32 2
  %10 = ptrtoint ptr %delay_rts_after_send to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %delay_rts_after_send, align 4
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 100)
  %13 = ptrtoint ptr %delay_rts_after_send to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %delay_rts_after_send, align 4
  %rs48513 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56
  %14 = call ptr @memcpy(ptr %rs48513, ptr %rs485, i32 32)
  %rts_gpiod = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 22
  %15 = ptrtoint ptr %rts_gpiod to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rts_gpiod, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %rs48513 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rs48513, align 4
  %and = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  %cond16 = select i1 %tobool15.not, i32 2, i32 4
  %and19 = and i32 %cond16, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp ne i32 %and19, 0
  %cond21 = zext i1 %tobool20.not to i32
  tail call void @gpiod_set_value(ptr noundef nonnull %16, i32 noundef %cond21) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %19 = ptrtoint ptr %ier to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %1, ptr %ier, align 4
  %20 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %regshift.i, align 1
  %conv.i69 = zext i8 %21 to i32
  %shl.i70 = shl nuw i32 1, %conv.i69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i = zext i8 %1 to i16
  %22 = shl nuw i16 %conv1.i, 8
  %23 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase.i, align 4
  %add.ptr.i72 = getelementptr i8, ptr %24, i32 %shl.i70
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i72, i16 %22) #9, !srcloc !162
  %25 = ptrtoint ptr %rs48513 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rs48513, align 4
  %and29 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %land.lhs.true, label %if.end.if.end41_crit_edge

if.end.if.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

land.lhs.true:                                    ; preds = %if.end
  %scr = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 12
  %27 = ptrtoint ptr %scr to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %scr, align 4
  %29 = and i8 %28, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool33.not = icmp eq i8 %29, 0
  br i1 %tobool33.not, label %land.lhs.true.if.end41_crit_edge, label %if.then34

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %and37 = and i8 %28, -9
  %30 = ptrtoint ptr %scr to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %and37, ptr %scr, align 4
  %31 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %regshift.i, align 1
  %conv.i74 = zext i8 %32 to i32
  %shl.i75 = shl i32 16, %conv.i74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i76 = zext i8 %and37 to i16
  %33 = shl nuw i16 %conv1.i76, 8
  %34 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase.i, align 4
  %add.ptr.i78 = getelementptr i8, ptr %35, i32 %shl.i75
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i78, i16 %33) #9, !srcloc !162
  br label %if.end41

if.end41:                                         ; preds = %if.then34, %land.lhs.true.if.end41_crit_edge, %if.end.if.end41_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_add_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_omap_uart_qos_work(ptr noundef %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_qos_request = getelementptr i8, ptr %work, i32 -32
  %latency = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %latency to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %latency, align 4
  tail call void @cpu_latency_qos_update_request(ptr noundef %pm_qos_request, i32 noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_remove_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_omap_tx_empty(ptr noundef %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial_omap_tx_empty.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial_omap_tx_empty, %if.then)) #9
          to label %do.body7 [label %if.then], !srcloc !166

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %line = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %2 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %line, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial_omap_tx_empty.__UNIQUE_ID_ddebug229, ptr noundef %1, ptr noundef nonnull @.str.23, i32 noundef %3) #9
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #9
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %4 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %5 to i32
  %shl.i = shl i32 5, %conv.i
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %6 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %shl.i
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #9, !srcloc !157
  %9 = lshr i16 %8, 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  %10 = and i16 %9, 1
  %and.lobit = zext i16 %10 to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call11) #9
  ret i32 %and.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_omap_set_mctrl(ptr nocapture noundef %port, i32 noundef %mctrl) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial_omap_set_mctrl.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial_omap_set_mctrl, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !166

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %line = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %2 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %line, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial_omap_set_mctrl.__UNIQUE_ID_ddebug231, ptr noundef %1, ptr noundef nonnull @.str.25, i32 noundef %3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %mctrl, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %4 = lshr exact i32 %and, 1
  %5 = trunc i32 %4 to i8
  %6 = trunc i32 %mctrl to i8
  %7 = lshr i8 %6, 1
  %8 = and i8 %7, 1
  %9 = or i8 %8, %5
  %and17 = lshr i32 %mctrl, 11
  %10 = trunc i32 %and17 to i8
  %11 = and i8 %10, 4
  %12 = or i8 %9, %11
  %13 = and i8 %10, 8
  %14 = or i8 %12, %13
  %15 = and i8 %10, 16
  %16 = or i8 %14, %15
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %17 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %18 to i32
  %shl.i = shl i32 4, %conv.i
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %19 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 %shl.i
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #9, !srcloc !157
  %22 = lshr i16 %21, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  %23 = trunc i16 %22 to i8
  %24 = and i8 %23, -32
  %conv46 = or i8 %16, %24
  %mcr47 = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 6
  %25 = ptrtoint ptr %mcr47 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv46, ptr %mcr47, align 2
  %26 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %regshift.i, align 1
  %conv.i93 = zext i8 %27 to i32
  %shl.i94 = shl i32 4, %conv.i93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i = zext i8 %conv46 to i16
  %28 = shl nuw i16 %conv1.i, 8
  %29 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase.i, align 4
  %add.ptr.i96 = getelementptr i8, ptr %30, i32 %shl.i94
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i96, i16 %28) #9, !srcloc !162
  %31 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %regshift.i, align 1
  %conv.i98 = zext i8 %32 to i32
  %shl.i99 = shl i32 3, %conv.i98
  %33 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase.i, align 4
  %add.ptr.i101 = getelementptr i8, ptr %34, i32 %shl.i99
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i101) #9, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  %36 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %regshift.i, align 1
  %conv.i104 = zext i8 %37 to i32
  %shl.i105 = shl i32 3, %conv.i104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %38 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %membase.i, align 4
  %add.ptr.i107 = getelementptr i8, ptr %39, i32 %shl.i105
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i107, i16 -16640) #9, !srcloc !162
  br i1 %tobool6.not, label %do.end.if.else_crit_edge, label %land.lhs.true

do.end.if.else_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %do.end
  %status = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 34
  %40 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %status, align 4
  %and54 = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %land.lhs.true.if.else_crit_edge, label %if.then56

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then56:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %efr = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 8
  %42 = ptrtoint ptr %efr to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %efr, align 4
  %44 = or i8 %43, 64
  store i8 %44, ptr %efr, align 4
  br label %if.end64

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end.if.else_crit_edge
  %efr60 = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 8
  %45 = ptrtoint ptr %efr60 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %efr60, align 4
  %47 = and i8 %46, -65
  store i8 %47, ptr %efr60, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.else, %if.then56
  %efr65 = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 8
  %48 = ptrtoint ptr %efr65 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %efr65, align 4
  %50 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %regshift.i, align 1
  %conv.i109 = zext i8 %51 to i32
  %shl.i110 = shl i32 2, %conv.i109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i111 = zext i8 %49 to i16
  %52 = shl nuw i16 %conv1.i111, 8
  %53 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %membase.i, align 4
  %add.ptr.i113 = getelementptr i8, ptr %54, i32 %shl.i110
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i113, i16 %52) #9, !srcloc !162
  %55 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %regshift.i, align 1
  %conv.i115 = zext i8 %56 to i32
  %shl.i116 = shl i32 3, %conv.i115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %57 = and i16 %35, -256
  %58 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %membase.i, align 4
  %add.ptr.i119 = getelementptr i8, ptr %59, i32 %shl.i116
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i119, i16 %57) #9, !srcloc !162
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_omap_get_mctrl(ptr noundef %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @check_modem_status(ptr noundef %port)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial_omap_get_mctrl.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial_omap_get_mctrl, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !166

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %line = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %2 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %line, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial_omap_get_mctrl.__UNIQUE_ID_ddebug230, ptr noundef %1, ptr noundef nonnull @.str.27, i32 noundef %3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = lshr i32 %call, 1
  %4 = and i32 %and, 64
  %and10 = shl i32 %call, 1
  %5 = and i32 %and10, 128
  %6 = or i32 %5, %4
  %and15 = shl i32 %call, 3
  %7 = and i32 %and15, 256
  %8 = or i32 %6, %7
  %9 = and i32 %and10, 32
  %10 = or i32 %8, %9
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_omap_stop_tx(ptr nocapture noundef %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rs485 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56
  %0 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rs485, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end60_crit_edge, label %if.then

entry.if.end60_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then:                                          ; preds = %entry
  %scr = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 12
  %2 = ptrtoint ptr %scr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %scr, align 4
  %4 = and i8 %3, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  %and6 = and i8 %3, -9
  %5 = ptrtoint ptr %scr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %and6, ptr %scr, align 4
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %6 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %7 to i32
  %shl.i = shl i32 16, %conv.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i = zext i8 %and6 to i16
  %8 = shl nuw i16 %conv1.i, 8
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %9 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %shl.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %8) #9, !srcloc !162
  %11 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rs485, align 4
  %and12 = lshr i32 %12, 2
  %and12.lobit = and i32 %and12, 1
  %rts_gpiod = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 22
  %13 = ptrtoint ptr %rts_gpiod to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rts_gpiod, align 4
  %tobool14.not = icmp eq ptr %14, null
  br i1 %tobool14.not, label %if.then3.if.end60_crit_edge, label %land.lhs.true

if.then3.if.end60_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

land.lhs.true:                                    ; preds = %if.then3
  %call = tail call i32 @gpiod_get_value(ptr noundef nonnull %14) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %and12.lobit)
  %cmp.not = icmp eq i32 %call, %and12.lobit
  br i1 %cmp.not, label %land.lhs.true.if.end60_crit_edge, label %if.then17

land.lhs.true.if.end60_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then17:                                        ; preds = %land.lhs.true
  %delay_rts_after_send = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56, i32 2
  %15 = ptrtoint ptr %delay_rts_after_send to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %delay_rts_after_send, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp19.not = icmp eq i32 %16, 0
  br i1 %cmp19.not, label %if.then17.if.end_crit_edge, label %if.then17.while.body_crit_edge

if.then17.while.body_crit_edge:                   ; preds = %if.then17
  br label %while.body

if.then17.if.end_crit_edge:                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then17.while.body_crit_edge
  %__ms.0111 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %16, %if.then17.while.body_crit_edge ]
  %dec = add i32 %__ms.0111, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #9
  %tobool50.not = icmp eq i32 %dec, 0
  br i1 %tobool50.not, label %while.body.if.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %while.body.if.end_crit_edge, %if.then17.if.end_crit_edge
  %18 = ptrtoint ptr %rts_gpiod to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rts_gpiod, align 4
  tail call void @gpiod_set_value(ptr noundef %19, i32 noundef %and12.lobit) #9
  br label %if.end60

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i8 %3, 8
  %20 = ptrtoint ptr %scr to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %or, ptr %scr, align 4
  %regshift.i98 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %21 = ptrtoint ptr %regshift.i98 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %regshift.i98, align 1
  %conv.i99 = zext i8 %22 to i32
  %shl.i100 = shl i32 16, %conv.i99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i101 = zext i8 %or to i16
  %23 = shl nuw i16 %conv1.i101, 8
  %membase.i102 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %24 = ptrtoint ptr %membase.i102 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase.i102, align 4
  %add.ptr.i103 = getelementptr i8, ptr %25, i32 %shl.i100
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i103, i16 %23) #9, !srcloc !162
  br label %cleanup

if.end60:                                         ; preds = %if.end, %land.lhs.true.if.end60_crit_edge, %if.then3.if.end60_crit_edge, %entry.if.end60_crit_edge
  %ier = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 4
  %26 = ptrtoint ptr %ier to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ier, align 4
  %28 = and i8 %27, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool63.not = icmp eq i8 %28, 0
  br i1 %tobool63.not, label %if.end60.cleanup_crit_edge, label %if.then64

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %and67 = and i8 %27, -3
  %29 = ptrtoint ptr %ier to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %and67, ptr %ier, align 4
  %regshift.i104 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %30 = ptrtoint ptr %regshift.i104 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %regshift.i104, align 1
  %conv.i105 = zext i8 %31 to i32
  %shl.i106 = shl nuw i32 1, %conv.i105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i107 = zext i8 %and67 to i16
  %32 = shl nuw i16 %conv1.i107, 8
  %membase.i108 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %33 = ptrtoint ptr %membase.i108 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase.i108, align 4
  %add.ptr.i109 = getelementptr i8, ptr %34, i32 %shl.i106
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i109, i16 %32) #9, !srcloc !162
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %if.end60.cleanup_crit_edge, %if.else
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_omap_start_tx(ptr nocapture noundef %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rs485 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56
  %0 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rs485, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end49_crit_edge, label %if.then

entry.if.end49_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then:                                          ; preds = %entry
  %scr = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 12
  %2 = ptrtoint ptr %scr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %scr, align 4
  %4 = and i8 %3, -9
  store i8 %4, ptr %scr, align 4
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %5 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %6 to i32
  %shl.i = shl i32 16, %conv.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i = zext i8 %4 to i16
  %7 = shl nuw i16 %conv1.i, 8
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %8 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %shl.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %7) #9, !srcloc !162
  %10 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rs485, align 4
  %and7 = lshr i32 %11, 1
  %and7.lobit = and i32 %and7, 1
  %rts_gpiod = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 22
  %12 = ptrtoint ptr %rts_gpiod to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rts_gpiod, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %if.then.if.end49_crit_edge, label %land.lhs.true

if.then.if.end49_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

land.lhs.true:                                    ; preds = %if.then
  %call = tail call i32 @gpiod_get_value(ptr noundef nonnull %13) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %and7.lobit)
  %cmp.not = icmp eq i32 %call, %and7.lobit
  br i1 %cmp.not, label %land.lhs.true.if.end49_crit_edge, label %if.then12

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then12:                                        ; preds = %land.lhs.true
  %14 = ptrtoint ptr %rts_gpiod to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rts_gpiod, align 4
  tail call void @gpiod_set_value(ptr noundef %15, i32 noundef %and7.lobit) #9
  %delay_rts_before_send = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56, i32 1
  %16 = ptrtoint ptr %delay_rts_before_send to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %delay_rts_before_send, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp15.not = icmp eq i32 %17, 0
  br i1 %cmp15.not, label %if.then12.if.end49_crit_edge, label %if.then12.while.body_crit_edge

if.then12.while.body_crit_edge:                   ; preds = %if.then12
  br label %while.body

if.then12.if.end49_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then12.while.body_crit_edge
  %__ms.084 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %17, %if.then12.while.body_crit_edge ]
  %dec = add i32 %__ms.084, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #9
  %tobool46.not = icmp eq i32 %dec, 0
  br i1 %tobool46.not, label %while.body.if.end49_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.if.end49_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.end49:                                         ; preds = %while.body.if.end49_crit_edge, %if.then12.if.end49_crit_edge, %land.lhs.true.if.end49_crit_edge, %if.then.if.end49_crit_edge, %entry.if.end49_crit_edge
  %19 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rs485, align 4
  %21 = and i32 %20, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %if.then59, label %if.end49.if.end60_crit_edge

if.end49.if.end60_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then59:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %rs485_tx_filter_count = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 28
  %23 = ptrtoint ptr %rs485_tx_filter_count to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %rs485_tx_filter_count, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %if.end49.if.end60_crit_edge
  %ier.i = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 4
  %24 = ptrtoint ptr %ier.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ier.i, align 4
  %26 = and i8 %25, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end60.serial_omap_enable_ier_thri.exit_crit_edge

if.end60.serial_omap_enable_ier_thri.exit_crit_edge: ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %serial_omap_enable_ier_thri.exit

if.then.i:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %or.i = or i8 %25, 2
  %27 = ptrtoint ptr %ier.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %or.i, ptr %ier.i, align 4
  %regshift.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %28 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %regshift.i.i, align 1
  %conv.i.i = zext i8 %29 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i.i = zext i8 %or.i to i16
  %30 = shl nuw i16 %conv1.i.i, 8
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %31 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 %shl.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %30) #9, !srcloc !162
  br label %serial_omap_enable_ier_thri.exit

serial_omap_enable_ier_thri.exit:                 ; preds = %if.then.i, %if.end60.serial_omap_enable_ier_thri.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_omap_throttle(ptr noundef %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #9
  %ier = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 4
  %0 = ptrtoint ptr %ier to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ier, align 4
  %2 = and i8 %1, -6
  store i8 %2, ptr %ier, align 4
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %3 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %4 to i32
  %shl.i = shl nuw i32 1, %conv.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i = zext i8 %2 to i16
  %5 = shl nuw i16 %conv1.i, 8
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %6 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %shl.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %5) #9, !srcloc !162
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_omap_unthrottle(ptr noundef %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #9
  %ier = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 4
  %0 = ptrtoint ptr %ier to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ier, align 4
  %2 = or i8 %1, 5
  store i8 %2, ptr %ier, align 4
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %3 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %4 to i32
  %shl.i = shl nuw i32 1, %conv.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i = zext i8 %2 to i16
  %5 = shl nuw i16 %conv1.i, 8
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %6 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %shl.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %5) #9, !srcloc !162
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_omap_stop_rx(ptr nocapture noundef %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ier = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 4
  %0 = ptrtoint ptr %ier to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ier, align 4
  %2 = and i8 %1, -6
  store i8 %2, ptr %ier, align 4
  %read_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 28
  %3 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %read_status_mask, align 4
  %and3 = and i32 %4, -2
  store i32 %and3, ptr %read_status_mask, align 4
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %5 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %6 to i32
  %shl.i = shl nuw i32 1, %conv.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i = zext i8 %2 to i16
  %7 = shl nuw i16 %conv1.i, 8
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %8 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %shl.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %7) #9, !srcloc !162
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_omap_enable_ms(ptr nocapture noundef %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial_omap_enable_ms.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial_omap_enable_ms, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !166

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %line = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %2 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %line, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial_omap_enable_ms.__UNIQUE_ID_ddebug228, ptr noundef %1, ptr noundef nonnull @.str.29, i32 noundef %3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ier = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 4
  %4 = ptrtoint ptr %ier to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ier, align 4
  %6 = or i8 %5, 8
  store i8 %6, ptr %ier, align 4
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %7 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %8 to i32
  %shl.i = shl nuw i32 1, %conv.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i = zext i8 %6 to i16
  %9 = shl nuw i16 %conv1.i, 8
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %10 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %shl.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %9) #9, !srcloc !162
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_omap_break_ctl(ptr noundef %port, i32 noundef %break_state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial_omap_break_ctl.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial_omap_break_ctl, %if.then)) #9
          to label %do.body7 [label %if.then], !srcloc !166

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %line = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %2 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %line, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial_omap_break_ctl.__UNIQUE_ID_ddebug232, ptr noundef %1, ptr noundef nonnull @.str.31, i32 noundef %3) #9
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %break_state)
  %cmp16 = icmp eq i32 %break_state, -1
  %lcr = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 5
  %4 = ptrtoint ptr %lcr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %lcr, align 1
  %6 = and i8 %5, -65
  %masksel = select i1 %cmp16, i8 64, i8 0
  %.sink = or i8 %6, %masksel
  store i8 %.sink, ptr %lcr, align 1
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %7 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %8 to i32
  %shl.i = shl i32 3, %conv.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i = zext i8 %.sink to i16
  %9 = shl nuw i16 %conv1.i, 8
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %10 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %shl.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %9) #9, !srcloc !162
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call11) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_omap_startup(ptr noundef %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  %irqflags = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 21
  %2 = ptrtoint ptr %irqflags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irqflags, align 4
  %name = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 17
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %1, ptr noundef nonnull @serial_omap_irq, ptr noundef null, i32 noundef %3, ptr noundef %name, ptr noundef %port) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %wakeirq = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 3
  %4 = ptrtoint ptr %wakeirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wakeirq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %if.end.do.body_crit_edge, label %if.then5

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then5:                                         ; preds = %if.end
  %dev = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call7 = tail call i32 @dev_pm_set_dedicated_wake_irq(ptr noundef %7, i32 noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then5.do.body_crit_edge, label %if.then9

if.then5.do.body_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %call12 = tail call ptr @free_irq(i32 noundef %9, ptr noundef %port) #9
  br label %cleanup

do.body:                                          ; preds = %if.then5.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial_omap_startup.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial_omap_startup, %if.then20)) #9
          to label %do.end [label %if.then20], !srcloc !166

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev22 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %10 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev22, align 4
  %line = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %12 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %line, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial_omap_startup.__UNIQUE_ID_ddebug233, ptr noundef %11, ptr noundef nonnull @.str.33, i32 noundef %13) #9
  br label %do.end

do.end:                                           ; preds = %if.then20, %do.body
  %dev25 = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 2
  %14 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev25, align 4
  %call.i101 = tail call i32 @__pm_runtime_resume(ptr noundef %15, i32 noundef 4) #9
  %regshift.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %16 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %regshift.i.i, align 1
  %conv.i.i = zext i8 %17 to i32
  %shl.i.i = shl i32 2, %conv.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %18 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %shl.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 256) #9, !srcloc !162
  %20 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %regshift.i.i, align 1
  %conv.i4.i = zext i8 %21 to i32
  %shl.i5.i = shl i32 2, %conv.i4.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %23, i32 %shl.i5.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i7.i, i16 1792) #9, !srcloc !162
  %24 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %regshift.i.i, align 1
  %conv.i9.i = zext i8 %25 to i32
  %shl.i10.i = shl i32 2, %conv.i9.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %26 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %27, i32 %shl.i10.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i, i16 0) #9, !srcloc !162
  %28 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %regshift.i.i, align 1
  %conv.i = zext i8 %29 to i32
  %shl.i = shl i32 5, %conv.i
  %30 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %31, i32 %shl.i
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #9, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  %33 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %regshift.i.i, align 1
  %conv.i103 = zext i8 %34 to i32
  %shl.i104 = shl i32 5, %conv.i103
  %35 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i106 = getelementptr i8, ptr %36, i32 %shl.i104
  %37 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i106) #9, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  %38 = and i16 %37, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool29.not = icmp eq i16 %38, 0
  br i1 %tobool29.not, label %do.end.if.end32_crit_edge, label %if.then30

do.end.if.end32_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then30:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase.i.i, align 4
  %41 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %40) #9, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %do.end.if.end32_crit_edge
  %42 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %regshift.i.i, align 1
  %conv.i113 = zext i8 %43 to i32
  %shl.i114 = shl i32 2, %conv.i113
  %44 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i116 = getelementptr i8, ptr %45, i32 %shl.i114
  %46 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i116) #9, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  %47 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %regshift.i.i, align 1
  %conv.i119 = zext i8 %48 to i32
  %shl.i120 = shl i32 6, %conv.i119
  %49 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i122 = getelementptr i8, ptr %50, i32 %shl.i120
  %51 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i122) #9, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  %52 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %regshift.i.i, align 1
  %conv.i125 = zext i8 %53 to i32
  %shl.i126 = shl i32 3, %conv.i125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %54 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i128 = getelementptr i8, ptr %55, i32 %shl.i126
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i128, i16 768) #9, !srcloc !162
  %call40 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #9
  %mctrl = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 36
  %56 = ptrtoint ptr %mctrl to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mctrl, align 4
  %or = or i32 %57, 16384
  store i32 %or, ptr %mctrl, align 4
  tail call void @serial_omap_set_mctrl(ptr noundef %port, i32 noundef %or)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call40) #9
  %msr_saved_flags = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 16
  %58 = ptrtoint ptr %msr_saved_flags to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %msr_saved_flags, align 4
  %ier = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 4
  %59 = ptrtoint ptr %ier to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 5, ptr %ier, align 4
  %60 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %regshift.i.i, align 1
  %conv.i130 = zext i8 %61 to i32
  %shl.i131 = shl nuw i32 1, %conv.i130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %62 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i133 = getelementptr i8, ptr %63, i32 %shl.i131
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i133, i16 1280) #9, !srcloc !162
  %wer = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 13
  %features = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 21
  %64 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %features, align 4
  %and53 = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  %spec.store.select = select i1 %tobool54.not, i8 127, i8 -1
  %66 = ptrtoint ptr %wer to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %spec.store.select, ptr %wer, align 1
  %67 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %regshift.i.i, align 1
  %conv.i135 = zext i8 %68 to i32
  %shl.i136 = shl i32 23, %conv.i135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i = zext i8 %spec.store.select to i16
  %69 = shl nuw i16 %conv1.i, 8
  %70 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i138 = getelementptr i8, ptr %71, i32 %shl.i136
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i138, i16 %69) #9, !srcloc !162
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %72 = load volatile i32, ptr @jiffies, align 128
  %port_activity = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 18
  %73 = ptrtoint ptr %port_activity to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %port_activity, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then9 ], [ 0, %if.end32 ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_omap_shutdown(ptr noundef %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial_omap_shutdown.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial_omap_shutdown, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !166

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %line = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %2 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %line, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial_omap_shutdown.__UNIQUE_ID_ddebug234, ptr noundef %1, ptr noundef nonnull @.str.35, i32 noundef %3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ier = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 4
  %4 = ptrtoint ptr %ier to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %ier, align 4
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %5 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %6 to i32
  %shl.i = shl nuw i32 1, %conv.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %7 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 %shl.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 0) #9, !srcloc !162
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #9
  %mctrl = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 36
  %9 = ptrtoint ptr %mctrl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mctrl, align 4
  %and = and i32 %10, -16385
  store i32 %and, ptr %mctrl, align 4
  tail call void @serial_omap_set_mctrl(ptr noundef %port, i32 noundef %and)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call11) #9
  %11 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %regshift.i, align 1
  %conv.i53 = zext i8 %12 to i32
  %shl.i54 = shl i32 3, %conv.i53
  %13 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i, align 4
  %add.ptr.i56 = getelementptr i8, ptr %14, i32 %shl.i54
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i56) #9, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  %16 = and i16 %15, -16385
  %17 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %regshift.i, align 1
  %conv.i58 = zext i8 %18 to i32
  %shl.i59 = shl i32 3, %conv.i58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %19 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase.i, align 4
  %add.ptr.i61 = getelementptr i8, ptr %20, i32 %shl.i59
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i61, i16 %16) #9, !srcloc !162
  %21 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %regshift.i, align 1
  %conv.i.i = zext i8 %22 to i32
  %shl.i.i = shl i32 2, %conv.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %23 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 %shl.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 256) #9, !srcloc !162
  %25 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %regshift.i, align 1
  %conv.i4.i = zext i8 %26 to i32
  %shl.i5.i = shl i32 2, %conv.i4.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %27 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %28, i32 %shl.i5.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i7.i, i16 1792) #9, !srcloc !162
  %29 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %regshift.i, align 1
  %conv.i9.i = zext i8 %30 to i32
  %shl.i10.i = shl i32 2, %conv.i9.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %31 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %membase.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %32, i32 %shl.i10.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i, i16 0) #9, !srcloc !162
  %33 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %regshift.i, align 1
  %conv.i63 = zext i8 %34 to i32
  %shl.i64 = shl i32 5, %conv.i63
  %35 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase.i, align 4
  %add.ptr.i66 = getelementptr i8, ptr %36, i32 %shl.i64
  %37 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i66) #9, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  %38 = and i16 %37, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool26.not = icmp eq i16 %38, 0
  br i1 %tobool26.not, label %do.end.if.end29_crit_edge, label %if.then27

do.end.if.end29_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then27:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase.i, align 4
  %41 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %40) #9, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %do.end.if.end29_crit_edge
  %dev30 = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 2
  %42 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev30, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %43, i32 noundef 4) #9
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %44 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq, align 4
  %call33 = tail call ptr @free_irq(i32 noundef %45, ptr noundef %port) #9
  %46 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev30, align 4
  tail call void @dev_pm_clear_wake_irq(ptr noundef %47) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_omap_set_termios(ptr noundef %port, ptr noundef %termios, ptr noundef %old) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %0 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_cflag, align 4
  %2 = trunc i32 %1 to i8
  %3 = lshr i8 %2, 4
  %switch.idx.cast = and i8 %3, 3
  %4 = trunc i32 %1 to i8
  %5 = lshr i8 %4, 4
  %6 = and i8 %5, 4
  %and8 = lshr i32 %1, 5
  %7 = trunc i32 %and8 to i8
  %8 = and i8 %7, 8
  %9 = or i8 %8, %6
  %10 = or i8 %9, %switch.idx.cast
  %and16 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %11 = or i8 %10, 16
  %cval.3 = select i1 %tobool17.not, i8 %11, i8 %10
  %and24 = lshr i32 %1, 25
  %12 = trunc i32 %and24 to i8
  %13 = and i8 %12, 32
  %14 = or i8 %cval.3, %13
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %15 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %uartclk, align 4
  %div = udiv i32 %16, 13
  %call = tail call i32 @uart_get_baud_rate(ptr noundef %port, ptr noundef %termios, ptr noundef %old, i32 noundef 0, i32 noundef %div) #9
  %17 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %uartclk, align 4
  %mul.i.i.i = mul i32 %call, 13
  %div.i.i.i = udiv i32 %18, %mul.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.i, i32 %18)
  %cmp.i.i.i = icmp ugt i32 %mul.i.i.i, %18
  %div.i.op.i.i = mul i32 %div.i.i.i, 13
  %mul2.i.i.i = select i1 %cmp.i.i.i, i32 13, i32 %div.i.op.i.i
  %div3.i.i.i = udiv i32 %18, %mul2.i.i.i
  %sub.i.i.i = sub i32 %call, %div3.i.i.i
  %19 = tail call i32 @llvm.abs.i32(i32 %sub.i.i.i, i1 false) #9
  %mul.i5.i.i = shl i32 %call, 4
  %div.i6.i.i = udiv i32 %18, %mul.i5.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i5.i.i, i32 %18)
  %cmp.i7.i.i = icmp ugt i32 %mul.i5.i.i, %18
  %div.i6.op.i.i = shl i32 %div.i6.i.i, 4
  %mul2.i9.i.i = select i1 %cmp.i7.i.i, i32 16, i32 %div.i6.op.i.i
  %div3.i10.i.i = udiv i32 %18, %mul2.i9.i.i
  %sub.i11.i.i = sub i32 %call, %div3.i10.i.i
  %20 = tail call i32 @llvm.abs.i32(i32 %sub.i11.i.i, i1 false) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %20)
  %cmp.i.not.i = icmp slt i32 %19, %20
  %..i = select i1 %cmp.i.not.i, i32 13, i32 16
  %mul.i = mul i32 %..i, %call
  %div.i = udiv i32 %18, %mul.i
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 23
  %21 = ptrtoint ptr %fifosize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fifosize, align 4
  %mul = mul i32 %22, 1000000
  %div33449 = lshr i32 %call, 3
  %div34 = udiv i32 %mul, %div33449
  %calc_latency = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 25
  %23 = ptrtoint ptr %calc_latency to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div34, ptr %calc_latency, align 4
  %latency = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 24
  %24 = ptrtoint ptr %latency to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div34, ptr %latency, align 4
  %qos_work = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %25 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %qos_work) #9
  %conv38 = trunc i32 %div.i to i8
  %dll = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 9
  %26 = ptrtoint ptr %dll to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv38, ptr %dll, align 1
  %shr = lshr i32 %div.i, 8
  %conv39 = trunc i32 %shr to i8
  %dlh = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 10
  %27 = ptrtoint ptr %dlh to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv39, ptr %dlh, align 2
  %mdr1 = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 11
  %28 = ptrtoint ptr %mdr1 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 7, ptr %mdr1, align 1
  %fcr = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 7
  %29 = ptrtoint ptr %fcr to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 81, ptr %fcr, align 1
  %call45 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #9
  %30 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %c_cflag, align 4
  tail call void @uart_update_timeout(ptr noundef %port, i32 noundef %31, i32 noundef %call) #9
  %read_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 28
  %32 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 35, ptr %read_status_mask, align 4
  %33 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %termios, align 4
  %and50 = and i32 %34, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %spec.store.select451 = select i1 %tobool51.not, i32 35, i32 47
  %35 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %spec.store.select451, ptr %read_status_mask, align 4
  %36 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %termios, align 4
  %and58 = and i32 %37, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %entry.if.end64_crit_edge, label %if.then60

entry.if.end64_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.then60:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or63 = or i32 %spec.store.select451, 16
  %38 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or63, ptr %read_status_mask, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then60, %entry.if.end64_crit_edge
  %ignore_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 29
  %39 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %ignore_status_mask, align 4
  %40 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %termios, align 4
  %and67 = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  %spec.store.select = select i1 %tobool68.not, i32 0, i32 12
  %42 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %spec.store.select, ptr %ignore_status_mask, align 4
  %43 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %termios, align 4
  %and75 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end64.if.end89_crit_edge, label %if.then77

if.end64.if.end89_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.then77:                                        ; preds = %if.end64
  %or80 = or i32 %spec.store.select, 16
  %45 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or80, ptr %ignore_status_mask, align 4
  %46 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %termios, align 4
  %and82 = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.then77.if.end89_crit_edge, label %if.then84

if.then77.if.end89_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.then84:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #11
  %or87 = or i32 %spec.store.select, 18
  %48 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or87, ptr %ignore_status_mask, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then84, %if.then77.if.end89_crit_edge, %if.end64.if.end89_crit_edge
  %49 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %c_cflag, align 4
  %and91 = and i32 %50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %cmp92 = icmp eq i32 %and91, 0
  br i1 %cmp92, label %if.then94, label %if.end89.if.end98_crit_edge

if.end89.if.end98_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.then94:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ignore_status_mask, align 4
  %or97 = or i32 %52, 1
  store i32 %or97, ptr %ignore_status_mask, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.then94, %if.end89.if.end98_crit_edge
  %ier = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 4
  %53 = ptrtoint ptr %ier to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %ier, align 4
  %55 = and i8 %54, -9
  store i8 %55, ptr %ier, align 4
  %flags103 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %56 = ptrtoint ptr %flags103 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags103, align 4
  %and104 = and i32 %57, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %lor.lhs.false, label %if.end98.if.then113_crit_edge

if.end98.if.then113_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then113

lor.lhs.false:                                    ; preds = %if.end98
  %58 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %c_cflag, align 4
  %60 = and i32 %59, -2147481600
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %60)
  %.not = icmp eq i32 %60, 2048
  br i1 %.not, label %lor.lhs.false.if.end118_crit_edge, label %lor.lhs.false.if.then113_crit_edge

lor.lhs.false.if.then113_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then113

lor.lhs.false.if.end118_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end118

if.then113:                                       ; preds = %lor.lhs.false.if.then113_crit_edge, %if.end98.if.then113_crit_edge
  %61 = or i8 %54, 8
  %62 = ptrtoint ptr %ier to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %ier, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.then113, %lor.lhs.false.if.end118_crit_edge
  %63 = ptrtoint ptr %ier to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %ier, align 4
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %65 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %66 to i32
  %shl.i = shl nuw i32 1, %conv.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i = zext i8 %64 to i16
  %67 = shl nuw i16 %conv1.i, 8
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %68 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %69, i32 %shl.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %67) #9, !srcloc !162
  %70 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %regshift.i, align 1
  %conv.i453 = zext i8 %71 to i32
  %shl.i454 = shl i32 3, %conv.i453
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i455 = zext i8 %14 to i16
  %72 = shl nuw i16 %conv1.i455, 8
  %73 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %membase.i, align 4
  %add.ptr.i457 = getelementptr i8, ptr %74, i32 %shl.i454
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i457, i16 %72) #9, !srcloc !162
  %lcr = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 5
  %75 = ptrtoint ptr %lcr to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %14, ptr %lcr, align 1
  %scr = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 12
  %76 = ptrtoint ptr %scr to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %scr, align 4
  %77 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %regshift.i, align 1
  %conv.i459 = zext i8 %78 to i32
  %shl.i460 = shl i32 3, %conv.i459
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %79 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %membase.i, align 4
  %add.ptr.i462 = getelementptr i8, ptr %80, i32 %shl.i460
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i462, i16 -32768) #9, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %81 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %82, i16 0) #9, !srcloc !162
  %83 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %regshift.i, align 1
  %conv.i467 = zext i8 %84 to i32
  %shl.i468 = shl nuw i32 1, %conv.i467
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %85 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %membase.i, align 4
  %add.ptr.i470 = getelementptr i8, ptr %86, i32 %shl.i468
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i470, i16 0) #9, !srcloc !162
  %87 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %regshift.i, align 1
  %conv.i472 = zext i8 %88 to i32
  %shl.i473 = shl i32 3, %conv.i472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %89 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %membase.i, align 4
  %add.ptr.i475 = getelementptr i8, ptr %90, i32 %shl.i473
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i475, i16 0) #9, !srcloc !162
  %91 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %regshift.i, align 1
  %conv.i477 = zext i8 %92 to i32
  %shl.i478 = shl i32 3, %conv.i477
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %93 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %membase.i, align 4
  %add.ptr.i480 = getelementptr i8, ptr %94, i32 %shl.i478
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i480, i16 -16640) #9, !srcloc !162
  %95 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %regshift.i, align 1
  %conv.i482 = zext i8 %96 to i32
  %shl.i483 = shl i32 2, %conv.i482
  %97 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %membase.i, align 4
  %add.ptr.i485 = getelementptr i8, ptr %98, i32 %shl.i483
  %99 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i485) #9, !srcloc !157
  %100 = lshr i16 %99, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  %efr = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 8
  %101 = trunc i16 %100 to i8
  %conv128 = and i8 %101, -49
  %102 = ptrtoint ptr %efr to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv128, ptr %efr, align 4
  %103 = or i8 %conv128, 16
  %104 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %regshift.i, align 1
  %conv.i487 = zext i8 %105 to i32
  %shl.i488 = shl i32 2, %conv.i487
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i489 = zext i8 %103 to i16
  %106 = shl nuw i16 %conv1.i489, 8
  %107 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %membase.i, align 4
  %add.ptr.i491 = getelementptr i8, ptr %108, i32 %shl.i488
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i491, i16 %106) #9, !srcloc !162
  %109 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %regshift.i, align 1
  %conv.i493 = zext i8 %110 to i32
  %shl.i494 = shl i32 3, %conv.i493
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %111 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %membase.i, align 4
  %add.ptr.i496 = getelementptr i8, ptr %112, i32 %shl.i494
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i496, i16 -32768) #9, !srcloc !162
  %113 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %regshift.i, align 1
  %conv.i498 = zext i8 %114 to i32
  %shl.i499 = shl i32 4, %conv.i498
  %115 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %membase.i, align 4
  %add.ptr.i501 = getelementptr i8, ptr %116, i32 %shl.i499
  %117 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i501) #9, !srcloc !157
  %118 = tail call i16 @llvm.bswap.i16(i16 %117) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  %119 = trunc i16 %118 to i8
  %conv134 = and i8 %119, -65
  %mcr = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 6
  %120 = ptrtoint ptr %mcr to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv134, ptr %mcr, align 2
  %121 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %regshift.i, align 1
  %conv.i504 = zext i8 %122 to i32
  %shl.i505 = shl i32 4, %conv.i504
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %123 = shl i16 %118, 8
  %124 = or i16 %123, 16384
  %125 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %membase.i, align 4
  %add.ptr.i508 = getelementptr i8, ptr %126, i32 %shl.i505
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i508, i16 %124) #9, !srcloc !162
  %127 = ptrtoint ptr %scr to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %scr, align 4
  %129 = or i8 %128, -128
  store i8 %129, ptr %scr, align 4
  %130 = ptrtoint ptr %fcr to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %fcr, align 1
  %132 = and i8 %131, 14
  %133 = or i8 %132, 97
  store i8 %133, ptr %fcr, align 1
  %134 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %regshift.i, align 1
  %conv.i510 = zext i8 %135 to i32
  %shl.i511 = shl i32 2, %conv.i510
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i512 = zext i8 %133 to i16
  %136 = shl nuw nsw i16 %conv1.i512, 8
  %137 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %membase.i, align 4
  %add.ptr.i514 = getelementptr i8, ptr %138, i32 %shl.i511
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i514, i16 %136) #9, !srcloc !162
  %139 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %regshift.i, align 1
  %conv.i516 = zext i8 %140 to i32
  %shl.i517 = shl i32 3, %conv.i516
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %141 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %membase.i, align 4
  %add.ptr.i519 = getelementptr i8, ptr %142, i32 %shl.i517
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i519, i16 -16640) #9, !srcloc !162
  %143 = ptrtoint ptr %scr to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %scr, align 4
  %145 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %regshift.i, align 1
  %conv.i521 = zext i8 %146 to i32
  %shl.i522 = shl i32 16, %conv.i521
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i523 = zext i8 %144 to i16
  %147 = shl nuw i16 %conv1.i523, 8
  %148 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %membase.i, align 4
  %add.ptr.i525 = getelementptr i8, ptr %149, i32 %shl.i522
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i525, i16 %147) #9, !srcloc !162
  %150 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %regshift.i, align 1
  %conv.i527 = zext i8 %151 to i32
  %shl.i528 = shl i32 3, %conv.i527
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %152 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %membase.i, align 4
  %add.ptr.i530 = getelementptr i8, ptr %153, i32 %shl.i528
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i530, i16 -32768) #9, !srcloc !162
  %154 = ptrtoint ptr %mcr to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %mcr, align 2
  %156 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %regshift.i, align 1
  %conv.i532 = zext i8 %157 to i32
  %shl.i533 = shl i32 4, %conv.i532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i534 = zext i8 %155 to i16
  %158 = shl nuw i16 %conv1.i534, 8
  %159 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %membase.i, align 4
  %add.ptr.i536 = getelementptr i8, ptr %160, i32 %shl.i533
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i536, i16 %158) #9, !srcloc !162
  %161 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %regshift.i, align 1
  %conv.i538 = zext i8 %162 to i32
  %shl.i539 = shl i32 3, %conv.i538
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %163 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %membase.i, align 4
  %add.ptr.i541 = getelementptr i8, ptr %164, i32 %shl.i539
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i541, i16 -16640) #9, !srcloc !162
  %165 = ptrtoint ptr %efr to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %efr, align 4
  %167 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %regshift.i, align 1
  %conv.i543 = zext i8 %168 to i32
  %shl.i544 = shl i32 2, %conv.i543
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i545 = zext i8 %166 to i16
  %169 = shl nuw i16 %conv1.i545, 8
  %170 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %membase.i, align 4
  %add.ptr.i547 = getelementptr i8, ptr %171, i32 %shl.i544
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i547, i16 %169) #9, !srcloc !162
  %172 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %regshift.i, align 1
  %conv.i549 = zext i8 %173 to i32
  %shl.i550 = shl i32 3, %conv.i549
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %174 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %membase.i, align 4
  %add.ptr.i552 = getelementptr i8, ptr %175, i32 %shl.i550
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i552, i16 -32768) #9, !srcloc !162
  %errata = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 20
  %176 = ptrtoint ptr %errata to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %errata, align 4
  %and162 = and i32 %177, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  %178 = ptrtoint ptr %mdr1 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %mdr1, align 1
  br i1 %tobool163.not, label %if.else, label %if.then164

if.then164:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @serial_omap_mdr1_errataset(ptr noundef %port, i8 noundef zeroext %179)
  br label %if.end168

if.else:                                          ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  %180 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %regshift.i, align 1
  %conv.i554 = zext i8 %181 to i32
  %shl.i555 = shl i32 8, %conv.i554
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i556 = zext i8 %179 to i16
  %182 = shl nuw i16 %conv1.i556, 8
  %183 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %membase.i, align 4
  %add.ptr.i558 = getelementptr i8, ptr %184, i32 %shl.i555
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i558, i16 %182) #9, !srcloc !162
  br label %if.end168

if.end168:                                        ; preds = %if.else, %if.then164
  %185 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %regshift.i, align 1
  %conv.i560 = zext i8 %186 to i32
  %shl.i561 = shl i32 3, %conv.i560
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %187 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %membase.i, align 4
  %add.ptr.i563 = getelementptr i8, ptr %188, i32 %shl.i561
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i563, i16 -16640) #9, !srcloc !162
  %189 = ptrtoint ptr %efr to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %efr, align 4
  %191 = or i8 %190, 16
  %192 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %regshift.i, align 1
  %conv.i565 = zext i8 %193 to i32
  %shl.i566 = shl i32 2, %conv.i565
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i567 = zext i8 %191 to i16
  %194 = shl nuw i16 %conv1.i567, 8
  %195 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %membase.i, align 4
  %add.ptr.i569 = getelementptr i8, ptr %196, i32 %shl.i566
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i569, i16 %194) #9, !srcloc !162
  %197 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %regshift.i, align 1
  %conv.i571 = zext i8 %198 to i32
  %shl.i572 = shl i32 3, %conv.i571
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %199 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %membase.i, align 4
  %add.ptr.i574 = getelementptr i8, ptr %200, i32 %shl.i572
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i574, i16 0) #9, !srcloc !162
  %201 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %regshift.i, align 1
  %conv.i576 = zext i8 %202 to i32
  %shl.i577 = shl nuw i32 1, %conv.i576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %203 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %membase.i, align 4
  %add.ptr.i579 = getelementptr i8, ptr %204, i32 %shl.i577
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i579, i16 0) #9, !srcloc !162
  %205 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %regshift.i, align 1
  %conv.i581 = zext i8 %206 to i32
  %shl.i582 = shl i32 3, %conv.i581
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %207 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %membase.i, align 4
  %add.ptr.i584 = getelementptr i8, ptr %208, i32 %shl.i582
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i584, i16 -16640) #9, !srcloc !162
  %209 = ptrtoint ptr %dll to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %dll, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i587 = zext i8 %210 to i16
  %211 = shl nuw i16 %conv1.i587, 8
  %212 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %213, i16 %211) #9, !srcloc !162
  %214 = ptrtoint ptr %dlh to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %dlh, align 2
  %216 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %regshift.i, align 1
  %conv.i590 = zext i8 %217 to i32
  %shl.i591 = shl nuw i32 1, %conv.i590
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i592 = zext i8 %215 to i16
  %218 = shl nuw i16 %conv1.i592, 8
  %219 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %membase.i, align 4
  %add.ptr.i594 = getelementptr i8, ptr %220, i32 %shl.i591
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i594, i16 %218) #9, !srcloc !162
  %221 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %regshift.i, align 1
  %conv.i596 = zext i8 %222 to i32
  %shl.i597 = shl i32 3, %conv.i596
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %223 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %membase.i, align 4
  %add.ptr.i599 = getelementptr i8, ptr %224, i32 %shl.i597
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i599, i16 0) #9, !srcloc !162
  %225 = ptrtoint ptr %ier to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %ier, align 4
  %227 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %regshift.i, align 1
  %conv.i601 = zext i8 %228 to i32
  %shl.i602 = shl nuw i32 1, %conv.i601
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i603 = zext i8 %226 to i16
  %229 = shl nuw i16 %conv1.i603, 8
  %230 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %membase.i, align 4
  %add.ptr.i605 = getelementptr i8, ptr %231, i32 %shl.i602
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i605, i16 %229) #9, !srcloc !162
  %232 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %regshift.i, align 1
  %conv.i607 = zext i8 %233 to i32
  %shl.i608 = shl i32 3, %conv.i607
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %234 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %membase.i, align 4
  %add.ptr.i610 = getelementptr i8, ptr %235, i32 %shl.i608
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i610, i16 -16640) #9, !srcloc !162
  %236 = ptrtoint ptr %efr to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %efr, align 4
  %238 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %regshift.i, align 1
  %conv.i612 = zext i8 %239 to i32
  %shl.i613 = shl i32 2, %conv.i612
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i614 = zext i8 %237 to i16
  %240 = shl nuw i16 %conv1.i614, 8
  %241 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %membase.i, align 4
  %add.ptr.i616 = getelementptr i8, ptr %242, i32 %shl.i613
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i616, i16 %240) #9, !srcloc !162
  %243 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %regshift.i, align 1
  %conv.i618 = zext i8 %244 to i32
  %shl.i619 = shl i32 3, %conv.i618
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %245 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %membase.i, align 4
  %add.ptr.i622 = getelementptr i8, ptr %246, i32 %shl.i619
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i622, i16 %72) #9, !srcloc !162
  %247 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %uartclk, align 4
  %div.i.i = udiv i32 %248, %mul.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.i, i32 %248)
  %cmp.i.i = icmp ugt i32 %mul.i.i.i, %248
  %div.i.op.i = mul i32 %div.i.i, 13
  %mul2.i.i = select i1 %cmp.i.i, i32 13, i32 %div.i.op.i
  %div3.i.i = udiv i32 %248, %mul2.i.i
  %sub.i.i = sub i32 %call, %div3.i.i
  %249 = tail call i32 @llvm.abs.i32(i32 %sub.i.i, i1 false) #9
  %div.i6.i = udiv i32 %248, %mul.i5.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i5.i.i, i32 %248)
  %cmp.i7.i = icmp ugt i32 %mul.i5.i.i, %248
  %div.i6.op.i = shl i32 %div.i6.i, 4
  %mul2.i9.i = select i1 %cmp.i7.i, i32 16, i32 %div.i6.op.i
  %div3.i10.i = udiv i32 %248, %mul2.i9.i
  %sub.i11.i = sub i32 %call, %div3.i10.i
  %250 = tail call i32 @llvm.abs.i32(i32 %sub.i11.i, i1 false) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %249, i32 %250)
  %cmp.i.not = icmp slt i32 %249, %250
  %. = select i1 %cmp.i.not, i8 3, i8 0
  %251 = ptrtoint ptr %mdr1 to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 %., ptr %mdr1, align 1
  %252 = ptrtoint ptr %errata to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %errata, align 4
  %and188 = and i32 %253, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and188)
  %tobool189.not = icmp eq i32 %and188, 0
  br i1 %tobool189.not, label %if.else192, label %if.then190

if.then190:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @serial_omap_mdr1_errataset(ptr noundef %port, i8 noundef zeroext %.)
  br label %if.end195

if.else192:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #11
  %254 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %regshift.i, align 1
  %conv.i624 = zext i8 %255 to i32
  %shl.i625 = shl i32 8, %conv.i624
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i626 = zext i8 %. to i16
  %256 = shl nuw nsw i16 %conv1.i626, 8
  %257 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %membase.i, align 4
  %add.ptr.i628 = getelementptr i8, ptr %258, i32 %shl.i625
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i628, i16 %256) #9, !srcloc !162
  br label %if.end195

if.end195:                                        ; preds = %if.else192, %if.then190
  %259 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %regshift.i, align 1
  %conv.i630 = zext i8 %260 to i32
  %shl.i631 = shl i32 3, %conv.i630
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %261 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %membase.i, align 4
  %add.ptr.i633 = getelementptr i8, ptr %262, i32 %shl.i631
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i633, i16 -16640) #9, !srcloc !162
  %arrayidx = getelementptr %struct.ktermios, ptr %termios, i32 0, i32 5, i32 8
  %263 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %arrayidx, align 1
  %265 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %regshift.i, align 1
  %conv.i635 = zext i8 %266 to i32
  %shl.i636 = shl i32 4, %conv.i635
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i637 = zext i8 %264 to i16
  %267 = shl nuw i16 %conv1.i637, 8
  %268 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %membase.i, align 4
  %add.ptr.i639 = getelementptr i8, ptr %269, i32 %shl.i636
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i639, i16 %267) #9, !srcloc !162
  %arrayidx198 = getelementptr %struct.ktermios, ptr %termios, i32 0, i32 5, i32 9
  %270 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %arrayidx198, align 1
  %272 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %regshift.i, align 1
  %conv.i641 = zext i8 %273 to i32
  %shl.i642 = shl i32 6, %conv.i641
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i643 = zext i8 %271 to i16
  %274 = shl nuw i16 %conv1.i643, 8
  %275 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %membase.i, align 4
  %add.ptr.i645 = getelementptr i8, ptr %276, i32 %shl.i642
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i645, i16 %274) #9, !srcloc !162
  %277 = ptrtoint ptr %efr to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %efr, align 4
  %279 = or i8 %278, 16
  %280 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %regshift.i, align 1
  %conv.i647 = zext i8 %281 to i32
  %shl.i648 = shl i32 2, %conv.i647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i649 = zext i8 %279 to i16
  %282 = shl nuw i16 %conv1.i649, 8
  %283 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %membase.i, align 4
  %add.ptr.i651 = getelementptr i8, ptr %284, i32 %shl.i648
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i651, i16 %282) #9, !srcloc !162
  %285 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %regshift.i, align 1
  %conv.i653 = zext i8 %286 to i32
  %shl.i654 = shl i32 3, %conv.i653
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %287 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %membase.i, align 4
  %add.ptr.i656 = getelementptr i8, ptr %288, i32 %shl.i654
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i656, i16 -32768) #9, !srcloc !162
  %289 = ptrtoint ptr %mcr to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %mcr, align 2
  %291 = or i8 %290, 64
  %292 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %regshift.i, align 1
  %conv.i658 = zext i8 %293 to i32
  %shl.i659 = shl i32 4, %conv.i658
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i660 = zext i8 %291 to i16
  %294 = shl nuw i16 %conv1.i660, 8
  %295 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %membase.i, align 4
  %add.ptr.i662 = getelementptr i8, ptr %296, i32 %shl.i659
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i662, i16 %294) #9, !srcloc !162
  %297 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %regshift.i, align 1
  %conv.i664 = zext i8 %298 to i32
  %shl.i665 = shl i32 6, %conv.i664
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %299 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %membase.i, align 4
  %add.ptr.i667 = getelementptr i8, ptr %300, i32 %shl.i665
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i667, i16 3840) #9, !srcloc !162
  %status = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 34
  %301 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %status, align 4
  %and207 = and i32 %302, -29
  store i32 %and207, ptr %status, align 4
  %303 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %304)
  %tobool210.not = icmp sgt i32 %304, -1
  br i1 %tobool210.not, label %if.end195.if.else223_crit_edge, label %land.lhs.true

if.end195.if.else223_crit_edge:                   ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else223

land.lhs.true:                                    ; preds = %if.end195
  %305 = ptrtoint ptr %flags103 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %flags103, align 4
  %and213 = and i32 %306, 3145728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and213)
  %tobool214.not = icmp eq i32 %and213, 0
  br i1 %tobool214.not, label %land.lhs.true.if.else223_crit_edge, label %if.then215

land.lhs.true.if.else223_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else223

if.then215:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %or218 = or i32 %and207, 12
  %307 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 %or218, ptr %status, align 4
  %308 = ptrtoint ptr %efr to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %efr, align 4
  %310 = or i8 %309, -128
  br label %if.end228

if.else223:                                       ; preds = %land.lhs.true.if.else223_crit_edge, %if.end195.if.else223_crit_edge
  %311 = ptrtoint ptr %efr to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %efr, align 4
  %313 = and i8 %312, 63
  br label %if.end228

if.end228:                                        ; preds = %if.else223, %if.then215
  %storemerge450 = phi i8 [ %313, %if.else223 ], [ %310, %if.then215 ]
  %314 = ptrtoint ptr %efr to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 %storemerge450, ptr %efr, align 4
  %315 = ptrtoint ptr %flags103 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %flags103, align 4
  %and231 = and i32 %316, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and231)
  %tobool232.not = icmp eq i32 %and231, 0
  br i1 %tobool232.not, label %if.end228.if.end273_crit_edge, label %if.then233

if.end228.if.end273_crit_edge:                    ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end273

if.then233:                                       ; preds = %if.end228
  %317 = and i8 %storemerge450, -16
  %318 = ptrtoint ptr %efr to i32
  call void @__asan_store1_noabort(i32 %318)
  store i8 %317, ptr %efr, align 4
  %319 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %termios, align 4
  %and239 = and i32 %320, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and239)
  %tobool240.not = icmp eq i32 %and239, 0
  br i1 %tobool240.not, label %if.then233.if.end246_crit_edge, label %if.then241

if.then233.if.end246_crit_edge:                   ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end246

if.then241:                                       ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #11
  %321 = or i8 %317, 2
  %322 = ptrtoint ptr %efr to i32
  call void @__asan_store1_noabort(i32 %322)
  store i8 %321, ptr %efr, align 4
  br label %if.end246

if.end246:                                        ; preds = %if.then241, %if.then233.if.end246_crit_edge
  %323 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %termios, align 4
  %and248 = and i32 %324, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and248)
  %tobool249.not = icmp eq i32 %and248, 0
  br i1 %tobool249.not, label %if.end246.if.end258_crit_edge, label %if.then250

if.end246.if.end258_crit_edge:                    ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end258

if.then250:                                       ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #11
  %325 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %status, align 4
  %or253 = or i32 %326, 16
  store i32 %or253, ptr %status, align 4
  %327 = ptrtoint ptr %efr to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %efr, align 4
  %329 = or i8 %328, 8
  store i8 %329, ptr %efr, align 4
  br label %if.end258

if.end258:                                        ; preds = %if.then250, %if.end246.if.end258_crit_edge
  %330 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %termios, align 4
  %332 = ptrtoint ptr %mcr to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %mcr, align 2
  %334 = and i8 %333, -33
  %and260 = lshr i32 %331, 6
  %335 = trunc i32 %and260 to i8
  %336 = and i8 %335, 32
  %.sink = or i8 %334, %336
  store i8 %.sink, ptr %mcr, align 2
  br label %if.end273

if.end273:                                        ; preds = %if.end258, %if.end228.if.end273_crit_edge
  %337 = ptrtoint ptr %mcr to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %mcr, align 2
  %339 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %339)
  %340 = load i8, ptr %regshift.i, align 1
  %conv.i669 = zext i8 %340 to i32
  %shl.i670 = shl i32 4, %conv.i669
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i671 = zext i8 %338 to i16
  %341 = shl nuw i16 %conv1.i671, 8
  %342 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %membase.i, align 4
  %add.ptr.i673 = getelementptr i8, ptr %343, i32 %shl.i670
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i673, i16 %341) #9, !srcloc !162
  %344 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %regshift.i, align 1
  %conv.i675 = zext i8 %345 to i32
  %shl.i676 = shl i32 3, %conv.i675
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %346 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %membase.i, align 4
  %add.ptr.i678 = getelementptr i8, ptr %347, i32 %shl.i676
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i678, i16 -16640) #9, !srcloc !162
  %348 = ptrtoint ptr %efr to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %efr, align 4
  %350 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %regshift.i, align 1
  %conv.i680 = zext i8 %351 to i32
  %shl.i681 = shl i32 2, %conv.i680
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i682 = zext i8 %349 to i16
  %352 = shl nuw i16 %conv1.i682, 8
  %353 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %membase.i, align 4
  %add.ptr.i684 = getelementptr i8, ptr %354, i32 %shl.i681
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i684, i16 %352) #9, !srcloc !162
  %355 = ptrtoint ptr %lcr to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %lcr, align 1
  %357 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %regshift.i, align 1
  %conv.i686 = zext i8 %358 to i32
  %shl.i687 = shl i32 3, %conv.i686
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i688 = zext i8 %356 to i16
  %359 = shl nuw i16 %conv1.i688, 8
  %360 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %membase.i, align 4
  %add.ptr.i690 = getelementptr i8, ptr %361, i32 %shl.i687
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i690, i16 %359) #9, !srcloc !162
  %mctrl = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 36
  %362 = ptrtoint ptr %mctrl to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %mctrl, align 4
  tail call void @serial_omap_set_mctrl(ptr noundef %port, i32 noundef %363)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call45) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial_omap_set_termios.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial_omap_set_termios, %if.then290)) #9
          to label %do.end295 [label %if.then290], !srcloc !166

if.then290:                                       ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %364 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %dev, align 4
  %line = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %366 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %line, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial_omap_set_termios.__UNIQUE_ID_ddebug235, ptr noundef %365, ptr noundef nonnull @.str.37, i32 noundef %367) #9
  br label %do.end295

do.end295:                                        ; preds = %if.then290, %if.end273
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_omap_pm(ptr nocapture noundef readonly %port, i32 noundef %state, i32 noundef %oldstate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial_omap_pm.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial_omap_pm, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !166

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %line = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %2 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %line, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial_omap_pm.__UNIQUE_ID_ddebug236, ptr noundef %1, ptr noundef nonnull @.str.42, i32 noundef %3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %4 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %5 to i32
  %shl.i = shl i32 3, %conv.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %6 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %shl.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 -16640) #9, !srcloc !162
  %8 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %regshift.i, align 1
  %conv.i21 = zext i8 %9 to i32
  %shl.i22 = shl i32 2, %conv.i21
  %10 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %11, i32 %shl.i22
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i24) #9, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  %13 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %regshift.i, align 1
  %conv.i26 = zext i8 %14 to i32
  %shl.i27 = shl i32 2, %conv.i26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %or = and i16 %12, -4352
  %15 = or i16 %or, 4096
  %16 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %17, i32 %shl.i27
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i29, i16 %15) #9, !srcloc !162
  %18 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %regshift.i, align 1
  %conv.i31 = zext i8 %19 to i32
  %shl.i32 = shl i32 3, %conv.i31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase.i, align 4
  %add.ptr.i34 = getelementptr i8, ptr %21, i32 %shl.i32
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i34, i16 0) #9, !srcloc !162
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp.not = icmp eq i32 %state, 0
  %22 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %regshift.i, align 1
  %conv.i36 = zext i8 %23 to i32
  %shl.i37 = shl nuw i32 1, %conv.i36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i38 = select i1 %cmp.not, i16 0, i16 4096
  %24 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %25, i32 %shl.i37
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i40, i16 %conv1.i38) #9, !srcloc !162
  %26 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %regshift.i, align 1
  %conv.i42 = zext i8 %27 to i32
  %shl.i43 = shl i32 3, %conv.i42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %28 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %29, i32 %shl.i43
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i45, i16 -16640) #9, !srcloc !162
  %30 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %regshift.i, align 1
  %conv.i47 = zext i8 %31 to i32
  %shl.i48 = shl i32 2, %conv.i47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %32 = and i16 %12, -256
  %33 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %34, i32 %shl.i48
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i51, i16 %32) #9, !srcloc !162
  %35 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %regshift.i, align 1
  %conv.i53 = zext i8 %36 to i32
  %shl.i54 = shl i32 3, %conv.i53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %37 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %membase.i, align 4
  %add.ptr.i56 = getelementptr i8, ptr %38, i32 %shl.i54
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i56, i16 0) #9, !srcloc !162
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @serial_omap_type(ptr noundef readonly %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial_omap_type.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial_omap_type, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !166

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %line = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %2 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %line, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial_omap_type.__UNIQUE_ID_ddebug241, ptr noundef %1, ptr noundef nonnull @.str.44, i32 noundef %3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %name = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 17
  ret ptr %name
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_omap_release_port(ptr nocapture noundef readonly %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial_omap_release_port.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial_omap_release_port, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !166

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial_omap_release_port.__UNIQUE_ID_ddebug237, ptr noundef %1, ptr noundef nonnull @.str.46) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_omap_request_port(ptr nocapture noundef readonly %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial_omap_request_port.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial_omap_request_port, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !166

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial_omap_request_port.__UNIQUE_ID_ddebug238, ptr noundef %1, ptr noundef nonnull @.str.48) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_omap_config_port(ptr nocapture noundef %port, i32 noundef %flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial_omap_config_port.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial_omap_config_port, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !166

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %line = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %2 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %line, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial_omap_config_port.__UNIQUE_ID_ddebug239, ptr noundef %1, ptr noundef nonnull @.str.50, i32 noundef %3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 96, ptr %type, align 4
  %flags8 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %5 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags8, align 4
  %or = or i32 %6, 7340032
  store i32 %or, ptr %flags8, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_omap_verify_port(ptr nocapture noundef readonly %port, ptr nocapture noundef readnone %ser) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial_omap_verify_port.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial_omap_verify_port, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !166

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial_omap_verify_port.__UNIQUE_ID_ddebug240, ptr noundef %1, ptr noundef nonnull @.str.52) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_omap_poll_put_char(ptr nocapture noundef %port, i8 noundef zeroext %ch) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regshift.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %lsr_break_flag.i = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 15
  br label %do.body.i

do.body.i:                                        ; preds = %if.end2.i.do.body.i_crit_edge, %entry
  %tmout.0.i = phi i32 [ 10000, %entry ], [ %dec.i, %if.end2.i.do.body.i_crit_edge ]
  %0 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %regshift.i.i, align 1
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl i32 5, %conv.i.i
  %2 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %shl.i.i
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #9, !srcloc !157
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  %conv3.i.i = zext i16 %5 to i32
  %and.i = and i32 %conv3.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.if.end.i_crit_edge, label %if.then.i

do.body.i.if.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %lsr_break_flag.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16, ptr %lsr_break_flag.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.body.i.if.end.i_crit_edge
  %dec.i = add nsw i32 %tmout.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.end.i.do.end.i_crit_edge, label %if.end2.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.end2.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #9
  %and3.i = and i32 %conv3.i.i, 96
  %cmp4.not.i = icmp eq i32 %and3.i, 96
  br i1 %cmp4.not.i, label %if.end2.i.do.end.i_crit_edge, label %if.end2.i.do.body.i_crit_edge

if.end2.i.do.body.i_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.end2.i.do.end.i_crit_edge:                     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.end2.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  %flags.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and5.i = and i32 %9, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %do.end.i.wait_for_xmitr.exit_crit_edge, label %for.cond.preheader.i

do.end.i.wait_for_xmitr.exit_crit_edge:           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_for_xmitr.exit

for.cond.preheader.i:                             ; preds = %do.end.i
  %msr_saved_flags.i = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %tmout.134.i = phi i32 [ 1000000, %for.cond.preheader.i ], [ %dec16.i, %for.inc.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %regshift.i.i, align 1
  %conv.i27.i = zext i8 %11 to i32
  %shl.i28.i = shl i32 6, %conv.i27.i
  %12 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i30.i = getelementptr i8, ptr %13, i32 %shl.i28.i
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i30.i) #9, !srcloc !157
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  %16 = ptrtoint ptr %msr_saved_flags.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %msr_saved_flags.i, align 4
  %18 = trunc i16 %15 to i8
  %19 = and i8 %18, 15
  %conv11.i = or i8 %19, %17
  store i8 %conv11.i, ptr %msr_saved_flags.i, align 4
  %20 = and i16 %15, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool13.not.i = icmp eq i16 %20, 0
  br i1 %tobool13.not.i, label %for.inc.i, label %for.body.i.wait_for_xmitr.exit_crit_edge

for.body.i.wait_for_xmitr.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_for_xmitr.exit

for.inc.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #9
  %dec16.i = add nsw i32 %tmout.134.i, -1
  %tobool8.not.i = icmp eq i32 %dec16.i, 0
  br i1 %tobool8.not.i, label %for.inc.i.wait_for_xmitr.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.wait_for_xmitr.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_for_xmitr.exit

wait_for_xmitr.exit:                              ; preds = %for.inc.i.wait_for_xmitr.exit_crit_edge, %for.body.i.wait_for_xmitr.exit_crit_edge, %do.end.i.wait_for_xmitr.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i = zext i8 %ch to i16
  %22 = shl nuw i16 %conv1.i, 8
  %23 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %24, i16 %22) #9, !srcloc !162
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_omap_poll_get_char(ptr nocapture noundef readonly %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %0 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %1 to i32
  %shl.i = shl i32 5, %conv.i
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %shl.i
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #9, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  %5 = and i16 %4, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i, align 4
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %7) #9, !srcloc !157
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  %conv3.i7 = zext i16 %9 to i32
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %status.0 = phi i32 [ %conv3.i7, %if.end ], [ 16711680, %entry.out_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_modem_status(ptr noundef %up) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 25
  %0 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %1 to i32
  %shl.i = shl i32 6, %conv.i
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 2
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %shl.i
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #9, !srcloc !157
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  %conv3.i = zext i16 %5 to i32
  %msr_saved_flags = getelementptr inbounds %struct.uart_omap_port, ptr %up, i32 0, i32 16
  %6 = ptrtoint ptr %msr_saved_flags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %msr_saved_flags, align 4
  %conv = zext i8 %7 to i32
  %or = or i32 %conv, %conv3.i
  store i8 0, ptr %msr_saved_flags, align 4
  %and = and i32 %or, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %ier = getelementptr inbounds %struct.uart_omap_port, ptr %up, i32 0, i32 4
  %8 = ptrtoint ptr %ier to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ier, align 4
  %10 = and i8 %9, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool6.not = icmp eq i8 %10, 0
  br i1 %tobool6.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true7:                                   ; preds = %land.lhs.true
  %state = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 30
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %state, align 4
  %cmp8.not = icmp eq ptr %12, null
  br i1 %cmp8.not, label %land.lhs.true7.cleanup_crit_edge, label %if.then10

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10:                                        ; preds = %land.lhs.true7
  %and11 = and i32 %or, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then10.if.end15_crit_edge, label %if.then13

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %rng = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 31, i32 2
  %13 = ptrtoint ptr %rng to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rng, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %rng, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.then10.if.end15_crit_edge
  %and16 = and i32 %or, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end22_crit_edge, label %if.then18

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %dsr = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 31, i32 1
  %15 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dsr, align 4
  %inc21 = add i32 %16, 1
  store i32 %inc21, ptr %dsr, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end15.if.end22_crit_edge
  %and23 = and i32 %or, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end28_crit_edge, label %if.then25

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %and27 = and i32 %or, 128
  tail call void @uart_handle_dcd_change(ptr noundef %up, i32 noundef %and27) #9
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end22.if.end28_crit_edge
  %and29 = and i32 %or, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.if.end34_crit_edge, label %if.then31

if.end28.if.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %and33 = and i32 %or, 16
  tail call void @uart_handle_cts_change(ptr noundef %up, i32 noundef %and33) #9
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end28.if.end34_crit_edge
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state, align 4
  %delta_msr_wait = getelementptr inbounds %struct.tty_port, ptr %18, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %delta_msr_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %land.lhs.true7.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %or
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_handle_dcd_change(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_handle_cts_change(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_omap_irq(i32 noundef %irq, ptr noundef %dev_id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %dev_id) #9
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 25
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %regshift.i, align 1
  %conv.i59 = zext i8 %1 to i32
  %shl.i60 = shl i32 2, %conv.i59
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 4
  %add.ptr.i61 = getelementptr i8, ptr %3, i32 %shl.i60
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i61) #9, !srcloc !157
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  %conv3.i62 = zext i16 %5 to i32
  %and63 = and i32 %conv3.i62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool.not64 = icmp eq i32 %and63, 0
  br i1 %tobool.not64, label %if.end.lr.ph, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.lr.ph:                                     ; preds = %entry
  %rs485.i42 = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 56
  %rs485_tx_filter_count.i44 = getelementptr inbounds %struct.uart_omap_port, ptr %dev_id, i32 0, i32 28
  %rx.i46 = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 4
  %brk.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 9
  %state1.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 30
  %handle_break.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 17
  %has_sysrq.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 48
  %cons.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 32
  %line.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 41
  %sysrq.i.i54 = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 46
  %flags.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 33
  %parity.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 8
  %frame.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 6
  %overrun.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 7
  %lsr_break_flag.i = getelementptr inbounds %struct.uart_omap_port, ptr %dev_id, i32 0, i32 15
  %x_char.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 24
  %tx.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 5
  %hw_stopped.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 35
  %fifosize.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 23
  br label %if.end

do.body:                                          ; preds = %do.cond
  %dec = add nsw i32 %max_count.065, -1
  %6 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %7 to i32
  %shl.i = shl i32 2, %conv.i
  %8 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %shl.i
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #9, !srcloc !157
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  %conv3.i = zext i16 %11 to i32
  %and = and i32 %conv3.i, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.if.end_crit_edge, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body.if.end_crit_edge, %if.end.lr.ph
  %conv3.i66 = phi i32 [ %conv3.i62, %if.end.lr.ph ], [ %conv3.i, %do.body.if.end_crit_edge ]
  %max_count.065 = phi i32 [ 256, %if.end.lr.ph ], [ %dec, %do.body.if.end_crit_edge ]
  %12 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %regshift.i, align 1
  %conv.i26 = zext i8 %13 to i32
  %shl.i27 = shl i32 5, %conv.i26
  %14 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %15, i32 %shl.i27
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i29) #9, !srcloc !157
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  %conv3.i30 = zext i16 %17 to i32
  %and2 = lshr i32 %conv3.i66, 1
  %18 = and i32 %and2, 31
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %18, label %if.end.do.cond_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 6, label %if.end.sw.bb5_crit_edge
    i32 2, label %if.end.sw.bb5_crit_edge73
    i32 3, label %sw.bb6
  ]

if.end.sw.bb5_crit_edge73:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

if.end.sw.bb5_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

if.end.do.cond_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call fastcc i32 @check_modem_status(ptr noundef %dev_id)
  br label %do.cond

sw.bb4:                                           ; preds = %if.end
  %20 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %state1.i.i, align 4
  %xmit1.i = getelementptr inbounds %struct.uart_state, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %x_char.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %x_char.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %if.end17.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i.i = zext i8 %23 to i16
  %24 = shl nuw i16 %conv1.i.i, 8
  %25 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %26, i16 %24) #9, !srcloc !162
  %27 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx.i, align 4
  %inc.i = add i32 %28, 1
  store i32 %inc.i, ptr %tx.i, align 4
  %29 = ptrtoint ptr %x_char.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %x_char.i, align 4
  %30 = ptrtoint ptr %rs485.i42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rs485.i42, align 4
  %32 = and i32 %31, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %if.then15.i, label %if.then.i.do.cond_crit_edge

if.then.i.do.cond_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond

if.then15.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %rs485_tx_filter_count.i44 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rs485_tx_filter_count.i44, align 4
  %inc16.i = add i32 %35, 1
  store i32 %inc16.i, ptr %rs485_tx_filter_count.i44, align 4
  br label %do.cond

if.end17.i:                                       ; preds = %sw.bb4
  %head.i = getelementptr inbounds %struct.uart_state, ptr %21, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %head.i, align 4
  %tail.i = getelementptr inbounds %struct.uart_state, ptr %21, i32 0, i32 2, i32 2
  %38 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp.i = icmp eq i32 %37, %39
  br i1 %cmp.i, label %if.end17.i.if.then21.i_crit_edge, label %lor.lhs.false.i

if.end17.i.if.then21.i_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21.i

lor.lhs.false.i:                                  ; preds = %if.end17.i
  %tty2.i.i = getelementptr inbounds %struct.tty_port, ptr %21, i32 0, i32 1
  %40 = ptrtoint ptr %tty2.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tty2.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.uart_tx_stopped.exit.i_crit_edge, label %land.lhs.true.i.i

lor.lhs.false.i.uart_tx_stopped.exit.i_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uart_tx_stopped.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i
  %stopped.i.i = getelementptr inbounds %struct.tty_struct, ptr %41, i32 0, i32 19, i32 1
  %42 = ptrtoint ptr %stopped.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %stopped.i.i, align 4, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool3.not.i.i = icmp eq i8 %43, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.uart_tx_stopped.exit.i_crit_edge, label %land.lhs.true.i.i.if.then21.i_crit_edge

land.lhs.true.i.i.if.then21.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21.i

land.lhs.true.i.i.uart_tx_stopped.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uart_tx_stopped.exit.i

uart_tx_stopped.exit.i:                           ; preds = %land.lhs.true.i.i.uart_tx_stopped.exit.i_crit_edge, %lor.lhs.false.i.uart_tx_stopped.exit.i_crit_edge
  %44 = ptrtoint ptr %hw_stopped.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %hw_stopped.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool4.not.i.not.i = icmp eq i32 %45, 0
  br i1 %tobool4.not.i.not.i, label %if.end23.i, label %uart_tx_stopped.exit.i.if.then21.i_crit_edge

uart_tx_stopped.exit.i.if.then21.i_crit_edge:     ; preds = %uart_tx_stopped.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21.i

if.then21.i:                                      ; preds = %uart_tx_stopped.exit.i.if.then21.i_crit_edge, %land.lhs.true.i.i.if.then21.i_crit_edge, %if.end17.i.if.then21.i_crit_edge
  tail call void @serial_omap_stop_tx(ptr noundef %dev_id) #9
  br label %do.cond

if.end23.i:                                       ; preds = %uart_tx_stopped.exit.i
  %46 = ptrtoint ptr %fifosize.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fifosize.i, align 4
  %div1.i = lshr i32 %47, 2
  br label %do.body.i

do.body.i:                                        ; preds = %if.end48.i.do.body.i_crit_edge, %if.end23.i
  %count.0.i = phi i32 [ %div1.i, %if.end23.i ], [ %dec.i, %if.end48.i.do.body.i_crit_edge ]
  %48 = ptrtoint ptr %xmit1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %xmit1.i, align 4
  %50 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tail.i, align 4
  %arrayidx.i = getelementptr i8, ptr %49, i32 %51
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i6.i = zext i8 %53 to i16
  %54 = shl nuw i16 %conv1.i6.i, 8
  %55 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %56, i16 %54) #9, !srcloc !162
  %57 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tail.i, align 4
  %add.i = add i32 %58, 1
  %and28.i = and i32 %add.i, 4095
  store i32 %and28.i, ptr %tail.i, align 4
  %59 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tx.i, align 4
  %inc33.i = add i32 %60, 1
  store i32 %inc33.i, ptr %tx.i, align 4
  %61 = ptrtoint ptr %rs485.i42 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rs485.i42, align 4
  %63 = and i32 %62, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %if.then45.i, label %do.body.i.if.end48.i_crit_edge

do.body.i.if.end48.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i

if.then45.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %rs485_tx_filter_count.i44 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rs485_tx_filter_count.i44, align 4
  %inc47.i = add i32 %66, 1
  store i32 %inc47.i, ptr %rs485_tx_filter_count.i44, align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then45.i, %do.body.i.if.end48.i_crit_edge
  %67 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %head.i, align 4
  %69 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %70)
  %cmp51.i = icmp ne i32 %68, %70
  %dec.i = add nsw i32 %count.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.0.i)
  %cmp55.i = icmp sgt i32 %count.0.i, 1
  %or.cond3.i = select i1 %cmp51.i, i1 %cmp55.i, i1 false
  br i1 %or.cond3.i, label %if.end48.i.do.body.i_crit_edge, label %do.end.i

if.end48.i.do.body.i_crit_edge:                   ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.end.i:                                         ; preds = %if.end48.i
  %sub.i = sub i32 %68, %70
  %and59.i = and i32 %sub.i, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i)
  %cmp60.i = icmp eq i32 %and59.i, 0
  br i1 %cmp60.i, label %if.then62.i, label %do.end.i.if.end64.i_crit_edge

do.end.i.if.end64.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64.i

if.then62.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @uart_write_wakeup(ptr noundef %dev_id) #9
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then62.i, %do.end.i.if.end64.i_crit_edge
  %71 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %head.i, align 4
  %73 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp67.i = icmp eq i32 %72, %74
  br i1 %cmp67.i, label %if.then69.i, label %if.end64.i.do.cond_crit_edge

if.end64.i.do.cond_crit_edge:                     ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond

if.then69.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @serial_omap_stop_tx(ptr noundef %dev_id) #9
  br label %do.cond

sw.bb5:                                           ; preds = %if.end.sw.bb5_crit_edge, %if.end.sw.bb5_crit_edge73
  %and.i = and i32 %conv3.i30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i31 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i31, label %sw.bb5.do.cond_crit_edge, label %if.end.i

sw.bb5.do.cond_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond

if.end.i:                                         ; preds = %sw.bb5
  %75 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %membase.i, align 4
  %77 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %76) #9, !srcloc !157
  %78 = lshr i16 %77, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  %conv3.i.i = zext i16 %78 to i32
  %79 = ptrtoint ptr %rs485.i42 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rs485.i42, align 4
  %81 = and i32 %80, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %land.lhs.true8.i, label %if.end.i.if.end12.i_crit_edge

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

land.lhs.true8.i:                                 ; preds = %if.end.i
  %83 = ptrtoint ptr %rs485_tx_filter_count.i44 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %rs485_tx_filter_count.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool9.not.i = icmp eq i32 %84, 0
  br i1 %tobool9.not.i, label %land.lhs.true8.i.if.end12.i_crit_edge, label %if.then10.i

land.lhs.true8.i.if.end12.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.then10.i:                                      ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #11
  %dec.i35 = add i32 %84, -1
  %85 = ptrtoint ptr %rs485_tx_filter_count.i44 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %dec.i35, ptr %rs485_tx_filter_count.i44, align 4
  br label %do.cond

if.end12.i:                                       ; preds = %land.lhs.true8.i.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge
  %86 = ptrtoint ptr %rx.i46 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rx.i46, align 4
  %inc.i36 = add i32 %87, 1
  store i32 %inc.i36, ptr %rx.i46, align 4
  %88 = ptrtoint ptr %sysrq.i.i54 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %sysrq.i.i54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not.i.i37 = icmp eq i32 %89, 0
  br i1 %tobool.not.i.i37, label %if.end12.i.if.end19.i_crit_edge, label %if.end.i.i

if.end12.i.if.end19.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

if.end.i.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %77)
  %tobool1.not.i.i = icmp ult i16 %77, 256
  br i1 %tobool1.not.i.i, label %if.end.i.i.uart_handle_sysrq_char.exit.thread37.i_crit_edge, label %land.lhs.true.i.i38

if.end.i.i.uart_handle_sysrq_char.exit.thread37.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uart_handle_sysrq_char.exit.thread37.i

land.lhs.true.i.i38:                              ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %90 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %90, %89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.then3.i.i, label %land.lhs.true.i.i38.uart_handle_sysrq_char.exit.thread37.i_crit_edge

land.lhs.true.i.i38.uart_handle_sysrq_char.exit.thread37.i_crit_edge: ; preds = %land.lhs.true.i.i38
  call void @__sanitizer_cov_trace_pc() #11
  br label %uart_handle_sysrq_char.exit.thread37.i

if.then3.i.i:                                     ; preds = %land.lhs.true.i.i38
  %call.i.i = tail call i32 @sysrq_mask() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end7.i.i, label %uart_handle_sysrq_char.exit.i

if.end7.i.i:                                      ; preds = %if.then3.i.i
  %call8.i.i = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %dev_id, i32 noundef %conv3.i.i) #9
  br i1 %call8.i.i, label %if.end7.i.i.do.cond_crit_edge, label %if.end7.i.i.uart_handle_sysrq_char.exit.thread37.i_crit_edge

if.end7.i.i.uart_handle_sysrq_char.exit.thread37.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uart_handle_sysrq_char.exit.thread37.i

if.end7.i.i.do.cond_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond

uart_handle_sysrq_char.exit.thread37.i:           ; preds = %if.end7.i.i.uart_handle_sysrq_char.exit.thread37.i_crit_edge, %land.lhs.true.i.i38.uart_handle_sysrq_char.exit.thread37.i_crit_edge, %if.end.i.i.uart_handle_sysrq_char.exit.thread37.i_crit_edge
  %91 = ptrtoint ptr %sysrq.i.i54 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %sysrq.i.i54, align 4
  br label %if.end19.i

uart_handle_sysrq_char.exit.i:                    ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @handle_sysrq(i32 noundef %conv3.i.i) #9
  %92 = ptrtoint ptr %sysrq.i.i54 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %sysrq.i.i54, align 4
  br label %do.cond

if.end19.i:                                       ; preds = %uart_handle_sysrq_char.exit.thread37.i, %if.end12.i.if.end19.i_crit_edge
  tail call void @uart_insert_char(ptr noundef %dev_id, i32 noundef %conv3.i30, i32 noundef 2, i32 noundef %conv3.i.i, i32 noundef 0) #9
  br label %do.cond

sw.bb6:                                           ; preds = %if.end
  %and.i39 = and i32 %conv3.i30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i39)
  %tobool.not.i40 = icmp eq i32 %and.i39, 0
  br i1 %tobool.not.i40, label %sw.bb6.if.end14.i_crit_edge, label %if.then.i43, !prof !169

sw.bb6.if.end14.i_crit_edge:                      ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then.i43:                                      ; preds = %sw.bb6
  %93 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %membase.i, align 4
  %95 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %94) #9, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  %96 = ptrtoint ptr %rs485.i42 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %rs485.i42, align 4
  %98 = and i32 %97, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %98)
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %land.lhs.true10.i, label %if.then.i43.if.end14.i_crit_edge

if.then.i43.if.end14.i_crit_edge:                 ; preds = %if.then.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

land.lhs.true10.i:                                ; preds = %if.then.i43
  %100 = ptrtoint ptr %rs485_tx_filter_count.i44 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %rs485_tx_filter_count.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool11.not.i = icmp eq i32 %101, 0
  br i1 %tobool11.not.i, label %land.lhs.true10.i.if.end14.i_crit_edge, label %if.then12.i

land.lhs.true10.i.if.end14.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then12.i:                                      ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #11
  %dec.i45 = add i32 %101, -1
  %102 = ptrtoint ptr %rs485_tx_filter_count.i44 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %dec.i45, ptr %rs485_tx_filter_count.i44, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %land.lhs.true10.i.if.end14.i_crit_edge, %if.then.i43.if.end14.i_crit_edge, %sw.bb6.if.end14.i_crit_edge
  %103 = ptrtoint ptr %rx.i46 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rx.i46, align 4
  %inc.i47 = add i32 %104, 1
  store i32 %inc.i47, ptr %rx.i46, align 4
  %and16.i = and i32 %conv3.i30, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end14.i.if.end28.i_crit_edge, label %if.then18.i

if.end14.i.if.end28.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

if.then18.i:                                      ; preds = %if.end14.i
  %and19.i = and i32 %conv3.i30, 65523
  %105 = ptrtoint ptr %brk.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %brk.i, align 4
  %inc22.i = add i32 %106, 1
  store i32 %inc22.i, ptr %brk.i, align 4
  %107 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %state1.i.i, align 4
  %109 = ptrtoint ptr %handle_break.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %handle_break.i.i, align 4
  %tobool.not.i.i48 = icmp eq ptr %110, null
  br i1 %tobool.not.i.i48, label %if.then18.i.if.end.i.i50_crit_edge, label %if.then.i.i

if.then18.i.if.end.i.i50_crit_edge:               ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i50

if.then.i.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %110(ptr noundef %dev_id) #9
  br label %if.end.i.i50

if.end.i.i50:                                     ; preds = %if.then.i.i, %if.then18.i.if.end.i.i50_crit_edge
  %111 = ptrtoint ptr %has_sysrq.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %has_sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool3.not.i.i49 = icmp eq i8 %112, 0
  br i1 %tobool3.not.i.i49, label %if.end.i.i50.if.end15.i.i_crit_edge, label %land.lhs.true.i.i52

if.end.i.i50.if.end15.i.i_crit_edge:              ; preds = %if.end.i.i50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i.i

land.lhs.true.i.i52:                              ; preds = %if.end.i.i50
  %113 = ptrtoint ptr %cons.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cons.i.i, align 4
  %tobool4.not.i.i51 = icmp eq ptr %114, null
  br i1 %tobool4.not.i.i51, label %land.lhs.true.i.i52.if.end15.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i52.if.end15.i.i_crit_edge:       ; preds = %land.lhs.true.i.i52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i52
  %index.i.i = getelementptr inbounds %struct.console, ptr %114, i32 0, i32 9
  %115 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %index.i.i, align 2
  %conv7.i.i = sext i16 %116 to i32
  %117 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %line.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %conv7.i.i)
  %cmp.i.i53 = icmp eq i32 %118, %conv7.i.i
  br i1 %cmp.i.i53, label %if.then9.i.i, label %land.lhs.true5.i.i.if.end15.i.i_crit_edge

land.lhs.true5.i.i.if.end15.i.i_crit_edge:        ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i.i

if.then9.i.i:                                     ; preds = %land.lhs.true5.i.i
  %119 = ptrtoint ptr %sysrq.i.i54 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %sysrq.i.i54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool10.not.i.i = icmp eq i32 %120, 0
  br i1 %tobool10.not.i.i, label %uart_handle_break.exit.i, label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %121 = ptrtoint ptr %sysrq.i.i54 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %sysrq.i.i54, align 4
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.end13.i.i, %land.lhs.true5.i.i.if.end15.i.i_crit_edge, %land.lhs.true.i.i52.if.end15.i.i_crit_edge, %if.end.i.i50.if.end15.i.i_crit_edge
  %122 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %123, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool16.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end15.i.i.if.end28.i_crit_edge, label %if.then17.i.i

if.end15.i.i.if.end28.i_crit_edge:                ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

if.then17.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %tty.i.i = getelementptr inbounds %struct.tty_port, ptr %108, i32 0, i32 1
  %124 = ptrtoint ptr %tty.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %tty.i.i, align 4
  tail call void @do_SAK(ptr noundef %125) #9
  br label %if.end28.i

uart_handle_break.exit.i:                         ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %126 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %126, 500
  %127 = ptrtoint ptr %sysrq.i.i54 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %add.i.i, ptr %sysrq.i.i54, align 4
  br label %do.cond

if.end28.i:                                       ; preds = %if.then17.i.i, %if.end15.i.i.if.end28.i_crit_edge, %if.end14.i.if.end28.i_crit_edge
  %lsr.addr.0.i = phi i32 [ %conv3.i30, %if.end14.i.if.end28.i_crit_edge ], [ %and19.i, %if.then17.i.i ], [ %and19.i, %if.end15.i.i.if.end28.i_crit_edge ]
  %flag.0.i = phi i32 [ 0, %if.end14.i.if.end28.i_crit_edge ], [ 1, %if.then17.i.i ], [ 1, %if.end15.i.i.if.end28.i_crit_edge ]
  %and29.i = and i32 %lsr.addr.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.end28.i.if.end35.i_crit_edge, label %if.then31.i

if.end28.i.if.end35.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

if.then31.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  %128 = ptrtoint ptr %parity.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %parity.i, align 4
  %inc34.i = add i32 %129, 1
  store i32 %inc34.i, ptr %parity.i, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then31.i, %if.end28.i.if.end35.i_crit_edge
  %flag.1.i = phi i32 [ 3, %if.then31.i ], [ %flag.0.i, %if.end28.i.if.end35.i_crit_edge ]
  %and36.i = and i32 %lsr.addr.0.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.end35.i.if.end42.i_crit_edge, label %if.then38.i

if.end35.i.if.end42.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

if.then38.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  %130 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %frame.i, align 4
  %inc41.i = add i32 %131, 1
  store i32 %inc41.i, ptr %frame.i, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.end35.i.if.end42.i_crit_edge
  %flag.2.i = phi i32 [ 2, %if.then38.i ], [ %flag.1.i, %if.end35.i.if.end42.i_crit_edge ]
  %and43.i = and i32 %lsr.addr.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %if.end42.i.if.end49.i_crit_edge, label %if.then45.i55

if.end42.i.if.end49.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.i

if.then45.i55:                                    ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  %132 = ptrtoint ptr %overrun.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %overrun.i, align 4
  %inc48.i = add i32 %133, 1
  store i32 %inc48.i, ptr %overrun.i, align 4
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then45.i55, %if.end42.i.if.end49.i_crit_edge
  %134 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %line.i.i, align 4
  %136 = ptrtoint ptr %cons.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %cons.i.i, align 4
  %index.i = getelementptr inbounds %struct.console, ptr %137, i32 0, i32 9
  %138 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %index.i, align 2
  %conv.i56 = sext i16 %139 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %conv.i56)
  %cmp.i57 = icmp eq i32 %135, %conv.i56
  br i1 %cmp.i57, label %if.then53.i, label %if.end49.i.if.end54.i_crit_edge

if.end49.i.if.end54.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54.i

if.then53.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #11
  %140 = ptrtoint ptr %lsr_break_flag.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %lsr_break_flag.i, align 4
  %or.i = or i32 %141, %lsr.addr.0.i
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then53.i, %if.end49.i.if.end54.i_crit_edge
  %lsr.addr.1.i = phi i32 [ %or.i, %if.then53.i ], [ %lsr.addr.0.i, %if.end49.i.if.end54.i_crit_edge ]
  tail call void @uart_insert_char(ptr noundef %dev_id, i32 noundef %lsr.addr.1.i, i32 noundef 2, i32 noundef 0, i32 noundef %flag.2.i) #9
  br label %do.cond

do.cond:                                          ; preds = %if.end54.i, %uart_handle_break.exit.i, %if.end19.i, %uart_handle_sysrq_char.exit.i, %if.end7.i.i.do.cond_crit_edge, %if.then10.i, %sw.bb5.do.cond_crit_edge, %if.then69.i, %if.end64.i.do.cond_crit_edge, %if.then21.i, %if.then15.i, %if.then.i.do.cond_crit_edge, %sw.bb, %if.end.do.cond_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_count.065)
  %tobool8.not = icmp eq i32 %max_count.065, 0
  br i1 %tobool8.not, label %do.cond.do.end_crit_edge, label %do.body

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %do.body.do.end_crit_edge, %entry.do.end_crit_edge
  %ret.1 = phi i32 [ 0, %entry.do.end_crit_edge ], [ 1, %do.body.do.end_crit_edge ], [ 1, %do.cond.do.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %dev_id) #9
  %state = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 30
  %142 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %state, align 4
  tail call void @tty_flip_buffer_push(ptr noundef %143) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %144 = load volatile i32, ptr @jiffies, align 128
  %port_activity = getelementptr inbounds %struct.uart_omap_port, ptr %dev_id, i32 0, i32 18
  %145 = ptrtoint ptr %port_activity to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %port_activity, align 4
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_set_dedicated_wake_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_insert_char(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_SAK(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_clear_wake_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @serial_omap_mdr1_errataset(ptr nocapture noundef readonly %up, i8 noundef zeroext %mdr1) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 25
  %0 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %1 to i32
  %shl.i = shl i32 8, %conv.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i = zext i8 %mdr1 to i16
  %2 = shl nuw i16 %conv1.i, 8
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 2
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 %shl.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %2) #9, !srcloc !162
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 429496) #9
  %fcr = getelementptr inbounds %struct.uart_omap_port, ptr %up, i32 0, i32 7
  %6 = ptrtoint ptr %fcr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fcr, align 1
  %8 = or i8 %7, 6
  %9 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %regshift.i, align 1
  %conv.i12 = zext i8 %10 to i32
  %shl.i13 = shl i32 2, %conv.i12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i14 = zext i8 %8 to i16
  %11 = shl nuw i16 %conv1.i14, 8
  %12 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %13, i32 %shl.i13
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i16, i16 %11) #9, !srcloc !162
  %14 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %regshift.i, align 1
  %conv.i1828 = zext i8 %15 to i32
  %shl.i1929 = shl i32 5, %conv.i1828
  %16 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i, align 4
  %add.ptr.i2130 = getelementptr i8, ptr %17, i32 %shl.i1929
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i2130) #9, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  %19 = and i16 %18, 8448
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %19)
  %cmp.not31 = icmp eq i16 %19, 8192
  br i1 %cmp.not31, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %timeout.032 = phi i8 [ %dec, %if.end.while.body_crit_edge ], [ -1, %entry.while.body_crit_edge ]
  %dec = add i8 %timeout.032, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %tobool.not = icmp eq i8 %dec, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.uart_omap_port, ptr %up, i32 0, i32 2
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %22 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %regshift.i, align 1
  %conv.i23 = zext i8 %23 to i32
  %shl.i24 = shl i32 5, %conv.i23
  %24 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %25, i32 %shl.i24
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i26) #9, !srcloc !157
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  %conv3.i27 = zext i16 %27 to i32
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %21, ptr noundef nonnull @.str.38, i32 noundef %conv3.i27) #12
  br label %while.end

if.end:                                           ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748) #9
  %29 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %regshift.i, align 1
  %conv.i18 = zext i8 %30 to i32
  %shl.i19 = shl i32 5, %conv.i18
  %31 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %membase.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %32, i32 %shl.i19
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i21) #9, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  %34 = and i16 %33, 8448
  %cmp.not = icmp eq i16 %34, 8192
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %do.end, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_rs485_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_consumer_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_update_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @serial_omap_prepare(ptr nocapture noundef readonly %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %is_suspending = getelementptr inbounds %struct.uart_omap_port, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %is_suspending to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %is_suspending, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @serial_omap_complete(ptr nocapture noundef readonly %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %is_suspending = getelementptr inbounds %struct.uart_omap_port, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %is_suspending to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %is_suspending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_omap_suspend(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @uart_suspend_port(ptr noundef nonnull @serial_omap_reg, ptr noundef %1) #9
  %qos_work = getelementptr inbounds %struct.uart_omap_port, ptr %1, i32 0, i32 26
  %call2 = tail call zeroext i1 @flush_work(ptr noundef %qos_work) #9
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %device_may_wakeup.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %if.then

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %device_may_wakeup.exit
  %dev.i = getelementptr inbounds %struct.uart_omap_port, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %platform_data.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %platform_data.i.i, align 8
  %tobool.not.i8 = icmp eq ptr %8, null
  br i1 %tobool.not.i8, label %if.then.if.end_crit_edge, label %lor.lhs.false.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false.i:                                  ; preds = %if.then
  %enable_wakeup.i = getelementptr inbounds %struct.omap_uart_port_info, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %enable_wakeup.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enable_wakeup.i, align 4
  %tobool1.not.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end_crit_edge, label %if.end.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %10(ptr noundef %6, i1 noundef zeroext true) #9
  br label %if.end

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %dev.i9 = getelementptr inbounds %struct.uart_omap_port, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %dev.i9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i9, align 4
  %platform_data.i.i10 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %platform_data.i.i10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %platform_data.i.i10, align 8
  %tobool.not.i11 = icmp eq ptr %14, null
  br i1 %tobool.not.i11, label %if.else.if.end_crit_edge, label %lor.lhs.false.i14

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false.i14:                                ; preds = %if.else
  %enable_wakeup.i12 = getelementptr inbounds %struct.omap_uart_port_info, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %enable_wakeup.i12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %enable_wakeup.i12, align 4
  %tobool1.not.i13 = icmp eq ptr %16, null
  br i1 %tobool1.not.i13, label %lor.lhs.false.i14.if.end_crit_edge, label %if.end.i15

lor.lhs.false.i14.if.end_crit_edge:               ; preds = %lor.lhs.false.i14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i15:                                       ; preds = %lor.lhs.false.i14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %16(ptr noundef %12, i1 noundef zeroext false) #9
  br label %if.end

if.end:                                           ; preds = %if.end.i15, %lor.lhs.false.i14.if.end_crit_edge, %if.else.if.end_crit_edge, %if.end.i, %lor.lhs.false.i.if.end_crit_edge, %if.then.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_omap_resume(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  %dev.i = getelementptr inbounds %struct.uart_omap_port, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %platform_data.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %platform_data.i.i, align 8
  %tobool.not.i5 = icmp eq ptr %8, null
  br i1 %tobool.not.i5, label %if.then.if.end_crit_edge, label %lor.lhs.false.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false.i:                                  ; preds = %if.then
  %enable_wakeup.i = getelementptr inbounds %struct.omap_uart_port_info, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %enable_wakeup.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enable_wakeup.i, align 4
  %tobool1.not.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end_crit_edge, label %if.end.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %10(ptr noundef %6, i1 noundef zeroext false) #9
  br label %if.end

if.end:                                           ; preds = %if.end.i, %lor.lhs.false.i.if.end_crit_edge, %if.then.if.end_crit_edge, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %call2 = tail call i32 @uart_resume_port(ptr noundef nonnull @serial_omap_reg, ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_omap_runtime_suspend(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_suspending = getelementptr inbounds %struct.uart_omap_port, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %is_suspending to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_suspending, align 4, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end.if.end11_crit_edge, label %land.lhs.true

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @console_suspend_enabled to i32))
  %4 = load i8, ptr @console_suspend_enabled, align 1, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

land.lhs.true3:                                   ; preds = %land.lhs.true
  %cons = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 32
  %5 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cons, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %land.lhs.true3.if.end11_crit_edge, label %land.lhs.true5

land.lhs.true3.if.end11_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %index = getelementptr inbounds %struct.console, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %index, align 2
  %conv = sext i16 %8 to i32
  %line = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 41
  %9 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv)
  %cmp = icmp eq i32 %10, %conv
  br i1 %cmp, label %land.lhs.true5.cleanup_crit_edge, label %land.lhs.true5.if.end11_crit_edge

land.lhs.true5.if.end11_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true5.if.end11_crit_edge, %land.lhs.true3.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %dev.i = getelementptr inbounds %struct.uart_omap_port, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %platform_data.i.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %platform_data.i.i, align 8
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end11.serial_omap_get_context_loss_count.exit_crit_edge, label %lor.lhs.false.i

if.end11.serial_omap_get_context_loss_count.exit_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %serial_omap_get_context_loss_count.exit

lor.lhs.false.i:                                  ; preds = %if.end11
  %get_context_loss_count.i = getelementptr inbounds %struct.omap_uart_port_info, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %get_context_loss_count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_context_loss_count.i, align 4
  %tobool1.not.i = icmp eq ptr %16, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.serial_omap_get_context_loss_count.exit_crit_edge, label %if.end.i

lor.lhs.false.i.serial_omap_get_context_loss_count.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %serial_omap_get_context_loss_count.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i = tail call i32 %16(ptr noundef %12) #9
  br label %serial_omap_get_context_loss_count.exit

serial_omap_get_context_loss_count.exit:          ; preds = %if.end.i, %lor.lhs.false.i.serial_omap_get_context_loss_count.exit_crit_edge, %if.end11.serial_omap_get_context_loss_count.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.end.i ], [ -22, %lor.lhs.false.i.serial_omap_get_context_loss_count.exit_crit_edge ], [ -22, %if.end11.serial_omap_get_context_loss_count.exit_crit_edge ]
  %context_loss_cnt = getelementptr inbounds %struct.uart_omap_port, ptr %1, i32 0, i32 19
  %17 = ptrtoint ptr %context_loss_cnt to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %retval.0.i, ptr %context_loss_cnt, align 4
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %platform_data.i.i24 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %platform_data.i.i24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %platform_data.i.i24, align 8
  %tobool.not.i25 = icmp eq ptr %21, null
  br i1 %tobool.not.i25, label %serial_omap_get_context_loss_count.exit.serial_omap_enable_wakeup.exit_crit_edge, label %lor.lhs.false.i27

serial_omap_get_context_loss_count.exit.serial_omap_enable_wakeup.exit_crit_edge: ; preds = %serial_omap_get_context_loss_count.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %serial_omap_enable_wakeup.exit

lor.lhs.false.i27:                                ; preds = %serial_omap_get_context_loss_count.exit
  %enable_wakeup.i = getelementptr inbounds %struct.omap_uart_port_info, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %enable_wakeup.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %enable_wakeup.i, align 4
  %tobool1.not.i26 = icmp eq ptr %23, null
  br i1 %tobool1.not.i26, label %lor.lhs.false.i27.serial_omap_enable_wakeup.exit_crit_edge, label %if.end.i28

lor.lhs.false.i27.serial_omap_enable_wakeup.exit_crit_edge: ; preds = %lor.lhs.false.i27
  call void @__sanitizer_cov_trace_pc() #11
  br label %serial_omap_enable_wakeup.exit

if.end.i28:                                       ; preds = %lor.lhs.false.i27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %23(ptr noundef %19, i1 noundef zeroext true) #9
  br label %serial_omap_enable_wakeup.exit

serial_omap_enable_wakeup.exit:                   ; preds = %if.end.i28, %lor.lhs.false.i27.serial_omap_enable_wakeup.exit_crit_edge, %serial_omap_get_context_loss_count.exit.serial_omap_enable_wakeup.exit_crit_edge
  %latency = getelementptr inbounds %struct.uart_omap_port, ptr %1, i32 0, i32 24
  %24 = ptrtoint ptr %latency to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2000000000, ptr %latency, align 4
  %qos_work = getelementptr inbounds %struct.uart_omap_port, ptr %1, i32 0, i32 26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %25 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %qos_work) #9
  br label %cleanup

cleanup:                                          ; preds = %serial_omap_enable_wakeup.exit, %land.lhs.true5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %serial_omap_enable_wakeup.exit ], [ -22, %entry.cleanup_crit_edge ], [ -16, %land.lhs.true5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_omap_runtime_resume(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev.i = getelementptr inbounds %struct.uart_omap_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %platform_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.serial_omap_get_context_loss_count.exit_crit_edge, label %lor.lhs.false.i

entry.serial_omap_get_context_loss_count.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %serial_omap_get_context_loss_count.exit

lor.lhs.false.i:                                  ; preds = %entry
  %get_context_loss_count.i = getelementptr inbounds %struct.omap_uart_port_info, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %get_context_loss_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_context_loss_count.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.serial_omap_get_context_loss_count.exit_crit_edge, label %if.end.i

lor.lhs.false.i.serial_omap_get_context_loss_count.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %serial_omap_get_context_loss_count.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i = tail call i32 %7(ptr noundef %3) #9
  br label %serial_omap_get_context_loss_count.exit

serial_omap_get_context_loss_count.exit:          ; preds = %if.end.i, %lor.lhs.false.i.serial_omap_get_context_loss_count.exit_crit_edge, %entry.serial_omap_get_context_loss_count.exit_crit_edge
  %retval.0.i21 = phi i32 [ %call4.i, %if.end.i ], [ -22, %lor.lhs.false.i.serial_omap_get_context_loss_count.exit_crit_edge ], [ -22, %entry.serial_omap_get_context_loss_count.exit_crit_edge ]
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %platform_data.i.i23 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %platform_data.i.i23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %platform_data.i.i23, align 8
  %tobool.not.i24 = icmp eq ptr %11, null
  br i1 %tobool.not.i24, label %serial_omap_get_context_loss_count.exit.serial_omap_enable_wakeup.exit_crit_edge, label %lor.lhs.false.i26

serial_omap_get_context_loss_count.exit.serial_omap_enable_wakeup.exit_crit_edge: ; preds = %serial_omap_get_context_loss_count.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %serial_omap_enable_wakeup.exit

lor.lhs.false.i26:                                ; preds = %serial_omap_get_context_loss_count.exit
  %enable_wakeup.i = getelementptr inbounds %struct.omap_uart_port_info, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %enable_wakeup.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %enable_wakeup.i, align 4
  %tobool1.not.i25 = icmp eq ptr %13, null
  br i1 %tobool1.not.i25, label %lor.lhs.false.i26.serial_omap_enable_wakeup.exit_crit_edge, label %if.end.i27

lor.lhs.false.i26.serial_omap_enable_wakeup.exit_crit_edge: ; preds = %lor.lhs.false.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %serial_omap_enable_wakeup.exit

if.end.i27:                                       ; preds = %lor.lhs.false.i26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %13(ptr noundef %9, i1 noundef zeroext false) #9
  br label %serial_omap_enable_wakeup.exit

serial_omap_enable_wakeup.exit:                   ; preds = %if.end.i27, %lor.lhs.false.i26.serial_omap_enable_wakeup.exit_crit_edge, %serial_omap_get_context_loss_count.exit.serial_omap_enable_wakeup.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i21)
  %cmp = icmp slt i32 %retval.0.i21, 0
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %serial_omap_enable_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial_omap_runtime_resume.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial_omap_runtime_resume, %if.then5)) #9
          to label %if.end9.sink.split [label %if.then5], !srcloc !166

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial_omap_runtime_resume.__UNIQUE_ID_ddebug249, ptr noundef %dev, ptr noundef nonnull @.str.59, i32 noundef %retval.0.i21) #9
  br label %if.end9.sink.split

if.else:                                          ; preds = %serial_omap_enable_wakeup.exit
  %context_loss_cnt = getelementptr inbounds %struct.uart_omap_port, ptr %1, i32 0, i32 19
  %14 = ptrtoint ptr %context_loss_cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %context_loss_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %retval.0.i21)
  %cmp6.not = icmp eq i32 %15, %retval.0.i21
  br i1 %cmp6.not, label %if.else.if.end9_crit_edge, label %if.else.if.end9.sink.split_crit_edge

if.else.if.end9.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.sink.split

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.end9.sink.split:                               ; preds = %if.else.if.end9.sink.split_crit_edge, %if.then5, %do.body
  tail call fastcc void @serial_omap_restore_context(ptr noundef %1)
  br label %if.end9

if.end9:                                          ; preds = %if.end9.sink.split, %if.else.if.end9_crit_edge
  %calc_latency = getelementptr inbounds %struct.uart_omap_port, ptr %1, i32 0, i32 25
  %16 = ptrtoint ptr %calc_latency to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %calc_latency, align 4
  %latency = getelementptr inbounds %struct.uart_omap_port, ptr %1, i32 0, i32 24
  %18 = ptrtoint ptr %latency to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %latency, align 4
  %qos_work = getelementptr inbounds %struct.uart_omap_port, ptr %1, i32 0, i32 26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %19 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %19, ptr noundef %qos_work) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_suspend_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_resume_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @serial_omap_restore_context(ptr noundef readonly %up) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %errata = getelementptr inbounds %struct.uart_omap_port, ptr %up, i32 0, i32 20
  %0 = ptrtoint ptr %errata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %errata, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @serial_omap_mdr1_errataset(ptr noundef %up, i8 noundef zeroext 7)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 25
  %2 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %3 to i32
  %shl.i = shl i32 8, %conv.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 2
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %shl.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 1792) #9, !srcloc !162
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %regshift.i50 = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 25
  %6 = ptrtoint ptr %regshift.i50 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %regshift.i50, align 1
  %conv.i51 = zext i8 %7 to i32
  %shl.i52 = shl i32 3, %conv.i51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %membase.i53 = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 2
  %8 = ptrtoint ptr %membase.i53 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i53, align 4
  %add.ptr.i54 = getelementptr i8, ptr %9, i32 %shl.i52
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i54, i16 -16640) #9, !srcloc !162
  %10 = ptrtoint ptr %regshift.i50 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %regshift.i50, align 1
  %conv.i56 = zext i8 %11 to i32
  %shl.i57 = shl i32 2, %conv.i56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %membase.i53 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i53, align 4
  %add.ptr.i59 = getelementptr i8, ptr %13, i32 %shl.i57
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i59, i16 4096) #9, !srcloc !162
  %14 = ptrtoint ptr %regshift.i50 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %regshift.i50, align 1
  %conv.i61 = zext i8 %15 to i32
  %shl.i62 = shl i32 3, %conv.i61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %membase.i53 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i53, align 4
  %add.ptr.i64 = getelementptr i8, ptr %17, i32 %shl.i62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i64, i16 0) #9, !srcloc !162
  %18 = ptrtoint ptr %regshift.i50 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %regshift.i50, align 1
  %conv.i66 = zext i8 %19 to i32
  %shl.i67 = shl nuw i32 1, %conv.i66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %membase.i53 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase.i53, align 4
  %add.ptr.i69 = getelementptr i8, ptr %21, i32 %shl.i67
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i69, i16 0) #9, !srcloc !162
  %22 = ptrtoint ptr %regshift.i50 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %regshift.i50, align 1
  %conv.i71 = zext i8 %23 to i32
  %shl.i72 = shl i32 3, %conv.i71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %24 = ptrtoint ptr %membase.i53 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase.i53, align 4
  %add.ptr.i74 = getelementptr i8, ptr %25, i32 %shl.i72
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i74, i16 -16640) #9, !srcloc !162
  %dll = getelementptr inbounds %struct.uart_omap_port, ptr %up, i32 0, i32 9
  %26 = ptrtoint ptr %dll to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %dll, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i = zext i8 %27 to i16
  %28 = shl nuw i16 %conv1.i, 8
  %29 = ptrtoint ptr %membase.i53 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase.i53, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %30, i16 %28) #9, !srcloc !162
  %dlh = getelementptr inbounds %struct.uart_omap_port, ptr %up, i32 0, i32 10
  %31 = ptrtoint ptr %dlh to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %dlh, align 2
  %33 = ptrtoint ptr %regshift.i50 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %regshift.i50, align 1
  %conv.i79 = zext i8 %34 to i32
  %shl.i80 = shl nuw i32 1, %conv.i79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i81 = zext i8 %32 to i16
  %35 = shl nuw i16 %conv1.i81, 8
  %36 = ptrtoint ptr %membase.i53 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase.i53, align 4
  %add.ptr.i83 = getelementptr i8, ptr %37, i32 %shl.i80
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i83, i16 %35) #9, !srcloc !162
  %38 = ptrtoint ptr %regshift.i50 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %regshift.i50, align 1
  %conv.i85 = zext i8 %39 to i32
  %shl.i86 = shl i32 3, %conv.i85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %40 = ptrtoint ptr %membase.i53 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %membase.i53, align 4
  %add.ptr.i88 = getelementptr i8, ptr %41, i32 %shl.i86
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i88, i16 0) #9, !srcloc !162
  %ier = getelementptr inbounds %struct.uart_omap_port, ptr %up, i32 0, i32 4
  %42 = ptrtoint ptr %ier to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ier, align 4
  %44 = ptrtoint ptr %regshift.i50 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %regshift.i50, align 1
  %conv.i90 = zext i8 %45 to i32
  %shl.i91 = shl nuw i32 1, %conv.i90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i92 = zext i8 %43 to i16
  %46 = shl nuw i16 %conv1.i92, 8
  %47 = ptrtoint ptr %membase.i53 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %membase.i53, align 4
  %add.ptr.i94 = getelementptr i8, ptr %48, i32 %shl.i91
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i94, i16 %46) #9, !srcloc !162
  %fcr = getelementptr inbounds %struct.uart_omap_port, ptr %up, i32 0, i32 7
  %49 = ptrtoint ptr %fcr to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %fcr, align 1
  %51 = ptrtoint ptr %regshift.i50 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %regshift.i50, align 1
  %conv.i96 = zext i8 %52 to i32
  %shl.i97 = shl i32 2, %conv.i96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i98 = zext i8 %50 to i16
  %53 = shl nuw i16 %conv1.i98, 8
  %54 = ptrtoint ptr %membase.i53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %membase.i53, align 4
  %add.ptr.i100 = getelementptr i8, ptr %55, i32 %shl.i97
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i100, i16 %53) #9, !srcloc !162
  %56 = ptrtoint ptr %regshift.i50 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %regshift.i50, align 1
  %conv.i102 = zext i8 %57 to i32
  %shl.i103 = shl i32 3, %conv.i102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %58 = ptrtoint ptr %membase.i53 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %membase.i53, align 4
  %add.ptr.i105 = getelementptr i8, ptr %59, i32 %shl.i103
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i105, i16 -32768) #9, !srcloc !162
  %mcr = getelementptr inbounds %struct.uart_omap_port, ptr %up, i32 0, i32 6
  %60 = ptrtoint ptr %mcr to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %mcr, align 2
  %62 = ptrtoint ptr %regshift.i50 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %regshift.i50, align 1
  %conv.i107 = zext i8 %63 to i32
  %shl.i108 = shl i32 4, %conv.i107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i109 = zext i8 %61 to i16
  %64 = shl nuw i16 %conv1.i109, 8
  %65 = ptrtoint ptr %membase.i53 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %membase.i53, align 4
  %add.ptr.i111 = getelementptr i8, ptr %66, i32 %shl.i108
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i111, i16 %64) #9, !srcloc !162
  %67 = ptrtoint ptr %regshift.i50 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %regshift.i50, align 1
  %conv.i113 = zext i8 %68 to i32
  %shl.i114 = shl i32 3, %conv.i113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %69 = ptrtoint ptr %membase.i53 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %membase.i53, align 4
  %add.ptr.i116 = getelementptr i8, ptr %70, i32 %shl.i114
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i116, i16 -16640) #9, !srcloc !162
  %scr = getelementptr inbounds %struct.uart_omap_port, ptr %up, i32 0, i32 12
  %71 = ptrtoint ptr %scr to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %scr, align 4
  %73 = ptrtoint ptr %regshift.i50 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %regshift.i50, align 1
  %conv.i118 = zext i8 %74 to i32
  %shl.i119 = shl i32 16, %conv.i118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i120 = zext i8 %72 to i16
  %75 = shl nuw i16 %conv1.i120, 8
  %76 = ptrtoint ptr %membase.i53 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %membase.i53, align 4
  %add.ptr.i122 = getelementptr i8, ptr %77, i32 %shl.i119
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i122, i16 %75) #9, !srcloc !162
  %efr = getelementptr inbounds %struct.uart_omap_port, ptr %up, i32 0, i32 8
  %78 = ptrtoint ptr %efr to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %efr, align 4
  %80 = ptrtoint ptr %regshift.i50 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %regshift.i50, align 1
  %conv.i124 = zext i8 %81 to i32
  %shl.i125 = shl i32 2, %conv.i124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i126 = zext i8 %79 to i16
  %82 = shl nuw i16 %conv1.i126, 8
  %83 = ptrtoint ptr %membase.i53 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %membase.i53, align 4
  %add.ptr.i128 = getelementptr i8, ptr %84, i32 %shl.i125
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i128, i16 %82) #9, !srcloc !162
  %lcr = getelementptr inbounds %struct.uart_omap_port, ptr %up, i32 0, i32 5
  %85 = ptrtoint ptr %lcr to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %lcr, align 1
  %87 = ptrtoint ptr %regshift.i50 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %regshift.i50, align 1
  %conv.i130 = zext i8 %88 to i32
  %shl.i131 = shl i32 3, %conv.i130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i132 = zext i8 %86 to i16
  %89 = shl nuw i16 %conv1.i132, 8
  %90 = ptrtoint ptr %membase.i53 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %membase.i53, align 4
  %add.ptr.i134 = getelementptr i8, ptr %91, i32 %shl.i131
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i134, i16 %89) #9, !srcloc !162
  %92 = ptrtoint ptr %errata to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %errata, align 4
  %and9 = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %mdr113 = getelementptr inbounds %struct.uart_omap_port, ptr %up, i32 0, i32 11
  %94 = ptrtoint ptr %mdr113 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %mdr113, align 1
  br i1 %tobool10.not, label %if.else12, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @serial_omap_mdr1_errataset(ptr noundef %up, i8 noundef zeroext %95)
  br label %if.end15

if.else12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %regshift.i50 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %regshift.i50, align 1
  %conv.i136 = zext i8 %97 to i32
  %shl.i137 = shl i32 8, %conv.i136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i138 = zext i8 %95 to i16
  %98 = shl nuw i16 %conv1.i138, 8
  %99 = ptrtoint ptr %membase.i53 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %membase.i53, align 4
  %add.ptr.i140 = getelementptr i8, ptr %100, i32 %shl.i137
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i140, i16 %98) #9, !srcloc !162
  br label %if.end15

if.end15:                                         ; preds = %if.else12, %if.then11
  %wer = getelementptr inbounds %struct.uart_omap_port, ptr %up, i32 0, i32 13
  %101 = ptrtoint ptr %wer to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %wer, align 1
  %103 = ptrtoint ptr %regshift.i50 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %regshift.i50, align 1
  %conv.i142 = zext i8 %104 to i32
  %shl.i143 = shl i32 23, %conv.i142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i144 = zext i8 %102 to i16
  %105 = shl nuw i16 %conv1.i144, 8
  %106 = ptrtoint ptr %membase.i53 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %membase.i53, align 4
  %add.ptr.i146 = getelementptr i8, ptr %107, i32 %shl.i143
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i146, i16 %105) #9, !srcloc !162
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_omap_console_write(ptr nocapture noundef readonly %co, ptr noundef %s, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index, align 2
  %idxprom = sext i16 %1 to i32
  %arrayidx = getelementptr [10 x ptr], ptr @serial_omap_console_ports, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !170
  %and.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry.do.end11_crit_edge
  %sysrq = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 46
  %5 = ptrtoint ptr %sysrq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sysrq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool12.not = icmp eq i32 %6, 0
  br i1 %tobool12.not, label %if.else, label %do.end11.if.end22_crit_edge

do.end11.if.end22_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.else:                                          ; preds = %do.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %7 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool14.not = icmp eq i32 %7, 0
  br i1 %tobool14.not, label %if.else18, label %if.then15

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %3) #9
  br label %if.end22

if.else18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_lock(ptr noundef %3) #9
  br label %if.end22

if.end22:                                         ; preds = %if.else18, %if.then15, %do.end11.if.end22_crit_edge
  %locked.0 = phi i32 [ %call.i, %if.then15 ], [ 1, %if.else18 ], [ 0, %do.end11.if.end22_crit_edge ]
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 25
  %8 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %9 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %shl.i
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #9, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  %13 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %regshift.i, align 1
  %conv.i78 = zext i8 %14 to i32
  %shl.i79 = shl nuw i32 1, %conv.i78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %15 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i, align 4
  %add.ptr.i81 = getelementptr i8, ptr %16, i32 %shl.i79
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i81, i16 0) #9, !srcloc !162
  tail call void @uart_console_write(ptr noundef %3, ptr noundef %s, i32 noundef %count, ptr noundef nonnull @serial_omap_console_putchar) #9
  %lsr_break_flag.i = getelementptr inbounds %struct.uart_omap_port, ptr %3, i32 0, i32 15
  br label %do.body.i

do.body.i:                                        ; preds = %if.end2.i.do.body.i_crit_edge, %if.end22
  %tmout.0.i = phi i32 [ 10000, %if.end22 ], [ %dec.i, %if.end2.i.do.body.i_crit_edge ]
  %17 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %regshift.i, align 1
  %conv.i.i = zext i8 %18 to i32
  %shl.i.i = shl i32 5, %conv.i.i
  %19 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 %shl.i.i
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #9, !srcloc !157
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  %conv3.i.i = zext i16 %22 to i32
  %and.i82 = and i32 %conv3.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i82)
  %tobool.not.i = icmp eq i32 %and.i82, 0
  br i1 %tobool.not.i, label %do.body.i.if.end.i_crit_edge, label %if.then.i

do.body.i.if.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %lsr_break_flag.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16, ptr %lsr_break_flag.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.body.i.if.end.i_crit_edge
  %dec.i = add nsw i32 %tmout.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.end.i.do.end.i_crit_edge, label %if.end2.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.end2.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #9
  %and3.i = and i32 %conv3.i.i, 96
  %cmp4.not.i = icmp eq i32 %and3.i, 96
  br i1 %cmp4.not.i, label %if.end2.i.do.end.i_crit_edge, label %if.end2.i.do.body.i_crit_edge

if.end2.i.do.body.i_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.end2.i.do.end.i_crit_edge:                     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.end2.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  %flags.i = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 33
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags.i, align 4
  %and5.i = and i32 %26, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %do.end.i.wait_for_xmitr.exit_crit_edge, label %for.cond.preheader.i

do.end.i.wait_for_xmitr.exit_crit_edge:           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_for_xmitr.exit

for.cond.preheader.i:                             ; preds = %do.end.i
  %msr_saved_flags.i = getelementptr inbounds %struct.uart_omap_port, ptr %3, i32 0, i32 16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %tmout.134.i = phi i32 [ 1000000, %for.cond.preheader.i ], [ %dec16.i, %for.inc.i.for.body.i_crit_edge ]
  %27 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %regshift.i, align 1
  %conv.i27.i = zext i8 %28 to i32
  %shl.i28.i = shl i32 6, %conv.i27.i
  %29 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase.i, align 4
  %add.ptr.i30.i = getelementptr i8, ptr %30, i32 %shl.i28.i
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i30.i) #9, !srcloc !157
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  %33 = ptrtoint ptr %msr_saved_flags.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %msr_saved_flags.i, align 4
  %35 = trunc i16 %32 to i8
  %36 = and i8 %35, 15
  %conv11.i = or i8 %36, %34
  store i8 %conv11.i, ptr %msr_saved_flags.i, align 4
  %37 = and i16 %32, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool13.not.i = icmp eq i16 %37, 0
  br i1 %tobool13.not.i, label %for.inc.i, label %for.body.i.wait_for_xmitr.exit_crit_edge

for.body.i.wait_for_xmitr.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_for_xmitr.exit

for.inc.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748) #9
  %dec16.i = add nsw i32 %tmout.134.i, -1
  %tobool8.not.i = icmp eq i32 %dec16.i, 0
  br i1 %tobool8.not.i, label %for.inc.i.wait_for_xmitr.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.wait_for_xmitr.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_for_xmitr.exit

wait_for_xmitr.exit:                              ; preds = %for.inc.i.wait_for_xmitr.exit_crit_edge, %for.body.i.wait_for_xmitr.exit_crit_edge, %do.end.i.wait_for_xmitr.exit_crit_edge
  %39 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %regshift.i, align 1
  %conv.i84 = zext i8 %40 to i32
  %shl.i85 = shl nuw i32 1, %conv.i84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %41 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %membase.i, align 4
  %add.ptr.i87 = getelementptr i8, ptr %42, i32 %shl.i85
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i87, i16 %12) #9, !srcloc !162
  %msr_saved_flags = getelementptr inbounds %struct.uart_omap_port, ptr %3, i32 0, i32 16
  %43 = ptrtoint ptr %msr_saved_flags to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %msr_saved_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool25.not = icmp eq i8 %44, 0
  br i1 %tobool25.not, label %wait_for_xmitr.exit.if.end28_crit_edge, label %if.then26

wait_for_xmitr.exit.if.end28_crit_edge:           ; preds = %wait_for_xmitr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then26:                                        ; preds = %wait_for_xmitr.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = tail call fastcc i32 @check_modem_status(ptr noundef %3)
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %wait_for_xmitr.exit.if.end28_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %locked.0)
  %tobool29.not = icmp eq i32 %locked.0, 0
  br i1 %tobool29.not, label %if.end28.do.body34_crit_edge, label %if.then30

if.end28.do.body34_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body34

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %3) #9
  br label %do.body34

do.body34:                                        ; preds = %if.then30, %if.end28.do.body34_crit_edge
  br i1 %tobool.not, label %if.then43, label %do.body34.do.body45_crit_edge

do.body34.do.body45_crit_edge:                    ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body45

if.then43:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_on() #9
  br label %do.body45

do.body45:                                        ; preds = %if.then43, %do.body34.do.body45_crit_edge
  %45 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !171
  %and.i.i = and i32 %45, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool53.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool53.not, label %if.then57, label %do.body45.do.end60_crit_edge, !prof !169

do.body45.do.end60_crit_edge:                     ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end60

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end60

do.end60:                                         ; preds = %if.then57, %do.body45.do.end60_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #9, !srcloc !172
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_omap_console_setup(ptr noundef %co, ptr noundef %options) #1 section ".init.text" align 64 {
entry:
  %baud = alloca i32, align 4
  %bits = alloca i32, align 4
  %parity = alloca i32, align 4
  %flow = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %baud) #9
  %0 = ptrtoint ptr %baud to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 115200, ptr %baud, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits) #9
  %1 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8, ptr %bits, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parity) #9
  %2 = ptrtoint ptr %parity to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 110, ptr %parity, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flow) #9
  %3 = ptrtoint ptr %flow to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 110, ptr %flow, align 4
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %index, align 2
  %idxprom = sext i16 %5 to i32
  %arrayidx = getelementptr [10 x ptr], ptr @serial_omap_console_ports, i32 0, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %options, null
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @uart_parse_options(ptr noundef nonnull %options, ptr noundef nonnull %baud, ptr noundef nonnull %parity, ptr noundef nonnull %bits, ptr noundef nonnull %flow) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %8 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %baud, align 4
  %10 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %parity, align 4
  %12 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bits, align 4
  %14 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flow, align 4
  %call = call i32 @uart_set_options(ptr noundef nonnull %7, ptr noundef %co, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end5 ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flow) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parity) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %baud) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_omap_console_putchar(ptr nocapture noundef %port, i32 noundef %ch) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regshift.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %lsr_break_flag.i = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 15
  br label %do.body.i

do.body.i:                                        ; preds = %if.end2.i.do.body.i_crit_edge, %entry
  %tmout.0.i = phi i32 [ 10000, %entry ], [ %dec.i, %if.end2.i.do.body.i_crit_edge ]
  %0 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %regshift.i.i, align 1
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl i32 5, %conv.i.i
  %2 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %shl.i.i
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #9, !srcloc !157
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  %conv3.i.i = zext i16 %5 to i32
  %and.i = and i32 %conv3.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.if.end.i_crit_edge, label %if.then.i

do.body.i.if.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %lsr_break_flag.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16, ptr %lsr_break_flag.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.body.i.if.end.i_crit_edge
  %dec.i = add nsw i32 %tmout.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.end.i.do.end.i_crit_edge, label %if.end2.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.end2.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #9
  %and3.i = and i32 %conv3.i.i, 96
  %cmp4.not.i = icmp eq i32 %and3.i, 96
  br i1 %cmp4.not.i, label %if.end2.i.do.end.i_crit_edge, label %if.end2.i.do.body.i_crit_edge

if.end2.i.do.body.i_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.end2.i.do.end.i_crit_edge:                     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.end2.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  %flags.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and5.i = and i32 %9, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %do.end.i.wait_for_xmitr.exit_crit_edge, label %for.cond.preheader.i

do.end.i.wait_for_xmitr.exit_crit_edge:           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_for_xmitr.exit

for.cond.preheader.i:                             ; preds = %do.end.i
  %msr_saved_flags.i = getelementptr inbounds %struct.uart_omap_port, ptr %port, i32 0, i32 16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %tmout.134.i = phi i32 [ 1000000, %for.cond.preheader.i ], [ %dec16.i, %for.inc.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %regshift.i.i, align 1
  %conv.i27.i = zext i8 %11 to i32
  %shl.i28.i = shl i32 6, %conv.i27.i
  %12 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i30.i = getelementptr i8, ptr %13, i32 %shl.i28.i
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i30.i) #9, !srcloc !157
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  %16 = ptrtoint ptr %msr_saved_flags.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %msr_saved_flags.i, align 4
  %18 = trunc i16 %15 to i8
  %19 = and i8 %18, 15
  %conv11.i = or i8 %19, %17
  store i8 %conv11.i, ptr %msr_saved_flags.i, align 4
  %20 = and i16 %15, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool13.not.i = icmp eq i16 %20, 0
  br i1 %tobool13.not.i, label %for.inc.i, label %for.body.i.wait_for_xmitr.exit_crit_edge

for.body.i.wait_for_xmitr.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_for_xmitr.exit

for.inc.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #9
  %dec16.i = add nsw i32 %tmout.134.i, -1
  %tobool8.not.i = icmp eq i32 %dec16.i, 0
  br i1 %tobool8.not.i, label %for.inc.i.wait_for_xmitr.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.wait_for_xmitr.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_for_xmitr.exit

wait_for_xmitr.exit:                              ; preds = %for.inc.i.wait_for_xmitr.exit_crit_edge, %for.body.i.wait_for_xmitr.exit_crit_edge, %do.end.i.wait_for_xmitr.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %conv1.i = trunc i32 %ch to i16
  %22 = tail call i16 @llvm.bswap.i16(i16 %conv1.i) #9
  %23 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %24, i16 %22) #9, !srcloc !162
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !44, !45, !46, !47, !49, !50, !52, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !121, !123, !125, !126, !127, !128, !130, !132, !134, !136, !138, !139, !140, !142, !144, !146}
!llvm.module.flags = !{!148, !149, !150, !151, !152, !153, !154, !155}
!llvm.ident = !{!156}

!0 = !{ptr @__UNIQUE_ID___earlycon_omapserial242, !1, !"__UNIQUE_ID___earlycon_omapserial242", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/omap-serial.c", i32 1232, i32 1}
!2 = !{ptr @__UNIQUE_ID___earlycon_omapserial243, !3, !"__UNIQUE_ID___earlycon_omapserial243", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/omap-serial.c", i32 1233, i32 1}
!4 = !{ptr @__UNIQUE_ID___earlycon_omapserial244, !5, !"__UNIQUE_ID___earlycon_omapserial244", i1 false, i1 false}
!5 = !{!"../drivers/tty/serial/omap-serial.c", i32 1234, i32 1}
!6 = !{ptr @__initcall__kmod_omap_serial__250_1880_serial_omap_init6, !7, !"__initcall__kmod_omap_serial__250_1880_serial_omap_init6", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/omap-serial.c", i32 1880, i32 1}
!8 = !{ptr @__exitcall_serial_omap_exit, !9, !"__exitcall_serial_omap_exit", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/omap-serial.c", i32 1881, i32 1}
!10 = !{ptr @__UNIQUE_ID_description251, !11, !"__UNIQUE_ID_description251", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/omap-serial.c", i32 1883, i32 1}
!12 = !{ptr @__UNIQUE_ID_file252, !13, !"__UNIQUE_ID_file252", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/omap-serial.c", i32 1884, i32 1}
!14 = !{ptr @__UNIQUE_ID_license253, !13, !"__UNIQUE_ID_license253", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_author254, !16, !"__UNIQUE_ID_author254", i1 false, i1 false}
!16 = !{!"../drivers/tty/serial/omap-serial.c", i32 1885, i32 1}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/tty/serial/omap-serial.c", i32 1855, i32 11}
!19 = !{ptr @serial_omap_driver, !20, !"serial_omap_driver", i1 false, i1 false}
!20 = !{!"../drivers/tty/serial/omap-serial.c", i32 1851, i32 31}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/tty/serial/omap-serial.c", i32 1627, i32 44}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/tty/serial/omap-serial.c", i32 1632, i32 3}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @serial_omap_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @serial_omap_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/tty/serial/omap-serial.c", i32 1639, i32 3}
!33 = !{ptr @serial_omap_probe._entry.7, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @serial_omap_probe._entry_ptr.9, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/tty/serial/omap-serial.c", i32 1647, i32 3}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @serial_omap_probe._entry.10, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @serial_omap_probe._entry_ptr.13, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/tty/serial/omap-serial.c", i32 1654, i32 20}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/tty/serial/omap-serial.c", i32 1662, i32 3}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @serial_omap_probe._entry.15, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @serial_omap_probe._entry_ptr.18, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @serial_omap_probe.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/tty/serial/omap-serial.c", i32 1670, i32 2}
!49 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/tty/serial/omap-serial.c", i32 1529, i32 37}
!52 = !{ptr @serial_omap_pops, !53, !"serial_omap_pops", i1 false, i1 false}
!53 = !{!"../drivers/tty/serial/omap-serial.c", i32 1384, i32 30}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/tty/serial/omap-serial.c", i32 608, i32 2}
!56 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @serial_omap_tx_empty.__UNIQUE_ID_ddebug229, !55, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/tty/serial/omap-serial.c", i32 642, i32 2}
!61 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @serial_omap_set_mctrl.__UNIQUE_ID_ddebug231, !60, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/tty/serial/omap-serial.c", i32 624, i32 2}
!65 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @serial_omap_get_mctrl.__UNIQUE_ID_ddebug230, !64, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/tty/serial/omap-serial.c", i32 277, i32 2}
!69 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @serial_omap_enable_ms.__UNIQUE_ID_ddebug228, !68, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/tty/serial/omap-serial.c", i32 676, i32 2}
!73 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @serial_omap_break_ctl.__UNIQUE_ID_ddebug232, !72, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/tty/serial/omap-serial.c", i32 709, i32 2}
!77 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @serial_omap_startup.__UNIQUE_ID_ddebug233, !76, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/tty/serial/omap-serial.c", i32 764, i32 2}
!81 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @serial_omap_shutdown.__UNIQUE_ID_ddebug234, !80, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/tty/serial/omap-serial.c", i32 1058, i32 2}
!85 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @serial_omap_set_termios.__UNIQUE_ID_ddebug235, !84, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/tty/serial/omap-serial.c", i32 1745, i32 4}
!89 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @serial_omap_mdr1_errataset._entry, !88, !"_entry", i1 false, i1 false}
!92 = !{ptr @serial_omap_mdr1_errataset._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/tty/serial/omap-serial.c", i32 1068, i32 2}
!95 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @serial_omap_pm.__UNIQUE_ID_ddebug236, !94, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/tty/serial/omap-serial.c", i32 1115, i32 2}
!99 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @serial_omap_type.__UNIQUE_ID_ddebug241, !98, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/tty/serial/omap-serial.c", i32 1083, i32 2}
!103 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @serial_omap_release_port.__UNIQUE_ID_ddebug237, !102, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!105 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/tty/serial/omap-serial.c", i32 1088, i32 2}
!107 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @serial_omap_request_port.__UNIQUE_ID_ddebug238, !106, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/tty/serial/omap-serial.c", i32 1096, i32 2}
!111 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @serial_omap_config_port.__UNIQUE_ID_ddebug239, !110, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!113 = !{ptr @.str.51, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/tty/serial/omap-serial.c", i32 1106, i32 2}
!115 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @serial_omap_verify_port.__UNIQUE_ID_ddebug240, !114, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!117 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/tty/serial/omap-serial.c", i32 1555, i32 32}
!119 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/tty/serial/omap-serial.c", i32 1566, i32 47}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/tty/serial/omap-serial.c", i32 1577, i32 42}
!123 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/tty/serial/omap-serial.c", i32 1491, i32 3}
!125 = !{ptr @.str.57, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @omap_serial_fill_features_erratas._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @omap_serial_fill_features_erratas._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @ui, !129, !"ui", i1 false, i1 false}
!129 = !{!"../drivers/tty/serial/omap-serial.c", i32 168, i32 31}
!130 = !{ptr @serial_omap_console_ports, !131, !"serial_omap_console_ports", i1 false, i1 false}
!131 = !{!"../drivers/tty/serial/omap-serial.c", i32 1237, i32 31}
!132 = !{ptr @omap_serial_of_match, !133, !"omap_serial_of_match", i1 false, i1 false}
!133 = !{!"../drivers/tty/serial/omap-serial.c", i32 1842, i32 34}
!134 = !{ptr @serial_omap_dev_pm_ops, !135, !"serial_omap_dev_pm_ops", i1 false, i1 false}
!135 = !{!"../drivers/tty/serial/omap-serial.c", i32 1833, i32 32}
!136 = !{ptr @.str.58, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/tty/serial/omap-serial.c", i32 1820, i32 3}
!138 = !{ptr @.str.59, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @serial_omap_runtime_resume.__UNIQUE_ID_ddebug249, !137, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!140 = !{ptr @.str.60, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/tty/serial/omap-serial.c", i32 1412, i32 17}
!142 = !{ptr @.str.61, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/tty/serial/omap-serial.c", i32 1413, i32 14}
!144 = !{ptr @serial_omap_reg, !145, !"serial_omap_reg", i1 false, i1 false}
!145 = !{!"../drivers/tty/serial/omap-serial.c", i32 1410, i32 27}
!146 = !{ptr @serial_omap_console, !147, !"serial_omap_console", i1 false, i1 false}
!147 = !{!"../drivers/tty/serial/omap-serial.c", i32 1314, i32 23}
!148 = !{i32 1, !"wchar_size", i32 2}
!149 = !{i32 1, !"min_enum_size", i32 4}
!150 = !{i32 8, !"branch-target-enforcement", i32 0}
!151 = !{i32 8, !"sign-return-address", i32 0}
!152 = !{i32 8, !"sign-return-address-all", i32 0}
!153 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!154 = !{i32 7, !"uwtable", i32 1}
!155 = !{i32 7, !"frame-pointer", i32 2}
!156 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!157 = !{i64 6214176}
!158 = !{i64 2154343965}
!159 = !{i64 2154344733}
!160 = !{i64 2154344575}
!161 = !{i64 2154344186}
!162 = !{i64 6213976}
!163 = !{i64 6215014}
!164 = !{i64 2154359741}
!165 = !{i64 2154275723}
!166 = !{i64 2149000215, i64 2149000220, i64 2149000233, i64 2149000277, i64 2149000311, i64 2149000332}
!167 = !{i64 2154275330}
!168 = !{i8 0, i8 2}
!169 = !{!"branch_weights", i32 1, i32 2000}
!170 = !{i64 790538, i64 790599}
!171 = !{i64 793270}
!172 = !{i64 793555}
