; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/mps2-uart.c_pt.bc'
source_filename = "../drivers/tty/serial/mps2-uart.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.earlycon_device = type { ptr, %struct.uart_port, [16 x i8], i32 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
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
%struct.mps2_uart_port = type { %struct.uart_port, ptr, i32, i32, i32 }
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

@__UNIQUE_ID___earlycon_mps2227 = internal constant %struct.earlycon_id { [15 x i8] c"mps2\00\00\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"arm,mps2-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mps2_early_console_setup }, section "__earlycon_table", align 4
@__initcall__kmod_mps2_uart__228_655_mps2_uart_init3 = internal global ptr @mps2_uart_init, section ".initcall3.init", align 4
@mps2_uart_driver = internal global { %struct.uart_driver, [60 x i8] } { %struct.uart_driver { ptr null, ptr @.str, ptr @.str.1, i32 0, i32 0, i32 3, ptr @mps2_uart_console, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@mps2_serial_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mps2_serial_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @mps2_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mps2-uart\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ttyMPS\00", [25 x i8] zeroinitializer }, align 32
@mps2_uart_console = internal global { %struct.console, [60 x i8] } { %struct.console { [16 x i8] c"ttyMPS\00\00\00\00\00\00\00\00\00\00", ptr @mps2_uart_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @mps2_uart_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @mps2_uart_driver, ptr null }, [60 x i8] zeroinitializer }, align 32
@ports_idr = internal global { %struct.idr, [36 x i8] } { %struct.idr { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ports_idr.xa_lock\00", [46 x i8] zeroinitializer }, align 32
@mps2_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,mps2-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@mps2_uart_pops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @mps2_uart_tx_empty, ptr @mps2_uart_set_mctrl, ptr @mps2_uart_get_mctrl, ptr @mps2_uart_stop_tx, ptr @mps2_uart_start_tx, ptr null, ptr null, ptr null, ptr @mps2_uart_stop_rx, ptr null, ptr @mps2_uart_break_ctl, ptr @mps2_uart_startup, ptr @mps2_uart_shutdown, ptr null, ptr @mps2_uart_set_termios, ptr null, ptr null, ptr @mps2_uart_type, ptr @mps2_uart_release_port, ptr @mps2_uart_request_port, ptr @mps2_uart_config_port, ptr @mps2_uart_verify_port, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mps2-uart-combined\00", [45 x i8] zeroinitializer }, align 32
@mps2_uart_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 300, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register combinedirq (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mps2_uart_startup\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/tty/serial/mps2-uart.c\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mps2_uart_startup._entry_ptr = internal global ptr @mps2_uart_startup._entry, section ".printk_index", align 4
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mps2-uart-overrun\00", [46 x i8] zeroinitializer }, align 32
@mps2_uart_startup._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.7, i32 308, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register oerrirq (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@mps2_uart_startup._entry_ptr.13 = internal global ptr @mps2_uart_startup._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mps2-uart-rx\00", [19 x i8] zeroinitializer }, align 32
@mps2_uart_startup._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.6, ptr @.str.7, i32 315, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register rxirq (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@mps2_uart_startup._entry_ptr.17 = internal global ptr @mps2_uart_startup._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mps2-uart-tx\00", [19 x i8] zeroinitializer }, align 32
@mps2_uart_startup._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.6, ptr @.str.7, i32 322, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register txirq (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@mps2_uart_startup._entry_ptr.21 = internal global ptr @mps2_uart_startup._entry.19, section ".printk_index", align 4
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"mps2_uart_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 519, i32 27 }
@___asan_gen_.25 = private unnamed_addr constant [19 x i8] c"mps2_serial_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 631, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 520, i32 17 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 521, i32 14 }
@___asan_gen_.34 = private unnamed_addr constant [18 x i8] c"mps2_uart_console\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 475, i32 23 }
@___asan_gen_.37 = private unnamed_addr constant [10 x i8] c"ports_idr\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 432, i32 8 }
@___asan_gen_.43 = private unnamed_addr constant [11 x i8] c"mps2_match\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 625, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 535, i32 27 }
@___asan_gen_.49 = private unnamed_addr constant [15 x i8] c"mps2_uart_pops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 414, i32 30 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 297, i32 7 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 300, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 305, i32 7 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 308, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 313, i32 7 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 315, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 320, i32 7 }
@___asan_gen_.94 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.98 = private constant [34 x i8] c"../drivers/tty/serial/mps2-uart.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 322, i32 4 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID___earlycon_mps2227, ptr @__initcall__kmod_mps2_uart__228_655_mps2_uart_init3, ptr @mps2_uart_startup._entry, ptr @mps2_uart_startup._entry.11, ptr @mps2_uart_startup._entry.15, ptr @mps2_uart_startup._entry.19, ptr @mps2_uart_startup._entry_ptr, ptr @mps2_uart_startup._entry_ptr.13, ptr @mps2_uart_startup._entry_ptr.17, ptr @mps2_uart_startup._entry_ptr.21, ptr @mps2_uart_driver, ptr @mps2_serial_driver, ptr @.str, ptr @.str.1, ptr @mps2_uart_console, ptr @ports_idr, ptr @.str.2, ptr @mps2_match, ptr @.str.3, ptr @mps2_uart_pops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mps2_uart_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mps2_serial_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mps2_uart_console to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ports_idr to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mps2_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mps2_uart_pops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mps2_uart_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mps2_uart_startup._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mps2_uart_startup._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mps2_uart_startup._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mps2_early_console_setup(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %opt) #0 section ".init.text" align 64 {
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
  store ptr @mps2_early_write, ptr %write, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mps2_uart_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @uart_register_driver(ptr noundef nonnull @mps2_uart_driver) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @mps2_serial_driver, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @uart_unregister_driver(ptr noundef nonnull @mps2_uart_driver) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mps2_early_write(ptr nocapture noundef readonly %con, ptr noundef %s, i32 noundef %n) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.console, ptr %con, i32 0, i32 13
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %port = getelementptr inbounds %struct.earlycon_device, ptr %1, i32 0, i32 1
  tail call void @uart_console_write(ptr noundef %port, ptr noundef %s, i32 noundef %n, ptr noundef nonnull @mps2_early_putchar) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mps2_early_putchar(ptr nocapture noundef readonly %port, i32 noundef %ch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr12 = getelementptr i8, ptr %1, i32 4
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr12) #10, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !61
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not13 = icmp eq i8 %3, 0
  br i1 %tobool.not13, label %entry.do.body6_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body6

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !62
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !63
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 4
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #10, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !61
  %7 = and i8 %6, 1
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %do.end.do.body6_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end.do.body6_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body6

do.body6:                                         ; preds = %do.end.do.body6_crit_edge, %entry.do.body6_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !64
  tail call void @arm_heavy_mb() #10
  %conv8 = trunc i32 %ch to i8
  %8 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 %conv8) #10, !srcloc !65
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mps2_uart_console_write(ptr nocapture noundef readonly %co, ptr noundef %s, i32 noundef %cnt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index, align 2
  %conv = sext i16 %1 to i32
  %call = tail call ptr @idr_find(ptr noundef nonnull @ports_idr, i32 noundef %conv) #10
  tail call void @uart_console_write(ptr noundef %call, ptr noundef %s, i32 noundef %cnt, ptr noundef nonnull @mps2_uart_console_putchar) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mps2_uart_console_setup(ptr noundef %co, ptr noundef %options) #2 align 64 {
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
  store i32 9600, ptr %baud, align 4
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
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %5)
  %6 = icmp ugt i16 %5, 2
  br i1 %6, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv23 = zext i16 %5 to i32
  %call = tail call ptr @idr_find(ptr noundef nonnull @ports_idr, i32 noundef %conv23) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %tobool10.not = icmp eq ptr %options, null
  br i1 %tobool10.not, label %if.end9.if.end12_crit_edge, label %if.then11

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  call void @uart_parse_options(ptr noundef nonnull %options, ptr noundef nonnull %baud, ptr noundef nonnull %parity, ptr noundef nonnull %bits, ptr noundef nonnull %flow) #10
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9.if.end12_crit_edge
  %7 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %baud, align 4
  %9 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %parity, align 4
  %11 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bits, align 4
  %13 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flow, align 4
  %call13 = call i32 @uart_set_options(ptr noundef nonnull %call, ptr noundef %co, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end12 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flow) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parity) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %baud) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mps2_uart_console_putchar(ptr nocapture noundef readonly %port, i32 noundef %ch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %1, i32 4
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i8) #10, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !66
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not9 = icmp eq i8 %3, 0
  br i1 %tobool.not9, label %entry.while.end_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !67
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !68
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !66
  %7 = and i8 %6, 1
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  %conv5 = trunc i32 %ch to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !69
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 %conv5) #10, !srcloc !65
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mps2_serial_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 376, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call.i26 = tail call i32 @of_alias_get_id(ptr noundef nonnull %1, ptr noundef nonnull @.str.3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %cmp.i = icmp slt i32 %call.i26, 0
  br i1 %cmp.i, label %if.then1.i, label %if.else.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i = tail call i32 @idr_alloc_cyclic(ptr noundef nonnull @ports_idr, ptr noundef nonnull %call.i, i32 noundef 0, i32 noundef 3, i32 noundef 3264) #10
  br label %if.end4.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 @idr_alloc(ptr noundef nonnull @ports_idr, ptr noundef nonnull %call.i, i32 noundef %call.i26, i32 noundef 3, i32 noundef 3264) #10
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.else.i, %if.then1.i
  %id.0.i = phi i32 [ %call2.i, %if.then1.i ], [ %call3.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id.0.i)
  %cmp5.i = icmp slt i32 %id.0.i, 0
  br i1 %cmp5.i, label %if.end4.i.cleanup_crit_edge, label %if.end7.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i:                                        ; preds = %if.end4.i
  %call8.i = tail call i32 @platform_irq_count(ptr noundef %pdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8.i)
  %cmp9.i = icmp eq i32 %call8.i, 1
  br i1 %cmp9.i, label %if.then10.i, label %if.end7.i.if.end4_crit_edge

if.end7.i.if.end4_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %flags.i = getelementptr inbounds %struct.mps2_uart_port, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %3, 1
  store i32 %or.i, ptr %flags.i, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then10.i, %if.end7.i.if.end4_crit_edge
  %line.i = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 41
  %4 = ptrtoint ptr %line.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %id.0.i, ptr %line.i, align 4
  %call.i27 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %call1.i = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call.i27) #10
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %membase.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1.i, ptr %membase.i, align 4
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end4.mps2_init_port.exit_crit_edge, label %if.end.i29

if.end4.mps2_init_port.exit_crit_edge:            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %mps2_init_port.exit

if.end.i29:                                       ; preds = %if.end4
  %6 = ptrtoint ptr %call.i27 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call.i27, align 4
  %mapbase.i = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 43
  %8 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %mapbase.i, align 4
  %end.i.i = getelementptr inbounds %struct.resource, ptr %call.i27, i32 0, i32 1
  %9 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end.i.i, align 4
  %11 = load i32, ptr %call.i27, align 4
  %sub.i.i = add i32 %10, 1
  %add.i.i = sub i32 %sub.i.i, %11
  %mapsize.i = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 44
  %12 = ptrtoint ptr %mapsize.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add.i.i, ptr %mapsize.i, align 4
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 26
  %13 = ptrtoint ptr %iotype.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %iotype.i, align 2
  %flags.i28 = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 33
  %14 = ptrtoint ptr %flags.i28 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 268435456, ptr %flags.i28, align 4
  %fifosize.i = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 23
  %15 = ptrtoint ptr %fifosize.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %fifosize.i, align 4
  %ops.i = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 39
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @mps2_uart_pops, ptr %ops.i, align 4
  %dev17.i = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 45
  %17 = ptrtoint ptr %dev17.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %dev17.i, align 4
  %call19.i = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #10
  %clk.i = getelementptr inbounds %struct.mps2_uart_port, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call19.i, ptr %clk.i, align 4
  %cmp.i78.i = icmp ugt ptr %call19.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i78.i, label %if.end.i29.mps2_init_port.exit_crit_edge, label %if.end25.i

if.end.i29.mps2_init_port.exit_crit_edge:         ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #12
  br label %mps2_init_port.exit

if.end25.i:                                       ; preds = %if.end.i29
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %call19.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end25.i.cleanup_crit_edge

if.end25.i.cleanup_crit_edge:                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end25.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %call19.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end29.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %call19.i) #10
  br label %cleanup

if.end29.i:                                       ; preds = %if.end.i.i
  %19 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk.i, align 4
  %call31.i = tail call i32 @clk_get_rate(ptr noundef %20) #10
  %uartclk.i = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 22
  %21 = ptrtoint ptr %uartclk.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call31.i, ptr %uartclk.i, align 4
  %22 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %23) #10
  tail call void @clk_unprepare(ptr noundef %23) #10
  %flags34.i = getelementptr inbounds %struct.mps2_uart_port, ptr %call.i, i32 0, i32 4
  %24 = ptrtoint ptr %flags34.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags34.i, align 4
  %and.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool35.not.i = icmp eq i32 %and.i, 0
  %call39.i = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  br i1 %tobool35.not.i, label %if.else.i30, label %if.end29.i.if.end8_crit_edge

if.end29.i.if.end8_crit_edge:                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.else.i30:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  %rx_irq.i = getelementptr inbounds %struct.mps2_uart_port, ptr %call.i, i32 0, i32 3
  %26 = ptrtoint ptr %rx_irq.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call39.i, ptr %rx_irq.i, align 4
  %call40.i = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #10
  %tx_irq.i = getelementptr inbounds %struct.mps2_uart_port, ptr %call.i, i32 0, i32 2
  %27 = ptrtoint ptr %tx_irq.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call40.i, ptr %tx_irq.i, align 4
  %call41.i = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 2) #10
  br label %if.end8

mps2_init_port.exit:                              ; preds = %if.end.i29.mps2_init_port.exit_crit_edge, %if.end4.mps2_init_port.exit_crit_edge
  %retval.0.i31.in = phi ptr [ %call1.i, %if.end4.mps2_init_port.exit_crit_edge ], [ %call19.i, %if.end.i29.mps2_init_port.exit_crit_edge ]
  %retval.0.i31 = ptrtoint ptr %retval.0.i31.in to i32
  br label %cleanup

if.end8:                                          ; preds = %if.else.i30, %if.end29.i.if.end8_crit_edge
  %call39.i.sink = phi i32 [ %call41.i, %if.else.i30 ], [ %call39.i, %if.end29.i.if.end8_crit_edge ]
  %28 = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 20
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call39.i.sink, ptr %28, align 4
  %call9 = tail call i32 @uart_add_one_port(ptr noundef nonnull @mps2_uart_driver, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end8.cleanup_crit_edge, %mps2_init_port.exit, %if.then3.i.i, %if.end25.i.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i31, %mps2_init_port.exit ], [ %call9, %if.end8.cleanup_crit_edge ], [ %id.0.i, %if.end4.i.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %call.i.i, %if.end25.i.cleanup_crit_edge ], [ %call1.i.i, %if.then3.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc_cyclic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irq_count(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mps2_uart_tx_empty(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !66
  %3 = and i8 %2, 1
  %4 = xor i8 %3, 1
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mps2_uart_set_mctrl(ptr nocapture noundef %port, i32 noundef %mctrl) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mps2_uart_get_mctrl(ptr nocapture noundef readnone %port) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 352
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mps2_uart_stop_tx(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !66
  %3 = and i8 %2, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !69
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i5, i8 %3) #10, !srcloc !65
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mps2_uart_start_tx(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !66
  %3 = or i8 %2, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !69
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i6, i8 %3) #10, !srcloc !65
  tail call fastcc void @mps2_uart_tx_chars(ptr noundef %port)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mps2_uart_stop_rx(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !66
  %3 = and i8 %2, -43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !69
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i5, i8 %3) #10, !srcloc !65
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mps2_uart_break_ctl(ptr nocapture noundef %port, i32 noundef %ctl) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mps2_uart_startup(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !66
  %3 = and i8 %2, -64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !69
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  %add.ptr.i74 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i74, i8 %3) #10, !srcloc !65
  %flags = getelementptr inbounds %struct.mps2_uart_port, ptr %port, i32 0, i32 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and3 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  %irq7 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %8 = ptrtoint ptr %irq7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq7, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %9, ptr noundef nonnull @mps2_uart_combinedirq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef %port) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.then.if.end32_crit_edge, label %do.end

if.then.if.end32_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.5, i32 noundef %call.i) #13
  br label %cleanup

if.else:                                          ; preds = %entry
  %call.i75 = tail call i32 @request_threaded_irq(i32 noundef %9, ptr noundef nonnull @mps2_uart_oerrirq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.10, ptr noundef %port) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool9.not = icmp eq i32 %call.i75, 0
  br i1 %tobool9.not, label %if.end15, label %do.end13

do.end13:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %dev14 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %12 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.12, i32 noundef %call.i75) #13
  br label %cleanup

if.end15:                                         ; preds = %if.else
  %rx_irq = getelementptr inbounds %struct.mps2_uart_port, ptr %port, i32 0, i32 3
  %14 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_irq, align 4
  %call.i76 = tail call i32 @request_threaded_irq(i32 noundef %15, ptr noundef nonnull @mps2_uart_rxirq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef %port) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %tobool17.not = icmp eq i32 %call.i76, 0
  br i1 %tobool17.not, label %if.end23, label %do.end21

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %dev22 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %16 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.16, i32 noundef %call.i76) #13
  br label %err_free_oerrirq

