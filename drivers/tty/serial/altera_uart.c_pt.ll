; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/altera_uart.c_pt.bc'
source_filename = "../drivers/tty/serial/altera_uart.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.altera_uart = type { %struct.uart_port, %struct.timer_list, i32, i16 }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.earlycon_device = type { ptr, %struct.uart_port, [16 x i8], i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.altera_uart_platform_uart = type { i32, i32, i32, i32 }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.circ_buf = type { ptr, i32, i32 }

@__initcall__kmod_altera_uart__227_496_altera_uart_console_initcon = internal global ptr @altera_uart_console_init, section ".con_initcall.init", align 4
@__UNIQUE_ID___earlycon_uart228 = internal constant %struct.earlycon_id { [15 x i8] c"uart\00\00\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"altr,uart-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @altera_uart_earlycon_setup }, section "__earlycon_table", align 4
@altera_uart_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @altera_uart_probe, ptr @altera_uart_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @altera_uart_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@altera_uart_driver = internal global { %struct.uart_driver, [60 x i8] } { %struct.uart_driver { ptr null, ptr @.str, ptr @.str.7, i32 204, i32 213, i32 4, ptr @altera_uart_console, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_altera_uart__229_670_altera_uart_init6 = internal global ptr @altera_uart_init, section ".initcall6.init", align 4
@__exitcall_altera_uart_exit = internal global ptr @altera_uart_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description230 = internal constant [43 x i8] c"altera_uart.description=Altera UART driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author231 = internal constant [54 x i8] c"altera_uart.author=Thomas Chou <thomas@wytron.com.tw>\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [48 x i8] c"altera_uart.file=drivers/tty/serial/altera_uart\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [24 x i8] c"altera_uart.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias234 = internal constant [39 x i8] c"altera_uart.alias=platform:altera_uart\00", section ".modinfo", align 1
@__UNIQUE_ID_alias235 = internal constant [35 x i8] c"altera_uart.alias=char-major-204-*\00", section ".modinfo", align 1
@altera_uart_console = internal global { %struct.console, [60 x i8] } { %struct.console { [16 x i8] c"ttyAL\00\00\00\00\00\00\00\00\00\00\00", ptr @altera_uart_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @altera_uart_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @altera_uart_driver, ptr null }, [60 x i8] zeroinitializer }, align 32
@altera_uart_ports = internal global { [4 x %struct.altera_uart], [416 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"altera_uart\00", [20 x i8] zeroinitializer }, align 32
@altera_uart_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ALTR,uart-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,uart-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@altera_uart_ops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @altera_uart_tx_empty, ptr @altera_uart_set_mctrl, ptr @altera_uart_get_mctrl, ptr @altera_uart_stop_tx, ptr @altera_uart_start_tx, ptr null, ptr null, ptr null, ptr @altera_uart_stop_rx, ptr null, ptr @altera_uart_break_ctl, ptr @altera_uart_startup, ptr @altera_uart_shutdown, ptr null, ptr @altera_uart_set_termios, ptr null, ptr null, ptr @altera_uart_type, ptr @altera_uart_release_port, ptr @altera_uart_request_port, ptr @altera_uart_config_port, ptr @altera_uart_verify_port, ptr null, ptr null, ptr @altera_uart_poll_put_char, ptr @altera_uart_poll_get_char }, [56 x i8] zeroinitializer }, align 32
@altera_uart_startup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"(&pp->tmr)\00", [21 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@altera_uart_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013altera_uart: unable to attach Altera UART %d interrupt vector=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"altera_uart_startup\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/tty/serial/altera_uart.c\00", [63 x i8] zeroinitializer }, align 32
@altera_uart_startup._entry_ptr = internal global ptr @altera_uart_startup._entry, section ".printk_index", align 4
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Altera UART\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ttyAL\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant [28 x i8] c"altera_uart_platform_driver\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 642, i32 31 }
@___asan_gen_.11 = private unnamed_addr constant [19 x i8] c"altera_uart_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 541, i32 27 }
@___asan_gen_.14 = private unnamed_addr constant [20 x i8] c"altera_uart_console\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 480, i32 23 }
@___asan_gen_.17 = private unnamed_addr constant [18 x i8] c"altera_uart_ports\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 437, i32 27 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 646, i32 12 }
@___asan_gen_.23 = private unnamed_addr constant [18 x i8] c"altera_uart_match\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 634, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 591, i32 49 }
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"altera_uart_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 415, i32 30 }
@___asan_gen_.32 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 324, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 332, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 370, i32 44 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private constant [36 x i8] c"../drivers/tty/serial/altera_uart.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 544, i32 14 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID___earlycon_uart228, ptr @__UNIQUE_ID_alias234, ptr @__UNIQUE_ID_alias235, ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_altera_uart_exit, ptr @__initcall__kmod_altera_uart__227_496_altera_uart_console_initcon, ptr @__initcall__kmod_altera_uart__229_670_altera_uart_init6, ptr @altera_uart_exit, ptr @altera_uart_startup._entry, ptr @altera_uart_startup._entry_ptr, ptr @altera_uart_platform_driver, ptr @altera_uart_driver, ptr @altera_uart_console, ptr @altera_uart_ports, ptr @.str, ptr @altera_uart_match, ptr @.str.1, ptr @altera_uart_ops, ptr @altera_uart_startup.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_uart_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_uart_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_uart_console to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_uart_ports to i32), i32 1664, i32 2080, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_uart_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_uart_ops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_uart_startup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_uart_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_uart_console_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @register_console(ptr noundef nonnull @altera_uart_console) #8
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_uart_earlycon_setup(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %options) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.earlycon_device, ptr %dev, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !57
  tail call void @arm_heavy_mb() #8
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 4
  %regshift.i = getelementptr inbounds %struct.earlycon_device, ptr %dev, i32 0, i32 1, i32 25
  %4 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %5 to i32
  %shl.i = shl i32 12, %conv.i
  %add.ptr.i = getelementptr i8, ptr %3, i32 %shl.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -2147483648) #8, !srcloc !58
  %baud = getelementptr inbounds %struct.earlycon_device, ptr %dev, i32 0, i32 3
  %6 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %baud, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %uartclk = getelementptr inbounds %struct.earlycon_device, ptr %dev, i32 0, i32 1, i32 22
  %8 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %uartclk, align 4
  %div = udiv i32 %9, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !57
  tail call void @arm_heavy_mb() #8
  %10 = tail call i32 @llvm.bswap.i32(i32 %div) #8
  %11 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase, align 4
  %13 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %regshift.i, align 1
  %conv.i14 = zext i8 %14 to i32
  %shl.i15 = shl i32 16, %conv.i14
  %add.ptr.i16 = getelementptr i8, ptr %12, i32 %shl.i15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %10) #8, !srcloc !58
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %write = getelementptr inbounds %struct.console, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @altera_uart_earlycon_write, ptr %write, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @altera_uart_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @altera_uart_platform_driver) #8
  tail call void @uart_unregister_driver(ptr noundef nonnull @altera_uart_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_uart_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @uart_register_driver(ptr noundef nonnull @altera_uart_driver) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @altera_uart_platform_driver, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @uart_unregister_driver(ptr noundef nonnull @altera_uart_driver) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_console(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @altera_uart_console_write(ptr nocapture noundef readonly %co, ptr noundef %s, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index, align 2
  %conv = sext i16 %1 to i32
  %add.ptr = getelementptr %struct.altera_uart, ptr @altera_uart_ports, i32 %conv
  tail call void @uart_console_write(ptr noundef %add.ptr, ptr noundef %s, i32 noundef %count, ptr noundef nonnull @altera_uart_console_putc) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_uart_console_setup(ptr noundef %co, ptr noundef %options) #0 section ".init.text" align 64 {
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
  store i32 115200, ptr %baud, align 4
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
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %5)
  %6 = icmp ugt i16 %5, 3
  br i1 %6, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv22 = zext i16 %5 to i32
  %arrayidx = getelementptr [4 x %struct.altera_uart], ptr @altera_uart_ports, i32 0, i32 %conv22
  %membase = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 2
  %7 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %tobool10.not = icmp eq ptr %options, null
  br i1 %tobool10.not, label %if.end9.if.end12_crit_edge, label %if.then11

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  call void @uart_parse_options(ptr noundef nonnull %options, ptr noundef nonnull %baud, ptr noundef nonnull %parity, ptr noundef nonnull %bits, ptr noundef nonnull %flow) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9.if.end12_crit_edge
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
  %call = call i32 @uart_set_options(ptr noundef %arrayidx, ptr noundef %co, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end12 ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flow) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parity) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %baud) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @altera_uart_console_putc(ptr nocapture noundef readonly %port, i32 noundef %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %2 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %regshift.i, align 1
  %conv.i11 = zext i8 %3 to i32
  %shl.i12 = shl i32 8, %conv.i11
  %add.ptr.i13 = getelementptr i8, ptr %1, i32 %shl.i12
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #8, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !60
  %5 = and i32 %4, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not14 = icmp eq i32 %5, 0
  br i1 %tobool.not14, label %entry.do.end_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !61
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !62
  %6 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i, align 4
  %8 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %9 to i32
  %shl.i = shl i32 8, %conv.i
  %add.ptr.i = getelementptr i8, ptr %7, i32 %shl.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !60
  %11 = and i32 %10, 1073741824
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %do.end.do.end_crit_edge, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !57
  tail call void @arm_heavy_mb() #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %c) #8
  %13 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i, align 4
  %15 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %regshift.i, align 1
  %conv.i8 = zext i8 %16 to i32
  %shl.i9 = shl i32 4, %conv.i8
  %add.ptr.i10 = getelementptr i8, ptr %14, i32 %shl.i9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %12) #8, !srcloc !58
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @altera_uart_earlycon_write(ptr nocapture noundef readonly %co, ptr noundef %s, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 13
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %port = getelementptr inbounds %struct.earlycon_device, ptr %1, i32 0, i32 1
  tail call void @uart_console_write(ptr noundef %port, ptr noundef %s, i32 noundef %count, ptr noundef nonnull @altera_uart_console_putc) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_uart_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %for.body.preheader, label %if.end5

for.body.preheader:                               ; preds = %entry
  %4 = load i32, ptr getelementptr inbounds ([4 x %struct.altera_uart], ptr @altera_uart_ports, i32 0, i32 0, i32 0, i32 43), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp3 = icmp eq i32 %4, 0
  br i1 %cmp3, label %for.body.preheader.if.end9_crit_edge, label %for.inc

for.body.preheader.if.end9_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

for.inc:                                          ; preds = %for.body.preheader
  %5 = load i32, ptr getelementptr inbounds ([4 x %struct.altera_uart], ptr @altera_uart_ports, i32 0, i32 1, i32 0, i32 43), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3.1 = icmp eq i32 %5, 0
  br i1 %cmp3.1, label %for.inc.if.end9_crit_edge, label %for.inc.1

for.inc.if.end9_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

for.inc.1:                                        ; preds = %for.inc
  %6 = load i32, ptr getelementptr inbounds ([4 x %struct.altera_uart], ptr @altera_uart_ports, i32 0, i32 2, i32 0, i32 43), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp3.2 = icmp eq i32 %6, 0
  br i1 %cmp3.2, label %for.inc.1.if.end9_crit_edge, label %for.inc.2

for.inc.1.if.end9_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

for.inc.2:                                        ; preds = %for.inc.1
  %7 = load i32, ptr getelementptr inbounds ([4 x %struct.altera_uart], ptr @altera_uart_ports, i32 0, i32 3, i32 0, i32 43), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3.3 = icmp eq i32 %7, 0
  br i1 %cmp3.3, label %for.inc.2.if.end9_crit_edge, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.2.if.end9_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %8 = icmp ugt i32 %3, 3
  br i1 %8, label %if.end5.cleanup_crit_edge, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end5.if.end9_crit_edge, %for.inc.2.if.end9_crit_edge, %for.inc.1.if.end9_crit_edge, %for.inc.if.end9_crit_edge, %for.body.preheader.if.end9_crit_edge
  %i.1125 = phi i32 [ %3, %if.end5.if.end9_crit_edge ], [ 3, %for.inc.2.if.end9_crit_edge ], [ 2, %for.inc.1.if.end9_crit_edge ], [ 1, %for.inc.if.end9_crit_edge ], [ 0, %for.body.preheader.if.end9_crit_edge ]
  %arrayidx10 = getelementptr [4 x %struct.altera_uart], ptr @altera_uart_ports, i32 0, i32 %i.1125
  %call12 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %tobool.not = icmp eq ptr %call12, null
  br i1 %tobool.not, label %if.else, label %if.end9.if.end21_crit_edge

if.end9.if.end21_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.else:                                          ; preds = %if.end9
  %tobool15.not = icmp eq ptr %1, null
  br i1 %tobool15.not, label %if.else.cleanup_crit_edge, label %if.else.if.end21_crit_edge

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21:                                         ; preds = %if.else.if.end21_crit_edge, %if.end9.if.end21_crit_edge
  %.sink126 = phi ptr [ %call12, %if.end9.if.end21_crit_edge ], [ %1, %if.else.if.end21_crit_edge ]
  %9 = ptrtoint ptr %.sink126 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %.sink126, align 4
  %mapbase18 = getelementptr inbounds %struct.uart_port, ptr %arrayidx10, i32 0, i32 43
  %11 = ptrtoint ptr %mapbase18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %mapbase18, align 4
  %call22 = tail call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call22)
  %cmp23 = icmp sgt i32 %call22, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call22)
  %cmp24.not = icmp eq i32 %call22, -6
  %or.cond110 = or i1 %cmp23, %cmp24.not
  br i1 %or.cond110, label %if.end26, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp27 = icmp sgt i32 %call22, 0
  br i1 %cmp27, label %if.end35, label %if.else29

