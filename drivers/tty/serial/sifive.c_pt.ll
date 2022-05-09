; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/sifive.c_pt.bc'
source_filename = "../drivers/tty/serial/sifive.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.sifive_serial_port = type { %struct.uart_port, ptr, i8, i32, i32, ptr, %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.clk_notifier_data = type { ptr, i32, i32 }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.35, %struct.anon.36, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.35 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.36 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }

@__UNIQUE_ID___earlycon_sifive227 = internal constant %struct.earlycon_id { [15 x i8] c"sifive\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"sifive,uart0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @early_sifive_serial_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_sifive228 = internal constant %struct.earlycon_id { [15 x i8] c"sifive\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"sifive,fu540-c000-uart0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @early_sifive_serial_setup }, section "__earlycon_table", align 4
@__initcall__kmod_sifive__229_881_sifive_console_initcon = internal global ptr @sifive_console_init, section ".con_initcall.init", align 4
@sifive_serial_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sifive_serial_probe, ptr @sifive_serial_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sifive_serial_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@sifive_serial_uart_driver = internal global { %struct.uart_driver, [60 x i8] } { %struct.uart_driver { ptr null, ptr @.str, ptr @.str.36, i32 0, i32 0, i32 8, ptr @sifive_serial_console, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_sifive__230_1096_sifive_serial_init6 = internal global ptr @sifive_serial_init, section ".initcall6.init", align 4
@__exitcall_sifive_serial_exit = internal global ptr @sifive_serial_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description231 = internal constant [45 x i8] c"sifive.description=SiFive UART serial driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [38 x i8] c"sifive.file=drivers/tty/serial/sifive\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [19 x i8] c"sifive.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author234 = internal constant [45 x i8] c"sifive.author=Paul Walmsley <paul@pwsan.com>\00", section ".modinfo", align 1
@sifive_serial_console = internal global { %struct.console, [60 x i8] } { %struct.console { [16 x i8] c"ttySIF\00\00\00\00\00\00\00\00\00\00", ptr @sifive_serial_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @sifive_serial_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @sifive_serial_uart_driver, ptr null }, [60 x i8] zeroinitializer }, align 32
@sifive_serial_console_ports = internal global { [8 x ptr], [32 x i8] } zeroinitializer, align 32
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sifive-serial\00", [18 x i8] zeroinitializer }, align 32
@sifive_serial_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sifive,fu540-c000-uart0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sifive,uart0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@sifive_serial_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 951, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not acquire device memory\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sifive_serial_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/tty/serial/sifive.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sifive_serial_probe._entry_ptr = internal global ptr @sifive_serial_probe._entry, section ".printk_index", align 4
@sifive_serial_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 957, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to find controller clock\0A\00", [63 x i8] zeroinitializer }, align 32
@sifive_serial_probe._entry_ptr.8 = internal global ptr @sifive_serial_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@sifive_serial_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 963, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"missing aliases entry\0A\00", [41 x i8] zeroinitializer }, align 32
@sifive_serial_probe._entry_ptr.12 = internal global ptr @sifive_serial_probe._entry.10, section ".printk_index", align 4
@sifive_serial_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 969, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"too many UARTs (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@sifive_serial_probe._entry_ptr.15 = internal global ptr @sifive_serial_probe._entry.13, section ".printk_index", align 4
@sifive_serial_uops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @sifive_serial_tx_empty, ptr @sifive_serial_set_mctrl, ptr @sifive_serial_get_mctrl, ptr @sifive_serial_stop_tx, ptr @sifive_serial_start_tx, ptr null, ptr null, ptr null, ptr @sifive_serial_stop_rx, ptr null, ptr @sifive_serial_break_ctl, ptr @sifive_serial_startup, ptr @sifive_serial_shutdown, ptr null, ptr @sifive_serial_set_termios, ptr null, ptr null, ptr @sifive_serial_type, ptr @sifive_serial_release_port, ptr @sifive_serial_request_port, ptr @sifive_serial_config_port, ptr @sifive_serial_verify_port, ptr null, ptr null, ptr @sifive_serial_poll_put_char, ptr @sifive_serial_poll_get_char }, [56 x i8] zeroinitializer }, align 32
@sifive_serial_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 994, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"could not register clock notifier: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@sifive_serial_probe._entry_ptr.18 = internal global ptr @sifive_serial_probe._entry.16, section ".printk_index", align 4
@sifive_serial_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 1019, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"could not attach interrupt: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@sifive_serial_probe._entry_ptr.21 = internal global ptr @sifive_serial_probe._entry.19, section ".printk_index", align 4
@sifive_serial_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 1027, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"could not add uart: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@sifive_serial_probe._entry_ptr.24 = internal global ptr @sifive_serial_probe._entry.22, section ".printk_index", align 4
@sifive_serial_set_termios.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@sifive_serial_set_termios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 670, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"only 8-bit words supported\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sifive_serial_set_termios\00", [38 x i8] zeroinitializer }, align 32
@sifive_serial_set_termios._entry_ptr = internal global ptr @sifive_serial_set_termios._entry, section ".printk_index", align 4
@sifive_serial_set_termios.__print_once.27 = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@sifive_serial_set_termios._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.26, ptr @.str.3, i32 672, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"parity checking not supported\0A\00", [33 x i8] zeroinitializer }, align 32
@sifive_serial_set_termios._entry_ptr.30 = internal global ptr @sifive_serial_set_termios._entry.28, section ".printk_index", align 4
@sifive_serial_set_termios.__print_once.31 = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@sifive_serial_set_termios._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.26, ptr @.str.3, i32 674, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"BREAK detection not supported\0A\00", [33 x i8] zeroinitializer }, align 32
@sifive_serial_set_termios._entry_ptr.34 = internal global ptr @sifive_serial_set_termios._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SiFive UART v0\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ttySIF\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.37 = private unnamed_addr constant [30 x i8] c"sifive_serial_platform_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1061, i32 31 }
@___asan_gen_.40 = private unnamed_addr constant [26 x i8] c"sifive_serial_uart_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 928, i32 27 }
@___asan_gen_.43 = private unnamed_addr constant [22 x i8] c"sifive_serial_console\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 865, i32 23 }
@___asan_gen_.46 = private unnamed_addr constant [28 x i8] c"sifive_serial_console_ports\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 801, i32 35 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1065, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant [23 x i8] c"sifive_serial_of_match\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1054, i32 34 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 951, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 957, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 961, i32 42 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 963, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 969, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [19 x i8] c"sifive_serial_uops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 906, i32 30 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 993, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1019, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1027, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 670, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 672, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 674, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 728, i32 40 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.140 = private constant [31 x i8] c"../drivers/tty/serial/sifive.c\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 931, i32 14 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID___earlycon_sifive227, ptr @__UNIQUE_ID___earlycon_sifive228, ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_sifive_serial_exit, ptr @__initcall__kmod_sifive__229_881_sifive_console_initcon, ptr @__initcall__kmod_sifive__230_1096_sifive_serial_init6, ptr @sifive_serial_exit, ptr @sifive_serial_probe._entry, ptr @sifive_serial_probe._entry.10, ptr @sifive_serial_probe._entry.13, ptr @sifive_serial_probe._entry.16, ptr @sifive_serial_probe._entry.19, ptr @sifive_serial_probe._entry.22, ptr @sifive_serial_probe._entry.6, ptr @sifive_serial_probe._entry_ptr, ptr @sifive_serial_probe._entry_ptr.12, ptr @sifive_serial_probe._entry_ptr.15, ptr @sifive_serial_probe._entry_ptr.18, ptr @sifive_serial_probe._entry_ptr.21, ptr @sifive_serial_probe._entry_ptr.24, ptr @sifive_serial_probe._entry_ptr.8, ptr @sifive_serial_set_termios._entry, ptr @sifive_serial_set_termios._entry.28, ptr @sifive_serial_set_termios._entry.32, ptr @sifive_serial_set_termios._entry_ptr, ptr @sifive_serial_set_termios._entry_ptr.30, ptr @sifive_serial_set_termios._entry_ptr.34, ptr @sifive_serial_platform_driver, ptr @sifive_serial_uart_driver, ptr @sifive_serial_console, ptr @sifive_serial_console_ports, ptr @.str, ptr @sifive_serial_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @sifive_serial_uops, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.29, ptr @.str.33, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sifive_serial_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sifive_serial_uart_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sifive_serial_console to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sifive_serial_console_ports to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sifive_serial_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sifive_serial_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sifive_serial_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sifive_serial_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sifive_serial_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sifive_serial_uops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sifive_serial_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sifive_serial_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sifive_serial_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sifive_serial_set_termios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sifive_serial_set_termios._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sifive_serial_set_termios._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @early_sifive_serial_setup(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %options) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.earlycon_device, ptr %dev, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %write = getelementptr inbounds %struct.console, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @early_sifive_serial_write, ptr %write, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sifive_console_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @register_console(ptr noundef nonnull @sifive_serial_console) #10
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sifive_serial_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @sifive_serial_platform_driver) #10
  tail call void @uart_unregister_driver(ptr noundef nonnull @sifive_serial_uart_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sifive_serial_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @uart_register_driver(ptr noundef nonnull @sifive_serial_uart_driver) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sifive_serial_platform_driver, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %init_out2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

init_out2:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @uart_unregister_driver(ptr noundef nonnull @sifive_serial_uart_driver) #10
  br label %cleanup

cleanup:                                          ; preds = %init_out2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %init_out2 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @early_sifive_serial_write(ptr nocapture noundef readonly %con, ptr noundef %s, i32 noundef %n) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.console, ptr %con, i32 0, i32 13
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %port1 = getelementptr inbounds %struct.earlycon_device, ptr %1, i32 0, i32 1
  tail call void @uart_console_write(ptr noundef %port1, ptr noundef %s, i32 noundef %n, ptr noundef nonnull @early_sifive_serial_putc) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @early_sifive_serial_putc(ptr nocapture noundef readonly %port, i32 noundef %c) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #10, !srcloc !94
  %.mask7 = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask7)
  %tobool.not8 = icmp eq i32 %.mask7, 0
  br i1 %tobool.not8, label %entry.while.end_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !96
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #10, !srcloc !94
  %.mask = and i32 %5, 128
  %tobool.not = icmp eq i32 %.mask, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  %6 = tail call i32 @llvm.bswap.i32(i32 %c) #10
  %7 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #10, !srcloc !97
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_console(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sifive_serial_console_write(ptr nocapture noundef readonly %co, ptr noundef %s, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index, align 2
  %idxprom = sext i16 %1 to i32
  %arrayidx = getelementptr [8 x ptr], ptr @sifive_serial_console_ports, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body1:                                         ; preds = %entry
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !98
  %and.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not = icmp eq i32 %and.i, 0
  br i1 %tobool10.not, label %if.then11, label %do.body1.do.end14_crit_edge

do.body1.do.end14_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

if.then11:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body1.do.end14_crit_edge
  %sysrq = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 46
  %5 = ptrtoint ptr %sysrq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sysrq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool15.not = icmp eq i32 %6, 0
  br i1 %tobool15.not, label %if.else, label %do.body33.critedge

if.else:                                          ; preds = %do.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %7 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool17.not = icmp eq i32 %7, 0
  br i1 %tobool17.not, label %if.else21, label %if.then18

if.then18:                                        ; preds = %if.else
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef nonnull %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %phi.cmp = icmp eq i32 %call.i, 0
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !94
  %11 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i79 = getelementptr i8, ptr %12, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i79, i32 0) #10, !srcloc !97
  tail call void @uart_console_write(ptr noundef nonnull %3, ptr noundef %s, i32 noundef %count, ptr noundef nonnull @sifive_serial_console_putchar) #10
  %13 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i81 = getelementptr i8, ptr %14, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i81, i32 %10) #10, !srcloc !97
  br i1 %phi.cmp, label %if.then18.do.body33_crit_edge, label %if.then18.if.then29_crit_edge