if.end23:                                         ; preds = %if.end15
  %tx_irq = getelementptr inbounds %struct.mps2_uart_port, ptr %port, i32 0, i32 2
  %18 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_irq, align 4
  %call.i77 = tail call i32 @request_threaded_irq(i32 noundef %19, ptr noundef nonnull @mps2_uart_txirq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.18, ptr noundef %port) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %tobool25.not = icmp eq i32 %call.i77, 0
  br i1 %tobool25.not, label %if.end23.if.end32_crit_edge, label %do.end29

if.end23.if.end32_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

do.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %dev30 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %20 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.20, i32 noundef %call.i77) #13
  %22 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_irq, align 4
  %call36 = tail call ptr @free_irq(i32 noundef %23, ptr noundef %port) #10
  br label %err_free_oerrirq

if.end32:                                         ; preds = %if.end23.if.end32_crit_edge, %if.then.if.end32_crit_edge
  %24 = or i8 %2, 63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !69
  tail call void @arm_heavy_mb() #10
  %25 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase.i, align 4
  %add.ptr.i79 = getelementptr i8, ptr %26, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i79, i8 %24) #10, !srcloc !65
  br label %cleanup

err_free_oerrirq:                                 ; preds = %do.end29, %do.end21
  %ret.0 = phi i32 [ %call.i76, %do.end21 ], [ %call.i77, %do.end29 ]
  %27 = ptrtoint ptr %irq7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq7, align 4
  %call38 = tail call ptr @free_irq(i32 noundef %28, ptr noundef %port) #10
  br label %cleanup