if.else29:                                        ; preds = %if.end26
  %tobool30.not = icmp eq ptr %1, null
  br i1 %tobool30.not, label %if.else29.if.else39_crit_edge, label %if.end35.thread118

if.else29.if.else39_crit_edge:                    ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else39

if.end35.thread118:                               ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #10
  %irq32 = getelementptr inbounds %struct.altera_uart_platform_uart, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %irq32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq32, align 4
  %irq33 = getelementptr inbounds %struct.uart_port, ptr %arrayidx10, i32 0, i32 20
  %14 = ptrtoint ptr %irq33 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %irq33, align 4
  br label %if.then37

if.end35:                                         ; preds = %if.end26
  %irq = getelementptr inbounds %struct.uart_port, ptr %arrayidx10, i32 0, i32 20
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call22, ptr %irq, align 4
  %tobool36.not = icmp eq ptr %1, null
  br i1 %tobool36.not, label %if.end35.if.else39_crit_edge, label %if.end35.if.then37_crit_edge

if.end35.if.then37_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

if.end35.if.else39_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else39

if.then37:                                        ; preds = %if.end35.if.then37_crit_edge, %if.end35.thread118
  %uartclk = getelementptr inbounds %struct.altera_uart_platform_uart, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %uartclk, align 4
  %uartclk38 = getelementptr inbounds %struct.uart_port, ptr %arrayidx10, i32 0, i32 22
  %18 = ptrtoint ptr %uartclk38 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %uartclk38, align 4
  br label %if.end46

