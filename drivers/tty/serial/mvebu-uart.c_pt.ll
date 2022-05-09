; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/mvebu-uart.c_pt.bc'
source_filename = "../drivers/tty/serial/mvebu-uart.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mvebu_uart_driver_data = type { i8, %struct.uart_regs_layout, %struct.uart_flags }
%struct.uart_regs_layout = type { i32, i32, i32, i32 }
%struct.uart_flags = type { i32, i32, i32, i32 }
%struct.earlycon_device = type { ptr, %struct.uart_port, [16 x i8], i32 }
%struct.mvebu_uart = type { ptr, ptr, [2 x i32], ptr, %struct.mvebu_uart_pm_regs }
%struct.mvebu_uart_pm_regs = type { i32, i32, i32, i32, i32, i32, i32 }
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
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.35, %struct.anon.36, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.35 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.36 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }

@__UNIQUE_ID___earlycon_ar3700_uart227 = internal constant %struct.earlycon_id { [15 x i8] c"ar3700_uart\00\00\00\00", i8 0, [128 x i8] zeroinitializer, ptr @mvebu_uart_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_ar3700_uart228 = internal constant %struct.earlycon_id { [15 x i8] c"ar3700_uart\00\00\00\00", i8 0, [128 x i8] c"marvell,armada-3700-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mvebu_uart_early_console_setup }, section "__earlycon_table", align 4
@__initcall__kmod_mvebu_uart__230_745_mvebu_uart_console_initcon = internal global ptr @mvebu_uart_console_init, section ".con_initcall.init", align 4
@__initcall__kmod_mvebu_uart__231_989_mvebu_uart_init3 = internal global ptr @mvebu_uart_init, section ".initcall3.init", align 4
@mvebu_uart_console = internal global { %struct.console, [60 x i8] } { %struct.console { [16 x i8] c"ttyMV\00\00\00\00\00\00\00\00\00\00\00", ptr @mvebu_uart_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @mvebu_uart_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @mvebu_uart_driver, ptr null }, [60 x i8] zeroinitializer }, align 32
@mvebu_uart_driver = internal global { %struct.uart_driver, [60 x i8] } { %struct.uart_driver { ptr null, ptr @.str.4, ptr @.str.5, i32 0, i32 0, i32 2, ptr @mvebu_uart_console, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@mvebu_uart_ports = internal global { [2 x %struct.uart_port], [176 x i8] } zeroinitializer, align 32
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mvebu_uart_console_setup.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mvebu_uart\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mvebu_uart_console_setup\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/tty/serial/mvebu-uart.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"console on ttyMV%i not present\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mvebu_serial\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ttyMV\00", [26 x i8] zeroinitializer }, align 32
@mvebu_uart_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mvebu_uart_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.6, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @mvebu_uart_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mvebu_uart_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mvebu-uart\00", [21 x i8] zeroinitializer }, align 32
@mvebu_uart_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-3700-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uart_std_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-3700-uart-ext\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uart_ext_driver_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@mvebu_uart_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mvebu_uart_suspend, ptr @mvebu_uart_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mvebu_uart_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 820, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no registers defined\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mvebu_uart_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mvebu_uart_probe._entry_ptr = internal global ptr @mvebu_uart_probe._entry, section ".printk_index", align 4
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@uart_num_counter = internal global { i32, [28 x i8] } zeroinitializer, align 32
@mvebu_uart_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.2, i32 833, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cannot have more than %d UART ports\0A\00", [59 x i8] zeroinitializer }, align 32
@mvebu_uart_probe._entry_ptr.14 = internal global ptr @mvebu_uart_probe._entry.12, section ".printk_index", align 4
@mvebu_uart_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&port->lock\00", [20 x i8] zeroinitializer }, align 32
@mvebu_uart_ops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @mvebu_uart_tx_empty, ptr @mvebu_uart_set_mctrl, ptr @mvebu_uart_get_mctrl, ptr @mvebu_uart_stop_tx, ptr @mvebu_uart_start_tx, ptr null, ptr null, ptr null, ptr @mvebu_uart_stop_rx, ptr null, ptr @mvebu_uart_break_ctl, ptr @mvebu_uart_startup, ptr @mvebu_uart_shutdown, ptr null, ptr @mvebu_uart_set_termios, ptr null, ptr null, ptr @mvebu_uart_type, ptr @mvebu_uart_release_port, ptr @mvebu_uart_request_port, ptr null, ptr null, ptr null, ptr null, ptr @mvebu_uart_put_poll_char, ptr @mvebu_uart_get_poll_char }, [56 x i8] zeroinitializer }, align 32
@mvebu_uart_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.8, ptr @.str.2, i32 883, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to get UART clock\0A\00", [38 x i8] zeroinitializer }, align 32
@mvebu_uart_probe._entry_ptr.18 = internal global ptr @mvebu_uart_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"uart-rx\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"uart-tx\00", [24 x i8] zeroinitializer }, align 32
@mvebu_uart_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 401, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to request IRQ %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mvebu_uart_startup\00", [45 x i8] zeroinitializer }, align 32
@mvebu_uart_startup._entry_ptr = internal global ptr @mvebu_uart_startup._entry, section ".printk_index", align 4
@mvebu_uart_startup._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 411, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@mvebu_uart_startup._entry_ptr.24 = internal global ptr @mvebu_uart_startup._entry.23, section ".printk_index", align 4
@mvebu_uart_startup._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 421, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@mvebu_uart_startup._entry_ptr.26 = internal global ptr @mvebu_uart_startup._entry.25, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@uart_std_driver_data = internal global { %struct.mvebu_uart_driver_data, [60 x i8] } { %struct.mvebu_uart_driver_data { i8 0, %struct.uart_regs_layout { i32 0, i32 4, i32 8, i32 8 }, %struct.uart_flags { i32 32, i32 16, i32 32, i32 16 } }, [60 x i8] zeroinitializer }, align 32
@uart_ext_driver_data = internal global { %struct.mvebu_uart_driver_data, [60 x i8] } { %struct.mvebu_uart_driver_data { i8 1, %struct.uart_regs_layout { i32 24, i32 28, i32 4, i32 32 }, %struct.uart_flags { i32 64, i32 32, i32 32768, i32 16384 } }, [60 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant [19 x i8] c"mvebu_uart_console\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 729, i32 23 }
@___asan_gen_.30 = private unnamed_addr constant [18 x i8] c"mvebu_uart_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 750, i32 27 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"mvebu_uart_ports\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 154, i32 25 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 717, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 752, i32 18 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 753, i32 15 }
@___asan_gen_.54 = private unnamed_addr constant [27 x i8] c"mvebu_uart_platform_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 963, i32 31 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 966, i32 12 }
@___asan_gen_.60 = private unnamed_addr constant [20 x i8] c"mvebu_uart_of_match\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 951, i32 34 }
@___asan_gen_.63 = private unnamed_addr constant [18 x i8] c"mvebu_uart_pm_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 799, i32 32 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 820, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 825, i32 42 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"uart_num_counter\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 808, i32 12 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 832, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 839, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [15 x i8] c"mvebu_uart_ops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 577, i32 30 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 883, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 905, i32 39 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 911, i32 39 }
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 400, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 410, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 420, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant [21 x i8] c"uart_std_driver_data\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 926, i32 38 }
@___asan_gen_.132 = private unnamed_addr constant [21 x i8] c"uart_ext_driver_data\00", align 1
@___asan_gen_.133 = private constant [35 x i8] c"../drivers/tty/serial/mvebu-uart.c\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 938, i32 38 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID___earlycon_ar3700_uart227, ptr @__UNIQUE_ID___earlycon_ar3700_uart228, ptr @__initcall__kmod_mvebu_uart__230_745_mvebu_uart_console_initcon, ptr @__initcall__kmod_mvebu_uart__231_989_mvebu_uart_init3, ptr @mvebu_uart_probe._entry, ptr @mvebu_uart_probe._entry.12, ptr @mvebu_uart_probe._entry.16, ptr @mvebu_uart_probe._entry_ptr, ptr @mvebu_uart_probe._entry_ptr.14, ptr @mvebu_uart_probe._entry_ptr.18, ptr @mvebu_uart_startup._entry, ptr @mvebu_uart_startup._entry.23, ptr @mvebu_uart_startup._entry.25, ptr @mvebu_uart_startup._entry_ptr, ptr @mvebu_uart_startup._entry_ptr.24, ptr @mvebu_uart_startup._entry_ptr.26, ptr @mvebu_uart_console, ptr @mvebu_uart_driver, ptr @mvebu_uart_ports, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mvebu_uart_platform_driver, ptr @.str.6, ptr @mvebu_uart_of_match, ptr @mvebu_uart_pm_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @uart_num_counter, ptr @.str.13, ptr @mvebu_uart_probe.__key, ptr @.str.15, ptr @mvebu_uart_ops, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @uart_std_driver_data, ptr @uart_ext_driver_data], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_uart_console to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_uart_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_uart_ports to i32), i32 720, i32 896, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_uart_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_uart_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_uart_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_uart_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_num_counter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_uart_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_uart_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_uart_ops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_uart_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_uart_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_uart_startup._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_uart_startup._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_std_driver_data to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_ext_driver_data to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mvebu_uart_early_console_setup(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %opt) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %write = getelementptr inbounds %struct.console, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mvebu_uart_putc_early_write, ptr %write, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_uart_console_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @register_console(ptr noundef nonnull @mvebu_uart_console) #8
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_uart_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @uart_register_driver(ptr noundef nonnull @mvebu_uart_driver) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @mvebu_uart_platform_driver, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @uart_unregister_driver(ptr noundef nonnull @mvebu_uart_driver) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvebu_uart_putc_early_write(ptr nocapture noundef readonly %con, ptr noundef %s, i32 noundef %n) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.console, ptr %con, i32 0, i32 13
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %port = getelementptr inbounds %struct.earlycon_device, ptr %1, i32 0, i32 1
  tail call void @uart_console_write(ptr noundef %port, ptr noundef %s, i32 noundef %n, ptr noundef nonnull @mvebu_uart_putc) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvebu_uart_putc(ptr nocapture noundef readonly %port, i32 noundef %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %entry
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  %3 = and i32 %2, 524288
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.body, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

do.body:                                          ; preds = %for.cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !86
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %c)
  %5 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %4) #8, !srcloc !87
  br label %for.cond4

for.cond4:                                        ; preds = %for.cond4.for.cond4_crit_edge, %do.body
  %7 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase, align 4
  %add.ptr8 = getelementptr i8, ptr %8, i32 12
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #8, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  %10 = and i32 %9, 2097152
  %tobool13.not = icmp eq i32 %10, 0
  br i1 %tobool13.not, label %for.cond4.for.cond4_crit_edge, label %for.end16

for.cond4.for.cond4_crit_edge:                    ; preds = %for.cond4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond4

for.end16:                                        ; preds = %for.cond4
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_console(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvebu_uart_console_write(ptr nocapture noundef readonly %co, ptr noundef %s, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index, align 2
  %idxprom = sext i16 %1 to i32
  %arrayidx = getelementptr [2 x %struct.uart_port], ptr @mvebu_uart_ports, i32 0, i32 %idxprom
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %2 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.body51, label %do.body1

do.body1:                                         ; preds = %entry
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !89
  %and.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not = icmp eq i32 %and.i, 0
  br i1 %tobool10.not, label %do.end13, label %do.end13.thread

do.end13:                                         ; preds = %do.body1
  tail call void @trace_hardirqs_off() #8
  %call16 = tail call i32 @_raw_spin_trylock(ptr noundef %arrayidx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then27, label %do.end13.if.end64_crit_edge

do.end13.if.end64_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

do.end13.thread:                                  ; preds = %do.body1
  %call16179 = tail call i32 @_raw_spin_trylock(ptr noundef %arrayidx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16179)
  %tobool17.not180 = icmp eq i32 %call16179, 0
  br i1 %tobool17.not180, label %do.end13.thread.do.body29_crit_edge, label %do.end13.thread.if.end64_crit_edge

do.end13.thread.if.end64_crit_edge:               ; preds = %do.end13.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

do.end13.thread.do.body29_crit_edge:              ; preds = %do.end13.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body29

if.then27:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_on() #8
  br label %do.body29

do.body29:                                        ; preds = %if.then27, %do.end13.thread.do.body29_crit_edge
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !90
  %and.i.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool37.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool37.not, label %if.then41, label %do.body29.do.end44_crit_edge, !prof !91

do.body29.do.end44_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end44

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %do.body29.do.end44_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #8, !srcloc !92
  br label %if.end64

do.body51:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call59 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx) #8
  br label %if.end64

if.end64:                                         ; preds = %do.body51, %do.end44, %do.end13.thread.if.end64_crit_edge, %do.end13.if.end64_crit_edge
  %tobool141.not = phi i1 [ false, %do.end13.thread.if.end64_crit_edge ], [ true, %do.end44 ], [ false, %do.end13.if.end64_crit_edge ], [ false, %do.body51 ]
  %flags.0 = phi i32 [ %3, %do.end13.thread.if.end64_crit_edge ], [ %3, %do.end44 ], [ %3, %do.end13.if.end64_crit_edge ], [ %call59, %do.body51 ]
  %membase = getelementptr [2 x %struct.uart_port], ptr @mvebu_uart_ports, i32 0, i32 %idxprom, i32 2
  %5 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase, align 4
  %private_data.i = getelementptr [2 x %struct.uart_port], ptr @mvebu_uart_ports, i32 0, i32 %idxprom, i32 59
  %7 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private_data.i, align 4
  %data = getelementptr inbounds %struct.mvebu_uart, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %ctrl = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %10, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ctrl, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 %12
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !84
  %14 = lshr i32 %13, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  %and = and i32 %14, 15
  %15 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase, align 4
  %17 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private_data.i, align 4
  %data73 = getelementptr inbounds %struct.mvebu_uart, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %data73 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data73, align 4
  %intr75 = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %20, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %intr75 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %intr75, align 4
  %add.ptr76 = getelementptr i8, ptr %16, i32 %22
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76) #8, !srcloc !84
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  %25 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %private_data.i, align 4
  %data81 = getelementptr inbounds %struct.mvebu_uart, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %data81 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data81, align 4
  %ctrl_rx_rdy_int = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %28, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %ctrl_rx_rdy_int to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ctrl_rx_rdy_int, align 4
  %flags85 = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %28, i32 0, i32 2
  %31 = ptrtoint ptr %flags85 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags85, align 4
  %or = or i32 %32, %30
  %and86 = and i32 %or, %24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  tail call void @arm_heavy_mb() #8
  %33 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase, align 4
  %35 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %private_data.i, align 4
  %data92 = getelementptr inbounds %struct.mvebu_uart, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %data92 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data92, align 4
  %ctrl94 = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %38, i32 0, i32 1, i32 2
  %39 = ptrtoint ptr %ctrl94 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ctrl94, align 4
  %add.ptr95 = getelementptr i8, ptr %34, i32 %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95, i32 0) #8, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  tail call void @arm_heavy_mb() #8
  %41 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %membase, align 4
  %43 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %private_data.i, align 4
  %data101 = getelementptr inbounds %struct.mvebu_uart, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %data101 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data101, align 4
  %intr103 = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %46, i32 0, i32 1, i32 3
  %47 = ptrtoint ptr %intr103 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %intr103, align 4
  %add.ptr104 = getelementptr i8, ptr %42, i32 %48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 0) #8, !srcloc !87
  tail call void @uart_console_write(ptr noundef %arrayidx, ptr noundef %s, i32 noundef %count, ptr noundef nonnull @mvebu_uart_console_putchar) #8
  %call.i = tail call i64 @ktime_get() #8
  %add.i.i = add i64 %call.i, 10000000
  %49 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %membase, align 4
  %add.ptr34.i = getelementptr i8, ptr %50, i32 12
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i) #8, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  %52 = and i32 %51, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not35.i = icmp eq i32 %52, 0
  br i1 %tobool.not35.i, label %if.end64.land.lhs.true.i_crit_edge, label %if.end64.wait_for_xmite.exit_crit_edge

