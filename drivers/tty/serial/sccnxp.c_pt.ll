; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/sccnxp.c_pt.bc'
source_filename = "../drivers/tty/serial/sccnxp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.anon.87 = type { i8, i8, i8, i32 }
%struct.atomic_t = type { i32 }
%struct.sccnxp_chip = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.sccnxp_port = type { %struct.uart_driver, [2 x %struct.uart_port], [2 x i8], i32, i8, ptr, %struct.console, %struct.spinlock, i8, %struct.timer_list, %struct.sccnxp_pdata, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.sccnxp_pdata = type { i8, [2 x i32], i32 }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.40, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.40 = type { ptr }
%struct.llist_head = type { ptr }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.41, %struct.anon.42, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.41 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.42 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }

@__initcall__kmod_sccnxp__289_1064_sccnxp_uart_driver_init6 = internal global ptr @sccnxp_uart_driver_init, section ".initcall6.init", align 4
@sccnxp_uart_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sccnxp_probe, ptr @sccnxp_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sccnxp_id_table, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sccnxp_uart_driver_exit = internal global ptr @sccnxp_uart_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file290 = internal constant [38 x i8] c"sccnxp.file=drivers/tty/serial/sccnxp\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [22 x i8] c"sccnxp.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [50 x i8] c"sccnxp.author=Alexander Shiyan <shc_work@mail.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [40 x i8] c"sccnxp.description=SCCNXP serial driver\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"uart-sccnxp\00", [20 x i8] zeroinitializer }, align 32
@sccnxp_id_table = internal constant { [9 x %struct.platform_device_id], [40 x i8] } { [9 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"sc2681\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sc2681 to i32) }, %struct.platform_device_id { [20 x i8] c"sc2691\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sc2691 to i32) }, %struct.platform_device_id { [20 x i8] c"sc2692\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sc2692 to i32) }, %struct.platform_device_id { [20 x i8] c"sc2891\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sc2891 to i32) }, %struct.platform_device_id { [20 x i8] c"sc2892\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sc2892 to i32) }, %struct.platform_device_id { [20 x i8] c"sc28202\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sc28202 to i32) }, %struct.platform_device_id { [20 x i8] c"sc68681\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sc68681 to i32) }, %struct.platform_device_id { [20 x i8] c"sc68692\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sc68692 to i32) }, %struct.platform_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@sccnxp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 896, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error allocating port structure\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sccnxp_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/tty/serial/sccnxp.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sccnxp_probe._entry_ptr = internal global ptr @sccnxp_probe._entry, section ".printk_index", align 4
@sccnxp_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&s->lock\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@sccnxp_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 910, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to enable regulator: %i\0A\00", [32 x i8] zeroinitializer }, align 32
@sccnxp_probe._entry_ptr.10 = internal global ptr @sccnxp_probe._entry.8, section ".printk_index", align 4
@sccnxp_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 937, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Using default clock frequency\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@sccnxp_probe._entry_ptr.14 = internal global ptr @sccnxp_probe._entry.11, section ".printk_index", align 4
@sccnxp_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 943, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Frequency out of bounds\0A\00", [39 x i8] zeroinitializer }, align 32
@sccnxp_probe._entry_ptr.17 = internal global ptr @sccnxp_probe._entry.15, section ".printk_index", align 4
@sccnxp_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 953, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Using poll mode, resolution %u usecs\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sccnxp_probe._entry_ptr.21 = internal global ptr @sccnxp_probe._entry.18, section ".printk_index", align 4
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ttySC\00", [26 x i8] zeroinitializer }, align 32
@sccnxp_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 982, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Registering UART driver failed\0A\00", [32 x i8] zeroinitializer }, align 32
@sccnxp_probe._entry_ptr.25 = internal global ptr @sccnxp_probe._entry.23, section ".printk_index", align 4
@sccnxp_ops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @sccnxp_tx_empty, ptr @sccnxp_set_mctrl, ptr @sccnxp_get_mctrl, ptr @sccnxp_stop_tx, ptr @sccnxp_start_tx, ptr null, ptr null, ptr null, ptr @sccnxp_stop_rx, ptr null, ptr @sccnxp_break_ctl, ptr @sccnxp_startup, ptr @sccnxp_shutdown, ptr null, ptr @sccnxp_set_termios, ptr null, ptr null, ptr @sccnxp_type, ptr @sccnxp_release_port, ptr @sccnxp_request_port, ptr @sccnxp_config_port, ptr @sccnxp_verify_port, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@sccnxp_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 1019, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to reguest IRQ %i\0A\00", [38 x i8] zeroinitializer }, align 32
@sccnxp_probe._entry_ptr.28 = internal global ptr @sccnxp_probe._entry.26, section ".printk_index", align 4
@sccnxp_probe.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(&s->timer)\00", [20 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@baud_std = internal constant { [29 x %struct.anon.87], [56 x i8] } { [29 x %struct.anon.87] [%struct.anon.87 { i8 0, i8 0, i8 0, i32 50 }, %struct.anon.87 { i8 0, i8 -128, i8 0, i32 75 }, %struct.anon.87 { i8 1, i8 0, i8 0, i32 110 }, %struct.anon.87 { i8 2, i8 0, i8 0, i32 134 }, %struct.anon.87 { i8 3, i8 -128, i8 0, i32 150 }, %struct.anon.87 { i8 3, i8 0, i8 0, i32 200 }, %struct.anon.87 { i8 4, i8 0, i8 0, i32 300 }, %struct.anon.87 { i8 0, i8 -128, i8 1, i32 450 }, %struct.anon.87 { i8 1, i8 0, i8 5, i32 880 }, %struct.anon.87 { i8 3, i8 -128, i8 1, i32 900 }, %struct.anon.87 { i8 5, i8 0, i8 0, i32 600 }, %struct.anon.87 { i8 7, i8 0, i8 0, i32 1050 }, %struct.anon.87 { i8 2, i8 0, i8 5, i32 1076 }, %struct.anon.87 { i8 6, i8 0, i8 0, i32 1200 }, %struct.anon.87 { i8 10, i8 -128, i8 0, i32 1800 }, %struct.anon.87 { i8 7, i8 -128, i8 0, i32 2000 }, %struct.anon.87 { i8 8, i8 0, i8 0, i32 2400 }, %struct.anon.87 { i8 5, i8 -128, i8 1, i32 3600 }, %struct.anon.87 { i8 9, i8 0, i8 0, i32 4800 }, %struct.anon.87 { i8 10, i8 0, i8 0, i32 7200 }, %struct.anon.87 { i8 11, i8 0, i8 0, i32 9600 }, %struct.anon.87 { i8 8, i8 0, i8 1, i32 14400 }, %struct.anon.87 { i8 12, i8 -128, i8 0, i32 19200 }, %struct.anon.87 { i8 9, i8 0, i8 1, i32 28800 }, %struct.anon.87 { i8 12, i8 0, i8 0, i32 38400 }, %struct.anon.87 { i8 11, i8 0, i8 1, i32 57600 }, %struct.anon.87 { i8 12, i8 -128, i8 1, i32 115200 }, %struct.anon.87 { i8 12, i8 0, i8 1, i32 230400 }, %struct.anon.87 zeroinitializer], [56 x i8] zeroinitializer }, align 32
@sccnxp_set_baud.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.32, ptr @.str.3, ptr @.str.33, i8 0, i8 87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sccnxp\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sccnxp_set_baud\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Baudrate desired: %i, calculated: %i\0A\00", [58 x i8] zeroinitializer }, align 32
@sc2681 = internal constant { %struct.sccnxp_chip, [32 x i8] } { %struct.sccnxp_chip { ptr @.str.34, i32 2, i32 1000000, i32 3686400, i32 4000000, i32 1, i32 3, i32 200 }, [32 x i8] zeroinitializer }, align 32
@sc2691 = internal constant { %struct.sccnxp_chip, [32 x i8] } { %struct.sccnxp_chip { ptr @.str.35, i32 1, i32 1000000, i32 3686400, i32 4000000, i32 0, i32 3, i32 150 }, [32 x i8] zeroinitializer }, align 32
@sc2692 = internal constant { %struct.sccnxp_chip, [32 x i8] } { %struct.sccnxp_chip { ptr @.str.36, i32 2, i32 1000000, i32 3686400, i32 4000000, i32 1, i32 3, i32 30 }, [32 x i8] zeroinitializer }, align 32
@sc2891 = internal constant { %struct.sccnxp_chip, [32 x i8] } { %struct.sccnxp_chip { ptr @.str.37, i32 1, i32 100000, i32 3686400, i32 8000000, i32 3, i32 16, i32 27 }, [32 x i8] zeroinitializer }, align 32
@sc2892 = internal constant { %struct.sccnxp_chip, [32 x i8] } { %struct.sccnxp_chip { ptr @.str.38, i32 2, i32 100000, i32 3686400, i32 8000000, i32 3, i32 16, i32 17 }, [32 x i8] zeroinitializer }, align 32
@sc28202 = internal constant { %struct.sccnxp_chip, [32 x i8] } { %struct.sccnxp_chip { ptr @.str.39, i32 2, i32 1000000, i32 14745600, i32 50000000, i32 3, i32 256, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sc68681 = internal constant { %struct.sccnxp_chip, [32 x i8] } { %struct.sccnxp_chip { ptr @.str.40, i32 2, i32 1000000, i32 3686400, i32 4000000, i32 1, i32 3, i32 200 }, [32 x i8] zeroinitializer }, align 32
@sc68692 = internal constant { %struct.sccnxp_chip, [32 x i8] } { %struct.sccnxp_chip { ptr @.str.41, i32 2, i32 1000000, i32 3686400, i32 4000000, i32 1, i32 3, i32 200 }, [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SC2681\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SC2691\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SC2692\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SC2891\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SC2892\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SC28202\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SC68681\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SC68692\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 16, i64 32]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 82]
@___asan_gen_.43 = private unnamed_addr constant [19 x i8] c"sccnxp_uart_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1056, i32 31 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1058, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [16 x i8] c"sccnxp_id_table\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 868, i32 40 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 896, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 901, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 905, i32 48 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 909, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 937, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 943, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 952, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 966, i32 21 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 982, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [11 x i8] c"sccnxp_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 812, i32 30 }
@___asan_gen_.121 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1019, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1021, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [9 x i8] c"baud_std\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 271, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 348, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [7 x i8] c"sc2681\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 135, i32 33 }
@___asan_gen_.148 = private unnamed_addr constant [7 x i8] c"sc2691\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 146, i32 33 }
@___asan_gen_.151 = private unnamed_addr constant [7 x i8] c"sc2692\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 157, i32 33 }
@___asan_gen_.154 = private unnamed_addr constant [7 x i8] c"sc2891\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 168, i32 33 }
@___asan_gen_.157 = private unnamed_addr constant [7 x i8] c"sc2892\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 179, i32 33 }
@___asan_gen_.160 = private unnamed_addr constant [8 x i8] c"sc28202\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 190, i32 33 }
@___asan_gen_.163 = private unnamed_addr constant [8 x i8] c"sc68681\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 201, i32 33 }
@___asan_gen_.166 = private unnamed_addr constant [8 x i8] c"sc68692\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 212, i32 33 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 136, i32 11 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 147, i32 11 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 158, i32 11 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 169, i32 11 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 180, i32 11 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 191, i32 11 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 202, i32 11 }
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.191 = private constant [31 x i8] c"../drivers/tty/serial/sccnxp.c\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 213, i32 11 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__exitcall_sccnxp_uart_driver_exit, ptr @__initcall__kmod_sccnxp__289_1064_sccnxp_uart_driver_init6, ptr @sccnxp_probe._entry, ptr @sccnxp_probe._entry.11, ptr @sccnxp_probe._entry.15, ptr @sccnxp_probe._entry.18, ptr @sccnxp_probe._entry.23, ptr @sccnxp_probe._entry.26, ptr @sccnxp_probe._entry.8, ptr @sccnxp_probe._entry_ptr, ptr @sccnxp_probe._entry_ptr.10, ptr @sccnxp_probe._entry_ptr.14, ptr @sccnxp_probe._entry_ptr.17, ptr @sccnxp_probe._entry_ptr.21, ptr @sccnxp_probe._entry_ptr.25, ptr @sccnxp_probe._entry_ptr.28, ptr @sccnxp_uart_driver_exit, ptr @sccnxp_uart_driver, ptr @.str, ptr @sccnxp_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @sccnxp_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @sccnxp_ops, ptr @.str.27, ptr @sccnxp_probe.__key.29, ptr @.str.30, ptr @baud_std, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @sc2681, ptr @sc2691, ptr @sc2692, ptr @sc2891, ptr @sc2892, ptr @sc28202, ptr @sc68681, ptr @sc68692, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sccnxp_uart_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sccnxp_id_table to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sccnxp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sccnxp_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sccnxp_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sccnxp_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sccnxp_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sccnxp_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sccnxp_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sccnxp_ops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sccnxp_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sccnxp_probe.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @baud_std to i32), i32 232, i32 288, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc2681 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc2691 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc2692 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc2891 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc2892 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc28202 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc68681 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc68692 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sccnxp_uart_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sccnxp_uart_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sccnxp_uart_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @sccnxp_uart_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sccnxp_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #11
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call3 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call) #11
  %cmp.i338 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i338, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i339 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 956, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i339, null
  br i1 %tobool.not, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i339, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.sccnxp_port, ptr %call.i339, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @sccnxp_probe.__key, i16 noundef signext 3) #11
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %4 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %id_entry, align 4
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_data, align 4
  %8 = inttoptr i32 %7 to ptr
  %chip = getelementptr inbounds %struct.sccnxp_port, ptr %call.i339, i32 0, i32 5
  %9 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %chip, align 4
  %call16 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #11
  %regulator = getelementptr inbounds %struct.sccnxp_port, ptr %call.i339, i32 0, i32 11
  %10 = ptrtoint ptr %regulator to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call16, ptr %regulator, align 4
  %cmp.i340 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i340, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end10
  %call21 = tail call i32 @regulator_enable(ptr noundef %call16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then19.if.end33_crit_edge, label %do.end26

if.then19.if.end33_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

do.end26:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call21) #14
  br label %cleanup

if.else:                                          ; preds = %if.end10
  %cmp = icmp eq ptr %call16, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.else.cleanup_crit_edge, label %if.else.if.end33_crit_edge

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end33:                                         ; preds = %if.else.if.end33_crit_edge, %if.then19.if.end33_crit_edge
  %call35 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #11
  %cmp.i341 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i341, label %if.then37, label %if.else42

if.then37:                                        ; preds = %if.end33
  %cmp39 = icmp eq ptr %call35, inttoptr (i32 -517 to ptr)
  br i1 %cmp39, label %if.then37.err_out_crit_edge, label %if.then37.do.end58_crit_edge

if.then37.do.end58_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end58

if.then37.err_out_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out

if.else42:                                        ; preds = %if.end33
  %call.i342 = tail call i32 @clk_prepare(ptr noundef %call35) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i342)
  %tobool.not.i = icmp eq i32 %call.i342, 0
  br i1 %tobool.not.i, label %if.end.i343, label %if.else42.err_out_crit_edge

if.else42.err_out_crit_edge:                      ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out

if.end.i343:                                      ; preds = %if.else42
  %call1.i = tail call i32 @clk_enable(ptr noundef %call35) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end46, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i343
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %call35) #11
  br label %err_out

if.end46:                                         ; preds = %if.end.i343
  %call.i345 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @clk_disable_unprepare, ptr noundef %call35) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i345)
  %tobool.not.i346 = icmp eq i32 %call.i345, 0
  br i1 %tobool.not.i346, label %if.end53, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_disable(ptr noundef %call35) #11
  tail call void @clk_unprepare(ptr noundef %call35) #11
  br label %err_out

if.end53:                                         ; preds = %if.end46
  %call52 = tail call i32 @clk_get_rate(ptr noundef %call35) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool54.not = icmp eq i32 %call52, 0
  br i1 %tobool54.not, label %if.end53.do.end58_crit_edge, label %if.end53.if.end61_crit_edge

if.end53.if.end61_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.end53.do.end58_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end58

do.end58:                                         ; preds = %if.end53.do.end58_crit_edge, %if.then37.do.end58_crit_edge
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev, ptr noundef nonnull @.str.12) #14
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip, align 4
  %freq_std = getelementptr inbounds %struct.sccnxp_chip, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %freq_std to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %freq_std, align 4
  br label %if.end61

if.end61:                                         ; preds = %do.end58, %if.end53.if.end61_crit_edge
  %uartclk.1 = phi i32 [ %call52, %if.end53.if.end61_crit_edge ], [ %14, %do.end58 ]
  %15 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip, align 4
  %freq_min = getelementptr inbounds %struct.sccnxp_chip, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %freq_min to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %freq_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %uartclk.1, i32 %18)
  %cmp63 = icmp ult i32 %uartclk.1, %18
  br i1 %cmp63, label %if.end61.do.end69_crit_edge, label %lor.lhs.false

if.end61.do.end69_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end69

lor.lhs.false:                                    ; preds = %if.end61
  %freq_max = getelementptr inbounds %struct.sccnxp_chip, ptr %16, i32 0, i32 4
  %19 = ptrtoint ptr %freq_max to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %freq_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %uartclk.1, i32 %20)
  %cmp65 = icmp ugt i32 %uartclk.1, %20
  br i1 %cmp65, label %lor.lhs.false.do.end69_crit_edge, label %if.end71

lor.lhs.false.do.end69_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end69

do.end69:                                         ; preds = %lor.lhs.false.do.end69_crit_edge, %if.end61.do.end69_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #14
  br label %err_out

if.end71:                                         ; preds = %lor.lhs.false
  %tobool72.not = icmp eq ptr %1, null
  br i1 %tobool72.not, label %if.end71.if.end75_crit_edge, label %if.then73

if.end71.if.end75_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.then73:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  %pdata74 = getelementptr inbounds %struct.sccnxp_port, ptr %call.i339, i32 0, i32 10
  %21 = call ptr @memcpy(ptr %pdata74, ptr %1, i32 16)
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %if.end71.if.end75_crit_edge
  %pdata76 = getelementptr inbounds %struct.sccnxp_port, ptr %call.i339, i32 0, i32 10
  %poll_time_us = getelementptr inbounds %struct.sccnxp_port, ptr %call.i339, i32 0, i32 10, i32 2
  %22 = ptrtoint ptr %poll_time_us to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %poll_time_us, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool77.not = icmp eq i32 %23, 0
  br i1 %tobool77.not, label %if.end75.if.end85_crit_edge, label %do.end81

if.end75.if.end85_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85

do.end81:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %23) #14
  %poll = getelementptr inbounds %struct.sccnxp_port, ptr %call.i339, i32 0, i32 8
  %24 = ptrtoint ptr %poll to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %poll, align 4
  br label %if.end85