cleanup:                                          ; preds = %err_free_oerrirq, %if.end32, %do.end13, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %if.end32 ], [ %call.i75, %do.end13 ], [ %ret.0, %err_free_oerrirq ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mps2_uart_shutdown(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !66
  %3 = and i8 %2, -64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !69
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17, i8 %3) #10, !srcloc !65
  %flags = getelementptr inbounds %struct.mps2_uart_port, ptr %port, i32 0, i32 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and3 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rx_irq = getelementptr inbounds %struct.mps2_uart_port, ptr %port, i32 0, i32 3
  %8 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_irq, align 4
  %call4 = tail call ptr @free_irq(i32 noundef %9, ptr noundef %port) #10
  %tx_irq = getelementptr inbounds %struct.mps2_uart_port, ptr %port, i32 0, i32 2
  %10 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_irq, align 4
  %call5 = tail call ptr @free_irq(i32 noundef %11, ptr noundef %port) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  %call6 = tail call ptr @free_irq(i32 noundef %13, ptr noundef %port) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mps2_uart_set_termios(ptr noundef %port, ptr noundef %termios, ptr noundef %old) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %0 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_cflag, align 4
  %and2 = and i32 %1, 1073741455
  %or = or i32 %and2, 48
  store i32 %or, ptr %c_cflag, align 4
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %2 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %uartclk, align 4
  %add = add i32 %3, 1048575
  %div8 = udiv i32 %add, 2097151
  %add14 = add i32 %3, 8
  %div1553 = lshr i32 %add14, 4
  %call = tail call i32 @uart_get_baud_rate(ptr noundef %port, ptr noundef %termios, ptr noundef %old, i32 noundef %div8, i32 noundef %div1553) #10
  %4 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %uartclk, align 4
  %div2054 = lshr i32 %call, 1
  %add21 = add i32 %5, %div2054
  %div22 = udiv i32 %add21, %call
  %call26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #10
  %6 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %c_cflag, align 4
  tail call void @uart_update_timeout(ptr noundef %port, i32 noundef %7, i32 noundef %call) #10
  %8 = tail call i32 @llvm.bswap.i32(i32 %div22) #10
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %9 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #10, !srcloc !70
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call26) #10
  %call31 = tail call i32 @tty_termios_baud_rate(ptr noundef %termios) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool.not = icmp eq i32 %call31, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @tty_termios_encode_baud_rate(ptr noundef %termios, i32 noundef %call, i32 noundef %call) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @mps2_uart_type(ptr nocapture noundef readonly %port) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 116, i32 %1)
  %cmp = icmp eq i32 %1, 116
  %cond = select i1 %cmp, ptr @.str, ptr null
  ret ptr %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mps2_uart_release_port(ptr nocapture noundef %port) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mps2_uart_request_port(ptr nocapture noundef readnone %port) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @mps2_uart_config_port(ptr nocapture noundef writeonly %port, i32 noundef %type) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %type2 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 116, ptr %type2, align 4
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mps2_uart_verify_port(ptr nocapture noundef readnone %port, ptr nocapture noundef readnone %serinfo) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mps2_uart_tx_chars(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %xmit1 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2
  %head = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 4
  %add.ptr.i53 = getelementptr i8, ptr %3, i32 4
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i53) #10, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !66
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not54 = icmp eq i8 %5, 0
  br i1 %tobool.not54, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %x_char = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 24
  %tx = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 5
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %hw_stopped.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 35
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %6 = ptrtoint ptr %x_char to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %x_char, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !69
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 %7) #10, !srcloc !65
  %10 = ptrtoint ptr %x_char to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %x_char, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end9, %if.then
  %11 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %11)
  %storemerge.in = load i32, ptr %tx, align 4
  %storemerge = add i32 %storemerge.in, 1
  store i32 %storemerge, ptr %tx, align 4
  %12 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 4
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !66
  %15 = and i8 %14, 1
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end:                                           ; preds = %while.body
  %16 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %head, align 4
  %18 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp = icmp eq i32 %17, %19
  br i1 %cmp, label %if.end.while.end_crit_edge, label %lor.lhs.false

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

