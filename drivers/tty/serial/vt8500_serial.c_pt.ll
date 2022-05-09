; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/vt8500_serial.c_pt.bc'
source_filename = "../drivers/tty/serial/vt8500_serial.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.vt8500_port = type { %struct.uart_port, [16 x i8], ptr, i32, i32, i32 }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.35, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.35 = type { ptr }
%struct.llist_head = type { ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.36, %struct.anon.37, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.36 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.37 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }

@__initcall__kmod_vt8500_serial__227_744_vt8500_serial_init6 = internal global ptr @vt8500_serial_init, section ".initcall6.init", align 4
@vt8500_uart_driver = internal global { %struct.uart_driver, [60 x i8] } { %struct.uart_driver { ptr null, ptr @.str, ptr @.str.1, i32 0, i32 0, i32 6, ptr @vt8500_console, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@vt8500_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vt8500_serial_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @wmt_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vt8500_serial\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ttyWMT\00", [25 x i8] zeroinitializer }, align 32
@vt8500_console = internal global { %struct.console, [60 x i8] } { %struct.console { [16 x i8] c"ttyWMT\00\00\00\00\00\00\00\00\00\00", ptr @vt8500_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @vt8500_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @vt8500_uart_driver, ptr null }, [60 x i8] zeroinitializer }, align 32
@vt8500_uart_ports = internal global { [6 x ptr], [40 x i8] } zeroinitializer, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@wmt_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"via,vt8500-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vt8500_flags }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wm,wm8880-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wm8880_flags }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@vt8500_ports_in_use = internal global { [1 x i32], [28 x i8] } zeroinitializer, align 32
@vt8500_serial_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 677, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vt8500_serial_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/tty/serial/vt8500_serial.c\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vt8500_serial_probe._entry_ptr = internal global ptr @vt8500_serial_probe._entry, section ".printk_index", align 4
@vt8500_serial_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 683, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@vt8500_serial_probe._entry_ptr.10 = internal global ptr @vt8500_serial_probe._entry.8, section ".printk_index", align 4
@vt8500_uart_pops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @vt8500_tx_empty, ptr @vt8500_set_mctrl, ptr @vt8500_get_mctrl, ptr @vt8500_stop_tx, ptr @vt8500_start_tx, ptr null, ptr null, ptr null, ptr @vt8500_stop_rx, ptr @vt8500_enable_ms, ptr @vt8500_break_ctl, ptr @vt8500_startup, ptr @vt8500_shutdown, ptr null, ptr @vt8500_set_termios, ptr null, ptr null, ptr @vt8500_type, ptr @vt8500_release_port, ptr @vt8500_request_port, ptr @vt8500_config_port, ptr @vt8500_verify_port, ptr null, ptr null, ptr @vt8500_put_poll_char, ptr @vt8500_get_poll_char }, [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"VT8500 UART%d\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vt8500_serial%d\00", [16 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@vt8500_flags = internal global { i32, [28 x i8] } zeroinitializer, align 32
@wm8880_flags = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 97]
@___asan_gen_.13 = private unnamed_addr constant [19 x i8] c"vt8500_uart_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 604, i32 27 }
@___asan_gen_.16 = private unnamed_addr constant [23 x i8] c"vt8500_platform_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 720, i32 31 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 606, i32 17 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 607, i32 14 }
@___asan_gen_.25 = private unnamed_addr constant [15 x i8] c"vt8500_console\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 538, i32 23 }
@___asan_gen_.28 = private unnamed_addr constant [18 x i8] c"vt8500_uart_ports\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 468, i32 28 }
@___asan_gen_.31 = private unnamed_addr constant [11 x i8] c"wmt_dt_ids\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 615, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 644, i32 30 }
@___asan_gen_.37 = private unnamed_addr constant [20 x i8] c"vt8500_ports_in_use\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 109, i32 8 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 677, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 683, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"vt8500_uart_pops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 581, i32 30 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 709, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 331, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant [13 x i8] c"vt8500_flags\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 612, i32 21 }
@___asan_gen_.76 = private unnamed_addr constant [13 x i8] c"wm8880_flags\00", align 1
@___asan_gen_.77 = private constant [38 x i8] c"../drivers/tty/serial/vt8500_serial.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 613, i32 21 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__initcall__kmod_vt8500_serial__227_744_vt8500_serial_init6, ptr @vt8500_serial_probe._entry, ptr @vt8500_serial_probe._entry.8, ptr @vt8500_serial_probe._entry_ptr, ptr @vt8500_serial_probe._entry_ptr.10, ptr @vt8500_uart_driver, ptr @vt8500_platform_driver, ptr @.str, ptr @.str.1, ptr @vt8500_console, ptr @vt8500_uart_ports, ptr @wmt_dt_ids, ptr @.str.2, ptr @vt8500_ports_in_use, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @vt8500_uart_pops, ptr @.str.11, ptr @.str.12, ptr @vt8500_flags, ptr @wm8880_flags], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_uart_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_console to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_uart_ports to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_ports_in_use to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_serial_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_serial_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_uart_pops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_flags to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8880_flags to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8500_serial_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @uart_register_driver(ptr noundef nonnull @vt8500_uart_driver) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !51

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @__platform_driver_register(ptr noundef nonnull @vt8500_platform_driver, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then11, !prof !51

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @uart_unregister_driver(ptr noundef nonnull @vt8500_uart_driver) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.then11 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vt8500_console_write(ptr nocapture noundef readonly %co, ptr noundef %s, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index, align 2
  %idxprom = sext i16 %1 to i32
  %arrayidx = getelementptr [6 x ptr], ptr @vt8500_uart_ports, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp slt i16 %1, 0
  br i1 %cmp, label %entry.do.body8_crit_edge, label %lor.rhs, !prof !52

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body8

lor.rhs:                                          ; preds = %entry
  %4 = load i32, ptr getelementptr inbounds (%struct.uart_driver, ptr @vt8500_uart_driver, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %idxprom)
  %cmp5.not = icmp sgt i32 %4, %idxprom
  br i1 %cmp5.not, label %do.end13, label %lor.rhs.do.body8_crit_edge, !prof !51

lor.rhs.do.body8_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body8

do.body8:                                         ; preds = %lor.rhs.do.body8_crit_edge, %entry.do.body8_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/tty/serial/vt8500_serial.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 499, 0\0A.popsection", ""() #11, !srcloc !53
  unreachable

do.end13:                                         ; preds = %lor.rhs
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 20
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %8 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 335544320) #11, !srcloc !57
  tail call void @uart_console_write(ptr noundef %3, ptr noundef %s, i32 noundef %count, ptr noundef nonnull @vt8500_console_putchar) #11
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %do.end13
  %tmout.0.i = phi i32 [ 10000, %do.end13 ], [ %dec.i, %if.end.i.do.body.i_crit_edge ]
  %10 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 36
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %dec.i = add nsw i32 %tmout.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %do.body.i.wait_for_xmitr.exit_crit_edge, label %if.end.i

do.body.i.wait_for_xmitr.exit_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %wait_for_xmitr.exit

if.end.i:                                         ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #11
  %14 = and i32 %12, 268435456
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.end.i.wait_for_xmitr.exit_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.end.i.wait_for_xmitr.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %wait_for_xmitr.exit

wait_for_xmitr.exit:                              ; preds = %if.end.i.wait_for_xmitr.exit_crit_edge, %do.body.i.wait_for_xmitr.exit_crit_edge
  %15 = tail call i32 @llvm.bswap.i32(i32 %7) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %16 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %17, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 335544320) #11, !srcloc !57
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8500_console_setup(ptr noundef %co, ptr noundef %options) #0 section ".init.text" align 64 {
entry:
  %baud = alloca i32, align 4
  %bits = alloca i32, align 4
  %parity = alloca i32, align 4
  %flow = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %baud) #11
  %0 = ptrtoint ptr %baud to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 9600, ptr %baud, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits) #11
  %1 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8, ptr %bits, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parity) #11
  %2 = ptrtoint ptr %parity to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 110, ptr %parity, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flow) #11
  %3 = ptrtoint ptr %flow to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 110, ptr %flow, align 4
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %index, align 2
  %conv = sext i16 %5 to i32
  %6 = load i32, ptr getelementptr inbounds (%struct.uart_driver, ptr @vt8500_uart_driver, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv)
  %cmp.not = icmp sle i32 %6, %conv
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp4 = icmp slt i16 %5, 0
  %spec.select = or i1 %cmp4, %cmp.not
  br i1 %spec.select, label %entry.cleanup_crit_edge, label %if.end, !prof !52

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [6 x ptr], ptr @vt8500_uart_ports, i32 0, i32 %conv
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %8, null
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %tobool11.not = icmp eq ptr %options, null
  br i1 %tobool11.not, label %if.end10.if.end13_crit_edge, label %if.then12

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  call void @uart_parse_options(ptr noundef nonnull %options, ptr noundef nonnull %baud, ptr noundef nonnull %parity, ptr noundef nonnull %bits, ptr noundef nonnull %flow) #11
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10.if.end13_crit_edge
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
  %call = call i32 @uart_set_options(ptr noundef nonnull %8, ptr noundef %co, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end13 ], [ -6, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flow) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parity) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %baud) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vt8500_console_putchar(ptr nocapture noundef readonly %port, i32 noundef %c) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %entry
  %tmout.0.i = phi i32 [ 10000, %entry ], [ %dec.i, %if.end.i.do.body.i_crit_edge ]
  %0 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 36
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %dec.i = add nsw i32 %tmout.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %do.body.i.wait_for_xmitr.exit_crit_edge, label %if.end.i

