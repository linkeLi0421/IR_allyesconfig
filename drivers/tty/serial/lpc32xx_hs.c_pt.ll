; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/lpc32xx_hs.c_pt.bc'
source_filename = "../drivers/tty/serial/lpc32xx_hs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.lpc32xx_hsuart_port = type { %struct.uart_port }
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
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }

@__initcall__kmod_lpc32xx_hs__285_195_lpc32xx_hsuart_console_initcon = internal global ptr @lpc32xx_hsuart_console_init, section ".con_initcall.init", align 4
@serial_hs_lpc32xx_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @serial_hs_lpc32xx_probe, ptr @serial_hs_lpc32xx_remove, ptr null, ptr @serial_hs_lpc32xx_suspend, ptr @serial_hs_lpc32xx_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @serial_hs_lpc32xx_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@lpc32xx_hs_reg = internal global { %struct.uart_driver, [60 x i8] } { %struct.uart_driver { ptr null, ptr @.str, ptr @.str.10, i32 0, i32 0, i32 3, ptr @lpc32xx_hsuart_console, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_lpc32xx_hs__286_756_lpc32xx_hsuart_init6 = internal global ptr @lpc32xx_hsuart_init, section ".initcall6.init", align 4
@__exitcall_lpc32xx_hsuart_exit = internal global ptr @lpc32xx_hsuart_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author287 = internal constant [52 x i8] c"lpc32xx_hs.author=Kevin Wells <kevin.wells@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author288 = internal constant [51 x i8] c"lpc32xx_hs.author=Roland Stigge <stigge@antcom.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description289 = internal constant [58 x i8] c"lpc32xx_hs.description=NXP LPC32XX High Speed UART driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [46 x i8] c"lpc32xx_hs.file=drivers/tty/serial/lpc32xx_hs\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [23 x i8] c"lpc32xx_hs.license=GPL\00", section ".modinfo", align 1
@lpc32xx_hsuart_console = internal global { %struct.console, [60 x i8] } { %struct.console { [16 x i8] c"ttyTX\00\00\00\00\00\00\00\00\00\00\00", ptr @lpc32xx_hsuart_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @lpc32xx_hsuart_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @lpc32xx_hsuart_reg, ptr null }, [60 x i8] zeroinitializer }, align 32
@lpc32xx_hsuart_reg = internal global { %struct.uart_driver, [60 x i8] } zeroinitializer, align 32
@lpc32xx_hs_ports = internal global { [3 x %struct.lpc32xx_hsuart_port], [264 x i8] } zeroinitializer, align 32
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lpc32xx_hsuart\00", [17 x i8] zeroinitializer }, align 32
@serial_hs_lpc32xx_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,lpc3220-hsuart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@uarts_registered = internal global { i32, [28 x i8] } zeroinitializer, align 32
@serial_hs_lpc32xx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 640, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Error: Number of possible ports exceeded (%d)!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"serial_hs_lpc32xx_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/tty/serial/lpc32xx_hs.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@serial_hs_lpc32xx_probe._entry_ptr = internal global ptr @serial_hs_lpc32xx_probe._entry, section ".printk_index", align 4
@serial_hs_lpc32xx_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 650, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Error getting mem resource for HS UART port %d\0A\00", [48 x i8] zeroinitializer }, align 32
@serial_hs_lpc32xx_probe._entry_ptr.8 = internal global ptr @serial_hs_lpc32xx_probe._entry.6, section ".printk_index", align 4
@serial_lpc32xx_pops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @serial_lpc32xx_tx_empty, ptr @serial_lpc32xx_set_mctrl, ptr @serial_lpc32xx_get_mctrl, ptr @serial_lpc32xx_stop_tx, ptr @serial_lpc32xx_start_tx, ptr null, ptr null, ptr null, ptr @serial_lpc32xx_stop_rx, ptr null, ptr @serial_lpc32xx_break_ctl, ptr @serial_lpc32xx_startup, ptr @serial_lpc32xx_shutdown, ptr null, ptr @serial_lpc32xx_set_termios, ptr null, ptr null, ptr @serial_lpc32xx_type, ptr @serial_lpc32xx_release_port, ptr @serial_lpc32xx_request_port, ptr @serial_lpc32xx_config_port, ptr @serial_lpc32xx_verify_port, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@serial_hs_lpc32xx_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&p->port.lock\00", [18 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ttyTX\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [25 x i8] c"serial_hs_lpc32xx_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 724, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant [15 x i8] c"lpc32xx_hs_reg\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 202, i32 27 }
@___asan_gen_.17 = private unnamed_addr constant [23 x i8] c"lpc32xx_hsuart_console\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 180, i32 23 }
@___asan_gen_.20 = private unnamed_addr constant [19 x i8] c"lpc32xx_hsuart_reg\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 179, i32 27 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"lpc32xx_hs_ports\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 94, i32 35 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 730, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [25 x i8] c"serial_hs_lpc32xx_dt_ids\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 717, i32 34 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"uarts_registered\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 209, i32 12 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 638, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 648, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [20 x i8] c"serial_lpc32xx_pops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 610, i32 30 }
@___asan_gen_.62 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 668, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private constant [35 x i8] c"../drivers/tty/serial/lpc32xx_hs.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 205, i32 14 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_author287, ptr @__UNIQUE_ID_author288, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__exitcall_lpc32xx_hsuart_exit, ptr @__initcall__kmod_lpc32xx_hs__285_195_lpc32xx_hsuart_console_initcon, ptr @__initcall__kmod_lpc32xx_hs__286_756_lpc32xx_hsuart_init6, ptr @lpc32xx_hsuart_exit, ptr @serial_hs_lpc32xx_probe._entry, ptr @serial_hs_lpc32xx_probe._entry.6, ptr @serial_hs_lpc32xx_probe._entry_ptr, ptr @serial_hs_lpc32xx_probe._entry_ptr.8, ptr @serial_hs_lpc32xx_driver, ptr @lpc32xx_hs_reg, ptr @lpc32xx_hsuart_console, ptr @lpc32xx_hsuart_reg, ptr @lpc32xx_hs_ports, ptr @.str, ptr @serial_hs_lpc32xx_dt_ids, ptr @uarts_registered, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @serial_lpc32xx_pops, ptr @serial_hs_lpc32xx_probe.__key, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_hs_lpc32xx_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_hs_reg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_hsuart_console to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_hsuart_reg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_hs_ports to i32), i32 1080, i32 1344, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_hs_lpc32xx_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uarts_registered to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_hs_lpc32xx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_hs_lpc32xx_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_lpc32xx_pops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_hs_lpc32xx_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_hsuart_console_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @register_console(ptr noundef nonnull @lpc32xx_hsuart_console) #8
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lpc32xx_hsuart_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @serial_hs_lpc32xx_driver) #8
  tail call void @uart_unregister_driver(ptr noundef nonnull @lpc32xx_hs_reg) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_hsuart_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @uart_register_driver(ptr noundef nonnull @lpc32xx_hs_reg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @serial_hs_lpc32xx_driver, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @uart_unregister_driver(ptr noundef nonnull @lpc32xx_hs_reg) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_console(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpc32xx_hsuart_console_write(ptr nocapture noundef readonly %co, ptr noundef %s, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index, align 2
  %idxprom = sext i16 %1 to i32
  %arrayidx = getelementptr [3 x %struct.lpc32xx_hsuart_port], ptr @lpc32xx_hs_ports, i32 0, i32 %idxprom
  tail call void @touch_softlockup_watchdog() #8
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !59
  %and.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry.do.end11_crit_edge
  %sysrq = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 46
  %3 = ptrtoint ptr %sysrq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sysrq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool12.not = icmp eq i32 %4, 0
  br i1 %tobool12.not, label %if.else, label %do.body30.critedge

if.else:                                          ; preds = %do.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %5 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool14.not = icmp eq i32 %5, 0
  br i1 %tobool14.not, label %if.else18, label %if.then15

if.then15:                                        ; preds = %if.else
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %arrayidx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %phi.cmp = icmp eq i32 %call.i, 0
  tail call void @uart_console_write(ptr noundef %arrayidx, ptr noundef %s, i32 noundef %count, ptr noundef nonnull @lpc32xx_hsuart_console_putchar) #8
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 2
  %6 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #8, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !61
  %9 = and i32 %8, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp6.i = icmp eq i32 %9, 0
  br i1 %cmp6.i, label %if.then15.wait_for_xmit_empty.exit_crit_edge, label %if.then15.if.end.i_crit_edge

if.then15.if.end.i_crit_edge:                     ; preds = %if.then15
  br label %if.end.i

if.then15.wait_for_xmit_empty.exit_crit_edge:     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_for_xmit_empty.exit

if.end.i:                                         ; preds = %if.end4.i.if.end.i_crit_edge, %if.then15.if.end.i_crit_edge
  %timeout.07.i = phi i32 [ %dec.i, %if.end4.i.if.end.i_crit_edge ], [ 10000, %if.then15.if.end.i_crit_edge ]
  %dec.i = add nsw i32 %timeout.07.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp2.i = icmp eq i32 %dec.i, 0
  br i1 %cmp2.i, label %if.end.i.wait_for_xmit_empty.exit_crit_edge, label %if.end4.i

if.end.i.wait_for_xmit_empty.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_for_xmit_empty.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #8
  %11 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !61
  %14 = and i32 %13, 16711680
  %cmp.i = icmp eq i32 %14, 0
  br i1 %cmp.i, label %if.end4.i.wait_for_xmit_empty.exit_crit_edge, label %if.end4.i.if.end.i_crit_edge

if.end4.i.if.end.i_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end4.i.wait_for_xmit_empty.exit_crit_edge:     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_for_xmit_empty.exit

wait_for_xmit_empty.exit:                         ; preds = %if.end4.i.wait_for_xmit_empty.exit_crit_edge, %if.end.i.wait_for_xmit_empty.exit_crit_edge, %if.then15.wait_for_xmit_empty.exit_crit_edge
  br i1 %phi.cmp, label %wait_for_xmit_empty.exit.do.body30_crit_edge, label %wait_for_xmit_empty.exit.if.then26_crit_edge

wait_for_xmit_empty.exit.if.then26_crit_edge:     ; preds = %wait_for_xmit_empty.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

wait_for_xmit_empty.exit.do.body30_crit_edge:     ; preds = %wait_for_xmit_empty.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body30

if.else18:                                        ; preds = %if.else
  tail call void @_raw_spin_lock(ptr noundef %arrayidx) #8
  tail call void @uart_console_write(ptr noundef %arrayidx, ptr noundef %s, i32 noundef %count, ptr noundef nonnull @lpc32xx_hsuart_console_putchar) #8
  %membase.i68 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 2
  %15 = ptrtoint ptr %membase.i68 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i68, align 4
  %add.ptr5.i69 = getelementptr i8, ptr %16, i32 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i69) #8, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !61
  %18 = and i32 %17, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp6.i70 = icmp eq i32 %18, 0
  br i1 %cmp6.i70, label %if.else18.if.then26_crit_edge, label %if.else18.if.end.i74_crit_edge

if.else18.if.end.i74_crit_edge:                   ; preds = %if.else18
  br label %if.end.i74

if.else18.if.then26_crit_edge:                    ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

if.end.i74:                                       ; preds = %if.end4.i77.if.end.i74_crit_edge, %if.else18.if.end.i74_crit_edge
  %timeout.07.i71 = phi i32 [ %dec.i72, %if.end4.i77.if.end.i74_crit_edge ], [ 10000, %if.else18.if.end.i74_crit_edge ]
  %dec.i72 = add nsw i32 %timeout.07.i71, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i72)
  %cmp2.i73 = icmp eq i32 %dec.i72, 0
  br i1 %cmp2.i73, label %if.end.i74.if.then26_crit_edge, label %if.end4.i77

if.end.i74.if.then26_crit_edge:                   ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

if.end4.i77:                                      ; preds = %if.end.i74
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #8
  %20 = ptrtoint ptr %membase.i68 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase.i68, align 4
  %add.ptr.i75 = getelementptr i8, ptr %21, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i75) #8, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !61
  %23 = and i32 %22, 16711680
  %cmp.i76 = icmp eq i32 %23, 0
  br i1 %cmp.i76, label %if.end4.i77.if.then26_crit_edge, label %if.end4.i77.if.end.i74_crit_edge

if.end4.i77.if.end.i74_crit_edge:                 ; preds = %if.end4.i77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i74

if.end4.i77.if.then26_crit_edge:                  ; preds = %if.end4.i77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

if.then26:                                        ; preds = %if.end4.i77.if.then26_crit_edge, %if.end.i74.if.then26_crit_edge, %if.else18.if.then26_crit_edge, %wait_for_xmit_empty.exit.if.then26_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx) #8
  br label %do.body30