if.then18.if.then29_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

if.then18.do.body33_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body33

if.else21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_lock(ptr noundef nonnull %3) #10
  %membase.i.i82 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %15 = ptrtoint ptr %membase.i.i82 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i.i82, align 4
  %add.ptr.i.i83 = getelementptr i8, ptr %16, i32 16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i83) #10, !srcloc !94
  %18 = ptrtoint ptr %membase.i.i82 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i.i82, align 4
  %add.ptr.i.i85 = getelementptr i8, ptr %19, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i85, i32 0) #10, !srcloc !97
  tail call void @uart_console_write(ptr noundef nonnull %3, ptr noundef %s, i32 noundef %count, ptr noundef nonnull @sifive_serial_console_putchar) #10
  %20 = ptrtoint ptr %membase.i.i82 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase.i.i82, align 4
  %add.ptr.i.i87 = getelementptr i8, ptr %21, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i87, i32 %17) #10, !srcloc !97
  br label %if.then29

if.then29:                                        ; preds = %if.else21, %if.then18.if.then29_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull %3) #10
  br label %do.body33

do.body33.critedge:                               ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #12
  %membase.i.i88 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %22 = ptrtoint ptr %membase.i.i88 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i.i88, align 4
  %add.ptr.i.i89 = getelementptr i8, ptr %23, i32 16
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i89) #10, !srcloc !94
  %25 = ptrtoint ptr %membase.i.i88 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase.i.i88, align 4
  %add.ptr.i.i91 = getelementptr i8, ptr %26, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i91, i32 0) #10, !srcloc !97
  tail call void @uart_console_write(ptr noundef nonnull %3, ptr noundef %s, i32 noundef %count, ptr noundef nonnull @sifive_serial_console_putchar) #10
  %27 = ptrtoint ptr %membase.i.i88 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase.i.i88, align 4
  %add.ptr.i.i93 = getelementptr i8, ptr %28, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i93, i32 %24) #10, !srcloc !97
  br label %do.body33

do.body33:                                        ; preds = %do.body33.critedge, %if.then29, %if.then18.do.body33_crit_edge
  br i1 %tobool10.not, label %if.then42, label %do.body33.do.body44_crit_edge

do.body33.do.body44_crit_edge:                    ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body44

if.then42:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_on() #10
  br label %do.body44

do.body44:                                        ; preds = %if.then42, %do.body33.do.body44_crit_edge
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !99
  %and.i.i = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool52.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool52.not, label %if.then56, label %do.body44.do.end59_crit_edge, !prof !100

do.body44.do.end59_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end59

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end59