do.body.i.wait_for_xmitr.exit_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %wait_for_xmitr.exit

if.end.i:                                         ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748) #11
  %4 = and i32 %2, 268435456
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.end.i.wait_for_xmitr.exit_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.end.i.wait_for_xmitr.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %wait_for_xmitr.exit

wait_for_xmitr.exit:                              ; preds = %if.end.i.wait_for_xmitr.exit_crit_edge, %do.body.i.wait_for_xmitr.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !58
  tail call void @arm_heavy_mb() #11
  %conv = trunc i32 %c to i8
  %5 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i.i, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 4096
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #11, !srcloc !59
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8500_serial_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #11
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %tobool9.not = icmp eq ptr %1, null
  br i1 %tobool9.not, label %if.end8.if.end19_crit_edge, label %if.then10

if.end8.if.end19_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then10:                                        ; preds = %if.end8
  %call11 = tail call i32 @of_alias_get_id(ptr noundef nonnull %1, ptr noundef nonnull @.str.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call11)
  %2 = icmp ugt i32 %call11, 5
  br i1 %2, label %if.then10.if.end19_crit_edge, label %if.then10.if.end22_crit_edge

if.then10.if.end22_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then10.if.end19_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.end19:                                         ; preds = %if.then10.if.end19_crit_edge, %if.end8.if.end19_crit_edge
  %call18 = tail call i32 @_find_first_zero_bit_be(ptr noundef nonnull @vt8500_ports_in_use, i32 noundef 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call18)
  %cmp20 = icmp sgt i32 %call18, 5
  br i1 %cmp20, label %if.end19.cleanup_crit_edge, label %if.end19.if.end22_crit_edge

if.end19.if.end22_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22:                                         ; preds = %if.end19.if.end22_crit_edge, %if.then10.if.end22_crit_edge
  %port.1146 = phi i32 [ %call18, %if.end19.if.end22_crit_edge ], [ %call11, %if.then10.if.end22_crit_edge ]
  %call23 = tail call i32 @_test_and_set_bit(i32 noundef %port.1146, ptr noundef nonnull @vt8500_ports_in_use) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 392, i32 noundef 3520) #11
  %tobool29.not = icmp eq ptr %call.i, null
  br i1 %tobool29.not, label %if.end26.cleanup_crit_edge, label %if.end31

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  %call33 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call2) #11
  %membase = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call33, ptr %membase, align 4
  %cmp.i = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then37, label %if.end41

if.then37:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %call33 to i32
  br label %cleanup

if.end41:                                         ; preds = %if.end31
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call44 = tail call ptr @of_clk_get(ptr noundef %6, i32 noundef 0) #11
  %clk = getelementptr inbounds %struct.vt8500_port, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call44, ptr %clk, align 4
  %cmp.i141 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i141, label %do.end, label %if.end49

do.end:                                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #14
  br label %cleanup

if.end49:                                         ; preds = %if.end41
  %call51 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %call44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end58, label %do.end56

do.end56:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #14
  br label %cleanup