if.end85:                                         ; preds = %do.end81, %if.end75.if.end85_crit_edge
  %poll86 = getelementptr inbounds %struct.sccnxp_port, ptr %call.i339, i32 0, i32 8
  %25 = ptrtoint ptr %poll86 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %poll86, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool87.not = icmp eq i8 %26, 0
  br i1 %tobool87.not, label %if.then88, label %if.end85.if.end94_crit_edge

if.end85.if.end94_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

if.then88:                                        ; preds = %if.end85
  %call89 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #11
  %irq = getelementptr inbounds %struct.sccnxp_port, ptr %call.i339, i32 0, i32 3
  %27 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call89, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp91 = icmp slt i32 %call89, 0
  br i1 %cmp91, label %if.then88.err_out_crit_edge, label %if.then88.if.end94_crit_edge

if.then88.if.end94_crit_edge:                     ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

if.then88.err_out_crit_edge:                      ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out

if.end94:                                         ; preds = %if.then88.if.end94_crit_edge, %if.end85.if.end94_crit_edge
  %28 = ptrtoint ptr %call.i339 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %call.i339, align 4
  %dev_name = getelementptr inbounds %struct.uart_driver, ptr %call.i339, i32 0, i32 2
  %29 = ptrtoint ptr %dev_name to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.22, ptr %dev_name, align 4
  %major = getelementptr inbounds %struct.uart_driver, ptr %call.i339, i32 0, i32 3
  %30 = ptrtoint ptr %major to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 204, ptr %major, align 4
  %minor = getelementptr inbounds %struct.uart_driver, ptr %call.i339, i32 0, i32 4
  %31 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 205, ptr %minor, align 4
  %32 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chip, align 4
  %nr = getelementptr inbounds %struct.sccnxp_chip, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nr, align 4
  %nr100 = getelementptr inbounds %struct.uart_driver, ptr %call.i339, i32 0, i32 5
  %36 = ptrtoint ptr %nr100 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %nr100, align 4
  %console = getelementptr inbounds %struct.sccnxp_port, ptr %call.i339, i32 0, i32 6
  %cons = getelementptr inbounds %struct.uart_driver, ptr %call.i339, i32 0, i32 6
  %37 = ptrtoint ptr %cons to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %console, ptr %cons, align 4
  %device = getelementptr inbounds %struct.sccnxp_port, ptr %call.i339, i32 0, i32 6, i32 3
  %38 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @uart_console_device, ptr %device, align 4
  %write = getelementptr inbounds %struct.sccnxp_port, ptr %call.i339, i32 0, i32 6, i32 1
  %39 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @sccnxp_console_write, ptr %write, align 4
  %setup = getelementptr inbounds %struct.sccnxp_port, ptr %call.i339, i32 0, i32 6, i32 5
  %40 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @sccnxp_console_setup, ptr %setup, align 4
  %flags = getelementptr inbounds %struct.sccnxp_port, ptr %call.i339, i32 0, i32 6, i32 8
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %flags, align 4
  %index = getelementptr inbounds %struct.sccnxp_port, ptr %call.i339, i32 0, i32 6, i32 9
  %42 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 -1, ptr %index, align 2
  %data = getelementptr inbounds %struct.sccnxp_port, ptr %call.i339, i32 0, i32 6, i32 13
  %43 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i339, ptr %data, align 4
  %44 = call ptr @memcpy(ptr %console, ptr @.str.22, i32 6)
  %call118 = tail call i32 @uart_register_driver(ptr noundef nonnull %call.i339) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %for.cond.preheader, label %do.end123

for.cond.preheader:                               ; preds = %if.end94
  %45 = ptrtoint ptr %nr100 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nr100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp128365 = icmp sgt i32 %46, 0
  br i1 %cmp128365, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %irq133 = getelementptr inbounds %struct.sccnxp_port, ptr %call.i339, i32 0, i32 3
  br label %for.body

do.end123:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #14
  br label %err_out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0366 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sccnxp_port, ptr %call.i339, i32 0, i32 1, i32 %i.0366
  %line = getelementptr %struct.sccnxp_port, ptr %call.i339, i32 0, i32 1, i32 %i.0366, i32 41
  %47 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %i.0366, ptr %line, align 4
  %dev132 = getelementptr %struct.sccnxp_port, ptr %call.i339, i32 0, i32 1, i32 %i.0366, i32 45
  %48 = ptrtoint ptr %dev132 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %dev, ptr %dev132, align 4
  %49 = ptrtoint ptr %irq133 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %irq133, align 4
  %irq136 = getelementptr %struct.sccnxp_port, ptr %call.i339, i32 0, i32 1, i32 %i.0366, i32 20
  %51 = ptrtoint ptr %irq136 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %irq136, align 4
  %type = getelementptr %struct.sccnxp_port, ptr %call.i339, i32 0, i32 1, i32 %i.0366, i32 38
  %52 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 82, ptr %type, align 4
  %53 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %chip, align 4
  %fifosize = getelementptr inbounds %struct.sccnxp_chip, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %fifosize to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fifosize, align 4
  %fifosize142 = getelementptr %struct.sccnxp_port, ptr %call.i339, i32 0, i32 1, i32 %i.0366, i32 23
  %57 = ptrtoint ptr %fifosize142 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %fifosize142, align 4
  %flags145 = getelementptr %struct.sccnxp_port, ptr %call.i339, i32 0, i32 1, i32 %i.0366, i32 33
  %58 = ptrtoint ptr %flags145 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 134217792, ptr %flags145, align 4
  %iotype = getelementptr %struct.sccnxp_port, ptr %call.i339, i32 0, i32 1, i32 %i.0366, i32 26
  %59 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 2, ptr %iotype, align 2
  %60 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %call, align 4
  %mapbase = getelementptr %struct.sccnxp_port, ptr %call.i339, i32 0, i32 1, i32 %i.0366, i32 43
  %62 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %mapbase, align 4
  %membase152 = getelementptr %struct.sccnxp_port, ptr %call.i339, i32 0, i32 1, i32 %i.0366, i32 2
  %63 = ptrtoint ptr %membase152 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call3, ptr %membase152, align 4
  %64 = ptrtoint ptr %pdata76 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %pdata76, align 4
  %regshift = getelementptr %struct.sccnxp_port, ptr %call.i339, i32 0, i32 1, i32 %i.0366, i32 25
  %66 = ptrtoint ptr %regshift to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %regshift, align 1
  %uartclk158 = getelementptr %struct.sccnxp_port, ptr %call.i339, i32 0, i32 1, i32 %i.0366, i32 22
  %67 = ptrtoint ptr %uartclk158 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %uartclk.1, ptr %uartclk158, align 4
  %ops = getelementptr %struct.sccnxp_port, ptr %call.i339, i32 0, i32 1, i32 %i.0366, i32 39
  %68 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @sccnxp_ops, ptr %ops, align 4
  %has_sysrq = getelementptr %struct.sccnxp_port, ptr %call.i339, i32 0, i32 1, i32 %i.0366, i32 48
  %69 = ptrtoint ptr %has_sysrq to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %has_sysrq, align 4
  %call166 = tail call i32 @uart_add_one_port(ptr noundef nonnull %call.i339, ptr noundef %arrayidx) #11
  %70 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %chip, align 4
  %flags168 = getelementptr inbounds %struct.sccnxp_chip, ptr %71, i32 0, i32 5
  %72 = ptrtoint ptr %flags168 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %flags168, align 4
  %and = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool169.not = icmp eq i32 %and, 0
  br i1 %tobool169.not, label %for.body.for.inc_crit_edge, label %if.then170

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then170:                                       ; preds = %for.body
  %74 = ptrtoint ptr %dev132 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev132, align 4
  %driver_data.i.i349 = getelementptr inbounds %struct.device, ptr %75, i32 0, i32 8
  %76 = ptrtoint ptr %driver_data.i.i349 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %driver_data.i.i349, align 4
  %78 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %line, align 4
  %arrayidx.i = getelementptr %struct.sccnxp_port, ptr %77, i32 0, i32 10, i32 1, i32 %79
  %80 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %81, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i350 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i350, label %if.then170.for.inc_crit_edge, label %if.then.i351

if.then170.for.inc_crit_edge:                     ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then.i351:                                     ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #13
  %shr.i = lshr i32 %81, 24
  %and5.i = and i32 %shr.i, 15
  %sub.i = add nsw i32 %and5.i, -1
  %shl6.i = shl nuw nsw i32 1, %sub.i
  %conv.i = trunc i32 %shl6.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %82 = ptrtoint ptr %membase152 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %membase152, align 4
  %84 = ptrtoint ptr %regshift to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %regshift, align 1
  %conv1.i21.i = zext i8 %85 to i32
  %shl.i22.i = shl i32 15, %conv1.i21.i
  %add.ptr.i23.i = getelementptr i8, ptr %83, i32 %shl.i22.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i23.i, i8 %conv.i) #11, !srcloc !111
  %chip.i24.i = getelementptr inbounds %struct.sccnxp_port, ptr %77, i32 0, i32 5
  %86 = ptrtoint ptr %chip.i24.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %chip.i24.i, align 4
  %trwd.i25.i = getelementptr inbounds %struct.sccnxp_chip, ptr %87, i32 0, i32 7
  %88 = ptrtoint ptr %trwd.i25.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %trwd.i25.i, align 4
  %sub.i.i26.i = add i32 %89, 999
  %div.i.i27.i = udiv i32 %sub.i.i26.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %90(i32 noundef %div.i.i27.i) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then.i351, %if.then170.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0366, 1
  %91 = ptrtoint ptr %nr100 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %nr100, align 4
  %cmp128 = icmp slt i32 %inc, %92
  br i1 %cmp128, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %imr = getelementptr inbounds %struct.sccnxp_port, ptr %call.i339, i32 0, i32 4
  %93 = ptrtoint ptr %imr to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %imr, align 4
  %dev.i353 = getelementptr inbounds %struct.sccnxp_port, ptr %call.i339, i32 0, i32 1, i32 0, i32 45
  %94 = ptrtoint ptr %dev.i353 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev.i353, align 4
  %driver_data.i.i354 = getelementptr inbounds %struct.device, ptr %95, i32 0, i32 8
  %96 = ptrtoint ptr %driver_data.i.i354 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %driver_data.i.i354, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @arm_heavy_mb() #11
  %membase.i = getelementptr inbounds %struct.sccnxp_port, ptr %call.i339, i32 0, i32 1, i32 0, i32 2
  %98 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %membase.i, align 4
  %regshift.i = getelementptr inbounds %struct.sccnxp_port, ptr %call.i339, i32 0, i32 1, i32 0, i32 25
  %100 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %regshift.i, align 1
  %conv1.i = zext i8 %101 to i32
  %shl.i = shl i32 5, %conv1.i
  %add.ptr.i = getelementptr i8, ptr %99, i32 %shl.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 0) #11, !srcloc !111
  %chip.i = getelementptr inbounds %struct.sccnxp_port, ptr %97, i32 0, i32 5
  %102 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %chip.i, align 4
  %trwd.i = getelementptr inbounds %struct.sccnxp_chip, ptr %103, i32 0, i32 7
  %104 = ptrtoint ptr %trwd.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %trwd.i, align 4
  %sub.i.i355 = add i32 %105, 999
  %div.i.i356 = udiv i32 %sub.i.i355, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %106(i32 noundef %div.i.i356) #11
  %107 = ptrtoint ptr %poll86 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %poll86, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool177.not = icmp eq i8 %108, 0
  br i1 %tobool177.not, label %if.then178, label %do.body193

if.then178:                                       ; preds = %for.end
  %irq180 = getelementptr inbounds %struct.sccnxp_port, ptr %call.i339, i32 0, i32 3
  %109 = ptrtoint ptr %irq180 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %irq180, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %111 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i357 = icmp eq ptr %112, null
  br i1 %tobool.not.i357, label %if.end.i358, label %if.then178.dev_name.exit_crit_edge

if.then178.dev_name.exit_crit_edge:               ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i358:                                      ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #13
  %113 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i358, %if.then178.dev_name.exit_crit_edge
  %retval.0.i359 = phi ptr [ %114, %if.end.i358 ], [ %112, %if.then178.dev_name.exit_crit_edge ]
  %call183 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %110, ptr noundef null, ptr noundef nonnull @sccnxp_ist, i32 noundef 8194, ptr noundef %retval.0.i359, ptr noundef nonnull %call.i339) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %dev_name.exit.cleanup_crit_edge, label %do.end189

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end189:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %115 = ptrtoint ptr %irq180 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %irq180, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %116) #14
  tail call void @uart_unregister_driver(ptr noundef nonnull %call.i339) #11
  br label %err_out

do.body193:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %timer = getelementptr inbounds %struct.sccnxp_port, ptr %call.i339, i32 0, i32 9
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @sccnxp_timer, i32 noundef 0, ptr noundef nonnull @.str.30, ptr noundef nonnull @sccnxp_probe.__key.29) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %117 = load volatile i32, ptr @jiffies, align 128
  %118 = ptrtoint ptr %poll_time_us to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %poll_time_us, align 4
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %119) #11
  %add = add i32 %call3.i, %117
  %call200 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #11
  br label %cleanup

err_out:                                          ; preds = %do.end189, %do.end123, %if.then88.err_out_crit_edge, %do.end69, %devm_add_action_or_reset.exit, %if.then3.i, %if.else42.err_out_crit_edge, %if.then37.err_out_crit_edge
  %ret.0 = phi i32 [ -517, %if.then37.err_out_crit_edge ], [ -22, %do.end69 ], [ %call118, %do.end123 ], [ %call183, %do.end189 ], [ %call.i345, %devm_add_action_or_reset.exit ], [ -6, %if.then88.err_out_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i342, %if.else42.err_out_crit_edge ]
  %120 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regulator, align 4
  %cmp.i360 = icmp ugt ptr %121, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i360, label %err_out.cleanup_crit_edge, label %if.then205

