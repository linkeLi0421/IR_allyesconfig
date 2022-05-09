; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/meson_uart.c_pt.bc'
source_filename = "../drivers/tty/serial/meson_uart.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }

@__UNIQUE_ID___earlycon_meson227 = internal constant %struct.earlycon_id { [15 x i8] c"meson\00\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"amlogic,meson-ao-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_serial_early_console_setup }, section "__earlycon_table", align 4
@meson_uart_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @meson_uart_probe, ptr @meson_uart_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @meson_uart_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@meson_uart_driver = internal global { %struct.uart_driver, [60 x i8] } { %struct.uart_driver { ptr null, ptr @.str, ptr @.str.19, i32 0, i32 0, i32 12, ptr @meson_serial_console, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_meson_uart__228_823_meson_uart_init6 = internal global ptr @meson_uart_init, section ".initcall6.init", align 4
@__exitcall_meson_uart_exit = internal global ptr @meson_uart_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author229 = internal constant [50 x i8] c"meson_uart.author=Carlo Caione <carlo@caione.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [56 x i8] c"meson_uart.description=Amlogic Meson serial port driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [46 x i8] c"meson_uart.file=drivers/tty/serial/meson_uart\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [26 x i8] c"meson_uart.license=GPL v2\00", section ".modinfo", align 1
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"meson_uart\00", [21 x i8] zeroinitializer }, align 32
@meson_uart_dt_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson6-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8b-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gx-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@meson_ports = internal global { [12 x ptr], [48 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fifo-size\00", [22 x i8] zeroinitializer }, align 32
@meson_uart_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 728, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"port %d already allocated\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"meson_uart_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/tty/serial/meson_uart.c\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@meson_uart_probe._entry_ptr = internal global ptr @meson_uart_probe._entry, section ".printk_index", align 4
@meson_uart_ops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @meson_uart_tx_empty, ptr @meson_uart_set_mctrl, ptr @meson_uart_get_mctrl, ptr @meson_uart_stop_tx, ptr @meson_uart_start_tx, ptr null, ptr null, ptr null, ptr @meson_uart_stop_rx, ptr null, ptr null, ptr @meson_uart_startup, ptr @meson_uart_shutdown, ptr null, ptr @meson_uart_set_termios, ptr null, ptr null, ptr @meson_uart_type, ptr @meson_uart_release_port, ptr @meson_uart_request_port, ptr @meson_uart_config_port, ptr @meson_uart_verify_port, ptr null, ptr null, ptr @meson_uart_poll_put_char, ptr @meson_uart_poll_get_char }, [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xtal\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"baud\00", [27 x i8] zeroinitializer }, align 32
@meson_uart_probe_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.5, i32 657, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"couldn't enable clk\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"meson_uart_probe_clock\00", [41 x i8] zeroinitializer }, align 32
@meson_uart_probe_clock._entry_ptr = internal global ptr @meson_uart_probe_clock._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@meson_uart_poll_put_char._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.5, i32 464, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Timeout waiting for UART TX EMPTY\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"meson_uart_poll_put_char\00", [39 x i8] zeroinitializer }, align 32
@meson_uart_poll_put_char._entry_ptr = internal global ptr @meson_uart_poll_put_char._entry, section ".printk_index", align 4
@meson_uart_poll_put_char._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.5, i32 477, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@meson_uart_poll_put_char._entry_ptr.16 = internal global ptr @meson_uart_poll_put_char._entry.15, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@meson_uart_request_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.5, i32 407, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Memory region busy\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"meson_uart_request_port\00", [40 x i8] zeroinitializer }, align 32
@meson_uart_request_port._entry_ptr = internal global ptr @meson_uart_request_port._entry, section ".printk_index", align 4
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ttyAML\00", [25 x i8] zeroinitializer }, align 32
@meson_serial_console = internal global { %struct.console, [60 x i8] } { %struct.console { [16 x i8] c"ttyAML\00\00\00\00\00\00\00\00\00\00", ptr @meson_serial_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @meson_serial_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @meson_uart_driver, ptr null }, [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.20 = private unnamed_addr constant [27 x i8] c"meson_uart_platform_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 789, i32 32 }
@___asan_gen_.23 = private unnamed_addr constant [18 x i8] c"meson_uart_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 637, i32 27 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 793, i32 12 }
@___asan_gen_.29 = private unnamed_addr constant [20 x i8] c"meson_uart_dt_match\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 780, i32 34 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 701, i32 49 }
@___asan_gen_.35 = private unnamed_addr constant [12 x i8] c"meson_ports\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 81, i32 26 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 725, i32 42 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 728, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [15 x i8] c"meson_uart_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 485, i32 30 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 675, i32 48 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 679, i32 48 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 683, i32 48 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 657, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 464, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 477, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 407, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 640, i32 14 }
@___asan_gen_.104 = private unnamed_addr constant [21 x i8] c"meson_serial_console\00", align 1
@___asan_gen_.105 = private constant [35 x i8] c"../drivers/tty/serial/meson_uart.c\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 590, i32 23 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID___earlycon_meson227, ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_meson_uart_exit, ptr @__initcall__kmod_meson_uart__228_823_meson_uart_init6, ptr @meson_uart_exit, ptr @meson_uart_poll_put_char._entry, ptr @meson_uart_poll_put_char._entry.15, ptr @meson_uart_poll_put_char._entry_ptr, ptr @meson_uart_poll_put_char._entry_ptr.16, ptr @meson_uart_probe._entry, ptr @meson_uart_probe._entry_ptr, ptr @meson_uart_probe_clock._entry, ptr @meson_uart_probe_clock._entry_ptr, ptr @meson_uart_request_port._entry, ptr @meson_uart_request_port._entry_ptr, ptr @meson_uart_platform_driver, ptr @meson_uart_driver, ptr @.str, ptr @meson_uart_dt_match, ptr @.str.1, ptr @meson_ports, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @meson_uart_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @meson_serial_console], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_uart_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_uart_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_uart_dt_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ports to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_uart_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_uart_ops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_uart_probe_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_uart_poll_put_char._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_uart_poll_put_char._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_uart_request_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_serial_console to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_serial_early_console_setup(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %opt) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  %5 = or i32 %4, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !76
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %add.ptr3.i = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %5) #9, !srcloc !77
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %write = getelementptr inbounds %struct.console, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @meson_serial_early_console_write, ptr %write, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @meson_uart_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson_uart_platform_driver) #9
  tail call void @uart_unregister_driver(ptr noundef nonnull @meson_uart_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_uart_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @register_console(ptr noundef nonnull @meson_serial_console) #9
  %call1 = tail call i32 @uart_register_driver(ptr noundef nonnull @meson_uart_driver) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %entry
  %call5 = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson_uart_platform_driver, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.then7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @uart_unregister_driver(ptr noundef nonnull @meson_uart_driver) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call5, %if.then7 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_serial_early_console_write(ptr nocapture noundef readonly %co, ptr noundef %s, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 13
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %port = getelementptr inbounds %struct.earlycon_device, ptr %1, i32 0, i32 1
  tail call fastcc void @meson_serial_port_write(ptr noundef %port, ptr noundef %s, i32 noundef %count)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @meson_serial_port_write(ptr noundef %port, ptr noundef %s, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !78
  %and.i = and i32 %0, 128
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
  %sysrq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 46
  %1 = ptrtoint ptr %sysrq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sysrq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool12.not = icmp eq i32 %2, 0
  br i1 %tobool12.not, label %if.else, label %do.end11.if.end20_crit_edge

do.end11.if.end20_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.else:                                          ; preds = %do.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %3 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool14.not = icmp eq i32 %3, 0
  br i1 %tobool14.not, label %if.else17, label %if.then15

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %port) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %phi.cmp = icmp eq i32 %call.i, 0
  br label %if.end20

if.else17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_lock(ptr noundef %port) #9
  br label %if.end20

if.end20:                                         ; preds = %if.else17, %if.then15, %do.end11.if.end20_crit_edge
  %locked.0 = phi i1 [ %phi.cmp, %if.then15 ], [ false, %if.else17 ], [ true, %do.end11.if.end20_crit_edge ]
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !79
  %7 = and i32 %6, -25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !80
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase, align 4
  %add.ptr28 = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %7) #9, !srcloc !77
  tail call void @uart_console_write(ptr noundef %port, ptr noundef %s, i32 noundef %count, ptr noundef nonnull @meson_console_putchar) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !81
  tail call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase, align 4
  %add.ptr33 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %6) #9, !srcloc !77
  br i1 %locked.0, label %if.end20.do.body38_crit_edge, label %if.then35

if.end20.do.body38_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body38

if.then35:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %port) #9
  br label %do.body38

do.body38:                                        ; preds = %if.then35, %if.end20.do.body38_crit_edge
  br i1 %tobool.not, label %if.then47, label %do.body38.do.body49_crit_edge

do.body38.do.body49_crit_edge:                    ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body49

if.then47:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_on() #9
  br label %do.body49

do.body49:                                        ; preds = %if.then47, %do.body38.do.body49_crit_edge
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !82
  %and.i.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool57.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool57.not, label %if.then61, label %do.body49.do.end64_crit_edge, !prof !83

do.body49.do.end64_crit_edge:                     ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end64

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end64