do.end59:                                         ; preds = %if.then56, %do.body44.do.end59_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #10, !srcloc !101
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sifive_serial_console_setup(ptr noundef %co, ptr noundef %options) #1 section ".init.text" align 64 {
entry:
  %baud = alloca i32, align 4
  %bits = alloca i32, align 4
  %parity = alloca i32, align 4
  %flow = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %baud) #10
  %0 = ptrtoint ptr %baud to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 115200, ptr %baud, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits) #10
  %1 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8, ptr %bits, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parity) #10
  %2 = ptrtoint ptr %parity to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 110, ptr %parity, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flow) #10
  %3 = ptrtoint ptr %flow to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 110, ptr %flow, align 4
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %index, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %5)
  %6 = icmp ugt i16 %5, 7
  br i1 %6, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv21 = zext i16 %5 to i32
  %arrayidx = getelementptr [8 x ptr], ptr @sifive_serial_console_ports, i32 0, i32 %conv21
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %tobool9.not = icmp eq ptr %options, null
  br i1 %tobool9.not, label %if.end8.if.end11_crit_edge, label %if.then10

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  call void @uart_parse_options(ptr noundef nonnull %options, ptr noundef nonnull %baud, ptr noundef nonnull %parity, ptr noundef nonnull %bits, ptr noundef nonnull %flow) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8.if.end11_crit_edge
  %9 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %baud, align 4
  %11 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %parity, align 4
  %13 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bits, align 4
  %15 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flow, align 4
  %call = call i32 @uart_set_options(ptr noundef nonnull %8, ptr noundef %co, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end11 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flow) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parity) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %baud) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sifive_serial_console_putchar(ptr nocapture noundef readonly %port, i32 noundef %ch) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i.i.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i.i.i.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #10, !srcloc !94
  %.mask1.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask1.i)
  %tobool.not2.i = icmp eq i32 %.mask1.i, 0
  br i1 %tobool.not2.i, label %entry.__ssp_wait_for_xmitr.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.__ssp_wait_for_xmitr.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ssp_wait_for_xmitr.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748) #10
  %4 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i.i.i.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #10, !srcloc !94
  %.mask.i = and i32 %6, 128
  %tobool.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool.not.i, label %while.body.i.__ssp_wait_for_xmitr.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.__ssp_wait_for_xmitr.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ssp_wait_for_xmitr.exit

__ssp_wait_for_xmitr.exit:                        ; preds = %while.body.i.__ssp_wait_for_xmitr.exit_crit_edge, %entry.__ssp_wait_for_xmitr.exit_crit_edge
  %7 = tail call i32 @llvm.bswap.i32(i32 %ch) #10
  %8 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #10, !srcloc !97
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sifive_serial_probe(ptr noundef %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call2 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call1) #10
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #13
  %0 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call9 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #10
  %cmp.i165 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i165, label %do.end14, label %if.end17

do.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #13
  %1 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end7
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call19 = tail call i32 @of_alias_get_id(ptr noundef %3, ptr noundef nonnull @.str.9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end24, label %if.end26

do.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #13
  br label %cleanup

if.end26:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call19)
  %cmp27 = icmp ugt i32 %call19, 8
  br i1 %cmp27, label %do.end31, label %if.end33

do.end31:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call19) #13
  br label %cleanup

if.end33:                                         ; preds = %if.end26
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 392, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end33.cleanup_crit_edge, label %if.end37

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  %dev39 = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 45
  %4 = ptrtoint ptr %dev39 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %dev39, align 4
  %type = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 38
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 120, ptr %type, align 4
  %iotype = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 26
  %6 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %iotype, align 2
  %irq43 = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 20
  %7 = ptrtoint ptr %irq43 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call, ptr %irq43, align 4
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 23
  %8 = ptrtoint ptr %fifosize to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8, ptr %fifosize, align 4
  %ops = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 39
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @sifive_serial_uops, ptr %ops, align 4
  %line = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 41
  %10 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call19, ptr %line, align 4
  %11 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call1, align 4
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 43
  %13 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %mapbase, align 4
  %membase = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call2, ptr %membase, align 4
  %dev50 = getelementptr inbounds %struct.sifive_serial_port, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %dev50 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev, ptr %dev50, align 4
  %clk51 = getelementptr inbounds %struct.sifive_serial_port, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %clk51 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call9, ptr %clk51, align 4
  %clk_notifier = getelementptr inbounds %struct.sifive_serial_port, ptr %call.i, i32 0, i32 6
  %17 = ptrtoint ptr %clk_notifier to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @sifive_serial_clk_notifier, ptr %clk_notifier, align 4
  %call54 = tail call i32 @clk_notifier_register(ptr noundef %call9, ptr noundef %clk_notifier) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end61, label %do.end59

do.end59:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call54) #13
  br label %cleanup

if.end61:                                         ; preds = %if.end37
  %18 = ptrtoint ptr %clk51 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk51, align 4
  %call63 = tail call i32 @clk_get_rate(ptr noundef %19) #10
  %clkin_rate = getelementptr inbounds %struct.sifive_serial_port, ptr %call.i, i32 0, i32 3
  %20 = ptrtoint ptr %clkin_rate to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call63, ptr %clkin_rate, align 4
  %baud_rate = getelementptr inbounds %struct.sifive_serial_port, ptr %call.i, i32 0, i32 4
  %21 = ptrtoint ptr %baud_rate to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 115200, ptr %baud_rate, align 4
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 22
  %22 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1843200, ptr %uartclk, align 4
  %sub.i = add i32 %call63, 115199
  %div2.i = udiv i32 %sub.i, 115200
  %conv.i = add nuw nsw i32 %div2.i, 65535
  %conv4.i = and i32 %conv.i, 65535
  %23 = tail call i32 @llvm.bswap.i32(i32 %conv4.i) #10
  %24 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %25, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %23) #10, !srcloc !97
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %27 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase, align 4
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777472) #10, !srcloc !97
  %29 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase, align 4
  %add.ptr.i.i167 = getelementptr i8, ptr %30, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i167, i32 16777216) #10, !srcloc !97
  %31 = ptrtoint ptr %irq43 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq43, align 4
  %irqflags = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 21
  %33 = ptrtoint ptr %irqflags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irqflags, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %35 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end61.dev_name.exit_crit_edge

if.end61.dev_name.exit_crit_edge:                 ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end61.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %38, %if.end.i ], [ %36, %if.end61.dev_name.exit_crit_edge ]
  %call.i168 = tail call i32 @request_threaded_irq(i32 noundef %32, ptr noundef nonnull @sifive_serial_irq, ptr noundef null, i32 noundef %34, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168)
  %tobool72.not = icmp eq i32 %call.i168, 0
  br i1 %tobool72.not, label %if.end78, label %do.end76

do.end76:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %call.i168) #13
  br label %probe_out2

if.end78:                                         ; preds = %dev_name.exit
  %39 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %line, align 4
  %arrayidx.i = getelementptr [8 x ptr], ptr @sifive_serial_console_ports, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i, ptr %arrayidx.i, align 4
  %call80 = tail call i32 @uart_add_one_port(ptr noundef nonnull @sifive_serial_uart_driver, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81.not = icmp eq i32 %call80, 0
  br i1 %cmp81.not, label %if.end78.cleanup_crit_edge, label %do.end85

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end85:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %call80) #13
  %42 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %line, align 4
  %arrayidx.i170 = getelementptr [8 x ptr], ptr @sifive_serial_console_ports, i32 0, i32 %43
  %44 = ptrtoint ptr %arrayidx.i170 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %arrayidx.i170, align 4
  %45 = ptrtoint ptr %irq43 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %irq43, align 4
  %call90 = tail call ptr @free_irq(i32 noundef %46, ptr noundef nonnull %call.i) #10
  br label %probe_out2

probe_out2:                                       ; preds = %do.end85, %do.end76
  %r.0 = phi i32 [ %call.i168, %do.end76 ], [ %call80, %do.end85 ]
  %47 = ptrtoint ptr %clk51 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %clk51, align 4
  %call93 = tail call i32 @clk_notifier_unregister(ptr noundef %48, ptr noundef %clk_notifier) #10
  br label %cleanup