if.else39:                                        ; preds = %if.end35.if.else39_crit_edge, %if.else29.if.else39_crit_edge
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %19 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node, align 8
  %uartclk41 = getelementptr inbounds %struct.uart_port, ptr %arrayidx10, i32 0, i32 22
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %20, ptr noundef nonnull @.str.1, ptr noundef %uartclk41, i32 noundef 1, i32 noundef 0) #8
  %21 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool43.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool43.not, label %if.else39.if.end46_crit_edge, label %if.else39.cleanup_crit_edge

if.else39.cleanup_crit_edge:                      ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else39.if.end46_crit_edge:                     ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.end46:                                         ; preds = %if.else39.if.end46_crit_edge, %if.then37
  %tobool36.not116 = phi i1 [ true, %if.else39.if.end46_crit_edge ], [ false, %if.then37 ]
  %mapbase47 = getelementptr inbounds %struct.uart_port, ptr %arrayidx10, i32 0, i32 43
  %22 = ptrtoint ptr %mapbase47 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mapbase47, align 4
  %call48 = tail call ptr @ioremap(i32 noundef %23, i32 noundef 32) #8
  %membase = getelementptr inbounds %struct.uart_port, ptr %arrayidx10, i32 0, i32 2
  %24 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call48, ptr %membase, align 4
  %tobool50.not = icmp eq ptr %call48, null
  br i1 %tobool50.not, label %if.end46.cleanup_crit_edge, label %if.end52

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end52:                                         ; preds = %if.end46
  br i1 %tobool36.not116, label %if.end52.if.end57_crit_edge, label %if.then54