if.end58:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call, align 4
  %vt8500_uart_flags = getelementptr inbounds %struct.vt8500_port, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %vt8500_uart_flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %vt8500_uart_flags, align 4
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 4
  %call60 = tail call i32 @clk_get_rate(ptr noundef %12) #11
  %add = add i32 %call60, 6000000
  %div61 = udiv i32 %add, 12000000
  %clk_predivisor = getelementptr inbounds %struct.vt8500_port, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %clk_predivisor to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div61, ptr %clk_predivisor, align 4
  %type = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 38
  %14 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 97, ptr %type, align 4
  %iotype = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 26
  %15 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %iotype, align 2
  %16 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call2, align 4
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 43
  %18 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %mapbase, align 4
  %irq66 = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 20
  %19 = ptrtoint ptr %irq66 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call6, ptr %irq66, align 4
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 23
  %20 = ptrtoint ptr %fifosize to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 16, ptr %fifosize, align 4
  %ops = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 39
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @vt8500_uart_pops, ptr %ops, align 4
  %line = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 41
  %22 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %port.1146, ptr %line, align 4
  %dev72 = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 45
  %23 = ptrtoint ptr %dev72 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev, ptr %dev72, align 4
  %flags74 = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 33
  %24 = ptrtoint ptr %flags74 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1879048192, ptr %flags74, align 4
  %has_sysrq = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 48
  %25 = ptrtoint ptr %has_sysrq to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %has_sysrq, align 4
  %call77 = tail call i32 @clk_get_rate(ptr noundef %12) #11
  %mul = shl i32 %call77, 4
  %div79 = udiv i32 %mul, %div61
  %div80 = udiv i32 %div79, 13
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 22
  %26 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div80, ptr %uartclk, align 4
  %name = getelementptr inbounds %struct.vt8500_port, ptr %call.i, i32 0, i32 1
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %27 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id, align 4
  %call82 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 16, ptr noundef nonnull @.str.11, i32 noundef %28)
  %arrayidx = getelementptr [6 x ptr], ptr @vt8500_uart_ports, i32 0, i32 %port.1146
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %arrayidx, align 4
  %call84 = tail call i32 @uart_add_one_port(ptr noundef nonnull @vt8500_uart_driver, ptr noundef nonnull %call.i) #11
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %do.end56, %do.end, %if.then37, %if.end26.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then37 ], [ -22, %do.end ], [ %call51, %do.end56 ], [ 0, %if.end58 ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ -19, %if.end19.cleanup_crit_edge ], [ -16, %if.end22.cleanup_crit_edge ], [ -12, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %clk) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8500_tx_empty(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 36
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !54
  %3 = lshr i32 %2, 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %and.lobit = and i32 %3, 1
  %4 = xor i32 %and.lobit, 1
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vt8500_set_mctrl(ptr nocapture noundef readonly %port, i32 noundef %mctrl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %3 = and i32 %2, -1073741825
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %and = shl i32 %mctrl, 4
  %5 = and i32 %and, 64
  %lcr.0 = or i32 %4, %5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %6 = tail call i32 @llvm.bswap.i32(i32 %lcr.0) #11
  %7 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %8, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %6) #11, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8500_get_mctrl(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %3 = lshr i32 %2, 23
  %4 = and i32 %3, 32
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vt8500_stop_tx(ptr nocapture noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ier = getelementptr inbounds %struct.vt8500_port, ptr %port, i32 0, i32 4
  %0 = ptrtoint ptr %ier to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ier, align 4
  %and = and i32 %1, -77
  store i32 %and, ptr %ier, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %2 = tail call i32 @llvm.bswap.i32(i32 %and) #11
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #11, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vt8500_start_tx(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ier = getelementptr inbounds %struct.vt8500_port, ptr %port, i32 0, i32 4
  %0 = ptrtoint ptr %ier to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ier, align 4
  %and = and i32 %1, -77
  store i32 %and, ptr %ier, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %2 = tail call i32 @llvm.bswap.i32(i32 %and) #11
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #11, !srcloc !57
  tail call fastcc void @handle_tx(ptr noundef %port)
  %5 = ptrtoint ptr %ier to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ier, align 4
  %or = or i32 %6, 76
  store i32 %or, ptr %ier, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %7 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %8 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %9, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %7) #11, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vt8500_stop_rx(ptr nocapture noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ier = getelementptr inbounds %struct.vt8500_port, ptr %port, i32 0, i32 4
  %0 = ptrtoint ptr %ier to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ier, align 4
  %and = and i32 %1, -2993
  store i32 %and, ptr %ier, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %2 = tail call i32 @llvm.bswap.i32(i32 %and) #11
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #11, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vt8500_enable_ms(ptr nocapture noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ier = getelementptr inbounds %struct.vt8500_port, ptr %port, i32 0, i32 4
  %0 = ptrtoint ptr %ier to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ier, align 4
  %or = or i32 %1, 1024
  store i32 %or, ptr %ier, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %2 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #11, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vt8500_break_ctl(ptr nocapture noundef readonly %port, i32 noundef %break_ctl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %break_ctl)
  %tobool.not = icmp eq i32 %break_ctl, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %3 = or i32 %2, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  %add.ptr.i3 = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 %3) #11, !srcloc !57
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8500_startup(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.vt8500_port, ptr %port, i32 0, i32 1
  %line = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %0 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %line, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 16, ptr noundef nonnull @.str.12, i32 noundef %1)
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef nonnull @vt8500_irq, ptr noundef null, i32 noundef 4, ptr noundef %name, ptr noundef %port) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !51

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 50331648) #11, !srcloc !57
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vt8500_shutdown(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ier = getelementptr inbounds %struct.vt8500_port, ptr %port, i32 0, i32 4
  %0 = ptrtoint ptr %ier to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ier, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %1 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #11, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %4, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 -2146959360) #11, !srcloc !57
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %6, ptr noundef %port) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vt8500_set_termios(ptr noundef %port, ptr noundef %termios, ptr noundef %old) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #11
  %call6 = tail call i32 @uart_get_baud_rate(ptr noundef %port, ptr noundef %termios, ptr noundef %old, i32 noundef 900, i32 noundef 921600) #11
  %clk_predivisor.i = getelementptr inbounds %struct.vt8500_port, ptr %port, i32 0, i32 3
  %0 = ptrtoint ptr %clk_predivisor.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clk_predivisor.i, align 4
  %call.i = tail call i32 @uart_get_divisor(ptr noundef %port, i32 noundef %call6) #11
  %uartclk.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %2 = ptrtoint ptr %uartclk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %uartclk.i, align 4
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %4 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i36.i = getelementptr i8, ptr %5, i32 28
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36.i) #11, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %7 = and i32 %6, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not37.i = icmp eq i32 %7, 0
  br i1 %tobool.not37.i, label %entry.vt8500_set_baud_rate.exit_crit_edge, label %entry.land.rhs.i_crit_edge

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  br label %land.rhs.i

