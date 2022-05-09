; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/milbeaut_usio.c_pt.bc'
source_filename = "../drivers/tty/serial/milbeaut_usio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
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
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.earlycon_device = type { ptr, %struct.uart_port, [16 x i8], i32 }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
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
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.35 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.36 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }

@__initcall__kmod_milbeaut_usio__227_461_mlb_usio_console_initcon = internal global ptr @mlb_usio_console_init, section ".con_initcall.init", align 4
@__UNIQUE_ID___earlycon_mlb_usio228 = internal constant %struct.earlycon_id { [15 x i8] c"mlb_usio\00\00\00\00\00\00\00", i8 0, [128 x i8] c"socionext,milbeaut-usio-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mlb_usio_early_console_setup }, section "__earlycon_table", align 4
@mlb_usio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mlb_usio_probe, ptr @mlb_usio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mlb_usio_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@mlb_usio_uart_driver = internal global { %struct.uart_driver, [60 x i8] } { %struct.uart_driver { ptr null, ptr @.str.1, ptr @.str.19, i32 0, i32 0, i32 4, ptr @mlb_usio_console, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_milbeaut_usio__229_606_mlb_usio_init6 = internal global ptr @mlb_usio_init, section ".initcall6.init", align 4
@__exitcall_mlb_usio_exit = internal global ptr @mlb_usio_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author230 = internal constant [31 x i8] c"milbeaut_usio.author=SOCIONEXT\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [52 x i8] c"milbeaut_usio.description=MILBEAUT_USIO/UART Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [52 x i8] c"milbeaut_usio.file=drivers/tty/serial/milbeaut_usio\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [26 x i8] c"milbeaut_usio.license=GPL\00", section ".modinfo", align 1
@mlb_usio_console = internal global { %struct.console, [60 x i8] } { %struct.console { [16 x i8] c"ttyUSI\00\00\00\00\00\00\00\00\00\00", ptr @mlb_usio_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @mlb_usio_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @mlb_usio_uart_driver, ptr null }, [60 x i8] zeroinitializer }, align 32
@mlb_usio_ports = internal global { [4 x %struct.uart_port], [352 x i8] } zeroinitializer, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"auto-flow-control\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mlb-usio-uart\00", [18 x i8] zeroinitializer }, align 32
@mlb_usio_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,milbeaut-usio-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mlb_usio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 506, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Missing clock\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mlb_usio_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/tty/serial/milbeaut_usio.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlb_usio_probe._entry_ptr = internal global ptr @mlb_usio_probe._entry, section ".printk_index", align 4
@mlb_usio_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 511, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Clock enable failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@mlb_usio_probe._entry_ptr.9 = internal global ptr @mlb_usio_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"index\00", [26 x i8] zeroinitializer }, align 32
@mlb_usio_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 520, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Missing regs\0A\00", [18 x i8] zeroinitializer }, align 32
@mlb_usio_probe._entry_ptr.13 = internal global ptr @mlb_usio_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@mlb_usio_irq = internal global { [4 x [2 x i32]], [32 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@mlb_usio_ops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @mlb_usio_tx_empty, ptr @mlb_usio_set_mctrl, ptr @mlb_usio_get_mctrl, ptr @mlb_usio_stop_tx, ptr @mlb_usio_start_tx, ptr null, ptr null, ptr null, ptr @mlb_usio_stop_rx, ptr @mlb_usio_enable_ms, ptr @mlb_usio_break_ctl, ptr @mlb_usio_startup, ptr @mlb_usio_shutdown, ptr null, ptr @mlb_usio_set_termios, ptr null, ptr null, ptr @mlb_usio_type, ptr null, ptr null, ptr @mlb_usio_config_port, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@mlb_usio_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 545, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Adding port failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@mlb_usio_probe._entry_ptr.18 = internal global ptr @mlb_usio_probe._entry.16, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ttyUSI\00", [25 x i8] zeroinitializer }, align 32
@mlb_usio_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: uart registration failed: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mlb_usio_init\00", [18 x i8] zeroinitializer }, align 32
@mlb_usio_init._entry_ptr = internal global ptr @mlb_usio_init._entry, section ".printk_index", align 4
@mlb_usio_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.4, i32 593, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: drv registration failed: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@mlb_usio_init._entry_ptr.24 = internal global ptr @mlb_usio_init._entry.22, section ".printk_index", align 4
@switch.table.mlb_usio_set_termios = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 3, i32 0], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.25 = private unnamed_addr constant [16 x i8] c"mlb_usio_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 573, i32 31 }
@___asan_gen_.28 = private unnamed_addr constant [21 x i8] c"mlb_usio_uart_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 489, i32 28 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"mlb_usio_console\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 446, i32 23 }
@___asan_gen_.34 = private unnamed_addr constant [15 x i8] c"mlb_usio_ports\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 18, i32 25 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 438, i32 48 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 577, i32 13 }
@___asan_gen_.43 = private unnamed_addr constant [16 x i8] c"mlb_usio_dt_ids\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 567, i32 34 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 506, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 511, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 514, i32 42 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 520, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 527, i32 38 }
@___asan_gen_.82 = private unnamed_addr constant [13 x i8] c"mlb_usio_irq\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 22, i32 12 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 530, i32 38 }
@___asan_gen_.88 = private unnamed_addr constant [13 x i8] c"mlb_usio_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 385, i32 30 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 545, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 492, i32 14 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 587, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private constant [38 x i8] c"../drivers/tty/serial/milbeaut_usio.c\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 593, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [34 x i8] c"switch.table.mlb_usio_set_termios\00", align 1
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID___earlycon_mlb_usio228, ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_mlb_usio_exit, ptr @__initcall__kmod_milbeaut_usio__227_461_mlb_usio_console_initcon, ptr @__initcall__kmod_milbeaut_usio__229_606_mlb_usio_init6, ptr @mlb_usio_exit, ptr @mlb_usio_init._entry, ptr @mlb_usio_init._entry.22, ptr @mlb_usio_init._entry_ptr, ptr @mlb_usio_init._entry_ptr.24, ptr @mlb_usio_probe._entry, ptr @mlb_usio_probe._entry.11, ptr @mlb_usio_probe._entry.16, ptr @mlb_usio_probe._entry.7, ptr @mlb_usio_probe._entry_ptr, ptr @mlb_usio_probe._entry_ptr.13, ptr @mlb_usio_probe._entry_ptr.18, ptr @mlb_usio_probe._entry_ptr.9, ptr @mlb_usio_driver, ptr @mlb_usio_uart_driver, ptr @mlb_usio_console, ptr @mlb_usio_ports, ptr @.str, ptr @.str.1, ptr @mlb_usio_dt_ids, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @mlb_usio_irq, ptr @.str.15, ptr @mlb_usio_ops, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @switch.table.mlb_usio_set_termios], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlb_usio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlb_usio_uart_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlb_usio_console to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlb_usio_ports to i32), i32 1440, i32 1792, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlb_usio_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlb_usio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlb_usio_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlb_usio_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlb_usio_irq to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlb_usio_ops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlb_usio_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlb_usio_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlb_usio_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mlb_usio_set_termios to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mlb_usio_console_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @register_console(ptr noundef nonnull @mlb_usio_console) #10
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlb_usio_early_console_setup(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %opt) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %write = getelementptr inbounds %struct.console, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mlb_usio_early_console_write, ptr %write, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mlb_usio_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @mlb_usio_driver) #10
  tail call void @uart_unregister_driver(ptr noundef nonnull @mlb_usio_uart_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mlb_usio_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @uart_register_driver(ptr noundef nonnull @mlb_usio_uart_driver) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef %call) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @__platform_driver_register(ptr noundef nonnull @mlb_usio_driver, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @uart_unregister_driver(ptr noundef nonnull @mlb_usio_uart_driver) #10
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, i32 noundef %call2) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call2, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_console(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlb_usio_console_write(ptr nocapture noundef readonly %co, ptr noundef %s, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index, align 2
  %idxprom = sext i16 %1 to i32
  %arrayidx = getelementptr [4 x %struct.uart_port], ptr @mlb_usio_ports, i32 0, i32 %idxprom
  tail call void @uart_console_write(ptr noundef %arrayidx, ptr noundef %s, i32 noundef %count, ptr noundef nonnull @mlb_usio_console_putchar) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mlb_usio_console_setup(ptr noundef %co, ptr noundef %options) #0 section ".init.text" align 64 {
entry:
  %baud = alloca i32, align 4
  %parity = alloca i32, align 4
  %flow = alloca i32, align 4
  %bits = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %baud) #10
  %0 = ptrtoint ptr %baud to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 115200, ptr %baud, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parity) #10
  %1 = ptrtoint ptr %parity to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 110, ptr %parity, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flow) #10
  %2 = ptrtoint ptr %flow to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 110, ptr %flow, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits) #10
  %3 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 8, ptr %bits, align 4
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %index, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %5)
  %cmp = icmp sgt i16 %5, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = sext i16 %5 to i32
  %arrayidx = getelementptr [4 x %struct.uart_port], ptr @mlb_usio_ports, i32 0, i32 %conv
  %membase = getelementptr [4 x %struct.uart_port], ptr @mlb_usio_ports, i32 0, i32 %conv, i32 2
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %tobool5.not = icmp eq ptr %options, null
  br i1 %tobool5.not, label %if.end4.if.end7_crit_edge, label %if.then6

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  call void @uart_parse_options(ptr noundef nonnull %options, ptr noundef nonnull %baud, ptr noundef nonnull %parity, ptr noundef nonnull %bits, ptr noundef nonnull %flow) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.if.end7_crit_edge
  %dev = getelementptr [4 x %struct.uart_port], ptr @mlb_usio_ports, i32 0, i32 %conv, i32 45
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %call.i = call ptr @of_find_property(ptr noundef %11, ptr noundef nonnull @.str, ptr noundef null) #10
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %if.end7.if.end9_crit_edge, label %if.then8