if.end52.if.end57_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %bus_shift = getelementptr inbounds %struct.altera_uart_platform_uart, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %bus_shift to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bus_shift, align 4
  %conv = trunc i32 %26 to i8
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %if.end52.if.end57_crit_edge
  %conv.sink = phi i8 [ %conv, %if.then54 ], [ 0, %if.end52.if.end57_crit_edge ]
  %27 = getelementptr inbounds %struct.uart_port, ptr %arrayidx10, i32 0, i32 25
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv.sink, ptr %27, align 1
  %line = getelementptr inbounds %struct.uart_port, ptr %arrayidx10, i32 0, i32 41
  %29 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %i.1125, ptr %line, align 4
  %type = getelementptr inbounds %struct.uart_port, ptr %arrayidx10, i32 0, i32 38
  %30 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 92, ptr %type, align 4
  %iotype = getelementptr inbounds %struct.uart_port, ptr %arrayidx10, i32 0, i32 26
  %31 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 2, ptr %iotype, align 2
  %ops = getelementptr inbounds %struct.uart_port, ptr %arrayidx10, i32 0, i32 39
  %32 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @altera_uart_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.uart_port, ptr %arrayidx10, i32 0, i32 33
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 268435456, ptr %flags, align 4
  %dev59 = getelementptr inbounds %struct.uart_port, ptr %arrayidx10, i32 0, i32 45
  %34 = ptrtoint ptr %dev59 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %dev, ptr %dev59, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %35 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %arrayidx10, ptr %driver_data.i.i, align 4
  %call60 = tail call i32 @uart_add_one_port(ptr noundef nonnull @altera_uart_driver, ptr noundef %arrayidx10) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.end46.cleanup_crit_edge, %if.else39.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end57 ], [ -22, %if.end5.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ %call22, %if.end21.cleanup_crit_edge ], [ %21, %if.else39.cleanup_crit_edge ], [ -12, %if.end46.cleanup_crit_edge ], [ -22, %for.inc.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_uart_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @altera_uart_driver, ptr noundef nonnull %1) #8
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 43
  %2 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %mapbase, align 4
  %membase = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase, align 4
  tail call void @iounmap(ptr noundef %4) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_uart_tx_empty(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %2 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %3 to i32
  %shl.i = shl i32 8, %conv.i
  %add.ptr.i = getelementptr i8, ptr %1, i32 %shl.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !59
  %5 = lshr i32 %4, 29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !60
  %and.lobit = and i32 %5, 1
  ret i32 %and.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @altera_uart_set_mctrl(ptr nocapture noundef %port, i32 noundef %sigs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sigs1 = getelementptr inbounds %struct.altera_uart, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %sigs1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %sigs, ptr %sigs1, align 4
  %imr3 = getelementptr inbounds %struct.altera_uart, ptr %port, i32 0, i32 3
  %1 = ptrtoint ptr %imr3 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %imr3, align 4
  %3 = and i16 %2, -2049
  %4 = trunc i32 %sigs to i16
  %5 = shl i16 %4, 9
  %6 = and i16 %5, 2048
  %.sink = or i16 %3, %6
  store i16 %.sink, ptr %imr3, align 4
  %irq.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %7 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  %9 = and i16 %.sink, 2560
  %spec.select.i = select i1 %tobool.not.i, i16 %9, i16 %.sink
  %conv4.i = zext i16 %spec.select.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !57
  tail call void @arm_heavy_mb() #8
  %10 = tail call i32 @llvm.bswap.i32(i32 %conv4.i) #8
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %11 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i.i, align 4
  %regshift.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %13 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %regshift.i.i, align 1
  %conv.i.i = zext i8 %14 to i32
  %shl.i.i = shl i32 12, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %shl.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %10) #8, !srcloc !58
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_uart_get_mctrl(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %2 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %3 to i32
  %shl.i = shl i32 8, %conv.i
  %add.ptr.i = getelementptr i8, ptr %1, i32 %shl.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !59
  %5 = lshr i32 %4, 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !60
  %6 = and i32 %5, 32
  %sigs1 = getelementptr inbounds %struct.altera_uart, ptr %port, i32 0, i32 2
  %7 = ptrtoint ptr %sigs1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sigs1, align 4
  %and2 = and i32 %8, 4
  %or = or i32 %and2, %6
  ret i32 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @altera_uart_stop_tx(ptr nocapture noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %imr = getelementptr inbounds %struct.altera_uart, ptr %port, i32 0, i32 3
  %0 = ptrtoint ptr %imr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %imr, align 4
  %2 = and i16 %1, -65
  store i16 %2, ptr %imr, align 4
  %irq.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %3 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  %5 = and i16 %1, 2560
  %spec.select.i = select i1 %tobool.not.i, i16 %5, i16 %2
  %conv4.i = zext i16 %spec.select.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !57
  tail call void @arm_heavy_mb() #8
  %6 = tail call i32 @llvm.bswap.i32(i32 %conv4.i) #8
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %7 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i.i, align 4
  %regshift.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %9 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %regshift.i.i, align 1
  %conv.i.i = zext i8 %10 to i32
  %shl.i.i = shl i32 12, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %shl.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %6) #8, !srcloc !58
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @altera_uart_start_tx(ptr nocapture noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %imr = getelementptr inbounds %struct.altera_uart, ptr %port, i32 0, i32 3
  %0 = ptrtoint ptr %imr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %imr, align 4
  %2 = or i16 %1, 64
  store i16 %2, ptr %imr, align 4
  %irq.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %3 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  %5 = and i16 %1, 2560
  %spec.select.i = select i1 %tobool.not.i, i16 %5, i16 %2
  %conv4.i = zext i16 %spec.select.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !57
  tail call void @arm_heavy_mb() #8
  %6 = tail call i32 @llvm.bswap.i32(i32 %conv4.i) #8
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %7 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i.i, align 4
  %regshift.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %9 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %regshift.i.i, align 1
  %conv.i.i = zext i8 %10 to i32
  %shl.i.i = shl i32 12, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %shl.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %6) #8, !srcloc !58
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @altera_uart_stop_rx(ptr nocapture noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %imr = getelementptr inbounds %struct.altera_uart, ptr %port, i32 0, i32 3
  %0 = ptrtoint ptr %imr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %imr, align 4
  %2 = and i16 %1, -129
  store i16 %2, ptr %imr, align 4
  %irq.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %3 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  %5 = and i16 %1, 2560
  %spec.select.i = select i1 %tobool.not.i, i16 %5, i16 %2
  %conv4.i = zext i16 %spec.select.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !57
  tail call void @arm_heavy_mb() #8
  %6 = tail call i32 @llvm.bswap.i32(i32 %conv4.i) #8
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %7 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i.i, align 4
  %regshift.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %9 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %regshift.i.i, align 1
  %conv.i.i = zext i8 %10 to i32
  %shl.i.i = shl i32 12, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %shl.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %6) #8, !srcloc !58
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @altera_uart_break_ctl(ptr noundef %port, i32 noundef %break_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %break_state)
  %cmp6 = icmp eq i32 %break_state, -1
  %imr = getelementptr inbounds %struct.altera_uart, ptr %port, i32 0, i32 3
  %0 = ptrtoint ptr %imr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %imr, align 4
  %2 = and i16 %1, -513
  %masksel = select i1 %cmp6, i16 512, i16 0
  %.sink = or i16 %2, %masksel
  store i16 %.sink, ptr %imr, align 4
  %irq.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %3 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  %5 = and i16 %.sink, 2560
  %spec.select.i = select i1 %tobool.not.i, i16 %5, i16 %.sink
  %conv4.i = zext i16 %spec.select.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !57
  tail call void @arm_heavy_mb() #8
  %6 = tail call i32 @llvm.bswap.i32(i32 %conv4.i) #8
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %7 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i.i, align 4
  %regshift.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %9 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %regshift.i.i, align 1
  %conv.i.i = zext i8 %10 to i32
  %shl.i.i = shl i32 12, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %shl.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %6) #8, !srcloc !58
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_uart_startup(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tmr = getelementptr inbounds %struct.altera_uart, ptr %port, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %tmr, ptr noundef nonnull @altera_uart_timer, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @altera_uart_startup.__key) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %timeout1.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 37
  %3 = ptrtoint ptr %timeout1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %timeout1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %cmp.i = icmp sgt i32 %4, 6
  %div.i = sdiv i32 %4, 2
  %sub.i = add nsw i32 %div.i, -2
  %cond.i = select i1 %cmp.i, i32 %sub.i, i32 1
  %add = add i32 %cond.i, %2
  %call2 = tail call i32 @mod_timer(ptr noundef %tmr, i32 noundef %add) #8
  br label %do.body15

if.else:                                          ; preds = %entry
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %1, ptr noundef nonnull @altera_uart_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %port) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.else.do.body15_crit_edge, label %do.end9

if.else.do.body15_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body15

do.end9:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %line = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %5 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %line, align 4
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %6, i32 noundef %8) #11
  br label %cleanup24

do.body15:                                        ; preds = %if.else.do.body15_crit_edge, %do.body
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #8
  %imr = getelementptr inbounds %struct.altera_uart, ptr %port, i32 0, i32 3
  %9 = ptrtoint ptr %imr to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 128, ptr %imr, align 4
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  %conv4.i = select i1 %tobool.not.i, i32 0, i32 -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !57
  tail call void @arm_heavy_mb() #8
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %12 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i.i, align 4
  %regshift.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %14 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %regshift.i.i, align 1
  %conv.i.i = zext i8 %15 to i32
  %shl.i.i = shl i32 12, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %shl.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %conv4.i) #8, !srcloc !58
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call18) #8
  br label %cleanup24