do.body30.critedge:                               ; preds = %do.end11
  tail call void @uart_console_write(ptr noundef %arrayidx, ptr noundef %s, i32 noundef %count, ptr noundef nonnull @lpc32xx_hsuart_console_putchar) #8
  %membase.i79 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 2
  %24 = ptrtoint ptr %membase.i79 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase.i79, align 4
  %add.ptr5.i80 = getelementptr i8, ptr %25, i32 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i80) #8, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !61
  %27 = and i32 %26, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp6.i81 = icmp eq i32 %27, 0
  br i1 %cmp6.i81, label %do.body30.critedge.do.body30_crit_edge, label %do.body30.critedge.if.end.i85_crit_edge

do.body30.critedge.if.end.i85_crit_edge:          ; preds = %do.body30.critedge
  br label %if.end.i85

do.body30.critedge.do.body30_crit_edge:           ; preds = %do.body30.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body30

if.end.i85:                                       ; preds = %if.end4.i88.if.end.i85_crit_edge, %do.body30.critedge.if.end.i85_crit_edge
  %timeout.07.i82 = phi i32 [ %dec.i83, %if.end4.i88.if.end.i85_crit_edge ], [ 10000, %do.body30.critedge.if.end.i85_crit_edge ]
  %dec.i83 = add nsw i32 %timeout.07.i82, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i83)
  %cmp2.i84 = icmp eq i32 %dec.i83, 0
  br i1 %cmp2.i84, label %if.end.i85.do.body30_crit_edge, label %if.end4.i88

if.end.i85.do.body30_crit_edge:                   ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body30

if.end4.i88:                                      ; preds = %if.end.i85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748) #8
  %29 = ptrtoint ptr %membase.i79 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase.i79, align 4
  %add.ptr.i86 = getelementptr i8, ptr %30, i32 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i86) #8, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !61
  %32 = and i32 %31, 16711680
  %cmp.i87 = icmp eq i32 %32, 0
  br i1 %cmp.i87, label %if.end4.i88.do.body30_crit_edge, label %if.end4.i88.if.end.i85_crit_edge

if.end4.i88.if.end.i85_crit_edge:                 ; preds = %if.end4.i88
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i85

if.end4.i88.do.body30_crit_edge:                  ; preds = %if.end4.i88
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body30

do.body30:                                        ; preds = %if.end4.i88.do.body30_crit_edge, %if.end.i85.do.body30_crit_edge, %do.body30.critedge.do.body30_crit_edge, %if.then26, %wait_for_xmit_empty.exit.do.body30_crit_edge
  br i1 %tobool.not, label %if.then39, label %do.body30.do.body41_crit_edge

do.body30.do.body41_crit_edge:                    ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body41

if.then39:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_on() #8
  br label %do.body41

do.body41:                                        ; preds = %if.then39, %do.body30.do.body41_crit_edge
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !62
  %and.i.i = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool49.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool49.not, label %if.then53, label %do.body41.do.end56_crit_edge, !prof !63

do.body41.do.end56_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end56

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end56