if.end7.if.end9_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then8:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %flow to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 114, ptr %flow, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end7.if.end9_crit_edge
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
  %call10 = call i32 @uart_set_options(ptr noundef %arrayidx, ptr noundef %co, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flow) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parity) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %baud) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlb_usio_console_putchar(ptr nocapture noundef readonly %port, i32 noundef %c) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr12 = getelementptr i8, ptr %1, i32 3
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr12) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  %3 = and i8 %2, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not13 = icmp eq i8 %3, 0
  br i1 %tobool.not13, label %entry.do.end_crit_edge, label %entry.do.body6_crit_edge

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body6

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !81
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !82
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 3
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  %7 = and i8 %6, 2
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %do.end.do.end_crit_edge, label %do.end.do.body6_crit_edge

do.end.do.body6_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body6

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.body6:                                         ; preds = %do.end.do.body6_crit_edge, %entry.do.body6_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !83
  tail call void @arm_heavy_mb() #10
  %conv8 = trunc i32 %c to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv8)
  %9 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase, align 4
  %add.ptr10 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr10, i16 %8) #10, !srcloc !84
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlb_usio_early_console_write(ptr nocapture noundef readonly %co, ptr noundef %s, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 13
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %port = getelementptr inbounds %struct.earlycon_device, ptr %1, i32 0, i32 1
  tail call void @uart_console_write(ptr noundef %port, ptr noundef %s, i32 noundef %count, ptr noundef nonnull @mlb_usio_console_putchar) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlb_usio_probe(ptr noundef %pdev) #3 align 64 {
entry:
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #10
  %0 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %index, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #13
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end8_crit_edge

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end10, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %call) #10
  br label %do.end8

do.end8:                                          ; preds = %if.then3.i, %if.end.do.end8_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end8_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i.ph) #13
  br label %cleanup

if.end10:                                         ; preds = %if.end.i
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.10, ptr noundef nonnull %index, i32 noundef 1, i32 noundef 0) #10
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %private_data = getelementptr [4 x %struct.uart_port], ptr @mlb_usio_ports, i32 0, i32 %5, i32 59
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %private_data, align 4
  %call13 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %cmp = icmp eq ptr %call13, null
  br i1 %cmp, label %do.end17, label %if.end19

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #13
  br label %failed