lor.lhs.false:                                    ; preds = %if.end
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %state, align 4
  %tty2.i = getelementptr inbounds %struct.tty_port, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %tty2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tty2.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %lor.lhs.false.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i

lor.lhs.false.uart_tx_stopped.exit_crit_edge:     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_tx_stopped.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false
  %stopped.i = getelementptr inbounds %struct.tty_struct, ptr %23, i32 0, i32 19, i32 1
  %24 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %stopped.i, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool3.not.i = icmp eq i8 %25, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i.while.end_crit_edge

land.lhs.true.i.while.end_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.lhs.true.i.uart_tx_stopped.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_tx_stopped.exit

uart_tx_stopped.exit:                             ; preds = %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, %lor.lhs.false.uart_tx_stopped.exit_crit_edge
  %26 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hw_stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool4.not.i.not = icmp eq i32 %27, 0
  br i1 %tobool4.not.i.not, label %if.end9, label %uart_tx_stopped.exit.while.end_crit_edge

uart_tx_stopped.exit.while.end_crit_edge:         ; preds = %uart_tx_stopped.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end9:                                          ; preds = %uart_tx_stopped.exit
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %xmit1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %xmit1, align 4
  %arrayidx = getelementptr i8, ptr %29, i32 %19
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !69
  tail call void @arm_heavy_mb() #10
  %32 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %33, i8 %31) #10, !srcloc !65
  %34 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tail, align 4
  %add = add i32 %35, 1
  %rem = and i32 %add, 4095
  store i32 %rem, ptr %tail, align 4
  br label %while.cond.backedge