err_out.cleanup_crit_edge:                        ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then205:                                       ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #13
  %call207 = tail call i32 @regulator_disable(ptr noundef %121) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then205, %err_out.cleanup_crit_edge, %do.body193, %dev_name.exit.cleanup_crit_edge, %if.else.cleanup_crit_edge, %do.end26, %do.end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ 0, %do.body193 ], [ %call21, %do.end26 ], [ -12, %do.end ], [ -517, %if.else.cleanup_crit_edge ], [ 0, %dev_name.exit.cleanup_crit_edge ], [ %ret.0, %if.then205 ], [ %ret.0, %err_out.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sccnxp_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %poll = getelementptr inbounds %struct.sccnxp_port, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %poll to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %poll, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %irq = getelementptr inbounds %struct.sccnxp_port, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @devm_free_irq(ptr noundef %dev, i32 noundef %5, ptr noundef %1) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %timer = getelementptr inbounds %struct.sccnxp_port, ptr %1, i32 0, i32 9
  %call1 = tail call i32 @del_timer_sync(ptr noundef %timer) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %nr = getelementptr inbounds %struct.uart_driver, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp23 = icmp sgt i32 %7, 0
  br i1 %cmp23, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.024 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sccnxp_port, ptr %1, i32 0, i32 1, i32 %i.024
  %call3 = tail call i32 @uart_remove_one_port(ptr noundef %1, ptr noundef %arrayidx) #11
  %inc = add nuw nsw i32 %i.024, 1
  %8 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @uart_unregister_driver(ptr noundef %1) #11
  %regulator = getelementptr inbounds %struct.sccnxp_port, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regulator, align 4
  %cmp.i = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.end.cleanup_crit_edge, label %if.then6

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then6:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call i32 @regulator_disable(ptr noundef %11) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then6 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_disable_unprepare(ptr noundef %clk) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_disable(ptr noundef %clk) #11
  tail call void @clk_unprepare(ptr noundef %clk) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sccnxp_console_write(ptr nocapture noundef readonly %co, ptr noundef %c, i32 noundef %n) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 13
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %index, align 2
  %idxprom = sext i16 %3 to i32
  %arrayidx = getelementptr %struct.sccnxp_port, ptr %1, i32 0, i32 1, i32 %idxprom
  %lock = getelementptr inbounds %struct.sccnxp_port, ptr %1, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  tail call void @uart_console_write(ptr noundef %arrayidx, ptr noundef %c, i32 noundef %n, ptr noundef nonnull @sccnxp_console_putchar) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sccnxp_console_setup(ptr noundef %co, ptr noundef %options) #2 align 64 {
entry:
  %baud = alloca i32, align 4
  %bits = alloca i32, align 4
  %parity = alloca i32, align 4
  %flow = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 13
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %index, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %baud) #11
  %4 = ptrtoint ptr %baud to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 9600, ptr %baud, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits) #11
  %5 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8, ptr %bits, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parity) #11
  %6 = ptrtoint ptr %parity to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 110, ptr %parity, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flow) #11
  %7 = ptrtoint ptr %flow to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 110, ptr %flow, align 4
  %tobool.not = icmp eq ptr %options, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @uart_parse_options(ptr noundef nonnull %options, ptr noundef nonnull %baud, ptr noundef nonnull %parity, ptr noundef nonnull %bits, ptr noundef nonnull %flow) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = call i16 @llvm.smax.i16(i16 %3, i16 0)
  %spec.select = zext i16 %8 to i32
  %arrayidx = getelementptr %struct.sccnxp_port, ptr %1, i32 0, i32 1, i32 %spec.select
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
  %call = call i32 @uart_set_options(ptr noundef %arrayidx, ptr noundef %co, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flow) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parity) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %baud) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sccnxp_ist(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.sccnxp_port, ptr %dev_id, i32 0, i32 7
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  tail call fastcc void @sccnxp_handle_events(ptr noundef %dev_id)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #11
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sccnxp_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -888
  %lock = getelementptr i8, ptr %t, i32 -48
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  tail call fastcc void @sccnxp_handle_events(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %poll_time_us = getelementptr i8, ptr %t, i32 60
  %1 = ptrtoint ptr %poll_time_us to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %poll_time_us, align 4
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %2) #11
  %add = add i32 %call3.i, %0
  %call8 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sccnxp_console_putchar(ptr nocapture noundef readonly %port, i32 noundef %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %line.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %dev.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %regshift.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry
  %dec25 = phi i32 [ 99999, %entry ], [ %dec, %if.end.while.body_crit_edge ]
  %0 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %line.i, align 4
  %2 = shl i32 %1, 3
  %3 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i.i, align 4
  %7 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i.i, align 4
  %conv1.i = and i32 %2, 248
  %conv.i.i = or i32 %conv1.i, 1
  %9 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %regshift.i.i, align 1
  %conv1.i.i = zext i8 %10 to i32
  %shl.i.i = shl i32 %conv.i.i, %conv1.i.i
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %shl.i.i
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !114
  %chip.i.i = getelementptr inbounds %struct.sccnxp_port, ptr %6, i32 0, i32 5
  %12 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip.i.i, align 4
  %trwd.i.i = getelementptr inbounds %struct.sccnxp_chip, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %trwd.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %trwd.i.i, align 4
  %sub.i.i.i = add i32 %15, 999
  %div.i.i.i = udiv i32 %sub.i.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %16(i32 noundef %div.i.i.i) #11
  %17 = and i8 %11, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool1.not = icmp eq i8 %17, 0
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %conv2 = trunc i32 %c to i8
  %18 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %line.i, align 4
  %20 = shl i32 %19, 3
  %21 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i8 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %driver_data.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver_data.i.i.i8, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @arm_heavy_mb() #11
  %25 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase.i.i, align 4
  %conv1.i6 = and i32 %20, 248
  %conv.i.i10 = or i32 %conv1.i6, 3
  %27 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %regshift.i.i, align 1
  %conv1.i.i12 = zext i8 %28 to i32
  %shl.i.i13 = shl i32 %conv.i.i10, %conv1.i.i12
  %add.ptr.i.i14 = getelementptr i8, ptr %26, i32 %shl.i.i13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i14, i8 %conv2) #11, !srcloc !111
  %chip.i.i15 = getelementptr inbounds %struct.sccnxp_port, ptr %24, i32 0, i32 5
  %29 = ptrtoint ptr %chip.i.i15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chip.i.i15, align 4
  %trwd.i.i16 = getelementptr inbounds %struct.sccnxp_chip, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %trwd.i.i16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %trwd.i.i16, align 4
  %sub.i.i.i17 = add i32 %32, 999
  %div.i.i.i18 = udiv i32 %sub.i.i.i17, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %33(i32 noundef %div.i.i.i18) #11
  br label %while.end

if.end:                                           ; preds = %while.body
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !115
  %dec = add nsw i32 %dec25, -1
  %tobool.not = icmp eq i32 %dec25, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sccnxp_tx_empty(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.sccnxp_port, ptr %3, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %line.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %4 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %line.i, align 4
  %6 = shl i32 %5, 3
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i.i, align 4
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %11 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i.i, align 4
  %conv1.i = and i32 %6, 248
  %conv.i.i = or i32 %conv1.i, 1
  %regshift.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %13 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %regshift.i.i, align 1
  %conv1.i.i = zext i8 %14 to i32
  %shl.i.i = shl i32 %conv.i.i, %conv1.i.i
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %shl.i.i
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !114
  %chip.i.i = getelementptr inbounds %struct.sccnxp_port, ptr %10, i32 0, i32 5
  %16 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip.i.i, align 4
  %trwd.i.i = getelementptr inbounds %struct.sccnxp_chip, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %trwd.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %trwd.i.i, align 4
  %sub.i.i.i = add i32 %19, 999
  %div.i.i.i = udiv i32 %sub.i.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %20(i32 noundef %div.i.i.i) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  %21 = lshr i8 %15, 3
  %.lobit = and i8 %21, 1
  %22 = zext i8 %.lobit to i32
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sccnxp_set_mctrl(ptr nocapture noundef readonly %port, i32 noundef %mctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %chip = getelementptr inbounds %struct.sccnxp_port, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %flags1 = getelementptr inbounds %struct.sccnxp_chip, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags1, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body2:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.sccnxp_port, ptr %3, i32 0, i32 7
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %line.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %12 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %line.i, align 4
  %arrayidx.i = getelementptr %struct.sccnxp_port, ptr %11, i32 0, i32 10, i32 1, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %15, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body2.sccnxp_set_bit.exit_crit_edge, label %if.then.i

do.body2.sccnxp_set_bit.exit_crit_edge:           ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %sccnxp_set_bit.exit

if.then.i:                                        ; preds = %do.body2
  %and7 = and i32 %mctrl, 2
  %sub.i = add nsw i32 %and.i, -1
  %shl6.i = shl nuw nsw i32 1, %sub.i
  %conv.i = trunc i32 %shl6.i to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool7.not.i = icmp eq i32 %and7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %membase.i19.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %16 = ptrtoint ptr %membase.i19.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i19.i, align 4
  %regshift.i20.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %18 = ptrtoint ptr %regshift.i20.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %regshift.i20.i, align 1
  %conv1.i21.i = zext i8 %19 to i32
  br i1 %tobool7.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %shl.i.i = shl i32 14, %conv1.i21.i
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %shl.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %conv.i) #11, !srcloc !111
  br label %sccnxp_set_bit.exit.sink.split

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %shl.i22.i = shl i32 15, %conv1.i21.i
  %add.ptr.i23.i = getelementptr i8, ptr %17, i32 %shl.i22.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i23.i, i8 %conv.i) #11, !srcloc !111
  br label %sccnxp_set_bit.exit.sink.split

sccnxp_set_bit.exit.sink.split:                   ; preds = %if.else.i, %if.then8.i
  %chip.i.i = getelementptr inbounds %struct.sccnxp_port, ptr %11, i32 0, i32 5
  %20 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip.i.i, align 4
  %trwd.i.i = getelementptr inbounds %struct.sccnxp_chip, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %trwd.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %trwd.i.i, align 4
  %sub.i.i.i = add i32 %23, 999
  %div.i.i.i = udiv i32 %sub.i.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %24(i32 noundef %div.i.i.i) #11
  br label %sccnxp_set_bit.exit

sccnxp_set_bit.exit:                              ; preds = %sccnxp_set_bit.exit.sink.split, %do.body2.sccnxp_set_bit.exit_crit_edge
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %driver_data.i.i17 = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %driver_data.i.i17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver_data.i.i17, align 4
  %29 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %line.i, align 4
  %arrayidx.i19 = getelementptr %struct.sccnxp_port, ptr %28, i32 0, i32 10, i32 1, i32 %30
  %31 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i19, align 4
  %and.i20 = and i32 %32, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20)
  %tobool.not.i21 = icmp eq i32 %and.i20, 0
  br i1 %tobool.not.i21, label %sccnxp_set_bit.exit.sccnxp_set_bit.exit57_crit_edge, label %if.then.i30

sccnxp_set_bit.exit.sccnxp_set_bit.exit57_crit_edge: ; preds = %sccnxp_set_bit.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sccnxp_set_bit.exit57

if.then.i30:                                      ; preds = %sccnxp_set_bit.exit
  %and8 = and i32 %mctrl, 4
  %shr.i = lshr i32 %32, 4
  %and5.i22 = and i32 %shr.i, 15
  %sub.i23 = add nsw i32 %and5.i22, -1
  %shl6.i24 = shl nuw nsw i32 1, %sub.i23
  %conv.i25 = trunc i32 %shl6.i24 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool7.not.i26 = icmp eq i32 %and8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %membase.i19.i27 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %33 = ptrtoint ptr %membase.i19.i27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase.i19.i27, align 4
  %regshift.i20.i28 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %35 = ptrtoint ptr %regshift.i20.i28 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %regshift.i20.i28, align 1
  %conv1.i21.i29 = zext i8 %36 to i32
  br i1 %tobool7.not.i26, label %if.else.i50, label %if.then8.i37

if.then8.i37:                                     ; preds = %if.then.i30
  call void @__sanitizer_cov_trace_pc() #13
  %shl.i.i31 = shl i32 14, %conv1.i21.i29
  %add.ptr.i.i32 = getelementptr i8, ptr %34, i32 %shl.i.i31
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i32, i8 %conv.i25) #11, !srcloc !111
  br label %sccnxp_set_bit.exit57.sink.split

if.else.i50:                                      ; preds = %if.then.i30
  call void @__sanitizer_cov_trace_pc() #13
  %shl.i22.i44 = shl i32 15, %conv1.i21.i29
  %add.ptr.i23.i45 = getelementptr i8, ptr %34, i32 %shl.i22.i44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i23.i45, i8 %conv.i25) #11, !srcloc !111
  br label %sccnxp_set_bit.exit57.sink.split

sccnxp_set_bit.exit57.sink.split:                 ; preds = %if.else.i50, %if.then8.i37
  %chip.i.i33 = getelementptr inbounds %struct.sccnxp_port, ptr %28, i32 0, i32 5
  %37 = ptrtoint ptr %chip.i.i33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %chip.i.i33, align 4
  %trwd.i.i34 = getelementptr inbounds %struct.sccnxp_chip, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %trwd.i.i34 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %trwd.i.i34, align 4
  %sub.i.i.i35 = add i32 %40, 999
  %div.i.i.i36 = udiv i32 %sub.i.i.i35, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %41(i32 noundef %div.i.i.i36) #11
  br label %sccnxp_set_bit.exit57

sccnxp_set_bit.exit57:                            ; preds = %sccnxp_set_bit.exit57.sink.split, %sccnxp_set_bit.exit.sccnxp_set_bit.exit57_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #11
  br label %cleanup