if.end19:                                         ; preds = %if.end10
  %arrayidx = getelementptr [4 x %struct.uart_port], ptr @mlb_usio_ports, i32 0, i32 %5
  %7 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call13, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call13, i32 0, i32 1
  %9 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %8
  %add.i = add i32 %sub.i, %10
  %call22 = call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %8, i32 noundef %add.i) #10
  %membase = getelementptr [4 x %struct.uart_port], ptr @mlb_usio_ports, i32 0, i32 %5, i32 2
  %11 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call22, ptr %membase, align 4
  %call23 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.14) #10
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 4
  %arrayidx24 = getelementptr [4 x [2 x i32]], ptr @mlb_usio_irq, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call23, ptr %arrayidx24, align 4
  %call26 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.15) #10
  %15 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index, align 4
  %arrayidx28 = getelementptr [4 x [2 x i32]], ptr @mlb_usio_irq, i32 0, i32 %16, i32 1
  %17 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call26, ptr %arrayidx28, align 4
  %arrayidx29 = getelementptr [4 x [2 x i32]], ptr @mlb_usio_irq, i32 0, i32 %16
  %18 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx29, align 4
  %irq = getelementptr [4 x %struct.uart_port], ptr @mlb_usio_ports, i32 0, i32 %5, i32 20
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %irq, align 4
  %call31 = call i32 @clk_get_rate(ptr noundef %call) #10
  %uartclk = getelementptr [4 x %struct.uart_port], ptr @mlb_usio_ports, i32 0, i32 %5, i32 22
  %21 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call31, ptr %uartclk, align 4
  %fifosize = getelementptr [4 x %struct.uart_port], ptr @mlb_usio_ports, i32 0, i32 %5, i32 23
  %22 = ptrtoint ptr %fifosize to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 128, ptr %fifosize, align 4
  %has_sysrq = getelementptr [4 x %struct.uart_port], ptr @mlb_usio_ports, i32 0, i32 %5, i32 48
  %23 = ptrtoint ptr %has_sysrq to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %has_sysrq, align 4
  %iotype = getelementptr [4 x %struct.uart_port], ptr @mlb_usio_ports, i32 0, i32 %5, i32 26
  %24 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 3, ptr %iotype, align 2
  %flags = getelementptr [4 x %struct.uart_port], ptr @mlb_usio_ports, i32 0, i32 %5, i32 33
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 268435488, ptr %flags, align 4
  %26 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index, align 4
  %line = getelementptr [4 x %struct.uart_port], ptr @mlb_usio_ports, i32 0, i32 %5, i32 41
  %28 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %line, align 4
  %ops = getelementptr [4 x %struct.uart_port], ptr @mlb_usio_ports, i32 0, i32 %5, i32 39
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @mlb_usio_ops, ptr %ops, align 4
  %dev33 = getelementptr [4 x %struct.uart_port], ptr @mlb_usio_ports, i32 0, i32 %5, i32 45
  %30 = ptrtoint ptr %dev33 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %dev, ptr %dev33, align 4
  %call34 = call i32 @uart_add_one_port(ptr noundef nonnull @mlb_usio_uart_driver, ptr noundef %arrayidx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end19.cleanup_crit_edge, label %do.end39

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end39:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call34) #13
  br label %failed

failed:                                           ; preds = %do.end39, %do.end17
  %ret.0 = phi i32 [ -19, %do.end17 ], [ %call34, %do.end39 ]
  call void @clk_disable(ptr noundef %call) #10
  call void @clk_unprepare(ptr noundef %call) #10
  br label %cleanup

cleanup:                                          ; preds = %failed, %if.end19.cleanup_crit_edge, %do.end8, %do.end
  %retval.0 = phi i32 [ %1, %do.end ], [ %retval.0.i.ph, %do.end8 ], [ %ret.0, %failed ], [ 0, %if.end19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlb_usio_remove(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %arrayidx = getelementptr [4 x %struct.uart_port], ptr @mlb_usio_ports, i32 0, i32 %1
  %private_data = getelementptr [4 x %struct.uart_port], ptr @mlb_usio_ports, i32 0, i32 %1, i32 59
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @uart_remove_one_port(ptr noundef nonnull @mlb_usio_uart_driver, ptr noundef %arrayidx) #10
  tail call void @clk_disable(ptr noundef %3) #10
  tail call void @clk_unprepare(ptr noundef %3) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlb_usio_tx_empty(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 3
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !85
  %3 = and i8 %2, 1
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlb_usio_set_mctrl(ptr nocapture noundef %port, i32 noundef %mctrl) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlb_usio_get_mctrl(ptr nocapture noundef readnone %port) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 352
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlb_usio_stop_tx(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !86
  tail call void @arm_heavy_mb() #10
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #10, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !88
  %3 = and i16 %2, -3
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4, i16 %3) #10, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !89
  tail call void @arm_heavy_mb() #10
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %add.ptr10 = getelementptr i8, ptr %7, i32 1
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr10) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !90
  %9 = and i8 %8, -5
  %10 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase, align 4
  %add.ptr18 = getelementptr i8, ptr %11, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr18, i8 %9) #10, !srcloc !91
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlb_usio_start_tx(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #10, !srcloc !87
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  tail call void @arm_heavy_mb() #10
  %or = or i16 %3, 512
  %4 = tail call i16 @llvm.bswap.i16(i16 %or)
  %5 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4, i16 %4) #10, !srcloc !84
  %7 = and i16 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body6:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase, align 4
  %add.ptr12 = getelementptr i8, ptr %9, i32 1
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr12) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  %11 = or i8 %10, 4
  %12 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase, align 4
  %add.ptr20 = getelementptr i8, ptr %13, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr20, i8 %11) #10, !srcloc !91
  %14 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase, align 4
  %add.ptr24 = getelementptr i8, ptr %15, i32 3
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !96
  %17 = and i8 %16, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool30.not = icmp eq i8 %17, 0
  br i1 %tobool30.not, label %do.body6.cleanup_crit_edge, label %if.then31