do.end64:                                         ; preds = %if.then61, %do.body49.do.end64_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #9, !srcloc !84
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_console_putchar(ptr nocapture noundef readonly %port, i32 noundef %ch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %while.cond.preheader

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

while.cond.preheader:                             ; preds = %entry
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 4
  %add.ptr14 = getelementptr i8, ptr %3, i32 12
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !85
  %5 = and i32 %4, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not15 = icmp eq i32 %5, 0
  br i1 %tobool3.not15, label %while.cond.preheader.do.body8_crit_edge, label %while.cond.preheader.do.end_crit_edge

while.cond.preheader.do.end_crit_edge:            ; preds = %while.cond.preheader
  br label %do.end

while.cond.preheader.do.body8_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body8

do.end:                                           ; preds = %do.end.do.end_crit_edge, %while.cond.preheader.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !86
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !87
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !85
  %9 = and i32 %8, 8192
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %do.end.do.body8_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end.do.body8_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body8

do.body8:                                         ; preds = %do.end.do.body8_crit_edge, %while.cond.preheader.do.body8_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !88
  tail call void @arm_heavy_mb() #9
  %10 = tail call i32 @llvm.bswap.i32(i32 %ch)
  %11 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #9, !srcloc !77
  br label %return

return:                                           ; preds = %do.body8, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_uart_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %fifosize = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fifosize) #9
  %0 = ptrtoint ptr %fifosize to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 64, ptr %fifosize, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @of_alias_get_id(ptr noundef nonnull %2, ptr noundef nonnull @.str.1) #9
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %3 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call, ptr %id, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %id3 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %4 = ptrtoint ptr %id3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %for.body.preheader, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

for.body.preheader:                               ; preds = %if.end
  %6 = load ptr, ptr getelementptr inbounds ([12 x ptr], ptr @meson_ports, i32 0, i32 6), align 4
  %tobool7.not = icmp eq ptr %6, null
  br i1 %tobool7.not, label %for.body.preheader.if.end11.thread_crit_edge, label %for.inc

for.body.preheader.if.end11.thread_crit_edge:     ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.thread

if.end11.thread:                                  ; preds = %for.inc.4.if.end11.thread_crit_edge, %for.inc.3.if.end11.thread_crit_edge, %for.inc.2.if.end11.thread_crit_edge, %for.inc.1.if.end11.thread_crit_edge, %for.inc.if.end11.thread_crit_edge, %for.body.preheader.if.end11.thread_crit_edge
  %id5.0132.lcssa = phi i32 [ 6, %for.body.preheader.if.end11.thread_crit_edge ], [ 7, %for.inc.if.end11.thread_crit_edge ], [ 8, %for.inc.1.if.end11.thread_crit_edge ], [ 9, %for.inc.2.if.end11.thread_crit_edge ], [ 10, %for.inc.3.if.end11.thread_crit_edge ], [ 11, %for.inc.4.if.end11.thread_crit_edge ]
  %7 = ptrtoint ptr %id3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %id5.0132.lcssa, ptr %id3, align 4
  br label %if.end17

for.inc:                                          ; preds = %for.body.preheader
  %8 = load ptr, ptr getelementptr inbounds ([12 x ptr], ptr @meson_ports, i32 0, i32 7), align 4
  %tobool7.not.1 = icmp eq ptr %8, null
  br i1 %tobool7.not.1, label %for.inc.if.end11.thread_crit_edge, label %for.inc.1

for.inc.if.end11.thread_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.thread

for.inc.1:                                        ; preds = %for.inc
  %9 = load ptr, ptr getelementptr inbounds ([12 x ptr], ptr @meson_ports, i32 0, i32 8), align 4
  %tobool7.not.2 = icmp eq ptr %9, null
  br i1 %tobool7.not.2, label %for.inc.1.if.end11.thread_crit_edge, label %for.inc.2

for.inc.1.if.end11.thread_crit_edge:              ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.thread

for.inc.2:                                        ; preds = %for.inc.1
  %10 = load ptr, ptr getelementptr inbounds ([12 x ptr], ptr @meson_ports, i32 0, i32 9), align 4
  %tobool7.not.3 = icmp eq ptr %10, null
  br i1 %tobool7.not.3, label %for.inc.2.if.end11.thread_crit_edge, label %for.inc.3

for.inc.2.if.end11.thread_crit_edge:              ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.thread

for.inc.3:                                        ; preds = %for.inc.2
  %11 = load ptr, ptr getelementptr inbounds ([12 x ptr], ptr @meson_ports, i32 0, i32 10), align 4
  %tobool7.not.4 = icmp eq ptr %11, null
  br i1 %tobool7.not.4, label %for.inc.3.if.end11.thread_crit_edge, label %for.inc.4

for.inc.3.if.end11.thread_crit_edge:              ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.thread

for.inc.4:                                        ; preds = %for.inc.3
  %12 = load ptr, ptr getelementptr inbounds ([12 x ptr], ptr @meson_ports, i32 0, i32 11), align 4
  %tobool7.not.5 = icmp eq ptr %12, null
  br i1 %tobool7.not.5, label %for.inc.4.if.end11.thread_crit_edge, label %if.end11thread-pre-split

for.inc.4.if.end11.thread_crit_edge:              ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.thread

if.end11thread-pre-split:                         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %id3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %id3, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end11thread-pre-split, %if.end.if.end11_crit_edge
  %14 = phi i32 [ %.pr, %if.end11thread-pre-split ], [ %5, %if.end.if.end11_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %14)
  %15 = icmp ugt i32 %14, 11
  br i1 %15, label %if.end11.cleanup_crit_edge, label %if.end11.if.end17_crit_edge

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end11.if.end17_crit_edge, %if.end11.thread
  %call18 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %if.end21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %call22 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end21.cleanup_crit_edge, label %if.end25

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %16 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %17, ptr noundef nonnull @.str.2, ptr noundef nonnull %fifosize, i32 noundef 1, i32 noundef 0) #9
  %18 = ptrtoint ptr %id3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id3, align 4
  %arrayidx30 = getelementptr [12 x ptr], ptr @meson_ports, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx30, align 4
  %tobool31.not = icmp eq ptr %21, null
  br i1 %tobool31.not, label %if.end35, label %do.end

do.end:                                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %19) #12
  br label %cleanup

if.end35:                                         ; preds = %if.end25
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 360, i32 noundef 3520) #9
  %tobool38.not = icmp eq ptr %call.i, null
  br i1 %tobool38.not, label %if.end35.cleanup_crit_edge, label %if.end40

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end40:                                         ; preds = %if.end35
  %call.i.i116 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  %cmp.i.i.i = icmp ugt ptr %call.i.i116, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end40.meson_uart_probe_clock.exit.i_crit_edge, label %if.end.i.i

if.end40.meson_uart_probe_clock.exit.i_crit_edge: ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson_uart_probe_clock.exit.i

if.end.i.i:                                       ; preds = %if.end40
  %call.i.i.i = call i32 @clk_prepare(ptr noundef %call.i.i116) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end.i.i.do.end.i.i_crit_edge

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %call1.i.i.i = call i32 @clk_enable(ptr noundef %call.i.i116) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end5.i.i, label %if.then3.i.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @clk_unprepare(ptr noundef %call.i.i116) #9
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then3.i.i.i, %if.end.i.i.do.end.i.i_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ %call1.i.i.i, %if.then3.i.i.i ], [ %call.i.i.i, %if.end.i.i.do.end.i.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #12
  %22 = inttoptr i32 %retval.0.i.ph.i.i to ptr
  br label %meson_uart_probe_clock.exit.i

if.end5.i.i:                                      ; preds = %if.end.i.i.i
  %call.i15.i.i = call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @clk_disable_unprepare, ptr noundef %call.i.i116) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i.i)
  %tobool.not.i16.i.i = icmp eq i32 %call.i15.i.i, 0
  br i1 %tobool.not.i16.i.i, label %if.end5.i.i.meson_uart_probe_clock.exit.i_crit_edge, label %if.then.i.i.i

if.end5.i.i.meson_uart_probe_clock.exit.i_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson_uart_probe_clock.exit.i

if.then.i.i.i:                                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @clk_disable(ptr noundef %call.i.i116) #9
  call void @clk_unprepare(ptr noundef %call.i.i116) #9
  br label %meson_uart_probe_clock.exit.i

meson_uart_probe_clock.exit.i:                    ; preds = %if.then.i.i.i, %if.end5.i.i.meson_uart_probe_clock.exit.i_crit_edge, %do.end.i.i, %if.end40.meson_uart_probe_clock.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %22, %do.end.i.i ], [ %call.i.i116, %if.end40.meson_uart_probe_clock.exit.i_crit_edge ], [ %call.i.i116, %if.end5.i.i.meson_uart_probe_clock.exit.i_crit_edge ], [ %call.i.i116, %if.then.i.i.i ]
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %meson_uart_probe_clock.exit.i.meson_uart_probe_clocks.exit_crit_edge, label %if.end.i

meson_uart_probe_clock.exit.i.meson_uart_probe_clocks.exit_crit_edge: ; preds = %meson_uart_probe_clock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson_uart_probe_clocks.exit

if.end.i:                                         ; preds = %meson_uart_probe_clock.exit.i
  %call.i24.i = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  %cmp.i.i25.i = icmp ugt ptr %call.i24.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i25.i, label %if.end.i.meson_uart_probe_clock.exit40.i_crit_edge, label %if.end.i28.i

if.end.i.meson_uart_probe_clock.exit40.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson_uart_probe_clock.exit40.i