entry.vt8500_set_baud_rate.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %vt8500_set_baud_rate.exit

land.rhs.i:                                       ; preds = %do.end.i.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %loops.038.i = phi i32 [ %dec.i, %do.end.i.land.rhs.i_crit_edge ], [ 1000, %entry.land.rhs.i_crit_edge ]
  %dec.i = add nsw i32 %loops.038.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool8.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool8.not.i, label %land.rhs.i.vt8500_set_baud_rate.exit_crit_edge, label %do.end.i

land.rhs.i.vt8500_set_baud_rate.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vt8500_set_baud_rate.exit

do.end.i:                                         ; preds = %land.rhs.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !60
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !61
  %8 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 28
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %11 = and i32 %10, 536870912
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %do.end.i.vt8500_set_baud_rate.exit_crit_edge, label %do.end.i.land.rhs.i_crit_edge

do.end.i.land.rhs.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

do.end.i.vt8500_set_baud_rate.exit_crit_edge:     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vt8500_set_baud_rate.exit

vt8500_set_baud_rate.exit:                        ; preds = %do.end.i.vt8500_set_baud_rate.exit_crit_edge, %land.rhs.i.vt8500_set_baud_rate.exit_crit_edge, %entry.vt8500_set_baud_rate.exit_crit_edge
  %div331.i = lshr i32 %3, 4
  %sub1.i = add i32 %call.i, 1023
  %and2.i = and i32 %sub1.i, 1023
  %add.i = add nuw nsw i32 %and2.i, 1
  %div5.i = udiv i32 %div331.i, %add.i
  %sub.i = shl i32 %1, 16
  %and.i = add i32 %sub.i, 983040
  %shl.i = and i32 %and.i, 983040
  %or.i = or i32 %shl.i, %and2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %12 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %13 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33.i, i32 %12) #11, !srcloc !57
  %div5.i.frozen = freeze i32 %div5.i
  %div15.i = udiv i32 %div5.i.frozen, 1000000
  %15 = mul i32 %div15.i, 1000000
  %rem16.i.decomposed = sub i32 %div5.i.frozen, %15
  %mul.i = shl nuw nsw i32 %div15.i, 12
  %mul18.i = shl nuw i32 %rem16.i.decomposed, 12
  %div19.i = udiv i32 %mul18.i, 1000000
  %add20.i = add nuw nsw i32 %div19.i, %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %16 = tail call i32 @llvm.bswap.i32(i32 %add20.i) #11
  %17 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i35.i = getelementptr i8, ptr %18, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i, i32 %16) #11, !srcloc !57
  %call8 = tail call i32 @tty_termios_baud_rate(ptr noundef %termios) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %vt8500_set_baud_rate.exit.if.end_crit_edge, label %if.then

vt8500_set_baud_rate.exit.if.end_crit_edge:       ; preds = %vt8500_set_baud_rate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %vt8500_set_baud_rate.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @tty_termios_encode_baud_rate(ptr noundef %termios, i32 noundef %div5.i, i32 noundef %div5.i) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %vt8500_set_baud_rate.exit.if.end_crit_edge
  %19 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 12
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !54
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %and = and i32 %22, -49
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %23 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %c_cflag, align 4
  %and10 = and i32 %24, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end.if.end21_crit_edge, label %if.then12

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %or = or i32 %and, 16
  %and14 = and i32 %24, -1073741825
  %25 = ptrtoint ptr %c_cflag to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and14, ptr %c_cflag, align 4
  %and16 = and i32 %24, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %or19 = or i32 %22, 48
  %spec.select = select i1 %tobool17.not, i32 %or, i32 %or19
  br label %if.end21

if.end21:                                         ; preds = %if.then12, %if.end.if.end21_crit_edge
  %lcr.0 = phi i32 [ %and, %if.end.if.end21_crit_edge ], [ %spec.select, %if.then12 ]
  %and22 = and i32 %lcr.0, -5
  %26 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %c_cflag, align 4
  %and24 = and i32 %27, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and24)
  %cond = icmp eq i32 %and24, 32
  br i1 %cond, label %if.end21.sw.epilog_crit_edge, label %sw.default

if.end21.sw.epilog_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.default:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %or25 = or i32 %lcr.0, 4
  %or29 = or i32 %27, 48
  %28 = ptrtoint ptr %c_cflag to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or29, ptr %c_cflag, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end21.sw.epilog_crit_edge
  %lcr.1 = phi i32 [ %and22, %if.end21.sw.epilog_crit_edge ], [ %or25, %sw.default ]
  %and30 = and i32 %lcr.1, -2057
  %29 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %c_cflag, align 4
  %and32 = lshr i32 %30, 3
  %31 = and i32 %and32, 8
  %spec.select126 = or i32 %31, %and30
  %vt8500_uart_flags = getelementptr inbounds %struct.vt8500_port, ptr %port, i32 0, i32 5
  %32 = ptrtoint ptr %vt8500_uart_flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vt8500_uart_flags, align 4
  %and38 = shl i32 %33, 10
  %34 = and i32 %and38, 2048
  %lcr.3 = or i32 %spec.select126, %34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %35 = tail call i32 @llvm.bswap.i32(i32 %lcr.3) #11
  %36 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i128 = getelementptr i8, ptr %37, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 %35) #11, !srcloc !57
  %read_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 28
  %38 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %read_status_mask, align 4
  %39 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %termios, align 4
  %and44 = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  %spec.store.select = select i1 %tobool45.not, i32 0, i32 768
  %41 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %spec.store.select, ptr %read_status_mask, align 4
  %42 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %c_cflag, align 4
  tail call void @uart_update_timeout(ptr noundef %port, i32 noundef %43, i32 noundef %div5.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %44 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i130 = getelementptr i8, ptr %45, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 -1945632768) #11, !srcloc !57
  %46 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i132137 = getelementptr i8, ptr %47, i32 32
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i132137) #11, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %49 = and i32 %48, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool54.not138 = icmp eq i32 %49, 0
  br i1 %tobool54.not138, label %sw.epilog.while.end_crit_edge, label %sw.epilog.land.rhs_crit_edge