do.end56:                                         ; preds = %if.then53, %do.body41.do.end56_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #8, !srcloc !64
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_hsuart_console_setup(ptr noundef %co, ptr noundef %options) #0 section ".init.text" align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %5)
  %cmp = icmp sgt i16 %5, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %index, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %index, align 2
  %idxprom = sext i16 %8 to i32
  %arrayidx = getelementptr [3 x %struct.lpc32xx_hsuart_port], ptr @lpc32xx_hs_ports, i32 0, i32 %idxprom
  %membase = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 2
  %9 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %tobool7.not = icmp eq ptr %options, null
  br i1 %tobool7.not, label %if.end6.if.end9_crit_edge, label %if.then8

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  call void @uart_parse_options(ptr noundef nonnull %options, ptr noundef nonnull %baud, ptr noundef nonnull %parity, ptr noundef nonnull %bits, ptr noundef nonnull %flow) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6.if.end9_crit_edge
  %11 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %baud, align 4
  %13 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %parity, align 4
  %15 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bits, align 4
  %17 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flow, align 4
  %call = call i32 @uart_set_options(ptr noundef %arrayidx, ptr noundef %co, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end9 ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flow) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parity) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %baud) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpc32xx_hsuart_console_putchar(ptr nocapture noundef readonly %port, i32 noundef %ch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #8, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %3 = and i32 %2, 14680064
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6.i = icmp eq i32 %3, 0
  br i1 %cmp6.i, label %entry.wait_for_xmit_ready.exit_crit_edge, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  br label %if.end.i

entry.wait_for_xmit_ready.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_for_xmit_ready.exit

if.end.i:                                         ; preds = %if.end4.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %timeout.07.i = phi i32 [ %dec.i, %if.end4.i.if.end.i_crit_edge ], [ 10000, %entry.if.end.i_crit_edge ]
  %dec.i = add nsw i32 %timeout.07.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp2.i = icmp eq i32 %dec.i, 0
  br i1 %cmp2.i, label %if.end.i.wait_for_xmit_ready.exit_crit_edge, label %if.end4.i

if.end.i.wait_for_xmit_ready.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_for_xmit_ready.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #8
  %5 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %8 = and i32 %7, 14680064
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %if.end4.i.wait_for_xmit_ready.exit_crit_edge, label %if.end4.i.if.end.i_crit_edge

if.end4.i.if.end.i_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end4.i.wait_for_xmit_ready.exit_crit_edge:     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_for_xmit_ready.exit

wait_for_xmit_ready.exit:                         ; preds = %if.end4.i.wait_for_xmit_ready.exit_crit_edge, %if.end.i.wait_for_xmit_ready.exit_crit_edge, %entry.wait_for_xmit_ready.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !66
  tail call void @arm_heavy_mb() #8
  %9 = tail call i32 @llvm.bswap.i32(i32 %ch)
  %10 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #8, !srcloc !67
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_softlockup_watchdog() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_hs_lpc32xx_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @uarts_registered, align 4
  %arrayidx = getelementptr [3 x %struct.lpc32xx_hsuart_port], ptr @lpc32xx_hs_ports, i32 0, i32 %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %add = add nuw i32 %0, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %add) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = call ptr @memset(ptr %arrayidx, i32 0, i32 360)
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end4, label %if.end6

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %2 = load i32, ptr @uarts_registered, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.7, i32 noundef %2) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call, align 4
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 43
  %5 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %mapbase, align 4
  %membase = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 2
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %membase, align 4
  %call8 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %irq = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 20
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call8, ptr %irq, align 4
  %iotype = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 26
  %8 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 3, ptr %iotype, align 2
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 22
  %9 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 13000000, ptr %uartclk, align 4
  %regshift = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 25
  %10 = ptrtoint ptr %regshift to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %regshift, align 1
  %flags = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 33
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1342177280, ptr %flags, align 4
  %dev17 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %dev19 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 45
  %12 = ptrtoint ptr %dev19 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev17, ptr %dev19, align 4
  %ops = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 39
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @serial_lpc32xx_pops, ptr %ops, align 4
  %14 = load i32, ptr @uarts_registered, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr @uarts_registered, align 4
  %line = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 41
  %15 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %line, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx, ptr noundef nonnull @.str.9, ptr noundef nonnull @serial_hs_lpc32xx_probe.__key, i16 noundef signext 3) #8
  %call30 = tail call i32 @uart_add_one_port(ptr noundef nonnull @lpc32xx_hs_reg, ptr noundef %arrayidx) #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end6.cleanup_crit_edge, %do.end4, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ %call30, %if.end11 ], [ -6, %do.end4 ], [ %call8, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_hs_lpc32xx_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @lpc32xx_hs_reg, ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_hs_lpc32xx_suspend(ptr nocapture noundef readonly %pdev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @uart_suspend_port(ptr noundef nonnull @lpc32xx_hs_reg, ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_hs_lpc32xx_resume(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @uart_resume_port(ptr noundef nonnull @lpc32xx_hs_reg, ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_lpc32xx_tx_empty(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  %3 = and i32 %2, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %spec.select = zext i1 %cmp to i32
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @serial_lpc32xx_set_mctrl(ptr nocapture noundef %port, i32 noundef %mctrl) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @serial_lpc32xx_get_mctrl(ptr nocapture noundef readnone %port) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 352
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_lpc32xx_stop_tx(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  %3 = and i32 %2, -536870913
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %3) #8, !srcloc !67
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_lpc32xx_start_tx(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__serial_lpc32xx_tx(ptr noundef %port)
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  %3 = or i32 %2, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !72
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %3) #8, !srcloc !67
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_lpc32xx_stop_rx(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  %3 = and i32 %2, 1073741823
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %3) #8, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %add.ptr9 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 939524096) #8, !srcloc !67
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_lpc32xx_break_ctl(ptr noundef %port, i32 noundef %break_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #8
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %break_state)
  %cmp9.not = icmp eq i32 %break_state, 0
  %3 = and i32 %2, -65537
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %masksel = select i1 %cmp9.not, i32 0, i32 256
  %tmp.0 = or i32 %4, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !77
  tail call void @arm_heavy_mb() #8
  %5 = tail call i32 @llvm.bswap.i32(i32 %tmp.0)
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %add.ptr15 = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %5) #8, !srcloc !67
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_lpc32xx_startup(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #8
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #8, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not12.not.i = icmp eq i32 %2, 0
  br i1 %cmp.not12.not.i, label %entry.__serial_uart_flush.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.__serial_uart_flush.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__serial_uart_flush.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %cnt.013.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %entry.while.body.i_crit_edge ]
  %inc.i = add nuw nsw i32 %cnt.013.i, 1
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  %6 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i = icmp ne i32 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %cnt.013.i)
  %cmp2.i = icmp ult i32 %cnt.013.i, 127
  %or.cond.i = select i1 %cmp.not.i, i1 %cmp2.i, i1 false
  br i1 %or.cond.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.__serial_uart_flush.exit_crit_edge

while.body.i.__serial_uart_flush.exit_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__serial_uart_flush.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

__serial_uart_flush.exit:                         ; preds = %while.body.i.__serial_uart_flush.exit_crit_edge, %entry.__serial_uart_flush.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  tail call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 956301312) #8, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %11 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i, align 4
  %add.ptr14 = getelementptr i8, ptr %12, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 -16777216) #8, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  tail call void @arm_heavy_mb() #8
  %13 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i, align 4
  %add.ptr19 = getelementptr i8, ptr %14, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 304611584) #8, !srcloc !67
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call4) #8
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %16, ptr noundef nonnull @serial_lpc32xx_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %port) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %do.body22, label %__serial_uart_flush.exit.if.end_crit_edge

__serial_uart_flush.exit.if.end_crit_edge:        ; preds = %__serial_uart_flush.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body22:                                        ; preds = %__serial_uart_flush.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase.i, align 4
  %add.ptr27 = getelementptr i8, ptr %18, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 -769130240) #8, !srcloc !67
  br label %if.end