if.end.i28.i:                                     ; preds = %if.end.i
  %call.i.i26.i = call i32 @clk_prepare(ptr noundef %call.i24.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i26.i)
  %tobool.not.i.i27.i = icmp eq i32 %call.i.i26.i, 0
  br i1 %tobool.not.i.i27.i, label %if.end.i.i31.i, label %if.end.i28.i.do.end.i34.i_crit_edge

if.end.i28.i.do.end.i34.i_crit_edge:              ; preds = %if.end.i28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i34.i

if.end.i.i31.i:                                   ; preds = %if.end.i28.i
  %call1.i.i29.i = call i32 @clk_enable(ptr noundef %call.i24.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i29.i)
  %tobool2.not.i.i30.i = icmp eq i32 %call1.i.i29.i, 0
  br i1 %tobool2.not.i.i30.i, label %if.end5.i37.i, label %if.then3.i.i32.i

if.then3.i.i32.i:                                 ; preds = %if.end.i.i31.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @clk_unprepare(ptr noundef %call.i24.i) #9
  br label %do.end.i34.i

do.end.i34.i:                                     ; preds = %if.then3.i.i32.i, %if.end.i28.i.do.end.i34.i_crit_edge
  %retval.0.i.ph.i33.i = phi i32 [ %call1.i.i29.i, %if.then3.i.i32.i ], [ %call.i.i26.i, %if.end.i28.i.do.end.i34.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #12
  %23 = inttoptr i32 %retval.0.i.ph.i33.i to ptr
  br label %meson_uart_probe_clock.exit40.i

if.end5.i37.i:                                    ; preds = %if.end.i.i31.i
  %call.i15.i35.i = call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @clk_disable_unprepare, ptr noundef %call.i24.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i35.i)
  %tobool.not.i16.i36.i = icmp eq i32 %call.i15.i35.i, 0
  br i1 %tobool.not.i16.i36.i, label %if.end5.i37.i.meson_uart_probe_clock.exit40.i_crit_edge, label %if.then.i.i38.i

if.end5.i37.i.meson_uart_probe_clock.exit40.i_crit_edge: ; preds = %if.end5.i37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson_uart_probe_clock.exit40.i

if.then.i.i38.i:                                  ; preds = %if.end5.i37.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @clk_disable(ptr noundef %call.i24.i) #9
  call void @clk_unprepare(ptr noundef %call.i24.i) #9
  br label %meson_uart_probe_clock.exit40.i

meson_uart_probe_clock.exit40.i:                  ; preds = %if.then.i.i38.i, %if.end5.i37.i.meson_uart_probe_clock.exit40.i_crit_edge, %do.end.i34.i, %if.end.i.meson_uart_probe_clock.exit40.i_crit_edge
  %retval.0.i39.i = phi ptr [ %23, %do.end.i34.i ], [ %call.i24.i, %if.end.i.meson_uart_probe_clock.exit40.i_crit_edge ], [ %call.i24.i, %if.end5.i37.i.meson_uart_probe_clock.exit40.i_crit_edge ], [ %call.i24.i, %if.then.i.i38.i ]
  %cmp.i41.i = icmp ugt ptr %retval.0.i39.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i41.i, label %meson_uart_probe_clock.exit40.i.meson_uart_probe_clocks.exit_crit_edge, label %if.end8.i

meson_uart_probe_clock.exit40.i.meson_uart_probe_clocks.exit_crit_edge: ; preds = %meson_uart_probe_clock.exit40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson_uart_probe_clocks.exit

if.end8.i:                                        ; preds = %meson_uart_probe_clock.exit40.i
  %call.i42.i = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  %cmp.i.i43.i = icmp ugt ptr %call.i42.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i43.i, label %if.end8.i.meson_uart_probe_clock.exit58.i_crit_edge, label %if.end.i46.i

if.end8.i.meson_uart_probe_clock.exit58.i_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson_uart_probe_clock.exit58.i

if.end.i46.i:                                     ; preds = %if.end8.i
  %call.i.i44.i = call i32 @clk_prepare(ptr noundef %call.i42.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i44.i)
  %tobool.not.i.i45.i = icmp eq i32 %call.i.i44.i, 0
  br i1 %tobool.not.i.i45.i, label %if.end.i.i49.i, label %if.end.i46.i.do.end.i52.i_crit_edge

if.end.i46.i.do.end.i52.i_crit_edge:              ; preds = %if.end.i46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i52.i

if.end.i.i49.i:                                   ; preds = %if.end.i46.i
  %call1.i.i47.i = call i32 @clk_enable(ptr noundef %call.i42.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i47.i)
  %tobool2.not.i.i48.i = icmp eq i32 %call1.i.i47.i, 0
  br i1 %tobool2.not.i.i48.i, label %if.end5.i55.i, label %if.then3.i.i50.i

if.then3.i.i50.i:                                 ; preds = %if.end.i.i49.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @clk_unprepare(ptr noundef %call.i42.i) #9
  br label %do.end.i52.i

do.end.i52.i:                                     ; preds = %if.then3.i.i50.i, %if.end.i46.i.do.end.i52.i_crit_edge
  %retval.0.i.ph.i51.i = phi i32 [ %call1.i.i47.i, %if.then3.i.i50.i ], [ %call.i.i44.i, %if.end.i46.i.do.end.i52.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #12
  %24 = inttoptr i32 %retval.0.i.ph.i51.i to ptr
  br label %meson_uart_probe_clock.exit58.i

if.end5.i55.i:                                    ; preds = %if.end.i.i49.i
  %call.i15.i53.i = call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @clk_disable_unprepare, ptr noundef %call.i42.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i53.i)
  %tobool.not.i16.i54.i = icmp eq i32 %call.i15.i53.i, 0
  br i1 %tobool.not.i16.i54.i, label %if.end5.i55.i.meson_uart_probe_clock.exit58.i_crit_edge, label %if.then.i.i56.i

if.end5.i55.i.meson_uart_probe_clock.exit58.i_crit_edge: ; preds = %if.end5.i55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson_uart_probe_clock.exit58.i

if.then.i.i56.i:                                  ; preds = %if.end5.i55.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @clk_disable(ptr noundef %call.i42.i) #9
  call void @clk_unprepare(ptr noundef %call.i42.i) #9
  br label %meson_uart_probe_clock.exit58.i

meson_uart_probe_clock.exit58.i:                  ; preds = %if.then.i.i56.i, %if.end5.i55.i.meson_uart_probe_clock.exit58.i_crit_edge, %do.end.i52.i, %if.end8.i.meson_uart_probe_clock.exit58.i_crit_edge
  %retval.0.i57.i = phi ptr [ %24, %do.end.i52.i ], [ %call.i42.i, %if.end8.i.meson_uart_probe_clock.exit58.i_crit_edge ], [ %call.i42.i, %if.end5.i55.i.meson_uart_probe_clock.exit58.i_crit_edge ], [ %call.i42.i, %if.then.i.i56.i ]
  %cmp.i59.i = icmp ugt ptr %retval.0.i57.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i59.i, label %meson_uart_probe_clock.exit58.i.meson_uart_probe_clocks.exit_crit_edge, label %meson_uart_probe_clocks.exit.thread

meson_uart_probe_clock.exit58.i.meson_uart_probe_clocks.exit_crit_edge: ; preds = %meson_uart_probe_clock.exit58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson_uart_probe_clocks.exit

meson_uart_probe_clocks.exit.thread:              ; preds = %meson_uart_probe_clock.exit58.i
  %call15.i = call i32 @clk_get_rate(ptr noundef %retval.0.i57.i) #9
  %uartclk.i = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 22
  %25 = ptrtoint ptr %uartclk.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call15.i, ptr %uartclk.i, align 4
  %iotype = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 26
  %26 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 2, ptr %iotype, align 2
  %27 = ptrtoint ptr %call18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %call18, align 4
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 43
  %29 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %mapbase, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call18, i32 0, i32 1
  %30 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %end.i, align 4
  %32 = load i32, ptr %call18, align 4
  %sub.i = add i32 %31, 1
  %add.i = sub i32 %sub.i, %32
  %mapsize = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 44
  %33 = ptrtoint ptr %mapsize to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add.i, ptr %mapsize, align 4
  %irq46 = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 20
  %34 = ptrtoint ptr %irq46 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call22, ptr %irq46, align 4
  %flags = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 33
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 268443648, ptr %flags, align 4
  %has_sysrq = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 48
  %36 = ptrtoint ptr %has_sysrq to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %has_sysrq, align 4
  %dev48 = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 45
  %37 = ptrtoint ptr %dev48 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %dev, ptr %dev48, align 4
  %38 = ptrtoint ptr %id3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %id3, align 4
  %line = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 41
  %40 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %line, align 4
  %type = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 38
  %41 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 109, ptr %type, align 4
  %x_char = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 24
  %42 = ptrtoint ptr %x_char to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %x_char, align 4
  %ops = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 39
  %43 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @meson_uart_ops, ptr %ops, align 4
  %44 = ptrtoint ptr %fifosize to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fifosize, align 4
  %fifosize50 = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 23
  %46 = ptrtoint ptr %fifosize50 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %fifosize50, align 4
  %arrayidx52 = getelementptr [12 x ptr], ptr @meson_ports, i32 0, i32 %39
  %47 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i, ptr %arrayidx52, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %48 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %49 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %50, null
  br i1 %tobool.not.i.i, label %if.end.i.i118, label %meson_uart_probe_clocks.exit.thread.dev_name.exit.i_crit_edge

meson_uart_probe_clocks.exit.thread.dev_name.exit.i_crit_edge: ; preds = %meson_uart_probe_clocks.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