cleanup:                                          ; preds = %probe_out2, %if.end78.cleanup_crit_edge, %do.end59, %if.end33.cleanup_crit_edge, %do.end31, %do.end24, %do.end14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %do.end ], [ %1, %do.end14 ], [ %call19, %do.end24 ], [ -22, %do.end31 ], [ -517, %entry.cleanup_crit_edge ], [ -12, %if.end33.cleanup_crit_edge ], [ 0, %if.end78.cleanup_crit_edge ], [ %call54, %do.end59 ], [ %r.0, %probe_out2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sifive_serial_remove(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %line.i = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %line.i, align 4
  %arrayidx.i = getelementptr [8 x ptr], ptr @sifive_serial_console_ports, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx.i, align 4
  %call1 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @sifive_serial_uart_driver, ptr noundef %1) #10
  %irq = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call3 = tail call ptr @free_irq(i32 noundef %6, ptr noundef %1) #10
  %clk = getelementptr inbounds %struct.sifive_serial_port, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  %clk_notifier = getelementptr inbounds %struct.sifive_serial_port, ptr %1, i32 0, i32 6
  %call4 = tail call i32 @clk_notifier_unregister(ptr noundef %8, ptr noundef %clk_notifier) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sifive_serial_clk_notifier(ptr nocapture noundef %nb, i32 noundef %event, ptr nocapture noundef readonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.if.end26_crit_edge [
    i32 1, label %if.then
    i32 2, label %land.lhs.true
  ]

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then:                                          ; preds = %entry
  %membase.i.i.i.i = getelementptr i8, ptr %nb, i32 -332
  %1 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %membase.i.i.i.i, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #10, !srcloc !94
  %.mask1.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask1.i)
  %tobool.not2.i = icmp eq i32 %.mask1.i, 0
  br i1 %tobool.not2.i, label %if.then.cond.false14_crit_edge, label %if.then.while.body.i_crit_edge

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

if.then.cond.false14_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false14

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #10
  %5 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i.i.i.i, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #10, !srcloc !94
  %.mask.i = and i32 %7, 128
  %tobool.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool.not.i, label %while.body.i.cond.false14_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.cond.false14_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false14

cond.false14:                                     ; preds = %while.body.i.cond.false14_crit_edge, %if.then.cond.false14_crit_edge
  %baud_rate = getelementptr i8, ptr %nb, i32 -8
  %8 = ptrtoint ptr %baud_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %baud_rate, align 4
  %sub = add i32 %9, 11999999
  %div = udiv i32 %sub, %9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %10(i32 noundef %div) #10
  br label %if.end26

land.lhs.true:                                    ; preds = %entry
  %clkin_rate = getelementptr i8, ptr %nb, i32 -12
  %11 = ptrtoint ptr %clkin_rate to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %clkin_rate, align 4
  %new_rate = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 2
  %13 = ptrtoint ptr %new_rate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %new_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp22.not = icmp eq i32 %12, %14
  br i1 %cmp22.not, label %land.lhs.true.if.end26_crit_edge, label %if.then23

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %clkin_rate to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %clkin_rate, align 4
  %baud_rate.i = getelementptr i8, ptr %nb, i32 -8
  %16 = ptrtoint ptr %baud_rate.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %baud_rate.i, align 4
  %add.i = add i32 %14, -1
  %sub.i = add i32 %add.i, %17
  %div2.i = udiv i32 %sub.i, %17
  %conv.i = add i32 %div2.i, 65535
  %conv4.i = and i32 %conv.i, 65535
  %18 = tail call i32 @llvm.bswap.i32(i32 %conv4.i) #10
  %membase.i.i.i = getelementptr i8, ptr %nb, i32 -332
  %19 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %20, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %18) #10, !srcloc !97
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %land.lhs.true.if.end26_crit_edge, %cond.false14, %entry.if.end26_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sifive_serial_irq(i32 noundef %irq, ptr noundef %dev_id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %dev_id) #10
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !94
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then4:                                         ; preds = %if.end
  %rx.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 4
  %4 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #10, !srcloc !94
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool.not.i = icmp sgt i32 %7, -1
  br i1 %tobool.not.i, label %if.end.i, label %if.then4.__ssp_receive_chars.exit_crit_edge

if.then4.__ssp_receive_chars.exit_crit_edge:      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ssp_receive_chars.exit

if.end.i:                                         ; preds = %if.then4
  %8 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx.i, align 4
  %inc.i = add i32 %9, 1
  store i32 %inc.i, ptr %rx.i, align 4
  %conv.i = and i32 %7, 255
  tail call void @uart_insert_char(ptr noundef %dev_id, i32 noundef 0, i32 noundef 0, i32 noundef %conv.i, i32 noundef 0) #10
  %10 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i.i.1.i = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.1.i) #10, !srcloc !94
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %tobool.not.1.i = icmp sgt i32 %13, -1
  br i1 %tobool.not.1.i, label %if.end.1.i, label %if.end.i.__ssp_receive_chars.exit_crit_edge

if.end.i.__ssp_receive_chars.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ssp_receive_chars.exit

if.end.1.i:                                       ; preds = %if.end.i
  %14 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx.i, align 4
  %inc.1.i = add i32 %15, 1
  store i32 %inc.1.i, ptr %rx.i, align 4
  %conv.1.i = and i32 %13, 255
  tail call void @uart_insert_char(ptr noundef %dev_id, i32 noundef 0, i32 noundef 0, i32 noundef %conv.1.i, i32 noundef 0) #10
  %16 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i.i.2.i = getelementptr i8, ptr %17, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.2.i) #10, !srcloc !94
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %tobool.not.2.i = icmp sgt i32 %19, -1
  br i1 %tobool.not.2.i, label %if.end.2.i, label %if.end.1.i.__ssp_receive_chars.exit_crit_edge

if.end.1.i.__ssp_receive_chars.exit_crit_edge:    ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ssp_receive_chars.exit

if.end.2.i:                                       ; preds = %if.end.1.i
  %20 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx.i, align 4
  %inc.2.i = add i32 %21, 1
  store i32 %inc.2.i, ptr %rx.i, align 4
  %conv.2.i = and i32 %19, 255
  tail call void @uart_insert_char(ptr noundef %dev_id, i32 noundef 0, i32 noundef 0, i32 noundef %conv.2.i, i32 noundef 0) #10
  %22 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i.i.3.i = getelementptr i8, ptr %23, i32 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.3.i) #10, !srcloc !94
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %tobool.not.3.i = icmp sgt i32 %25, -1
  br i1 %tobool.not.3.i, label %if.end.3.i, label %if.end.2.i.__ssp_receive_chars.exit_crit_edge

if.end.2.i.__ssp_receive_chars.exit_crit_edge:    ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ssp_receive_chars.exit

if.end.3.i:                                       ; preds = %if.end.2.i
  %26 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx.i, align 4
  %inc.3.i = add i32 %27, 1
  store i32 %inc.3.i, ptr %rx.i, align 4
  %conv.3.i = and i32 %25, 255
  tail call void @uart_insert_char(ptr noundef %dev_id, i32 noundef 0, i32 noundef 0, i32 noundef %conv.3.i, i32 noundef 0) #10
  %28 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i.i.4.i = getelementptr i8, ptr %29, i32 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.4.i) #10, !srcloc !94
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %tobool.not.4.i = icmp sgt i32 %31, -1
  br i1 %tobool.not.4.i, label %if.end.4.i, label %if.end.3.i.__ssp_receive_chars.exit_crit_edge

if.end.3.i.__ssp_receive_chars.exit_crit_edge:    ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ssp_receive_chars.exit