sw.epilog.land.rhs_crit_edge:                     ; preds = %sw.epilog
  br label %land.rhs

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.rhs:                                         ; preds = %do.end60.land.rhs_crit_edge, %sw.epilog.land.rhs_crit_edge
  %loops.0139 = phi i32 [ %dec, %do.end60.land.rhs_crit_edge ], [ 1000, %sw.epilog.land.rhs_crit_edge ]
  %dec = add nsw i32 %loops.0139, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool55.not = icmp eq i32 %dec, 0
  br i1 %tobool55.not, label %land.rhs.while.end_crit_edge, label %do.end60

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

do.end60:                                         ; preds = %land.rhs
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !62
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !63
  %50 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i132 = getelementptr i8, ptr %51, i32 32
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i132) #11, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %53 = and i32 %52, 201326592
  %tobool54.not = icmp eq i32 %53, 0
  br i1 %tobool54.not, label %do.end60.while.end_crit_edge, label %do.end60.land.rhs_crit_edge

do.end60.land.rhs_crit_edge:                      ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

do.end60.while.end_crit_edge:                     ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %do.end60.while.end_crit_edge, %land.rhs.while.end_crit_edge, %sw.epilog.while.end_crit_edge
  %ier = getelementptr inbounds %struct.vt8500_port, ptr %port, i32 0, i32 4
  %54 = ptrtoint ptr %ier to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 3068, ptr %ier, align 4
  %flags66 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %55 = ptrtoint ptr %flags66 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags66, align 4
  %and67 = and i32 %56, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %lor.lhs.false, label %while.end.if.then76_crit_edge

while.end.if.then76_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then76

lor.lhs.false:                                    ; preds = %while.end
  %57 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %c_cflag, align 4
  %59 = and i32 %58, -2147481600
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %59)
  %.not = icmp eq i32 %59, 2048
  br i1 %.not, label %lor.lhs.false.if.end79_crit_edge, label %lor.lhs.false.if.then76_crit_edge

lor.lhs.false.if.then76_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then76

lor.lhs.false.if.end79_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79

if.then76:                                        ; preds = %lor.lhs.false.if.then76_crit_edge, %while.end.if.then76_crit_edge
  %60 = ptrtoint ptr %ier to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 4092, ptr %ier, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then76, %lor.lhs.false.if.end79_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %61 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i134 = getelementptr i8, ptr %62, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134, i32 -2130182144) #11, !srcloc !57
  %63 = ptrtoint ptr %ier to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ier, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #11
  %66 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i136 = getelementptr i8, ptr %67, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i136, i32 %65) #11, !srcloc !57
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call3) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @vt8500_type(ptr noundef readnone %port) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.vt8500_port, ptr %port, i32 0, i32 1
  ret ptr %name
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vt8500_release_port(ptr nocapture noundef %port) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vt8500_request_port(ptr nocapture noundef readnone %port) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @vt8500_config_port(ptr nocapture noundef writeonly %port, i32 noundef %flags) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 97, ptr %type, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vt8500_verify_port(ptr nocapture noundef readonly %port, ptr nocapture noundef readonly %ser) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ser to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ser, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.return_crit_edge [
    i32 97, label %entry.if.end_crit_edge
    i32 0, label %entry.if.end_crit_edge16
  ]

entry.if.end_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge16
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  %irq4 = getelementptr inbounds %struct.serial_struct, ptr %ser, i32 0, i32 3
  %5 = ptrtoint ptr %irq4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp5.not = icmp eq i32 %4, %6
  %. = select i1 %cmp5.not, i32 0, i32 -22, !prof !51
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vt8500_put_poll_char(ptr nocapture noundef readonly %port, i8 noundef zeroext %c) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %tmout.0 = phi i32 [ 10000, %entry ], [ %dec, %if.end.do.body_crit_edge ]
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 36
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %dec = add nsw i32 %tmout.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %do.body.do.end_crit_edge, label %if.end

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end:                                           ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748) #11
  %4 = and i32 %2, 268435456
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end.do.end_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %do.body.do.end_crit_edge
  %conv = zext i8 %c to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %5 = shl nuw i32 %conv, 24
  %6 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i, align 4
  %add.ptr.i3 = getelementptr i8, ptr %7, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 %5) #11, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8500_get_poll_char(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 36
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %3 = and i32 %2, 2031616
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %5, i32 4128
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5) #11, !srcloc !54
  %7 = lshr i32 %6, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.end ], [ 16711680, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_tx(ptr noundef %port) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !64
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %x_char to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %x_char, align 4
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 4096
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %5) #11, !srcloc !59
  %tx = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 5
  %8 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %tx, align 4
  %10 = ptrtoint ptr %x_char to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %x_char, align 4
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %head = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp = icmp eq i32 %12, %14
  br i1 %cmp, label %if.end.if.then5_crit_edge, label %lor.lhs.false

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5

lor.lhs.false:                                    ; preds = %if.end
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %state, align 4
  %tty2.i = getelementptr inbounds %struct.tty_port, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %tty2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tty2.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %lor.lhs.false.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i

lor.lhs.false.uart_tx_stopped.exit_crit_edge:     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %uart_tx_stopped.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false
  %stopped.i = getelementptr inbounds %struct.tty_struct, ptr %18, i32 0, i32 19, i32 1
  %19 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %stopped.i, align 4, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool3.not.i = icmp eq i8 %20, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i.if.then5_crit_edge

land.lhs.true.i.if.then5_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5

land.lhs.true.i.uart_tx_stopped.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uart_tx_stopped.exit

uart_tx_stopped.exit:                             ; preds = %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, %lor.lhs.false.uart_tx_stopped.exit_crit_edge
  %hw_stopped.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 35
  %21 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hw_stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool4.not.i.not = icmp eq i32 %22, 0
  br i1 %tobool4.not.i.not, label %while.cond.preheader, label %uart_tx_stopped.exit.if.then5_crit_edge

uart_tx_stopped.exit.if.then5_crit_edge:          ; preds = %uart_tx_stopped.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5