cleanup24:                                        ; preds = %do.body15, %do.end9
  %retval.1 = phi i32 [ 0, %do.body15 ], [ %call.i, %do.end9 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @altera_uart_shutdown(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #8
  %imr = getelementptr inbounds %struct.altera_uart, ptr %port, i32 0, i32 3
  %0 = ptrtoint ptr %imr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %imr, align 4
  %irq.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !57
  tail call void @arm_heavy_mb() #8
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %1 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %membase.i.i, align 4
  %regshift.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %3 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %regshift.i.i, align 1
  %conv.i.i = zext i8 %4 to i32
  %shl.i.i = shl i32 12, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %shl.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !58
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call3) #8
  %5 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call ptr @free_irq(i32 noundef %6, ptr noundef %port) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tmr = getelementptr inbounds %struct.altera_uart, ptr %port, i32 0, i32 1
  %call9 = tail call i32 @del_timer_sync(ptr noundef %tmr) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @altera_uart_set_termios(ptr noundef %port, ptr noundef %termios, ptr noundef %old) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @uart_get_baud_rate(ptr noundef %port, ptr noundef %termios, ptr noundef %old, i32 noundef 0, i32 noundef 4000000) #8
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %0 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %uartclk, align 4
  %tobool.not = icmp eq ptr %old, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @tty_termios_copy_hw(ptr noundef %termios, ptr noundef nonnull %old) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %div = udiv i32 %1, %call
  tail call void @tty_termios_encode_baud_rate(ptr noundef %termios, i32 noundef %call, i32 noundef %call) #8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #8
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %2 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c_cflag, align 4
  tail call void @uart_update_timeout(ptr noundef %port, i32 noundef %3, i32 noundef %call) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !57
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %div) #8
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %5 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i, align 4
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %7 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %8 to i32
  %shl.i = shl i32 16, %conv.i
  %add.ptr.i = getelementptr i8, ptr %6, i32 %shl.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #8, !srcloc !58
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call3) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @altera_uart_type(ptr nocapture noundef readonly %port) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 92, i32 %1)
  %cmp = icmp eq i32 %1, 92
  %cond = select i1 %cmp, ptr @.str.6, ptr null
  ret ptr %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @altera_uart_release_port(ptr nocapture noundef %port) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @altera_uart_request_port(ptr nocapture noundef readnone %port) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @altera_uart_config_port(ptr nocapture noundef %port, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 92, ptr %type, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !57
  tail call void @arm_heavy_mb() #8
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %1 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %membase.i, align 4
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %3 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %4 to i32
  %shl.i = shl i32 12, %conv.i
  %add.ptr.i = getelementptr i8, ptr %2, i32 %shl.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !57
  tail call void @arm_heavy_mb() #8
  %5 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i, align 4
  %7 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %regshift.i, align 1
  %conv.i5 = zext i8 %8 to i32
  %shl.i6 = shl i32 8, %conv.i5
  %add.ptr.i7 = getelementptr i8, ptr %6, i32 %shl.i6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 0) #8, !srcloc !58
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @altera_uart_verify_port(ptr nocapture noundef readnone %port, ptr nocapture noundef readonly %ser) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ser to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ser, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %switch.selectcmp.case1 = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 92, i32 %1)
  %switch.selectcmp.case2 = icmp eq i32 %1, 92
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %2 = select i1 %switch.selectcmp, i32 0, i32 -22
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @altera_uart_poll_put_char(ptr nocapture noundef readonly %port, i8 noundef zeroext %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %2 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %regshift.i, align 1
  %conv.i11 = zext i8 %3 to i32
  %shl.i12 = shl i32 8, %conv.i11
  %add.ptr.i13 = getelementptr i8, ptr %1, i32 %shl.i12
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #8, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !60
  %5 = and i32 %4, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not14 = icmp eq i32 %5, 0
  br i1 %tobool.not14, label %entry.do.end_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !63
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !64
  %6 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i, align 4
  %8 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %9 to i32
  %shl.i = shl i32 8, %conv.i
  %add.ptr.i = getelementptr i8, ptr %7, i32 %shl.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !60
  %11 = and i32 %10, 1073741824
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %do.end.do.end_crit_edge, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  %conv = zext i8 %c to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !57
  tail call void @arm_heavy_mb() #8
  %12 = shl nuw i32 %conv, 24
  %13 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i, align 4
  %15 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %regshift.i, align 1
  %conv.i8 = zext i8 %16 to i32
  %shl.i9 = shl i32 4, %conv.i8
  %add.ptr.i10 = getelementptr i8, ptr %14, i32 %shl.i9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %12) #8, !srcloc !58
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_uart_poll_get_char(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %2 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %regshift.i, align 1
  %conv.i10 = zext i8 %3 to i32
  %shl.i11 = shl i32 8, %conv.i10
  %add.ptr.i12 = getelementptr i8, ptr %1, i32 %shl.i11
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #8, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !60
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %tobool.not13 = icmp sgt i32 %4, -1
  br i1 %tobool.not13, label %entry.do.end_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !66
  %5 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i, align 4
  %7 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %8 to i32
  %shl.i = shl i32 8, %conv.i
  %add.ptr.i = getelementptr i8, ptr %6, i32 %shl.i
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !60
  %tobool.not = icmp sgt i32 %9, -1
  br i1 %tobool.not, label %do.end.do.end_crit_edge, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  %10 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !59
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !60
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @altera_uart_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -360
  %call = tail call i32 @altera_uart_interrupt(i32 noundef 0, ptr noundef %add.ptr)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %timeout1.i = getelementptr i8, ptr %t, i32 -144
  %1 = ptrtoint ptr %timeout1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %timeout1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %2)
  %cmp.i = icmp sgt i32 %2, 6
  %div.i = sdiv i32 %2, 2
  %sub.i = add nsw i32 %div.i, -2
  %cond.i = select i1 %cmp.i, i32 %sub.i, i32 1
  %add = add i32 %cond.i, %0
  %call3 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_uart_interrupt(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 25
  %2 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %3 to i32
  %shl.i = shl i32 8, %conv.i
  %add.ptr.i = getelementptr i8, ptr %1, i32 %shl.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !59
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !60
  %imr = getelementptr inbounds %struct.altera_uart, ptr %data, i32 0, i32 3
  %6 = ptrtoint ptr %imr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %imr, align 4
  %conv = zext i16 %7 to i32
  %and = and i32 %5, %conv
  tail call void @_raw_spin_lock(ptr noundef %data) #8
  %and1 = and i32 %and, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i, align 4
  %10 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %regshift.i, align 1
  %conv.i114.i = zext i8 %11 to i32
  %shl.i115.i = shl i32 8, %conv.i114.i
  %add.ptr.i116.i = getelementptr i8, ptr %9, i32 %shl.i115.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i116.i) #8, !srcloc !59
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !60
  %and118.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118.i)
  %tobool.not119.i = icmp eq i32 %and118.i, 0
  br i1 %tobool.not119.i, label %if.then.altera_uart_rx_chars.exit_crit_edge, label %while.body.lr.ph.i

if.then.altera_uart_rx_chars.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %altera_uart_rx_chars.exit