if.end64.wait_for_xmite.exit_crit_edge:           ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_for_xmite.exit

if.end64.land.lhs.true.i_crit_edge:               ; preds = %if.end64
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %if.end64.land.lhs.true.i_crit_edge
  %call5.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call5.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call5.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then7.i, label %cond.false.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %membase, align 4
  %add.ptr11.i = getelementptr i8, ptr %54, i32 12
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #8, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  br label %wait_for_xmite.exit

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748) #8
  %57 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %58, i32 12
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  %60 = and i32 %59, 1073741824
  %tobool.not.i = icmp eq i32 %60, 0
  br i1 %tobool.not.i, label %cond.false.i.land.lhs.true.i_crit_edge, label %cond.false.i.wait_for_xmite.exit_crit_edge

cond.false.i.wait_for_xmite.exit_crit_edge:       ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_for_xmite.exit

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

wait_for_xmite.exit:                              ; preds = %cond.false.i.wait_for_xmite.exit_crit_edge, %if.then7.i, %if.end64.wait_for_xmite.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool105.not = icmp eq i32 %and, 0
  br i1 %tobool105.not, label %wait_for_xmite.exit.if.end116_crit_edge, label %do.body107

wait_for_xmite.exit.if.end116_crit_edge:          ; preds = %wait_for_xmite.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

do.body107:                                       ; preds = %wait_for_xmite.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  %61 = shl nuw nsw i32 %and, 24
  %62 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %membase, align 4
  %64 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %private_data.i, align 4
  %data112 = getelementptr inbounds %struct.mvebu_uart, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %data112 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data112, align 4
  %ctrl114 = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %67, i32 0, i32 1, i32 2
  %68 = ptrtoint ptr %ctrl114 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ctrl114, align 4
  %add.ptr115 = getelementptr i8, ptr %63, i32 %69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 %61) #8, !srcloc !87
  br label %if.end116

if.end116:                                        ; preds = %do.body107, %wait_for_xmite.exit.if.end116_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool117.not = icmp eq i32 %and86, 0
  br i1 %tobool117.not, label %if.end116.if.end140_crit_edge, label %if.then118

if.end116.if.end140_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end140

if.then118:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %membase, align 4
  %72 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %private_data.i, align 4
  %data123 = getelementptr inbounds %struct.mvebu_uart, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %data123 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data123, align 4
  %intr125 = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %75, i32 0, i32 1, i32 3
  %76 = ptrtoint ptr %intr125 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %intr125, align 4
  %add.ptr126 = getelementptr i8, ptr %71, i32 %77
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr126) #8, !srcloc !84
  %79 = tail call i32 @llvm.bswap.i32(i32 %78)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !100
  %or130 = or i32 %79, %and86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  tail call void @arm_heavy_mb() #8
  %80 = tail call i32 @llvm.bswap.i32(i32 %or130)
  %81 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %membase, align 4
  %83 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %private_data.i, align 4
  %data136 = getelementptr inbounds %struct.mvebu_uart, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %data136 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %data136, align 4
  %intr138 = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %86, i32 0, i32 1, i32 3
  %87 = ptrtoint ptr %intr138 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %intr138, align 4
  %add.ptr139 = getelementptr i8, ptr %82, i32 %88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr139, i32 %80) #8, !srcloc !87
  br label %if.end140

if.end140:                                        ; preds = %if.then118, %if.end116.if.end140_crit_edge
  br i1 %tobool141.not, label %if.end140.if.end144_crit_edge, label %if.then142

if.end140.if.end144_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end144

if.then142:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx, i32 noundef %flags.0) #8
  br label %if.end144

if.end144:                                        ; preds = %if.then142, %if.end140.if.end144_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_uart_console_setup(ptr noundef %co, ptr noundef %options) #2 align 64 {
entry:
  %baud = alloca i32, align 4
  %bits = alloca i32, align 4
  %parity = alloca i32, align 4
  %flow = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %baud) #8
  %0 = ptrtoint ptr %baud to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 9600, ptr %baud, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits) #8
  %1 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8, ptr %bits, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parity) #8
  %2 = ptrtoint ptr %parity to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 110, ptr %parity, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flow) #8
  %3 = ptrtoint ptr %flow to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 110, ptr %flow, align 4
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %index, align 2
  %conv = sext i16 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %6 = icmp ugt i16 %5, 1
  br i1 %6, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [2 x %struct.uart_port], ptr @mvebu_uart_ports, i32 0, i32 %conv
  %mapbase = getelementptr [2 x %struct.uart_port], ptr @mvebu_uart_ports, i32 0, i32 %conv, i32 43
  %7 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mapbase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end.do.body_crit_edge, label %lor.lhs.false7

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false7:                                   ; preds = %if.end
  %membase = getelementptr [2 x %struct.uart_port], ptr @mvebu_uart_ports, i32 0, i32 %conv, i32 2
  %9 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %lor.lhs.false7.do.body_crit_edge, label %if.end17

lor.lhs.false7.do.body_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false7.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvebu_uart_console_setup.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvebu_uart_console_setup, %if.then13)) #8
          to label %cleanup [label %if.then13], !srcloc !102

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %index, align 2
  %conv15 = sext i16 %12 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mvebu_uart_console_setup.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.3, i32 noundef %conv15) #8
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false7
  %tobool18.not = icmp eq ptr %options, null
  br i1 %tobool18.not, label %if.end17.if.end20_crit_edge, label %if.then19

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  call void @uart_parse_options(ptr noundef nonnull %options, ptr noundef nonnull %baud, ptr noundef nonnull %parity, ptr noundef nonnull %bits, ptr noundef nonnull %flow) #8
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end17.if.end20_crit_edge
  %13 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %baud, align 4
  %15 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %parity, align 4
  %17 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bits, align 4
  %19 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flow, align 4
  %call21 = call i32 @uart_set_options(ptr noundef %arrayidx, ptr noundef %co, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then13, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.end20 ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.then13 ], [ -19, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flow) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parity) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %baud) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvebu_uart_console_putchar(ptr nocapture noundef readonly %port, i32 noundef %ch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get() #8
  %add.i.i = add i64 %call.i, 10000000
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr42.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42.i) #8, !srcloc !84
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !103
  %private_data.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %4 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i.i, align 4
  %data43.i = getelementptr inbounds %struct.mvebu_uart, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %data43.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data43.i, align 4
  %stat_tx_rdy44.i = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %7, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %stat_tx_rdy44.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stat_tx_rdy44.i, align 4
  %and45.i = and i32 %9, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool.not46.i = icmp eq i32 %and45.i, 0
  br i1 %tobool.not46.i, label %entry.land.lhs.true.i_crit_edge, label %entry.wait_for_xmitr.exit_crit_edge

entry.wait_for_xmitr.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_for_xmitr.exit

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call6.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call6.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call6.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then8.i, label %cond.false.i

if.then8.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %11, i32 12
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #8, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  br label %wait_for_xmitr.exit

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #8
  %14 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !84
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !103
  %18 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private_data.i.i, align 4
  %data.i = getelementptr inbounds %struct.mvebu_uart, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %stat_tx_rdy.i = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %21, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %stat_tx_rdy.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %stat_tx_rdy.i, align 4
  %and.i = and i32 %23, %17
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %cond.false.i.land.lhs.true.i_crit_edge, label %cond.false.i.wait_for_xmitr.exit_crit_edge

cond.false.i.wait_for_xmitr.exit_crit_edge:       ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_for_xmitr.exit

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