while.cond.preheader:                             ; preds = %uart_tx_stopped.exit
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %23 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase.i, align 4
  %add.ptr.i66 = getelementptr i8, ptr %24, i32 36
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i66) #11, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %26 = and i32 %25, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp8.not.not67 = icmp eq i32 %26, 0
  br i1 %cmp8.not.not67, label %while.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %tx24 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 5
  br label %while.body

if.then5:                                         ; preds = %uart_tx_stopped.exit.if.then5_crit_edge, %land.lhs.true.i.if.then5_crit_edge, %if.end.if.then5_crit_edge
  %ier.i = getelementptr inbounds %struct.vt8500_port, ptr %port, i32 0, i32 4
  %27 = ptrtoint ptr %ier.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ier.i, align 4
  %and.i = and i32 %28, -77
  store i32 %and.i, ptr %ier.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %29 = tail call i32 @llvm.bswap.i32(i32 %and.i) #11
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %30 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %29) #11, !srcloc !57
  br label %cleanup

while.body:                                       ; preds = %do.body14.while.body_crit_edge, %while.body.lr.ph
  %32 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %head, align 4
  %34 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp11 = icmp eq i32 %33, %35
  br i1 %cmp11, label %while.body.while.end_crit_edge, label %do.body14

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

do.body14:                                        ; preds = %while.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  %36 = ptrtoint ptr %xmit1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %xmit1, align 4
  %38 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tail, align 4
  %arrayidx = getelementptr i8, ptr %37, i32 %39
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx, align 1
  %42 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %membase.i, align 4
  %add.ptr19 = getelementptr i8, ptr %43, i32 4096
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr19, i8 %41) #11, !srcloc !59
  %44 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tail, align 4
  %add = add i32 %45, 1
  %and21 = and i32 %add, 4095
  store i32 %and21, ptr %tail, align 4
  %46 = ptrtoint ptr %tx24 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tx24, align 4
  %inc25 = add i32 %47, 1
  store i32 %inc25, ptr %tx24, align 4
  %48 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %49, i32 36
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %51 = and i32 %50, 268435456
  %cmp8.not.not = icmp eq i32 %51, 0
  br i1 %cmp8.not.not, label %do.body14.while.body_crit_edge, label %do.body14.while.end_crit_edge

do.body14.while.end_crit_edge:                    ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

do.body14.while.body_crit_edge:                   ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %do.body14.while.end_crit_edge, %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %52 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %head, align 4
  %54 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tail, align 4
  %sub = sub i32 %53, %55
  %and28 = and i32 %sub, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %cmp29 = icmp eq i32 %and28, 0
  br i1 %cmp29, label %if.then30, label %while.end.if.end31_crit_edge

while.end.if.end31_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then30:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @uart_write_wakeup(ptr noundef %port) #11
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %while.end.if.end31_crit_edge
  %56 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %head, align 4
  %58 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp34 = icmp eq i32 %57, %59
  br i1 %cmp34, label %if.then35, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %ier.i60 = getelementptr inbounds %struct.vt8500_port, ptr %port, i32 0, i32 4
  %60 = ptrtoint ptr %ier.i60 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ier.i60, align 4
  %and.i61 = and i32 %61, -77
  store i32 %and.i61, ptr %ier.i60, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %62 = tail call i32 @llvm.bswap.i32(i32 %and.i61) #11
  %63 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.i63 = getelementptr i8, ptr %64, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i63, i32 %62) #11, !srcloc !57
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.end31.cleanup_crit_edge, %if.then5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8500_irq(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %dev_id) #11
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !54
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %2) #11, !srcloc !57
  %and = and i32 %3, 2992
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %state.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 30
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state.i, align 4
  %8 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 24
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %tobool.not.i = icmp sgt i32 %10, -1
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  %overrun.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 7
  %11 = ptrtoint ptr %overrun.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %overrun.i, align 4
  %inc.i = add i32 %12, 1
  store i32 %inc.i, ptr %overrun.i, align 4
  %tail.i.i = getelementptr inbounds %struct.tty_bufhead, ptr %7, i32 0, i32 8
  %13 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.tty_buffer, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.then.i.if.end12.i.i_crit_edge

if.then.i.if.end12.i.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %used.i.i = getelementptr inbounds %struct.tty_buffer, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %used.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.tty_buffer, ptr %14, i32 0, i32 2
  %19 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp3.i.i = icmp slt i32 %18, %20
  br i1 %cmp3.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.end12.i.i_crit_edge

land.lhs.true.i.i.if.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %data.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %14, i32 0, i32 6
  %add.ptr.i.i.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %18
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %20
  %21 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 4, ptr %add.ptr.i.i.i, align 1
  %22 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %used.i.i, align 4
  %inc.i.i = add i32 %23, 1
  store i32 %inc.i.i, ptr %used.i.i, align 4
  %add.ptr.i1.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %23
  %24 = ptrtoint ptr %add.ptr.i1.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %add.ptr.i1.i.i, align 1
  br label %if.end.i

if.end12.i.i:                                     ; preds = %land.lhs.true.i.i.if.end12.i.i_crit_edge, %if.then.i.if.end12.i.i_crit_edge
  %call13.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %7, i8 noundef zeroext 0, i8 noundef zeroext 4) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.end12.i.i, %if.end.i.i, %if.then.if.end.i_crit_edge
  %25 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase.i, align 4
  %add.ptr.i4679.i = getelementptr i8, ptr %26, i32 36
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4679.i) #11, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %28 = and i32 %27, 2031616
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool5.not80.i = icmp eq i32 %28, 0
  br i1 %tobool5.not80.i, label %if.end.i.handle_rx.exit_crit_edge, label %while.body.lr.ph.i

if.end.i.handle_rx.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %handle_rx.exit

while.body.lr.ph.i:                               ; preds = %if.end.i
  %read_status_mask.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 28
  %frame.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 6
  %parity.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 8
  %rx.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 4
  %sysrq.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 46
  %tail.i50.i = getelementptr inbounds %struct.tty_bufhead, ptr %7, i32 0, i32 8
  br label %while.body.i

while.body.i:                                     ; preds = %if.end29.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %29 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %30, i32 4128
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i21) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !68
  %32 = and i16 %31, -253
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #11
  %and8.i = zext i16 %33 to i32
  %34 = ptrtoint ptr %read_status_mask.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %read_status_mask.i, align 4
  %neg.i = xor i32 %35, -1
  %and9.i = and i32 %and8.i, %neg.i
  %and10.i = and i32 %and9.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.else.i, label %while.body.i.if.end21.sink.split.i_crit_edge