cleanup:                                          ; preds = %sccnxp_set_bit.exit57, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sccnxp_get_mctrl(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %chip = getelementptr inbounds %struct.sccnxp_port, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %flags1 = getelementptr inbounds %struct.sccnxp_chip, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags1, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body2:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.sccnxp_port, ptr %3, i32 0, i32 7
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %12 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i, align 4
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %14 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %regshift.i, align 1
  %conv1.i = zext i8 %15 to i32
  %shl.i = shl i32 4, %conv1.i
  %add.ptr.i = getelementptr i8, ptr %13, i32 %shl.i
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !114
  %chip.i = getelementptr inbounds %struct.sccnxp_port, ptr %11, i32 0, i32 5
  %17 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip.i, align 4
  %trwd.i = getelementptr inbounds %struct.sccnxp_chip, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %trwd.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %trwd.i, align 4
  %sub.i.i = add i32 %20, 999
  %div.i.i = udiv i32 %sub.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %21(i32 noundef %div.i.i) #11
  %neg = xor i8 %16, -1
  %line = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %22 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %line, align 4
  %arrayidx = getelementptr %struct.sccnxp_port, ptr %3, i32 0, i32 10, i32 1, i32 %23
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %and10 = and i32 %25, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %do.body2.if.end24_crit_edge, label %if.then12

do.body2.if.end24_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then12:                                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  %shr = lshr i32 %25, 8
  %and17 = and i32 %shr, 15
  %sub = add nsw i32 %and17, -9
  %shl = shl nuw nsw i32 1, %sub
  %conv20 = zext i8 %neg to i32
  %and22 = and i32 %shl, %conv20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %or = select i1 %tobool23.not, i32 96, i32 352
  br label %if.end24

if.end24:                                         ; preds = %if.then12, %do.body2.if.end24_crit_edge
  %mctrl.0 = phi i32 [ %or, %if.then12 ], [ 352, %do.body2.if.end24_crit_edge ]
  %and29 = and i32 %25, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end24.if.end48_crit_edge, label %if.then31

if.end24.if.end48_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then31:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %shr36 = lshr i32 %25, 12
  %and37 = and i32 %shr36, 15
  %sub38 = add nsw i32 %and37, -9
  %shl39 = shl nuw nsw i32 1, %sub38
  %and41 = and i32 %mctrl.0, 320
  %conv42 = zext i8 %neg to i32
  %and44 = and i32 %shl39, %conv42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  %cond46 = select i1 %tobool45.not, i32 0, i32 32
  %or47 = or i32 %and41, %cond46
  br label %if.end48

if.end48:                                         ; preds = %if.then31, %if.end24.if.end48_crit_edge
  %mctrl.1 = phi i32 [ %or47, %if.then31 ], [ %mctrl.0, %if.end24.if.end48_crit_edge ]
  %and53 = and i32 %25, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end48.if.end72_crit_edge, label %if.then55

if.end48.if.end72_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

if.then55:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  %shr60 = lshr i32 %25, 16
  %and61 = and i32 %shr60, 15
  %sub62 = add nsw i32 %and61, -9
  %shl63 = shl nuw nsw i32 1, %sub62
  %and65 = and i32 %mctrl.1, -65
  %conv66 = zext i8 %neg to i32
  %and68 = and i32 %shl63, %conv66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  %cond70 = select i1 %tobool69.not, i32 0, i32 64
  %or71 = or i32 %and65, %cond70
  br label %if.end72

if.end72:                                         ; preds = %if.then55, %if.end48.if.end72_crit_edge
  %mctrl.2 = phi i32 [ %or71, %if.then55 ], [ %mctrl.1, %if.end48.if.end72_crit_edge ]
  %and77 = and i32 %25, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end72.if.end96_crit_edge, label %if.then79

if.end72.if.end96_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end96

if.then79:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  %shr84 = lshr i32 %25, 20
  %and85 = and i32 %shr84, 15
  %sub86 = add nsw i32 %and85, -9
  %shl87 = shl nuw nsw i32 1, %sub86
  %and89 = and i32 %mctrl.2, -129
  %conv90 = zext i8 %neg to i32
  %and92 = and i32 %shl87, %conv90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  %cond94 = select i1 %tobool93.not, i32 0, i32 128
  %or95 = or i32 %and89, %cond94
  br label %if.end96

if.end96:                                         ; preds = %if.then79, %if.end72.if.end96_crit_edge
  %mctrl.3 = phi i32 [ %or95, %if.then79 ], [ %mctrl.2, %if.end72.if.end96_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end96, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %mctrl.3, %if.end96 ], [ 352, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sccnxp_stop_tx(ptr nocapture noundef %port) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sccnxp_start_tx(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.sccnxp_port, ptr %3, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %chip = getelementptr inbounds %struct.sccnxp_port, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %flags6 = getelementptr inbounds %struct.sccnxp_chip, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags6, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %line.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %12 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %line.i, align 4
  %arrayidx.i = getelementptr %struct.sccnxp_port, ptr %11, i32 0, i32 10, i32 1, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %15, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %shr.i = lshr i32 %15, 24
  %and5.i = and i32 %shr.i, 15
  %sub.i = add nsw i32 %and5.i, -1
  %shl6.i = shl nuw nsw i32 1, %sub.i
  %conv.i = trunc i32 %shl6.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %membase.i19.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %16 = ptrtoint ptr %membase.i19.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i19.i, align 4
  %regshift.i20.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %18 = ptrtoint ptr %regshift.i20.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %regshift.i20.i, align 1
  %conv1.i21.i = zext i8 %19 to i32
  %shl.i.i = shl i32 14, %conv1.i21.i
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %shl.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %conv.i) #11, !srcloc !111
  %chip.i.i = getelementptr inbounds %struct.sccnxp_port, ptr %11, i32 0, i32 5
  %20 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip.i.i, align 4
  %trwd.i.i = getelementptr inbounds %struct.sccnxp_chip, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %trwd.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %trwd.i.i, align 4
  %sub.i.i.i = add i32 %23, 999
  %div.i.i.i = udiv i32 %sub.i.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %24(i32 noundef %div.i.i.i) #11
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %driver_data.i.i13 = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %driver_data.i.i13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver_data.i.i13, align 4
  %line.i14 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %29 = ptrtoint ptr %line.i14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %line.i14, align 4
  %mul.i = shl i32 %30, 2
  %shl.i = shl nuw i32 1, %mul.i
  %imr.i = getelementptr inbounds %struct.sccnxp_port, ptr %28, i32 0, i32 4
  %31 = ptrtoint ptr %imr.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %imr.i, align 4
  %33 = trunc i32 %shl.i to i8
  %conv1.i = or i8 %32, %33
  store i8 %conv1.i, ptr %imr.i, align 4
  %34 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %driver_data.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @arm_heavy_mb() #11
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %37 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %membase.i.i, align 4
  %regshift.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %39 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %regshift.i.i, align 1
  %conv1.i.i = zext i8 %40 to i32
  %shl.i.i15 = shl i32 5, %conv1.i.i
  %add.ptr.i.i16 = getelementptr i8, ptr %38, i32 %shl.i.i15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i16, i8 %conv1.i) #11, !srcloc !111
  %chip.i.i17 = getelementptr inbounds %struct.sccnxp_port, ptr %36, i32 0, i32 5
  %41 = ptrtoint ptr %chip.i.i17 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %chip.i.i17, align 4
  %trwd.i.i18 = getelementptr inbounds %struct.sccnxp_chip, ptr %42, i32 0, i32 7
  %43 = ptrtoint ptr %trwd.i.i18 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %trwd.i.i18, align 4
  %sub.i.i.i19 = add i32 %44, 999
  %div.i.i.i20 = udiv i32 %sub.i.i.i19, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %45(i32 noundef %div.i.i.i20) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sccnxp_stop_rx(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.sccnxp_port, ptr %3, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %line.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %4 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %line.i, align 4
  %6 = shl i32 %5, 3
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @arm_heavy_mb() #11
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %11 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i.i, align 4
  %conv1.i = and i32 %6, 248
  %conv.i.i = or i32 %conv1.i, 2
  %regshift.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %13 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %regshift.i.i, align 1
  %conv1.i.i = zext i8 %14 to i32
  %shl.i.i = shl i32 %conv.i.i, %conv1.i.i
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %shl.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 2) #11, !srcloc !111
  %chip.i.i = getelementptr inbounds %struct.sccnxp_port, ptr %10, i32 0, i32 5
  %15 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip.i.i, align 4
  %trwd.i.i = getelementptr inbounds %struct.sccnxp_chip, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %trwd.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %trwd.i.i, align 4
  %sub.i.i.i = add i32 %18, 999
  %div.i.i.i = udiv i32 %sub.i.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %19(i32 noundef %div.i.i.i) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sccnxp_break_ctl(ptr nocapture noundef readonly %port, i32 noundef %break_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.sccnxp_port, ptr %3, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %break_state)
  %tobool.not = icmp eq i32 %break_state, 0
  %conv6 = select i1 %tobool.not, i8 112, i8 96
  %line.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %4 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %line.i, align 4
  %6 = shl i32 %5, 3
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @arm_heavy_mb() #11
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %11 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i.i, align 4
  %conv1.i = and i32 %6, 248
  %conv.i.i = or i32 %conv1.i, 2
  %regshift.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %13 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %regshift.i.i, align 1
  %conv1.i.i = zext i8 %14 to i32
  %shl.i.i = shl i32 %conv.i.i, %conv1.i.i
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %shl.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %conv6) #11, !srcloc !111
  %chip.i.i = getelementptr inbounds %struct.sccnxp_port, ptr %10, i32 0, i32 5
  %15 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip.i.i, align 4
  %trwd.i.i = getelementptr inbounds %struct.sccnxp_chip, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %trwd.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %trwd.i.i, align 4
  %sub.i.i.i = add i32 %18, 999
  %div.i.i.i = udiv i32 %sub.i.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %19(i32 noundef %div.i.i.i) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sccnxp_startup(ptr noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.sccnxp_port, ptr %3, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %chip = getelementptr inbounds %struct.sccnxp_port, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %flags6 = getelementptr inbounds %struct.sccnxp_chip, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags6, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @arm_heavy_mb() #11
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %12 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i, align 4
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %14 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %regshift.i, align 1
  %conv1.i = zext i8 %15 to i32
  %shl.i = shl i32 13, %conv1.i
  %add.ptr.i = getelementptr i8, ptr %13, i32 %shl.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 0) #11, !srcloc !111
  %chip.i = getelementptr inbounds %struct.sccnxp_port, ptr %11, i32 0, i32 5
  %16 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip.i, align 4
  %trwd.i = getelementptr inbounds %struct.sccnxp_chip, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %trwd.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %trwd.i, align 4
  %sub.i.i = add i32 %19, 999
  %div.i.i = udiv i32 %sub.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %20(i32 noundef %div.i.i) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %line.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %21 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %line.i, align 4
  %23 = shl i32 %22, 3
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver_data.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @arm_heavy_mb() #11
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %28 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase.i.i, align 4
  %conv1.i19 = and i32 %23, 248
  %conv.i.i = or i32 %conv1.i19, 2
  %regshift.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %30 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %regshift.i.i, align 1
  %conv1.i.i = zext i8 %31 to i32
  %shl.i.i = shl i32 %conv.i.i, %conv1.i.i
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 %shl.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 32) #11, !srcloc !111
  %chip.i.i = getelementptr inbounds %struct.sccnxp_port, ptr %27, i32 0, i32 5
  %32 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chip.i.i, align 4
  %trwd.i.i = getelementptr inbounds %struct.sccnxp_chip, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %trwd.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %trwd.i.i, align 4
  %sub.i.i.i = add i32 %35, 999
  %div.i.i.i = udiv i32 %sub.i.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %36(i32 noundef %div.i.i.i) #11
  %37 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %line.i, align 4
  %39 = shl i32 %38, 3
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i24 = getelementptr inbounds %struct.device, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %driver_data.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %driver_data.i.i.i24, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @arm_heavy_mb() #11
  %44 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %membase.i.i, align 4
  %conv1.i22 = and i32 %39, 248
  %conv.i.i26 = or i32 %conv1.i22, 2
  %46 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %regshift.i.i, align 1
  %conv1.i.i28 = zext i8 %47 to i32
  %shl.i.i29 = shl i32 %conv.i.i26, %conv1.i.i28
  %add.ptr.i.i30 = getelementptr i8, ptr %45, i32 %shl.i.i29
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i30, i8 48) #11, !srcloc !111
  %chip.i.i31 = getelementptr inbounds %struct.sccnxp_port, ptr %43, i32 0, i32 5
  %48 = ptrtoint ptr %chip.i.i31 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %chip.i.i31, align 4
  %trwd.i.i32 = getelementptr inbounds %struct.sccnxp_chip, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %trwd.i.i32 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %trwd.i.i32, align 4
  %sub.i.i.i33 = add i32 %51, 999
  %div.i.i.i34 = udiv i32 %sub.i.i.i33, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %52(i32 noundef %div.i.i.i34) #11
  %53 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %line.i, align 4
  %55 = shl i32 %54, 3
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i46 = getelementptr inbounds %struct.device, ptr %57, i32 0, i32 8
  %58 = ptrtoint ptr %driver_data.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %driver_data.i.i.i46, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @arm_heavy_mb() #11
  %60 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %membase.i.i, align 4
  %conv1.i44 = and i32 %55, 248
  %conv.i.i48 = or i32 %conv1.i44, 2
  %62 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %regshift.i.i, align 1
  %conv1.i.i50 = zext i8 %63 to i32
  %shl.i.i51 = shl i32 %conv.i.i48, %conv1.i.i50
  %add.ptr.i.i52 = getelementptr i8, ptr %61, i32 %shl.i.i51
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i52, i8 64) #11, !srcloc !111
  %chip.i.i53 = getelementptr inbounds %struct.sccnxp_port, ptr %59, i32 0, i32 5
  %64 = ptrtoint ptr %chip.i.i53 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %chip.i.i53, align 4
  %trwd.i.i54 = getelementptr inbounds %struct.sccnxp_chip, ptr %65, i32 0, i32 7
  %66 = ptrtoint ptr %trwd.i.i54 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %trwd.i.i54, align 4
  %sub.i.i.i55 = add i32 %67, 999
  %div.i.i.i56 = udiv i32 %sub.i.i.i55, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %68(i32 noundef %div.i.i.i56) #11
  %69 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %line.i, align 4
  %71 = shl i32 %70, 3
  %72 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i68 = getelementptr inbounds %struct.device, ptr %73, i32 0, i32 8
  %74 = ptrtoint ptr %driver_data.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %driver_data.i.i.i68, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @arm_heavy_mb() #11
  %76 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %membase.i.i, align 4
  %conv1.i66 = and i32 %71, 248
  %conv.i.i70 = or i32 %conv1.i66, 2
  %78 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %regshift.i.i, align 1
  %conv1.i.i72 = zext i8 %79 to i32
  %shl.i.i73 = shl i32 %conv.i.i70, %conv1.i.i72
  %add.ptr.i.i74 = getelementptr i8, ptr %77, i32 %shl.i.i73
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i74, i8 80) #11, !srcloc !111
  %chip.i.i75 = getelementptr inbounds %struct.sccnxp_port, ptr %75, i32 0, i32 5
  %80 = ptrtoint ptr %chip.i.i75 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %chip.i.i75, align 4
  %trwd.i.i76 = getelementptr inbounds %struct.sccnxp_chip, ptr %81, i32 0, i32 7
  %82 = ptrtoint ptr %trwd.i.i76 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %trwd.i.i76, align 4
  %sub.i.i.i77 = add i32 %83, 999
  %div.i.i.i78 = udiv i32 %sub.i.i.i77, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %84(i32 noundef %div.i.i.i78) #11
  %85 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %line.i, align 4
  %87 = shl i32 %86, 3
  %88 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i90 = getelementptr inbounds %struct.device, ptr %89, i32 0, i32 8
  %90 = ptrtoint ptr %driver_data.i.i.i90 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %driver_data.i.i.i90, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @arm_heavy_mb() #11
  %92 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %membase.i.i, align 4
  %conv1.i88 = and i32 %87, 248
  %conv.i.i92 = or i32 %conv1.i88, 2
  %94 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %regshift.i.i, align 1
  %conv1.i.i94 = zext i8 %95 to i32
  %shl.i.i95 = shl i32 %conv.i.i92, %conv1.i.i94
  %add.ptr.i.i96 = getelementptr i8, ptr %93, i32 %shl.i.i95
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i96, i8 5) #11, !srcloc !111
  %chip.i.i97 = getelementptr inbounds %struct.sccnxp_port, ptr %91, i32 0, i32 5
  %96 = ptrtoint ptr %chip.i.i97 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %chip.i.i97, align 4
  %trwd.i.i98 = getelementptr inbounds %struct.sccnxp_chip, ptr %97, i32 0, i32 7
  %98 = ptrtoint ptr %trwd.i.i98 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %trwd.i.i98, align 4
  %sub.i.i.i99 = add i32 %99, 999
  %div.i.i.i100 = udiv i32 %sub.i.i.i99, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %100(i32 noundef %div.i.i.i100) #11
  %101 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev, align 4
  %driver_data.i.i109 = getelementptr inbounds %struct.device, ptr %102, i32 0, i32 8
  %103 = ptrtoint ptr %driver_data.i.i109 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %driver_data.i.i109, align 4
  %105 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %line.i, align 4
  %mul.i = shl i32 %106, 2
  %shl.i111 = shl i32 2, %mul.i
  %imr.i = getelementptr inbounds %struct.sccnxp_port, ptr %104, i32 0, i32 4
  %107 = ptrtoint ptr %imr.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %imr.i, align 4
  %109 = trunc i32 %shl.i111 to i8
  %conv1.i112 = or i8 %108, %109
  store i8 %conv1.i112, ptr %imr.i, align 4
  %110 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i113 = getelementptr inbounds %struct.device, ptr %110, i32 0, i32 8
  %111 = ptrtoint ptr %driver_data.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %driver_data.i.i.i113, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @arm_heavy_mb() #11
  %113 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %membase.i.i, align 4
  %115 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %regshift.i.i, align 1
  %conv1.i.i116 = zext i8 %116 to i32
  %shl.i.i117 = shl i32 5, %conv1.i.i116
  %add.ptr.i.i118 = getelementptr i8, ptr %114, i32 %shl.i.i117
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i118, i8 %conv1.i112) #11, !srcloc !111
  %chip.i.i119 = getelementptr inbounds %struct.sccnxp_port, ptr %112, i32 0, i32 5
  %117 = ptrtoint ptr %chip.i.i119 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %chip.i.i119, align 4
  %trwd.i.i120 = getelementptr inbounds %struct.sccnxp_chip, ptr %118, i32 0, i32 7
  %119 = ptrtoint ptr %trwd.i.i120 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %trwd.i.i120, align 4
  %sub.i.i.i121 = add i32 %120, 999
  %div.i.i.i122 = udiv i32 %sub.i.i.i121, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %121 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %121(i32 noundef %div.i.i.i122) #11
  %122 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %line.i, align 4
  %arrayidx = getelementptr %struct.sccnxp_port, ptr %3, i32 0, i32 2, i32 %123
  %124 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 1, ptr %arrayidx, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sccnxp_shutdown(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.sccnxp_port, ptr %3, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %line = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %4 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %line, align 4
  %arrayidx = getelementptr %struct.sccnxp_port, ptr %3, i32 0, i32 2, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i, align 4
  %11 = load i32, ptr %line, align 4
  %mul.i = shl i32 %11, 2
  %shl.i = shl i32 3, %mul.i
  %imr.i = getelementptr inbounds %struct.sccnxp_port, ptr %10, i32 0, i32 4
  %12 = ptrtoint ptr %imr.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %imr.i, align 4
  %14 = trunc i32 %shl.i to i8
  %15 = xor i8 %14, -1
  %conv1.i = and i8 %13, %15
  store i8 %conv1.i, ptr %imr.i, align 4
  %16 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @arm_heavy_mb() #11
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %19 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase.i.i, align 4
  %regshift.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %21 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %regshift.i.i, align 1
  %conv1.i.i = zext i8 %22 to i32
  %shl.i.i = shl i32 5, %conv1.i.i
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 %shl.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %conv1.i) #11, !srcloc !111
  %chip.i.i = getelementptr inbounds %struct.sccnxp_port, ptr %18, i32 0, i32 5
  %23 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chip.i.i, align 4
  %trwd.i.i = getelementptr inbounds %struct.sccnxp_chip, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %trwd.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %trwd.i.i, align 4
  %sub.i.i.i = add i32 %26, 999
  %div.i.i.i = udiv i32 %sub.i.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %27(i32 noundef %div.i.i.i) #11
  %28 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %line, align 4
  %30 = shl i32 %29, 3
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i17 = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %driver_data.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %driver_data.i.i.i17, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @arm_heavy_mb() #11
  %35 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase.i.i, align 4
  %conv1.i16 = and i32 %30, 248
  %conv.i.i = or i32 %conv1.i16, 2
  %37 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %regshift.i.i, align 1
  %conv1.i.i20 = zext i8 %38 to i32
  %shl.i.i21 = shl i32 %conv.i.i, %conv1.i.i20
  %add.ptr.i.i22 = getelementptr i8, ptr %36, i32 %shl.i.i21
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i22, i8 10) #11, !srcloc !111
  %chip.i.i23 = getelementptr inbounds %struct.sccnxp_port, ptr %34, i32 0, i32 5
  %39 = ptrtoint ptr %chip.i.i23 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chip.i.i23, align 4
  %trwd.i.i24 = getelementptr inbounds %struct.sccnxp_chip, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %trwd.i.i24 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %trwd.i.i24, align 4
  %sub.i.i.i25 = add i32 %42, 999
  %div.i.i.i26 = udiv i32 %sub.i.i.i25, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %43(i32 noundef %div.i.i.i26) #11
  %chip = getelementptr inbounds %struct.sccnxp_port, ptr %3, i32 0, i32 5
  %44 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %chip, align 4
  %flags6 = getelementptr inbounds %struct.sccnxp_chip, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags6, align 4
  %and = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  %driver_data.i.i34 = getelementptr inbounds %struct.device, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %driver_data.i.i34 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %driver_data.i.i34, align 4
  %52 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %line, align 4
  %arrayidx.i = getelementptr %struct.sccnxp_port, ptr %51, i32 0, i32 10, i32 1, i32 %53
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %55, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %shr.i = lshr i32 %55, 24
  %and5.i = and i32 %shr.i, 15
  %sub.i = add nsw i32 %and5.i, -1
  %shl6.i = shl nuw nsw i32 1, %sub.i
  %conv.i = trunc i32 %shl6.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %56 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %membase.i.i, align 4
  %58 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %regshift.i.i, align 1
  %conv1.i21.i = zext i8 %59 to i32
  %shl.i22.i = shl i32 15, %conv1.i21.i
  %add.ptr.i23.i = getelementptr i8, ptr %57, i32 %shl.i22.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i23.i, i8 %conv.i) #11, !srcloc !111
  %chip.i24.i = getelementptr inbounds %struct.sccnxp_port, ptr %51, i32 0, i32 5
  %60 = ptrtoint ptr %chip.i24.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %chip.i24.i, align 4
  %trwd.i25.i = getelementptr inbounds %struct.sccnxp_chip, ptr %61, i32 0, i32 7
  %62 = ptrtoint ptr %trwd.i25.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %trwd.i25.i, align 4
  %sub.i.i26.i = add i32 %63, 999
  %div.i.i27.i = udiv i32 %sub.i.i26.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %64(i32 noundef %div.i.i27.i) #11
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sccnxp_set_termios(ptr noundef %port, ptr noundef %termios, ptr noundef %old) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.sccnxp_port, ptr %3, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %4 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c_cflag, align 4
  %and = and i32 %5, -1073741825
  store i32 %and, ptr %c_cflag, align 4
  %line.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %6 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %line.i, align 4
  %8 = shl i32 %7, 3
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @arm_heavy_mb() #11
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %13 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i.i, align 4
  %conv1.i = and i32 %8, 248
  %conv.i.i = or i32 %conv1.i, 2
  %regshift.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %15 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %regshift.i.i, align 1
  %conv1.i.i = zext i8 %16 to i32
  %shl.i.i = shl i32 %conv.i.i, %conv1.i.i
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %shl.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 42) #11, !srcloc !111
  %chip.i.i = getelementptr inbounds %struct.sccnxp_port, ptr %12, i32 0, i32 5
  %17 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip.i.i, align 4
  %trwd.i.i = getelementptr inbounds %struct.sccnxp_chip, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %trwd.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %trwd.i.i, align 4
  %sub.i.i.i = add i32 %20, 999
  %div.i.i.i = udiv i32 %sub.i.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %21(i32 noundef %div.i.i.i) #11
  %22 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %line.i, align 4
  %24 = shl i32 %23, 3
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i116 = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %driver_data.i.i.i116 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver_data.i.i.i116, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @arm_heavy_mb() #11
  %29 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase.i.i, align 4
  %conv1.i114 = and i32 %24, 248
  %conv.i.i118 = or i32 %conv1.i114, 2
  %31 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %regshift.i.i, align 1
  %conv1.i.i120 = zext i8 %32 to i32
  %shl.i.i121 = shl i32 %conv.i.i118, %conv1.i.i120
  %add.ptr.i.i122 = getelementptr i8, ptr %30, i32 %shl.i.i121
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i122, i8 48) #11, !srcloc !111
  %chip.i.i123 = getelementptr inbounds %struct.sccnxp_port, ptr %28, i32 0, i32 5
  %33 = ptrtoint ptr %chip.i.i123 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chip.i.i123, align 4
  %trwd.i.i124 = getelementptr inbounds %struct.sccnxp_chip, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %trwd.i.i124 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %trwd.i.i124, align 4
  %sub.i.i.i125 = add i32 %36, 999
  %div.i.i.i126 = udiv i32 %sub.i.i.i125, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %37(i32 noundef %div.i.i.i126) #11
  %38 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %line.i, align 4
  %40 = shl i32 %39, 3
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i138 = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %driver_data.i.i.i138 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %driver_data.i.i.i138, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @arm_heavy_mb() #11
  %45 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %membase.i.i, align 4
  %conv1.i136 = and i32 %40, 248
  %conv.i.i140 = or i32 %conv1.i136, 2
  %47 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %regshift.i.i, align 1
  %conv1.i.i142 = zext i8 %48 to i32
  %shl.i.i143 = shl i32 %conv.i.i140, %conv1.i.i142
  %add.ptr.i.i144 = getelementptr i8, ptr %46, i32 %shl.i.i143
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i144, i8 64) #11, !srcloc !111
  %chip.i.i145 = getelementptr inbounds %struct.sccnxp_port, ptr %44, i32 0, i32 5
  %49 = ptrtoint ptr %chip.i.i145 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chip.i.i145, align 4
  %trwd.i.i146 = getelementptr inbounds %struct.sccnxp_chip, ptr %50, i32 0, i32 7
  %51 = ptrtoint ptr %trwd.i.i146 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %trwd.i.i146, align 4
  %sub.i.i.i147 = add i32 %52, 999
  %div.i.i.i148 = udiv i32 %sub.i.i.i147, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %53(i32 noundef %div.i.i.i148) #11
  %54 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %line.i, align 4
  %56 = shl i32 %55, 3
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i160 = getelementptr inbounds %struct.device, ptr %58, i32 0, i32 8
  %59 = ptrtoint ptr %driver_data.i.i.i160 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %driver_data.i.i.i160, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @arm_heavy_mb() #11
  %61 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %membase.i.i, align 4
  %conv1.i158 = and i32 %56, 248
  %conv.i.i162 = or i32 %conv1.i158, 2
  %63 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %regshift.i.i, align 1
  %conv1.i.i164 = zext i8 %64 to i32
  %shl.i.i165 = shl i32 %conv.i.i162, %conv1.i.i164
  %add.ptr.i.i166 = getelementptr i8, ptr %62, i32 %shl.i.i165
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i166, i8 80) #11, !srcloc !111
  %chip.i.i167 = getelementptr inbounds %struct.sccnxp_port, ptr %60, i32 0, i32 5
  %65 = ptrtoint ptr %chip.i.i167 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %chip.i.i167, align 4
  %trwd.i.i168 = getelementptr inbounds %struct.sccnxp_chip, ptr %66, i32 0, i32 7
  %67 = ptrtoint ptr %trwd.i.i168 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %trwd.i.i168, align 4
  %sub.i.i.i169 = add i32 %68, 999
  %div.i.i.i170 = udiv i32 %sub.i.i.i169, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %69(i32 noundef %div.i.i.i170) #11
  %70 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %c_cflag, align 4
  %and7 = and i32 %71, 48
  %72 = zext i32 %and7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and7, label %sw.default [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 16, label %sw.bb8
    i32 32, label %sw.bb9
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %sw.bb8, %entry.sw.epilog_crit_edge
  %mr1.0 = phi i8 [ 3, %sw.default ], [ 2, %sw.bb9 ], [ 1, %sw.bb8 ], [ 0, %entry.sw.epilog_crit_edge ]
  %and12 = and i32 %71, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool.not = icmp eq i32 %and12, 0
  %and14 = lshr i32 %71, 7
  %73 = trunc i32 %and14 to i8
  %74 = and i8 %73, 4
  %mr1.1.v = select i1 %tobool.not, i8 16, i8 %74
  %mr1.1 = or i8 %mr1.0, %mr1.1.v
  %and24 = and i32 %71, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %conv26 = select i1 %tobool25.not, i8 7, i8 15
  %75 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %line.i, align 4
  %77 = shl i32 %76, 3
  %78 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i182 = getelementptr inbounds %struct.device, ptr %79, i32 0, i32 8
  %80 = ptrtoint ptr %driver_data.i.i.i182 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %driver_data.i.i.i182, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @arm_heavy_mb() #11
  %82 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %membase.i.i, align 4
  %conv1.i180 = and i32 %77, 248
  %conv.i.i184 = or i32 %conv1.i180, 2
  %84 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %regshift.i.i, align 1
  %conv1.i.i186 = zext i8 %85 to i32
  %shl.i.i187 = shl i32 %conv.i.i184, %conv1.i.i186
  %add.ptr.i.i188 = getelementptr i8, ptr %83, i32 %shl.i.i187
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i188, i8 16) #11, !srcloc !111
  %chip.i.i189 = getelementptr inbounds %struct.sccnxp_port, ptr %81, i32 0, i32 5
  %86 = ptrtoint ptr %chip.i.i189 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %chip.i.i189, align 4
  %trwd.i.i190 = getelementptr inbounds %struct.sccnxp_chip, ptr %87, i32 0, i32 7
  %88 = ptrtoint ptr %trwd.i.i190 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %trwd.i.i190, align 4
  %sub.i.i.i191 = add i32 %89, 999
  %div.i.i.i192 = udiv i32 %sub.i.i.i191, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %90(i32 noundef %div.i.i.i192) #11
  %91 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %line.i, align 4
  %93 = shl i32 %92, 3
  %94 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i203 = getelementptr inbounds %struct.device, ptr %95, i32 0, i32 8
  %96 = ptrtoint ptr %driver_data.i.i.i203 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %driver_data.i.i.i203, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @arm_heavy_mb() #11
  %98 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %membase.i.i, align 4
  %conv.i.i205 = and i32 %93, 248
  %100 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %regshift.i.i, align 1
  %conv1.i.i207 = zext i8 %101 to i32
  %shl.i.i208 = shl i32 %conv.i.i205, %conv1.i.i207
  %add.ptr.i.i209 = getelementptr i8, ptr %99, i32 %shl.i.i208
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i209, i8 %mr1.1) #11, !srcloc !111
  %chip.i.i210 = getelementptr inbounds %struct.sccnxp_port, ptr %97, i32 0, i32 5
  %102 = ptrtoint ptr %chip.i.i210 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %chip.i.i210, align 4
  %trwd.i.i211 = getelementptr inbounds %struct.sccnxp_chip, ptr %103, i32 0, i32 7
  %104 = ptrtoint ptr %trwd.i.i211 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %trwd.i.i211, align 4
  %sub.i.i.i212 = add i32 %105, 999
  %div.i.i.i213 = udiv i32 %sub.i.i.i212, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %106(i32 noundef %div.i.i.i213) #11
  %107 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %line.i, align 4
  %109 = shl i32 %108, 3
  %110 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i224 = getelementptr inbounds %struct.device, ptr %111, i32 0, i32 8
  %112 = ptrtoint ptr %driver_data.i.i.i224 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %driver_data.i.i.i224, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @arm_heavy_mb() #11
  %114 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %membase.i.i, align 4
  %conv.i.i226 = and i32 %109, 248
  %116 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %regshift.i.i, align 1
  %conv1.i.i228 = zext i8 %117 to i32
  %shl.i.i229 = shl i32 %conv.i.i226, %conv1.i.i228
  %add.ptr.i.i230 = getelementptr i8, ptr %115, i32 %shl.i.i229
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i230, i8 %conv26) #11, !srcloc !111
  %chip.i.i231 = getelementptr inbounds %struct.sccnxp_port, ptr %113, i32 0, i32 5
  %118 = ptrtoint ptr %chip.i.i231 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %chip.i.i231, align 4
  %trwd.i.i232 = getelementptr inbounds %struct.sccnxp_chip, ptr %119, i32 0, i32 7
  %120 = ptrtoint ptr %trwd.i.i232 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %trwd.i.i232, align 4
  %sub.i.i.i233 = add i32 %121, 999
  %div.i.i.i234 = udiv i32 %sub.i.i.i233, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %122 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %122(i32 noundef %div.i.i.i234) #11
  %read_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 28
  %123 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 16, ptr %read_status_mask, align 4
  %124 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %termios, align 4
  %and27 = and i32 %125, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %spec.store.select = select i1 %tobool28.not, i32 16, i32 112
  %126 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %spec.store.select, ptr %read_status_mask, align 4
  %127 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %termios, align 4
  %and34 = and i32 %128, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %sw.epilog.if.end39_crit_edge, label %if.then36