wait_for_xmitr.exit:                              ; preds = %cond.false.i.wait_for_xmitr.exit_crit_edge, %if.then8.i, %entry.wait_for_xmitr.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !105
  tail call void @arm_heavy_mb() #8
  %24 = tail call i32 @llvm.bswap.i32(i32 %ch)
  %25 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase.i, align 4
  %27 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %private_data.i.i, align 4
  %data = getelementptr inbounds %struct.mvebu_uart, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  %tsh = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %30, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %tsh to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tsh, align 4
  %add.ptr = getelementptr i8, ptr %26, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %24) #8, !srcloc !87
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_uart_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call1 = tail call ptr @of_match_device(ptr noundef nonnull @mvebu_uart_of_match, ptr noundef %dev) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call4 = tail call i32 @of_alias_get_id(ptr noundef %1, ptr noundef nonnull @.str.11) #8
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool7.not = icmp eq ptr %3, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  %or.cond = select i1 %tobool7.not, i1 true, i1 %cmp
  br i1 %or.cond, label %if.then8, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = load i32, ptr @uart_num_counter, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr @uart_num_counter, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  %call4.sink = phi i32 [ %4, %if.then8 ], [ %call4, %if.end.if.end11_crit_edge ]
  %5 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call4.sink, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.sink)
  %cmp13 = icmp sgt i32 %call4.sink, 1
  br i1 %cmp13, label %do.end17, label %if.end19

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef 2) #11
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %arrayidx = getelementptr [2 x %struct.uart_port], ptr @mvebu_uart_ports, i32 0, i32 %call4.sink
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx, ptr noundef nonnull @.str.15, ptr noundef nonnull @mvebu_uart_probe.__key, i16 noundef signext 3) #8
  %dev26 = getelementptr [2 x %struct.uart_port], ptr @mvebu_uart_ports, i32 0, i32 %call4.sink, i32 45
  %7 = ptrtoint ptr %dev26 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %dev26, align 4
  %type = getelementptr [2 x %struct.uart_port], ptr @mvebu_uart_ports, i32 0, i32 %call4.sink, i32 38
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 114, ptr %type, align 4
  %ops = getelementptr [2 x %struct.uart_port], ptr @mvebu_uart_ports, i32 0, i32 %call4.sink, i32 39
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mvebu_uart_ops, ptr %ops, align 4
  %regshift = getelementptr [2 x %struct.uart_port], ptr @mvebu_uart_ports, i32 0, i32 %call4.sink, i32 25
  %10 = ptrtoint ptr %regshift to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %regshift, align 1
  %fifosize = getelementptr [2 x %struct.uart_port], ptr @mvebu_uart_ports, i32 0, i32 %call4.sink, i32 23
  %11 = ptrtoint ptr %fifosize to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 32, ptr %fifosize, align 4
  %iotype = getelementptr [2 x %struct.uart_port], ptr @mvebu_uart_ports, i32 0, i32 %call4.sink, i32 26
  %12 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 3, ptr %iotype, align 2
  %flags = getelementptr [2 x %struct.uart_port], ptr @mvebu_uart_ports, i32 0, i32 %call4.sink, i32 33
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 536870912, ptr %flags, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %5, align 4
  %line = getelementptr [2 x %struct.uart_port], ptr @mvebu_uart_ports, i32 0, i32 %call4.sink, i32 41
  %16 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %line, align 4
  %irq28 = getelementptr [2 x %struct.uart_port], ptr @mvebu_uart_ports, i32 0, i32 %call4.sink, i32 20
  %17 = ptrtoint ptr %irq28 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %irq28, align 4
  %irqflags = getelementptr [2 x %struct.uart_port], ptr @mvebu_uart_ports, i32 0, i32 %call4.sink, i32 21
  %18 = ptrtoint ptr %irqflags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %irqflags, align 4
  %19 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call, align 4
  %mapbase = getelementptr [2 x %struct.uart_port], ptr @mvebu_uart_ports, i32 0, i32 %call4.sink, i32 43
  %21 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %mapbase, align 4
  %call30 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call) #8
  %membase = getelementptr [2 x %struct.uart_port], ptr @mvebu_uart_ports, i32 0, i32 %call4.sink, i32 2
  %22 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call30, ptr %membase, align 4
  %cmp.i = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %call30 to i32
  br label %cleanup

if.end36:                                         ; preds = %if.end19
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 48, i32 noundef 3520) #8
  %tobool39.not = icmp eq ptr %call.i, null
  br i1 %tobool39.not, label %if.end36.cleanup_crit_edge, label %if.end41

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end41:                                         ; preds = %if.end36
  %data = getelementptr inbounds %struct.of_device_id, ptr %call1, i32 0, i32 3
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %data42 = getelementptr inbounds %struct.mvebu_uart, ptr %call.i, i32 0, i32 3
  %26 = ptrtoint ptr %data42 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %data42, align 4
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %arrayidx, ptr %call.i, align 4
  %private_data = getelementptr [2 x %struct.uart_port], ptr @mvebu_uart_ports, i32 0, i32 %call4.sink, i32 59
  %28 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %private_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %29 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call45 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.mvebu_uart, ptr %call.i, i32 0, i32 1
  %30 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call45, ptr %clk, align 4
  %cmp.i188 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i188, label %if.then48, label %if.else67

if.then48:                                        ; preds = %if.end41
  %cmp51 = icmp eq ptr %call45, inttoptr (i32 -517 to ptr)
  br i1 %cmp51, label %if.then48.cleanup_crit_edge, label %if.end55

if.then48.cleanup_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end55:                                         ; preds = %if.then48
  %31 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %private_data, align 4
  %data57 = getelementptr inbounds %struct.mvebu_uart, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %data57 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data57, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 4, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool58.not = icmp eq i8 %36, 0
  br i1 %tobool58.not, label %if.end55.if.end75_crit_edge, label %do.end62

if.end55.if.end75_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

do.end62:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #11
  %37 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %clk, align 4
  %39 = ptrtoint ptr %38 to i32
  br label %cleanup

if.else67:                                        ; preds = %if.end41
  %call.i189 = tail call i32 @clk_prepare(ptr noundef %call45) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i189)
  %tobool.not.i = icmp eq i32 %call.i189, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else67.if.end75_crit_edge

if.else67.if.end75_crit_edge:                     ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.end.i:                                         ; preds = %if.else67
  %call1.i = tail call i32 @clk_enable(ptr noundef %call45) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then71, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call45) #8
  br label %if.end75

if.then71:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clk, align 4
  %call73 = tail call i32 @clk_get_rate(ptr noundef %41) #8
  %uartclk = getelementptr [2 x %struct.uart_port], ptr @mvebu_uart_ports, i32 0, i32 %call4.sink, i32 22
  %42 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call73, ptr %uartclk, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then71, %if.then3.i, %if.else67.if.end75_crit_edge, %if.end55.if.end75_crit_edge
  %call76 = tail call i32 @platform_irq_count(ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call76)
  %cmp77 = icmp eq i32 %call76, 1
  br i1 %cmp77, label %if.then78, label %if.else85

if.then78:                                        ; preds = %if.end75
  %call79 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %if.then78.cleanup_crit_edge, label %if.end82

if.then78.cleanup_crit_edge:                      ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end82:                                         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #10
  %irq83 = getelementptr inbounds %struct.mvebu_uart, ptr %call.i, i32 0, i32 2
  %43 = ptrtoint ptr %irq83 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call79, ptr %irq83, align 4
  br label %do.body99

if.else85:                                        ; preds = %if.end75
  %call86 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %if.else85.cleanup_crit_edge, label %if.end89

if.else85.cleanup_crit_edge:                      ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end89:                                         ; preds = %if.else85
  %irq90 = getelementptr inbounds %struct.mvebu_uart, ptr %call.i, i32 0, i32 2
  %44 = ptrtoint ptr %irq90 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call86, ptr %irq90, align 4
  %call92 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp93 = icmp slt i32 %call92, 0
  br i1 %cmp93, label %if.end89.cleanup_crit_edge, label %if.end95

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end95:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx97 = getelementptr %struct.mvebu_uart, ptr %call.i, i32 0, i32 2, i32 1
  %45 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call92, ptr %arrayidx97, align 4
  br label %do.body99