while.body.i.if.end21.sink.split.i_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.sink.split.i

if.else.i:                                        ; preds = %while.body.i
  %and15.i = and i32 %and9.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.else.i.if.end21.i_crit_edge, label %if.else.i.if.end21.sink.split.i_crit_edge

if.else.i.if.end21.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.sink.split.i

if.else.i.if.end21.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i

if.end21.sink.split.i:                            ; preds = %if.else.i.if.end21.sink.split.i_crit_edge, %while.body.i.if.end21.sink.split.i_crit_edge
  %parity.sink81.i = phi ptr [ %frame.i, %while.body.i.if.end21.sink.split.i_crit_edge ], [ %parity.i, %if.else.i.if.end21.sink.split.i_crit_edge ]
  %flag.0.ph.i = phi i8 [ 2, %while.body.i.if.end21.sink.split.i_crit_edge ], [ 3, %if.else.i.if.end21.sink.split.i_crit_edge ]
  %36 = ptrtoint ptr %parity.sink81.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %parity.sink81.i, align 4
  %inc19.i = add i32 %37, 1
  store i32 %inc19.i, ptr %parity.sink81.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end21.sink.split.i, %if.else.i.if.end21.i_crit_edge
  %cmp.i54.i = phi i1 [ true, %if.else.i.if.end21.i_crit_edge ], [ false, %if.end21.sink.split.i ]
  %flag.0.i = phi i8 [ 0, %if.else.i.if.end21.i_crit_edge ], [ %flag.0.ph.i, %if.end21.sink.split.i ]
  %38 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx.i, align 4
  %inc23.i = add i32 %39, 1
  store i32 %inc23.i, ptr %rx.i, align 4
  %40 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i47.i = icmp eq i32 %41, 0
  br i1 %tobool.not.i47.i, label %if.end21.i.if.then26.i_crit_edge, label %if.end.i48.i

if.end21.i.if.then26.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26.i

if.end.i48.i:                                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool1.not.i.i = icmp eq i32 %and9.i, 0
  br i1 %tobool1.not.i.i, label %if.end.i48.i.uart_handle_sysrq_char.exit.thread76.i_crit_edge, label %land.lhs.true.i49.i

if.end.i48.i.uart_handle_sysrq_char.exit.thread76.i_crit_edge: ; preds = %if.end.i48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uart_handle_sysrq_char.exit.thread76.i

land.lhs.true.i49.i:                              ; preds = %if.end.i48.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %42, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.then3.i.i, label %land.lhs.true.i49.i.uart_handle_sysrq_char.exit.thread76.i_crit_edge

land.lhs.true.i49.i.uart_handle_sysrq_char.exit.thread76.i_crit_edge: ; preds = %land.lhs.true.i49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uart_handle_sysrq_char.exit.thread76.i

if.then3.i.i:                                     ; preds = %land.lhs.true.i49.i
  %call.i.i = tail call i32 @sysrq_mask() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end7.i.i, label %uart_handle_sysrq_char.exit.i

if.end7.i.i:                                      ; preds = %if.then3.i.i
  %call8.i.i = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %dev_id, i32 noundef %and9.i) #11
  br i1 %call8.i.i, label %if.end7.i.i.if.end29.i_crit_edge, label %if.end7.i.i.uart_handle_sysrq_char.exit.thread76.i_crit_edge

if.end7.i.i.uart_handle_sysrq_char.exit.thread76.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uart_handle_sysrq_char.exit.thread76.i

if.end7.i.i.if.end29.i_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.i

uart_handle_sysrq_char.exit.thread76.i:           ; preds = %if.end7.i.i.uart_handle_sysrq_char.exit.thread76.i_crit_edge, %land.lhs.true.i49.i.uart_handle_sysrq_char.exit.thread76.i_crit_edge, %if.end.i48.i.uart_handle_sysrq_char.exit.thread76.i_crit_edge
  %43 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %if.then26.i

uart_handle_sysrq_char.exit.i:                    ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @handle_sysrq(i32 noundef %and9.i) #11
  %44 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %if.end29.i

if.then26.i:                                      ; preds = %uart_handle_sysrq_char.exit.thread76.i, %if.end21.i.if.then26.i_crit_edge
  %conv27.i = trunc i32 %and9.i to i8
  %45 = ptrtoint ptr %tail.i50.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tail.i50.i, align 4
  %flags.i51.i = getelementptr inbounds %struct.tty_buffer, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %flags.i51.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags.i51.i, align 4
  %and.i52.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i52.i)
  %tobool.not.i53.i = icmp eq i32 %and.i52.i, 0
  %49 = or i1 %cmp.i54.i, %tobool.not.i53.i
  br i1 %49, label %land.lhs.true.i58.i, label %if.then26.i.if.end12.i69.i_crit_edge

if.then26.i.if.end12.i69.i_crit_edge:             ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i69.i

land.lhs.true.i58.i:                              ; preds = %if.then26.i
  %used.i55.i = getelementptr inbounds %struct.tty_buffer, ptr %46, i32 0, i32 1
  %50 = ptrtoint ptr %used.i55.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %used.i55.i, align 4
  %size.i56.i = getelementptr inbounds %struct.tty_buffer, ptr %46, i32 0, i32 2
  %52 = ptrtoint ptr %size.i56.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %size.i56.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp3.i57.i = icmp slt i32 %51, %53
  br i1 %cmp3.i57.i, label %if.then.i59.i, label %land.lhs.true.i58.i.if.end12.i69.i_crit_edge

land.lhs.true.i58.i.if.end12.i69.i_crit_edge:     ; preds = %land.lhs.true.i58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i69.i

if.then.i59.i:                                    ; preds = %land.lhs.true.i58.i
  br i1 %tobool.not.i53.i, label %if.then8.i63.i, label %if.then.i59.i.if.end.i67.i_crit_edge

if.then.i59.i.if.end.i67.i_crit_edge:             ; preds = %if.then.i59.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i67.i

if.then8.i63.i:                                   ; preds = %if.then.i59.i
  call void @__sanitizer_cov_trace_pc() #13
  %data.i.i.i60.i = getelementptr inbounds %struct.tty_buffer, ptr %46, i32 0, i32 6
  %add.ptr.i.i.i61.i = getelementptr i8, ptr %data.i.i.i60.i, i32 %51
  %add.ptr.i.i62.i = getelementptr i8, ptr %add.ptr.i.i.i61.i, i32 %53
  %54 = ptrtoint ptr %add.ptr.i.i62.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %flag.0.i, ptr %add.ptr.i.i62.i, align 1
  br label %if.end.i67.i