while.body.lr.ph.i:                               ; preds = %if.then
  %rx.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 31, i32 4
  %brk.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 31, i32 9
  %state1.i.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 30
  %handle_break.i.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 17
  %has_sysrq.i.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 48
  %cons.i.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 32
  %line.i.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 41
  %sysrq.i.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 46
  %flags.i.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 33
  %parity.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 31, i32 8
  %overrun.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 31, i32 7
  %frame.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 31, i32 6
  %read_status_mask.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 28
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %14 = phi i32 [ %13, %while.body.lr.ph.i ], [ %67, %while.cond.backedge.i.while.body.i_crit_edge ]
  %conv2120.i = and i32 %14, 65535
  %15 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8, !srcloc !59
  %18 = lshr i32 %17, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !60
  %19 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx.i, align 4
  %inc.i = add i32 %20, 1
  store i32 %inc.i, ptr %rx.i, align 4
  %and6.i = and i32 %14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %while.body.i.if.end62.i_crit_edge, label %if.then.i

while.body.i.if.end62.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62.i

if.then.i:                                        ; preds = %while.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !57
  tail call void @arm_heavy_mb() #8
  %21 = tail call i32 @llvm.bswap.i32(i32 %conv2120.i) #8
  %22 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i, align 4
  %24 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %regshift.i, align 1
  %conv.i100.i = zext i8 %25 to i32
  %shl.i101.i = shl i32 8, %conv.i100.i
  %add.ptr.i102.i = getelementptr i8, ptr %23, i32 %shl.i101.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102.i, i32 %21) #8, !srcloc !58
  %and10.i = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.else.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.then.i
  %26 = ptrtoint ptr %brk.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %brk.i, align 4
  %inc14.i = add i32 %27, 1
  store i32 %inc14.i, ptr %brk.i, align 4
  %28 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %state1.i.i, align 4
  %30 = ptrtoint ptr %handle_break.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %handle_break.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i, label %if.then12.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then12.i.if.end.i.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %31(ptr noundef %data) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then12.i.if.end.i.i_crit_edge
  %32 = ptrtoint ptr %has_sysrq.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %has_sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool3.not.i.i = icmp eq i8 %33, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end15.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.if.end15.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %34 = ptrtoint ptr %cons.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cons.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %35, null
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.if.end15.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.if.end15.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %index.i.i = getelementptr inbounds %struct.console, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %index.i.i, align 2
  %conv7.i.i = sext i16 %37 to i32
  %38 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %line.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %conv7.i.i)
  %cmp.i.i = icmp eq i32 %39, %conv7.i.i
  br i1 %cmp.i.i, label %if.then9.i.i, label %land.lhs.true5.i.i.if.end15.i.i_crit_edge

land.lhs.true5.i.i.if.end15.i.i_crit_edge:        ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i.i

if.then9.i.i:                                     ; preds = %land.lhs.true5.i.i
  %40 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool10.not.i.i = icmp eq i32 %41, 0
  br i1 %tobool10.not.i.i, label %uart_handle_break.exit.i, label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.end13.i.i, %land.lhs.true5.i.i.if.end15.i.i_crit_edge, %land.lhs.true.i.i.if.end15.i.i_crit_edge, %if.end.i.i.if.end15.i.i_crit_edge
  %43 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool16.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end15.i.i.if.end41.i_crit_edge, label %if.then17.i.i

if.end15.i.i.if.end41.i_crit_edge:                ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

if.then17.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %tty.i.i = getelementptr inbounds %struct.tty_port, ptr %29, i32 0, i32 1
  %45 = ptrtoint ptr %tty.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tty.i.i, align 4
  tail call void @do_SAK(ptr noundef %46) #8
  br label %if.end41.i

uart_handle_break.exit.i:                         ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %47, 500
  %48 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add.i.i, ptr %sysrq.i.i, align 4
  br label %while.cond.backedge.i

if.else.i:                                        ; preds = %if.then.i
  %and19.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.else24.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %parity.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %parity.i, align 4
  %inc23.i = add i32 %50, 1
  store i32 %inc23.i, ptr %parity.i, align 4
  br label %if.end41.i

if.else24.i:                                      ; preds = %if.else.i
  %and26.i = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.else31.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %overrun.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %overrun.i, align 4
  %inc30.i = add i32 %52, 1
  store i32 %inc30.i, ptr %overrun.i, align 4
  br label %if.end41.i

if.else31.i:                                      ; preds = %if.else24.i
  %and33.i = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %if.else31.i.if.end41.i_crit_edge, label %if.then35.i

if.else31.i.if.end41.i_crit_edge:                 ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

if.then35.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %frame.i, align 4
  %inc37.i = add i32 %54, 1
  store i32 %inc37.i, ptr %frame.i, align 4
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then35.i, %if.else31.i.if.end41.i_crit_edge, %if.then28.i, %if.then21.i, %if.then17.i.i, %if.end15.i.i.if.end41.i_crit_edge
  %55 = ptrtoint ptr %read_status_mask.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %read_status_mask.i, align 4
  %and43.i = and i32 %56, %conv2120.i
  %and46.i = and i32 %and43.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %if.else49.i, label %if.end41.i.if.end62.i_crit_edge

if.end41.i.if.end62.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62.i

if.else49.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  %and51.i = and i32 %and43.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp eq i32 %and51.i, 0
  %and56.i = and i32 %and43.i, 2
  %spec.select.i = select i1 %tobool52.not.i, i32 %and56.i, i32 3
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.else49.i, %if.end41.i.if.end62.i_crit_edge, %while.body.i.if.end62.i_crit_edge
  %flag.0.i = phi i32 [ 0, %while.body.i.if.end62.i_crit_edge ], [ 1, %if.end41.i.if.end62.i_crit_edge ], [ %spec.select.i, %if.else49.i ]
  %status.0.i = phi i32 [ %14, %while.body.i.if.end62.i_crit_edge ], [ %and43.i, %if.end41.i.if.end62.i_crit_edge ], [ %and43.i, %if.else49.i ]
  %57 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i104.i = icmp eq i32 %58, 0
  br i1 %tobool.not.i104.i, label %if.end62.i.if.end67.i_crit_edge, label %if.end.i105.i

if.end62.i.if.end67.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67.i

if.end.i105.i:                                    ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %17)
  %tobool1.not.i.i = icmp ult i32 %17, 16777216
  br i1 %tobool1.not.i.i, label %if.end.i105.i.uart_handle_sysrq_char.exit.thread123.i_crit_edge, label %land.lhs.true.i107.i

if.end.i105.i.uart_handle_sysrq_char.exit.thread123.i_crit_edge: ; preds = %if.end.i105.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uart_handle_sysrq_char.exit.thread123.i

land.lhs.true.i107.i:                             ; preds = %if.end.i105.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %59 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %59, %58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i106.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i106.i, label %if.then3.i.i, label %land.lhs.true.i107.i.uart_handle_sysrq_char.exit.thread123.i_crit_edge

land.lhs.true.i107.i.uart_handle_sysrq_char.exit.thread123.i_crit_edge: ; preds = %land.lhs.true.i107.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uart_handle_sysrq_char.exit.thread123.i