while.end:                                        ; preds = %uart_tx_stopped.exit.while.end_crit_edge, %land.lhs.true.i.while.end_crit_edge, %if.end.while.end_crit_edge, %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  %36 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %head, align 4
  %tail17 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %38 = ptrtoint ptr %tail17 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tail17, align 4
  %sub = sub i32 %37, %39
  %and18 = and i32 %sub, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %cmp19 = icmp eq i32 %and18, 0
  br i1 %cmp19, label %if.then21, label %while.end.if.end22_crit_edge

while.end.if.end22_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then21:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @uart_write_wakeup(ptr noundef %port) #10
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %while.end.if.end22_crit_edge
  %40 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %head, align 4
  %42 = ptrtoint ptr %tail17 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tail17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp25 = icmp eq i32 %41, %43
  br i1 %cmp25, label %if.then27, label %if.end22.if.end28_crit_edge

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %45, i32 8
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #10, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !66
  %47 = and i8 %46, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !69
  tail call void @arm_heavy_mb() #10
  %48 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %membase.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %49, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i5.i, i8 %47) #10, !srcloc !65
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end22.if.end28_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mps2_uart_combinedirq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mps2_uart_rxirq(i32 noundef %irq, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #10, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !66
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end4, label %mps2_uart_txirq.exit.thread, !prof !72

mps2_uart_txirq.exit.thread:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_lock(ptr noundef %data) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !69
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i11.i, i8 1) #10, !srcloc !65
  tail call fastcc void @mps2_uart_tx_chars(ptr noundef %data) #10
  tail call void @_raw_spin_unlock(ptr noundef %data) #10
  br label %return

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 @mps2_uart_oerrirq(i32 noundef %irq, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5)
  %cmp6 = icmp eq i32 %call5, 1
  %. = zext i1 %cmp6 to i32
  br label %return