if.end:                                           ; preds = %do.body22, %__serial_uart_flush.exit.if.end_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_lpc32xx_shutdown(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  tail call void @arm_heavy_mb() #8
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 304611584) #8, !srcloc !67
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call3) #8
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call10 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %port) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_lpc32xx_set_termios(ptr noundef %port, ptr noundef %termios, ptr noundef %old) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %0 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_cflag, align 4
  %and = and i32 %1, 1073737871
  %or = or i32 %and, 48
  store i32 %or, ptr %c_cflag, align 4
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %2 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %uartclk, align 4
  %div = udiv i32 %3, 14
  %call = tail call i32 @uart_get_baud_rate(ptr noundef %port, ptr noundef %termios, ptr noundef %old, i32 noundef 0, i32 noundef %div) #8
  %4 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %uartclk, align 4
  %div1.i = udiv i32 %5, %call
  %div2.i = udiv i32 %div1.i, 14
  %sub.i = add nsw i32 %div2.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.not.i = icmp eq i32 %sub.i, 0
  %dec.i = add nsw i32 %div2.i, -2
  %spec.select.i = select i1 %cmp.not.i, i32 0, i32 %dec.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %spec.select.i)
  %cmp339.i = icmp ult i32 %spec.select.i, -3
  br i1 %cmp339.i, label %while.body.preheader.i, label %entry.__serial_get_clock_div.exit_crit_edge

entry.__serial_get_clock_div.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__serial_get_clock_div.exit

while.body.preheader.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add4.i = add nuw nsw i32 %spec.select.i, 1
  %mul.i = mul nuw i32 %add4.i, 14
  %div5.i = udiv i32 %5, %mul.i
  %sub6.i = sub i32 %div5.i, %call
  %6 = tail call i32 @llvm.abs.i32(i32 %sub6.i, i1 false) #8
  %add4.1.i = add nuw nsw i32 %spec.select.i, 2
  %mul.1.i = mul nuw i32 %add4.1.i, 14
  %div5.1.i = udiv i32 %5, %mul.1.i
  %sub6.1.i = sub i32 %div5.1.i, %call
  %7 = tail call i32 @llvm.abs.i32(i32 %sub6.1.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %6)
  %cmp9.1.i = icmp ult i32 %7, %6
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %6) #8
  %goodrate.1.1.i = select i1 %cmp9.1.i, i32 %add4.i, i32 %spec.select.i
  %9 = mul nuw i32 %spec.select.i, 14
  %mul.2.i = add i32 %9, 42
  %div5.2.i = udiv i32 %5, %mul.2.i
  %sub6.2.i = sub i32 %div5.2.i, %call
  %10 = tail call i32 @llvm.abs.i32(i32 %sub6.2.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp9.2.i = icmp ult i32 %10, %8
  %goodrate.1.2.i = select i1 %cmp9.2.i, i32 %add4.1.i, i32 %goodrate.1.1.i
  br label %__serial_get_clock_div.exit

__serial_get_clock_div.exit:                      ; preds = %while.body.preheader.i, %entry.__serial_get_clock_div.exit_crit_edge
  %goodrate.0.lcssa.i = phi i32 [ %sub.i, %entry.__serial_get_clock_div.exit_crit_edge ], [ %goodrate.1.2.i, %while.body.preheader.i ]
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #8
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %11 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 12
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  %14 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %c_cflag, align 4
  %and16 = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %cmp17 = icmp eq i32 %and16, 0
  %16 = and i32 %13, 1073741823
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %masksel = select i1 %cmp17, i32 0, i32 192
  %tmp.0 = or i32 %masksel, %17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !86
  tail call void @arm_heavy_mb() #8
  %18 = tail call i32 @llvm.bswap.i32(i32 %tmp.0)
  %19 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase, align 4
  %add.ptr25 = getelementptr i8, ptr %20, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %18) #8, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  tail call void @arm_heavy_mb() #8
  %21 = tail call i32 @llvm.bswap.i32(i32 %goodrate.0.lcssa.i)
  %22 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase, align 4
  %add.ptr30 = getelementptr i8, ptr %23, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %21) #8, !srcloc !67
  %24 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %c_cflag, align 4
  tail call void @uart_update_timeout(ptr noundef %port, i32 noundef %25, i32 noundef %call) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call9) #8
  %call33 = tail call i32 @tty_termios_baud_rate(ptr noundef %termios) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool.not = icmp eq i32 %call33, 0
  br i1 %tobool.not, label %__serial_get_clock_div.exit.if.end35_crit_edge, label %if.then34

__serial_get_clock_div.exit.if.end35_crit_edge:   ; preds = %__serial_get_clock_div.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then34:                                        ; preds = %__serial_get_clock_div.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @tty_termios_encode_baud_rate(ptr noundef %termios, i32 noundef %call, i32 noundef %call) #8
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %__serial_get_clock_div.exit.if.end35_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @serial_lpc32xx_type(ptr nocapture noundef readnone %port) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_lpc32xx_release_port(ptr nocapture noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iotype = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %0 = ptrtoint ptr %iotype to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %iotype, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp = icmp eq i8 %1, 3
  br i1 %cmp, label %land.lhs.true, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %2 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mapbase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %land.lhs.true.if.end6_crit_edge, label %if.then

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then:                                          ; preds = %land.lhs.true
  %flags = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool2.not = icmp sgt i32 %5, -1
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  tail call void @iounmap(ptr noundef %7) #8
  %8 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %membase, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %9 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mapbase, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %10, i32 noundef 4096) #8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_lpc32xx_request_port(ptr nocapture noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iotype = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %0 = ptrtoint ptr %iotype to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %iotype, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp = icmp eq i8 %1, 3
  br i1 %cmp, label %land.lhs.true, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

land.lhs.true:                                    ; preds = %entry
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %2 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mapbase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %land.lhs.true.if.end15_crit_edge, label %if.then

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then:                                          ; preds = %land.lhs.true
  %call = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %3, i32 noundef 4096, ptr noundef nonnull @.str, i32 noundef 0) #8
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.then.if.end15_crit_edge, label %if.else

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.else:                                          ; preds = %if.then
  %flags = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool5.not = icmp sgt i32 %5, -1
  br i1 %tobool5.not, label %if.else.if.end15_crit_edge, label %if.then6

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then6:                                         ; preds = %if.else
  %6 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mapbase, align 4
  %call8 = tail call ptr @ioremap(i32 noundef %7, i32 noundef 4096) #8
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %8 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8, ptr %membase, align 4
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.then11, label %if.then6.if.end15_crit_edge

if.then6.if.end15_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then11:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mapbase, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %10, i32 noundef 4096) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.then6.if.end15_crit_edge, %if.else.if.end15_crit_edge, %if.then.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %entry.if.end15_crit_edge
  %ret.0 = phi i32 [ 0, %if.then6.if.end15_crit_edge ], [ -12, %if.then11 ], [ 0, %if.else.if.end15_crit_edge ], [ -19, %land.lhs.true.if.end15_crit_edge ], [ -19, %entry.if.end15_crit_edge ], [ -16, %if.then.if.end15_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_lpc32xx_config_port(ptr nocapture noundef %port, i32 noundef %uflags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %0 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp.i = icmp eq i8 %1, 3
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %mapbase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %2 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mapbase.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i
  %call.i = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %3, i32 noundef 4096, ptr noundef nonnull @.str, i32 noundef 0) #8
  %tobool3.not.i = icmp eq ptr %call.i, null
  br i1 %tobool3.not.i, label %if.then.i.cleanup_crit_edge, label %if.else.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.i:                                        ; preds = %if.then.i
  %flags.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool5.not.i = icmp sgt i32 %5, -1
  br i1 %tobool5.not.i, label %if.else.i.if.end_crit_edge, label %if.then6.i

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then6.i:                                       ; preds = %if.else.i
  %6 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mapbase.i, align 4
  %call8.i = tail call ptr @ioremap(i32 noundef %7, i32 noundef 4096) #8
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %8 = ptrtoint ptr %membase.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8.i, ptr %membase.i, align 4
  %tobool10.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool10.not.i, label %if.then11.i, label %if.then6.i.if.end_crit_edge

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then11.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mapbase.i, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %10, i32 noundef 4096) #8
  br label %cleanup