if.then3.i.i:                                     ; preds = %land.lhs.true.i107.i
  %call.i.i = tail call i32 @sysrq_mask() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i108.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i108.i, label %if.end7.i.i, label %uart_handle_sysrq_char.exit.i

if.end7.i.i:                                      ; preds = %if.then3.i.i
  %call8.i.i = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %data, i32 noundef %18) #8
  br i1 %call8.i.i, label %if.end7.i.i.while.cond.backedge.i_crit_edge, label %if.end7.i.i.uart_handle_sysrq_char.exit.thread123.i_crit_edge

if.end7.i.i.uart_handle_sysrq_char.exit.thread123.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uart_handle_sysrq_char.exit.thread123.i

if.end7.i.i.while.cond.backedge.i_crit_edge:      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i

uart_handle_sysrq_char.exit.thread123.i:          ; preds = %if.end7.i.i.uart_handle_sysrq_char.exit.thread123.i_crit_edge, %land.lhs.true.i107.i.uart_handle_sysrq_char.exit.thread123.i_crit_edge, %if.end.i105.i.uart_handle_sysrq_char.exit.thread123.i_crit_edge
  %60 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %if.end67.i

uart_handle_sysrq_char.exit.i:                    ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @handle_sysrq(i32 noundef %18) #8
  %61 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %while.cond.backedge.i

if.end67.i:                                       ; preds = %uart_handle_sysrq_char.exit.thread123.i, %if.end62.i.if.end67.i_crit_edge
  %conv68.i = and i32 %status.0.i, 65535
  tail call void @uart_insert_char(ptr noundef %data, i32 noundef %conv68.i, i32 noundef 8, i32 noundef %18, i32 noundef %flag.0.i) #8
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end67.i, %uart_handle_sysrq_char.exit.i, %if.end7.i.i.while.cond.backedge.i_crit_edge, %uart_handle_break.exit.i
  %62 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %membase.i, align 4
  %64 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %regshift.i, align 1
  %conv.i.i = zext i8 %65 to i32
  %shl.i.i = shl i32 8, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %63, i32 %shl.i.i
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !59
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !60
  %and.i = and i32 %67, 128
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.cond.backedge.i.altera_uart_rx_chars.exit_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.cond.backedge.i.altera_uart_rx_chars.exit_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %altera_uart_rx_chars.exit

altera_uart_rx_chars.exit:                        ; preds = %while.cond.backedge.i.altera_uart_rx_chars.exit_crit_edge, %if.then.altera_uart_rx_chars.exit_crit_edge
  %state.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 30
  %68 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %state.i, align 4
  tail call void @tty_flip_buffer_push(ptr noundef %69) #8
  br label %if.end

if.end:                                           ; preds = %altera_uart_rx_chars.exit, %entry.if.end_crit_edge
  %and2 = and i32 %and, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %if.end
  %state.i15 = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 30
  %70 = ptrtoint ptr %state.i15 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %state.i15, align 4
  %xmit2.i = getelementptr inbounds %struct.uart_state, ptr %71, i32 0, i32 2
  %x_char.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 24
  %72 = ptrtoint ptr %x_char.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %x_char.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i16 = icmp eq i8 %73, 0
  br i1 %tobool.not.i16, label %while.cond.preheader.i, label %if.then.i25

while.cond.preheader.i:                           ; preds = %if.then4
  %head.i = getelementptr inbounds %struct.uart_state, ptr %71, i32 0, i32 2, i32 1
  %74 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %membase.i, align 4
  %76 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %regshift.i, align 1
  %conv.i5765.i = zext i8 %77 to i32
  %shl.i5866.i = shl i32 8, %conv.i5765.i
  %add.ptr.i5967.i = getelementptr i8, ptr %75, i32 %shl.i5866.i
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5967.i) #8, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !60
  %79 = and i32 %78, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool5.not68.i = icmp eq i32 %79, 0
  br i1 %tobool5.not68.i, label %while.cond.preheader.i.while.end.i_crit_edge, label %while.body.lr.ph.i17

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.lr.ph.i17:                             ; preds = %while.cond.preheader.i
  %tail.i = getelementptr inbounds %struct.uart_state, ptr %71, i32 0, i32 2, i32 2
  %tx15.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 31, i32 5
  br label %while.body.i26

if.then.i25:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i18 = zext i8 %73 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !57
  tail call void @arm_heavy_mb() #8
  %80 = shl nuw i32 %conv.i18, 24
  %81 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %membase.i, align 4
  %83 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %regshift.i, align 1
  %conv.i.i21 = zext i8 %84 to i32
  %shl.i.i22 = shl i32 4, %conv.i.i21
  %add.ptr.i.i23 = getelementptr i8, ptr %82, i32 %shl.i.i22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i23, i32 %80) #8, !srcloc !58
  %85 = ptrtoint ptr %x_char.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %x_char.i, align 4
  %tx.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 31, i32 5
  %86 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %tx.i, align 4
  %inc.i24 = add i32 %87, 1
  store i32 %inc.i24, ptr %tx.i, align 4
  br label %if.end5

while.body.i26:                                   ; preds = %if.end8.i.while.body.i26_crit_edge, %while.body.lr.ph.i17
  %88 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %head.i, align 4
  %90 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %91)
  %cmp.i = icmp eq i32 %89, %91
  br i1 %cmp.i, label %while.body.i26.while.end.i_crit_edge, label %if.end8.i

while.body.i26.while.end.i_crit_edge:             ; preds = %while.body.i26
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.end8.i:                                        ; preds = %while.body.i26
  %92 = ptrtoint ptr %xmit2.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %xmit2.i, align 4
  %arrayidx.i = getelementptr i8, ptr %93, i32 %91
  %94 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx.i, align 1
  %conv10.i = zext i8 %95 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !57
  tail call void @arm_heavy_mb() #8
  %96 = shl nuw i32 %conv10.i, 24
  %97 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %membase.i, align 4
  %99 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %regshift.i, align 1
  %conv.i62.i = zext i8 %100 to i32
  %shl.i63.i = shl i32 4, %conv.i62.i
  %add.ptr.i64.i = getelementptr i8, ptr %98, i32 %shl.i63.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64.i, i32 %96) #8, !srcloc !58
  %101 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %tail.i, align 4
  %add.i = add i32 %102, 1
  %and12.i = and i32 %add.i, 4095
  store i32 %and12.i, ptr %tail.i, align 4
  %103 = ptrtoint ptr %tx15.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %tx15.i, align 4
  %inc16.i = add i32 %104, 1
  store i32 %inc16.i, ptr %tx15.i, align 4
  %105 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %membase.i, align 4
  %107 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %regshift.i, align 1
  %conv.i57.i = zext i8 %108 to i32
  %shl.i58.i = shl i32 8, %conv.i57.i
  %add.ptr.i59.i = getelementptr i8, ptr %106, i32 %shl.i58.i
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59.i) #8, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !60
  %110 = and i32 %109, 1073741824
  %tobool5.not.i = icmp eq i32 %110, 0
  br i1 %tobool5.not.i, label %if.end8.i.while.end.i_crit_edge, label %if.end8.i.while.body.i26_crit_edge