if.end.4.i:                                       ; preds = %if.end.3.i
  %32 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx.i, align 4
  %inc.4.i = add i32 %33, 1
  store i32 %inc.4.i, ptr %rx.i, align 4
  %conv.4.i = and i32 %31, 255
  tail call void @uart_insert_char(ptr noundef %dev_id, i32 noundef 0, i32 noundef 0, i32 noundef %conv.4.i, i32 noundef 0) #10
  %34 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i.i.5.i = getelementptr i8, ptr %35, i32 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.5.i) #10, !srcloc !94
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %tobool.not.5.i = icmp sgt i32 %37, -1
  br i1 %tobool.not.5.i, label %if.end.5.i, label %if.end.4.i.__ssp_receive_chars.exit_crit_edge

if.end.4.i.__ssp_receive_chars.exit_crit_edge:    ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ssp_receive_chars.exit

if.end.5.i:                                       ; preds = %if.end.4.i
  %38 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx.i, align 4
  %inc.5.i = add i32 %39, 1
  store i32 %inc.5.i, ptr %rx.i, align 4
  %conv.5.i = and i32 %37, 255
  tail call void @uart_insert_char(ptr noundef %dev_id, i32 noundef 0, i32 noundef 0, i32 noundef %conv.5.i, i32 noundef 0) #10
  %40 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i.i.6.i = getelementptr i8, ptr %41, i32 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.6.i) #10, !srcloc !94
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %tobool.not.6.i = icmp sgt i32 %43, -1
  br i1 %tobool.not.6.i, label %if.end.6.i, label %if.end.5.i.__ssp_receive_chars.exit_crit_edge

if.end.5.i.__ssp_receive_chars.exit_crit_edge:    ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ssp_receive_chars.exit

if.end.6.i:                                       ; preds = %if.end.5.i
  %44 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rx.i, align 4
  %inc.6.i = add i32 %45, 1
  store i32 %inc.6.i, ptr %rx.i, align 4
  %conv.6.i = and i32 %43, 255
  tail call void @uart_insert_char(ptr noundef %dev_id, i32 noundef 0, i32 noundef 0, i32 noundef %conv.6.i, i32 noundef 0) #10
  %46 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i.i.7.i = getelementptr i8, ptr %47, i32 4
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.7.i) #10, !srcloc !94
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %tobool.not.7.i = icmp sgt i32 %49, -1
  br i1 %tobool.not.7.i, label %if.end.7.i, label %if.end.6.i.__ssp_receive_chars.exit_crit_edge

if.end.6.i.__ssp_receive_chars.exit_crit_edge:    ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ssp_receive_chars.exit

if.end.7.i:                                       ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rx.i, align 4
  %inc.7.i = add i32 %51, 1
  store i32 %inc.7.i, ptr %rx.i, align 4
  %conv.7.i = and i32 %49, 255
  tail call void @uart_insert_char(ptr noundef %dev_id, i32 noundef 0, i32 noundef 0, i32 noundef %conv.7.i, i32 noundef 0) #10
  br label %__ssp_receive_chars.exit

__ssp_receive_chars.exit:                         ; preds = %if.end.7.i, %if.end.6.i.__ssp_receive_chars.exit_crit_edge, %if.end.5.i.__ssp_receive_chars.exit_crit_edge, %if.end.4.i.__ssp_receive_chars.exit_crit_edge, %if.end.3.i.__ssp_receive_chars.exit_crit_edge, %if.end.2.i.__ssp_receive_chars.exit_crit_edge, %if.end.1.i.__ssp_receive_chars.exit_crit_edge, %if.end.i.__ssp_receive_chars.exit_crit_edge, %if.then4.__ssp_receive_chars.exit_crit_edge
  %state.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 30
  %52 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %state.i, align 4
  tail call void @tty_flip_buffer_push(ptr noundef %53) #10
  br label %if.end5

if.end5:                                          ; preds = %__ssp_receive_chars.exit, %if.end.if.end5_crit_edge
  %and6 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.then8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  %state.i20 = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 30
  %54 = ptrtoint ptr %state.i20 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %state.i20, align 4
  %xmit1.i = getelementptr inbounds %struct.uart_state, ptr %55, i32 0, i32 2
  %x_char.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 24
  %56 = ptrtoint ptr %x_char.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %x_char.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i21 = icmp eq i8 %57, 0
  br i1 %tobool.not.i21, label %if.end.i25, label %if.then.i

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i22 = zext i8 %57 to i32
  %58 = shl nuw i32 %conv.i22, 24
  %59 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %membase.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #10, !srcloc !97
  %tx.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 5
  %61 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tx.i, align 4
  %inc.i24 = add i32 %62, 1
  store i32 %inc.i24, ptr %tx.i, align 4
  %63 = ptrtoint ptr %x_char.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %x_char.i, align 4
  br label %cleanup

if.end.i25:                                       ; preds = %if.then8
  %head.i = getelementptr inbounds %struct.uart_state, ptr %55, i32 0, i32 2, i32 1
  %64 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %head.i, align 4
  %tail.i = getelementptr inbounds %struct.uart_state, ptr %55, i32 0, i32 2, i32 2
  %66 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %67)
  %cmp.i = icmp eq i32 %65, %67
  br i1 %cmp.i, label %if.end.i25.if.then11.i_crit_edge, label %lor.lhs.false.i

if.end.i25.if.then11.i_crit_edge:                 ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i

lor.lhs.false.i:                                  ; preds = %if.end.i25
  %tty2.i.i = getelementptr inbounds %struct.tty_port, ptr %55, i32 0, i32 1
  %68 = ptrtoint ptr %tty2.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tty2.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %69, null
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.uart_tx_stopped.exit.i_crit_edge, label %land.lhs.true.i.i

lor.lhs.false.i.uart_tx_stopped.exit.i_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_tx_stopped.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i
  %stopped.i.i = getelementptr inbounds %struct.tty_struct, ptr %69, i32 0, i32 19, i32 1
  %70 = ptrtoint ptr %stopped.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %stopped.i.i, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool3.not.i.i = icmp eq i8 %71, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.uart_tx_stopped.exit.i_crit_edge, label %land.lhs.true.i.i.if.then11.i_crit_edge

land.lhs.true.i.i.if.then11.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i

land.lhs.true.i.i.uart_tx_stopped.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_tx_stopped.exit.i

uart_tx_stopped.exit.i:                           ; preds = %land.lhs.true.i.i.uart_tx_stopped.exit.i_crit_edge, %lor.lhs.false.i.uart_tx_stopped.exit.i_crit_edge
  %hw_stopped.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 35
  %72 = ptrtoint ptr %hw_stopped.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %hw_stopped.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool4.not.i.not.i = icmp eq i32 %73, 0
  br i1 %tobool4.not.i.not.i, label %do.body.preheader.i, label %uart_tx_stopped.exit.i.if.then11.i_crit_edge

uart_tx_stopped.exit.i.if.then11.i_crit_edge:     ; preds = %uart_tx_stopped.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i

do.body.preheader.i:                              ; preds = %uart_tx_stopped.exit.i
  %tx20.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 5
  br label %do.body.i

if.then11.i:                                      ; preds = %uart_tx_stopped.exit.i.if.then11.i_crit_edge, %land.lhs.true.i.i.if.then11.i_crit_edge, %if.end.i25.if.then11.i_crit_edge
  %ier.i.i.i = getelementptr inbounds %struct.sifive_serial_port, ptr %dev_id, i32 0, i32 2
  %74 = ptrtoint ptr %ier.i.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %ier.i.i.i, align 4
  %76 = and i8 %75, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.not.i.i.i = icmp eq i8 %76, 0
  br i1 %tobool.not.i.i.i, label %if.then11.i.cleanup_crit_edge, label %if.end.i.i.i