meson_uart_probe_clocks.exit:                     ; preds = %meson_uart_probe_clock.exit58.i.meson_uart_probe_clocks.exit_crit_edge, %meson_uart_probe_clock.exit40.i.meson_uart_probe_clocks.exit_crit_edge, %meson_uart_probe_clock.exit.i.meson_uart_probe_clocks.exit_crit_edge
  %retval.0.i.in = phi ptr [ %retval.0.i.i, %meson_uart_probe_clock.exit.i.meson_uart_probe_clocks.exit_crit_edge ], [ %retval.0.i39.i, %meson_uart_probe_clock.exit40.i.meson_uart_probe_clocks.exit_crit_edge ], [ %retval.0.i57.i, %meson_uart_probe_clock.exit58.i.meson_uart_probe_clocks.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  br label %cleanup

if.end.i.i118:                                    ; preds = %meson_uart_probe_clocks.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i118, %meson_uart_probe_clocks.exit.thread.dev_name.exit.i_crit_edge
  %retval.0.i.i119 = phi ptr [ %52, %if.end.i.i118 ], [ %50, %meson_uart_probe_clocks.exit.thread.dev_name.exit.i_crit_edge ]
  %call2.i = call ptr @__devm_request_region(ptr noundef %dev, ptr noundef nonnull @iomem_resource, i32 noundef %28, i32 noundef %add.i, ptr noundef %retval.0.i.i119) #9
  %tobool.not.i = icmp eq ptr %call2.i, null
  %53 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev48, align 4
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i120

do.end.i:                                         ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.17) #12
  br label %if.end56

if.end.i120:                                      ; preds = %dev_name.exit.i
  %55 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mapbase, align 4
  %57 = ptrtoint ptr %mapsize to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mapsize, align 4
  %call7.i = call ptr @devm_ioremap(ptr noundef %54, i32 noundef %56, i32 noundef %58) #9
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 2
  %59 = ptrtoint ptr %membase.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call7.i, ptr %membase.i, align 4
  %tobool9.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool9.not.i, label %if.end.i120.if.end56_crit_edge, label %if.then55

if.end.i120.if.end56_crit_edge:                   ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then55:                                        ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %61, i32 8
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !89
  %63 = or i32 %62, 49153
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  call void @arm_heavy_mb() #9
  %64 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %membase.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %65, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %63) #9, !srcloc !77
  %66 = and i32 %62, -49154
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !91
  call void @arm_heavy_mb() #9
  %67 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %membase.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %68, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %66) #9, !srcloc !77
  %69 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev48, align 4
  %71 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %membase.i, align 4
  call void @devm_iounmap(ptr noundef %70, ptr noundef %72) #9
  %73 = ptrtoint ptr %membase.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %membase.i, align 4
  %74 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev48, align 4
  %76 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %mapbase, align 4
  %78 = ptrtoint ptr %mapsize to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %mapsize, align 4
  call void @__devm_release_region(ptr noundef %75, ptr noundef nonnull @iomem_resource, i32 noundef %77, i32 noundef %79) #9
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end.i120.if.end56_crit_edge, %do.end.i
  %call57 = call i32 @uart_add_one_port(ptr noundef nonnull @meson_uart_driver, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end56.cleanup_crit_edge, label %if.then59

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %id3 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %id3, align 4
  %arrayidx61 = getelementptr [12 x ptr], ptr @meson_ports, i32 0, i32 %81
  %82 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %arrayidx61, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %if.end56.cleanup_crit_edge, %meson_uart_probe_clocks.exit, %if.end35.cleanup_crit_edge, %do.end, %if.end21.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end11.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ -22, %if.end11.cleanup_crit_edge ], [ -19, %if.end17.cleanup_crit_edge ], [ %call22, %if.end21.cleanup_crit_edge ], [ -12, %if.end35.cleanup_crit_edge ], [ %retval.0.i, %meson_uart_probe_clocks.exit ], [ %call57, %if.then59 ], [ 0, %if.end56.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fifosize) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_uart_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @meson_uart_driver, ptr noundef %1) #9
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %arrayidx = getelementptr [12 x ptr], ptr @meson_ports, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_uart_request_port(ptr nocapture noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %2 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mapbase, align 4
  %mapsize = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 44
  %4 = ptrtoint ptr %mapsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mapsize, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %entry.dev_name.exit_crit_edge ]
  %call2 = tail call ptr @__devm_request_region(ptr noundef %1, ptr noundef nonnull @iomem_resource, i32 noundef %3, i32 noundef %5, ptr noundef %retval.0.i) #9
  %tobool.not = icmp eq ptr %call2, null
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.17) #12
  br label %return

if.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mapbase, align 4
  %14 = ptrtoint ptr %mapsize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mapsize, align 4
  %call7 = tail call ptr @devm_ioremap(ptr noundef %11, i32 noundef %13, i32 noundef %15) #9
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %16 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7, ptr %membase, align 4
  %tobool9.not = icmp eq ptr %call7, null
  %. = select i1 %tobool9.not, i32 -12, i32 0
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_uart_release_port(ptr nocapture noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 4
  tail call void @devm_iounmap(ptr noundef %1, ptr noundef %3) #9
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %membase, align 4
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %7 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mapbase, align 4
  %mapsize = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 44
  %9 = ptrtoint ptr %mapsize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mapsize, align 4
  tail call void @__devm_release_region(ptr noundef %6, ptr noundef nonnull @iomem_resource, i32 noundef %8, i32 noundef %10) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_disable_unprepare(ptr noundef %clk) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_disable(ptr noundef %clk) #9
  tail call void @clk_unprepare(ptr noundef %clk) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_uart_tx_empty(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  %3 = and i32 %2, 16386
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %3)
  %cmp = icmp eq i32 %3, 16384
  %cond = zext i1 %cmp to i32
  ret i32 %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meson_uart_set_mctrl(ptr nocapture noundef %port, i32 noundef %mctrl) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @meson_uart_get_mctrl(ptr nocapture noundef readnone %port) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 32
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_uart_stop_tx(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  %3 = and i32 %2, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !94
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #9, !srcloc !77
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_uart_start_tx(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %xmit1 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2
  %tty2.i = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %tty2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tty2.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i

entry.uart_tx_stopped.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %uart_tx_stopped.exit

land.lhs.true.i:                                  ; preds = %entry
  %stopped.i = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 19, i32 1
  %4 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %stopped.i, align 4, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not.i = icmp eq i8 %5, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i.if.then_crit_edge

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

land.lhs.true.i.uart_tx_stopped.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uart_tx_stopped.exit

uart_tx_stopped.exit:                             ; preds = %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, %entry.uart_tx_stopped.exit_crit_edge
  %hw_stopped.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 35
  %6 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw_stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not.i.not = icmp eq i32 %7, 0
  br i1 %tobool4.not.i.not, label %while.cond.preheader, label %uart_tx_stopped.exit.if.then_crit_edge

uart_tx_stopped.exit.if.then_crit_edge:           ; preds = %uart_tx_stopped.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

while.cond.preheader:                             ; preds = %uart_tx_stopped.exit
  %head = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %8 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase, align 4
  %add.ptr80 = getelementptr i8, ptr %9, i32 12
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr80) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  %11 = and i32 %10, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not81 = icmp eq i32 %11, 0
  br i1 %tobool4.not81, label %while.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %x_char = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 24
  %tx = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 5
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  br label %while.body

if.then:                                          ; preds = %uart_tx_stopped.exit.if.then_crit_edge, %land.lhs.true.i.if.then_crit_edge
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %12 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  %15 = and i32 %14, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !94
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %15) #9, !srcloc !77
  br label %cleanup

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %18 = ptrtoint ptr %x_char to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %x_char, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool5.not = icmp eq i8 %19, 0
  br i1 %tobool5.not, label %if.end11, label %do.body

do.body:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  tail call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %x_char to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %x_char, align 4
  %conv = zext i8 %21 to i32
  %22 = shl nuw i32 %conv, 24
  %23 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #9, !srcloc !77
  %25 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %tx, align 4
  %27 = ptrtoint ptr %x_char to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %x_char, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end14, %do.body
  %28 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %29, i32 12
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  %31 = and i32 %30, 8192
  %tobool4.not = icmp eq i32 %31, 0
  br i1 %tobool4.not, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end11:                                         ; preds = %while.body
  %32 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %head, align 4
  %34 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp = icmp eq i32 %33, %35
  br i1 %cmp, label %if.end11.while.end_crit_edge, label %if.end14

if.end11.while.end_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end14:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %xmit1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %xmit1, align 4
  %arrayidx = getelementptr i8, ptr %37, i32 %35
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx, align 1
  %conv16 = zext i8 %39 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !98
  tail call void @arm_heavy_mb() #9
  %40 = shl nuw i32 %conv16, 24
  %41 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #9, !srcloc !77
  %43 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tail, align 4
  %add = add i32 %44, 1
  %and23 = and i32 %add, 4095
  store i32 %and23, ptr %tail, align 4
  %45 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx, align 4
  %inc27 = add i32 %46, 1
  store i32 %inc27, ptr %tx, align 4
  br label %while.cond.backedge

while.end:                                        ; preds = %if.end11.while.end_crit_edge, %while.cond.backedge.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %47 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %head, align 4
  %tail29 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %49 = ptrtoint ptr %tail29 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tail29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp30 = icmp eq i32 %48, %50
  br i1 %cmp30, label %while.end.if.end45_crit_edge, label %if.then32

while.end.if.end45_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then32:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %membase, align 4
  %add.ptr36 = getelementptr i8, ptr %52, i32 8
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  %54 = or i32 %53, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %55 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %membase, align 4
  %add.ptr44 = getelementptr i8, ptr %56, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %54) #9, !srcloc !77
  br label %if.end45