sw.epilog.if.end39_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then36:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %or38 = or i32 %spec.store.select, 128
  %129 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %or38, ptr %read_status_mask, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %sw.epilog.if.end39_crit_edge
  %ignore_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 29
  %130 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %ignore_status_mask, align 4
  %131 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %termios, align 4
  %and41 = shl i32 %132, 7
  %133 = and i32 %and41, 128
  store i32 %133, ptr %ignore_status_mask, align 4
  %134 = load i32, ptr %termios, align 4
  %and48 = and i32 %134, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end39.if.end53_crit_edge, label %if.then50

if.end39.if.end53_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then50:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  %or52 = or i32 %133, 32
  %135 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %or52, ptr %ignore_status_mask, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end39.if.end53_crit_edge
  %136 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %c_cflag, align 4
  %and55 = and i32 %137, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.then57, label %if.end53.if.end60_crit_edge

if.end53.if.end60_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  %138 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %ignore_status_mask, align 4
  %or59 = or i32 %139, 240
  store i32 %or59, ptr %ignore_status_mask, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %if.end53.if.end60_crit_edge
  %chip = getelementptr inbounds %struct.sccnxp_port, ptr %3, i32 0, i32 5
  %140 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %chip, align 4
  %flags61 = getelementptr inbounds %struct.sccnxp_chip, ptr %141, i32 0, i32 5
  %142 = ptrtoint ptr %flags61 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %flags61, align 4
  %and62 = and i32 %143, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  %cond64 = select i1 %tobool63.not, i32 38400, i32 230400
  %call65 = tail call i32 @uart_get_baud_rate(ptr noundef %port, ptr noundef %termios, ptr noundef %old, i32 noundef 50, i32 noundef %cond64) #11
  %call66 = tail call fastcc i32 @sccnxp_set_baud(ptr noundef %port, i32 noundef %call65)
  %144 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %c_cflag, align 4
  tail call void @uart_update_timeout(ptr noundef %port, i32 noundef %145, i32 noundef %call66) #11
  %call68 = tail call i32 @tty_termios_baud_rate(ptr noundef %termios) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end60.if.end71_crit_edge, label %if.then70

if.end60.if.end71_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

if.then70:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @tty_termios_encode_baud_rate(ptr noundef %termios, i32 noundef %call66, i32 noundef %call66) #11
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %if.end60.if.end71_crit_edge
  %146 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %line.i, align 4
  %148 = shl i32 %147, 3
  %149 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i246 = getelementptr inbounds %struct.device, ptr %150, i32 0, i32 8
  %151 = ptrtoint ptr %driver_data.i.i.i246 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %driver_data.i.i.i246, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @arm_heavy_mb() #11
  %153 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %membase.i.i, align 4
  %conv1.i244 = and i32 %148, 248
  %conv.i.i248 = or i32 %conv1.i244, 2
  %155 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %regshift.i.i, align 1
  %conv1.i.i250 = zext i8 %156 to i32
  %shl.i.i251 = shl i32 %conv.i.i248, %conv1.i.i250
  %add.ptr.i.i252 = getelementptr i8, ptr %154, i32 %shl.i.i251
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i252, i8 5) #11, !srcloc !111
  %chip.i.i253 = getelementptr inbounds %struct.sccnxp_port, ptr %152, i32 0, i32 5
  %157 = ptrtoint ptr %chip.i.i253 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %chip.i.i253, align 4
  %trwd.i.i254 = getelementptr inbounds %struct.sccnxp_chip, ptr %158, i32 0, i32 7
  %159 = ptrtoint ptr %trwd.i.i254 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %trwd.i.i254, align 4
  %sub.i.i.i255 = add i32 %160, 999
  %div.i.i.i256 = udiv i32 %sub.i.i.i255, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %161 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %161(i32 noundef %div.i.i.i256) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @sccnxp_type(ptr nocapture noundef readonly %port) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 82, i32 %1)
  %cmp = icmp eq i32 %1, 82
  br i1 %cmp, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %chip = getelementptr inbounds %struct.sccnxp_port, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %9, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sccnxp_release_port(ptr nocapture noundef %port) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sccnxp_request_port(ptr nocapture noundef readnone %port) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @sccnxp_config_port(ptr nocapture noundef writeonly %port, i32 noundef %flags) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 82, ptr %type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sccnxp_verify_port(ptr nocapture noundef readonly %port, ptr nocapture noundef readonly %s) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %1, label %if.end [
    i32 0, label %entry.return_crit_edge
    i32 82, label %entry.return_crit_edge9
  ]

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %irq = getelementptr inbounds %struct.serial_struct, ptr %s, i32 0, i32 3
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  %irq3 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %5 = ptrtoint ptr %irq3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp4 = icmp eq i32 %4, %6
  %. = select i1 %cmp4, i32 0, i32 -22
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge, %entry.return_crit_edge9
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %entry.return_crit_edge9 ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sccnxp_set_baud(ptr noundef readonly %port, i32 noundef %baud) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %chip1 = getelementptr inbounds %struct.sccnxp_port, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip1, align 4
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %6 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %uartclk, align 4
  %mul = shl i32 %baud, 5
  %div = sdiv i32 %mul, 2
  %add = add i32 %7, %div
  %div2 = udiv i32 %add, %mul
  %8 = add i32 %div2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 65534, i32 %8)
  %9 = icmp ult i32 %8, 65534
  br i1 %9, label %if.then, label %entry.for.body.lr.ph_crit_edge

entry.for.body.lr.ph_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.lr.ph

if.then:                                          ; preds = %entry
  %mul7 = shl nuw nsw i32 %div2, 5
  %div9262 = shl nuw nsw i32 %div2, 4
  %add10 = add i32 %div9262, %7
  %div11 = udiv i32 %add10, %mul7
  %sub.i = sub i32 %baud, %div11
  %10 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #11
  %11 = lshr i32 %div2, 8
  %conv = trunc i32 %11 to i8
  %line.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %12 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %line.i, align 4
  %14 = shl i32 %13, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @arm_heavy_mb() #11
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %15 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i.i, align 4
  %conv1.i = and i32 %14, 248
  %conv.i.i = or i32 %conv1.i, 6
  %regshift.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %17 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %regshift.i.i, align 1
  %conv1.i.i = zext i8 %18 to i32
  %shl.i.i = shl i32 %conv.i.i, %conv1.i.i
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 %shl.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %conv) #11, !srcloc !111
  %19 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip1, align 4
  %trwd.i.i = getelementptr inbounds %struct.sccnxp_chip, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %trwd.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %trwd.i.i, align 4
  %sub.i.i.i = add i32 %22, 999
  %div.i.i.i = udiv i32 %sub.i.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %23(i32 noundef %div.i.i.i) #11
  %conv13 = trunc i32 %div2 to i8
  %24 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %line.i, align 4
  %26 = shl i32 %25, 3
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i124 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %driver_data.i.i.i124 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %driver_data.i.i.i124, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @arm_heavy_mb() #11
  %31 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %membase.i.i, align 4
  %conv1.i122 = and i32 %26, 248
  %conv.i.i126 = or i32 %conv1.i122, 7
  %33 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %regshift.i.i, align 1
  %conv1.i.i128 = zext i8 %34 to i32
  %shl.i.i129 = shl i32 %conv.i.i126, %conv1.i.i128
  %add.ptr.i.i130 = getelementptr i8, ptr %32, i32 %shl.i.i129
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i130, i8 %conv13) #11, !srcloc !111
  %chip.i.i131 = getelementptr inbounds %struct.sccnxp_port, ptr %30, i32 0, i32 5
  %35 = ptrtoint ptr %chip.i.i131 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chip.i.i131, align 4
  %trwd.i.i132 = getelementptr inbounds %struct.sccnxp_chip, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %trwd.i.i132 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %trwd.i.i132, align 4
  %sub.i.i.i133 = add i32 %38, 999
  %div.i.i.i134 = udiv i32 %sub.i.i.i133, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %39(i32 noundef %div.i.i.i134) #11
  %40 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %line.i, align 4
  %42 = shl i32 %41, 3
  %conv1.i144 = add i32 %42, 14
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i146 = getelementptr inbounds %struct.device, ptr %44, i32 0, i32 8
  %45 = ptrtoint ptr %driver_data.i.i.i146 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %driver_data.i.i.i146, align 4
  %47 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %membase.i.i, align 4
  %conv.i.i148 = and i32 %conv1.i144, 254
  %49 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %regshift.i.i, align 1
  %conv1.i.i150 = zext i8 %50 to i32
  %shl.i.i151 = shl i32 %conv.i.i148, %conv1.i.i150
  %add.ptr.i.i152 = getelementptr i8, ptr %48, i32 %shl.i.i151
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i152) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !114
  %chip.i.i153 = getelementptr inbounds %struct.sccnxp_port, ptr %46, i32 0, i32 5
  %52 = ptrtoint ptr %chip.i.i153 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chip.i.i153, align 4
  %trwd.i.i154 = getelementptr inbounds %struct.sccnxp_chip, ptr %53, i32 0, i32 7
  %54 = ptrtoint ptr %trwd.i.i154 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %trwd.i.i154, align 4
  %sub.i.i.i155 = add i32 %55, 999
  %div.i.i.i156 = udiv i32 %sub.i.i.i155, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %56(i32 noundef %div.i.i.i156) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %div11, i32 %baud)
  %tobool16.not264 = icmp eq i32 %div11, %baud
  br i1 %tobool16.not264, label %if.then.for.end_crit_edge, label %if.then.for.body.lr.ph_crit_edge

if.then.for.body.lr.ph_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.lr.ph

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then.for.body.lr.ph_crit_edge, %entry.for.body.lr.ph_crit_edge
  %bestbaud.0287 = phi i32 [ %div11, %if.then.for.body.lr.ph_crit_edge ], [ 2147483647, %entry.for.body.lr.ph_crit_edge ]
  %csr.0286 = phi i8 [ 13, %if.then.for.body.lr.ph_crit_edge ], [ 0, %entry.for.body.lr.ph_crit_edge ]
  %besterr.1285 = phi i32 [ %10, %if.then.for.body.lr.ph_crit_edge ], [ 2147483647, %entry.for.body.lr.ph_crit_edge ]
  %flags = getelementptr inbounds %struct.sccnxp_chip, ptr %5, i32 0, i32 5
  %freq_std = getelementptr inbounds %struct.sccnxp_chip, ptr %5, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %baud15277 = phi ptr [ getelementptr inbounds ([29 x %struct.anon.87], ptr @baud_std, i32 0, i32 0, i32 3), %for.body.lr.ph ], [ %baud15, %for.inc.for.body_crit_edge ]
  %arrayidx276 = phi ptr [ @baud_std, %for.body.lr.ph ], [ %arrayidx, %for.inc.for.body_crit_edge ]
  %bestbaud.1273 = phi i32 [ %bestbaud.0287, %for.body.lr.ph ], [ %bestbaud.2, %for.inc.for.body_crit_edge ]
  %acr.0270 = phi i8 [ 0, %for.body.lr.ph ], [ %acr.1, %for.inc.for.body_crit_edge ]
  %csr.1268 = phi i8 [ %csr.0286, %for.body.lr.ph ], [ %csr.2, %for.inc.for.body_crit_edge ]
  %mr0.0266 = phi i8 [ 0, %for.body.lr.ph ], [ %mr0.1, %for.inc.for.body_crit_edge ]
  %besterr.2265 = phi i32 [ %besterr.1285, %for.body.lr.ph ], [ %besterr.4, %for.inc.for.body_crit_edge ]
  %mr019 = getelementptr [29 x %struct.anon.87], ptr @baud_std, i32 0, i32 %indvars.iv, i32 2
  %57 = lshr i32 291368063, %indvars.iv
  %58 = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool21.not.not = icmp eq i32 %58, 0
  br i1 %tobool21.not.not, label %land.lhs.true22, label %for.body.if.end25_crit_edge

for.body.if.end25_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

land.lhs.true22:                                  ; preds = %for.body
  %59 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags, align 4
  %and = and i32 %60, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %land.lhs.true22.for.inc_crit_edge, label %land.lhs.true22.if.end25_crit_edge

land.lhs.true22.if.end25_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

land.lhs.true22.for.inc_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end25:                                         ; preds = %land.lhs.true22.if.end25_crit_edge, %for.body.if.end25_crit_edge
  %61 = ptrtoint ptr %freq_std to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %freq_std, align 4
  %63 = ptrtoint ptr %baud15277 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %baud15277, align 4
  %div32 = sdiv i32 %64, 2
  %add33 = add i32 %div32, %62
  %div34 = udiv i32 %add33, %64
  %65 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %uartclk, align 4
  %div39 = sdiv i32 %div34, 2
  %add40 = add i32 %66, %div39
  %div41 = udiv i32 %add40, %div34
  %sub.i163 = sub i32 %baud, %div41
  %67 = tail call i32 @llvm.abs.i32(i32 %sub.i163, i1 false) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %besterr.2265, i32 %67)
  %cmp2.i164 = icmp sgt i32 %besterr.2265, %67
  br i1 %cmp2.i164, label %if.then44, label %if.end25.for.inc_crit_edge