if.then11.i.cleanup_crit_edge:                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  %and3.i.i.i = and i8 %75, -2
  %77 = ptrtoint ptr %ier.i.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %and3.i.i.i, ptr %ier.i.i.i, align 4
  %conv6.i.i.i = zext i8 %and3.i.i.i to i32
  %78 = shl nuw i32 %conv6.i.i.i, 24
  %79 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %80, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i.i, i32 %78) #10, !srcloc !97
  br label %cleanup

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.preheader.i
  %count.0.i = phi i32 [ %dec.i, %do.body.i.do.body.i_crit_edge ], [ 8, %do.body.preheader.i ]
  %81 = ptrtoint ptr %xmit1.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %xmit1.i, align 4
  %83 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tail.i, align 4
  %arrayidx.i = getelementptr i8, ptr %82, i32 %84
  %85 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx.i, align 1
  %conv15.i = zext i8 %86 to i32
  %87 = shl nuw i32 %conv15.i, 24
  %88 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %membase.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %87) #10, !srcloc !97
  %90 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %tail.i, align 4
  %add.i = add i32 %91, 1
  %and.i = and i32 %add.i, 4095
  store i32 %and.i, ptr %tail.i, align 4
  %92 = ptrtoint ptr %tx20.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tx20.i, align 4
  %inc21.i = add i32 %93, 1
  store i32 %inc21.i, ptr %tx20.i, align 4
  %94 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %head.i, align 4
  %96 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %96)
  %cmp24.i = icmp ne i32 %95, %96
  %dec.i = add nsw i32 %count.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp28.i = icmp ne i32 %dec.i, 0
  %or.cond.i = select i1 %cmp24.i, i1 %cmp28.i, i1 false
  br i1 %or.cond.i, label %do.body.i.do.body.i_crit_edge, label %do.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %sub.i = sub i32 %95, %96
  %and32.i = and i32 %sub.i, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %cmp33.i = icmp eq i32 %and32.i, 0
  br i1 %cmp33.i, label %if.then35.i, label %do.end.i.if.end37.i_crit_edge

do.end.i.if.end37.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

if.then35.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @uart_write_wakeup(ptr noundef %dev_id) #10
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then35.i, %do.end.i.if.end37.i_crit_edge
  %97 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %head.i, align 4
  %99 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %100)
  %cmp40.i = icmp eq i32 %98, %100
  br i1 %cmp40.i, label %if.then42.i, label %if.end37.i.cleanup_crit_edge

if.end37.i.cleanup_crit_edge:                     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then42.i:                                      ; preds = %if.end37.i
  %ier.i.i69.i = getelementptr inbounds %struct.sifive_serial_port, ptr %dev_id, i32 0, i32 2
  %101 = ptrtoint ptr %ier.i.i69.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %ier.i.i69.i, align 4
  %103 = and i8 %102, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool.not.i.i70.i = icmp eq i8 %103, 0
  br i1 %tobool.not.i.i70.i, label %if.then42.i.cleanup_crit_edge, label %if.end.i.i75.i

if.then42.i.cleanup_crit_edge:                    ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i75.i:                                   ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #12
  %and3.i.i71.i = and i8 %102, -2
  %104 = ptrtoint ptr %ier.i.i69.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %and3.i.i71.i, ptr %ier.i.i69.i, align 4
  %conv6.i.i72.i = zext i8 %and3.i.i71.i to i32
  %105 = shl nuw i32 %conv6.i.i72.i, 24
  %106 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i.i.i74.i = getelementptr i8, ptr %107, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i74.i, i32 %105) #10, !srcloc !97
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i75.i, %if.then42.i.cleanup_crit_edge, %if.end37.i.cleanup_crit_edge, %if.end.i.i.i, %if.then11.i.cleanup_crit_edge, %if.then.i, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.i.i75.i ], [ 1, %if.then42.i.cleanup_crit_edge ], [ 1, %if.end37.i.cleanup_crit_edge ], [ 1, %if.end.i.i.i ], [ 1, %if.then11.i.cleanup_crit_edge ], [ 1, %if.then.i ], [ 1, %if.end5.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %dev_id) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sifive_serial_tx_empty(ptr nocapture noundef readnone %port) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sifive_serial_set_mctrl(ptr nocapture noundef %port, i32 noundef %mctrl) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sifive_serial_get_mctrl(ptr nocapture noundef readnone %port) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 352
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sifive_serial_stop_tx(ptr nocapture noundef %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ier.i = getelementptr inbounds %struct.sifive_serial_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %ier.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ier.i, align 4
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %entry.__ssp_disable_txwm.exit_crit_edge, label %if.end.i

entry.__ssp_disable_txwm.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ssp_disable_txwm.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and3.i = and i8 %1, -2
  %3 = ptrtoint ptr %ier.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %and3.i, ptr %ier.i, align 4
  %conv6.i = zext i8 %and3.i to i32
  %4 = shl nuw i32 %conv6.i, 24
  %membase.i.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %5 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %4) #10, !srcloc !97
  br label %__ssp_disable_txwm.exit

__ssp_disable_txwm.exit:                          ; preds = %if.end.i, %entry.__ssp_disable_txwm.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sifive_serial_start_tx(ptr nocapture noundef %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ier.i = getelementptr inbounds %struct.sifive_serial_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %ier.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ier.i, align 4
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__ssp_enable_txwm.exit_crit_edge

entry.__ssp_enable_txwm.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ssp_enable_txwm.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or.i = or i8 %1, 1
  %3 = ptrtoint ptr %ier.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %or.i, ptr %ier.i, align 4
  %conv5.i = zext i8 %or.i to i32
  %4 = shl nuw i32 %conv5.i, 24
  %membase.i.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %5 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %4) #10, !srcloc !97
  br label %__ssp_enable_txwm.exit

__ssp_enable_txwm.exit:                           ; preds = %if.end.i, %entry.__ssp_enable_txwm.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sifive_serial_stop_rx(ptr nocapture noundef %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ier.i = getelementptr inbounds %struct.sifive_serial_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %ier.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ier.i, align 4
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %entry.__ssp_disable_rxwm.exit_crit_edge, label %if.end.i

entry.__ssp_disable_rxwm.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ssp_disable_rxwm.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and3.i = and i8 %1, -3
  %3 = ptrtoint ptr %ier.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %and3.i, ptr %ier.i, align 4
  %conv6.i = zext i8 %and3.i to i32
  %4 = shl nuw i32 %conv6.i, 24
  %membase.i.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %5 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %4) #10, !srcloc !97
  br label %__ssp_disable_rxwm.exit

__ssp_disable_rxwm.exit:                          ; preds = %if.end.i, %entry.__ssp_disable_rxwm.exit_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sifive_serial_break_ctl(ptr nocapture noundef %port, i32 noundef %break_state) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sifive_serial_startup(ptr nocapture noundef %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ier.i = getelementptr inbounds %struct.sifive_serial_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %ier.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ier.i, align 4
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__ssp_enable_rxwm.exit_crit_edge

entry.__ssp_enable_rxwm.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ssp_enable_rxwm.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or.i = or i8 %1, 2
  %3 = ptrtoint ptr %ier.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %or.i, ptr %ier.i, align 4
  %conv5.i = zext i8 %or.i to i32
  %4 = shl nuw i32 %conv5.i, 24
  %membase.i.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %5 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %4) #10, !srcloc !97
  br label %__ssp_enable_rxwm.exit