if.end:                                           ; preds = %if.then6.i.if.end_crit_edge, %if.else.i.if.end_crit_edge
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 35, ptr %type, align 4
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 23
  %12 = ptrtoint ptr %fifosize to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 64, ptr %fifosize, align 4
  %membase.i17 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %13 = ptrtoint ptr %membase.i17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i17, align 4
  %add.ptr11.i = getelementptr i8, ptr %14, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #8, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not12.not.i = icmp eq i32 %15, 0
  br i1 %cmp.not12.not.i, label %if.end.__serial_uart_flush.exit_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.__serial_uart_flush.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %__serial_uart_flush.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %cnt.013.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end.while.body.i_crit_edge ]
  %inc.i = add nuw nsw i32 %cnt.013.i, 1
  %16 = ptrtoint ptr %membase.i17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i17, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  %19 = ptrtoint ptr %membase.i17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase.i17, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not.i = icmp ne i32 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %cnt.013.i)
  %cmp2.i = icmp ult i32 %cnt.013.i, 127
  %or.cond.i = select i1 %cmp.not.i, i1 %cmp2.i, i1 false
  br i1 %or.cond.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.__serial_uart_flush.exit_crit_edge

while.body.i.__serial_uart_flush.exit_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__serial_uart_flush.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

__serial_uart_flush.exit:                         ; preds = %while.body.i.__serial_uart_flush.exit_crit_edge, %if.end.__serial_uart_flush.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %22 = ptrtoint ptr %membase.i17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i17, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 956301312) #8, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %membase.i17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase.i17, align 4
  %add.ptr5 = getelementptr i8, ptr %25, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 -16777216) #8, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  tail call void @arm_heavy_mb() #8
  %26 = ptrtoint ptr %membase.i17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase.i17, align 4
  %add.ptr10 = getelementptr i8, ptr %27, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 304611584) #8, !srcloc !67
  br label %cleanup

cleanup:                                          ; preds = %__serial_uart_flush.exit, %if.then11.i, %if.then.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @serial_lpc32xx_verify_port(ptr nocapture noundef readnone %port, ptr nocapture noundef readonly %ser) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ser to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ser, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %1)
  %cmp.not = icmp eq i32 %1, 35
  %spec.store.select = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %spec.store.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__serial_lpc32xx_tx(ptr noundef %port) unnamed_addr #2 align 64 {
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !91
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #8, !srcloc !67
  %tx = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 5
  %9 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %tx, align 4
  %11 = ptrtoint ptr %x_char to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %x_char, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %head = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp = icmp eq i32 %13, %15
  br i1 %cmp, label %if.end.exit_tx_crit_edge, label %lor.lhs.false

if.end.exit_tx_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_tx

lor.lhs.false:                                    ; preds = %if.end
  %tty2.i = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %tty2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tty2.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %lor.lhs.false.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i

lor.lhs.false.uart_tx_stopped.exit_crit_edge:     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %uart_tx_stopped.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false
  %stopped.i = getelementptr inbounds %struct.tty_struct, ptr %17, i32 0, i32 19, i32 1
  %18 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %stopped.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool3.not.i = icmp eq i8 %19, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i.exit_tx_crit_edge

land.lhs.true.i.exit_tx_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_tx

land.lhs.true.i.uart_tx_stopped.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uart_tx_stopped.exit

uart_tx_stopped.exit:                             ; preds = %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, %lor.lhs.false.uart_tx_stopped.exit_crit_edge
  %hw_stopped.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 35
  %20 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hw_stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool4.not.i.not = icmp eq i32 %21, 0
  br i1 %tobool4.not.i.not, label %while.cond.preheader, label %uart_tx_stopped.exit.exit_tx_crit_edge

uart_tx_stopped.exit.exit_tx_crit_edge:           ; preds = %uart_tx_stopped.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_tx

while.cond.preheader:                             ; preds = %uart_tx_stopped.exit
  %membase8 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %tx26 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 5
  br label %while.cond

while.cond:                                       ; preds = %do.body15.while.cond_crit_edge, %while.cond.preheader
  %22 = ptrtoint ptr %membase8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase8, align 4
  %add.ptr9 = getelementptr i8, ptr %23, i32 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #8, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  %25 = and i32 %24, 12582912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp13 = icmp eq i32 %25, 0
  br i1 %cmp13, label %do.body15, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.body15:                                        ; preds = %while.cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  tail call void @arm_heavy_mb() #8
  %26 = ptrtoint ptr %xmit1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %xmit1, align 4
  %28 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tail, align 4
  %arrayidx = getelementptr i8, ptr %27, i32 %29
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx, align 1
  %conv19 = zext i8 %31 to i32
  %32 = shl nuw i32 %conv19, 24
  %33 = ptrtoint ptr %membase8 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #8, !srcloc !67
  %35 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tail, align 4
  %add = add i32 %36, 1
  %and23 = and i32 %add, 4095
  store i32 %and23, ptr %tail, align 4
  %37 = ptrtoint ptr %tx26 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx26, align 4
  %inc27 = add i32 %38, 1
  store i32 %inc27, ptr %tx26, align 4
  %39 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %head, align 4
  %41 = load i32, ptr %tail, align 4
  %cmp30 = icmp eq i32 %40, %41
  br i1 %cmp30, label %do.body15.while.end_crit_edge, label %do.body15.while.cond_crit_edge

do.body15.while.cond_crit_edge:                   ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

do.body15.while.end_crit_edge:                    ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %do.body15.while.end_crit_edge, %while.cond.while.end_crit_edge
  %42 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %head, align 4
  %44 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tail, align 4
  %sub = sub i32 %43, %45
  %and36 = and i32 %sub, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %cmp37 = icmp eq i32 %and36, 0
  br i1 %cmp37, label %if.then39, label %while.end.exit_tx_crit_edge

while.end.exit_tx_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_tx

if.then39:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @uart_write_wakeup(ptr noundef %port) #8
  br label %exit_tx

exit_tx:                                          ; preds = %if.then39, %while.end.exit_tx_crit_edge, %uart_tx_stopped.exit.exit_tx_crit_edge, %land.lhs.true.i.exit_tx_crit_edge, %if.end.exit_tx_crit_edge
  %46 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %head, align 4
  %48 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp43 = icmp eq i32 %47, %49
  br i1 %cmp43, label %if.then45, label %exit_tx.cleanup_crit_edge

exit_tx.cleanup_crit_edge:                        ; preds = %exit_tx
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then45:                                        ; preds = %exit_tx
  call void @__sanitizer_cov_trace_pc() #10
  %membase48 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %50 = ptrtoint ptr %membase48 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %membase48, align 4
  %add.ptr49 = getelementptr i8, ptr %51, i32 12
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #8, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  %53 = and i32 %52, -536870913
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  tail call void @arm_heavy_mb() #8
  %54 = ptrtoint ptr %membase48 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %membase48, align 4
  %add.ptr58 = getelementptr i8, ptr %55, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %53) #8, !srcloc !67
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %exit_tx.cleanup_crit_edge, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_lpc32xx_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  tail call void @_raw_spin_lock(ptr noundef %dev_id) #8
  %membase = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 2
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !60
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 268435456) #8, !srcloc !67
  %brk = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 9
  %8 = ptrtoint ptr %brk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %brk, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %brk, align 4
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state, align 4
  %handle_break.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 17
  %12 = ptrtoint ptr %handle_break.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %handle_break.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %do.body.if.end.i_crit_edge, label %if.then.i

do.body.if.end.i_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %13(ptr noundef %dev_id) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.body.if.end.i_crit_edge
  %has_sysrq.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 48
  %14 = ptrtoint ptr %has_sysrq.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %has_sysrq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool3.not.i = icmp eq i8 %15, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end15.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %cons.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 32
  %16 = ptrtoint ptr %cons.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cons.i, align 4
  %tobool4.not.i = icmp eq ptr %17, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end15.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.if.end15.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %index.i = getelementptr inbounds %struct.console, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %index.i, align 2
  %conv7.i = sext i16 %19 to i32
  %line.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 41
  %20 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %line.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv7.i)
  %cmp.i = icmp eq i32 %21, %conv7.i
  br i1 %cmp.i, label %if.then9.i, label %land.lhs.true5.i.if.end15.i_crit_edge

land.lhs.true5.i.if.end15.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then9.i:                                       ; preds = %land.lhs.true5.i
  %sysrq.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 46
  %22 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sysrq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool10.not.i = icmp eq i32 %23, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end13.i

if.then11.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %24, 500
  %25 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add.i, ptr %sysrq.i, align 4
  br label %if.end