if.end25.for.inc_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then44:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %acr47 = getelementptr [29 x %struct.anon.87], ptr @baud_std, i32 0, i32 %indvars.iv, i32 1
  %68 = ptrtoint ptr %acr47 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %acr47, align 1
  %70 = ptrtoint ptr %arrayidx276 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx276, align 4
  %72 = ptrtoint ptr %mr019 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %mr019, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then44, %if.end25.for.inc_crit_edge, %land.lhs.true22.for.inc_crit_edge
  %besterr.4 = phi i32 [ %besterr.2265, %land.lhs.true22.for.inc_crit_edge ], [ %67, %if.then44 ], [ %besterr.2265, %if.end25.for.inc_crit_edge ]
  %mr0.1 = phi i8 [ %mr0.0266, %land.lhs.true22.for.inc_crit_edge ], [ %73, %if.then44 ], [ %mr0.0266, %if.end25.for.inc_crit_edge ]
  %csr.2 = phi i8 [ %csr.1268, %land.lhs.true22.for.inc_crit_edge ], [ %71, %if.then44 ], [ %csr.1268, %if.end25.for.inc_crit_edge ]
  %acr.1 = phi i8 [ %acr.0270, %land.lhs.true22.for.inc_crit_edge ], [ %69, %if.then44 ], [ %acr.0270, %if.end25.for.inc_crit_edge ]
  %bestbaud.2 = phi i32 [ %bestbaud.1273, %land.lhs.true22.for.inc_crit_edge ], [ %div41, %if.then44 ], [ %bestbaud.1273, %if.end25.for.inc_crit_edge ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %arrayidx = getelementptr [29 x %struct.anon.87], ptr @baud_std, i32 0, i32 %indvars.iv.next
  %baud15 = getelementptr [29 x %struct.anon.87], ptr @baud_std, i32 0, i32 %indvars.iv.next, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %indvars.iv.next)
  %tobool.not = icmp eq i32 %indvars.iv.next, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %besterr.4)
  %tobool16.not = icmp eq i32 %besterr.4, 0
  %or.cond263 = select i1 %tobool.not, i1 true, i1 %tobool16.not
  br i1 %or.cond263, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then.for.end_crit_edge
  %mr0.0.lcssa = phi i8 [ 0, %if.then.for.end_crit_edge ], [ %mr0.1, %for.inc.for.end_crit_edge ]
  %csr.1.lcssa = phi i8 [ 13, %if.then.for.end_crit_edge ], [ %csr.2, %for.inc.for.end_crit_edge ]
  %acr.0.lcssa = phi i8 [ 0, %if.then.for.end_crit_edge ], [ %acr.1, %for.inc.for.end_crit_edge ]
  %bestbaud.1.lcssa = phi i32 [ %div11, %if.then.for.end_crit_edge ], [ %bestbaud.2, %for.inc.for.end_crit_edge ]
  %flags55 = getelementptr inbounds %struct.sccnxp_chip, ptr %5, i32 0, i32 5
  %74 = ptrtoint ptr %flags55 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flags55, align 4
  %and56 = and i32 %75, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %for.end.if.end61_crit_edge, label %if.then58

for.end.if.end61_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then58:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %76 = or i8 %mr0.0.lcssa, 24
  %line.i168 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %77 = ptrtoint ptr %line.i168 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %line.i168, align 4
  %79 = shl i32 %78, 3
  %80 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i172 = getelementptr inbounds %struct.device, ptr %81, i32 0, i32 8
  %82 = ptrtoint ptr %driver_data.i.i.i172 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %driver_data.i.i.i172, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @arm_heavy_mb() #11
  %membase.i.i173 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %84 = ptrtoint ptr %membase.i.i173 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %membase.i.i173, align 4
  %conv1.i170 = and i32 %79, 248
  %conv.i.i174 = or i32 %conv1.i170, 2
  %regshift.i.i175 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %86 = ptrtoint ptr %regshift.i.i175 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %regshift.i.i175, align 1
  %conv1.i.i176 = zext i8 %87 to i32
  %shl.i.i177 = shl i32 %conv.i.i174, %conv1.i.i176
  %add.ptr.i.i178 = getelementptr i8, ptr %85, i32 %shl.i.i177
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i178, i8 -80) #11, !srcloc !111
  %chip.i.i179 = getelementptr inbounds %struct.sccnxp_port, ptr %83, i32 0, i32 5
  %88 = ptrtoint ptr %chip.i.i179 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %chip.i.i179, align 4
  %trwd.i.i180 = getelementptr inbounds %struct.sccnxp_chip, ptr %89, i32 0, i32 7
  %90 = ptrtoint ptr %trwd.i.i180 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %trwd.i.i180, align 4
  %sub.i.i.i181 = add i32 %91, 999
  %div.i.i.i182 = udiv i32 %sub.i.i.i181, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %92(i32 noundef %div.i.i.i182) #11
  %93 = ptrtoint ptr %line.i168 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %line.i168, align 4
  %95 = shl i32 %94, 3
  %96 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i193 = getelementptr inbounds %struct.device, ptr %97, i32 0, i32 8
  %98 = ptrtoint ptr %driver_data.i.i.i193 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %driver_data.i.i.i193, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @arm_heavy_mb() #11
  %100 = ptrtoint ptr %membase.i.i173 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %membase.i.i173, align 4
  %conv.i.i195 = and i32 %95, 248
  %102 = ptrtoint ptr %regshift.i.i175 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %regshift.i.i175, align 1
  %conv1.i.i197 = zext i8 %103 to i32
  %shl.i.i198 = shl i32 %conv.i.i195, %conv1.i.i197
  %add.ptr.i.i199 = getelementptr i8, ptr %101, i32 %shl.i.i198
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i199, i8 %76) #11, !srcloc !111
  %chip.i.i200 = getelementptr inbounds %struct.sccnxp_port, ptr %99, i32 0, i32 5
  %104 = ptrtoint ptr %chip.i.i200 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %chip.i.i200, align 4
  %trwd.i.i201 = getelementptr inbounds %struct.sccnxp_chip, ptr %105, i32 0, i32 7
  %106 = ptrtoint ptr %trwd.i.i201 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %trwd.i.i201, align 4
  %sub.i.i.i202 = add i32 %107, 999
  %div.i.i.i203 = udiv i32 %sub.i.i.i202, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %108 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %108(i32 noundef %div.i.i.i203) #11
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %for.end.if.end61_crit_edge
  %109 = or i8 %acr.0.lcssa, 96
  %line.i211 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %110 = ptrtoint ptr %line.i211 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %line.i211, align 4
  %112 = shl i32 %111, 3
  %113 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i215 = getelementptr inbounds %struct.device, ptr %114, i32 0, i32 8
  %115 = ptrtoint ptr %driver_data.i.i.i215 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %driver_data.i.i.i215, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @arm_heavy_mb() #11
  %membase.i.i216 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %117 = ptrtoint ptr %membase.i.i216 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %membase.i.i216, align 4
  %conv1.i213 = and i32 %112, 248
  %conv.i.i217 = or i32 %conv1.i213, 4
  %regshift.i.i218 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %119 = ptrtoint ptr %regshift.i.i218 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %regshift.i.i218, align 1
  %conv1.i.i219 = zext i8 %120 to i32
  %shl.i.i220 = shl i32 %conv.i.i217, %conv1.i.i219
  %add.ptr.i.i221 = getelementptr i8, ptr %118, i32 %shl.i.i220
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i221, i8 %109) #11, !srcloc !111
  %chip.i.i222 = getelementptr inbounds %struct.sccnxp_port, ptr %116, i32 0, i32 5
  %121 = ptrtoint ptr %chip.i.i222 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %chip.i.i222, align 4
  %trwd.i.i223 = getelementptr inbounds %struct.sccnxp_chip, ptr %122, i32 0, i32 7
  %123 = ptrtoint ptr %trwd.i.i223 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %trwd.i.i223, align 4
  %sub.i.i.i224 = add i32 %124, 999
  %div.i.i.i225 = udiv i32 %sub.i.i.i224, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %125 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %125(i32 noundef %div.i.i.i225) #11
  %shl = shl i8 %csr.1.lcssa, 4
  %or67 = or i8 %shl, %csr.1.lcssa
  %126 = ptrtoint ptr %line.i211 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %line.i211, align 4
  %128 = shl i32 %127, 3
  %129 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i237 = getelementptr inbounds %struct.device, ptr %130, i32 0, i32 8
  %131 = ptrtoint ptr %driver_data.i.i.i237 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %driver_data.i.i.i237, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @arm_heavy_mb() #11
  %133 = ptrtoint ptr %membase.i.i216 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %membase.i.i216, align 4
  %conv1.i235 = and i32 %128, 248
  %conv.i.i239 = or i32 %conv1.i235, 1
  %135 = ptrtoint ptr %regshift.i.i218 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %regshift.i.i218, align 1
  %conv1.i.i241 = zext i8 %136 to i32
  %shl.i.i242 = shl i32 %conv.i.i239, %conv1.i.i241
  %add.ptr.i.i243 = getelementptr i8, ptr %134, i32 %shl.i.i242
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i243, i8 %or67) #11, !srcloc !111
  %chip.i.i244 = getelementptr inbounds %struct.sccnxp_port, ptr %132, i32 0, i32 5
  %137 = ptrtoint ptr %chip.i.i244 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %chip.i.i244, align 4
  %trwd.i.i245 = getelementptr inbounds %struct.sccnxp_chip, ptr %138, i32 0, i32 7
  %139 = ptrtoint ptr %trwd.i.i245 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %trwd.i.i245, align 4
  %sub.i.i.i246 = add i32 %140, 999
  %div.i.i.i247 = udiv i32 %sub.i.i.i246, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %141 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %141(i32 noundef %div.i.i.i247) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %bestbaud.1.lcssa, i32 %baud)
  %cmp69.not = icmp eq i32 %bestbaud.1.lcssa, %baud
  br i1 %cmp69.not, label %if.end61.if.end80_crit_edge, label %do.body

if.end61.if.end80_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80

do.body:                                          ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sccnxp_set_baud.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sccnxp_set_baud, %if.then77)) #11
          to label %if.end80 [label %if.then77], !srcloc !116

if.then77:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %142 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sccnxp_set_baud.__UNIQUE_ID_ddebug288, ptr noundef %143, ptr noundef nonnull @.str.33, i32 noundef %baud, i32 noundef %bestbaud.1.lcssa) #11
  br label %if.end80

if.end80:                                         ; preds = %if.then77, %do.body, %if.end61.if.end80_crit_edge
  ret i32 %bestbaud.1.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sccnxp_handle_events(ptr noundef %s) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.sccnxp_port, ptr %s, i32 0, i32 1, i32 0, i32 45
  %membase.i = getelementptr inbounds %struct.sccnxp_port, ptr %s, i32 0, i32 1, i32 0, i32 2
  %regshift.i = getelementptr inbounds %struct.sccnxp_port, ptr %s, i32 0, i32 1, i32 0, i32 25
  %imr = getelementptr inbounds %struct.sccnxp_port, ptr %s, i32 0, i32 4
  %nr = getelementptr inbounds %struct.uart_driver, ptr %s, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %do.body.backedge, %entry
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  %6 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %regshift.i, align 1
  %conv1.i = zext i8 %7 to i32
  %shl.i = shl i32 5, %conv1.i
  %add.ptr.i = getelementptr i8, ptr %5, i32 %shl.i
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !114
  %chip.i = getelementptr inbounds %struct.sccnxp_port, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip.i, align 4
  %trwd.i = getelementptr inbounds %struct.sccnxp_chip, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %trwd.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %trwd.i, align 4
  %sub.i.i = add i32 %12, 999
  %div.i.i = udiv i32 %sub.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %13(i32 noundef %div.i.i) #11
  %14 = ptrtoint ptr %imr to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %imr, align 4
  %and45 = and i8 %15, %8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and45)
  %tobool.not = icmp eq i8 %and45, 0
  br i1 %tobool.not, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.body
  %16 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp139 = icmp sgt i32 %17, 0
  br i1 %cmp139, label %for.body.lr.ph, label %for.cond.preheader.do.body.backedge_crit_edge

for.cond.preheader.do.body.backedge_crit_edge:    ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.backedge

do.body.backedge:                                 ; preds = %for.inc.do.body.backedge_crit_edge, %for.cond.preheader.do.body.backedge_crit_edge
  br label %do.body

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %conv7 = zext i8 %and45 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0140 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx4 = getelementptr %struct.sccnxp_port, ptr %s, i32 0, i32 2, i32 %i.0140
  %18 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx4, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool5.not = icmp eq i8 %19, 0
  br i1 %tobool5.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %mul = shl i32 %i.0140, 2
  %add = or i32 %mul, 1
  %shl = shl nuw i32 1, %add
  %and8 = and i32 %shl, %conv7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %land.lhs.true.if.end13_crit_edge, label %if.then10

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then10:                                        ; preds = %land.lhs.true
  %arrayidx12 = getelementptr %struct.sccnxp_port, ptr %s, i32 0, i32 1, i32 %i.0140
  %line.i.i = getelementptr %struct.sccnxp_port, ptr %s, i32 0, i32 1, i32 %i.0140, i32 41
  %dev.i.i.i = getelementptr %struct.sccnxp_port, ptr %s, i32 0, i32 1, i32 %i.0140, i32 45
  %membase.i.i.i = getelementptr %struct.sccnxp_port, ptr %s, i32 0, i32 1, i32 %i.0140, i32 2
  %regshift.i.i.i = getelementptr %struct.sccnxp_port, ptr %s, i32 0, i32 1, i32 %i.0140, i32 25
  %rx.i = getelementptr %struct.sccnxp_port, ptr %s, i32 0, i32 1, i32 %i.0140, i32 31, i32 4
  %brk.i = getelementptr %struct.sccnxp_port, ptr %s, i32 0, i32 1, i32 %i.0140, i32 31, i32 9
  %parity.i = getelementptr %struct.sccnxp_port, ptr %s, i32 0, i32 1, i32 %i.0140, i32 31, i32 8
  %frame.i = getelementptr %struct.sccnxp_port, ptr %s, i32 0, i32 1, i32 %i.0140, i32 31, i32 6
  %overrun.i = getelementptr %struct.sccnxp_port, ptr %s, i32 0, i32 1, i32 %i.0140, i32 31, i32 7
  %read_status_mask.i = getelementptr %struct.sccnxp_port, ptr %s, i32 0, i32 1, i32 %i.0140, i32 28
  %sysrq.i.i = getelementptr %struct.sccnxp_port, ptr %s, i32 0, i32 1, i32 %i.0140, i32 46
  %ignore_status_mask.i = getelementptr %struct.sccnxp_port, ptr %s, i32 0, i32 1, i32 %i.0140, i32 29
  %state1.i = getelementptr %struct.sccnxp_port, ptr %s, i32 0, i32 1, i32 %i.0140, i32 30
  %handle_break.i = getelementptr %struct.sccnxp_port, ptr %s, i32 0, i32 1, i32 %i.0140, i32 17
  %has_sysrq.i = getelementptr %struct.sccnxp_port, ptr %s, i32 0, i32 1, i32 %i.0140, i32 48
  %cons.i = getelementptr %struct.sccnxp_port, ptr %s, i32 0, i32 1, i32 %i.0140, i32 32
  %flags.i91 = getelementptr %struct.sccnxp_port, ptr %s, i32 0, i32 1, i32 %i.0140, i32 33
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.backedge, %if.then10
  %20 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %line.i.i, align 4
  %22 = shl i32 %21, 3
  %23 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i.i.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %27 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase.i.i.i, align 4
  %conv1.i.i = and i32 %22, 248
  %conv.i.i.i = or i32 %conv1.i.i, 1
  %29 = ptrtoint ptr %regshift.i.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %regshift.i.i.i, align 1
  %conv1.i.i.i = zext i8 %30 to i32
  %shl.i.i.i = shl i32 %conv.i.i.i, %conv1.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %28, i32 %shl.i.i.i
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !114
  %chip.i.i.i = getelementptr inbounds %struct.sccnxp_port, ptr %26, i32 0, i32 5
  %32 = ptrtoint ptr %chip.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chip.i.i.i, align 4
  %trwd.i.i.i = getelementptr inbounds %struct.sccnxp_chip, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %trwd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %trwd.i.i.i, align 4
  %sub.i.i.i.i = add i32 %35, 999
  %div.i.i.i.i = udiv i32 %sub.i.i.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %36(i32 noundef %div.i.i.i.i) #11
  %37 = and i8 %31, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i, label %sccnxp_handle_rx.exit, label %if.end.i

if.end.i:                                         ; preds = %for.cond.i
  %and2.i = and i8 %31, -16
  %38 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %line.i.i, align 4
  %40 = shl i32 %39, 3
  %41 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i.i.i, align 4
  %driver_data.i.i.i114.i = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %driver_data.i.i.i114.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %driver_data.i.i.i114.i, align 4
  %45 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %membase.i.i.i, align 4
  %conv1.i112.i = and i32 %40, 248
  %conv.i.i116.i = or i32 %conv1.i112.i, 3
  %47 = ptrtoint ptr %regshift.i.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %regshift.i.i.i, align 1
  %conv1.i.i118.i = zext i8 %48 to i32
  %shl.i.i119.i = shl i32 %conv.i.i116.i, %conv1.i.i118.i
  %add.ptr.i.i120.i = getelementptr i8, ptr %46, i32 %shl.i.i119.i
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i120.i) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !114
  %chip.i.i121.i = getelementptr inbounds %struct.sccnxp_port, ptr %44, i32 0, i32 5
  %50 = ptrtoint ptr %chip.i.i121.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %chip.i.i121.i, align 4
  %trwd.i.i122.i = getelementptr inbounds %struct.sccnxp_chip, ptr %51, i32 0, i32 7
  %52 = ptrtoint ptr %trwd.i.i122.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %trwd.i.i122.i, align 4
  %sub.i.i.i123.i = add i32 %53, 999
  %div.i.i.i124.i = udiv i32 %sub.i.i.i123.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %54(i32 noundef %div.i.i.i124.i) #11
  %conv5.i = zext i8 %49 to i32
  %55 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rx.i, align 4
  %inc.i = add i32 %56, 1
  store i32 %inc.i, ptr %rx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and2.i)
  %tobool6.not.i = icmp eq i8 %and2.i, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end70.i_crit_edge, label %if.then9.i, !prof !117

if.end.i.if.end70.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70.i

if.then9.i:                                       ; preds = %if.end.i
  %conv10.i = zext i8 %and2.i to i32
  %and11.i = and i32 %conv10.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.else.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.then9.i
  %57 = ptrtoint ptr %brk.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %brk.i, align 4
  %inc15.i = add i32 %58, 1
  store i32 %inc15.i, ptr %brk.i, align 4
  %59 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %line.i.i, align 4
  %61 = shl i32 %60, 3
  %62 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i.i.i, align 4
  %driver_data.i.i.i96 = getelementptr inbounds %struct.device, ptr %63, i32 0, i32 8
  %64 = ptrtoint ptr %driver_data.i.i.i96 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %driver_data.i.i.i96, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @arm_heavy_mb() #11
  %66 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %membase.i.i.i, align 4
  %conv1.i94 = and i32 %61, 248
  %conv.i.i98 = or i32 %conv1.i94, 2
  %68 = ptrtoint ptr %regshift.i.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %regshift.i.i.i, align 1
  %conv1.i.i100 = zext i8 %69 to i32
  %shl.i.i101 = shl i32 %conv.i.i98, %conv1.i.i100
  %add.ptr.i.i102 = getelementptr i8, ptr %67, i32 %shl.i.i101
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i102, i8 80) #11, !srcloc !111
  %chip.i.i103 = getelementptr inbounds %struct.sccnxp_port, ptr %65, i32 0, i32 5
  %70 = ptrtoint ptr %chip.i.i103 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %chip.i.i103, align 4
  %trwd.i.i104 = getelementptr inbounds %struct.sccnxp_chip, ptr %71, i32 0, i32 7
  %72 = ptrtoint ptr %trwd.i.i104 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %trwd.i.i104, align 4
  %sub.i.i.i105 = add i32 %73, 999
  %div.i.i.i106 = udiv i32 %sub.i.i.i105, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %74(i32 noundef %div.i.i.i106) #11
  %75 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %state1.i, align 4
  %77 = ptrtoint ptr %handle_break.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %handle_break.i, align 4
  %tobool.not.i82 = icmp eq ptr %78, null
  br i1 %tobool.not.i82, label %if.then13.i.if.end.i84_crit_edge, label %if.then.i83