do.body6.cleanup_crit_edge:                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then31:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mlb_usio_tx_chars(ptr noundef %port)
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %do.body6.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlb_usio_stop_rx(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  tail call void @arm_heavy_mb() #10
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 1
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !98
  %3 = and i8 %2, -17
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4, i8 %3) #10, !srcloc !91
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlb_usio_enable_ms(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !99
  tail call void @arm_heavy_mb() #10
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 1
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !100
  %3 = or i8 %2, 18
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5, i8 %3) #10, !srcloc !91
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlb_usio_break_ctl(ptr nocapture noundef %port, i32 noundef %break_state) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlb_usio_startup(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %line = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %4 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %line, align 4
  %arrayidx = getelementptr [4 x [2 x i32]], ptr @mlb_usio_irq, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %7, ptr noundef nonnull @mlb_usio_rx_irq, ptr noundef null, i32 noundef 0, ptr noundef %3, ptr noundef %port) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx3 = getelementptr [4 x [2 x i32]], ptr @mlb_usio_irq, i32 0, i32 %5, i32 1
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3, align 4
  %call.i107 = tail call i32 @request_threaded_irq(i32 noundef %9, ptr noundef nonnull @mlb_usio_tx_irq, ptr noundef null, i32 noundef 0, ptr noundef %3, ptr noundef %port) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %tobool5.not = icmp eq i32 %call.i107, 0
  br i1 %tobool5.not, label %if.end10, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %call9 = tail call ptr @free_irq(i32 noundef %11, ptr noundef %port) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %12 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase, align 4
  %add.ptr11 = getelementptr i8, ptr %13, i32 2
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr11) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !101
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 27
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %call.i108 = tail call ptr @of_find_property(ptr noundef %18, ptr noundef nonnull @.str, ptr noundef null) #10
  %tobool.i.not = icmp eq ptr %call.i108, null
  %19 = or i8 %14, -128
  %spec.select = select i1 %tobool.i.not, i8 %14, i8 %19
  %call24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !102
  tail call void @arm_heavy_mb() #10
  %20 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase, align 4
  %add.ptr31 = getelementptr i8, ptr %21, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31, i8 0) #10, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !103
  tail call void @arm_heavy_mb() #10
  %22 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase, align 4
  %add.ptr36 = getelementptr i8, ptr %23, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr36, i8 %spec.select) #10, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  tail call void @arm_heavy_mb() #10
  %24 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase, align 4
  %add.ptr41 = getelementptr i8, ptr %25, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr41, i8 -128) #10, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  %26 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase, align 4
  %add.ptr46 = getelementptr i8, ptr %27, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr46, i8 -128) #10, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !106
  tail call void @arm_heavy_mb() #10
  %28 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase, align 4
  %add.ptr51 = getelementptr i8, ptr %29, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr51, i16 0) #10, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !107
  tail call void @arm_heavy_mb() #10
  %30 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase, align 4
  %add.ptr56 = getelementptr i8, ptr %31, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr56, i16 3072) #10, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !108
  tail call void @arm_heavy_mb() #10
  %32 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase, align 4
  %add.ptr61 = getelementptr i8, ptr %33, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr61, i16 776) #10, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !109
  tail call void @arm_heavy_mb() #10
  %34 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase, align 4
  %add.ptr66 = getelementptr i8, ptr %35, i32 14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr66, i16 0) #10, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !110
  tail call void @arm_heavy_mb() #10
  %36 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase, align 4
  %add.ptr71 = getelementptr i8, ptr %37, i32 14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr71, i16 16) #10, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !111
  tail call void @arm_heavy_mb() #10
  %38 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %membase, align 4
  %add.ptr76 = getelementptr i8, ptr %39, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr76, i8 23) #10, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call24) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i107, %if.then6 ], [ 0, %if.end10 ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlb_usio_shutdown(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %line = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %0 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %line, align 4
  %arrayidx = getelementptr [4 x [2 x i32]], ptr @mlb_usio_irq, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %call = tail call ptr @free_irq(i32 noundef %3, ptr noundef %port) #10
  %arrayidx3 = getelementptr [4 x [2 x i32]], ptr @mlb_usio_irq, i32 0, i32 %1, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  %call4 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %port) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlb_usio_set_termios(ptr noundef %port, ptr noundef %termios, ptr noundef %old) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %0 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_cflag, align 4
  %and = lshr i32 %1, 4
  %2 = and i32 %and, 3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.mlb_usio_set_termios, i32 0, i32 %2
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  %and7 = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %and12 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %spec.select169.v = select i1 %tobool13.not, i32 16, i32 24
  %spec.select169 = select i1 %tobool8.not, i32 0, i32 %spec.select169.v
  %escr.1 = or i32 %switch.load, %spec.select169
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef null) #10
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %lor.lhs.false, label %entry.if.then21_crit_edge

entry.if.then21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

lor.lhs.false:                                    ; preds = %entry
  %8 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool20.not = icmp sgt i32 %9, -1
  br i1 %tobool20.not, label %lor.lhs.false.if.end23_crit_edge, label %lor.lhs.false.if.then21_crit_edge

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

lor.lhs.false.if.end23_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then21:                                        ; preds = %lor.lhs.false.if.then21_crit_edge, %entry.if.then21_crit_edge
  %or22 = or i32 %escr.1, 128
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %lor.lhs.false.if.end23_crit_edge
  %escr.2 = phi i32 [ %or22, %if.then21 ], [ %escr.1, %lor.lhs.false.if.end23_crit_edge ]
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %10 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %uartclk, align 4
  %call24 = tail call i32 @uart_get_baud_rate(ptr noundef %port, ptr noundef %termios, ptr noundef %old, i32 noundef 0, i32 noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call24)
  %cmp = icmp ugt i32 %call24, 1
  br i1 %cmp, label %if.then25, label %if.end23.do.body28_crit_edge

if.end23.do.body28_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body28

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %uartclk, align 4
  %div = udiv i32 %13, %call24
  %14 = trunc i32 %div to i16
  %phi.cast = add i16 %14, -1
  br label %do.body28

do.body28:                                        ; preds = %if.then25, %if.end23.do.body28_crit_edge
  %quot.0 = phi i16 [ %phi.cast, %if.then25 ], [ 0, %if.end23.do.body28_crit_edge ]
  %call31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #10
  %15 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %c_cflag, align 4
  tail call void @uart_update_timeout(ptr noundef %port, i32 noundef %16, i32 noundef %call24) #10
  %read_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 28
  %17 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 14, ptr %read_status_mask, align 4
  %18 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %termios, align 4
  %and35 = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  %spec.store.select = select i1 %tobool36.not, i32 14, i32 62
  %20 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %spec.store.select, ptr %read_status_mask, align 4
  %ignore_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 29
  %21 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %ignore_status_mask, align 4
  %22 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %termios, align 4
  %and42 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  %spec.store.select170 = select i1 %tobool43.not, i32 0, i32 48
  %24 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %spec.store.select170, ptr %ignore_status_mask, align 4
  %25 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %termios, align 4
  %27 = and i32 %26, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %27)
  %.not = icmp eq i32 %27, 5
  br i1 %.not, label %if.then54, label %do.body28.if.end57_crit_edge

do.body28.if.end57_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then54:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  %or56 = or i32 %spec.store.select170, 8
  %28 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or56, ptr %ignore_status_mask, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %do.body28.if.end57_crit_edge
  %29 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %c_cflag, align 4
  %and59 = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %cmp60 = icmp eq i32 %and59, 0
  br i1 %cmp60, label %if.then62, label %if.end57.do.body66_crit_edge

if.end57.do.body66_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body66

if.then62:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ignore_status_mask, align 4
  %or64 = or i32 %32, 4
  store i32 %or64, ptr %ignore_status_mask, align 4
  br label %do.body66