if.end45:                                         ; preds = %if.then32, %while.end.if.end45_crit_edge
  %57 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %head, align 4
  %59 = ptrtoint ptr %tail29 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tail29, align 4
  %sub = sub i32 %58, %60
  %and48 = and i32 %sub, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %cmp49 = icmp eq i32 %and48, 0
  br i1 %cmp49, label %if.then51, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then51:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @uart_write_wakeup(ptr noundef %port) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %if.end45.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_uart_stop_rx(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  %3 = and i32 %2, -2097153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #9, !srcloc !77
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_uart_startup(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %3 = or i32 %2, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #9, !srcloc !77
  %6 = and i32 %2, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !105
  tail call void @arm_heavy_mb() #9
  %7 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase, align 4
  %add.ptr8 = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %6) #9, !srcloc !77
  %9 = or i32 %6, 3145728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !106
  tail call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase, align 4
  %add.ptr14 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %9) #9, !srcloc !77
  %12 = or i32 %6, 3145752
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase, align 4
  %add.ptr20 = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %12) #9, !srcloc !77
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 23
  %15 = ptrtoint ptr %fifosize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fifosize, align 4
  %17 = shl i32 %16, 7
  %shl = and i32 %17, 65280
  %or22 = or i32 %shl, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  tail call void @arm_heavy_mb() #9
  %18 = tail call i32 @llvm.bswap.i32(i32 %or22)
  %19 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase, align 4
  %add.ptr27 = getelementptr i8, ptr %20, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %18) #9, !srcloc !77
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq, align 4
  %name = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 53
  %23 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %22, ptr noundef nonnull @meson_uart_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %24, ptr noundef %port) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_uart_shutdown(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %1, ptr noundef %port) #9
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #9
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %5 = and i32 %4, -2097177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %add.ptr14 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %5) #9, !srcloc !77
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_uart_set_termios(ptr noundef %port, ptr noundef %termios, ptr noundef %old) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #9
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %0 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_cflag, align 4
  %2 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %termios, align 4
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  %7 = and i32 %6, -12289
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %and8 = lshr i32 %1, 4
  %9 = and i32 %and8, 3
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %entry.unreachabledefault [
    i32 3, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb9
    i32 1, label %sw.bb11
    i32 0, label %sw.bb13
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or10 = or i32 %8, 1048576
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or12 = or i32 %8, 2097152
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or14 = or i32 %8, 3145728
  br label %sw.epilog

entry.unreachabledefault:                         ; preds = %entry
  unreachable

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb11, %sw.bb9, %entry.sw.epilog_crit_edge
  %val.0 = phi i32 [ %or14, %sw.bb13 ], [ %or12, %sw.bb11 ], [ %or10, %sw.bb9 ], [ %8, %entry.sw.epilog_crit_edge ]
  %and17 = and i32 %val.0, -983041
  %and15 = shl i32 %1, 11
  %11 = and i32 %and15, 524288
  %and18 = shl i32 %1, 9
  %12 = and i32 %and18, 262144
  %and26 = shl i32 %1, 10
  %13 = and i32 %and26, 65536
  %val.1 = or i32 %12, %11
  %val.2 = or i32 %val.1, %13
  %14 = or i32 %val.2, %and17
  %and36 = and i32 %14, -163841
  %or38 = or i32 %14, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool34.not94 = icmp slt i32 %1, 0
  %val.4 = select i1 %tobool34.not94, i32 %and36, i32 %or38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %15 = tail call i32 @llvm.bswap.i32(i32 %val.4)
  %16 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase, align 4
  %add.ptr44 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %15) #9, !srcloc !77
  %call45 = tail call i32 @uart_get_baud_rate(ptr noundef %port, ptr noundef %termios, ptr noundef %old, i32 noundef 50, i32 noundef 4000000) #9
  %18 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %19, i32 12
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25.i) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  %21 = and i32 %20, 16386
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %21)
  %cmp.i.not26.i = icmp eq i32 %21, 16384
  br i1 %cmp.i.not26.i, label %sw.epilog.while.end.i_crit_edge, label %sw.epilog.do.end.i_crit_edge

sw.epilog.do.end.i_crit_edge:                     ; preds = %sw.epilog
  br label %do.end.i

sw.epilog.while.end.i_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %sw.epilog.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !113
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !114
  %22 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 12
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  %25 = and i32 %24, 16386
  %cmp.i.not.i = icmp eq i32 %25, 16384
  br i1 %cmp.i.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %sw.epilog.while.end.i_crit_edge
  %uartclk.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %26 = ptrtoint ptr %uartclk.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %uartclk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000000, i32 %27)
  %cmp.i = icmp eq i32 %27, 24000000
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %div8.i = udiv i32 8000000, %call45
  %sub.i = add nsw i32 %div8.i, -1
  %or.i = or i32 %sub.i, 16777216
  br label %meson_uart_change_speed.exit

if.else.i:                                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i = mul i32 %27, 10
  %mul10.i = shl i32 %call45, 2
  %div11.i = udiv i32 %mul.i, %mul10.i
  %add.i = add i32 %div11.i, 5
  %div12.i = udiv i32 %add.i, 10
  %sub13.i = add nsw i32 %div12.i, -1
  br label %meson_uart_change_speed.exit

meson_uart_change_speed.exit:                     ; preds = %if.else.i, %if.then.i
  %val.0.i = phi i32 [ %or.i, %if.then.i ], [ %sub13.i, %if.else.i ]
  %or14.i = or i32 %val.0.i, 8388608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  tail call void @arm_heavy_mb() #9
  %28 = tail call i32 @llvm.bswap.i32(i32 %or14.i) #9
  %29 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %28) #9, !srcloc !77
  %read_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 28
  %and46 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  %storemerge93 = select i1 %tobool47.not, i32 262144, i32 458752
  %31 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %storemerge93, ptr %read_status_mask, align 4
  %and52 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  %storemerge = select i1 %tobool53.not, i32 0, i32 196608
  %ignore_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 29
  %32 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %storemerge, ptr %ignore_status_mask, align 4
  %33 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %c_cflag, align 4
  tail call void @uart_update_timeout(ptr noundef %port, i32 noundef %34, i32 noundef %call45) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call2) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @meson_uart_type(ptr nocapture noundef readonly %port) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 109, i32 %1)
  %cmp = icmp eq i32 %1, 109
  %cond = select i1 %cmp, ptr @.str, ptr null
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_uart_config_port(ptr nocapture noundef %port, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 109, ptr %type, align 4
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  %mapbase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %3 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mapbase.i, align 4
  %mapsize.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 44
  %5 = ptrtoint ptr %mapsize.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mapsize.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.dev_name.exit.i_crit_edge

if.then.dev_name.exit.i_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %2, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %if.then.dev_name.exit.i_crit_edge ]
  %call2.i = tail call ptr @__devm_request_region(ptr noundef %2, ptr noundef nonnull @iomem_resource, i32 noundef %4, i32 noundef %6, ptr noundef %retval.0.i.i) #9
  %tobool.not.i = icmp eq ptr %call2.i, null
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.17) #12
  br label %if.end

if.end.i:                                         ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mapbase.i, align 4
  %15 = ptrtoint ptr %mapsize.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mapsize.i, align 4
  %call7.i = tail call ptr @devm_ioremap(ptr noundef %12, i32 noundef %14, i32 noundef %16) #9
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %17 = ptrtoint ptr %membase.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i, ptr %membase.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i, %do.end.i, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @meson_uart_verify_port(ptr nocapture noundef readonly %port, ptr nocapture noundef readonly %ser) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 109, i32 %1)
  %cmp.not = icmp eq i32 %1, 109
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %irq1 = getelementptr inbounds %struct.serial_struct, ptr %ser, i32 0, i32 3
  %4 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp2.not = icmp eq i32 %3, %5
  %6 = select i1 %cmp2.not, i1 %cmp.not, i1 false
  %spec.store.select8 = select i1 %6, i32 0, i32 -22
  %baud_base = getelementptr inbounds %struct.serial_struct, ptr %ser, i32 0, i32 7
  %7 = ptrtoint ptr %baud_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %baud_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9600, i32 %8)
  %cmp5 = icmp slt i32 %8, 9600
  %spec.store.select9 = select i1 %cmp5, i32 -22, i32 %spec.store.select8
  ret i32 %spec.store.select9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_uart_poll_put_char(ptr noundef %port, i8 noundef zeroext %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #9
  %call5 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call5, 10000000
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr139 = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr139) #9, !srcloc !74
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  %and140 = and i32 %3, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool.not141 = icmp eq i32 %and140, 0
  br i1 %tobool.not141, label %entry.land.lhs.true_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call11 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call11, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call11, %add.i
  br i1 %cmp3.i, label %if.then15, label %cond.false

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr19 = getelementptr i8, ptr %5, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #9, !srcloc !74
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !117
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 1073740) #9
  %9 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 12
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !74
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  %and = and i32 %12, 4194304
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false.land.lhs.true_crit_edge, label %cond.false.for.end_crit_edge

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then15, %entry.for.end_crit_edge
  %reg.0 = phi i32 [ %7, %if.then15 ], [ %3, %entry.for.end_crit_edge ], [ %12, %cond.false.for.end_crit_edge ]
  %and33 = and i32 %reg.0, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %for.end.out.sink.split_crit_edge, label %do.body42