if.end13.i:                                       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %sysrq.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end13.i, %land.lhs.true5.i.if.end15.i_crit_edge, %land.lhs.true.i.if.end15.i_crit_edge, %if.end.i.if.end15.i_crit_edge
  %flags.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 33
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool16.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool16.not.i, label %if.end15.i.if.end_crit_edge, label %if.then17.i

if.end15.i.if.end_crit_edge:                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %tty.i = getelementptr inbounds %struct.tty_port, ptr %11, i32 0, i32 1
  %29 = ptrtoint ptr %tty.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tty.i, align 4
  tail call void @do_SAK(ptr noundef %30) #8
  br label %if.end

if.end:                                           ; preds = %if.then17.i, %if.end15.i.if.end_crit_edge, %if.then11.i, %entry.if.end_crit_edge
  %and6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end14_crit_edge, label %do.body9

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

do.body9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  %31 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %membase, align 4
  %add.ptr13 = getelementptr i8, ptr %32, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 134217728) #8, !srcloc !67
  br label %if.end14

if.end14:                                         ; preds = %do.body9, %if.end.if.end14_crit_edge
  %and15 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end26_crit_edge, label %do.body18

if.end14.if.end26_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

do.body18:                                        ; preds = %if.end14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !100
  tail call void @arm_heavy_mb() #8
  %33 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase, align 4
  %add.ptr22 = getelementptr i8, ptr %34, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 536870912) #8, !srcloc !67
  %overrun = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 7
  %35 = ptrtoint ptr %overrun to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %overrun, align 4
  %inc24 = add i32 %36, 1
  store i32 %inc24, ptr %overrun, align 4
  %tail.i = getelementptr inbounds %struct.tty_bufhead, ptr %1, i32 0, i32 8
  %37 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tail.i, align 4
  %flags.i61 = getelementptr inbounds %struct.tty_buffer, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %flags.i61 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags.i61, align 4
  %and.i62 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i62)
  %tobool.not.i63 = icmp eq i32 %and.i62, 0
  br i1 %tobool.not.i63, label %land.lhs.true.i64, label %do.body18.if.end12.i_crit_edge

do.body18.if.end12.i_crit_edge:                   ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

land.lhs.true.i64:                                ; preds = %do.body18
  %used.i = getelementptr inbounds %struct.tty_buffer, ptr %38, i32 0, i32 1
  %41 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %used.i, align 4
  %size.i = getelementptr inbounds %struct.tty_buffer, ptr %38, i32 0, i32 2
  %43 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp3.i = icmp slt i32 %42, %44
  br i1 %cmp3.i, label %if.end.i66, label %land.lhs.true.i64.if.end12.i_crit_edge

land.lhs.true.i64.if.end12.i_crit_edge:           ; preds = %land.lhs.true.i64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.end.i66:                                       ; preds = %land.lhs.true.i64
  call void @__sanitizer_cov_trace_pc() #10
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %38, i32 0, i32 6
  %add.ptr.i.i.i = getelementptr i8, ptr %data.i.i.i, i32 %42
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %44
  %45 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 4, ptr %add.ptr.i.i, align 1
  %46 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %used.i, align 4
  %inc.i = add i32 %47, 1
  store i32 %inc.i, ptr %used.i, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %data.i.i.i, i32 %47
  %48 = ptrtoint ptr %add.ptr.i1.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %add.ptr.i1.i, align 1
  br label %tty_insert_flip_char.exit

if.end12.i:                                       ; preds = %land.lhs.true.i64.if.end12.i_crit_edge, %do.body18.if.end12.i_crit_edge
  %call13.i = tail call i32 @__tty_insert_flip_char(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 4) #8
  br label %tty_insert_flip_char.exit

tty_insert_flip_char.exit:                        ; preds = %if.end12.i, %if.end.i66
  tail call void @tty_flip_buffer_push(ptr noundef %1) #8
  br label %if.end26

if.end26:                                         ; preds = %tty_insert_flip_char.exit, %if.end14.if.end26_crit_edge
  %and27 = and i32 %5, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.if.end30_crit_edge, label %if.then29

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then29:                                        ; preds = %if.end26
  %49 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %state, align 4
  %51 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %membase, align 4
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #8, !srcloc !60
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  %and62.i = and i32 %54, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.i)
  %tobool.not63.i = icmp eq i32 %and62.i, 0
  br i1 %tobool.not63.i, label %while.body.lr.ph.i, label %if.then29.__serial_lpc32xx_rx.exit_crit_edge

if.then29.__serial_lpc32xx_rx.exit_crit_edge:     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %__serial_lpc32xx_rx.exit

while.body.lr.ph.i:                               ; preds = %if.then29
  %rx.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 4
  %frame.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 6
  %tail.i.i = getelementptr inbounds %struct.tty_bufhead, ptr %50, i32 0, i32 8
  br label %while.body.i

while.body.i:                                     ; preds = %tty_insert_flip_char.exit49.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %tmp.064.i = phi i32 [ %54, %while.body.lr.ph.i ], [ %100, %tty_insert_flip_char.exit49.i.while.body.i_crit_edge ]
  %55 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rx.i, align 4
  %inc.i67 = add i32 %56, 1
  store i32 %inc.i67, ptr %rx.i, align 4
  %and4.i = and i32 %tmp.064.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i37.i, label %do.body.i

do.body.i:                                        ; preds = %while.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !102
  tail call void @arm_heavy_mb() #8
  %57 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %membase, align 4
  %add.ptr7.i = getelementptr i8, ptr %58, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 134217728) #8, !srcloc !67
  %59 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %frame.i, align 4
  %inc9.i = add i32 %60, 1
  store i32 %inc9.i, ptr %frame.i, align 4
  %61 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tail.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.tty_buffer, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %do.body.i.if.end12.i.i_crit_edge

do.body.i.if.end12.i.i_crit_edge:                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i.i

land.lhs.true.i.i:                                ; preds = %do.body.i
  %used.i.i = getelementptr inbounds %struct.tty_buffer, ptr %62, i32 0, i32 1
  %65 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %used.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.tty_buffer, ptr %62, i32 0, i32 2
  %67 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %68)
  %cmp3.i.i = icmp slt i32 %66, %68
  br i1 %cmp3.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.end12.i.i_crit_edge

land.lhs.true.i.i.if.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %data.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %62, i32 0, i32 6
  %add.ptr.i.i.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %66
  %add.ptr.i.i.i68 = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %68
  %69 = ptrtoint ptr %add.ptr.i.i.i68 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 2, ptr %add.ptr.i.i.i68, align 1
  %70 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %used.i.i, align 4
  %inc.i.i = add i32 %71, 1
  store i32 %inc.i.i, ptr %used.i.i, align 4
  %add.ptr.i1.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %71
  %72 = ptrtoint ptr %add.ptr.i1.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %add.ptr.i1.i.i, align 1
  br label %if.end.i69

if.end12.i.i:                                     ; preds = %land.lhs.true.i.i.if.end12.i.i_crit_edge, %do.body.i.if.end12.i.i_crit_edge
  %call13.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %50, i8 noundef zeroext 0, i8 noundef zeroext 2) #8
  br label %if.end.i69

if.end.i69:                                       ; preds = %if.end12.i.i, %if.end.i.i
  %conv.i = trunc i32 %tmp.064.i to i8
  %73 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tail.i.i, align 4
  %flags.i31.i = getelementptr inbounds %struct.tty_buffer, ptr %74, i32 0, i32 5
  %75 = ptrtoint ptr %flags.i31.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags.i31.i, align 4
  %and.i32.i = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %tobool.not.i33.i, label %land.lhs.true.i37.thread.i, label %if.end.i69.if.end12.i48.i_crit_edge

if.end.i69.if.end12.i48.i_crit_edge:              ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i48.i

land.lhs.true.i37.i:                              ; preds = %while.body.i
  %conv51.i = trunc i32 %tmp.064.i to i8
  %77 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %tail.i.i, align 4
  %used.i34.i = getelementptr inbounds %struct.tty_buffer, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %used.i34.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %used.i34.i, align 4
  %size.i35.i = getelementptr inbounds %struct.tty_buffer, ptr %78, i32 0, i32 2
  %81 = ptrtoint ptr %size.i35.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %size.i35.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %82)
  %cmp3.i36.i = icmp slt i32 %80, %82
  br i1 %cmp3.i36.i, label %if.then.i38.i, label %land.lhs.true.i37.i.if.end12.i48.i_crit_edge