do.body66:                                        ; preds = %if.then62, %if.end57.do.body66_crit_edge
  %and5 = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  %spec.select = select i1 %tobool.not, i8 1, i8 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !112
  tail call void @arm_heavy_mb() #10
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %33 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %34, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #10, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !113
  tail call void @arm_heavy_mb() #10
  %35 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase, align 4
  %add.ptr73 = getelementptr i8, ptr %36, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr73, i8 -128) #10, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !114
  tail call void @arm_heavy_mb() #10
  %37 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %membase, align 4
  %add.ptr78 = getelementptr i8, ptr %38, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr78, i8 -128) #10, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !115
  tail call void @arm_heavy_mb() #10
  %39 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase, align 4
  %add.ptr83 = getelementptr i8, ptr %40, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr83, i16 0) #10, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  %41 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %42, i8 %spec.select) #10, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !117
  tail call void @arm_heavy_mb() #10
  %conv93 = trunc i32 %escr.2 to i8
  %43 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase, align 4
  %add.ptr95 = getelementptr i8, ptr %44, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr95, i8 %conv93) #10, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %45 = tail call i16 @llvm.bswap.i16(i16 %quot.0)
  %46 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %membase, align 4
  %add.ptr101 = getelementptr i8, ptr %47, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr101, i16 %45) #10, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !119
  tail call void @arm_heavy_mb() #10
  %48 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %membase, align 4
  %add.ptr106 = getelementptr i8, ptr %49, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr106, i16 0) #10, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !120
  tail call void @arm_heavy_mb() #10
  %50 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %membase, align 4
  %add.ptr111 = getelementptr i8, ptr %51, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr111, i16 3848) #10, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !121
  tail call void @arm_heavy_mb() #10
  %52 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %membase, align 4
  %add.ptr116 = getelementptr i8, ptr %53, i32 14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr116, i16 0) #10, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !122
  tail call void @arm_heavy_mb() #10
  %54 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %membase, align 4
  %add.ptr121 = getelementptr i8, ptr %55, i32 14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr121, i16 16) #10, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !123
  tail call void @arm_heavy_mb() #10
  %56 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %membase, align 4
  %add.ptr126 = getelementptr i8, ptr %57, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr126, i8 23) #10, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call31) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @mlb_usio_type(ptr nocapture noundef readonly %port) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 119, i32 %1)
  %cmp = icmp eq i32 %1, 119
  %cond = select i1 %cmp, ptr @.str.1, ptr null
  ret ptr %cond
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @mlb_usio_config_port(ptr nocapture noundef writeonly %port, i32 noundef %flags) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 119, ptr %type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlb_usio_tx_chars(ptr noundef %port) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %xmit1 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !124
  tail call void @arm_heavy_mb() #10
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 12
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #10, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !125
  %5 = and i16 %4, -3
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %add.ptr5 = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5, i16 %5) #10, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !126
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase, align 4
  %add.ptr12 = getelementptr i8, ptr %9, i32 1
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr12) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  %11 = and i8 %10, -13
  %12 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase, align 4
  %add.ptr20 = getelementptr i8, ptr %13, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr20, i8 %11) #10, !srcloc !91
  %x_char = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 24
  %14 = ptrtoint ptr %x_char to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %x_char, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %if.end, label %do.body21

do.body21:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !128
  tail call void @arm_heavy_mb() #10
  %16 = ptrtoint ptr %x_char to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %x_char, align 4
  %conv25 = zext i8 %17 to i16
  %18 = shl nuw i16 %conv25, 8
  %19 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase, align 4
  %add.ptr27 = getelementptr i8, ptr %20, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr27, i16 %18) #10, !srcloc !84
  %tx = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 5
  %21 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %tx, align 4
  %23 = ptrtoint ptr %x_char to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %x_char, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %head = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %26 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp = icmp eq i32 %25, %27
  br i1 %cmp, label %if.end.if.then32_crit_edge, label %lor.lhs.false

if.end.if.then32_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32

lor.lhs.false:                                    ; preds = %if.end
  %28 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %state, align 4
  %tty2.i = getelementptr inbounds %struct.tty_port, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %tty2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tty2.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %lor.lhs.false.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i

lor.lhs.false.uart_tx_stopped.exit_crit_edge:     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_tx_stopped.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false
  %stopped.i = getelementptr inbounds %struct.tty_struct, ptr %31, i32 0, i32 19, i32 1
  %32 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %stopped.i, align 4, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool3.not.i = icmp eq i8 %33, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i.if.then32_crit_edge

land.lhs.true.i.if.then32_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32

land.lhs.true.i.uart_tx_stopped.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_tx_stopped.exit

uart_tx_stopped.exit:                             ; preds = %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, %lor.lhs.false.uart_tx_stopped.exit_crit_edge
  %hw_stopped.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 35
  %34 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hw_stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool4.not.i.not = icmp eq i32 %35, 0
  br i1 %tobool4.not.i.not, label %if.end33, label %uart_tx_stopped.exit.if.then32_crit_edge

uart_tx_stopped.exit.if.then32_crit_edge:         ; preds = %uart_tx_stopped.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32

if.then32:                                        ; preds = %uart_tx_stopped.exit.if.then32_crit_edge, %land.lhs.true.i.if.then32_crit_edge, %if.end.if.then32_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !86
  tail call void @arm_heavy_mb() #10
  %36 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %37, i32 12
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #10, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !88
  %39 = and i16 %38, -3
  %40 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %membase, align 4
  %add.ptr4.i = getelementptr i8, ptr %41, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4.i, i16 %39) #10, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !89
  tail call void @arm_heavy_mb() #10
  %42 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %membase, align 4
  %add.ptr10.i = getelementptr i8, ptr %43, i32 1
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr10.i) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !90
  %45 = and i8 %44, -5
  %46 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %membase, align 4
  %add.ptr18.i = getelementptr i8, ptr %47, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr18.i, i8 %45) #10, !srcloc !91
  br label %cleanup

if.end33:                                         ; preds = %uart_tx_stopped.exit
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 23
  %48 = ptrtoint ptr %fifosize to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fifosize, align 4
  %50 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %membase, align 4
  %add.ptr37 = getelementptr i8, ptr %51, i32 14
  %52 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr37) #10, !srcloc !87
  %53 = lshr i16 %52, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !130
  %conv41 = zext i16 %53 to i32
  %sub = sub i32 %49, %conv41
  %tx55 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 5
  br label %do.body43