__ssp_enable_rxwm.exit:                           ; preds = %if.end.i, %entry.__ssp_enable_rxwm.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sifive_serial_shutdown(ptr nocapture noundef %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ier.i = getelementptr inbounds %struct.sifive_serial_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %ier.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ier.i, align 4
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %entry.__ssp_disable_rxwm.exit_crit_edge, label %if.end.i

entry.__ssp_disable_rxwm.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ssp_disable_rxwm.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and3.i = and i8 %1, -3
  %3 = ptrtoint ptr %ier.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %and3.i, ptr %ier.i, align 4
  %conv6.i = zext i8 %and3.i to i32
  %4 = shl nuw i32 %conv6.i, 24
  %membase.i.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %5 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %4) #10, !srcloc !97
  br label %__ssp_disable_rxwm.exit

__ssp_disable_rxwm.exit:                          ; preds = %if.end.i, %entry.__ssp_disable_rxwm.exit_crit_edge
  %7 = ptrtoint ptr %ier.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ier.i, align 4
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i3 = icmp eq i8 %9, 0
  br i1 %tobool.not.i3, label %__ssp_disable_rxwm.exit.__ssp_disable_txwm.exit_crit_edge, label %if.end.i8

__ssp_disable_rxwm.exit.__ssp_disable_txwm.exit_crit_edge: ; preds = %__ssp_disable_rxwm.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ssp_disable_txwm.exit

if.end.i8:                                        ; preds = %__ssp_disable_rxwm.exit
  call void @__sanitizer_cov_trace_pc() #12
  %and3.i4 = and i8 %8, -2
  %10 = ptrtoint ptr %ier.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %and3.i4, ptr %ier.i, align 4
  %conv6.i5 = zext i8 %and3.i4 to i32
  %11 = shl nuw i32 %conv6.i5, 24
  %membase.i.i.i6 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %12 = ptrtoint ptr %membase.i.i.i6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i.i.i6, align 4
  %add.ptr.i.i.i7 = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i7, i32 %11) #10, !srcloc !97
  br label %__ssp_disable_txwm.exit

__ssp_disable_txwm.exit:                          ; preds = %if.end.i8, %__ssp_disable_rxwm.exit.__ssp_disable_txwm.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sifive_serial_set_termios(ptr noundef %port, ptr noundef %termios, ptr noundef %old) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %0 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_cflag, align 4
  %and = and i32 %1, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %and)
  %cmp.not = icmp eq i32 %and, 48
  br i1 %cmp.not, label %entry.if.end6_crit_edge, label %do.body

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

do.body:                                          ; preds = %entry
  %.b97 = load i1, ptr @sifive_serial_set_termios.__print_once, align 1
  br i1 %.b97, label %do.body.if.end6_crit_edge, label %if.then1

do.body.if.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then1:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sifive_serial_set_termios.__print_once, align 1
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.25) #13
  br label %if.end6

if.end6:                                          ; preds = %if.then1, %do.body.if.end6_crit_edge, %entry.if.end6_crit_edge
  %4 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %termios, align 4
  %and7 = and i32 %5, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end21_crit_edge, label %do.body10

if.end6.if.end21_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

do.body10:                                        ; preds = %if.end6
  %.b9296 = load i1, ptr @sifive_serial_set_termios.__print_once.27, align 1
  br i1 %.b9296, label %do.body10.if.end21_crit_edge, label %if.then12

do.body10.if.end21_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then12:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sifive_serial_set_termios.__print_once.27, align 1
  %dev17 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %6 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.29) #13
  br label %if.end21

if.end21:                                         ; preds = %if.then12, %do.body10.if.end21_crit_edge, %if.end6.if.end21_crit_edge
  %8 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %termios, align 4
  %and23 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end21.if.end37_crit_edge, label %do.body26

if.end21.if.end37_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

do.body26:                                        ; preds = %if.end21
  %.b9395 = load i1, ptr @sifive_serial_set_termios.__print_once.31, align 1
  br i1 %.b9395, label %do.body26.if.end37_crit_edge, label %if.then28

do.body26.if.end37_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then28:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sifive_serial_set_termios.__print_once.31, align 1
  %dev33 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %10 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev33, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.33) #13
  br label %if.end37

if.end37:                                         ; preds = %if.then28, %do.body26.if.end37_crit_edge, %if.end21.if.end37_crit_edge
  %12 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %c_cflag, align 4
  %membase.i.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %14 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !94
  %17 = and i32 %16, -33554433
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #10
  %and39 = lshr i32 %13, 5
  %19 = and i32 %and39, 2
  %or.i = or i32 %18, %19
  %20 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %21 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i29.i = getelementptr i8, ptr %22, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i29.i, i32 %20) #10, !srcloc !97
  %clkin_rate = getelementptr inbounds %struct.sifive_serial_port, ptr %port, i32 0, i32 3
  %23 = ptrtoint ptr %clkin_rate to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %clkin_rate, align 4
  %div94 = lshr i32 %24, 4
  %call = tail call i32 @uart_get_baud_rate(ptr noundef %port, ptr noundef %termios, ptr noundef %old, i32 noundef 0, i32 noundef %div94) #10
  %baud_rate.i = getelementptr inbounds %struct.sifive_serial_port, ptr %port, i32 0, i32 4
  %25 = ptrtoint ptr %baud_rate.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %baud_rate.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %call)
  %cmp.i = icmp eq i32 %26, %call
  br i1 %cmp.i, label %if.end37.__ssp_update_baud_rate.exit_crit_edge, label %if.end.i

if.end37.__ssp_update_baud_rate.exit_crit_edge:   ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ssp_update_baud_rate.exit

if.end.i:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %baud_rate.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call, ptr %baud_rate.i, align 4
  %28 = ptrtoint ptr %clkin_rate to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %clkin_rate, align 4
  %add.i.i = add i32 %call, -1
  %sub.i.i = add i32 %add.i.i, %29
  %div2.i.i = udiv i32 %sub.i.i, %call
  %conv.i.i = add i32 %div2.i.i, 65535
  %conv4.i.i = and i32 %conv.i.i, 65535
  %30 = tail call i32 @llvm.bswap.i32(i32 %conv4.i.i) #10
  %31 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %32, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %30) #10, !srcloc !97
  br label %__ssp_update_baud_rate.exit

__ssp_update_baud_rate.exit:                      ; preds = %if.end.i, %if.end37.__ssp_update_baud_rate.exit_crit_edge
  %call48 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #10
  %33 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %c_cflag, align 4
  tail call void @uart_update_timeout(ptr noundef %port, i32 noundef %34, i32 noundef %call) #10
  %read_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 28
  %35 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %read_status_mask, align 4
  %36 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 12
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !94
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #10
  %40 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %c_cflag, align 4
  %and57 = and i32 %41, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %cmp58 = icmp eq i32 %and57, 0
  %and61 = and i32 %39, 1
  %or = or i32 %39, 1
  %v.0 = select i1 %cmp58, i32 %and61, i32 %or
  call void @__sanitizer_cov_trace_cmp4(i32 %v.0, i32 %39)
  %cmp63.not = icmp eq i32 %v.0, %39
  br i1 %cmp63.not, label %__ssp_update_baud_rate.exit.if.end66_crit_edge, label %if.then65