do.body99:                                        ; preds = %if.end95, %if.end82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  tail call void @arm_heavy_mb() #8
  %46 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %membase, align 4
  %48 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %private_data, align 4
  %data104 = getelementptr inbounds %struct.mvebu_uart, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %data104 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data104, align 4
  %ctrl = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %51, i32 0, i32 1, i32 2
  %52 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ctrl, align 4
  %add.ptr = getelementptr i8, ptr %47, i32 %53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 128) #8, !srcloc !87
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %55 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %membase, align 4
  %57 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %private_data, align 4
  %data110 = getelementptr inbounds %struct.mvebu_uart, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %data110 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data110, align 4
  %ctrl112 = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %60, i32 0, i32 1, i32 2
  %61 = ptrtoint ptr %ctrl112 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ctrl112, align 4
  %add.ptr113 = getelementptr i8, ptr %56, i32 %62
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113, i32 0) #8, !srcloc !87
  %call114 = tail call i32 @uart_add_one_port(ptr noundef nonnull @mvebu_uart_driver, ptr noundef %arrayidx) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body99, %if.end89.cleanup_crit_edge, %if.else85.cleanup_crit_edge, %if.then78.cleanup_crit_edge, %do.end62, %if.then48.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.then33, %do.end17, %do.end
  %retval.0 = phi i32 [ -22, %do.end17 ], [ %23, %if.then33 ], [ %39, %do.end62 ], [ %call114, %do.body99 ], [ -22, %do.end ], [ -12, %if.end36.cleanup_crit_edge ], [ %call79, %if.then78.cleanup_crit_edge ], [ %call86, %if.else85.cleanup_crit_edge ], [ %call92, %if.end89.cleanup_crit_edge ], [ -517, %if.then48.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irq_count(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_uart_tx_empty(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #8
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call2) #8
  %3 = lshr i32 %2, 30
  %.lobit = and i32 %3, 1
  ret i32 %.lobit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mvebu_uart_set_mctrl(ptr nocapture noundef %port, i32 noundef %mctrl) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mvebu_uart_get_mctrl(ptr nocapture noundef readnone %port) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 352
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvebu_uart_stop_tx(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %private_data.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %data = getelementptr inbounds %struct.mvebu_uart, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %intr = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %5, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %intr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !84
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  %10 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data.i, align 4
  %data4 = getelementptr inbounds %struct.mvebu_uart, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %data4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data4, align 4
  %flags = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %neg = xor i32 %15, -1
  %and = and i32 %9, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %16 = tail call i32 @llvm.bswap.i32(i32 %and)
  %17 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase, align 4
  %19 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %private_data.i, align 4
  %data7 = getelementptr inbounds %struct.mvebu_uart, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data7, align 4
  %intr9 = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %22, i32 0, i32 1, i32 3
  %23 = ptrtoint ptr %intr9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %intr9, align 4
  %add.ptr10 = getelementptr i8, ptr %18, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %16) #8, !srcloc !87
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvebu_uart_start_tx(ptr nocapture noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %xmit1 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2
  %private_data.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %data = getelementptr inbounds %struct.mvebu_uart, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %head = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp = icmp eq i32 %9, %11
  br i1 %cmp, label %land.lhs.true.if.end_crit_edge, label %do.body

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %xmit1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xmit1, align 4
  %14 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tail, align 4
  %arrayidx = getelementptr i8, ptr %13, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %17 to i32
  %18 = shl nuw i32 %conv, 24
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %19 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase, align 4
  %21 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %private_data.i, align 4
  %data4 = getelementptr inbounds %struct.mvebu_uart, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %data4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data4, align 4
  %tsh = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %24, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %tsh to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tsh, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %18) #8, !srcloc !87
  %27 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tail, align 4
  %add = add i32 %28, 1
  %and = and i32 %add, 4095
  store i32 %and, ptr %tail, align 4
  %tx = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 5
  %29 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %tx, align 4
  br label %if.end

if.end:                                           ; preds = %do.body, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %membase7 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %31 = ptrtoint ptr %membase7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %membase7, align 4
  %33 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %private_data.i, align 4
  %data9 = getelementptr inbounds %struct.mvebu_uart, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %data9 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data9, align 4
  %intr = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %36, i32 0, i32 1, i32 3
  %37 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %intr, align 4
  %add.ptr11 = getelementptr i8, ptr %32, i32 %38
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #8, !srcloc !84
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  %41 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %private_data.i, align 4
  %data15 = getelementptr inbounds %struct.mvebu_uart, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %data15 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data15, align 4
  %flags = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags, align 4
  %or = or i32 %46, %40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  tail call void @arm_heavy_mb() #8
  %47 = tail call i32 @llvm.bswap.i32(i32 %or)
  %48 = ptrtoint ptr %membase7 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %membase7, align 4
  %50 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %private_data.i, align 4
  %data21 = getelementptr inbounds %struct.mvebu_uart, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %data21 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data21, align 4
  %intr23 = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %53, i32 0, i32 1, i32 3
  %54 = ptrtoint ptr %intr23 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %intr23, align 4
  %add.ptr24 = getelementptr i8, ptr %49, i32 %55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %47) #8, !srcloc !87
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvebu_uart_stop_rx(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %private_data.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %data = getelementptr inbounds %struct.mvebu_uart, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %ctrl = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %5, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctrl, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !115
  %9 = and i32 %8, -251658241
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase, align 4
  %12 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data.i, align 4
  %data5 = getelementptr inbounds %struct.mvebu_uart, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %data5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data5, align 4
  %ctrl7 = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %15, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %ctrl7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ctrl7, align 4
  %add.ptr8 = getelementptr i8, ptr %11, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %9) #8, !srcloc !87
  %18 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase, align 4
  %20 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %private_data.i, align 4
  %data13 = getelementptr inbounds %struct.mvebu_uart, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %data13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data13, align 4
  %intr = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %23, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %intr, align 4
  %add.ptr15 = getelementptr i8, ptr %19, i32 %25
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #8, !srcloc !84
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %28 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %private_data.i, align 4
  %data20 = getelementptr inbounds %struct.mvebu_uart, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %data20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data20, align 4
  %ctrl_rx_rdy_int = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %31, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %ctrl_rx_rdy_int to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ctrl_rx_rdy_int, align 4
  %neg = xor i32 %33, -1
  %and21 = and i32 %27, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void @arm_heavy_mb() #8
  %34 = tail call i32 @llvm.bswap.i32(i32 %and21)
  %35 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase, align 4
  %37 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %private_data.i, align 4
  %data27 = getelementptr inbounds %struct.mvebu_uart, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %data27 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data27, align 4
  %intr29 = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %40, i32 0, i32 1, i32 3
  %41 = ptrtoint ptr %intr29 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %intr29, align 4
  %add.ptr30 = getelementptr i8, ptr %36, i32 %42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %34) #8, !srcloc !87
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvebu_uart_break_ctl(ptr noundef %port, i32 noundef %brk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #8
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %private_data.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %data = getelementptr inbounds %struct.mvebu_uart, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %ctrl = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %5, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctrl, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %brk)
  %cmp9 = icmp eq i32 %brk, -1
  %9 = and i32 %8, -524289
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %masksel = select i1 %cmp9, i32 2048, i32 0
  %ctl.0 = or i32 %10, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %11 = tail call i32 @llvm.bswap.i32(i32 %ctl.0)
  %12 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase, align 4
  %14 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %private_data.i, align 4
  %data16 = getelementptr inbounds %struct.mvebu_uart, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %data16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data16, align 4
  %ctrl18 = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %17, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %ctrl18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ctrl18, align 4
  %add.ptr19 = getelementptr i8, ptr %13, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %11) #8, !srcloc !87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_uart_startup(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  tail call void @arm_heavy_mb() #8
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 4
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  %data = getelementptr inbounds %struct.mvebu_uart, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %ctrl = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %7, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctrl, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 12582912) #8, !srcloc !87
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #8
  %11 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase, align 4
  %add.ptr3 = getelementptr i8, ptr %12, i32 12
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #8, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  %14 = or i32 %13, 251658240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  tail call void @arm_heavy_mb() #8
  %15 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase, align 4
  %add.ptr10 = getelementptr i8, ptr %16, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %14) #8, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase, align 4
  %19 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %private_data.i, align 4
  %data16 = getelementptr inbounds %struct.mvebu_uart, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %data16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data16, align 4
  %ctrl18 = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %22, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %ctrl18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ctrl18, align 4
  %add.ptr19 = getelementptr i8, ptr %18, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 251658240) #8, !srcloc !87
  %25 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase, align 4
  %27 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %private_data.i, align 4
  %data24 = getelementptr inbounds %struct.mvebu_uart, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %data24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data24, align 4
  %intr = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %30, i32 0, i32 1, i32 3
  %31 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %intr, align 4
  %add.ptr26 = getelementptr i8, ptr %26, i32 %32
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #8, !srcloc !84
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !125
  %35 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %private_data.i, align 4
  %data31 = getelementptr inbounds %struct.mvebu_uart, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %data31 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data31, align 4
  %ctrl_rx_rdy_int = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %38, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %ctrl_rx_rdy_int to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ctrl_rx_rdy_int, align 4
  %or32 = or i32 %40, %34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  tail call void @arm_heavy_mb() #8
  %41 = tail call i32 @llvm.bswap.i32(i32 %or32)
  %42 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %membase, align 4
  %44 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %private_data.i, align 4
  %data38 = getelementptr inbounds %struct.mvebu_uart, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %data38 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data38, align 4
  %intr40 = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %47, i32 0, i32 1, i32 3
  %48 = ptrtoint ptr %intr40 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %intr40, align 4
  %add.ptr41 = getelementptr i8, ptr %43, i32 %49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %41) #8, !srcloc !87
  %irq = getelementptr inbounds %struct.mvebu_uart, ptr %1, i32 0, i32 2
  %arrayidx = getelementptr %struct.mvebu_uart, ptr %1, i32 0, i32 2, i32 1
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not = icmp eq i32 %51, 0
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 4
  %54 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %irq, align 4
  %irqflags = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 21
  %56 = ptrtoint ptr %irqflags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %irqflags, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %53, i32 0, i32 3
  %58 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %59, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %53, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %61, %if.end.i ], [ %59, %if.then.dev_name.exit_crit_edge ]
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %53, i32 noundef %55, ptr noundef nonnull @mvebu_uart_isr, ptr noundef null, i32 noundef %57, ptr noundef %retval.0.i, ptr noundef %port) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool47.not = icmp eq i32 %call.i, 0
  br i1 %tobool47.not, label %dev_name.exit.cleanup_crit_edge, label %do.end51

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end51:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev, align 4
  %64 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.21, i32 noundef %65) #11
  br label %cleanup

if.else:                                          ; preds = %entry
  br i1 %tobool.not.i, label %if.end.i143, label %if.else.dev_name.exit145_crit_edge

if.else.dev_name.exit145_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit145

if.end.i143:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %53, align 4
  br label %dev_name.exit145

dev_name.exit145:                                 ; preds = %if.end.i143, %if.else.dev_name.exit145_crit_edge
  %retval.0.i144 = phi ptr [ %67, %if.end.i143 ], [ %59, %if.else.dev_name.exit145_crit_edge ]
  %call.i146 = tail call i32 @devm_request_threaded_irq(ptr noundef %53, i32 noundef %55, ptr noundef nonnull @mvebu_uart_rx_isr, ptr noundef null, i32 noundef %57, ptr noundef %retval.0.i144, ptr noundef %port) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %tobool62.not = icmp eq i32 %call.i146, 0
  %68 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev, align 4
  br i1 %tobool62.not, label %if.end70, label %do.end66

do.end66:                                         ; preds = %dev_name.exit145
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.21, i32 noundef %71) #11
  br label %cleanup

if.end70:                                         ; preds = %dev_name.exit145
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx, align 4
  %74 = ptrtoint ptr %irqflags to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %irqflags, align 4
  %init_name.i147 = getelementptr inbounds %struct.device, ptr %69, i32 0, i32 3
  %76 = ptrtoint ptr %init_name.i147 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %init_name.i147, align 8
  %tobool.not.i148 = icmp eq ptr %77, null
  br i1 %tobool.not.i148, label %if.end.i149, label %if.end70.dev_name.exit151_crit_edge

if.end70.dev_name.exit151_crit_edge:              ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit151

if.end.i149:                                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %69, align 4
  br label %dev_name.exit151

dev_name.exit151:                                 ; preds = %if.end.i149, %if.end70.dev_name.exit151_crit_edge
  %retval.0.i150 = phi ptr [ %79, %if.end.i149 ], [ %77, %if.end70.dev_name.exit151_crit_edge ]
  %call.i152 = tail call i32 @devm_request_threaded_irq(ptr noundef %69, i32 noundef %73, ptr noundef nonnull @mvebu_uart_tx_isr, ptr noundef null, i32 noundef %75, ptr noundef %retval.0.i150, ptr noundef %port) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %tobool78.not = icmp eq i32 %call.i152, 0
  br i1 %tobool78.not, label %dev_name.exit151.cleanup_crit_edge, label %do.end82

dev_name.exit151.cleanup_crit_edge:               ; preds = %dev_name.exit151
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end82:                                         ; preds = %dev_name.exit151
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev, align 4
  %82 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.21, i32 noundef %83) #11
  %84 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev, align 4
  %86 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %irq, align 4
  tail call void @devm_free_irq(ptr noundef %85, i32 noundef %87, ptr noundef %port) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end82, %dev_name.exit151.cleanup_crit_edge, %do.end66, %do.end51, %dev_name.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i146, %do.end66 ], [ %call.i152, %do.end82 ], [ %call.i, %do.end51 ], [ 0, %dev_name.exit151.cleanup_crit_edge ], [ 0, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvebu_uart_shutdown(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 4
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  %data = getelementptr inbounds %struct.mvebu_uart, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %intr = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %7, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %intr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !87
  %irq = getelementptr inbounds %struct.mvebu_uart, ptr %1, i32 0, i32 2
  %arrayidx = getelementptr %struct.mvebu_uart, ptr %1, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  tail call void @devm_free_irq(ptr noundef %13, i32 noundef %15, ptr noundef %port) #8
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  tail call void @devm_free_irq(ptr noundef %17, i32 noundef %19, ptr noundef %port) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvebu_uart_set_termios(ptr noundef %port, ptr noundef %termios, ptr noundef %old) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #8
  %private_data.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %data = getelementptr inbounds %struct.mvebu_uart, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %stat_rx_rdy = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %3, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %stat_rx_rdy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stat_rx_rdy, align 4
  %stat_tx_rdy = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %3, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %stat_tx_rdy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stat_tx_rdy, align 4
  %or = or i32 %7, %5
  %or11 = or i32 %or, 2049
  %read_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 28
  %8 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or11, ptr %read_status_mask, align 4
  %9 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %termios, align 4
  %and = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or13 = or i32 %or, 2055
  %11 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or13, ptr %read_status_mask, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ignore_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 29
  %12 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %ignore_status_mask, align 4
  %13 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %termios, align 4
  %and15 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %spec.store.select = select i1 %tobool16.not, i32 0, i32 7
  %15 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.store.select, ptr %ignore_status_mask, align 4
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %16 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %c_cflag, align 4
  %and21 = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %cmp22 = icmp eq i32 %and21, 0
  br i1 %cmp22, label %if.then24, label %if.end.if.end32_crit_edge

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %stat_rx_rdy28 = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %19, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %stat_rx_rdy28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %stat_rx_rdy28, align 4
  %or29 = or i32 %21, 15
  %22 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or29, ptr %ignore_status_mask, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then24, %if.end.if.end32_crit_edge
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %23 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %uartclk, align 4
  %sub = add i32 %24, 16367
  %div = udiv i32 %sub, 16368
  %call33 = tail call i32 @uart_get_baud_rate(ptr noundef %port, ptr noundef %termios, ptr noundef %old, i32 noundef %div, i32 noundef 230400) #8
  %25 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %uartclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %if.then36, label %if.end42

if.then36:                                        ; preds = %if.end32
  %cond = icmp eq ptr %old, null
  br i1 %cond, label %if.then36.if.end59_crit_edge, label %if.end42.thread

if.then36.if.end59_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.end42.thread:                                  ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %call39 = tail call i32 @uart_get_baud_rate(ptr noundef %port, ptr noundef nonnull %old, ptr noundef null, i32 noundef %div, i32 noundef 230400) #8
  br label %if.then44

if.end42:                                         ; preds = %if.end32
  %mul.i = shl i32 %call33, 4
  %div32.i = lshr exact i32 %mul.i, 1
  %add.i = add i32 %div32.i, %26
  %div2.i = udiv i32 %add.i, %mul.i
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %27 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 16
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  %30 = and i32 %29, 16580607
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #8
  %or.i = or i32 %31, %div2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %32 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %33 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %34, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %32) #8, !srcloc !87
  %35 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %36, i32 20
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #8, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %38 = and i32 %37, -1061109568
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %39 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %40, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %38) #8, !srcloc !87
  tail call void @tty_termios_encode_baud_rate(ptr noundef %termios, i32 noundef %call33, i32 noundef %call33) #8
  %41 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %c_cflag, align 4
  tail call void @uart_update_timeout(ptr noundef %port, i32 noundef %42, i32 noundef %call33) #8
  %tobool43.not = icmp eq ptr %old, null
  br i1 %tobool43.not, label %if.end42.if.end59_crit_edge, label %if.end42.if.then44_crit_edge