if.then13.i.if.end.i84_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i84

if.then.i83:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %78(ptr noundef %arrayidx12) #11
  br label %if.end.i84

if.end.i84:                                       ; preds = %if.then.i83, %if.then13.i.if.end.i84_crit_edge
  %79 = ptrtoint ptr %has_sysrq.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %has_sysrq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool3.not.i = icmp eq i8 %80, 0
  br i1 %tobool3.not.i, label %if.end.i84.if.end15.i_crit_edge, label %land.lhs.true.i

if.end.i84.if.end15.i_crit_edge:                  ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %if.end.i84
  %81 = ptrtoint ptr %cons.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cons.i, align 4
  %tobool4.not.i = icmp eq ptr %82, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end15.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.if.end15.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %index.i = getelementptr inbounds %struct.console, ptr %82, i32 0, i32 9
  %83 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %index.i, align 2
  %conv7.i = sext i16 %84 to i32
  %85 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %line.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %conv7.i)
  %cmp.i86 = icmp eq i32 %86, %conv7.i
  br i1 %cmp.i86, label %if.then9.i88, label %land.lhs.true5.i.if.end15.i_crit_edge

land.lhs.true5.i.if.end15.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

if.then9.i88:                                     ; preds = %land.lhs.true5.i
  %87 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool10.not.i87 = icmp eq i32 %88, 0
  br i1 %tobool10.not.i87, label %uart_handle_break.exit, label %if.end13.i

if.end13.i:                                       ; preds = %if.then9.i88
  call void @__sanitizer_cov_trace_pc() #13
  %89 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end13.i, %land.lhs.true5.i.if.end15.i_crit_edge, %land.lhs.true.i.if.end15.i_crit_edge, %if.end.i84.if.end15.i_crit_edge
  %90 = ptrtoint ptr %flags.i91 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %flags.i91, align 4
  %and.i = and i32 %91, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool16.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool16.not.i, label %if.end15.i.if.end43.i_crit_edge, label %if.then17.i

if.end15.i.if.end43.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43.i

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  %tty.i = getelementptr inbounds %struct.tty_port, ptr %76, i32 0, i32 1
  %92 = ptrtoint ptr %tty.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %tty.i, align 4
  tail call void @do_SAK(ptr noundef %93) #11
  br label %if.end43.i

uart_handle_break.exit:                           ; preds = %if.then9.i88
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %94 = load volatile i32, ptr @jiffies, align 128
  %add.i89 = add i32 %94, 500
  %95 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %add.i89, ptr %sysrq.i.i, align 4
  br label %for.cond.i.backedge

for.cond.i.backedge:                              ; preds = %if.end79.i, %if.end74.i.for.cond.i.backedge_crit_edge, %uart_handle_sysrq_char.exit.i, %if.end7.i.i.for.cond.i.backedge_crit_edge, %uart_handle_break.exit
  br label %for.cond.i

if.else.i:                                        ; preds = %if.then9.i
  %and21.i = and i32 %conv10.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.else26.i, label %if.then23.i

if.then23.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %96 = ptrtoint ptr %parity.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %parity.i, align 4
  %inc25.i = add i32 %97, 1
  store i32 %inc25.i, ptr %parity.i, align 4
  br label %if.end43.i

if.else26.i:                                      ; preds = %if.else.i
  %and28.i = and i32 %conv10.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.else33.i, label %if.then30.i

if.then30.i:                                      ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #13
  %98 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %frame.i, align 4
  %inc32.i = add i32 %99, 1
  store i32 %inc32.i, ptr %frame.i, align 4
  br label %if.end43.i

if.else33.i:                                      ; preds = %if.else26.i
  %and35.i = and i32 %conv10.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %if.else33.i.if.end43.i_crit_edge, label %if.then37.i

if.else33.i.if.end43.i_crit_edge:                 ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43.i

if.then37.i:                                      ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #13
  %100 = ptrtoint ptr %overrun.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %overrun.i, align 4
  %inc39.i = add i32 %101, 1
  store i32 %inc39.i, ptr %overrun.i, align 4
  %102 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %line.i.i, align 4
  %104 = shl i32 %103, 3
  %105 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev.i.i.i, align 4
  %driver_data.i.i.i78 = getelementptr inbounds %struct.device, ptr %106, i32 0, i32 8
  %107 = ptrtoint ptr %driver_data.i.i.i78 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %driver_data.i.i.i78, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @arm_heavy_mb() #11
  %109 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %membase.i.i.i, align 4
  %conv1.i77 = and i32 %104, 248
  %conv.i.i79 = or i32 %conv1.i77, 2
  %111 = ptrtoint ptr %regshift.i.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %regshift.i.i.i, align 1
  %conv1.i.i80 = zext i8 %112 to i32
  %shl.i.i81 = shl i32 %conv.i.i79, %conv1.i.i80
  %add.ptr.i.i = getelementptr i8, ptr %110, i32 %shl.i.i81
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 64) #11, !srcloc !111
  %chip.i.i = getelementptr inbounds %struct.sccnxp_port, ptr %108, i32 0, i32 5
  %113 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %chip.i.i, align 4
  %trwd.i.i = getelementptr inbounds %struct.sccnxp_chip, ptr %114, i32 0, i32 7
  %115 = ptrtoint ptr %trwd.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %trwd.i.i, align 4
  %sub.i.i.i = add i32 %116, 999
  %div.i.i.i = udiv i32 %sub.i.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %117 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %117(i32 noundef %div.i.i.i) #11
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then37.i, %if.else33.i.if.end43.i_crit_edge, %if.then30.i, %if.then23.i, %if.then17.i, %if.end15.i.if.end43.i_crit_edge
  %118 = ptrtoint ptr %read_status_mask.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %read_status_mask.i, align 4
  %and45.i = and i32 %119, %conv10.i
  %and48.i = and i32 %and45.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  br i1 %tobool49.not.i, label %if.else51.i, label %if.end43.i.if.end70.i_crit_edge

if.end43.i.if.end70.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70.i

if.else51.i:                                      ; preds = %if.end43.i
  %and53.i = and i32 %and45.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool54.not.i = icmp eq i32 %and53.i, 0
  br i1 %tobool54.not.i, label %if.else56.i, label %if.else51.i.if.end70.i_crit_edge

if.else51.i.if.end70.i_crit_edge:                 ; preds = %if.else51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70.i

if.else56.i:                                      ; preds = %if.else51.i
  %and58.i = and i32 %and45.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  br i1 %tobool59.not.i, label %if.else61.i, label %if.else56.i.if.end70.i_crit_edge

if.else56.i.if.end70.i_crit_edge:                 ; preds = %if.else56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70.i

if.else61.i:                                      ; preds = %if.else56.i
  call void @__sanitizer_cov_trace_pc() #13
  %and63.i = lshr exact i32 %and45.i, 2
  %120 = and i32 %and63.i, 4
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.else61.i, %if.else56.i.if.end70.i_crit_edge, %if.else51.i.if.end70.i_crit_edge, %if.end43.i.if.end70.i_crit_edge, %if.end.i.if.end70.i_crit_edge
  %sr.0.i = phi i32 [ 0, %if.end.i.if.end70.i_crit_edge ], [ %and45.i, %if.end43.i.if.end70.i_crit_edge ], [ %and45.i, %if.else51.i.if.end70.i_crit_edge ], [ %and45.i, %if.else56.i.if.end70.i_crit_edge ], [ %and45.i, %if.else61.i ]
  %flag.0.i = phi i32 [ 0, %if.end.i.if.end70.i_crit_edge ], [ 1, %if.end43.i.if.end70.i_crit_edge ], [ 3, %if.else51.i.if.end70.i_crit_edge ], [ 2, %if.else56.i.if.end70.i_crit_edge ], [ %120, %if.else61.i ]
  %121 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool.not.i.i = icmp eq i32 %122, 0
  br i1 %tobool.not.i.i, label %if.end70.i.if.end74.i_crit_edge, label %if.end.i.i

if.end70.i.if.end74.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74.i

if.end.i.i:                                       ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool1.not.i.i = icmp eq i8 %49, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.uart_handle_sysrq_char.exit.thread136.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.uart_handle_sysrq_char.exit.thread136.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uart_handle_sysrq_char.exit.thread136.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %123 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i46 = sub i32 %123, %122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i46)
  %cmp.i.i47 = icmp slt i32 %sub.i.i46, 0
  br i1 %cmp.i.i47, label %if.then3.i.i, label %land.lhs.true.i.i.uart_handle_sysrq_char.exit.thread136.i_crit_edge

land.lhs.true.i.i.uart_handle_sysrq_char.exit.thread136.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uart_handle_sysrq_char.exit.thread136.i

if.then3.i.i:                                     ; preds = %land.lhs.true.i.i
  %call.i.i = tail call i32 @sysrq_mask() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end7.i.i, label %uart_handle_sysrq_char.exit.i

if.end7.i.i:                                      ; preds = %if.then3.i.i
  %call8.i.i = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %arrayidx12, i32 noundef %conv5.i) #11
  br i1 %call8.i.i, label %if.end7.i.i.for.cond.i.backedge_crit_edge, label %if.end7.i.i.uart_handle_sysrq_char.exit.thread136.i_crit_edge

if.end7.i.i.uart_handle_sysrq_char.exit.thread136.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uart_handle_sysrq_char.exit.thread136.i

if.end7.i.i.for.cond.i.backedge_crit_edge:        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.backedge

uart_handle_sysrq_char.exit.thread136.i:          ; preds = %if.end7.i.i.uart_handle_sysrq_char.exit.thread136.i_crit_edge, %land.lhs.true.i.i.uart_handle_sysrq_char.exit.thread136.i_crit_edge, %if.end.i.i.uart_handle_sysrq_char.exit.thread136.i_crit_edge
  %124 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %if.end74.i

uart_handle_sysrq_char.exit.i:                    ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @handle_sysrq(i32 noundef %conv5.i) #11
  %125 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %for.cond.i.backedge

if.end74.i:                                       ; preds = %uart_handle_sysrq_char.exit.thread136.i, %if.end70.i.if.end74.i_crit_edge
  %126 = ptrtoint ptr %ignore_status_mask.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %ignore_status_mask.i, align 4
  %and76.i = and i32 %127, %sr.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.i)
  %tobool77.not.i = icmp eq i32 %and76.i, 0
  br i1 %tobool77.not.i, label %if.end79.i, label %if.end74.i.for.cond.i.backedge_crit_edge

if.end74.i.for.cond.i.backedge_crit_edge:         ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.backedge

if.end79.i:                                       ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @uart_insert_char(ptr noundef %arrayidx12, i32 noundef %sr.0.i, i32 noundef 16, i32 noundef %conv5.i, i32 noundef %flag.0.i) #11
  br label %for.cond.i.backedge

sccnxp_handle_rx.exit:                            ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %128 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %state1.i, align 4
  tail call void @tty_flip_buffer_push(ptr noundef %129) #11
  br label %if.end13

if.end13:                                         ; preds = %sccnxp_handle_rx.exit, %land.lhs.true.if.end13_crit_edge
  %130 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %130)
  %.pr = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool16.not = icmp eq i8 %.pr, 0
  br i1 %tobool16.not, label %if.end13.for.inc_crit_edge, label %land.lhs.true18

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true18:                                  ; preds = %if.end13
  %shl22 = shl nuw i32 1, %mul
  %and23 = and i32 %shl22, %conv7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %land.lhs.true18.for.inc_crit_edge, label %if.then25

land.lhs.true18.for.inc_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then25:                                        ; preds = %land.lhs.true18
  %arrayidx27 = getelementptr %struct.sccnxp_port, ptr %s, i32 0, i32 1, i32 %i.0140
  %state.i48 = getelementptr %struct.sccnxp_port, ptr %s, i32 0, i32 1, i32 %i.0140, i32 30
  %131 = ptrtoint ptr %state.i48 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %state.i48, align 4
  %xmit1.i = getelementptr inbounds %struct.uart_state, ptr %132, i32 0, i32 2
  %dev.i49 = getelementptr %struct.sccnxp_port, ptr %s, i32 0, i32 1, i32 %i.0140, i32 45
  %133 = ptrtoint ptr %dev.i49 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev.i49, align 4
  %driver_data.i.i50 = getelementptr inbounds %struct.device, ptr %134, i32 0, i32 8
  %135 = ptrtoint ptr %driver_data.i.i50 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %driver_data.i.i50, align 4
  %x_char.i = getelementptr %struct.sccnxp_port, ptr %s, i32 0, i32 1, i32 %i.0140, i32 24
  %137 = ptrtoint ptr %x_char.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %x_char.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool.not.i51 = icmp eq i8 %138, 0
  br i1 %tobool.not.i51, label %if.end.i53, label %if.then.i, !prof !117

if.then.i:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  %line.i114 = getelementptr %struct.sccnxp_port, ptr %s, i32 0, i32 1, i32 %i.0140, i32 41
  %139 = ptrtoint ptr %line.i114 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %line.i114, align 4
  %141 = shl i32 %140, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @arm_heavy_mb() #11
  %membase.i.i119 = getelementptr %struct.sccnxp_port, ptr %s, i32 0, i32 1, i32 %i.0140, i32 2
  %142 = ptrtoint ptr %membase.i.i119 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %membase.i.i119, align 4
  %conv1.i116 = and i32 %141, 248
  %conv.i.i120 = or i32 %conv1.i116, 3
  %regshift.i.i121 = getelementptr %struct.sccnxp_port, ptr %s, i32 0, i32 1, i32 %i.0140, i32 25
  %144 = ptrtoint ptr %regshift.i.i121 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %regshift.i.i121, align 1
  %conv1.i.i122 = zext i8 %145 to i32
  %shl.i.i123 = shl i32 %conv.i.i120, %conv1.i.i122
  %add.ptr.i.i124 = getelementptr i8, ptr %143, i32 %shl.i.i123
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i124, i8 %138) #11, !srcloc !111
  %chip.i.i125 = getelementptr inbounds %struct.sccnxp_port, ptr %136, i32 0, i32 5
  %146 = ptrtoint ptr %chip.i.i125 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %chip.i.i125, align 4
  %trwd.i.i126 = getelementptr inbounds %struct.sccnxp_chip, ptr %147, i32 0, i32 7
  %148 = ptrtoint ptr %trwd.i.i126 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %trwd.i.i126, align 4
  %sub.i.i.i127 = add i32 %149, 999
  %div.i.i.i128 = udiv i32 %sub.i.i.i127, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %150 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %150(i32 noundef %div.i.i.i128) #11
  %tx.i = getelementptr %struct.sccnxp_port, ptr %s, i32 0, i32 1, i32 %i.0140, i32 31, i32 5
  %151 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %tx.i, align 4
  %inc.i52 = add i32 %152, 1
  store i32 %inc.i52, ptr %tx.i, align 4
  %153 = ptrtoint ptr %x_char.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 0, ptr %x_char.i, align 4
  br label %for.inc

if.end.i53:                                       ; preds = %if.then25
  %head.i = getelementptr inbounds %struct.uart_state, ptr %132, i32 0, i32 2, i32 1
  %154 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %head.i, align 4
  %tail.i = getelementptr inbounds %struct.uart_state, ptr %132, i32 0, i32 2, i32 2
  %156 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %155, i32 %157)
  %cmp.i = icmp eq i32 %155, %157
  br i1 %cmp.i, label %if.end.i53.if.then8.i_crit_edge, label %lor.lhs.false.i

if.end.i53.if.then8.i_crit_edge:                  ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8.i

lor.lhs.false.i:                                  ; preds = %if.end.i53
  %tty2.i.i = getelementptr inbounds %struct.tty_port, ptr %132, i32 0, i32 1
  %158 = ptrtoint ptr %tty2.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %tty2.i.i, align 4
  %tobool.not.i.i54 = icmp eq ptr %159, null
  br i1 %tobool.not.i.i54, label %lor.lhs.false.i.uart_tx_stopped.exit.i_crit_edge, label %land.lhs.true.i.i55

lor.lhs.false.i.uart_tx_stopped.exit.i_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uart_tx_stopped.exit.i

land.lhs.true.i.i55:                              ; preds = %lor.lhs.false.i
  %stopped.i.i = getelementptr inbounds %struct.tty_struct, ptr %159, i32 0, i32 19, i32 1
  %160 = ptrtoint ptr %stopped.i.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %stopped.i.i, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool3.not.i.i = icmp eq i8 %161, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i55.uart_tx_stopped.exit.i_crit_edge, label %land.lhs.true.i.i55.if.then8.i_crit_edge

land.lhs.true.i.i55.if.then8.i_crit_edge:         ; preds = %land.lhs.true.i.i55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8.i

land.lhs.true.i.i55.uart_tx_stopped.exit.i_crit_edge: ; preds = %land.lhs.true.i.i55
  call void @__sanitizer_cov_trace_pc() #13
  br label %uart_tx_stopped.exit.i

uart_tx_stopped.exit.i:                           ; preds = %land.lhs.true.i.i55.uart_tx_stopped.exit.i_crit_edge, %lor.lhs.false.i.uart_tx_stopped.exit.i_crit_edge
  %hw_stopped.i.i = getelementptr %struct.sccnxp_port, ptr %s, i32 0, i32 1, i32 %i.0140, i32 35
  %162 = ptrtoint ptr %hw_stopped.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %hw_stopped.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool4.not.i.not.i = icmp eq i32 %163, 0
  br i1 %tobool4.not.i.not.i, label %while.body.lr.ph.i, label %uart_tx_stopped.exit.i.if.then8.i_crit_edge

uart_tx_stopped.exit.i.if.then8.i_crit_edge:      ; preds = %uart_tx_stopped.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8.i