__ssp_update_baud_rate.exit.if.end66_crit_edge:   ; preds = %__ssp_update_baud_rate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then65:                                        ; preds = %__ssp_update_baud_rate.exit
  call void @__sanitizer_cov_trace_pc() #12
  %42 = tail call i32 @llvm.bswap.i32(i32 %v.0) #10
  %43 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i99 = getelementptr i8, ptr %44, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i99, i32 %42) #10, !srcloc !97
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %__ssp_update_baud_rate.exit.if.end66_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call48) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @sifive_serial_type(ptr nocapture noundef readonly %port) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %1)
  %cmp = icmp eq i32 %1, 120
  %cond = select i1 %cmp, ptr @.str.35, ptr null
  ret ptr %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sifive_serial_release_port(ptr nocapture noundef %port) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sifive_serial_request_port(ptr nocapture noundef readnone %port) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @sifive_serial_config_port(ptr nocapture noundef writeonly %port, i32 noundef %flags) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 120, ptr %type, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sifive_serial_verify_port(ptr nocapture noundef readnone %port, ptr nocapture noundef readnone %ser) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sifive_serial_poll_put_char(ptr nocapture noundef readonly %port, i8 noundef zeroext %c) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i.i.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i.i.i.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #10, !srcloc !94
  %.mask1.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask1.i)
  %tobool.not2.i = icmp eq i32 %.mask1.i, 0
  br i1 %tobool.not2.i, label %entry.__ssp_wait_for_xmitr.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.__ssp_wait_for_xmitr.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ssp_wait_for_xmitr.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748) #10
  %4 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i.i.i.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #10, !srcloc !94
  %.mask.i = and i32 %6, 128
  %tobool.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool.not.i, label %while.body.i.__ssp_wait_for_xmitr.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.__ssp_wait_for_xmitr.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ssp_wait_for_xmitr.exit

__ssp_wait_for_xmitr.exit:                        ; preds = %while.body.i.__ssp_wait_for_xmitr.exit_crit_edge, %entry.__ssp_wait_for_xmitr.exit_crit_edge
  %conv = zext i8 %c to i32
  %7 = shl nuw i32 %conv, 24
  %8 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #10, !srcloc !97
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sifive_serial_poll_get_char(ptr nocapture noundef readonly %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !94
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not = icmp sgt i32 %3, -1
  %conv = and i32 %3, 255
  %retval.0 = select i1 %tobool.not, i32 %conv, i32 16711680
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_insert_char(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !33, !35, !36, !37, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !63, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !81, !83}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @__UNIQUE_ID___earlycon_sifive227, !1, !"__UNIQUE_ID___earlycon_sifive227", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/sifive.c", i32 790, i32 1}
!2 = !{ptr @__UNIQUE_ID___earlycon_sifive228, !3, !"__UNIQUE_ID___earlycon_sifive228", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/sifive.c", i32 791, i32 1}
!4 = !{ptr @__initcall__kmod_sifive__229_881_sifive_console_initcon, !5, !"__initcall__kmod_sifive__229_881_sifive_console_initcon", i1 false, i1 false}
!5 = !{!"../drivers/tty/serial/sifive.c", i32 881, i32 1}
!6 = !{ptr @__initcall__kmod_sifive__230_1096_sifive_serial_init6, !7, !"__initcall__kmod_sifive__230_1096_sifive_serial_init6", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/sifive.c", i32 1096, i32 1}
!8 = !{ptr @__exitcall_sifive_serial_exit, !9, !"__exitcall_sifive_serial_exit", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/sifive.c", i32 1097, i32 1}
!10 = !{ptr @__UNIQUE_ID_description231, !11, !"__UNIQUE_ID_description231", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/sifive.c", i32 1099, i32 1}
!12 = !{ptr @__UNIQUE_ID_file232, !13, !"__UNIQUE_ID_file232", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/sifive.c", i32 1100, i32 1}
!14 = !{ptr @__UNIQUE_ID_license233, !13, !"__UNIQUE_ID_license233", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_author234, !16, !"__UNIQUE_ID_author234", i1 false, i1 false}
!16 = !{!"../drivers/tty/serial/sifive.c", i32 1101, i32 1}
!17 = !{ptr @sifive_serial_console, !18, !"sifive_serial_console", i1 false, i1 false}
!18 = !{!"../drivers/tty/serial/sifive.c", i32 865, i32 23}
!19 = !{ptr @sifive_serial_console_ports, !20, !"sifive_serial_console_ports", i1 false, i1 false}
!20 = !{!"../drivers/tty/serial/sifive.c", i32 801, i32 35}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/tty/serial/sifive.c", i32 1065, i32 11}
!23 = !{ptr @sifive_serial_platform_driver, !24, !"sifive_serial_platform_driver", i1 false, i1 false}
!24 = !{!"../drivers/tty/serial/sifive.c", i32 1061, i32 31}
!25 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/tty/serial/sifive.c", i32 951, i32 3}
!27 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @sifive_serial_probe._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @sifive_serial_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/tty/serial/sifive.c", i32 957, i32 3}
!35 = !{ptr @sifive_serial_probe._entry.6, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @sifive_serial_probe._entry_ptr.8, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/tty/serial/sifive.c", i32 961, i32 42}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/tty/serial/sifive.c", i32 963, i32 3}
!41 = !{ptr @sifive_serial_probe._entry.10, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @sifive_serial_probe._entry_ptr.12, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/tty/serial/sifive.c", i32 969, i32 3}
!45 = !{ptr @sifive_serial_probe._entry.13, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @sifive_serial_probe._entry_ptr.15, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/tty/serial/sifive.c", i32 993, i32 3}
!49 = !{ptr @sifive_serial_probe._entry.16, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @sifive_serial_probe._entry_ptr.18, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/tty/serial/sifive.c", i32 1019, i32 3}
!53 = !{ptr @sifive_serial_probe._entry.19, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @sifive_serial_probe._entry_ptr.21, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/tty/serial/sifive.c", i32 1027, i32 3}
!57 = !{ptr @sifive_serial_probe._entry.22, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @sifive_serial_probe._entry_ptr.24, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @sifive_serial_uops, !60, !"sifive_serial_uops", i1 false, i1 false}
!60 = !{!"../drivers/tty/serial/sifive.c", i32 906, i32 30}
!61 = distinct !{null, !62, !"__print_once", i1 false, i1 false}
!62 = !{!"../drivers/tty/serial/sifive.c", i32 670, i32 3}
!63 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @sifive_serial_set_termios._entry, !62, !"_entry", i1 false, i1 false}
!66 = !{ptr @sifive_serial_set_termios._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!67 = distinct !{null, !68, !"__print_once", i1 false, i1 false}
!68 = !{!"../drivers/tty/serial/sifive.c", i32 672, i32 3}
!69 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @sifive_serial_set_termios._entry.28, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @sifive_serial_set_termios._entry_ptr.30, !68, !"_entry_ptr", i1 false, i1 false}
!72 = distinct !{null, !73, !"__print_once", i1 false, i1 false}
!73 = !{!"../drivers/tty/serial/sifive.c", i32 674, i32 3}
!74 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @sifive_serial_set_termios._entry.32, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @sifive_serial_set_termios._entry_ptr.34, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/tty/serial/sifive.c", i32 728, i32 40}
!79 = !{ptr @sifive_serial_of_match, !80, !"sifive_serial_of_match", i1 false, i1 false}
!80 = !{!"../drivers/tty/serial/sifive.c", i32 1054, i32 34}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/tty/serial/sifive.c", i32 931, i32 14}
!83 = !{ptr @sifive_serial_uart_driver, !84, !"sifive_serial_uart_driver", i1 false, i1 false}
!84 = !{!"../drivers/tty/serial/sifive.c", i32 928, i32 27}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i64 3105882}
!95 = !{i64 2154213341}
!96 = !{i64 2154213183}
!97 = !{i64 3105464}
!98 = !{i64 661222, i64 661283}
!99 = !{i64 663954}
!100 = !{!"branch_weights", i32 1, i32 2000}
!101 = !{i64 664239}
!102 = !{i8 0, i8 2}