return:                                           ; preds = %if.end4, %mps2_uart_txirq.exit.thread, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %entry.return_crit_edge ], [ %., %if.end4 ], [ 1, %mps2_uart_txirq.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mps2_uart_oerrirq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !66
  tail call void @_raw_spin_lock(ptr noundef %data) #10
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 30
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !69
  tail call void @arm_heavy_mb() #10
  %5 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %6, i32 12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i18, i8 8) #10, !srcloc !65
  %overrun = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 31, i32 7
  %7 = ptrtoint ptr %overrun to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %overrun, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %overrun, align 4
  %tail.i = getelementptr inbounds %struct.tty_bufhead, ptr %4, i32 0, i32 8
  %9 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i, align 4
  %flags.i = getelementptr inbounds %struct.tty_buffer, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then.if.end12.i_crit_edge

if.then.if.end12.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %if.then
  %used.i = getelementptr inbounds %struct.tty_buffer, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %used.i, align 4
  %size.i = getelementptr inbounds %struct.tty_buffer, ptr %10, i32 0, i32 2
  %15 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp3.i = icmp slt i32 %14, %16
  br i1 %cmp3.i, label %if.end.i, label %land.lhs.true.i.if.end12.i_crit_edge

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %10, i32 0, i32 6
  %add.ptr.i.i.i = getelementptr i8, ptr %data.i.i.i, i32 %14
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %16
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 4, ptr %add.ptr.i.i, align 1
  %18 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %used.i, align 4
  %inc.i = add i32 %19, 1
  store i32 %inc.i, ptr %used.i, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %data.i.i.i, i32 %19
  %20 = ptrtoint ptr %add.ptr.i1.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %add.ptr.i1.i, align 1
  br label %tty_insert_flip_char.exit