land.lhs.true.i37.i.if.end12.i48.i_crit_edge:     ; preds = %land.lhs.true.i37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i48.i

land.lhs.true.i37.thread.i:                       ; preds = %if.end.i69
  %used.i3468.i = getelementptr inbounds %struct.tty_buffer, ptr %74, i32 0, i32 1
  %83 = ptrtoint ptr %used.i3468.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %used.i3468.i, align 4
  %size.i3569.i = getelementptr inbounds %struct.tty_buffer, ptr %74, i32 0, i32 2
  %85 = ptrtoint ptr %size.i3569.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %size.i3569.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %86)
  %cmp3.i3670.i = icmp slt i32 %84, %86
  br i1 %cmp3.i3670.i, label %land.lhs.true.i37.thread.i.if.then8.i42.i_crit_edge, label %land.lhs.true.i37.thread.i.if.end12.i48.i_crit_edge

land.lhs.true.i37.thread.i.if.end12.i48.i_crit_edge: ; preds = %land.lhs.true.i37.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i48.i

land.lhs.true.i37.thread.i.if.then8.i42.i_crit_edge: ; preds = %land.lhs.true.i37.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8.i42.i

if.then.i38.i:                                    ; preds = %land.lhs.true.i37.i
  %flags.i3153.i = getelementptr inbounds %struct.tty_buffer, ptr %78, i32 0, i32 5
  %87 = ptrtoint ptr %flags.i3153.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %flags.i3153.i, align 4
  %and.i3254.i = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3254.i)
  %tobool.not.i3355.i = icmp eq i32 %and.i3254.i, 0
  br i1 %tobool.not.i3355.i, label %if.then.i38.i.if.then8.i42.i_crit_edge, label %if.then.i38.i.if.end.i46.i_crit_edge

if.then.i38.i.if.end.i46.i_crit_edge:             ; preds = %if.then.i38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i46.i

if.then.i38.i.if.then8.i42.i_crit_edge:           ; preds = %if.then.i38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8.i42.i

if.then8.i42.i:                                   ; preds = %if.then.i38.i.if.then8.i42.i_crit_edge, %land.lhs.true.i37.thread.i.if.then8.i42.i_crit_edge
  %89 = phi ptr [ %78, %if.then.i38.i.if.then8.i42.i_crit_edge ], [ %74, %land.lhs.true.i37.thread.i.if.then8.i42.i_crit_edge ]
  %conv607283.i = phi i8 [ %conv51.i, %if.then.i38.i.if.then8.i42.i_crit_edge ], [ %conv.i, %land.lhs.true.i37.thread.i.if.then8.i42.i_crit_edge ]
  %flag.0587381.i = phi i8 [ 0, %if.then.i38.i.if.then8.i42.i_crit_edge ], [ 2, %land.lhs.true.i37.thread.i.if.then8.i42.i_crit_edge ]
  %used.i347480.i = phi ptr [ %used.i34.i, %if.then.i38.i.if.then8.i42.i_crit_edge ], [ %used.i3468.i, %land.lhs.true.i37.thread.i.if.then8.i42.i_crit_edge ]
  %90 = phi i32 [ %80, %if.then.i38.i.if.then8.i42.i_crit_edge ], [ %84, %land.lhs.true.i37.thread.i.if.then8.i42.i_crit_edge ]
  %91 = phi i32 [ %82, %if.then.i38.i.if.then8.i42.i_crit_edge ], [ %86, %land.lhs.true.i37.thread.i.if.then8.i42.i_crit_edge ]
  %data.i.i.i39.i = getelementptr inbounds %struct.tty_buffer, ptr %89, i32 0, i32 6
  %add.ptr.i.i.i40.i = getelementptr i8, ptr %data.i.i.i39.i, i32 %90
  %add.ptr.i.i41.i = getelementptr i8, ptr %add.ptr.i.i.i40.i, i32 %91
  %92 = ptrtoint ptr %add.ptr.i.i41.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %flag.0587381.i, ptr %add.ptr.i.i41.i, align 1
  br label %if.end.i46.i

if.end.i46.i:                                     ; preds = %if.then8.i42.i, %if.then.i38.i.if.end.i46.i_crit_edge
  %93 = phi ptr [ %89, %if.then8.i42.i ], [ %78, %if.then.i38.i.if.end.i46.i_crit_edge ]
  %conv607282.i = phi i8 [ %conv607283.i, %if.then8.i42.i ], [ %conv51.i, %if.then.i38.i.if.end.i46.i_crit_edge ]
  %used.i347479.i = phi ptr [ %used.i347480.i, %if.then8.i42.i ], [ %used.i34.i, %if.then.i38.i.if.end.i46.i_crit_edge ]
  %94 = ptrtoint ptr %used.i347479.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %used.i347479.i, align 4
  %inc.i43.i = add i32 %95, 1
  store i32 %inc.i43.i, ptr %used.i347479.i, align 4
  %data.i.i44.i = getelementptr inbounds %struct.tty_buffer, ptr %93, i32 0, i32 6
  %add.ptr.i1.i45.i = getelementptr i8, ptr %data.i.i44.i, i32 %95
  %96 = ptrtoint ptr %add.ptr.i1.i45.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv607282.i, ptr %add.ptr.i1.i45.i, align 1
  br label %tty_insert_flip_char.exit49.i

if.end12.i48.i:                                   ; preds = %land.lhs.true.i37.thread.i.if.end12.i48.i_crit_edge, %land.lhs.true.i37.i.if.end12.i48.i_crit_edge, %if.end.i69.if.end12.i48.i_crit_edge
  %conv59.i = phi i8 [ %conv51.i, %land.lhs.true.i37.i.if.end12.i48.i_crit_edge ], [ %conv.i, %if.end.i69.if.end12.i48.i_crit_edge ], [ %conv.i, %land.lhs.true.i37.thread.i.if.end12.i48.i_crit_edge ]
  %flag.057.i = phi i8 [ 0, %land.lhs.true.i37.i.if.end12.i48.i_crit_edge ], [ 2, %if.end.i69.if.end12.i48.i_crit_edge ], [ 2, %land.lhs.true.i37.thread.i.if.end12.i48.i_crit_edge ]
  %call13.i47.i = tail call i32 @__tty_insert_flip_char(ptr noundef %50, i8 noundef zeroext %conv59.i, i8 noundef zeroext %flag.057.i) #8
  br label %tty_insert_flip_char.exit49.i

tty_insert_flip_char.exit49.i:                    ; preds = %if.end12.i48.i, %if.end.i46.i
  %97 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %membase, align 4
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #8, !srcloc !60
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !103
  %and.i70 = and i32 %100, 256
  %tobool.not.i71 = icmp eq i32 %and.i70, 0
  br i1 %tobool.not.i71, label %tty_insert_flip_char.exit49.i.while.body.i_crit_edge, label %tty_insert_flip_char.exit49.i.__serial_lpc32xx_rx.exit_crit_edge

tty_insert_flip_char.exit49.i.__serial_lpc32xx_rx.exit_crit_edge: ; preds = %tty_insert_flip_char.exit49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__serial_lpc32xx_rx.exit

tty_insert_flip_char.exit49.i.while.body.i_crit_edge: ; preds = %tty_insert_flip_char.exit49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

__serial_lpc32xx_rx.exit:                         ; preds = %tty_insert_flip_char.exit49.i.__serial_lpc32xx_rx.exit_crit_edge, %if.then29.__serial_lpc32xx_rx.exit_crit_edge
  tail call void @tty_flip_buffer_push(ptr noundef %50) #8
  br label %if.end30

if.end30:                                         ; preds = %__serial_lpc32xx_rx.exit, %if.end26.if.end30_crit_edge
  %and31 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end41_crit_edge, label %land.lhs.true

if.end30.if.end41_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