for.end.out.sink.split_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.sink.split

do.body42:                                        ; preds = %for.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !118
  tail call void @arm_heavy_mb() #9
  %conv45 = zext i8 %c to i32
  %13 = shl nuw i32 %conv45, 24
  %14 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #9, !srcloc !77
  %call51 = tail call i64 @ktime_get() #9
  %add.i128 = add i64 %call51, 10000000
  %16 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase, align 4
  %add.ptr57142 = getelementptr i8, ptr %17, i32 12
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57142) #9, !srcloc !74
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  %and61143 = and i32 %19, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61143)
  %tobool62.not144 = icmp eq i32 %and61143, 0
  br i1 %tobool62.not144, label %do.body42.land.lhs.true66_crit_edge, label %do.body42.for.end92_crit_edge

do.body42.for.end92_crit_edge:                    ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end92

do.body42.land.lhs.true66_crit_edge:              ; preds = %do.body42
  br label %land.lhs.true66

land.lhs.true66:                                  ; preds = %cond.false86.land.lhs.true66_crit_edge, %do.body42.land.lhs.true66_crit_edge
  %call67 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call67, i64 %add.i128)
  %cmp3.i130 = icmp sgt i64 %call67, %add.i128
  br i1 %cmp3.i130, label %if.then71, label %cond.false86

if.then71:                                        ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase, align 4
  %add.ptr75 = getelementptr i8, ptr %21, i32 12
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr75) #9, !srcloc !74
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  br label %for.end92

cond.false86:                                     ; preds = %land.lhs.true66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 1073740) #9
  %25 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase, align 4
  %add.ptr57 = getelementptr i8, ptr %26, i32 12
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #9, !srcloc !74
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  %and61 = and i32 %28, 4194304
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %cond.false86.land.lhs.true66_crit_edge, label %cond.false86.for.end92_crit_edge

cond.false86.for.end92_crit_edge:                 ; preds = %cond.false86
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end92

cond.false86.land.lhs.true66_crit_edge:           ; preds = %cond.false86
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true66

for.end92:                                        ; preds = %cond.false86.for.end92_crit_edge, %if.then71, %do.body42.for.end92_crit_edge
  %reg.1 = phi i32 [ %23, %if.then71 ], [ %19, %do.body42.for.end92_crit_edge ], [ %28, %cond.false86.for.end92_crit_edge ]
  %and94 = and i32 %reg.1, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %for.end92.out.sink.split_crit_edge, label %for.end92.out_crit_edge

for.end92.out_crit_edge:                          ; preds = %for.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.end92.out.sink.split_crit_edge:               ; preds = %for.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.sink.split

out.sink.split:                                   ; preds = %for.end92.out.sink.split_crit_edge, %for.end.out.sink.split_crit_edge
  %dev103 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %29 = ptrtoint ptr %dev103 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev103, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.13) #12
  br label %out

out:                                              ; preds = %out.sink.split, %for.end92.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_uart_poll_get_char(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #9
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %3 = and i32 %2, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr11 = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #9, !srcloc !74
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %c.0 = phi i32 [ %7, %if.else ], [ 16711680, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call2) #9
  ret i32 %c.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_uart_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %dev_id) #9
  %membase = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !123
  %3 = and i32 %2, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %state.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 30
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state.i, align 4
  %rx.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 4
  %overrun.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 7
  %frame.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 6
  %read_status_mask.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 28
  %brk.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 9
  %handle_break.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 17
  %has_sysrq.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 48
  %cons.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 32
  %line.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 41
  %sysrq.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 46
  %flags.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 33
  %ignore_status_mask.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 29
  %tail.i.i = getelementptr inbounds %struct.tty_bufhead, ptr %5, i32 0, i32 8
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond81.i.do.body.i_crit_edge, %if.then
  %6 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx.i, align 4
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %rx.i, align 4
  %8 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 12
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !74
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !124
  %and.i = and i32 %11, 458752
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.if.end48.i_crit_edge, label %if.then.i

do.body.i.if.end48.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i

if.then.i:                                        ; preds = %do.body.i
  %and3.i = and i32 %11, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.else.i, label %if.then.i.if.end21.sink.split.i_crit_edge

if.then.i.if.end21.sink.split.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.sink.split.i

if.else.i:                                        ; preds = %if.then.i
  %12 = and i32 %11, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %if.else.i.if.end21.i_crit_edge, label %if.else.i.if.end21.sink.split.i_crit_edge

if.else.i.if.end21.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.sink.split.i

if.else.i.if.end21.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.end21.sink.split.i:                            ; preds = %if.else.i.if.end21.sink.split.i_crit_edge, %if.then.i.if.end21.sink.split.i_crit_edge
  %frame.sink167.i = phi ptr [ %overrun.i, %if.then.i.if.end21.sink.split.i_crit_edge ], [ %frame.i, %if.else.i.if.end21.sink.split.i_crit_edge ]
  %14 = ptrtoint ptr %frame.sink167.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %frame.sink167.i, align 4
  %inc12.i = add i32 %15, 1
  store i32 %inc12.i, ptr %frame.sink167.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end21.sink.split.i, %if.else.i.if.end21.i_crit_edge
  %16 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase, align 4
  %add.ptr25.i = getelementptr i8, ptr %17, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.i) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !125
  %19 = or i32 %18, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !126
  tail call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase, align 4
  %add.ptr31.i = getelementptr i8, ptr %21, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 %19) #9, !srcloc !77
  %22 = and i32 %18, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  tail call void @arm_heavy_mb() #9
  %23 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase, align 4
  %add.ptr37.i = getelementptr i8, ptr %24, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i, i32 %22) #9, !srcloc !77
  %25 = ptrtoint ptr %read_status_mask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %read_status_mask.i, align 4
  %and38.i = and i32 %26, %11
  %and39.i = and i32 %and38.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %if.else42.i, label %if.end21.i.if.end48.i_crit_edge

if.end21.i.if.end48.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i

if.else42.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  %and43.i = and i32 %and38.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  %spec.select.i = select i1 %tobool44.not.i, i8 0, i8 3
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.else42.i, %if.end21.i.if.end48.i_crit_edge, %do.body.i.if.end48.i_crit_edge
  %status.0.i = phi i32 [ %11, %do.body.i.if.end48.i_crit_edge ], [ %and38.i, %if.end21.i.if.end48.i_crit_edge ], [ %and38.i, %if.else42.i ]
  %flag.0.i = phi i8 [ 0, %do.body.i.if.end48.i_crit_edge ], [ 2, %if.end21.i.if.end48.i_crit_edge ], [ %spec.select.i, %if.else42.i ]
  %27 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase, align 4
  %add.ptr52.i = getelementptr i8, ptr %28, i32 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52.i) #9, !srcloc !74
  %30 = lshr i32 %29, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !128
  %and57.i = and i32 %11, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp ne i32 %and57.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %29)
  %cmp.i = icmp ult i32 %29, 16777216
  %or.cond.i = select i1 %tobool58.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %if.then59.i, label %if.end48.i.if.end66.i_crit_edge

if.end48.i.if.end66.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66.i

if.then59.i:                                      ; preds = %if.end48.i
  %31 = ptrtoint ptr %brk.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %brk.i, align 4
  %inc61.i = add i32 %32, 1
  store i32 %inc61.i, ptr %brk.i, align 4
  %33 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %state.i, align 4
  %35 = ptrtoint ptr %handle_break.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %handle_break.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i, label %if.then59.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then59.i.if.end.i.i_crit_edge:                 ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %36(ptr noundef %dev_id) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then59.i.if.end.i.i_crit_edge
  %37 = ptrtoint ptr %has_sysrq.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %has_sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool3.not.i.i = icmp eq i8 %38, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end15.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.if.end15.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %39 = ptrtoint ptr %cons.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cons.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %40, null
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.if.end15.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.if.end15.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %index.i.i = getelementptr inbounds %struct.console, ptr %40, i32 0, i32 9
  %41 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %index.i.i, align 2
  %conv7.i.i = sext i16 %42 to i32
  %43 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %line.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %conv7.i.i)
  %cmp.i.i = icmp eq i32 %44, %conv7.i.i
  br i1 %cmp.i.i, label %if.then9.i.i, label %land.lhs.true5.i.i.if.end15.i.i_crit_edge

land.lhs.true5.i.i.if.end15.i.i_crit_edge:        ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i.i

if.then9.i.i:                                     ; preds = %land.lhs.true5.i.i
  %45 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool10.not.i.i = icmp eq i32 %46, 0
  br i1 %tobool10.not.i.i, label %uart_handle_break.exit.i, label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.end13.i.i, %land.lhs.true5.i.i.if.end15.i.i_crit_edge, %land.lhs.true.i.i.if.end15.i.i_crit_edge, %if.end.i.i.if.end15.i.i_crit_edge
  %48 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %49, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool16.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end15.i.i.if.end66.i_crit_edge, label %if.then17.i.i

if.end15.i.i.if.end66.i_crit_edge:                ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66.i

if.then17.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %tty.i.i = getelementptr inbounds %struct.tty_port, ptr %34, i32 0, i32 1
  %50 = ptrtoint ptr %tty.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tty.i.i, align 4
  tail call void @do_SAK(ptr noundef %51) #9
  br label %if.end66.i