do.body43:                                        ; preds = %do.body43.do.body43_crit_edge, %if.end33
  %count.0 = phi i32 [ %sub, %if.end33 ], [ %dec, %do.body43.do.body43_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !131
  tail call void @arm_heavy_mb() #10
  %54 = ptrtoint ptr %xmit1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %xmit1, align 4
  %56 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tail, align 4
  %arrayidx = getelementptr i8, ptr %55, i32 %57
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx, align 1
  %conv48 = zext i8 %59 to i16
  %60 = shl nuw i16 %conv48, 8
  %61 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %membase, align 4
  %add.ptr50 = getelementptr i8, ptr %62, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr50, i16 %60) #10, !srcloc !84
  %63 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tail, align 4
  %add = add i32 %64, 1
  %and52 = and i32 %add, 4095
  store i32 %and52, ptr %tail, align 4
  %65 = ptrtoint ptr %tx55 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tx55, align 4
  %inc56 = add i32 %66, 1
  store i32 %inc56, ptr %tx55, align 4
  %67 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %head, align 4
  %69 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %69)
  %cmp59 = icmp ne i32 %68, %69
  %dec = add i32 %count.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp64 = icmp sgt i32 %dec, 0
  %or.cond = select i1 %cmp59, i1 %cmp64, i1 false
  br i1 %or.cond, label %do.body43.do.body43_crit_edge, label %do.body67

do.body43.do.body43_crit_edge:                    ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body43

do.body67:                                        ; preds = %do.body43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !132
  tail call void @arm_heavy_mb() #10
  %70 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %membase, align 4
  %add.ptr73 = getelementptr i8, ptr %71, i32 12
  %72 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr73) #10, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !133
  %73 = and i16 %72, -5
  %74 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %membase, align 4
  %add.ptr81 = getelementptr i8, ptr %75, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr81, i16 %73) #10, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  %76 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %membase, align 4
  %add.ptr88 = getelementptr i8, ptr %77, i32 1
  %78 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr88) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !135
  %79 = or i8 %78, 4
  %80 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %membase, align 4
  %add.ptr95 = getelementptr i8, ptr %81, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr95, i8 %79) #10, !srcloc !91
  %82 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %head, align 4
  %84 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tail, align 4
  %sub98 = sub i32 %83, %85
  %and99 = and i32 %sub98, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %cmp100 = icmp eq i32 %and99, 0
  br i1 %cmp100, label %if.then102, label %do.body67.if.end103_crit_edge

do.body67.if.end103_crit_edge:                    ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103

if.then102:                                       ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @uart_write_wakeup(ptr noundef %port) #10
  br label %if.end103

if.end103:                                        ; preds = %if.then102, %do.body67.if.end103_crit_edge
  %86 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %head, align 4
  %88 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %89)
  %cmp106 = icmp eq i32 %87, %89
  br i1 %cmp106, label %if.then108, label %if.end103.cleanup_crit_edge

if.end103.cleanup_crit_edge:                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then108:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !86
  tail call void @arm_heavy_mb() #10
  %90 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %membase, align 4
  %add.ptr.i144 = getelementptr i8, ptr %91, i32 12
  %92 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i144) #10, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !88
  %93 = and i16 %92, -3
  %94 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %membase, align 4
  %add.ptr4.i145 = getelementptr i8, ptr %95, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4.i145, i16 %93) #10, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !89
  tail call void @arm_heavy_mb() #10
  %96 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %membase, align 4
  %add.ptr10.i146 = getelementptr i8, ptr %97, i32 1
  %98 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr10.i146) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !90
  %99 = and i8 %98, -5
  %100 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %membase, align 4
  %add.ptr18.i147 = getelementptr i8, ptr %101, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr18.i147, i8 %99) #10, !srcloc !91
  br label %cleanup

cleanup:                                          ; preds = %if.then108, %if.end103.cleanup_crit_edge, %if.then32, %do.body21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlb_usio_rx_irq(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %dev_id) #10
  %state.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 30
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state.i, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 2
  %parity.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 8
  %overrun.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 7
  %read_status_mask.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 28
  %rx.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 4
  %sysrq.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 46
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %entry
  %dec129.i = phi i32 [ 1, %entry ], [ %dec.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %flag.0128.i = phi i32 [ 0, %entry ], [ %flag.0.be.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %ch.0127.i = phi i8 [ 0, %entry ], [ %ch.0.be.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 3
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !136
  %conv.i = zext i8 %4 to i32
  %and.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %while.body.i.mlb_usio_rx_chars.exit_crit_edge, label %if.end.i

while.body.i.mlb_usio_rx_chars.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlb_usio_rx_chars.exit

if.end.i:                                         ; preds = %while.body.i
  %and5.i = and i32 %conv.i, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end23.i

if.then7.i:                                       ; preds = %if.end.i
  %5 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %6, i32 4
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr11.i) #10, !srcloc !87
  %8 = lshr i16 %7, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !137
  %conv15.i = trunc i16 %8 to i8
  %9 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx.i, align 4
  %inc.i = add i32 %10, 1
  store i32 %inc.i, ptr %rx.i, align 4
  %conv16.i = zext i16 %8 to i32
  %11 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i, label %if.then7.i.if.end20.i_crit_edge, label %if.end.i.i

if.then7.i.if.end20.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.end.i.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %7)
  %tobool1.not.i.i = icmp ult i16 %7, 256
  br i1 %tobool1.not.i.i, label %if.end.i.i.uart_handle_sysrq_char.exit.thread132.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.uart_handle_sysrq_char.exit.thread132.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_handle_sysrq_char.exit.thread132.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %13, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.then3.i.i, label %land.lhs.true.i.i.uart_handle_sysrq_char.exit.thread132.i_crit_edge

land.lhs.true.i.i.uart_handle_sysrq_char.exit.thread132.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_handle_sysrq_char.exit.thread132.i

if.then3.i.i:                                     ; preds = %land.lhs.true.i.i
  %call.i.i = tail call i32 @sysrq_mask() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end7.i.i, label %uart_handle_sysrq_char.exit.i

if.end7.i.i:                                      ; preds = %if.then3.i.i
  %call8.i.i = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %dev_id, i32 noundef %conv16.i) #10
  br i1 %call8.i.i, label %if.end7.i.i.while.cond.backedge.i_crit_edge, label %if.end7.i.i.uart_handle_sysrq_char.exit.thread132.i_crit_edge

if.end7.i.i.uart_handle_sysrq_char.exit.thread132.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_handle_sysrq_char.exit.thread132.i

if.end7.i.i.while.cond.backedge.i_crit_edge:      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge.i