if.end42.if.then44_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then44

if.end42.if.end59_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then44:                                        ; preds = %if.end42.if.then44_crit_edge, %if.end42.thread
  %43 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %termios, align 4
  %and46 = and i32 %44, 20
  store i32 %and46, ptr %termios, align 4
  %45 = ptrtoint ptr %old to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %old, align 4
  %and48 = and i32 %46, -21
  %or50 = or i32 %and48, %and46
  store i32 %or50, ptr %termios, align 4
  %47 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %c_cflag, align 4
  %and52 = and i32 %48, 4239
  store i32 %and52, ptr %c_cflag, align 4
  %c_cflag53 = getelementptr inbounds %struct.ktermios, ptr %old, i32 0, i32 2
  %49 = ptrtoint ptr %c_cflag53 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %c_cflag53, align 4
  %and54 = and i32 %50, -4288
  %or56 = or i32 %and52, %and54
  %or58 = or i32 %or56, 48
  store i32 %or58, ptr %c_cflag, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then44, %if.end42.if.end59_crit_edge, %if.then36.if.end59_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call2) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @mvebu_uart_type(ptr nocapture noundef readnone %port) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mvebu_uart_release_port(ptr nocapture noundef %port) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mvebu_uart_request_port(ptr nocapture noundef readnone %port) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvebu_uart_put_poll_char(ptr nocapture noundef readonly %port, i8 noundef zeroext %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr7 = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #8, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  %3 = and i32 %2, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not8 = icmp eq i32 %3, 0
  br i1 %tobool.not8, label %entry.do.body_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end:                                           ; preds = %if.end.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #8
  %5 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 12
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  %8 = and i32 %7, 524288
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end.do.body_crit_edge, label %if.end.if.end_crit_edge

if.end.if.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %conv = zext i8 %c to i32
  %9 = shl nuw i32 %conv, 24
  %10 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase, align 4
  %private_data.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %12 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data.i, align 4
  %data = getelementptr inbounds %struct.mvebu_uart, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %tsh = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %15, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %tsh to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tsh, align 4
  %add.ptr4 = getelementptr i8, ptr %11, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %9) #8, !srcloc !87
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_uart_get_poll_char(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !84
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %private_data.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  %data = getelementptr inbounds %struct.mvebu_uart, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %stat_rx_rdy = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %7, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %stat_rx_rdy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stat_rx_rdy, align 4
  %and = and i32 %9, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase, align 4
  %regs = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %regs, align 4
  %add.ptr8 = getelementptr i8, ptr %11, i32 %13
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #8, !srcloc !84
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %if.end ], [ 16711680, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_uart_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !84
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  %private_data.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 59
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  %data = getelementptr inbounds %struct.mvebu_uart, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %stat_rx_rdy = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %7, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %stat_rx_rdy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stat_rx_rdy, align 4
  %or4 = or i32 %9, 13
  %and = and i32 %or4, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mvebu_uart_rx_chars(ptr noundef %dev_id, i32 noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data.i, align 4
  %data6 = getelementptr inbounds %struct.mvebu_uart, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %data6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data6, align 4
  %stat_tx_rdy = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %13, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %stat_tx_rdy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stat_tx_rdy, align 4
  %and8 = and i32 %15, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end.if.end11_crit_edge, label %if.then10

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mvebu_uart_tx_chars(ptr noundef %dev_id)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end.if.end11_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_uart_rx_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !84
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  %private_data.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 59
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  %data = getelementptr inbounds %struct.mvebu_uart, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %stat_rx_rdy = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %7, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %stat_rx_rdy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stat_rx_rdy, align 4
  %or4 = or i32 %9, 13
  %and = and i32 %or4, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mvebu_uart_rx_chars(ptr noundef %dev_id, i32 noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_uart_tx_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !84
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %private_data.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 59
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  %data = getelementptr inbounds %struct.mvebu_uart, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %stat_tx_rdy = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %7, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %stat_tx_rdy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stat_tx_rdy, align 4
  %and = and i32 %9, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mvebu_uart_tx_chars(ptr noundef %dev_id)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mvebu_uart_rx_chars(ptr noundef %port, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %private_data.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %rx = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 4
  %parity = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 8
  %brk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 9
  %handle_break.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 17
  %has_sysrq.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 48
  %cons.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 32
  %line.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %sysrq.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 46
  %flags.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %overrun = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 7
  %frame = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 6
  %ignore_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 29
  %read_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 28
  %tail.i = getelementptr inbounds %struct.tty_bufhead, ptr %1, i32 0, i32 8
  br label %do.body

do.body:                                          ; preds = %ignore_char.do.body_crit_edge, %entry
  %flag.0 = phi i8 [ 0, %entry ], [ %flag.3, %ignore_char.do.body_crit_edge ]
  %ch.0 = phi i8 [ 0, %entry ], [ %ch.1, %ignore_char.do.body_crit_edge ]
  %status.addr.0 = phi i32 [ %status, %entry ], [ %118, %ignore_char.do.body_crit_edge ]
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %data = getelementptr inbounds %struct.mvebu_uart, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %stat_rx_rdy = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %5, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %stat_rx_rdy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stat_rx_rdy, align 4
  %and = and i32 %7, %status.addr.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.if.end14_crit_edge, label %if.then

do.body.if.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then:                                          ; preds = %do.body
  %8 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase, align 4
  %regs = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %11
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !84
  %13 = lshr i32 %12, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  %conv8 = trunc i32 %13 to i8
  %14 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %rx, align 4
  %and9 = and i32 %status.addr.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.then.if.end14_crit_edge, label %if.then11

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %parity, align 4
  %inc13 = add i32 %17, 1
  store i32 %inc13, ptr %parity, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.then.if.end14_crit_edge, %do.body.if.end14_crit_edge
  %flag.1 = phi i8 [ 0, %if.then11 ], [ 0, %if.then.if.end14_crit_edge ], [ %flag.0, %do.body.if.end14_crit_edge ]
  %ch.1 = phi i8 [ %conv8, %if.then11 ], [ %conv8, %if.then.if.end14_crit_edge ], [ %ch.0, %do.body.if.end14_crit_edge ]
  %and15 = and i32 %status.addr.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end25_crit_edge, label %if.then17

if.end14.if.end25_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then17:                                        ; preds = %if.end14
  %18 = ptrtoint ptr %brk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %brk, align 4
  %inc19 = add i32 %19, 1
  store i32 %inc19, ptr %brk, align 4
  %and20 = and i32 %status.addr.0, -7
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %state, align 4
  %22 = ptrtoint ptr %handle_break.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %handle_break.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.then17.if.end.i_crit_edge, label %if.then.i

if.then17.if.end.i_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %23(ptr noundef %port) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then17.if.end.i_crit_edge
  %24 = ptrtoint ptr %has_sysrq.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %has_sysrq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool3.not.i = icmp eq i8 %25, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end15.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %26 = ptrtoint ptr %cons.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cons.i, align 4
  %tobool4.not.i = icmp eq ptr %27, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end15.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.if.end15.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %index.i = getelementptr inbounds %struct.console, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %index.i, align 2
  %conv7.i = sext i16 %29 to i32
  %30 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %line.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %conv7.i)
  %cmp.i = icmp eq i32 %31, %conv7.i
  br i1 %cmp.i, label %if.then9.i, label %land.lhs.true5.i.if.end15.i_crit_edge

land.lhs.true5.i.if.end15.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then9.i:                                       ; preds = %land.lhs.true5.i
  %32 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sysrq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool10.not.i = icmp eq i32 %33, 0
  br i1 %tobool10.not.i, label %uart_handle_break.exit, label %if.end13.i

if.end13.i:                                       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %sysrq.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end13.i, %land.lhs.true5.i.if.end15.i_crit_edge, %land.lhs.true.i.if.end15.i_crit_edge, %if.end.i.if.end15.i_crit_edge
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool16.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool16.not.i, label %if.end15.i.if.end25_crit_edge, label %if.then17.i

if.end15.i.if.end25_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %tty.i = getelementptr inbounds %struct.tty_port, ptr %21, i32 0, i32 1
  %37 = ptrtoint ptr %tty.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tty.i, align 4
  tail call void @do_SAK(ptr noundef %38) #8
  br label %if.end25

uart_handle_break.exit:                           ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %39, 500
  %40 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add.i, ptr %sysrq.i, align 4
  br label %ignore_char

if.end25:                                         ; preds = %if.then17.i, %if.end15.i.if.end25_crit_edge, %if.end14.if.end25_crit_edge
  %status.addr.1 = phi i32 [ %status.addr.0, %if.end14.if.end25_crit_edge ], [ %and20, %if.then17.i ], [ %and20, %if.end15.i.if.end25_crit_edge ]
  %and26 = and i32 %status.addr.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end31_crit_edge, label %if.then28

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %overrun to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %overrun, align 4
  %inc30 = add i32 %42, 1
  store i32 %inc30, ptr %overrun, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end25.if.end31_crit_edge
  %and32 = and i32 %status.addr.1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.if.end37_crit_edge, label %if.then34

if.end31.if.end37_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %frame, align 4
  %inc36 = add i32 %44, 1
  store i32 %inc36, ptr %frame, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end31.if.end37_crit_edge
  %conv38 = zext i8 %ch.1 to i32
  %45 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sysrq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i138 = icmp eq i32 %46, 0
  br i1 %tobool.not.i138, label %if.end37.if.end42_crit_edge, label %if.end.i139

if.end37.if.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.end.i139:                                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ch.1)
  %tobool1.not.i = icmp eq i8 %ch.1, 0
  br i1 %tobool1.not.i, label %if.end.i139.uart_handle_sysrq_char.exit.thread221_crit_edge, label %land.lhs.true.i141

if.end.i139.uart_handle_sysrq_char.exit.thread221_crit_edge: ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #10
  br label %uart_handle_sysrq_char.exit.thread221

land.lhs.true.i141:                               ; preds = %if.end.i139
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %47, %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i140 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i140, label %if.then3.i, label %land.lhs.true.i141.uart_handle_sysrq_char.exit.thread221_crit_edge

land.lhs.true.i141.uart_handle_sysrq_char.exit.thread221_crit_edge: ; preds = %land.lhs.true.i141
  call void @__sanitizer_cov_trace_pc() #10
  br label %uart_handle_sysrq_char.exit.thread221

if.then3.i:                                       ; preds = %land.lhs.true.i141
  %call.i = tail call i32 @sysrq_mask() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i142 = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i142, label %if.end7.i, label %uart_handle_sysrq_char.exit

if.end7.i:                                        ; preds = %if.then3.i
  %call8.i = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %port, i32 noundef %conv38) #8
  br i1 %call8.i, label %if.end7.i.ignore_char_crit_edge, label %if.end7.i.uart_handle_sysrq_char.exit.thread221_crit_edge

if.end7.i.uart_handle_sysrq_char.exit.thread221_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uart_handle_sysrq_char.exit.thread221

if.end7.i.ignore_char_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ignore_char

uart_handle_sysrq_char.exit.thread221:            ; preds = %if.end7.i.uart_handle_sysrq_char.exit.thread221_crit_edge, %land.lhs.true.i141.uart_handle_sysrq_char.exit.thread221_crit_edge, %if.end.i139.uart_handle_sysrq_char.exit.thread221_crit_edge
  %48 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %sysrq.i, align 4
  br label %if.end42

uart_handle_sysrq_char.exit:                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @handle_sysrq(i32 noundef %conv38) #8
  %49 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %sysrq.i, align 4
  br label %ignore_char

if.end42:                                         ; preds = %uart_handle_sysrq_char.exit.thread221, %if.end37.if.end42_crit_edge
  %50 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ignore_status_mask, align 4
  %and43 = and i32 %status.addr.1, 2
  %and44 = and i32 %and43, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end42.if.end52_crit_edge, label %if.then46

if.end42.if.end52_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %private_data.i, align 4
  %data48 = getelementptr inbounds %struct.mvebu_uart, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %data48 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data48, align 4
  %stat_rx_rdy50 = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %55, i32 0, i32 2, i32 3
  %56 = ptrtoint ptr %stat_rx_rdy50 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %stat_rx_rdy50, align 4
  %neg = xor i32 %57, -1
  %and51 = and i32 %status.addr.1, %neg
  br label %if.end52

if.end52:                                         ; preds = %if.then46, %if.end42.if.end52_crit_edge
  %status.addr.2 = phi i32 [ %and51, %if.then46 ], [ %status.addr.1, %if.end42.if.end52_crit_edge ]
  %58 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %read_status_mask, align 4
  %and53 = and i32 %59, %status.addr.2
  %and54 = and i32 %and53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  %spec.select = select i1 %tobool55.not, i8 %flag.1, i8 3
  %neg59 = xor i32 %51, -1
  %and60 = and i32 %and53, %neg59
  %60 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %private_data.i, align 4
  %data62 = getelementptr inbounds %struct.mvebu_uart, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %data62 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data62, align 4
  %stat_rx_rdy64 = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %63, i32 0, i32 2, i32 3
  %64 = ptrtoint ptr %stat_rx_rdy64 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %stat_rx_rdy64, align 4
  %and65 = and i32 %65, %and60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end52.if.end69_crit_edge, label %if.then67

if.end52.if.end69_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then67:                                        ; preds = %if.end52
  %66 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tail.i, align 4
  %flags.i146 = getelementptr inbounds %struct.tty_buffer, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %flags.i146 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags.i146, align 4
  %and.i147 = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i147)
  %tobool.not.i148 = icmp eq i32 %and.i147, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select)
  %cmp.i149 = icmp eq i8 %spec.select, 0
  %70 = or i1 %cmp.i149, %tobool.not.i148
  br i1 %70, label %land.lhs.true.i150, label %if.then67.if.end12.i_crit_edge