if.end12.i:                                       ; preds = %land.lhs.true.i.if.end12.i_crit_edge, %if.then.if.end12.i_crit_edge
  %call13.i = tail call i32 @__tty_insert_flip_char(ptr noundef %4, i8 noundef zeroext 0, i8 noundef zeroext 4) #10
  br label %tty_insert_flip_char.exit

tty_insert_flip_char.exit:                        ; preds = %if.end12.i, %if.end.i
  tail call void @tty_flip_buffer_push(ptr noundef %4) #10
  br label %if.end

if.end:                                           ; preds = %tty_insert_flip_char.exit, %entry.if.end_crit_edge
  %handled.0 = phi i32 [ 1, %tty_insert_flip_char.exit ], [ 0, %entry.if.end_crit_edge ]
  %and4 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !69
  tail call void @arm_heavy_mb() #10
  %21 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %22, i32 12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i20, i8 4) #10, !srcloc !65
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %handled.1 = phi i32 [ 1, %if.then6 ], [ %handled.0, %if.end.if.end7_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %data) #10
  ret i32 %handled.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mps2_uart_rxirq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !66
  %3 = and i8 %2, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !72

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef %data) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !69
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i11, i8 2) #10, !srcloc !65
  %state.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 30
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state.i, align 4
  %8 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %9, i32 4
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i11.i) #10, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !66
  %11 = and i8 %10, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not12.i = icmp eq i8 %11, 0
  br i1 %tobool.not12.i, label %if.end.mps2_uart_rx_chars.exit_crit_edge, label %while.body.lr.ph.i

if.end.mps2_uart_rx_chars.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %mps2_uart_rx_chars.exit

while.body.lr.ph.i:                               ; preds = %if.end
  %rx.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 31, i32 4
  br label %while.body.i

while.body.i:                                     ; preds = %tty_insert_flip_char.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %12 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i, align 4
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %13) #10, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !66
  %15 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx.i, align 4
  %inc.i = add i32 %16, 1
  store i32 %inc.i, ptr %rx.i, align 4
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state.i, align 4
  %tail.i.i = getelementptr inbounds %struct.tty_bufhead, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tail.i.i, align 4
  %used.i.i = getelementptr inbounds %struct.tty_buffer, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %used.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.tty_buffer, ptr %20, i32 0, i32 2
  %23 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp3.i.i = icmp slt i32 %22, %24
  br i1 %cmp3.i.i, label %if.then.i.i, label %if.end12.i.i

if.then.i.i:                                      ; preds = %while.body.i
  %flags.i.i = getelementptr inbounds %struct.tty_buffer, ptr %20, i32 0, i32 5
  %25 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then8.i.i, label %if.then.i.i.if.end.i.i_crit_edge

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then8.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %20, i32 0, i32 6
  %add.ptr.i.i.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %22
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %24
  %27 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %add.ptr.i.i.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then8.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %28 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %used.i.i, align 4
  %inc.i.i = add i32 %29, 1
  store i32 %inc.i.i, ptr %used.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %20, i32 0, i32 6
  %add.ptr.i1.i.i = getelementptr i8, ptr %data.i.i.i, i32 %29
  %30 = ptrtoint ptr %add.ptr.i1.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %14, ptr %add.ptr.i1.i.i, align 1
  br label %tty_insert_flip_char.exit.i

if.end12.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call13.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %18, i8 noundef zeroext %14, i8 noundef zeroext 0) #10
  br label %tty_insert_flip_char.exit.i