uart_handle_sysrq_char.exit.thread132.i:          ; preds = %if.end7.i.i.uart_handle_sysrq_char.exit.thread132.i_crit_edge, %land.lhs.true.i.i.uart_handle_sysrq_char.exit.thread132.i_crit_edge, %if.end.i.i.uart_handle_sysrq_char.exit.thread132.i_crit_edge
  %14 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %if.end20.i

uart_handle_sysrq_char.exit.i:                    ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @handle_sysrq(i32 noundef %conv16.i) #10
  %15 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %while.cond.backedge.i

if.end20.i:                                       ; preds = %uart_handle_sysrq_char.exit.thread132.i, %if.then7.i.if.end20.i_crit_edge
  tail call void @uart_insert_char(ptr noundef %dev_id, i32 noundef %conv.i, i32 noundef 8, i32 noundef %conv16.i, i32 noundef 0) #10
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %do.body.i, %if.end20.i, %uart_handle_sysrq_char.exit.i, %if.end7.i.i.while.cond.backedge.i_crit_edge
  %max_count.0.be.i = phi i32 [ %35, %do.body.i ], [ %dec129.i, %uart_handle_sysrq_char.exit.i ], [ %dec129.i, %if.end20.i ], [ %dec129.i, %if.end7.i.i.while.cond.backedge.i_crit_edge ]
  %ch.0.be.i = phi i8 [ %ch.1.i, %do.body.i ], [ %conv15.i, %uart_handle_sysrq_char.exit.i ], [ %conv15.i, %if.end20.i ], [ %conv15.i, %if.end7.i.i.while.cond.backedge.i_crit_edge ]
  %flag.0.be.i = phi i32 [ %flag.1.i, %do.body.i ], [ 0, %uart_handle_sysrq_char.exit.i ], [ 0, %if.end20.i ], [ 0, %if.end7.i.i.while.cond.backedge.i_crit_edge ]
  %dec.i = add i32 %max_count.0.be.i, -1
  %tobool.not.i = icmp eq i32 %max_count.0.be.i, 0
  br i1 %tobool.not.i, label %while.cond.backedge.i.mlb_usio_rx_chars.exit_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.cond.backedge.i.mlb_usio_rx_chars.exit_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlb_usio_rx_chars.exit

if.end23.i:                                       ; preds = %if.end.i
  %and25.i = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.end23.i.if.end30.i_crit_edge, label %if.then27.i

if.end23.i.if.end30.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i

if.then27.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %parity.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %parity.i, align 4
  %inc29.i = add i32 %17, 1
  store i32 %inc29.i, ptr %parity.i, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then27.i, %if.end23.i.if.end30.i_crit_edge
  %and32.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %if.end30.i.if.end37.i_crit_edge, label %if.then34.i

if.end30.i.if.end37.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

if.then34.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %overrun.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %overrun.i, align 4
  %inc36.i = add i32 %19, 1
  store i32 %inc36.i, ptr %overrun.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then34.i, %if.end30.i.if.end37.i_crit_edge
  %20 = ptrtoint ptr %read_status_mask.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %read_status_mask.i, align 4
  %22 = trunc i32 %21 to i8
  %conv40.i = and i8 %4, %22
  %conv41.i = zext i8 %conv40.i to i32
  %and46.i = and i32 %conv41.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  %and51.i = and i32 %conv41.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp eq i32 %and51.i, 0
  %spec.select124.i = select i1 %tobool52.not.i, i32 %flag.0128.i, i32 2
  %23 = and i32 %conv41.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %24 = icmp eq i32 %23, 0
  %ch.1.i = select i1 %24, i8 %ch.0127.i, i8 0
  %flag.1.i = select i1 %tobool47.not.i, i32 %spec.select124.i, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flag.1.i)
  %tobool57.not.i = icmp eq i32 %flag.1.i, 0
  br i1 %tobool57.not.i, label %if.end37.i.do.body.i_crit_edge, label %if.then58.i

if.end37.i.do.body.i_crit_edge:                   ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.then58.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv60.i = zext i8 %ch.1.i to i32
  tail call void @uart_insert_char(ptr noundef %dev_id, i32 noundef %conv41.i, i32 noundef 8, i32 noundef %conv60.i, i32 noundef %flag.1.i) #10
  br label %do.body.i

do.body.i:                                        ; preds = %if.then58.i, %if.end37.i.do.body.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !138
  tail call void @arm_heavy_mb() #10
  %25 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase.i, align 4
  %add.ptr65.i = getelementptr i8, ptr %26, i32 3
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr65.i) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  %28 = or i8 %27, -128
  %29 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase.i, align 4
  %add.ptr72.i = getelementptr i8, ptr %30, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr72.i, i8 %28) #10, !srcloc !91
  %31 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %membase.i, align 4
  %add.ptr76.i = getelementptr i8, ptr %32, i32 14
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr76.i) #10, !srcloc !87
  %34 = and i16 %33, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !140
  %35 = zext i16 %34 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !141
  tail call void @arm_heavy_mb() #10
  %36 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase.i, align 4
  %add.ptr87.i = getelementptr i8, ptr %37, i32 12
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr87.i) #10, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !142
  %39 = or i16 %38, 520
  %40 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %membase.i, align 4
  %add.ptr96.i = getelementptr i8, ptr %41, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr96.i, i16 %39) #10, !srcloc !84
  br label %while.cond.backedge.i