if.then67.if.end12.i_crit_edge:                   ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

land.lhs.true.i150:                               ; preds = %if.then67
  %used.i = getelementptr inbounds %struct.tty_buffer, ptr %67, i32 0, i32 1
  %71 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %used.i, align 4
  %size.i = getelementptr inbounds %struct.tty_buffer, ptr %67, i32 0, i32 2
  %73 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp3.i = icmp slt i32 %72, %74
  br i1 %cmp3.i, label %if.then.i151, label %land.lhs.true.i150.if.end12.i_crit_edge

land.lhs.true.i150.if.end12.i_crit_edge:          ; preds = %land.lhs.true.i150
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.then.i151:                                     ; preds = %land.lhs.true.i150
  br i1 %tobool.not.i148, label %if.then8.i, label %if.then.i151.if.end.i152_crit_edge

if.then.i151.if.end.i152_crit_edge:               ; preds = %if.then.i151
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i152

if.then8.i:                                       ; preds = %if.then.i151
  call void @__sanitizer_cov_trace_pc() #10
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %67, i32 0, i32 6
  %add.ptr.i.i.i = getelementptr i8, ptr %data.i.i.i, i32 %72
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %74
  %75 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %spec.select, ptr %add.ptr.i.i, align 1
  br label %if.end.i152

if.end.i152:                                      ; preds = %if.then8.i, %if.then.i151.if.end.i152_crit_edge
  %76 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %used.i, align 4
  %inc.i = add i32 %77, 1
  store i32 %inc.i, ptr %used.i, align 4
  %data.i.i = getelementptr inbounds %struct.tty_buffer, ptr %67, i32 0, i32 6
  %add.ptr.i1.i = getelementptr i8, ptr %data.i.i, i32 %77
  %78 = ptrtoint ptr %add.ptr.i1.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %ch.1, ptr %add.ptr.i1.i, align 1
  br label %if.end69

if.end12.i:                                       ; preds = %land.lhs.true.i150.if.end12.i_crit_edge, %if.then67.if.end12.i_crit_edge
  %call13.i = tail call i32 @__tty_insert_flip_char(ptr noundef %1, i8 noundef zeroext %ch.1, i8 noundef zeroext %spec.select) #8
  br label %if.end69

if.end69:                                         ; preds = %if.end12.i, %if.end.i152, %if.end52.if.end69_crit_edge
  %and70 = and i32 %and60, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end69.if.end74_crit_edge, label %if.then72

if.end69.if.end74_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then72:                                        ; preds = %if.end69
  %79 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tail.i, align 4
  %flags.i154 = getelementptr inbounds %struct.tty_buffer, ptr %80, i32 0, i32 5
  %81 = ptrtoint ptr %flags.i154 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flags.i154, align 4
  %and.i155 = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i155)
  %tobool.not.i156 = icmp eq i32 %and.i155, 0
  br i1 %tobool.not.i156, label %land.lhs.true.i160, label %if.then72.if.end12.i171_crit_edge

if.then72.if.end12.i171_crit_edge:                ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i171

land.lhs.true.i160:                               ; preds = %if.then72
  %used.i157 = getelementptr inbounds %struct.tty_buffer, ptr %80, i32 0, i32 1
  %83 = ptrtoint ptr %used.i157 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %used.i157, align 4
  %size.i158 = getelementptr inbounds %struct.tty_buffer, ptr %80, i32 0, i32 2
  %85 = ptrtoint ptr %size.i158 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %size.i158, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %86)
  %cmp3.i159 = icmp slt i32 %84, %86
  br i1 %cmp3.i159, label %if.end.i169, label %land.lhs.true.i160.if.end12.i171_crit_edge

land.lhs.true.i160.if.end12.i171_crit_edge:       ; preds = %land.lhs.true.i160
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i171

if.end.i169:                                      ; preds = %land.lhs.true.i160
  call void @__sanitizer_cov_trace_pc() #10
  %data.i.i.i162 = getelementptr inbounds %struct.tty_buffer, ptr %80, i32 0, i32 6
  %add.ptr.i.i.i163 = getelementptr i8, ptr %data.i.i.i162, i32 %84
  %add.ptr.i.i164 = getelementptr i8, ptr %add.ptr.i.i.i163, i32 %86
  %87 = ptrtoint ptr %add.ptr.i.i164 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %add.ptr.i.i164, align 1
  %88 = ptrtoint ptr %used.i157 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %used.i157, align 4
  %inc.i166 = add i32 %89, 1
  store i32 %inc.i166, ptr %used.i157, align 4
  %add.ptr.i1.i168 = getelementptr i8, ptr %data.i.i.i162, i32 %89
  %90 = ptrtoint ptr %add.ptr.i1.i168 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %add.ptr.i1.i168, align 1
  br label %if.end74

if.end12.i171:                                    ; preds = %land.lhs.true.i160.if.end12.i171_crit_edge, %if.then72.if.end12.i171_crit_edge
  %call13.i170 = tail call i32 @__tty_insert_flip_char(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 1) #8
  br label %if.end74

if.end74:                                         ; preds = %if.end12.i171, %if.end.i169, %if.end69.if.end74_crit_edge
  %and75 = and i32 %and60, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end74.if.end79_crit_edge, label %if.then77

if.end74.if.end79_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.then77:                                        ; preds = %if.end74
  %91 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %tail.i, align 4
  %flags.i174 = getelementptr inbounds %struct.tty_buffer, ptr %92, i32 0, i32 5
  %93 = ptrtoint ptr %flags.i174 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %flags.i174, align 4
  %and.i175 = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i175)
  %tobool.not.i176 = icmp eq i32 %and.i175, 0
  br i1 %tobool.not.i176, label %land.lhs.true.i180, label %if.then77.if.end12.i191_crit_edge

if.then77.if.end12.i191_crit_edge:                ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i191

land.lhs.true.i180:                               ; preds = %if.then77
  %used.i177 = getelementptr inbounds %struct.tty_buffer, ptr %92, i32 0, i32 1
  %95 = ptrtoint ptr %used.i177 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %used.i177, align 4
  %size.i178 = getelementptr inbounds %struct.tty_buffer, ptr %92, i32 0, i32 2
  %97 = ptrtoint ptr %size.i178 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %size.i178, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %98)
  %cmp3.i179 = icmp slt i32 %96, %98
  br i1 %cmp3.i179, label %if.end.i189, label %land.lhs.true.i180.if.end12.i191_crit_edge

land.lhs.true.i180.if.end12.i191_crit_edge:       ; preds = %land.lhs.true.i180
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i191

if.end.i189:                                      ; preds = %land.lhs.true.i180
  call void @__sanitizer_cov_trace_pc() #10
  %data.i.i.i182 = getelementptr inbounds %struct.tty_buffer, ptr %92, i32 0, i32 6
  %add.ptr.i.i.i183 = getelementptr i8, ptr %data.i.i.i182, i32 %96
  %add.ptr.i.i184 = getelementptr i8, ptr %add.ptr.i.i.i183, i32 %98
  %99 = ptrtoint ptr %add.ptr.i.i184 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 2, ptr %add.ptr.i.i184, align 1
  %100 = ptrtoint ptr %used.i177 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %used.i177, align 4
  %inc.i186 = add i32 %101, 1
  store i32 %inc.i186, ptr %used.i177, align 4
  %add.ptr.i1.i188 = getelementptr i8, ptr %data.i.i.i182, i32 %101
  %102 = ptrtoint ptr %add.ptr.i1.i188 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %add.ptr.i1.i188, align 1
  br label %if.end79

if.end12.i191:                                    ; preds = %land.lhs.true.i180.if.end12.i191_crit_edge, %if.then77.if.end12.i191_crit_edge
  %call13.i190 = tail call i32 @__tty_insert_flip_char(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 2) #8
  br label %if.end79

if.end79:                                         ; preds = %if.end12.i191, %if.end.i189, %if.end74.if.end79_crit_edge
  %and80 = and i32 %and60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end79.ignore_char_crit_edge, label %if.then82

if.end79.ignore_char_crit_edge:                   ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %ignore_char

if.then82:                                        ; preds = %if.end79
  %103 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %tail.i, align 4
  %flags.i194 = getelementptr inbounds %struct.tty_buffer, ptr %104, i32 0, i32 5
  %105 = ptrtoint ptr %flags.i194 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %flags.i194, align 4
  %and.i195 = and i32 %106, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i195)
  %tobool.not.i196 = icmp eq i32 %and.i195, 0
  br i1 %tobool.not.i196, label %land.lhs.true.i200, label %if.then82.if.end12.i211_crit_edge

if.then82.if.end12.i211_crit_edge:                ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i211

land.lhs.true.i200:                               ; preds = %if.then82
  %used.i197 = getelementptr inbounds %struct.tty_buffer, ptr %104, i32 0, i32 1
  %107 = ptrtoint ptr %used.i197 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %used.i197, align 4
  %size.i198 = getelementptr inbounds %struct.tty_buffer, ptr %104, i32 0, i32 2
  %109 = ptrtoint ptr %size.i198 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %size.i198, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %110)
  %cmp3.i199 = icmp slt i32 %108, %110
  br i1 %cmp3.i199, label %if.end.i209, label %land.lhs.true.i200.if.end12.i211_crit_edge

land.lhs.true.i200.if.end12.i211_crit_edge:       ; preds = %land.lhs.true.i200
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i211

if.end.i209:                                      ; preds = %land.lhs.true.i200
  call void @__sanitizer_cov_trace_pc() #10
  %data.i.i.i202 = getelementptr inbounds %struct.tty_buffer, ptr %104, i32 0, i32 6
  %add.ptr.i.i.i203 = getelementptr i8, ptr %data.i.i.i202, i32 %108
  %add.ptr.i.i204 = getelementptr i8, ptr %add.ptr.i.i.i203, i32 %110
  %111 = ptrtoint ptr %add.ptr.i.i204 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 4, ptr %add.ptr.i.i204, align 1
  %112 = ptrtoint ptr %used.i197 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %used.i197, align 4
  %inc.i206 = add i32 %113, 1
  store i32 %inc.i206, ptr %used.i197, align 4
  %add.ptr.i1.i208 = getelementptr i8, ptr %data.i.i.i202, i32 %113
  %114 = ptrtoint ptr %add.ptr.i1.i208 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %add.ptr.i1.i208, align 1
  br label %ignore_char