tty_insert_flip_char.exit.i:                      ; preds = %if.end12.i.i, %if.end.i.i
  %31 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 4
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #10, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !66
  %34 = and i8 %33, 2
  %tobool.not.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i, label %tty_insert_flip_char.exit.i.mps2_uart_rx_chars.exit_crit_edge, label %tty_insert_flip_char.exit.i.while.body.i_crit_edge

tty_insert_flip_char.exit.i.while.body.i_crit_edge: ; preds = %tty_insert_flip_char.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

tty_insert_flip_char.exit.i.mps2_uart_rx_chars.exit_crit_edge: ; preds = %tty_insert_flip_char.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mps2_uart_rx_chars.exit

mps2_uart_rx_chars.exit:                          ; preds = %tty_insert_flip_char.exit.i.mps2_uart_rx_chars.exit_crit_edge, %if.end.mps2_uart_rx_chars.exit_crit_edge
  tail call void @tty_flip_buffer_push(ptr noundef %7) #10
  tail call void @_raw_spin_unlock(ptr noundef %data) #10
  br label %cleanup

cleanup:                                          ; preds = %mps2_uart_rx_chars.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %mps2_uart_rx_chars.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mps2_uart_txirq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !66
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !72

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_lock(ptr noundef %data) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !69
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i11, i8 1) #10, !srcloc !65
  tail call fastcc void @mps2_uart_tx_chars(ptr noundef %data)
  tail call void @_raw_spin_unlock(ptr noundef %data) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #4

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !35, !36, !37, !39, !41, !42, !43, !45, !47, !48, !49}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__UNIQUE_ID___earlycon_mps2227, !1, !"__UNIQUE_ID___earlycon_mps2227", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/mps2-uart.c", i32 513, i32 1}
!2 = !{ptr @__initcall__kmod_mps2_uart__228_655_mps2_uart_init3, !3, !"__initcall__kmod_mps2_uart__228_655_mps2_uart_init3", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/mps2-uart.c", i32 655, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/tty/serial/mps2-uart.c", i32 520, i32 17}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/mps2-uart.c", i32 521, i32 14}
!8 = !{ptr @mps2_uart_driver, !9, !"mps2_uart_driver", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/mps2-uart.c", i32 519, i32 27}
!10 = !{ptr @mps2_uart_console, !11, !"mps2_uart_console", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/mps2-uart.c", i32 475, i32 23}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/mps2-uart.c", i32 432, i32 8}
!14 = !{ptr @ports_idr, !13, !"ports_idr", i1 false, i1 false}
!15 = !{ptr @mps2_serial_driver, !16, !"mps2_serial_driver", i1 false, i1 false}
!16 = !{!"../drivers/tty/serial/mps2-uart.c", i32 631, i32 31}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/tty/serial/mps2-uart.c", i32 535, i32 27}
!19 = !{ptr @mps2_uart_pops, !20, !"mps2_uart_pops", i1 false, i1 false}
!20 = !{!"../drivers/tty/serial/mps2-uart.c", i32 414, i32 30}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/tty/serial/mps2-uart.c", i32 297, i32 7}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/tty/serial/mps2-uart.c", i32 300, i32 4}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @mps2_uart_startup._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @mps2_uart_startup._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/tty/serial/mps2-uart.c", i32 305, i32 7}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/tty/serial/mps2-uart.c", i32 308, i32 4}
!35 = !{ptr @mps2_uart_startup._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @mps2_uart_startup._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/tty/serial/mps2-uart.c", i32 313, i32 7}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/tty/serial/mps2-uart.c", i32 315, i32 4}
!41 = !{ptr @mps2_uart_startup._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @mps2_uart_startup._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/tty/serial/mps2-uart.c", i32 320, i32 7}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/tty/serial/mps2-uart.c", i32 322, i32 4}
!47 = !{ptr @mps2_uart_startup._entry.19, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @mps2_uart_startup._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @mps2_match, !50, !"mps2_match", i1 false, i1 false}
!50 = !{!"../drivers/tty/serial/mps2-uart.c", i32 625, i32 34}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i64 2050079}
!61 = !{i64 2154184114}
!62 = !{i64 2154184471}
!63 = !{i64 2154184313}
!64 = !{i64 2154184707}
!65 = !{i64 2049684}
!66 = !{i64 2154163332}
!67 = !{i64 2154183845}
!68 = !{i64 2154183687}
!69 = !{i64 2154163014}
!70 = !{i64 2049881}
!71 = !{i8 0, i8 2}
!72 = !{!"branch_weights", i32 1, i32 2000}