mlb_usio_rx_chars.exit:                           ; preds = %while.cond.backedge.i.mlb_usio_rx_chars.exit_crit_edge, %while.body.i.mlb_usio_rx_chars.exit_crit_edge
  tail call void @tty_flip_buffer_push(ptr noundef %1) #10
  tail call void @_raw_spin_unlock(ptr noundef %dev_id) #10
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlb_usio_tx_irq(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %dev_id) #10
  %membase = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 3
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mlb_usio_tx_chars(ptr noundef %dev_id)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %dev_id) #10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_insert_char(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !33, !35, !36, !37, !39, !41, !42, !43, !45, !47, !49, !50, !51, !53, !55, !57, !59, !61, !63, !64, !65, !66, !68, !69}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__initcall__kmod_milbeaut_usio__227_461_mlb_usio_console_initcon, !1, !"__initcall__kmod_milbeaut_usio__227_461_mlb_usio_console_initcon", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/milbeaut_usio.c", i32 461, i32 1}
!2 = !{ptr @__UNIQUE_ID___earlycon_mlb_usio228, !3, !"__UNIQUE_ID___earlycon_mlb_usio228", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/milbeaut_usio.c", i32 481, i32 1}
!4 = !{ptr @__initcall__kmod_milbeaut_usio__229_606_mlb_usio_init6, !5, !"__initcall__kmod_milbeaut_usio__229_606_mlb_usio_init6", i1 false, i1 false}
!5 = !{!"../drivers/tty/serial/milbeaut_usio.c", i32 606, i32 1}
!6 = !{ptr @__exitcall_mlb_usio_exit, !7, !"__exitcall_mlb_usio_exit", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/milbeaut_usio.c", i32 607, i32 1}
!8 = !{ptr @__UNIQUE_ID_author230, !9, !"__UNIQUE_ID_author230", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/milbeaut_usio.c", i32 609, i32 1}
!10 = !{ptr @__UNIQUE_ID_description231, !11, !"__UNIQUE_ID_description231", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/milbeaut_usio.c", i32 610, i32 1}
!12 = !{ptr @__UNIQUE_ID_file232, !13, !"__UNIQUE_ID_file232", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/milbeaut_usio.c", i32 611, i32 1}
!14 = !{ptr @__UNIQUE_ID_license233, !13, !"__UNIQUE_ID_license233", i1 false, i1 false}
!15 = !{ptr @mlb_usio_console, !16, !"mlb_usio_console", i1 false, i1 false}
!16 = !{!"../drivers/tty/serial/milbeaut_usio.c", i32 446, i32 23}
!17 = !{ptr @mlb_usio_ports, !18, !"mlb_usio_ports", i1 false, i1 false}
!18 = !{!"../drivers/tty/serial/milbeaut_usio.c", i32 18, i32 25}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/tty/serial/milbeaut_usio.c", i32 438, i32 48}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/tty/serial/milbeaut_usio.c", i32 577, i32 13}
!23 = !{ptr @mlb_usio_driver, !24, !"mlb_usio_driver", i1 false, i1 false}
!24 = !{!"../drivers/tty/serial/milbeaut_usio.c", i32 573, i32 31}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/tty/serial/milbeaut_usio.c", i32 506, i32 3}
!27 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @mlb_usio_probe._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @mlb_usio_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/tty/serial/milbeaut_usio.c", i32 511, i32 3}
!35 = !{ptr @mlb_usio_probe._entry.7, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @mlb_usio_probe._entry_ptr.9, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/tty/serial/milbeaut_usio.c", i32 514, i32 42}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/tty/serial/milbeaut_usio.c", i32 520, i32 3}
!41 = !{ptr @mlb_usio_probe._entry.11, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @mlb_usio_probe._entry_ptr.13, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/tty/serial/milbeaut_usio.c", i32 527, i32 38}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/tty/serial/milbeaut_usio.c", i32 530, i32 38}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/tty/serial/milbeaut_usio.c", i32 545, i32 3}
!49 = !{ptr @mlb_usio_probe._entry.16, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @mlb_usio_probe._entry_ptr.18, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @mlb_usio_irq, !52, !"mlb_usio_irq", i1 false, i1 false}
!52 = !{!"../drivers/tty/serial/milbeaut_usio.c", i32 22, i32 12}
!53 = !{ptr @mlb_usio_ops, !54, !"mlb_usio_ops", i1 false, i1 false}
!54 = !{!"../drivers/tty/serial/milbeaut_usio.c", i32 385, i32 30}
!55 = !{ptr @mlb_usio_dt_ids, !56, !"mlb_usio_dt_ids", i1 false, i1 false}
!56 = !{!"../drivers/tty/serial/milbeaut_usio.c", i32 567, i32 34}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/tty/serial/milbeaut_usio.c", i32 492, i32 14}
!59 = !{ptr @mlb_usio_uart_driver, !60, !"mlb_usio_uart_driver", i1 false, i1 false}
!60 = !{!"../drivers/tty/serial/milbeaut_usio.c", i32 489, i32 28}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/tty/serial/milbeaut_usio.c", i32 587, i32 3}
!63 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @mlb_usio_init._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @mlb_usio_init._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/tty/serial/milbeaut_usio.c", i32 593, i32 3}
!68 = !{ptr @mlb_usio_init._entry.22, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @mlb_usio_init._entry_ptr.24, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i64 4137285}
!80 = !{i64 2154183176}
!81 = !{i64 2154183533}
!82 = !{i64 2154183375}
!83 = !{i64 2154183747}
!84 = !{i64 4136467}
!85 = !{i64 2154167945}
!86 = !{i64 2154147440}
!87 = !{i64 4136667}
!88 = !{i64 2154148403}
!89 = !{i64 2154149173}
!90 = !{i64 2154149347}
!91 = !{i64 4136890}
!92 = !{i64 2154157975}
!93 = !{i64 2154158305}
!94 = !{i64 2154159379}
!95 = !{i64 2154159553}
!96 = !{i64 2154159858}
!97 = !{i64 2154160666}
!98 = !{i64 2154160840}
!99 = !{i64 2154161749}
!100 = !{i64 2154161923}
!101 = !{i64 2154169636}
!102 = !{i64 2154170286}
!103 = !{i64 2154170554}
!104 = !{i64 2154170930}
!105 = !{i64 2154171329}
!106 = !{i64 2154171622}
!107 = !{i64 2154172228}
!108 = !{i64 2154173117}
!109 = !{i64 2154173764}
!110 = !{i64 2154174253}
!111 = !{i64 2154175162}
!112 = !{i64 2154177174}
!113 = !{i64 2154177547}
!114 = !{i64 2154177946}
!115 = !{i64 2154178239}
!116 = !{i64 2154178625}
!117 = !{i64 2154178895}
!118 = !{i64 2154179166}
!119 = !{i64 2154179560}
!120 = !{i64 2154180505}
!121 = !{i64 2154181332}
!122 = !{i64 2154181821}
!123 = !{i64 2154182730}
!124 = !{i64 2154150490}
!125 = !{i64 2154151453}
!126 = !{i64 2154152346}
!127 = !{i64 2154152520}
!128 = !{i64 2154152859}
!129 = !{i8 0, i8 2}
!130 = !{i64 2154153595}
!131 = !{i64 2154153829}
!132 = !{i64 2154155242}
!133 = !{i64 2154156207}
!134 = !{i64 2154156976}
!135 = !{i64 2154157150}
!136 = !{i64 2154162258}
!137 = !{i64 2154163074}
!138 = !{i64 2154164380}
!139 = !{i64 2154164554}
!140 = !{i64 2154165118}
!141 = !{i64 2154166301}
!142 = !{i64 2154167322}
!143 = !{i64 2154167629}