uart_handle_break.exit.i:                         ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %52 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %52, 500
  %53 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add.i.i, ptr %sysrq.i.i, align 4
  br label %do.cond81.i

if.end66.i:                                       ; preds = %if.then17.i.i, %if.end15.i.i.if.end66.i_crit_edge, %if.end48.i.if.end66.i_crit_edge
  %flag.1.i = phi i8 [ %flag.0.i, %if.end48.i.if.end66.i_crit_edge ], [ 1, %if.then17.i.i ], [ 1, %if.end15.i.i.if.end66.i_crit_edge ]
  %54 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i124.i = icmp eq i32 %55, 0
  br i1 %tobool.not.i124.i, label %if.end66.i.if.end70.i_crit_edge, label %if.end.i125.i

if.end66.i.if.end70.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70.i

if.end.i125.i:                                    ; preds = %if.end66.i
  br i1 %cmp.i, label %if.end.i125.i.uart_handle_sysrq_char.exit.thread164.i_crit_edge, label %land.lhs.true.i127.i

if.end.i125.i.uart_handle_sysrq_char.exit.thread164.i_crit_edge: ; preds = %if.end.i125.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uart_handle_sysrq_char.exit.thread164.i

land.lhs.true.i127.i:                             ; preds = %if.end.i125.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %56 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %56, %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i126.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i126.i, label %if.then3.i.i, label %land.lhs.true.i127.i.uart_handle_sysrq_char.exit.thread164.i_crit_edge

land.lhs.true.i127.i.uart_handle_sysrq_char.exit.thread164.i_crit_edge: ; preds = %land.lhs.true.i127.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uart_handle_sysrq_char.exit.thread164.i

if.then3.i.i:                                     ; preds = %land.lhs.true.i127.i
  %call.i.i = tail call i32 @sysrq_mask() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i128.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i128.i, label %if.end7.i.i, label %uart_handle_sysrq_char.exit.i

if.end7.i.i:                                      ; preds = %if.then3.i.i
  %call8.i.i = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %dev_id, i32 noundef %30) #9
  br i1 %call8.i.i, label %if.end7.i.i.do.cond81.i_crit_edge, label %if.end7.i.i.uart_handle_sysrq_char.exit.thread164.i_crit_edge

if.end7.i.i.uart_handle_sysrq_char.exit.thread164.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uart_handle_sysrq_char.exit.thread164.i

if.end7.i.i.do.cond81.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond81.i

uart_handle_sysrq_char.exit.thread164.i:          ; preds = %if.end7.i.i.uart_handle_sysrq_char.exit.thread164.i_crit_edge, %land.lhs.true.i127.i.uart_handle_sysrq_char.exit.thread164.i_crit_edge, %if.end.i125.i.uart_handle_sysrq_char.exit.thread164.i_crit_edge
  %57 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %if.end70.i

uart_handle_sysrq_char.exit.i:                    ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @handle_sysrq(i32 noundef %30) #9
  %58 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %do.cond81.i

if.end70.i:                                       ; preds = %uart_handle_sysrq_char.exit.thread164.i, %if.end66.i.if.end70.i_crit_edge
  %59 = ptrtoint ptr %ignore_status_mask.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ignore_status_mask.i, align 4
  %and71.i = and i32 %60, %status.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.i)
  %cmp72.i = icmp eq i32 %and71.i, 0
  br i1 %cmp72.i, label %if.then73.i, label %if.end70.i.if.end75.i_crit_edge

if.end70.i.if.end75.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75.i

if.then73.i:                                      ; preds = %if.end70.i
  %conv.i = trunc i32 %30 to i8
  %61 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tail.i.i, align 4
  %flags.i130.i = getelementptr inbounds %struct.tty_buffer, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %flags.i130.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags.i130.i, align 4
  %and.i131.i = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i131.i)
  %tobool.not.i132.i = icmp eq i32 %and.i131.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %flag.1.i)
  %cmp.i133.i = icmp eq i8 %flag.1.i, 0
  %65 = or i1 %cmp.i133.i, %tobool.not.i132.i
  br i1 %65, label %land.lhs.true.i134.i, label %if.then73.i.if.end12.i.i_crit_edge

if.then73.i.if.end12.i.i_crit_edge:               ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i.i

land.lhs.true.i134.i:                             ; preds = %if.then73.i
  %used.i.i = getelementptr inbounds %struct.tty_buffer, ptr %62, i32 0, i32 1
  %66 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %used.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.tty_buffer, ptr %62, i32 0, i32 2
  %68 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp3.i.i = icmp slt i32 %67, %69
  br i1 %cmp3.i.i, label %if.then.i135.i, label %land.lhs.true.i134.i.if.end12.i.i_crit_edge

land.lhs.true.i134.i.if.end12.i.i_crit_edge:      ; preds = %land.lhs.true.i134.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i.i

if.then.i135.i:                                   ; preds = %land.lhs.true.i134.i
  br i1 %tobool.not.i132.i, label %if.then8.i.i, label %if.then.i135.i.if.end.i136.i_crit_edge

if.then.i135.i.if.end.i136.i_crit_edge:           ; preds = %if.then.i135.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i136.i

if.then8.i.i:                                     ; preds = %if.then.i135.i
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %62, i32 0, i32 6
  %add.ptr.i.i.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %67
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %69
  %70 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %flag.1.i, ptr %add.ptr.i.i.i, align 1
  br label %if.end.i136.i

if.end.i136.i:                                    ; preds = %if.then8.i.i, %if.then.i135.i.if.end.i136.i_crit_edge
  %71 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %used.i.i, align 4
  %inc.i.i = add i32 %72, 1
  store i32 %inc.i.i, ptr %used.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %62, i32 0, i32 6
  %add.ptr.i1.i.i = getelementptr i8, ptr %data.i.i.i, i32 %72
  %73 = ptrtoint ptr %add.ptr.i1.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv.i, ptr %add.ptr.i1.i.i, align 1
  br label %if.end75.i

if.end12.i.i:                                     ; preds = %land.lhs.true.i134.i.if.end12.i.i_crit_edge, %if.then73.i.if.end12.i.i_crit_edge
  %call13.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %5, i8 noundef zeroext %conv.i, i8 noundef zeroext %flag.1.i) #9
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.end12.i.i, %if.end.i136.i, %if.end70.i.if.end75.i_crit_edge
  %and76.i = and i32 %status.0.i, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.i)
  %tobool77.not.i = icmp eq i32 %and76.i, 0
  br i1 %tobool77.not.i, label %if.end75.i.do.cond81.i_crit_edge, label %if.then78.i

if.end75.i.do.cond81.i_crit_edge:                 ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond81.i

if.then78.i:                                      ; preds = %if.end75.i
  %74 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tail.i.i, align 4
  %flags.i138.i = getelementptr inbounds %struct.tty_buffer, ptr %75, i32 0, i32 5
  %76 = ptrtoint ptr %flags.i138.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flags.i138.i, align 4
  %and.i139.i = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i139.i)
  %tobool.not.i140.i = icmp eq i32 %and.i139.i, 0
  br i1 %tobool.not.i140.i, label %land.lhs.true.i144.i, label %if.then78.i.if.end12.i155.i_crit_edge

if.then78.i.if.end12.i155.i_crit_edge:            ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i155.i

land.lhs.true.i144.i:                             ; preds = %if.then78.i
  %used.i141.i = getelementptr inbounds %struct.tty_buffer, ptr %75, i32 0, i32 1
  %78 = ptrtoint ptr %used.i141.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %used.i141.i, align 4
  %size.i142.i = getelementptr inbounds %struct.tty_buffer, ptr %75, i32 0, i32 2
  %80 = ptrtoint ptr %size.i142.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %size.i142.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %81)
  %cmp3.i143.i = icmp slt i32 %79, %81
  br i1 %cmp3.i143.i, label %if.end.i153.i, label %land.lhs.true.i144.i.if.end12.i155.i_crit_edge

land.lhs.true.i144.i.if.end12.i155.i_crit_edge:   ; preds = %land.lhs.true.i144.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i155.i

if.end.i153.i:                                    ; preds = %land.lhs.true.i144.i
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i.i146.i = getelementptr inbounds %struct.tty_buffer, ptr %75, i32 0, i32 6
  %add.ptr.i.i.i147.i = getelementptr i8, ptr %data.i.i.i146.i, i32 %79
  %add.ptr.i.i148.i = getelementptr i8, ptr %add.ptr.i.i.i147.i, i32 %81
  %82 = ptrtoint ptr %add.ptr.i.i148.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 4, ptr %add.ptr.i.i148.i, align 1
  %83 = ptrtoint ptr %used.i141.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %used.i141.i, align 4
  %inc.i150.i = add i32 %84, 1
  store i32 %inc.i150.i, ptr %used.i141.i, align 4
  %add.ptr.i1.i152.i = getelementptr i8, ptr %data.i.i.i146.i, i32 %84
  %85 = ptrtoint ptr %add.ptr.i1.i152.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %add.ptr.i1.i152.i, align 1
  br label %do.cond81.i

if.end12.i155.i:                                  ; preds = %land.lhs.true.i144.i.if.end12.i155.i_crit_edge, %if.then78.i.if.end12.i155.i_crit_edge
  %call13.i154.i = tail call i32 @__tty_insert_flip_char(ptr noundef %5, i8 noundef zeroext 0, i8 noundef zeroext 4) #9
  br label %do.cond81.i