if.end.i67.i:                                     ; preds = %if.then8.i63.i, %if.then.i59.i.if.end.i67.i_crit_edge
  %55 = ptrtoint ptr %used.i55.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %used.i55.i, align 4
  %inc.i64.i = add i32 %56, 1
  store i32 %inc.i64.i, ptr %used.i55.i, align 4
  %data.i.i65.i = getelementptr inbounds %struct.tty_buffer, ptr %46, i32 0, i32 6
  %add.ptr.i1.i66.i = getelementptr i8, ptr %data.i.i65.i, i32 %56
  %57 = ptrtoint ptr %add.ptr.i1.i66.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv27.i, ptr %add.ptr.i1.i66.i, align 1
  br label %if.end29.i

if.end12.i69.i:                                   ; preds = %land.lhs.true.i58.i.if.end12.i69.i_crit_edge, %if.then26.i.if.end12.i69.i_crit_edge
  %call13.i68.i = tail call i32 @__tty_insert_flip_char(ptr noundef %7, i8 noundef zeroext %conv27.i, i8 noundef zeroext %flag.0.i) #11
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.end12.i69.i, %if.end.i67.i, %uart_handle_sysrq_char.exit.i, %if.end7.i.i.if.end29.i_crit_edge
  %58 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %membase.i, align 4
  %add.ptr.i46.i = getelementptr i8, ptr %59, i32 36
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46.i) #11, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %61 = and i32 %60, 2031616
  %tobool5.not.i = icmp eq i32 %61, 0
  br i1 %tobool5.not.i, label %if.end29.i.handle_rx.exit_crit_edge, label %if.end29.i.while.body.i_crit_edge

if.end29.i.while.body.i_crit_edge:                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end29.i.handle_rx.exit_crit_edge:              ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %handle_rx.exit

handle_rx.exit:                                   ; preds = %if.end29.i.handle_rx.exit_crit_edge, %if.end.i.handle_rx.exit_crit_edge
  tail call void @tty_flip_buffer_push(ptr noundef %7) #11
  br label %if.end

if.end:                                           ; preds = %handle_rx.exit, %entry.if.end_crit_edge
  %and1 = and i32 %3, 76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @handle_tx(ptr noundef %dev_id)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %and5 = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.if.end8_crit_edge, label %if.then7

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %icount.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31
  %62 = ptrtoint ptr %icount.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %icount.i, align 4
  %inc.i22 = add i32 %63, 1
  store i32 %inc.i22, ptr %icount.i, align 4
  %state.i23 = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 30
  %64 = ptrtoint ptr %state.i23 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %state.i23, align 4
  %delta_msr_wait.i = getelementptr inbounds %struct.tty_port, ptr %65, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %delta_msr_wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4.if.end8_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %dev_id) #11
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_divisor(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !34, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__initcall__kmod_vt8500_serial__227_744_vt8500_serial_init6, !1, !"__initcall__kmod_vt8500_serial__227_744_vt8500_serial_init6", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/vt8500_serial.c", i32 744, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/vt8500_serial.c", i32 606, i32 17}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/tty/serial/vt8500_serial.c", i32 607, i32 14}
!6 = !{ptr @vt8500_uart_driver, !7, !"vt8500_uart_driver", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/vt8500_serial.c", i32 604, i32 27}
!8 = !{ptr @vt8500_console, !9, !"vt8500_console", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/vt8500_serial.c", i32 538, i32 23}
!10 = !{ptr @vt8500_uart_ports, !11, !"vt8500_uart_ports", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/vt8500_serial.c", i32 468, i32 28}
!12 = !{ptr @vt8500_platform_driver, !13, !"vt8500_platform_driver", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/vt8500_serial.c", i32 720, i32 31}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/tty/serial/vt8500_serial.c", i32 644, i32 30}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/tty/serial/vt8500_serial.c", i32 677, i32 3}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @vt8500_serial_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @vt8500_serial_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/tty/serial/vt8500_serial.c", i32 683, i32 3}
!26 = !{ptr @vt8500_serial_probe._entry.8, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @vt8500_serial_probe._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/tty/serial/vt8500_serial.c", i32 709, i32 4}
!30 = !{ptr @vt8500_ports_in_use, !31, !"vt8500_ports_in_use", i1 false, i1 false}
!31 = !{!"../drivers/tty/serial/vt8500_serial.c", i32 109, i32 8}
!32 = !{ptr @vt8500_uart_pops, !33, !"vt8500_uart_pops", i1 false, i1 false}
!33 = !{!"../drivers/tty/serial/vt8500_serial.c", i32 581, i32 30}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/tty/serial/vt8500_serial.c", i32 331, i32 4}
!36 = !{ptr @wmt_dt_ids, !37, !"wmt_dt_ids", i1 false, i1 false}
!37 = !{!"../drivers/tty/serial/vt8500_serial.c", i32 615, i32 34}
!38 = !{ptr @vt8500_flags, !39, !"vt8500_flags", i1 false, i1 false}
!39 = !{!"../drivers/tty/serial/vt8500_serial.c", i32 612, i32 21}
!40 = !{ptr @wm8880_flags, !41, !"wm8880_flags", i1 false, i1 false}
!41 = !{!"../drivers/tty/serial/vt8500_serial.c", i32 613, i32 21}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{!"branch_weights", i32 1, i32 2000}
!53 = !{i64 2154189345, i64 2154189844, i64 2154189382, i64 2154189438, i64 2154189472, i64 2154189496, i64 2154189537, i64 2154189558, i64 2154189586, i64 2154189620}
!54 = !{i64 2993000}
!55 = !{i64 2154173358}
!56 = !{i64 2154172518}
!57 = !{i64 2992582}
!58 = !{i64 2154188845}
!59 = !{i64 2992385}
!60 = !{i64 2154181724}
!61 = !{i64 2154181566}
!62 = !{i64 2154186367}
!63 = !{i64 2154186209}
!64 = !{i64 2154177834}
!65 = !{i8 0, i8 2}
!66 = !{i64 2154178234}
!67 = !{i64 2992162}
!68 = !{i64 2154177577}