if.end12.i211:                                    ; preds = %land.lhs.true.i200.if.end12.i211_crit_edge, %if.then82.if.end12.i211_crit_edge
  %call13.i210 = tail call i32 @__tty_insert_flip_char(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 4) #8
  br label %ignore_char

ignore_char:                                      ; preds = %if.end12.i211, %if.end.i209, %if.end79.ignore_char_crit_edge, %uart_handle_sysrq_char.exit, %if.end7.i.ignore_char_crit_edge, %uart_handle_break.exit
  %flag.3 = phi i8 [ %flag.1, %uart_handle_break.exit ], [ %flag.1, %uart_handle_sysrq_char.exit ], [ %spec.select, %if.end79.ignore_char_crit_edge ], [ %spec.select, %if.end.i209 ], [ %spec.select, %if.end12.i211 ], [ %flag.1, %if.end7.i.ignore_char_crit_edge ]
  %115 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %membase, align 4
  %add.ptr88 = getelementptr i8, ptr %116, i32 12
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr88) #8, !srcloc !84
  %118 = tail call i32 @llvm.bswap.i32(i32 %117)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  %119 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %private_data.i, align 4
  %data93 = getelementptr inbounds %struct.mvebu_uart, ptr %120, i32 0, i32 3
  %121 = ptrtoint ptr %data93 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %data93, align 4
  %stat_rx_rdy95 = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %122, i32 0, i32 2, i32 3
  %123 = ptrtoint ptr %stat_rx_rdy95 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %stat_rx_rdy95, align 4
  %or = or i32 %124, 8
  %and96 = and i32 %or, %118
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %do.end, label %ignore_char.do.body_crit_edge

ignore_char.do.body_crit_edge:                    ; preds = %ignore_char
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %ignore_char
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @tty_flip_buffer_push(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mvebu_uart_tx_chars(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %xmit1 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2
  %x_char = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 24
  %2 = ptrtoint ptr %x_char to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %x_char, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %x_char to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %x_char, align 4
  %conv = zext i8 %5 to i32
  %6 = shl nuw i32 %conv, 24
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %7 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase, align 4
  %private_data.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %9 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data.i, align 4
  %data = getelementptr inbounds %struct.mvebu_uart, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %tsh = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %12, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %tsh to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tsh, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #8, !srcloc !87
  %tx = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 5
  %15 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %tx, align 4
  %17 = ptrtoint ptr %x_char to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %x_char, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %head = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp = icmp eq i32 %19, %21
  br i1 %cmp, label %if.end.if.then7_crit_edge, label %lor.lhs.false

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.end
  %tty2.i = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %tty2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tty2.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %lor.lhs.false.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i

lor.lhs.false.uart_tx_stopped.exit_crit_edge:     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %uart_tx_stopped.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false
  %stopped.i = getelementptr inbounds %struct.tty_struct, ptr %23, i32 0, i32 19, i32 1
  %24 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %stopped.i, align 4, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool3.not.i = icmp eq i8 %25, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i.if.then7_crit_edge

land.lhs.true.i.if.then7_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

land.lhs.true.i.uart_tx_stopped.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uart_tx_stopped.exit

uart_tx_stopped.exit:                             ; preds = %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, %lor.lhs.false.uart_tx_stopped.exit_crit_edge
  %hw_stopped.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 35
  %26 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hw_stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool4.not.i.not = icmp eq i32 %27, 0
  br i1 %tobool4.not.i.not, label %for.cond.preheader, label %uart_tx_stopped.exit.if.then7_crit_edge

uart_tx_stopped.exit.if.then7_crit_edge:          ; preds = %uart_tx_stopped.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

for.cond.preheader:                               ; preds = %uart_tx_stopped.exit
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 23
  %28 = ptrtoint ptr %fifosize to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fifosize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp916.not = icmp eq i32 %29, 0
  br i1 %cmp916.not, label %for.cond.preheader.for.end_crit_edge, label %do.body11.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.body11.lr.ph:                                  ; preds = %for.cond.preheader
  %membase16 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %private_data.i1 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %tx25 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 5
  br label %do.body11

if.then7:                                         ; preds = %uart_tx_stopped.exit.if.then7_crit_edge, %land.lhs.true.i.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %30 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %32 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %private_data.i.i, align 4
  %data.i = getelementptr inbounds %struct.mvebu_uart, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i, align 4
  %intr.i = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %35, i32 0, i32 1, i32 3
  %36 = ptrtoint ptr %intr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %intr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %31, i32 %37
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !84
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  %40 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %private_data.i.i, align 4
  %data4.i = getelementptr inbounds %struct.mvebu_uart, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %data4.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data4.i, align 4
  %flags.i = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags.i, align 4
  %neg.i = xor i32 %45, -1
  %and.i = and i32 %39, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %46 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  %47 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %membase.i, align 4
  %49 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %private_data.i.i, align 4
  %data7.i = getelementptr inbounds %struct.mvebu_uart, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %data7.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data7.i, align 4
  %intr9.i = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %52, i32 0, i32 1, i32 3
  %53 = ptrtoint ptr %intr9.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %intr9.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %48, i32 %54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %46) #8, !srcloc !87
  br label %cleanup

for.cond:                                         ; preds = %if.end32
  %inc41 = add nuw i32 %count.017, 1
  %55 = ptrtoint ptr %fifosize to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fifosize, align 4
  %cmp9 = icmp ult i32 %inc41, %56
  br i1 %cmp9, label %for.cond.do.body11_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.do.body11_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body11

do.body11:                                        ; preds = %for.cond.do.body11_crit_edge, %do.body11.lr.ph
  %count.017 = phi i32 [ 0, %do.body11.lr.ph ], [ %inc41, %for.cond.do.body11_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  tail call void @arm_heavy_mb() #8
  %57 = ptrtoint ptr %xmit1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %xmit1, align 4
  %59 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tail, align 4
  %arrayidx = getelementptr i8, ptr %58, i32 %60
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx, align 1
  %conv15 = zext i8 %62 to i32
  %63 = shl nuw i32 %conv15, 24
  %64 = ptrtoint ptr %membase16 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %membase16, align 4
  %66 = ptrtoint ptr %private_data.i1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %private_data.i1, align 4
  %data18 = getelementptr inbounds %struct.mvebu_uart, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %data18 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data18, align 4
  %tsh20 = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %69, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %tsh20 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tsh20, align 4
  %add.ptr21 = getelementptr i8, ptr %65, i32 %71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %63) #8, !srcloc !87
  %72 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tail, align 4
  %add = add i32 %73, 1
  %and = and i32 %add, 4095
  store i32 %and, ptr %tail, align 4
  %74 = ptrtoint ptr %tx25 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tx25, align 4
  %inc26 = add i32 %75, 1
  store i32 %inc26, ptr %tx25, align 4
  %76 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %head, align 4
  %78 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %78)
  %cmp29 = icmp eq i32 %77, %78
  br i1 %cmp29, label %do.body11.for.end_crit_edge, label %if.end32

do.body11.for.end_crit_edge:                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end32:                                         ; preds = %do.body11
  %79 = ptrtoint ptr %membase16 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %membase16, align 4
  %add.ptr34 = getelementptr i8, ptr %80, i32 12
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #8, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !143
  %82 = and i32 %81, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool38.not = icmp eq i32 %82, 0
  br i1 %tobool38.not, label %for.cond, label %if.end32.for.end_crit_edge

if.end32.for.end_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end32.for.end_crit_edge, %do.body11.for.end_crit_edge, %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %83 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %head, align 4
  %85 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tail, align 4
  %sub = sub i32 %84, %86
  %and44 = and i32 %sub, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %cmp45 = icmp eq i32 %and44, 0
  br i1 %cmp45, label %if.then47, label %for.end.if.end48_crit_edge

for.end.if.end48_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then47:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @uart_write_wakeup(ptr noundef %port) #8
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %for.end.if.end48_crit_edge
  %87 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %head, align 4
  %89 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %90)
  %cmp51 = icmp eq i32 %88, %90
  br i1 %cmp51, label %if.then53, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then53:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %membase.i2 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %91 = ptrtoint ptr %membase.i2 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %membase.i2, align 4
  %private_data.i.i3 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %93 = ptrtoint ptr %private_data.i.i3 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %private_data.i.i3, align 4
  %data.i4 = getelementptr inbounds %struct.mvebu_uart, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %data.i4 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %data.i4, align 4
  %intr.i5 = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %96, i32 0, i32 1, i32 3
  %97 = ptrtoint ptr %intr.i5 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %intr.i5, align 4
  %add.ptr.i6 = getelementptr i8, ptr %92, i32 %98
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #8, !srcloc !84
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  %101 = ptrtoint ptr %private_data.i.i3 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %private_data.i.i3, align 4
  %data4.i7 = getelementptr inbounds %struct.mvebu_uart, ptr %102, i32 0, i32 3
  %103 = ptrtoint ptr %data4.i7 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %data4.i7, align 4
  %flags.i8 = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %flags.i8 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %flags.i8, align 4
  %neg.i9 = xor i32 %106, -1
  %and.i10 = and i32 %100, %neg.i9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %107 = tail call i32 @llvm.bswap.i32(i32 %and.i10) #8
  %108 = ptrtoint ptr %membase.i2 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %membase.i2, align 4
  %110 = ptrtoint ptr %private_data.i.i3 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %private_data.i.i3, align 4
  %data7.i11 = getelementptr inbounds %struct.mvebu_uart, ptr %111, i32 0, i32 3
  %112 = ptrtoint ptr %data7.i11 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %data7.i11, align 4
  %intr9.i12 = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %113, i32 0, i32 1, i32 3
  %114 = ptrtoint ptr %intr9.i12 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %intr9.i12, align 4
  %add.ptr10.i13 = getelementptr i8, ptr %109, i32 %115
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i13, i32 %107) #8, !srcloc !87
  br label %cleanup