land.lhs.true:                                    ; preds = %if.end30
  %101 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %state, align 4
  %tty2.i = getelementptr inbounds %struct.tty_port, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %tty2.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %tty2.i, align 4
  %tobool.not.i73 = icmp eq ptr %104, null
  br i1 %tobool.not.i73, label %land.lhs.true.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i75

land.lhs.true.uart_tx_stopped.exit_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %uart_tx_stopped.exit

land.lhs.true.i75:                                ; preds = %land.lhs.true
  %stopped.i = getelementptr inbounds %struct.tty_struct, ptr %104, i32 0, i32 19, i32 1
  %105 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %stopped.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool3.not.i74 = icmp eq i8 %106, 0
  br i1 %tobool3.not.i74, label %land.lhs.true.i75.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i75.if.end41_crit_edge

land.lhs.true.i75.if.end41_crit_edge:             ; preds = %land.lhs.true.i75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

land.lhs.true.i75.uart_tx_stopped.exit_crit_edge: ; preds = %land.lhs.true.i75
  call void @__sanitizer_cov_trace_pc() #10
  br label %uart_tx_stopped.exit

uart_tx_stopped.exit:                             ; preds = %land.lhs.true.i75.uart_tx_stopped.exit_crit_edge, %land.lhs.true.uart_tx_stopped.exit_crit_edge
  %hw_stopped.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 35
  %107 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %hw_stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool4.not.i76.not = icmp eq i32 %108, 0
  br i1 %tobool4.not.i76.not, label %do.body36, label %uart_tx_stopped.exit.if.end41_crit_edge

uart_tx_stopped.exit.if.end41_crit_edge:          ; preds = %uart_tx_stopped.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

do.body36:                                        ; preds = %uart_tx_stopped.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %109 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %membase, align 4
  %add.ptr40 = getelementptr i8, ptr %110, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 16777216) #8, !srcloc !67
  tail call fastcc void @__serial_lpc32xx_tx(ptr noundef %dev_id)
  br label %if.end41

if.end41:                                         ; preds = %do.body36, %uart_tx_stopped.exit.if.end41_crit_edge, %land.lhs.true.i75.if.end41_crit_edge, %if.end30.if.end41_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %dev_id) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_SAK(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_suspend_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_resume_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !33, !35, !36, !37, !39, !40, !42, !44, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__initcall__kmod_lpc32xx_hs__285_195_lpc32xx_hsuart_console_initcon, !1, !"__initcall__kmod_lpc32xx_hs__285_195_lpc32xx_hsuart_console_initcon", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/lpc32xx_hs.c", i32 195, i32 1}
!2 = !{ptr @__initcall__kmod_lpc32xx_hs__286_756_lpc32xx_hsuart_init6, !3, !"__initcall__kmod_lpc32xx_hs__286_756_lpc32xx_hsuart_init6", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/lpc32xx_hs.c", i32 756, i32 1}
!4 = !{ptr @__exitcall_lpc32xx_hsuart_exit, !5, !"__exitcall_lpc32xx_hsuart_exit", i1 false, i1 false}
!5 = !{!"../drivers/tty/serial/lpc32xx_hs.c", i32 757, i32 1}
!6 = !{ptr @__UNIQUE_ID_author287, !7, !"__UNIQUE_ID_author287", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/lpc32xx_hs.c", i32 759, i32 1}
!8 = !{ptr @__UNIQUE_ID_author288, !9, !"__UNIQUE_ID_author288", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/lpc32xx_hs.c", i32 760, i32 1}
!10 = !{ptr @__UNIQUE_ID_description289, !11, !"__UNIQUE_ID_description289", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/lpc32xx_hs.c", i32 761, i32 1}
!12 = !{ptr @__UNIQUE_ID_file290, !13, !"__UNIQUE_ID_file290", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/lpc32xx_hs.c", i32 762, i32 1}
!14 = !{ptr @__UNIQUE_ID_license291, !13, !"__UNIQUE_ID_license291", i1 false, i1 false}
!15 = !{ptr @lpc32xx_hsuart_console, !16, !"lpc32xx_hsuart_console", i1 false, i1 false}
!16 = !{!"../drivers/tty/serial/lpc32xx_hs.c", i32 180, i32 23}
!17 = !{ptr @lpc32xx_hs_ports, !18, !"lpc32xx_hs_ports", i1 false, i1 false}
!18 = !{!"../drivers/tty/serial/lpc32xx_hs.c", i32 94, i32 35}
!19 = !{ptr @lpc32xx_hsuart_reg, !20, !"lpc32xx_hsuart_reg", i1 false, i1 false}
!20 = !{!"../drivers/tty/serial/lpc32xx_hs.c", i32 179, i32 27}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/tty/serial/lpc32xx_hs.c", i32 730, i32 11}
!23 = !{ptr @serial_hs_lpc32xx_driver, !24, !"serial_hs_lpc32xx_driver", i1 false, i1 false}
!24 = !{!"../drivers/tty/serial/lpc32xx_hs.c", i32 724, i32 31}
!25 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/tty/serial/lpc32xx_hs.c", i32 638, i32 3}
!27 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @serial_hs_lpc32xx_probe._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @serial_hs_lpc32xx_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/tty/serial/lpc32xx_hs.c", i32 648, i32 3}
!35 = !{ptr @serial_hs_lpc32xx_probe._entry.6, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @serial_hs_lpc32xx_probe._entry_ptr.8, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @serial_hs_lpc32xx_probe.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/tty/serial/lpc32xx_hs.c", i32 668, i32 2}
!39 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @uarts_registered, !41, !"uarts_registered", i1 false, i1 false}
!41 = !{!"../drivers/tty/serial/lpc32xx_hs.c", i32 209, i32 12}
!42 = !{ptr @serial_lpc32xx_pops, !43, !"serial_lpc32xx_pops", i1 false, i1 false}
!43 = !{!"../drivers/tty/serial/lpc32xx_hs.c", i32 610, i32 30}
!44 = !{ptr @serial_hs_lpc32xx_dt_ids, !45, !"serial_hs_lpc32xx_dt_ids", i1 false, i1 false}
!45 = !{!"../drivers/tty/serial/lpc32xx_hs.c", i32 717, i32 34}
!46 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/tty/serial/lpc32xx_hs.c", i32 205, i32 14}
!48 = !{ptr @lpc32xx_hs_reg, !49, !"lpc32xx_hs_reg", i1 false, i1 false}
!49 = !{!"../drivers/tty/serial/lpc32xx_hs.c", i32 202, i32 27}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i64 761150, i64 761211}
!60 = !{i64 5864579}
!61 = !{i64 2155770739}
!62 = !{i64 763882}
!63 = !{!"branch_weights", i32 1, i32 2000}
!64 = !{i64 764167}
!65 = !{i64 2155772101}
!66 = !{i64 2155772901}
!67 = !{i64 5864161}
!68 = !{i64 2155797462}
!69 = !{i64 2155798044}
!70 = !{i64 2155798303}
!71 = !{i64 2155799036}
!72 = !{i64 2155799295}
!73 = !{i64 2155800028}
!74 = !{i64 2155800296}
!75 = !{i64 2155800788}
!76 = !{i64 2155801968}
!77 = !{i64 2155802236}
!78 = !{i64 2155788800}
!79 = !{i64 2155789353}
!80 = !{i64 2155803102}
!81 = !{i64 2155803663}
!82 = !{i64 2155804148}
!83 = !{i64 2155804642}
!84 = !{i64 2155805553}
!85 = !{i64 2155806722}
!86 = !{i64 2155807016}
!87 = !{i64 2155807451}
!88 = !{i64 2155808427}
!89 = !{i64 2155808988}
!90 = !{i64 2155809523}
!91 = !{i64 2155791202}
!92 = !{i8 0, i8 2}
!93 = !{i64 2155792285}
!94 = !{i64 2155792569}
!95 = !{i64 2155793746}
!96 = !{i64 2155794005}
!97 = !{i64 2155794738}
!98 = !{i64 2155795011}
!99 = !{i64 2155795483}
!100 = !{i64 2155795955}
!101 = !{i64 2155789902}
!102 = !{i64 2155790186}
!103 = !{i64 2155790938}
!104 = !{i64 2155796447}