if.end8.i.while.body.i26_crit_edge:               ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i26

if.end8.i.while.end.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %if.end8.i.while.end.i_crit_edge, %while.body.i26.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %111 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %head.i, align 4
  %tail18.i = getelementptr inbounds %struct.uart_state, ptr %71, i32 0, i32 2, i32 2
  %113 = ptrtoint ptr %tail18.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %tail18.i, align 4
  %sub.i = sub i32 %112, %114
  %and19.i27 = and i32 %sub.i, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i27)
  %cmp20.i = icmp eq i32 %and19.i27, 0
  br i1 %cmp20.i, label %if.then22.i, label %while.end.i.if.end23.i_crit_edge

while.end.i.if.end23.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then22.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @uart_write_wakeup(ptr noundef %data) #8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then22.i, %while.end.i.if.end23.i_crit_edge
  %115 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %head.i, align 4
  %117 = ptrtoint ptr %tail18.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %tail18.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %116, i32 %118)
  %cmp26.i = icmp eq i32 %116, %118
  br i1 %cmp26.i, label %if.then28.i29, label %if.end23.i.if.end5_crit_edge

if.end23.i.if.end5_crit_edge:                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then28.i29:                                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  %119 = ptrtoint ptr %imr to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %imr, align 4
  %121 = and i16 %120, -65
  store i16 %121, ptr %imr, align 4
  %irq.i.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 20
  %122 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %irq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool.not.i.i28 = icmp eq i32 %123, 0
  %124 = and i16 %120, 2560
  %spec.select.i.i = select i1 %tobool.not.i.i28, i16 %124, i16 %121
  %conv4.i.i = zext i16 %spec.select.i.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !57
  tail call void @arm_heavy_mb() #8
  %125 = tail call i32 @llvm.bswap.i32(i32 %conv4.i.i) #8
  %126 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %membase.i, align 4
  %128 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %regshift.i, align 1
  %conv.i.i.i = zext i8 %129 to i32
  %shl.i.i.i = shl i32 12, %conv.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %127, i32 %shl.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %125) #8, !srcloc !58
  br label %if.end5

if.end5:                                          ; preds = %if.then28.i29, %if.end23.i.if.end5_crit_edge, %if.then.i25, %if.end.if.end5_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp ne i32 %and, 0
  %cond = zext i1 %tobool7.not to i32
  ret i32 %cond
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_insert_char(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_SAK(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_copy_hw(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !34, !36, !37, !38, !39, !40, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__initcall__kmod_altera_uart__227_496_altera_uart_console_initcon, !1, !"__initcall__kmod_altera_uart__227_496_altera_uart_console_initcon", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/altera_uart.c", i32 496, i32 1}
!2 = !{ptr @__UNIQUE_ID___earlycon_uart228, !3, !"__UNIQUE_ID___earlycon_uart228", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/altera_uart.c", i32 530, i32 1}
!4 = !{ptr @__initcall__kmod_altera_uart__229_670_altera_uart_init6, !5, !"__initcall__kmod_altera_uart__229_670_altera_uart_init6", i1 false, i1 false}
!5 = !{!"../drivers/tty/serial/altera_uart.c", i32 670, i32 1}
!6 = !{ptr @__exitcall_altera_uart_exit, !7, !"__exitcall_altera_uart_exit", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/altera_uart.c", i32 671, i32 1}
!8 = !{ptr @__UNIQUE_ID_description230, !9, !"__UNIQUE_ID_description230", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/altera_uart.c", i32 673, i32 1}
!10 = !{ptr @__UNIQUE_ID_author231, !11, !"__UNIQUE_ID_author231", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/altera_uart.c", i32 674, i32 1}
!12 = !{ptr @__UNIQUE_ID_file232, !13, !"__UNIQUE_ID_file232", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/altera_uart.c", i32 675, i32 1}
!14 = !{ptr @__UNIQUE_ID_license233, !13, !"__UNIQUE_ID_license233", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_alias234, !16, !"__UNIQUE_ID_alias234", i1 false, i1 false}
!16 = !{!"../drivers/tty/serial/altera_uart.c", i32 676, i32 1}
!17 = !{ptr @__UNIQUE_ID_alias235, !18, !"__UNIQUE_ID_alias235", i1 false, i1 false}
!18 = !{!"../drivers/tty/serial/altera_uart.c", i32 677, i32 1}
!19 = !{ptr @altera_uart_console, !20, !"altera_uart_console", i1 false, i1 false}
!20 = !{!"../drivers/tty/serial/altera_uart.c", i32 480, i32 23}
!21 = !{ptr @altera_uart_ports, !22, !"altera_uart_ports", i1 false, i1 false}
!22 = !{!"../drivers/tty/serial/altera_uart.c", i32 437, i32 27}
!23 = !{ptr @.str, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/tty/serial/altera_uart.c", i32 646, i32 12}
!25 = !{ptr @altera_uart_platform_driver, !26, !"altera_uart_platform_driver", i1 false, i1 false}
!26 = !{!"../drivers/tty/serial/altera_uart.c", i32 642, i32 31}
!27 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/tty/serial/altera_uart.c", i32 591, i32 49}
!29 = !{ptr @altera_uart_ops, !30, !"altera_uart_ops", i1 false, i1 false}
!30 = !{!"../drivers/tty/serial/altera_uart.c", i32 415, i32 30}
!31 = !{ptr @altera_uart_startup.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/tty/serial/altera_uart.c", i32 324, i32 3}
!33 = !{ptr @.str.2, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.3, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/tty/serial/altera_uart.c", i32 332, i32 4}
!36 = !{ptr @.str.4, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @altera_uart_startup._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @altera_uart_startup._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/tty/serial/altera_uart.c", i32 370, i32 44}
!42 = !{ptr @altera_uart_match, !43, !"altera_uart_match", i1 false, i1 false}
!43 = !{!"../drivers/tty/serial/altera_uart.c", i32 634, i32 34}
!44 = !{ptr @.str.7, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/tty/serial/altera_uart.c", i32 544, i32 14}
!46 = !{ptr @altera_uart_driver, !47, !"altera_uart_driver", i1 false, i1 false}
!47 = !{!"../drivers/tty/serial/altera_uart.c", i32 541, i32 27}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 2154091268}
!58 = !{i64 4214149}
!59 = !{i64 4214567}
!60 = !{i64 2154091032}
!61 = !{i64 2154108308}
!62 = !{i64 2154108150}
!63 = !{i64 2154108020}
!64 = !{i64 2154107862}
!65 = !{i64 2154107734}
!66 = !{i64 2154107576}