cleanup:                                          ; preds = %if.then53, %if.end48.cleanup_crit_edge, %if.then7, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_SAK(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_uart_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call2 = tail call i32 @uart_suspend_port(ptr noundef nonnull @mvebu_uart_driver, ptr noundef %3) #8
  %membase = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %private_data.i = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 59
  %6 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data.i, align 4
  %data = getelementptr inbounds %struct.mvebu_uart, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %regs = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %11
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !84
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %pm_regs = getelementptr inbounds %struct.mvebu_uart, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %pm_regs to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %pm_regs, align 4
  %15 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase, align 4
  %17 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private_data.i, align 4
  %data11 = getelementptr inbounds %struct.mvebu_uart, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %data11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data11, align 4
  %tsh = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %20, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %tsh to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tsh, align 4
  %add.ptr13 = getelementptr i8, ptr %16, i32 %22
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #8, !srcloc !84
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  %tsh18 = getelementptr inbounds %struct.mvebu_uart, ptr %1, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %tsh18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %tsh18, align 4
  %26 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase, align 4
  %28 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %private_data.i, align 4
  %data23 = getelementptr inbounds %struct.mvebu_uart, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %data23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data23, align 4
  %ctrl = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %31, i32 0, i32 1, i32 2
  %32 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ctrl, align 4
  %add.ptr25 = getelementptr i8, ptr %27, i32 %33
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #8, !srcloc !84
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  %ctrl30 = getelementptr inbounds %struct.mvebu_uart, ptr %1, i32 0, i32 4, i32 2
  %36 = ptrtoint ptr %ctrl30 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %ctrl30, align 4
  %37 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %membase, align 4
  %39 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %private_data.i, align 4
  %data35 = getelementptr inbounds %struct.mvebu_uart, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %data35 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data35, align 4
  %intr = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %42, i32 0, i32 1, i32 3
  %43 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %intr, align 4
  %add.ptr37 = getelementptr i8, ptr %38, i32 %44
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #8, !srcloc !84
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %intr42 = getelementptr inbounds %struct.mvebu_uart, ptr %1, i32 0, i32 4, i32 3
  %47 = ptrtoint ptr %intr42 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %intr42, align 4
  %48 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %membase, align 4
  %add.ptr46 = getelementptr i8, ptr %49, i32 12
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #8, !srcloc !84
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  %stat = getelementptr inbounds %struct.mvebu_uart, ptr %1, i32 0, i32 4, i32 4
  %52 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %stat, align 4
  %53 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %membase, align 4
  %add.ptr54 = getelementptr i8, ptr %54, i32 16
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #8, !srcloc !84
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  %brdv = getelementptr inbounds %struct.mvebu_uart, ptr %1, i32 0, i32 4, i32 5
  %57 = ptrtoint ptr %brdv to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %brdv, align 4
  %58 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %membase, align 4
  %add.ptr62 = getelementptr i8, ptr %59, i32 20
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62) #8, !srcloc !84
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  %osamp = getelementptr inbounds %struct.mvebu_uart, ptr %1, i32 0, i32 4, i32 6
  %62 = ptrtoint ptr %osamp to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %osamp, align 4
  %call67 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev, i1 noundef zeroext true) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_uart_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !151
  tail call void @arm_heavy_mb() #8
  %pm_regs = getelementptr inbounds %struct.mvebu_uart, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %pm_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pm_regs, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %membase = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase, align 4
  %private_data.i = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 59
  %9 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data.i, align 4
  %data = getelementptr inbounds %struct.mvebu_uart, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %regs = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #8, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %tsh = getelementptr inbounds %struct.mvebu_uart, ptr %1, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %tsh to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tsh, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase, align 4
  %20 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %private_data.i, align 4
  %data10 = getelementptr inbounds %struct.mvebu_uart, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %data10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data10, align 4
  %tsh12 = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %23, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %tsh12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tsh12, align 4
  %add.ptr13 = getelementptr i8, ptr %19, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %17) #8, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %ctrl = getelementptr inbounds %struct.mvebu_uart, ptr %1, i32 0, i32 4, i32 2
  %26 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ctrl, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %29 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase, align 4
  %31 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %private_data.i, align 4
  %data20 = getelementptr inbounds %struct.mvebu_uart, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %data20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data20, align 4
  %ctrl22 = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %34, i32 0, i32 1, i32 2
  %35 = ptrtoint ptr %ctrl22 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ctrl22, align 4
  %add.ptr23 = getelementptr i8, ptr %30, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %28) #8, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %intr = getelementptr inbounds %struct.mvebu_uart, ptr %1, i32 0, i32 4, i32 3
  %37 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %intr, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %40 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %membase, align 4
  %42 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %private_data.i, align 4
  %data30 = getelementptr inbounds %struct.mvebu_uart, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %data30 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data30, align 4
  %intr32 = getelementptr inbounds %struct.mvebu_uart_driver_data, ptr %45, i32 0, i32 1, i32 3
  %46 = ptrtoint ptr %intr32 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %intr32, align 4
  %add.ptr33 = getelementptr i8, ptr %41, i32 %47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %39) #8, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  tail call void @arm_heavy_mb() #8
  %stat = getelementptr inbounds %struct.mvebu_uart, ptr %1, i32 0, i32 4, i32 4
  %48 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %stat, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %51 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %membase, align 4
  %add.ptr39 = getelementptr i8, ptr %52, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %50) #8, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  tail call void @arm_heavy_mb() #8
  %brdv = getelementptr inbounds %struct.mvebu_uart, ptr %1, i32 0, i32 4, i32 5
  %53 = ptrtoint ptr %brdv to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %brdv, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  %56 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %membase, align 4
  %add.ptr45 = getelementptr i8, ptr %57, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %55) #8, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %osamp = getelementptr inbounds %struct.mvebu_uart, ptr %1, i32 0, i32 4, i32 6
  %58 = ptrtoint ptr %osamp to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %osamp, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  %61 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %membase, align 4
  %add.ptr51 = getelementptr i8, ptr %62, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %60) #8, !srcloc !87
  %call52 = tail call i32 @uart_resume_port(ptr noundef nonnull @mvebu_uart_driver, ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_suspend_port(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_resume_port(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !35, !37, !39, !40, !41, !43, !44, !46, !47, !48, !50, !52, !54, !56, !58, !59, !60, !61, !63, !64, !66, !67, !69, !71, !73}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__UNIQUE_ID___earlycon_ar3700_uart227, !1, !"__UNIQUE_ID___earlycon_ar3700_uart227", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/mvebu-uart.c", i32 642, i32 1}
!2 = !{ptr @__UNIQUE_ID___earlycon_ar3700_uart228, !3, !"__UNIQUE_ID___earlycon_ar3700_uart228", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/mvebu-uart.c", i32 643, i32 1}
!4 = !{ptr @__initcall__kmod_mvebu_uart__230_745_mvebu_uart_console_initcon, !5, !"__initcall__kmod_mvebu_uart__230_745_mvebu_uart_console_initcon", i1 false, i1 false}
!5 = !{!"../drivers/tty/serial/mvebu-uart.c", i32 745, i32 1}
!6 = !{ptr @__initcall__kmod_mvebu_uart__231_989_mvebu_uart_init3, !7, !"__initcall__kmod_mvebu_uart__231_989_mvebu_uart_init3", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/mvebu-uart.c", i32 989, i32 1}
!8 = !{ptr @mvebu_uart_console, !9, !"mvebu_uart_console", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/mvebu-uart.c", i32 729, i32 23}
!10 = !{ptr @mvebu_uart_ports, !11, !"mvebu_uart_ports", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/mvebu-uart.c", i32 154, i32 25}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/mvebu-uart.c", i32 717, i32 3}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @mvebu_uart_console_setup.__UNIQUE_ID_ddebug229, !13, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/tty/serial/mvebu-uart.c", i32 752, i32 18}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/tty/serial/mvebu-uart.c", i32 753, i32 15}
!22 = !{ptr @mvebu_uart_driver, !23, !"mvebu_uart_driver", i1 false, i1 false}
!23 = !{!"../drivers/tty/serial/mvebu-uart.c", i32 750, i32 27}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/tty/serial/mvebu-uart.c", i32 966, i32 12}
!26 = !{ptr @mvebu_uart_platform_driver, !27, !"mvebu_uart_platform_driver", i1 false, i1 false}
!27 = !{!"../drivers/tty/serial/mvebu-uart.c", i32 963, i32 31}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/tty/serial/mvebu-uart.c", i32 820, i32 3}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @mvebu_uart_probe._entry, !29, !"_entry", i1 false, i1 false}
!34 = !{ptr @mvebu_uart_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/tty/serial/mvebu-uart.c", i32 825, i32 42}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/tty/serial/mvebu-uart.c", i32 832, i32 3}
!39 = !{ptr @mvebu_uart_probe._entry.12, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @mvebu_uart_probe._entry_ptr.14, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @mvebu_uart_probe.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/tty/serial/mvebu-uart.c", i32 839, i32 2}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/tty/serial/mvebu-uart.c", i32 883, i32 4}
!46 = !{ptr @mvebu_uart_probe._entry.16, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @mvebu_uart_probe._entry_ptr.18, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/tty/serial/mvebu-uart.c", i32 905, i32 39}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/tty/serial/mvebu-uart.c", i32 911, i32 39}
!52 = !{ptr @uart_num_counter, !53, !"uart_num_counter", i1 false, i1 false}
!53 = !{!"../drivers/tty/serial/mvebu-uart.c", i32 808, i32 12}
!54 = !{ptr @mvebu_uart_ops, !55, !"mvebu_uart_ops", i1 false, i1 false}
!55 = !{!"../drivers/tty/serial/mvebu-uart.c", i32 577, i32 30}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/tty/serial/mvebu-uart.c", i32 400, i32 4}
!58 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @mvebu_uart_startup._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @mvebu_uart_startup._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @mvebu_uart_startup._entry.23, !62, !"_entry", i1 false, i1 false}
!62 = !{!"../drivers/tty/serial/mvebu-uart.c", i32 410, i32 4}
!63 = !{ptr @mvebu_uart_startup._entry_ptr.24, !62, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @mvebu_uart_startup._entry.25, !65, !"_entry", i1 false, i1 false}
!65 = !{!"../drivers/tty/serial/mvebu-uart.c", i32 420, i32 4}
!66 = !{ptr @mvebu_uart_startup._entry_ptr.26, !65, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @mvebu_uart_of_match, !68, !"mvebu_uart_of_match", i1 false, i1 false}
!68 = !{!"../drivers/tty/serial/mvebu-uart.c", i32 951, i32 34}
!69 = !{ptr @uart_std_driver_data, !70, !"uart_std_driver_data", i1 false, i1 false}
!70 = !{!"../drivers/tty/serial/mvebu-uart.c", i32 926, i32 38}
!71 = !{ptr @uart_ext_driver_data, !72, !"uart_ext_driver_data", i1 false, i1 false}
!72 = !{!"../drivers/tty/serial/mvebu-uart.c", i32 938, i32 38}
!73 = !{ptr @mvebu_uart_pm_ops, !74, !"mvebu_uart_pm_ops", i1 false, i1 false}
!74 = !{!"../drivers/tty/serial/mvebu-uart.c", i32 799, i32 32}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i64 4841265}
!85 = !{i64 2154255160}
!86 = !{i64 2154255464}
!87 = !{i64 4840847}
!88 = !{i64 2154256139}
!89 = !{i64 656010, i64 656071}
!90 = !{i64 658742}
!91 = !{!"branch_weights", i32 1, i32 2000}
!92 = !{i64 659027}
!93 = !{i64 2154272070}
!94 = !{i64 2154273146}
!95 = !{i64 2154273537}
!96 = !{i64 2154274028}
!97 = !{i64 2154267665}
!98 = !{i64 2154268163}
!99 = !{i64 2154274521}
!100 = !{i64 2154275397}
!101 = !{i64 2154275686}
!102 = !{i64 2148745344, i64 2148745349, i64 2148745362, i64 2148745406, i64 2148745440, i64 2148745461}
!103 = !{i64 2154264481}
!104 = !{i64 2154264979}
!105 = !{i64 2154269043}
!106 = !{i8 0, i8 2}
!107 = !{i64 2154294785}
!108 = !{i64 2154295893}
!109 = !{i64 2154222765}
!110 = !{i64 2154223536}
!111 = !{i64 2154223877}
!112 = !{i64 2154224470}
!113 = !{i64 2154225469}
!114 = !{i64 2154225810}
!115 = !{i64 2154226686}
!116 = !{i64 2154227385}
!117 = !{i64 2154228261}
!118 = !{i64 2154228602}
!119 = !{i64 2154229832}
!120 = !{i64 2154230289}
!121 = !{i64 2154237655}
!122 = !{i64 2154239072}
!123 = !{i64 2154239689}
!124 = !{i64 2154240684}
!125 = !{i64 2154241914}
!126 = !{i64 2154242255}
!127 = !{i64 2154247749}
!128 = !{i64 2154248821}
!129 = !{i64 2154249050}
!130 = !{i64 2154249734}
!131 = !{i64 2154249969}
!132 = !{i64 2154253549}
!133 = !{i64 2154254454}
!134 = !{i64 2154252326}
!135 = !{i64 2154253046}
!136 = !{i64 2154235452}
!137 = !{i64 2154236297}
!138 = !{i64 2154237094}
!139 = !{i64 2154231208}
!140 = !{i64 2154232719}
!141 = !{i64 2154233145}
!142 = !{i64 2154233727}
!143 = !{i64 2154234604}
!144 = !{i64 2154281775}
!145 = !{i64 2154282436}
!146 = !{i64 2154283102}
!147 = !{i64 2154283768}
!148 = !{i64 2154284271}
!149 = !{i64 2154284774}
!150 = !{i64 2154285277}
!151 = !{i64 2154285580}
!152 = !{i64 2154286140}
!153 = !{i64 2154286703}
!154 = !{i64 2154287270}
!155 = !{i64 2154287770}
!156 = !{i64 2154288238}
!157 = !{i64 2154288707}