do.cond81.i:                                      ; preds = %if.end12.i155.i, %if.end.i153.i, %if.end75.i.do.cond81.i_crit_edge, %uart_handle_sysrq_char.exit.i, %if.end7.i.i.do.cond81.i_crit_edge, %uart_handle_break.exit.i
  %86 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %membase, align 4
  %add.ptr85.i = getelementptr i8, ptr %87, i32 12
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85.i) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !129
  %89 = and i32 %88, 4096
  %tobool90.not.i = icmp eq i32 %89, 0
  br i1 %tobool90.not.i, label %do.cond81.i.do.body.i_crit_edge, label %meson_receive_chars.exit

do.cond81.i.do.body.i_crit_edge:                  ; preds = %do.cond81.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

meson_receive_chars.exit:                         ; preds = %do.cond81.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tty_flip_buffer_push(ptr noundef %5) #9
  br label %if.end

if.end:                                           ; preds = %meson_receive_chars.exit, %entry.if.end_crit_edge
  %90 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %membase, align 4
  %add.ptr5 = getelementptr i8, ptr %91, i32 12
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !130
  %93 = and i32 %92, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool10.not = icmp eq i32 %93, 0
  br i1 %tobool10.not, label %if.then11, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then11:                                        ; preds = %if.end
  %94 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %membase, align 4
  %add.ptr15 = getelementptr i8, ptr %95, i32 8
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !131
  %97 = and i32 %96, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool20.not = icmp eq i32 %97, 0
  br i1 %tobool20.not, label %if.then11.if.end23_crit_edge, label %if.then21

if.then11.if.end23_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then21:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @meson_uart_start_tx(ptr noundef %dev_id)
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.then11.if.end23_crit_edge, %if.end.if.end23_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %dev_id) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__devm_release_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_serial_console_write(ptr nocapture noundef readonly %co, ptr noundef %s, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index, align 2
  %idxprom = sext i16 %1 to i32
  %arrayidx = getelementptr [12 x ptr], ptr @meson_ports, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @meson_serial_port_write(ptr noundef nonnull %3, ptr noundef %s, i32 noundef %count)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_serial_console_setup(ptr noundef %co, ptr noundef %options) #2 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %5)
  %6 = icmp ugt i16 %5, 11
  br i1 %6, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv25 = zext i16 %5 to i32
  %arrayidx = getelementptr [12 x ptr], ptr @meson_ports, i32 0, i32 %conv25
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false7:                                   ; preds = %if.end
  %membase = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %lor.lhs.false7.cleanup_crit_edge, label %if.end10

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false7
  %add.ptr.i = getelementptr i8, ptr %10, i32 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  %12 = or i32 %11, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !76
  tail call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase, align 4
  %add.ptr3.i = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %12) #9, !srcloc !77
  %tobool11.not = icmp eq ptr %options, null
  br i1 %tobool11.not, label %if.end10.if.end13_crit_edge, label %if.then12

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  call void @uart_parse_options(ptr noundef nonnull %options, ptr noundef nonnull %baud, ptr noundef nonnull %parity, ptr noundef nonnull %bits, ptr noundef nonnull %flow) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10.if.end13_crit_edge
  %15 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %baud, align 4
  %17 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %parity, align 4
  %19 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bits, align 4
  %21 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flow, align 4
  %call = call i32 @uart_set_options(ptr noundef nonnull %8, ptr noundef %co, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %lor.lhs.false7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end13 ], [ -22, %entry.cleanup_crit_edge ], [ -19, %lor.lhs.false7.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flow) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parity) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %baud) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_console(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !35, !37, !39, !40, !41, !42, !44, !46, !47, !48, !49, !51, !52, !54, !55, !56, !57, !59, !61, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__UNIQUE_ID___earlycon_meson227, !1, !"__UNIQUE_ID___earlycon_meson227", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/meson_uart.c", i32 626, i32 1}
!2 = !{ptr @__initcall__kmod_meson_uart__228_823_meson_uart_init6, !3, !"__initcall__kmod_meson_uart__228_823_meson_uart_init6", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/meson_uart.c", i32 823, i32 1}
!4 = !{ptr @__exitcall_meson_uart_exit, !5, !"__exitcall_meson_uart_exit", i1 false, i1 false}
!5 = !{!"../drivers/tty/serial/meson_uart.c", i32 824, i32 1}
!6 = !{ptr @__UNIQUE_ID_author229, !7, !"__UNIQUE_ID_author229", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/meson_uart.c", i32 826, i32 1}
!8 = !{ptr @__UNIQUE_ID_description230, !9, !"__UNIQUE_ID_description230", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/meson_uart.c", i32 827, i32 1}
!10 = !{ptr @__UNIQUE_ID_file231, !11, !"__UNIQUE_ID_file231", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/meson_uart.c", i32 828, i32 1}
!12 = !{ptr @__UNIQUE_ID_license232, !11, !"__UNIQUE_ID_license232", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/tty/serial/meson_uart.c", i32 793, i32 12}
!15 = !{ptr @meson_uart_platform_driver, !16, !"meson_uart_platform_driver", i1 false, i1 false}
!16 = !{!"../drivers/tty/serial/meson_uart.c", i32 789, i32 32}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/tty/serial/meson_uart.c", i32 701, i32 49}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/tty/serial/meson_uart.c", i32 725, i32 42}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/tty/serial/meson_uart.c", i32 728, i32 3}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @meson_uart_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @meson_uart_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @meson_ports, !30, !"meson_ports", i1 false, i1 false}
!30 = !{!"../drivers/tty/serial/meson_uart.c", i32 81, i32 26}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/tty/serial/meson_uart.c", i32 675, i32 48}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/tty/serial/meson_uart.c", i32 679, i32 48}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/tty/serial/meson_uart.c", i32 683, i32 48}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/tty/serial/meson_uart.c", i32 657, i32 3}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @meson_uart_probe_clock._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @meson_uart_probe_clock._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @meson_uart_ops, !43, !"meson_uart_ops", i1 false, i1 false}
!43 = !{!"../drivers/tty/serial/meson_uart.c", i32 485, i32 30}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/tty/serial/meson_uart.c", i32 464, i32 3}
!46 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @meson_uart_poll_put_char._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @meson_uart_poll_put_char._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @meson_uart_poll_put_char._entry.15, !50, !"_entry", i1 false, i1 false}
!50 = !{!"../drivers/tty/serial/meson_uart.c", i32 477, i32 3}
!51 = !{ptr @meson_uart_poll_put_char._entry_ptr.16, !50, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/tty/serial/meson_uart.c", i32 407, i32 3}
!54 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @meson_uart_request_port._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @meson_uart_request_port._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @meson_uart_dt_match, !58, !"meson_uart_dt_match", i1 false, i1 false}
!58 = !{!"../drivers/tty/serial/meson_uart.c", i32 780, i32 34}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/tty/serial/meson_uart.c", i32 640, i32 14}
!61 = !{ptr @meson_uart_driver, !62, !"meson_uart_driver", i1 false, i1 false}
!62 = !{!"../drivers/tty/serial/meson_uart.c", i32 637, i32 27}
!63 = !{ptr @meson_serial_console, !64, !"meson_serial_console", i1 false, i1 false}
!64 = !{!"../drivers/tty/serial/meson_uart.c", i32 590, i32 23}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i64 3095041}
!75 = !{i64 2154169991}
!76 = !{i64 2154170297}
!77 = !{i64 3094623}
!78 = !{i64 650381, i64 650442}
!79 = !{i64 2154172843}
!80 = !{i64 2154173233}
!81 = !{i64 2154173633}
!82 = !{i64 653113}
!83 = !{!"branch_weights", i32 1, i32 2000}
!84 = !{i64 653398}
!85 = !{i64 2154170978}
!86 = !{i64 2154171337}
!87 = !{i64 2154171179}
!88 = !{i64 2154171558}
!89 = !{i64 2154148104}
!90 = !{i64 2154148578}
!91 = !{i64 2154149230}
!92 = !{i64 2154135300}
!93 = !{i64 2154136060}
!94 = !{i64 2154136366}
!95 = !{i8 0, i8 2}
!96 = !{i64 2154139543}
!97 = !{i64 2154139858}
!98 = !{i64 2154140325}
!99 = !{i64 2154141114}
!100 = !{i64 2154141420}
!101 = !{i64 2154137047}
!102 = !{i64 2154137353}
!103 = !{i64 2154149911}
!104 = !{i64 2154150217}
!105 = !{i64 2154150701}
!106 = !{i64 2154151269}
!107 = !{i64 2154151837}
!108 = !{i64 2154152291}
!109 = !{i64 2154138388}
!110 = !{i64 2154138862}
!111 = !{i64 2154154169}
!112 = !{i64 2154155076}
!113 = !{i64 2154152744}
!114 = !{i64 2154152586}
!115 = !{i64 2154153134}
!116 = !{i64 2154161418}
!117 = !{i64 2154161916}
!118 = !{i64 2154164430}
!119 = !{i64 2154166696}
!120 = !{i64 2154167194}
!121 = !{i64 2154158372}
!122 = !{i64 2154158970}
!123 = !{i64 2154146327}
!124 = !{i64 2154142323}
!125 = !{i64 2154143414}
!126 = !{i64 2154143721}
!127 = !{i64 2154144209}
!128 = !{i64 2154145065}
!129 = !{i64 2154145740}
!130 = !{i64 2154146914}
!131 = !{i64 2154147501}