while.body.lr.ph.i:                               ; preds = %uart_tx_stopped.exit.i
  %line.i91.i = getelementptr %struct.sccnxp_port, ptr %s, i32 0, i32 1, i32 %i.0140, i32 41
  %membase.i.i96.i = getelementptr %struct.sccnxp_port, ptr %s, i32 0, i32 1, i32 %i.0140, i32 2
  %regshift.i.i98.i = getelementptr %struct.sccnxp_port, ptr %s, i32 0, i32 1, i32 %i.0140, i32 25
  %tx35.i = getelementptr %struct.sccnxp_port, ptr %s, i32 0, i32 1, i32 %i.0140, i32 31, i32 5
  br label %while.body.i

if.then8.i:                                       ; preds = %uart_tx_stopped.exit.i.if.then8.i_crit_edge, %land.lhs.true.i.i55.if.then8.i_crit_edge, %if.end.i53.if.then8.i_crit_edge
  %line.i.i56 = getelementptr %struct.sccnxp_port, ptr %s, i32 0, i32 1, i32 %i.0140, i32 41
  %164 = ptrtoint ptr %line.i.i56 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %line.i.i56, align 4
  %166 = shl i32 %165, 3
  %membase.i.i.i57 = getelementptr %struct.sccnxp_port, ptr %s, i32 0, i32 1, i32 %i.0140, i32 2
  %167 = ptrtoint ptr %membase.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %membase.i.i.i57, align 4
  %conv1.i.i58 = and i32 %166, 248
  %conv.i.i.i59 = or i32 %conv1.i.i58, 1
  %regshift.i.i.i60 = getelementptr %struct.sccnxp_port, ptr %s, i32 0, i32 1, i32 %i.0140, i32 25
  %169 = ptrtoint ptr %regshift.i.i.i60 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %regshift.i.i.i60, align 1
  %conv1.i.i.i61 = zext i8 %170 to i32
  %shl.i.i.i62 = shl i32 %conv.i.i.i59, %conv1.i.i.i61
  %add.ptr.i.i.i63 = getelementptr i8, ptr %168, i32 %shl.i.i.i62
  %171 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i63) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !114
  %chip.i.i.i64 = getelementptr inbounds %struct.sccnxp_port, ptr %136, i32 0, i32 5
  %172 = ptrtoint ptr %chip.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %chip.i.i.i64, align 4
  %trwd.i.i.i65 = getelementptr inbounds %struct.sccnxp_chip, ptr %173, i32 0, i32 7
  %174 = ptrtoint ptr %trwd.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %trwd.i.i.i65, align 4
  %sub.i.i.i.i66 = add i32 %175, 999
  %div.i.i.i.i67 = udiv i32 %sub.i.i.i.i66, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %176 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %176(i32 noundef %div.i.i.i.i67) #11
  %177 = and i8 %171, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool10.not.i = icmp eq i8 %177, 0
  br i1 %tobool10.not.i, label %if.then8.i.for.inc_crit_edge, label %if.then11.i

if.then8.i.for.inc_crit_edge:                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then11.i:                                      ; preds = %if.then8.i
  %178 = ptrtoint ptr %dev.i49 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %dev.i49, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %179, i32 0, i32 8
  %180 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %driver_data.i.i.i, align 4
  %182 = ptrtoint ptr %line.i.i56 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %line.i.i56, align 4
  %mul.i.i75 = shl i32 %183, 2
  %shl.i.i = shl nuw i32 1, %mul.i.i75
  %imr.i.i = getelementptr inbounds %struct.sccnxp_port, ptr %181, i32 0, i32 4
  %184 = ptrtoint ptr %imr.i.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %imr.i.i, align 4
  %186 = trunc i32 %shl.i.i to i8
  %187 = xor i8 %186, -1
  %conv1.i70.i = and i8 %185, %187
  store i8 %conv1.i70.i, ptr %imr.i.i, align 4
  %188 = load ptr, ptr %dev.i49, align 4
  %driver_data.i.i.i71.i = getelementptr inbounds %struct.device, ptr %188, i32 0, i32 8
  %189 = ptrtoint ptr %driver_data.i.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %driver_data.i.i.i71.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @arm_heavy_mb() #11
  %191 = ptrtoint ptr %membase.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %membase.i.i.i57, align 4
  %193 = ptrtoint ptr %regshift.i.i.i60 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %regshift.i.i.i60, align 1
  %conv1.i.i74.i = zext i8 %194 to i32
  %shl.i.i75.i = shl i32 5, %conv1.i.i74.i
  %add.ptr.i.i76.i = getelementptr i8, ptr %192, i32 %shl.i.i75.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i76.i, i8 %conv1.i70.i) #11, !srcloc !111
  %chip.i.i77.i = getelementptr inbounds %struct.sccnxp_port, ptr %190, i32 0, i32 5
  %195 = ptrtoint ptr %chip.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %chip.i.i77.i, align 4
  %trwd.i.i78.i = getelementptr inbounds %struct.sccnxp_chip, ptr %196, i32 0, i32 7
  %197 = ptrtoint ptr %trwd.i.i78.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %trwd.i.i78.i, align 4
  %sub.i.i.i79.i = add i32 %198, 999
  %div.i.i.i80.i = udiv i32 %sub.i.i.i79.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %199 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %199(i32 noundef %div.i.i.i80.i) #11
  %200 = ptrtoint ptr %chip.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %chip.i.i.i64, align 4
  %flags.i = getelementptr inbounds %struct.sccnxp_chip, ptr %201, i32 0, i32 5
  %202 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %flags.i, align 4
  %and12.i = and i32 %203, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.then11.i.for.inc_crit_edge, label %if.then14.i

if.then11.i.for.inc_crit_edge:                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then14.i:                                      ; preds = %if.then11.i
  %204 = ptrtoint ptr %dev.i49 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %dev.i49, align 4
  %driver_data.i.i88.i = getelementptr inbounds %struct.device, ptr %205, i32 0, i32 8
  %206 = ptrtoint ptr %driver_data.i.i88.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %driver_data.i.i88.i, align 4
  %208 = ptrtoint ptr %line.i.i56 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %line.i.i56, align 4
  %arrayidx.i.i = getelementptr %struct.sccnxp_port, ptr %207, i32 0, i32 10, i32 1, i32 %209
  %210 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %211, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i90.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i90.i, label %if.then14.i.for.inc_crit_edge, label %if.then.i.i

if.then14.i.for.inc_crit_edge:                    ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then.i.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr.i.i = lshr i32 %211, 24
  %and5.i.i = and i32 %shr.i.i, 15
  %sub.i.i76 = add nsw i32 %and5.i.i, -1
  %shl6.i.i = shl nuw nsw i32 1, %sub.i.i76
  %conv.i.i = trunc i32 %shl6.i.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %212 = ptrtoint ptr %membase.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %membase.i.i.i57, align 4
  %214 = ptrtoint ptr %regshift.i.i.i60 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %regshift.i.i.i60, align 1
  %conv1.i21.i.i = zext i8 %215 to i32
  %shl.i22.i.i = shl i32 15, %conv1.i21.i.i
  %add.ptr.i23.i.i = getelementptr i8, ptr %213, i32 %shl.i22.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i23.i.i, i8 %conv.i.i) #11, !srcloc !111
  %chip.i24.i.i = getelementptr inbounds %struct.sccnxp_port, ptr %207, i32 0, i32 5
  %216 = ptrtoint ptr %chip.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %chip.i24.i.i, align 4
  %trwd.i25.i.i = getelementptr inbounds %struct.sccnxp_chip, ptr %217, i32 0, i32 7
  %218 = ptrtoint ptr %trwd.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %trwd.i25.i.i, align 4
  %sub.i.i26.i.i = add i32 %219, 999
  %div.i.i27.i.i = udiv i32 %sub.i.i26.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %220 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %220(i32 noundef %div.i.i27.i.i) #11
  br label %for.inc

while.body.i:                                     ; preds = %if.end29.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %221 = ptrtoint ptr %line.i91.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %line.i91.i, align 4
  %223 = shl i32 %222, 3
  %224 = ptrtoint ptr %dev.i49 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %dev.i49, align 4
  %driver_data.i.i.i95.i = getelementptr inbounds %struct.device, ptr %225, i32 0, i32 8
  %226 = ptrtoint ptr %driver_data.i.i.i95.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %driver_data.i.i.i95.i, align 4
  %228 = ptrtoint ptr %membase.i.i96.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %membase.i.i96.i, align 4
  %conv1.i93.i = and i32 %223, 248
  %conv.i.i97.i = or i32 %conv1.i93.i, 1
  %230 = ptrtoint ptr %regshift.i.i98.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %regshift.i.i98.i, align 1
  %conv1.i.i99.i = zext i8 %231 to i32
  %shl.i.i100.i = shl i32 %conv.i.i97.i, %conv1.i.i99.i
  %add.ptr.i.i101.i = getelementptr i8, ptr %229, i32 %shl.i.i100.i
  %232 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i101.i) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !114
  %chip.i.i102.i = getelementptr inbounds %struct.sccnxp_port, ptr %227, i32 0, i32 5
  %233 = ptrtoint ptr %chip.i.i102.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %chip.i.i102.i, align 4
  %trwd.i.i103.i = getelementptr inbounds %struct.sccnxp_chip, ptr %234, i32 0, i32 7
  %235 = ptrtoint ptr %trwd.i.i103.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %trwd.i.i103.i, align 4
  %sub.i.i.i104.i = add i32 %236, 999
  %div.i.i.i105.i = udiv i32 %sub.i.i.i104.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %237 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %237(i32 noundef %div.i.i.i105.i) #11
  %238 = and i8 %232, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %238)
  %tobool27.not.i = icmp eq i8 %238, 0
  br i1 %tobool27.not.i, label %while.body.i.while.end.i_crit_edge, label %if.end29.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

if.end29.i:                                       ; preds = %while.body.i
  %239 = ptrtoint ptr %xmit1.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %xmit1.i, align 4
  %241 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %tail.i, align 4
  %arrayidx.i = getelementptr i8, ptr %240, i32 %242
  %243 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %arrayidx.i, align 1
  %245 = ptrtoint ptr %line.i91.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %line.i91.i, align 4
  %247 = shl i32 %246, 3
  %248 = ptrtoint ptr %dev.i49 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %dev.i49, align 4
  %driver_data.i.i.i117.i = getelementptr inbounds %struct.device, ptr %249, i32 0, i32 8
  %250 = ptrtoint ptr %driver_data.i.i.i117.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %driver_data.i.i.i117.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @arm_heavy_mb() #11
  %252 = ptrtoint ptr %membase.i.i96.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %membase.i.i96.i, align 4
  %conv1.i115.i = and i32 %247, 248
  %conv.i.i119.i = or i32 %conv1.i115.i, 3
  %254 = ptrtoint ptr %regshift.i.i98.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %regshift.i.i98.i, align 1
  %conv1.i.i121.i = zext i8 %255 to i32
  %shl.i.i122.i = shl i32 %conv.i.i119.i, %conv1.i.i121.i
  %add.ptr.i.i123.i = getelementptr i8, ptr %253, i32 %shl.i.i122.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i123.i, i8 %244) #11, !srcloc !111
  %chip.i.i124.i = getelementptr inbounds %struct.sccnxp_port, ptr %251, i32 0, i32 5
  %256 = ptrtoint ptr %chip.i.i124.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %chip.i.i124.i, align 4
  %trwd.i.i125.i = getelementptr inbounds %struct.sccnxp_chip, ptr %257, i32 0, i32 7
  %258 = ptrtoint ptr %trwd.i.i125.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %trwd.i.i125.i, align 4
  %sub.i.i.i126.i = add i32 %259, 999
  %div.i.i.i127.i = udiv i32 %sub.i.i.i126.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %260 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %260(i32 noundef %div.i.i.i127.i) #11
  %261 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %tail.i, align 4
  %add.i = add i32 %262, 1
  %and32.i = and i32 %add.i, 4095
  store i32 %and32.i, ptr %tail.i, align 4
  %263 = ptrtoint ptr %tx35.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %tx35.i, align 4
  %inc36.i = add i32 %264, 1
  store i32 %inc36.i, ptr %tx35.i, align 4
  %265 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %head.i, align 4
  %267 = load i32, ptr %tail.i, align 4
  %cmp20.not.i = icmp eq i32 %266, %267
  br i1 %cmp20.not.i, label %if.end29.i.while.end.i_crit_edge, label %if.end29.i.while.body.i_crit_edge

if.end29.i.while.body.i_crit_edge:                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end29.i.while.end.i_crit_edge:                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.end.i:                                      ; preds = %if.end29.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge
  %268 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %head.i, align 4
  %270 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %tail.i, align 4
  %sub.i = sub i32 %269, %271
  %and39.i = and i32 %sub.i, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %cmp40.i = icmp eq i32 %and39.i, 0
  br i1 %cmp40.i, label %if.then42.i, label %while.end.i.for.inc_crit_edge

while.end.i.for.inc_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then42.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @uart_write_wakeup(ptr noundef %arrayidx27) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then42.i, %while.end.i.for.inc_crit_edge, %if.then.i.i, %if.then14.i.for.inc_crit_edge, %if.then11.i.for.inc_crit_edge, %if.then8.i.for.inc_crit_edge, %if.then.i, %land.lhs.true18.for.inc_crit_edge, %if.end13.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0140, 1
  %272 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %nr, align 4
  %cmp = icmp slt i32 %inc, %273
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.do.body.backedge_crit_edge

for.inc.do.body.backedge_crit_edge:               ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.backedge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

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
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smax.i16(i16, i16) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !49, !50, !51, !53, !54, !55, !57, !58, !60, !62, !63, !64, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @__initcall__kmod_sccnxp__289_1064_sccnxp_uart_driver_init6, !1, !"__initcall__kmod_sccnxp__289_1064_sccnxp_uart_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/sccnxp.c", i32 1064, i32 1}
!2 = !{ptr @__exitcall_sccnxp_uart_driver_exit, !1, !"__exitcall_sccnxp_uart_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file290, !4, !"__UNIQUE_ID_file290", i1 false, i1 false}
!4 = !{!"../drivers/tty/serial/sccnxp.c", i32 1066, i32 1}
!5 = !{ptr @__UNIQUE_ID_license291, !4, !"__UNIQUE_ID_license291", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author292, !7, !"__UNIQUE_ID_author292", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/sccnxp.c", i32 1067, i32 1}
!8 = !{ptr @__UNIQUE_ID_description293, !9, !"__UNIQUE_ID_description293", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/sccnxp.c", i32 1068, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/sccnxp.c", i32 1058, i32 11}
!12 = !{ptr @sccnxp_uart_driver, !13, !"sccnxp_uart_driver", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/sccnxp.c", i32 1056, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/tty/serial/sccnxp.c", i32 896, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sccnxp_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @sccnxp_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @sccnxp_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/tty/serial/sccnxp.c", i32 901, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/tty/serial/sccnxp.c", i32 905, i32 48}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/tty/serial/sccnxp.c", i32 909, i32 4}
!29 = !{ptr @sccnxp_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @sccnxp_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/tty/serial/sccnxp.c", i32 937, i32 3}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @sccnxp_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @sccnxp_probe._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/tty/serial/sccnxp.c", i32 943, i32 3}
!38 = !{ptr @sccnxp_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @sccnxp_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/tty/serial/sccnxp.c", i32 952, i32 3}
!42 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @sccnxp_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @sccnxp_probe._entry_ptr.21, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/tty/serial/sccnxp.c", i32 966, i32 21}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/tty/serial/sccnxp.c", i32 982, i32 3}
!49 = !{ptr @sccnxp_probe._entry.23, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @sccnxp_probe._entry_ptr.25, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/tty/serial/sccnxp.c", i32 1019, i32 3}
!53 = !{ptr @sccnxp_probe._entry.26, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @sccnxp_probe._entry_ptr.28, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @sccnxp_probe.__key.29, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/tty/serial/sccnxp.c", i32 1021, i32 3}
!57 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @sccnxp_ops, !59, !"sccnxp_ops", i1 false, i1 false}
!59 = !{!"../drivers/tty/serial/sccnxp.c", i32 812, i32 30}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/tty/serial/sccnxp.c", i32 348, i32 3}
!62 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @sccnxp_set_baud.__UNIQUE_ID_ddebug288, !61, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!65 = !{ptr @baud_std, !66, !"baud_std", i1 false, i1 false}
!66 = !{!"../drivers/tty/serial/sccnxp.c", i32 271, i32 3}
!67 = !{ptr @sccnxp_id_table, !68, !"sccnxp_id_table", i1 false, i1 false}
!68 = !{!"../drivers/tty/serial/sccnxp.c", i32 868, i32 40}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/tty/serial/sccnxp.c", i32 136, i32 11}
!71 = !{ptr @sc2681, !72, !"sc2681", i1 false, i1 false}
!72 = !{!"../drivers/tty/serial/sccnxp.c", i32 135, i32 33}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/tty/serial/sccnxp.c", i32 147, i32 11}
!75 = !{ptr @sc2691, !76, !"sc2691", i1 false, i1 false}
!76 = !{!"../drivers/tty/serial/sccnxp.c", i32 146, i32 33}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/tty/serial/sccnxp.c", i32 158, i32 11}
!79 = !{ptr @sc2692, !80, !"sc2692", i1 false, i1 false}
!80 = !{!"../drivers/tty/serial/sccnxp.c", i32 157, i32 33}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/tty/serial/sccnxp.c", i32 169, i32 11}
!83 = !{ptr @sc2891, !84, !"sc2891", i1 false, i1 false}
!84 = !{!"../drivers/tty/serial/sccnxp.c", i32 168, i32 33}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/tty/serial/sccnxp.c", i32 180, i32 11}
!87 = !{ptr @sc2892, !88, !"sc2892", i1 false, i1 false}
!88 = !{!"../drivers/tty/serial/sccnxp.c", i32 179, i32 33}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/tty/serial/sccnxp.c", i32 191, i32 11}
!91 = !{ptr @sc28202, !92, !"sc28202", i1 false, i1 false}
!92 = !{!"../drivers/tty/serial/sccnxp.c", i32 190, i32 33}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/tty/serial/sccnxp.c", i32 202, i32 11}
!95 = !{ptr @sc68681, !96, !"sc68681", i1 false, i1 false}
!96 = !{!"../drivers/tty/serial/sccnxp.c", i32 201, i32 33}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/tty/serial/sccnxp.c", i32 213, i32 11}
!99 = !{ptr @sc68692, !100, !"sc68692", i1 false, i1 false}
!100 = !{!"../drivers/tty/serial/sccnxp.c", i32 212, i32 33}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!110 = !{i8 0, i8 2}
!111 = !{i64 4978160}
!112 = !{i64 2155192346}
!113 = !{i64 4978555}
!114 = !{i64 2155192088}
!115 = !{i64 2155208930}
!116 = !{i64 2148747113, i64 2148747118, i64 2148747131, i64 2148747175, i64 2148747209, i64 2148747230}
!117 = !{!"branch_weights", i32 2000, i32 1}
