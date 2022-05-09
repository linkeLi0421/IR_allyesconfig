; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/sprd_serial.c_pt.bc'
source_filename = "../drivers/tty/serial/sprd_serial.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.sprd_uart_port = type { %struct.uart_port, [16 x i8], ptr, %struct.sprd_uart_dma, %struct.sprd_uart_dma, i32, ptr }
%struct.sprd_uart_dma = type { ptr, ptr, i32, i32, i32, i8 }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.39, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.39 = type { ptr }
%struct.llist_head = type { ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.37, %struct.anon.38, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.37 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.38 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.69, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.69 = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__initcall__kmod_sprd_serial__236_1056_sprd_serial_console_initcon = internal global ptr @sprd_serial_console_init, section ".con_initcall.init", align 4
@__UNIQUE_ID___earlycon_sprd_serial237 = internal constant %struct.earlycon_id { [15 x i8] c"sprd_serial\00\00\00\00", i8 0, [128 x i8] c"sprd,sc9836-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sprd_early_console_setup }, section "__earlycon_table", align 4
@__initcall__kmod_sprd_serial__238_1285_sprd_platform_driver_init6 = internal global ptr @sprd_platform_driver_init, section ".initcall6.init", align 4
@sprd_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sprd_probe, ptr @sprd_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @serial_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sprd_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sprd_platform_driver_exit = internal global ptr @sprd_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file239 = internal constant [48 x i8] c"sprd_serial.file=drivers/tty/serial/sprd_serial\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [27 x i8] c"sprd_serial.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [60 x i8] c"sprd_serial.description=Spreadtrum SoC serial driver series\00", section ".modinfo", align 1
@sprd_console = internal global { %struct.console, [60 x i8] } { %struct.console { [16 x i8] c"ttyS\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sprd_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @sprd_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @sprd_uart_driver, ptr null }, [60 x i8] zeroinitializer }, align 32
@sprd_uart_driver = internal global { %struct.uart_driver, [60 x i8] } { %struct.uart_driver { ptr null, ptr @.str.3, ptr @.str.4, i32 0, i32 0, i32 8, ptr @sprd_console, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@sprd_port = internal global { [8 x ptr], [32 x i8] } zeroinitializer, align 32
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sprd_console_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1029, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016serial port %d not yet initialized\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sprd_console_setup\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/tty/serial/sprd_serial.c\00", [63 x i8] zeroinitializer }, align 32
@sprd_console_setup._entry_ptr = internal global ptr @sprd_console_setup._entry, section ".printk_index", align 4
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sprd_serial\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ttyS\00", [27 x i8] zeroinitializer }, align 32
@serial_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sprd,sc9836-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sprd_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @sprd_suspend, ptr @sprd_resume, ptr @sprd_suspend, ptr @sprd_resume, ptr @sprd_suspend, ptr @sprd_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@sprd_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 1185, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"got a wrong serial alias id %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sprd_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sprd_probe._entry_ptr = internal global ptr @sprd_probe._entry, section ".printk_index", align 4
@serial_sprd_ops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @sprd_tx_empty, ptr @sprd_set_mctrl, ptr @sprd_get_mctrl, ptr @sprd_stop_tx, ptr @sprd_start_tx, ptr null, ptr null, ptr null, ptr @sprd_stop_rx, ptr null, ptr @sprd_break_ctl, ptr @sprd_startup, ptr @sprd_shutdown, ptr null, ptr @sprd_set_termios, ptr null, ptr @sprd_pm, ptr @sprd_type, ptr @sprd_release_port, ptr @sprd_request_port, ptr @sprd_config_port, ptr @sprd_verify_port, ptr null, ptr @sprd_poll_init, ptr @sprd_poll_put_char, ptr @sprd_poll_get_char }, [56 x i8] zeroinitializer }, align 32
@sprd_ports_num = internal global { i32, [28 x i8] } zeroinitializer, align 32
@sprd_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.7, ptr @.str.2, i32 1232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Failed to register SPRD-UART driver\0A\00", [57 x i8] zeroinitializer }, align 32
@sprd_probe._entry_ptr.12 = internal global ptr @sprd_probe._entry.10, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sprd_serial%d\00", [18 x i8] zeroinitializer }, align 32
@sprd_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 747, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"fail to request serial irq %d, ret=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sprd_startup\00", [19 x i8] zeroinitializer }, align 32
@sprd_startup._entry_ptr = internal global ptr @sprd_startup._entry, section ".printk_index", align 4
@sprd_uart_dma_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 706, ptr @.str.20, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fail to start RX dma mode\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sprd_uart_dma_startup\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sprd_uart_dma_startup._entry_ptr = internal global ptr @sprd_uart_dma_startup._entry, section ".printk_index", align 4
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@sprd_request_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 506, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"request TX DMA channel failed, ret = %ld\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sprd_request_dma\00", [47 x i8] zeroinitializer }, align 32
@sprd_request_dma._entry_ptr = internal global ptr @sprd_request_dma._entry, section ".printk_index", align 4
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@sprd_request_dma._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.23, ptr @.str.2, i32 513, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"request RX DMA channel failed, ret = %ld\0A\00", [54 x i8] zeroinitializer }, align 32
@sprd_request_dma._entry_ptr.27 = internal global ptr @sprd_request_dma._entry.25, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SPX\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uart\00", [27 x i8] zeroinitializer }, align 32
@sprd_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 1141, ptr @.str.20, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"uart%d can't get uart clock\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sprd_clk_init\00", [18 x i8] zeroinitializer }, align 32
@sprd_clk_init._entry_ptr = internal global ptr @sprd_clk_init._entry, section ".printk_index", align 4
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"source\00", [25 x i8] zeroinitializer }, align 32
@sprd_clk_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.31, ptr @.str.2, i32 1148, ptr @.str.20, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"uart%d can't get source clock\0A\00", [33 x i8] zeroinitializer }, align 32
@sprd_clk_init._entry_ptr.35 = internal global ptr @sprd_clk_init._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@sprd_clk_init._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.31, ptr @.str.2, i32 1163, ptr @.str.20, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"uart%d can't get enable clock\0A\00", [33 x i8] zeroinitializer }, align 32
@sprd_clk_init._entry_ptr.39 = internal global ptr @sprd_clk_init._entry.37, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.40 = private unnamed_addr constant [21 x i8] c"sprd_platform_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1275, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant [13 x i8] c"sprd_console\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1041, i32 23 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"sprd_uart_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1095, i32 27 }
@___asan_gen_.49 = private unnamed_addr constant [10 x i8] c"sprd_port\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 131, i32 31 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1029, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1097, i32 17 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1098, i32 14 }
@___asan_gen_.70 = private unnamed_addr constant [11 x i8] c"serial_ids\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1269, i32 34 }
@___asan_gen_.73 = private unnamed_addr constant [12 x i8] c"sprd_pm_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1267, i32 8 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1183, i32 45 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1185, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [16 x i8] c"serial_sprd_ops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 949, i32 30 }
@___asan_gen_.97 = private unnamed_addr constant [15 x i8] c"sprd_ports_num\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 132, i32 12 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1232, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 326, i32 6 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 739, i32 39 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 746, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 706, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 503, i32 47 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 505, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 510, i32 47 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 512, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 875, i32 9 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1138, i32 38 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1140, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1145, i32 40 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1147, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1157, i32 36 }
@___asan_gen_.184 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.188 = private constant [36 x i8] c"../drivers/tty/serial/sprd_serial.c\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1162, i32 3 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID___earlycon_sprd_serial237, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_sprd_platform_driver_exit, ptr @__initcall__kmod_sprd_serial__236_1056_sprd_serial_console_initcon, ptr @__initcall__kmod_sprd_serial__238_1285_sprd_platform_driver_init6, ptr @sprd_clk_init._entry, ptr @sprd_clk_init._entry.33, ptr @sprd_clk_init._entry.37, ptr @sprd_clk_init._entry_ptr, ptr @sprd_clk_init._entry_ptr.35, ptr @sprd_clk_init._entry_ptr.39, ptr @sprd_console_setup._entry, ptr @sprd_console_setup._entry_ptr, ptr @sprd_platform_driver_exit, ptr @sprd_probe._entry, ptr @sprd_probe._entry.10, ptr @sprd_probe._entry_ptr, ptr @sprd_probe._entry_ptr.12, ptr @sprd_request_dma._entry, ptr @sprd_request_dma._entry.25, ptr @sprd_request_dma._entry_ptr, ptr @sprd_request_dma._entry_ptr.27, ptr @sprd_startup._entry, ptr @sprd_startup._entry_ptr, ptr @sprd_uart_dma_startup._entry, ptr @sprd_uart_dma_startup._entry_ptr, ptr @sprd_platform_driver, ptr @sprd_console, ptr @sprd_uart_driver, ptr @sprd_port, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @serial_ids, ptr @sprd_pm_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @serial_sprd_ops, ptr @sprd_ports_num, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_console to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_uart_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_port to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_console_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_sprd_ops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_ports_num to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_uart_dma_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_request_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_request_dma._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_clk_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_clk_init._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_serial_console_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @register_console(ptr noundef nonnull @sprd_console) #11
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sprd_early_console_setup(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %opt) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %write = getelementptr inbounds %struct.console, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @sprd_early_write, ptr %write, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sprd_platform_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sprd_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @sprd_platform_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_console(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_console_write(ptr nocapture noundef readonly %co, ptr noundef %s, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index, align 2
  %idxprom = sext i16 %1 to i32
  %arrayidx = getelementptr [8 x ptr], ptr @sprd_port, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %sysrq = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %sysrq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sysrq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end69_crit_edge

entry.if.end69_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.else:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %6 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %do.body55, label %do.body4

do.body4:                                         ; preds = %if.else
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !111
  %and.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not = icmp eq i32 %and.i, 0
  br i1 %tobool13.not, label %do.end16, label %do.end16.thread

do.end16:                                         ; preds = %do.body4
  tail call void @trace_hardirqs_off() #11
  %call19 = tail call i32 @_raw_spin_trylock(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then30, label %do.end16.if.end69_crit_edge

do.end16.if.end69_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

do.end16.thread:                                  ; preds = %do.body4
  %call1983 = tail call i32 @_raw_spin_trylock(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1983)
  %tobool20.not84 = icmp eq i32 %call1983, 0
  br i1 %tobool20.not84, label %do.end16.thread.do.body32_crit_edge, label %do.end16.thread.if.end69_crit_edge

do.end16.thread.if.end69_crit_edge:               ; preds = %do.end16.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

do.end16.thread.do.body32_crit_edge:              ; preds = %do.end16.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body32

if.then30:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_on() #11
  br label %do.body32

do.body32:                                        ; preds = %if.then30, %do.end16.thread.do.body32_crit_edge
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !112
  %and.i.i = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool40.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool40.not, label %if.then44, label %do.body32.do.end47_crit_edge, !prof !113

do.body32.do.end47_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end47

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end47

do.end47:                                         ; preds = %if.then44, %do.body32.do.end47_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #11, !srcloc !114
  br label %if.end69

do.body55:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call63 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #11
  br label %if.end69

if.end69:                                         ; preds = %do.body55, %do.end47, %do.end16.thread.if.end69_crit_edge, %do.end16.if.end69_crit_edge, %entry.if.end69_crit_edge
  %flags.0 = phi i32 [ %call63, %do.body55 ], [ -1, %entry.if.end69_crit_edge ], [ %7, %do.end16.if.end69_crit_edge ], [ %7, %do.end47 ], [ %7, %do.end16.thread.if.end69_crit_edge ]
  %tobool70.not = phi i1 [ false, %do.body55 ], [ true, %entry.if.end69_crit_edge ], [ false, %do.end16.if.end69_crit_edge ], [ true, %do.end47 ], [ false, %do.end16.thread.if.end69_crit_edge ]
  tail call void @uart_console_write(ptr noundef %3, ptr noundef %s, i32 noundef %count, ptr noundef nonnull @sprd_console_putchar) #11
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.end69
  %tmout.0.i = phi i32 [ 10000, %if.end69 ], [ %dec.i, %if.end.i.do.body.i_crit_edge ]
  %9 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 12
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !115
  %dec.i = add nsw i32 %tmout.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %do.body.i.wait_for_xmitr.exit_crit_edge, label %if.end.i

do.body.i.wait_for_xmitr.exit_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %wait_for_xmitr.exit

if.end.i:                                         ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #11
  %13 = and i32 %11, 16711680
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.end.i.wait_for_xmitr.exit_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.end.i.wait_for_xmitr.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %wait_for_xmitr.exit

wait_for_xmitr.exit:                              ; preds = %if.end.i.wait_for_xmitr.exit_crit_edge, %do.body.i.wait_for_xmitr.exit_crit_edge
  br i1 %tobool70.not, label %wait_for_xmitr.exit.if.end73_crit_edge, label %if.then71

wait_for_xmitr.exit.if.end73_crit_edge:           ; preds = %wait_for_xmitr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73

if.then71:                                        ; preds = %wait_for_xmitr.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %flags.0) #11
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %wait_for_xmitr.exit.if.end73_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_console_setup(ptr noundef %co, ptr noundef %options) #3 align 64 {
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
  store i32 115200, ptr %baud, align 4
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
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %5)
  %6 = icmp ugt i16 %5, 7
  br i1 %6, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %index, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %index, align 2
  %idxprom = sext i16 %9 to i32
  %arrayidx = getelementptr [8 x ptr], ptr @sprd_port, i32 0, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end.do.end_crit_edge, label %lor.lhs.false8

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false8:                                   ; preds = %if.end
  %membase = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %lor.lhs.false8.do.end_crit_edge, label %if.end13

lor.lhs.false8.do.end_crit_edge:                  ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false8.do.end_crit_edge, %if.end.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %idxprom) #14
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false8
  %tobool14.not = icmp eq ptr %options, null
  br i1 %tobool14.not, label %if.end13.if.end16_crit_edge, label %if.then15

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  call void @uart_parse_options(ptr noundef nonnull %options, ptr noundef nonnull %baud, ptr noundef nonnull %parity, ptr noundef nonnull %bits, ptr noundef nonnull %flow) #11
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end13.if.end16_crit_edge
  %14 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %baud, align 4
  %16 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %parity, align 4
  %18 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bits, align 4
  %20 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flow, align 4
  %call18 = call i32 @uart_set_options(ptr noundef nonnull %11, ptr noundef %co, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end
  %retval.0 = phi i32 [ %call18, %if.end16 ], [ -19, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flow) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parity) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %baud) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_console_putchar(ptr nocapture noundef readonly %port, i32 noundef %ch) #3 align 64 {
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
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !115
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
  %4 = and i32 %2, 16711680
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.end.i.wait_for_xmitr.exit_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.end.i.wait_for_xmitr.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %wait_for_xmitr.exit

wait_for_xmitr.exit:                              ; preds = %if.end.i.wait_for_xmitr.exit_crit_edge, %do.body.i.wait_for_xmitr.exit_crit_edge
  %5 = tail call i32 @llvm.bswap.i32(i32 %ch) #11
  %6 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #11, !srcloc !116
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_early_write(ptr nocapture noundef readonly %con, ptr noundef %s, i32 noundef %n) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.console, ptr %con, i32 0, i32 13
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %port = getelementptr inbounds %struct.earlycon_device, ptr %1, i32 0, i32 1
  tail call void @uart_console_write(ptr noundef %port, ptr noundef %s, i32 noundef %n, ptr noundef nonnull @sprd_putc) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_putc(ptr nocapture noundef readonly %port, i32 noundef %c) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  br label %land.rhs

land.rhs:                                         ; preds = %do.end.land.rhs_crit_edge, %entry
  %dec15 = phi i32 [ 255999, %entry ], [ %dec, %do.end.land.rhs_crit_edge ]
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !117
  %3 = and i32 %2, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %do.end, label %land.rhs.do.body9_crit_edge

land.rhs.do.body9_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body9

do.end:                                           ; preds = %land.rhs
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !118
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !119
  %dec = add nsw i32 %dec15, -1
  %tobool.not = icmp eq i32 %dec15, 0
  br i1 %tobool.not, label %do.end.do.body9_crit_edge, label %do.end.land.rhs_crit_edge

do.end.land.rhs_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

do.end.do.body9_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body9

do.body9:                                         ; preds = %do.end.do.body9_crit_edge, %land.rhs.do.body9_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !120
  tail call void @arm_heavy_mb() #11
  %conv = trunc i32 %c to i8
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %5, i8 %conv) #11, !srcloc !121
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @of_alias_get_id(ptr noundef %1, ptr noundef nonnull @.str.5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call)
  %cmp1 = icmp ugt i32 %call, 7
  br i1 %cmp1, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %call) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 436, i32 noundef 3520) #11
  %arrayidx = getelementptr [8 x ptr], ptr @sprd_port, i32 0, i32 %call
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %dev10 = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 45
  %3 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev10, align 4
  %line = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 41
  %4 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %line, align 4
  %type = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 38
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 111, ptr %type, align 4
  %iotype = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 26
  %6 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %iotype, align 2
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 22
  %7 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 26000000, ptr %uartclk, align 4
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 23
  %8 = ptrtoint ptr %fifosize to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 128, ptr %fifosize, align 4
  %ops = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 39
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @serial_sprd_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 33
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 268435456, ptr %flags, align 4
  %has_sysrq = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 48
  %11 = ptrtoint ptr %has_sysrq to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %has_sysrq, align 4
  %call.i95 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.29) #11
  %cmp.i.i = icmp ugt ptr %call.i95, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end7.if.end.i_crit_edge

if.end7.if.end.i_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev10, align 4
  %14 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %line, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.30, i32 noundef %15) #14
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end7.if.end.i_crit_edge
  %clk_uart.0.i = phi ptr [ null, %do.end.i ], [ %call.i95, %if.end7.if.end.i_crit_edge ]
  %16 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev10, align 4
  %call5.i = tail call ptr @devm_clk_get(ptr noundef %17, ptr noundef nonnull @.str.32) #11
  %cmp.i63.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i63.i, label %do.end10.i, label %if.end.i.if.end13.i_crit_edge

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

do.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev10, align 4
  %20 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %line, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.34, i32 noundef %21) #14
  br label %if.end13.i

if.end13.i:                                       ; preds = %do.end10.i, %if.end.i.if.end13.i_crit_edge
  %clk_parent.0.i = phi ptr [ null, %do.end10.i ], [ %call5.i, %if.end.i.if.end13.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %clk_uart.0.i, null
  br i1 %tobool.not.i, label %if.end13.i.if.end19.i_crit_edge, label %lor.lhs.false.i

if.end13.i.if.end19.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

lor.lhs.false.i:                                  ; preds = %if.end13.i
  %call14.i = tail call i32 @clk_set_parent(ptr noundef nonnull %clk_uart.0.i, ptr noundef %clk_parent.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.else.i, label %lor.lhs.false.i.if.end19.i_crit_edge

lor.lhs.false.i.if.end19.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %call17.i = tail call i32 @clk_get_rate(ptr noundef nonnull %clk_uart.0.i) #11
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else.i, %lor.lhs.false.i.if.end19.i_crit_edge, %if.end13.i.if.end19.i_crit_edge
  %call17.sink.i = phi i32 [ %call17.i, %if.else.i ], [ 26000000, %lor.lhs.false.i.if.end19.i_crit_edge ], [ 26000000, %if.end13.i.if.end19.i_crit_edge ]
  %22 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call17.sink.i, ptr %uartclk, align 4
  %23 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev10, align 4
  %call21.i = tail call ptr @devm_clk_get(ptr noundef %24, ptr noundef nonnull @.str.36) #11
  %clk.i = getelementptr inbounds %struct.sprd_uart_port, ptr %call.i, i32 0, i32 2
  %25 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call21.i, ptr %clk.i, align 4
  %cmp.i64.i = icmp ugt ptr %call21.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i64.i, label %if.then24.i, label %if.end19.i.if.end14_crit_edge

if.end19.i.if.end14_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then24.i:                                      ; preds = %if.end19.i
  %cmp.i = icmp eq ptr %call21.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp.i, label %if.then24.i.cleanup_crit_edge, label %do.end31.i

if.then24.i.cleanup_crit_edge:                    ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end31.i:                                       ; preds = %if.then24.i
  %26 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev10, align 4
  %28 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %line, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.38, i32 noundef %29) #14
  %30 = load ptr, ptr getelementptr inbounds (%struct.uart_driver, ptr @sprd_uart_driver, i32 0, i32 6), align 4
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %do.end31.i.sprd_uart_is_console.exit.i_crit_edge, label %land.lhs.true.i.i

do.end31.i.sprd_uart_is_console.exit.i_crit_edge: ; preds = %do.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sprd_uart_is_console.exit.i

land.lhs.true.i.i:                                ; preds = %do.end31.i
  %index.i.i = getelementptr inbounds %struct.console, ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %index.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %32)
  %cmp.i65.i = icmp sgt i16 %32, -1
  br i1 %cmp.i65.i, label %land.lhs.true2.i.i, label %land.lhs.true.i.i.sprd_uart_is_console.exit.i_crit_edge

land.lhs.true.i.i.sprd_uart_is_console.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sprd_uart_is_console.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %conv13.i.i = zext i16 %32 to i32
  %33 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %conv13.i.i)
  %cmp5.i.i = icmp eq i32 %34, %conv13.i.i
  br i1 %cmp5.i.i, label %land.lhs.true2.i.i.if.end38.i_crit_edge, label %land.lhs.true2.i.i.sprd_uart_is_console.exit.i_crit_edge

land.lhs.true2.i.i.sprd_uart_is_console.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sprd_uart_is_console.exit.i

land.lhs.true2.i.i.if.end38.i_crit_edge:          ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38.i

sprd_uart_is_console.exit.i:                      ; preds = %land.lhs.true2.i.i.sprd_uart_is_console.exit.i_crit_edge, %land.lhs.true.i.i.sprd_uart_is_console.exit.i_crit_edge, %do.end31.i.sprd_uart_is_console.exit.i_crit_edge
  %35 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev10, align 4
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 27
  %37 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %of_node.i.i, align 8
  %39 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %line, align 4
  %call.i.i = tail call zeroext i1 @of_console_check(ptr noundef %38, ptr noundef nonnull @.str.4, i32 noundef %40) #11
  br i1 %call.i.i, label %sprd_uart_is_console.exit.i.if.end38.i_crit_edge, label %sprd_clk_init.exit

sprd_uart_is_console.exit.i.if.end38.i_crit_edge: ; preds = %sprd_uart_is_console.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38.i

if.end38.i:                                       ; preds = %sprd_uart_is_console.exit.i.if.end38.i_crit_edge, %land.lhs.true2.i.i.if.end38.i_crit_edge
  %41 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %clk.i, align 4
  br label %if.end14

sprd_clk_init.exit:                               ; preds = %sprd_uart_is_console.exit.i
  %42 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clk.i, align 4
  %44 = ptrtoint ptr %43 to i32
  %tobool12.not = icmp eq ptr %43, null
  br i1 %tobool12.not, label %sprd_clk_init.exit.if.end14_crit_edge, label %sprd_clk_init.exit.cleanup_crit_edge

sprd_clk_init.exit.cleanup_crit_edge:             ; preds = %sprd_clk_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sprd_clk_init.exit.if.end14_crit_edge:            ; preds = %sprd_clk_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end14:                                         ; preds = %sprd_clk_init.exit.if.end14_crit_edge, %if.end38.i, %if.end19.i.if.end14_crit_edge
  %call15 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #11
  %call17 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call15) #11
  %membase = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 2
  %45 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call17, ptr %membase, align 4
  %cmp.i96 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i96, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  %47 = ptrtoint ptr %call15 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %call15, align 4
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 43
  %49 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %mapbase, align 4
  %call24 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end23.cleanup_crit_edge, label %if.end27

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %irq28 = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 20
  %50 = ptrtoint ptr %irq28 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call24, ptr %irq28, align 4
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx, align 4
  %dev.i97 = getelementptr inbounds %struct.uart_port, ptr %52, i32 0, i32 45
  %53 = ptrtoint ptr %dev.i97 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i97, align 4
  %phys_addr.i = getelementptr inbounds %struct.sprd_uart_port, ptr %52, i32 0, i32 4, i32 2
  %call.i.i98 = tail call ptr @dma_alloc_attrs(ptr noundef %54, i32 noundef 1024, ptr noundef %phys_addr.i, i32 noundef 3264, i32 noundef 0) #11
  %virt.i = getelementptr inbounds %struct.sprd_uart_port, ptr %52, i32 0, i32 4, i32 1
  %55 = ptrtoint ptr %virt.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i.i98, ptr %virt.i, align 4
  %tobool.not.i99.not = icmp eq ptr %call.i.i98, null
  br i1 %tobool.not.i99.not, label %if.end27.cleanup_crit_edge, label %if.end33

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end33:                                         ; preds = %if.end27
  %56 = load i32, ptr @sprd_ports_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool34.not = icmp eq i32 %56, 0
  br i1 %tobool34.not, label %if.then35, label %if.end33.if.end44_crit_edge

if.end33.if.end44_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then35:                                        ; preds = %if.end33
  %call36 = tail call i32 @uart_register_driver(ptr noundef nonnull @sprd_uart_driver) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %do.end41, label %if.then35.if.end44_crit_edge

if.then35.if.end44_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

do.end41:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #14
  br label %cleanup

if.end44:                                         ; preds = %if.then35.if.end44_crit_edge, %if.end33.if.end44_crit_edge
  %57 = load i32, ptr @sprd_ports_num, align 4
  %inc = add i32 %57, 1
  store i32 %inc, ptr @sprd_ports_num, align 4
  %call45 = tail call i32 @uart_add_one_port(ptr noundef nonnull @sprd_uart_driver, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end44.if.end49_crit_edge, label %if.then47

if.end44.if.end49_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  %call48 = tail call i32 @sprd_remove(ptr noundef %pdev)
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end44.if.end49_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %58 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %do.end41, %if.end27.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.then20, %sprd_clk_init.exit.cleanup_crit_edge, %if.then24.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %46, %if.then20 ], [ %call45, %if.end49 ], [ %call36, %do.end41 ], [ -12, %if.end.cleanup_crit_edge ], [ %44, %sprd_clk_init.exit.cleanup_crit_edge ], [ %call24, %if.end23.cleanup_crit_edge ], [ -12, %if.end27.cleanup_crit_edge ], [ -517, %if.then24.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_remove(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.endthread-pre-split, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @sprd_uart_driver, ptr noundef nonnull %1) #11
  %line = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %line, align 4
  %arrayidx = getelementptr [8 x ptr], ptr @sprd_port, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  %virt.i = getelementptr inbounds %struct.sprd_uart_port, ptr %1, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %virt.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.then.sprd_rx_free_buf.exit_crit_edge, label %if.then.i

if.then.sprd_rx_free_buf.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sprd_rx_free_buf.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 45
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %phys_addr.i = getelementptr inbounds %struct.sprd_uart_port, ptr %1, i32 0, i32 4, i32 2
  %9 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %phys_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %8, i32 noundef 1024, ptr noundef nonnull %6, i32 noundef %10, i32 noundef 0) #11
  br label %sprd_rx_free_buf.exit

sprd_rx_free_buf.exit:                            ; preds = %if.then.i, %if.then.sprd_rx_free_buf.exit_crit_edge
  %11 = load i32, ptr @sprd_ports_num, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr @sprd_ports_num, align 4
  br label %if.end

if.endthread-pre-split:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %.pr = load i32, ptr @sprd_ports_num, align 4
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %sprd_rx_free_buf.exit
  %12 = phi i32 [ %.pr, %if.endthread-pre-split ], [ %dec, %sprd_rx_free_buf.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool3.not = icmp eq i32 %12, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @uart_unregister_driver(ptr noundef nonnull @sprd_uart_driver) #11
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_tx_empty(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !115
  %3 = and i32 %2, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_set_mctrl(ptr nocapture noundef readonly %port, i32 noundef %mctrl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !115
  %3 = and i32 %2, -4194305
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %and = lshr i32 %mctrl, 1
  %5 = and i32 %and, 16384
  %val.0 = or i32 %4, %5
  %6 = tail call i32 @llvm.bswap.i32(i32 %val.0) #11
  %7 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %8, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %6) #11, !srcloc !116
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sprd_get_mctrl(ptr nocapture noundef readnone %port) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 288
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_stop_tx(ptr nocapture noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %enable = getelementptr inbounds %struct.sprd_uart_port, ptr %port, i32 0, i32 3, i32 5
  %0 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enable, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @sprd_stop_tx_dma(ptr noundef %port)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !115
  %5 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %6, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #11, !srcloc !115
  %8 = or i32 %4, 33554432
  %9 = and i32 %7, -33554433
  %10 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %9) #11, !srcloc !116
  %12 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %13, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %8) #11, !srcloc !116
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_start_tx(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %enable = getelementptr inbounds %struct.sprd_uart_port, ptr %port, i32 0, i32 3, i32 5
  %0 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enable, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %x_char.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 24
  %2 = ptrtoint ptr %x_char.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %x_char.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i8 %3 to i32
  %4 = shl nuw i32 %conv.i, 24
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %5 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #11, !srcloc !116
  %tx.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 5
  %7 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx.i, align 4
  %inc.i = add i32 %8, 1
  store i32 %inc.i, ptr %tx.i, align 4
  %9 = ptrtoint ptr %x_char.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %x_char.i, align 4
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %state.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state.i, align 4
  %head.i = getelementptr inbounds %struct.uart_state, ptr %11, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %head.i, align 4
  %tail.i = getelementptr inbounds %struct.uart_state, ptr %11, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.i = icmp eq i32 %13, %15
  br i1 %cmp.i, label %if.end.i.if.then6.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then6.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %tty2.i.i = getelementptr inbounds %struct.tty_port, ptr %11, i32 0, i32 1
  %16 = ptrtoint ptr %tty2.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tty2.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.uart_tx_stopped.exit.i_crit_edge, label %land.lhs.true.i.i

lor.lhs.false.i.uart_tx_stopped.exit.i_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uart_tx_stopped.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i
  %stopped.i.i = getelementptr inbounds %struct.tty_struct, ptr %17, i32 0, i32 19, i32 1
  %18 = ptrtoint ptr %stopped.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %stopped.i.i, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool3.not.i.i = icmp eq i8 %19, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.uart_tx_stopped.exit.i_crit_edge, label %land.lhs.true.i.i.if.then6.i_crit_edge

land.lhs.true.i.i.if.then6.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6.i

land.lhs.true.i.i.uart_tx_stopped.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uart_tx_stopped.exit.i

uart_tx_stopped.exit.i:                           ; preds = %land.lhs.true.i.i.uart_tx_stopped.exit.i_crit_edge, %lor.lhs.false.i.uart_tx_stopped.exit.i_crit_edge
  %hw_stopped.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 35
  %20 = ptrtoint ptr %hw_stopped.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hw_stopped.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool4.not.i.not.i = icmp eq i32 %21, 0
  br i1 %tobool4.not.i.not.i, label %if.end7.i, label %uart_tx_stopped.exit.i.if.then6.i_crit_edge

uart_tx_stopped.exit.i.if.then6.i_crit_edge:      ; preds = %uart_tx_stopped.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6.i

if.then6.i:                                       ; preds = %uart_tx_stopped.exit.i.if.then6.i_crit_edge, %land.lhs.true.i.i.if.then6.i_crit_edge, %if.end.i.if.then6.i_crit_edge
  tail call fastcc void @sprd_stop_tx_dma(ptr noundef %port) #11
  br label %cleanup

if.end7.i:                                        ; preds = %uart_tx_stopped.exit.i
  %trans_len.i = getelementptr inbounds %struct.sprd_uart_port, ptr %port, i32 0, i32 3, i32 4
  %22 = ptrtoint ptr %trans_len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %trans_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool8.not.i = icmp eq i32 %23, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end7.i.cleanup_crit_edge

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10.i:                                       ; preds = %if.end7.i
  %call11.i = tail call fastcc i32 @sprd_tx_buf_remap(ptr noundef %port) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %lor.lhs.false13.i, label %if.end10.i.if.then16.i_crit_edge

if.end10.i.if.then16.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16.i

lor.lhs.false13.i:                                ; preds = %if.end10.i
  %call14.i = tail call fastcc i32 @sprd_tx_dma_config(ptr noundef %port) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %lor.lhs.false13.i.cleanup_crit_edge, label %lor.lhs.false13.i.if.then16.i_crit_edge

lor.lhs.false13.i.if.then16.i_crit_edge:          ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16.i

lor.lhs.false13.i.cleanup_crit_edge:              ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then16.i:                                      ; preds = %lor.lhs.false13.i.if.then16.i_crit_edge, %if.end10.i.if.then16.i_crit_edge
  %24 = ptrtoint ptr %trans_len.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %trans_len.i, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %25 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 16
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !115
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #11
  %and = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %or = or i32 %28, 2
  %29 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %30 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %31, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %29) #11, !srcloc !116
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %if.then16.i, %lor.lhs.false13.i.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %if.then6.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_stop_rx(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %enable = getelementptr inbounds %struct.sprd_uart_port, ptr %port, i32 0, i32 4, i32 5
  %0 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enable, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %rx_dma = getelementptr inbounds %struct.sprd_uart_port, ptr %port, i32 0, i32 4
  %2 = ptrtoint ptr %rx_dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_dma, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 47
  %6 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 %7(ptr noundef %3) #11
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %8 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 20
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !115
  %11 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %12, i32 16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #11, !srcloc !115
  %14 = and i32 %13, 2130706431
  %15 = or i32 %10, -2130706432
  %16 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %17, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %14) #11, !srcloc !116
  %18 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %19, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %15) #11, !srcloc !116
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sprd_break_ctl(ptr nocapture noundef %port, i32 noundef %break_state) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_startup(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1077936128) #11, !srcloc !116
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %entry
  %dec99 = phi i32 [ 255999, %entry ], [ %dec, %while.body.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 4
  %add.ptr.i80 = getelementptr i8, ptr %3, i32 12
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i80) #11, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %4)
  %tobool1.not = icmp ult i32 %4, 16777216
  br i1 %tobool1.not, label %land.rhs.land.rhs6.preheader_crit_edge, label %while.body

land.rhs.land.rhs6.preheader_crit_edge:           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs6.preheader

while.body:                                       ; preds = %land.rhs
  %5 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i, align 4
  %add.ptr.i82 = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82) #11, !srcloc !115
  %dec = add nsw i32 %dec99, -1
  %tobool.not = icmp eq i32 %dec99, 0
  br i1 %tobool.not, label %while.body.land.rhs6.preheader_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

while.body.land.rhs6.preheader_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs6.preheader

land.rhs6.preheader:                              ; preds = %while.body.land.rhs6.preheader_crit_edge, %land.rhs.land.rhs6.preheader_crit_edge
  br label %land.rhs6

land.rhs6:                                        ; preds = %do.end.land.rhs6_crit_edge, %land.rhs6.preheader
  %dec4100 = phi i32 [ %dec4, %do.end.land.rhs6_crit_edge ], [ 255999, %land.rhs6.preheader ]
  %8 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i, align 4
  %add.ptr.i84 = getelementptr i8, ptr %9, i32 12
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i84) #11, !srcloc !115
  %11 = and i32 %10, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9.not = icmp eq i32 %11, 0
  br i1 %tobool9.not, label %land.rhs6.while.end18_crit_edge, label %do.end

land.rhs6.while.end18_crit_edge:                  ; preds = %land.rhs6
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end18

do.end:                                           ; preds = %land.rhs6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !123
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !124
  %dec4 = add nsw i32 %dec4100, -1
  %tobool5.not = icmp eq i32 %dec4100, 0
  br i1 %tobool5.not, label %do.end.while.end18_crit_edge, label %do.end.land.rhs6_crit_edge

do.end.land.rhs6_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs6

do.end.while.end18_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end18

while.end18:                                      ; preds = %do.end.while.end18_crit_edge, %land.rhs6.while.end18_crit_edge
  %12 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i, align 4
  %add.ptr.i86 = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86, i32 0) #11, !srcloc !116
  %14 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i, align 4
  %add.ptr.i88 = getelementptr i8, ptr %15, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88, i32 -1) #11, !srcloc !116
  %name = getelementptr inbounds %struct.sprd_uart_port, ptr %port, i32 0, i32 1
  %line = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %16 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %line, align 4
  %call19 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 16, ptr noundef nonnull @.str.15, i32 noundef %17)
  %tx_dma.i.i = getelementptr inbounds %struct.sprd_uart_port, ptr %port, i32 0, i32 3
  %enable.i.i = getelementptr inbounds %struct.sprd_uart_port, ptr %port, i32 0, i32 3, i32 5
  %18 = ptrtoint ptr %enable.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %enable.i.i, align 4
  %rx_dma.i.i = getelementptr inbounds %struct.sprd_uart_port, ptr %port, i32 0, i32 4
  %enable1.i.i = getelementptr inbounds %struct.sprd_uart_port, ptr %port, i32 0, i32 4, i32 5
  %19 = ptrtoint ptr %enable1.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %enable1.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %20 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i.i, align 4
  %call.i.i = tail call ptr @dma_request_chan(ptr noundef %21, ptr noundef nonnull @.str.21) #11
  %22 = ptrtoint ptr %tx_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i.i, ptr %tx_dma.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %do.end.i.i, label %while.end18.if.end.i.i_crit_edge

while.end18.if.end.i.i_crit_edge:                 ; preds = %while.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %while.end18
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i.i, align 4
  %25 = ptrtoint ptr %call.i.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.22, i32 noundef %25) #14
  %26 = ptrtoint ptr %enable.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %enable.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %while.end18.if.end.i.i_crit_edge
  %27 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i.i, align 4
  %call13.i.i = tail call ptr @dma_request_chan(ptr noundef %28, ptr noundef nonnull @.str.24) #11
  %29 = ptrtoint ptr %rx_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call13.i.i, ptr %rx_dma.i.i, align 4
  %cmp.i43.i.i = icmp ugt ptr %call13.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i43.i.i, label %sprd_request_dma.exit.i.thread, label %sprd_request_dma.exit.i

sprd_request_dma.exit.i.thread:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i.i, align 4
  %32 = ptrtoint ptr %call13.i.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.26, i32 noundef %32) #14
  %33 = ptrtoint ptr %enable1.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %enable1.i.i, align 4
  br label %lor.lhs.false.i

sprd_request_dma.exit.i:                          ; preds = %if.end.i.i
  %34 = ptrtoint ptr %enable1.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %.pr = load i8, ptr %enable1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool.not.i = icmp eq i8 %.pr, 0
  br i1 %tobool.not.i, label %sprd_request_dma.exit.i.lor.lhs.false.i_crit_edge, label %sprd_request_dma.exit.i.if.end.i_crit_edge

sprd_request_dma.exit.i.if.end.i_crit_edge:       ; preds = %sprd_request_dma.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

sprd_request_dma.exit.i.lor.lhs.false.i_crit_edge: ; preds = %sprd_request_dma.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %sprd_request_dma.exit.i.lor.lhs.false.i_crit_edge, %sprd_request_dma.exit.i.thread
  %35 = ptrtoint ptr %enable.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %enable.i.i, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool2.not.i = icmp eq i8 %36, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.sprd_uart_dma_startup.exit_crit_edge, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

lor.lhs.false.i.sprd_uart_dma_startup.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sprd_uart_dma_startup.exit

if.end.i:                                         ; preds = %lor.lhs.false.i.if.end.i_crit_edge, %sprd_request_dma.exit.i.if.end.i_crit_edge
  %call.i = tail call fastcc i32 @sprd_start_dma_rx(ptr noundef %port) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then4.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %enable1.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %enable1.i.i, align 4
  %38 = ptrtoint ptr %rx_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rx_dma.i.i, align 4
  tail call void @dma_release_channel(ptr noundef %39) #11
  %40 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.18) #14
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then4.i, %if.end.i.if.end8.i_crit_edge
  %42 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %43, i32 28
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !115
  %45 = or i32 %44, 8388608
  %46 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %membase.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %47, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 %45) #11, !srcloc !116
  br label %sprd_uart_dma_startup.exit

sprd_uart_dma_startup.exit:                       ; preds = %if.end8.i, %lor.lhs.false.i.sprd_uart_dma_startup.exit_crit_edge
  %48 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i.i, align 4
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %50 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %irq, align 4
  %call.i89 = tail call i32 @devm_request_threaded_irq(ptr noundef %49, i32 noundef %51, ptr noundef nonnull @sprd_handle_irq, ptr noundef null, i32 noundef 128, ptr noundef %name, ptr noundef %port) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %tobool23.not = icmp eq i32 %call.i89, 0
  br i1 %tobool23.not, label %if.end, label %do.end26

do.end26:                                         ; preds = %sprd_uart_dma_startup.exit
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i.i, align 4
  %54 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.16, i32 noundef %55, i32 noundef %call.i89) #14
  br label %cleanup

if.end:                                           ; preds = %sprd_uart_dma_startup.exit
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %membase.i, align 4
  %add.ptr.i91 = getelementptr i8, ptr %57, i32 28
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i91) #11, !srcloc !115
  %59 = or i32 %58, 1077805056
  %60 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %membase.i, align 4
  %add.ptr.i93 = getelementptr i8, ptr %61, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93, i32 %59) #11, !srcloc !116
  %call34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #11
  %62 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %membase.i, align 4
  %add.ptr.i95 = getelementptr i8, ptr %63, i32 16
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i95) #11, !srcloc !115
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #11
  %66 = ptrtoint ptr %enable1.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %enable1.i.i, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool41.not = icmp eq i8 %67, 0
  %spec.select.v = select i1 %tobool41.not, i32 8321, i32 8320
  %spec.select = or i32 %spec.select.v, %65
  %68 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #11
  %69 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %membase.i, align 4
  %add.ptr.i97 = getelementptr i8, ptr %70, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97, i32 %68) #11, !srcloc !116
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call34) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end26
  ret i32 %call.i89
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_shutdown(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !115
  %3 = and i32 %2, -8388609
  %4 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %5, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 %3) #11, !srcloc !116
  %enable.i = getelementptr inbounds %struct.sprd_uart_port, ptr %port, i32 0, i32 4, i32 5
  %6 = ptrtoint ptr %enable.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enable.i, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %rx_dma.i = getelementptr inbounds %struct.sprd_uart_port, ptr %port, i32 0, i32 4
  %8 = ptrtoint ptr %rx_dma.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_dma.i, align 4
  tail call void @dma_release_channel(ptr noundef %9) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %enable2.i = getelementptr inbounds %struct.sprd_uart_port, ptr %port, i32 0, i32 3, i32 5
  %10 = ptrtoint ptr %enable2.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enable2.i, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not.i = icmp eq i8 %11, 0
  br i1 %tobool3.not.i, label %if.end.i.sprd_release_dma.exit_crit_edge, label %if.then4.i

if.end.i.sprd_release_dma.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sprd_release_dma.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %tx_dma.i = getelementptr inbounds %struct.sprd_uart_port, ptr %port, i32 0, i32 3
  %12 = ptrtoint ptr %tx_dma.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_dma.i, align 4
  tail call void @dma_release_channel(ptr noundef %13) #11
  br label %sprd_release_dma.exit

sprd_release_dma.exit:                            ; preds = %if.then4.i, %if.end.i.sprd_release_dma.exit_crit_edge
  %14 = ptrtoint ptr %enable2.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %enable2.i, align 4
  %15 = ptrtoint ptr %enable.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %enable.i, align 4
  %16 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #11, !srcloc !116
  %18 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %19, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 -1) #11, !srcloc !116
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %22 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq, align 4
  tail call void @devm_free_irq(ptr noundef %21, i32 noundef %23, ptr noundef %port) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_set_termios(ptr noundef %port, ptr noundef %termios, ptr noundef %old) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @uart_get_baud_rate(ptr noundef %port, ptr noundef %termios, ptr noundef %old, i32 noundef 0, i32 noundef 3000000) #11
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %0 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %uartclk, align 4
  %div = udiv i32 %1, %call
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %2 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c_cflag, align 4
  %4 = lshr i32 %3, 2
  %switch.idx.mult = and i32 %4, 12
  %and9 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool.not = icmp eq i32 %and9, 0
  %lcr.1.v = select i1 %tobool.not, i32 16, i32 48
  %lcr.1 = or i32 %switch.idx.mult, %lcr.1.v
  %and14 = and i32 %3, -1073741825
  %5 = ptrtoint ptr %c_cflag to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and14, ptr %c_cflag, align 4
  %and16 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %entry.do.body29_crit_edge, label %if.then18

entry.do.body29_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body29

if.then18:                                        ; preds = %entry
  %and21 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.else25, label %if.then23

if.then23:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  %or24 = or i32 %lcr.1, 3
  br label %do.body29

if.else25:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  %or19 = or i32 %lcr.1, 2
  br label %do.body29

do.body29:                                        ; preds = %if.else25, %if.then23, %entry.do.body29_crit_edge
  %lcr.2 = phi i32 [ %or24, %if.then23 ], [ %or19, %if.else25 ], [ %lcr.1, %entry.do.body29_crit_edge ]
  %call31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #11
  %6 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %c_cflag, align 4
  tail call void @uart_update_timeout(ptr noundef %port, i32 noundef %7, i32 noundef %call) #11
  %read_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 28
  %8 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16, ptr %read_status_mask, align 4
  %9 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %termios, align 4
  %and35 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  %spec.store.select = select i1 %tobool36.not, i32 16, i32 28
  %11 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.store.select, ptr %read_status_mask, align 4
  %12 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %termios, align 4
  %and42 = and i32 %13, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %do.body29.if.end47_crit_edge, label %if.then44

do.body29.if.end47_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.then44:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #13
  %or46 = or i32 %spec.store.select, 128
  %14 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or46, ptr %read_status_mask, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %do.body29.if.end47_crit_edge
  %ignore_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 29
  %15 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %ignore_status_mask, align 4
  %16 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %termios, align 4
  %and49 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  %spec.store.select137 = select i1 %tobool50.not, i32 0, i32 12
  %18 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.store.select137, ptr %ignore_status_mask, align 4
  %19 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %termios, align 4
  %and56 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end47.if.end68_crit_edge, label %if.then58

if.end47.if.end68_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.then58:                                        ; preds = %if.end47
  %or60 = or i32 %spec.store.select137, 128
  %21 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or60, ptr %ignore_status_mask, align 4
  %22 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %termios, align 4
  %and62 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.then58.if.end68_crit_edge, label %if.then64

if.then58.if.end68_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.then64:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #13
  %or66 = or i32 %spec.store.select137, 144
  %24 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or66, ptr %ignore_status_mask, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then64, %if.then58.if.end68_crit_edge, %if.end47.if.end68_crit_edge
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %25 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 28
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !115
  %28 = and i32 %27, 1069613055
  %29 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool73.not146 = icmp slt i32 %30, 0
  %masksel = select i1 %tobool73.not146, i32 384, i32 0
  %and79 = and i32 %div, 65535
  %31 = tail call i32 @llvm.bswap.i32(i32 %and79) #11
  %32 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase.i, align 4
  %add.ptr.i139 = getelementptr i8, ptr %33, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139, i32 %31) #11, !srcloc !116
  %34 = shl i32 %div, 8
  %35 = and i32 %34, 520093696
  %36 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase.i, align 4
  %add.ptr.i141 = getelementptr i8, ptr %37, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i141, i32 %35) #11, !srcloc !116
  %38 = tail call i32 @llvm.bswap.i32(i32 %lcr.2) #11
  %39 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase.i, align 4
  %add.ptr.i143 = getelementptr i8, ptr %40, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143, i32 %38) #11, !srcloc !116
  %41 = or i32 %28, 1077805056
  %42 = call i32 @llvm.bswap.i32(i32 %41)
  %or81 = or i32 %42, %masksel
  %43 = tail call i32 @llvm.bswap.i32(i32 %or81) #11
  %44 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %membase.i, align 4
  %add.ptr.i145 = getelementptr i8, ptr %45, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i145, i32 %43) #11, !srcloc !116
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call31) #11
  %call83 = tail call i32 @tty_termios_baud_rate(ptr noundef %termios) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end68.if.end86_crit_edge, label %if.then85

if.end68.if.end86_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86

if.then85:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @tty_termios_encode_baud_rate(ptr noundef %termios, i32 noundef %call, i32 noundef %call) #11
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %if.end68.if.end86_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_pm(ptr nocapture noundef readonly %port, i32 noundef %state, i32 noundef %oldstate) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %state, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %clk = getelementptr inbounds %struct.sprd_uart_port, ptr %port, i32 0, i32 2
  %1 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %call1.i = tail call i32 @clk_enable(ptr noundef %2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.sw.epilog_crit_edge, label %if.end.i.sw.epilog.sink.split_crit_edge

if.end.i.sw.epilog.sink.split_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %clk2 = getelementptr inbounds %struct.sprd_uart_port, ptr %port, i32 0, i32 2
  %3 = ptrtoint ptr %clk2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk2, align 4
  tail call void @clk_disable(ptr noundef %4) #11
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb1, %if.end.i.sw.epilog.sink.split_crit_edge
  %.sink = phi ptr [ %4, %sw.bb1 ], [ %2, %if.end.i.sw.epilog.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @sprd_type(ptr nocapture noundef readnone %port) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sprd_release_port(ptr nocapture noundef %port) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sprd_request_port(ptr nocapture noundef readnone %port) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @sprd_config_port(ptr nocapture noundef writeonly %port, i32 noundef %flags) #8 align 64 {
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
  store i32 111, ptr %type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sprd_verify_port(ptr nocapture noundef readonly %port, ptr nocapture noundef readonly %ser) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ser to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ser, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 111, i32 %1)
  %cmp.not = icmp eq i32 %1, 111
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
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
  br i1 %cmp2.not, label %if.end4, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %iotype = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %6 = ptrtoint ptr %iotype to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %iotype, align 2
  %io_type = getelementptr inbounds %struct.serial_struct, ptr %ser, i32 0, i32 9
  %8 = ptrtoint ptr %io_type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %io_type, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %9)
  %cmp6.not = icmp eq i8 %7, %9
  %. = select i1 %cmp6.not, i32 0, i32 -22
  br label %return

return:                                           ; preds = %if.end4, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ %., %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_poll_init(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %pm_state = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pm_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pm_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %clk.i = getelementptr inbounds %struct.sprd_uart_port, ptr %port, i32 0, i32 2
  %4 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.sprd_pm.exit_crit_edge

if.then.sprd_pm.exit_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sprd_pm.exit

if.end.i.i:                                       ; preds = %if.then
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.sprd_pm.exit_crit_edge, label %sw.epilog.sink.split.i

if.end.i.i.sprd_pm.exit_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sprd_pm.exit

sw.epilog.sink.split.i:                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %5) #11
  br label %sprd_pm.exit

sprd_pm.exit:                                     ; preds = %sw.epilog.sink.split.i, %if.end.i.i.sprd_pm.exit_crit_edge, %if.then.sprd_pm.exit_crit_edge
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state, align 4
  %pm_state2 = getelementptr inbounds %struct.uart_state, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %pm_state2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %pm_state2, align 4
  br label %if.end

if.end:                                           ; preds = %sprd_pm.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_poll_put_char(ptr nocapture noundef readonly %port, i8 noundef zeroext %ch) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7) #11, !srcloc !115
  %3 = and i32 %2, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not8 = icmp eq i32 %3, 0
  br i1 %tobool.not8, label %entry.while.end_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !126
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !115
  %7 = and i32 %6, 16711680
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  %conv = zext i8 %ch to i32
  %8 = shl nuw i32 %conv, 24
  %9 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #11, !srcloc !116
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_poll_get_char(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9) #11, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %2)
  %tobool.not10 = icmp ult i32 %2, 16777216
  br i1 %tobool.not10, label %entry.do.end_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !127
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !128
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !115
  %tobool.not = icmp ult i32 %5, 16777216
  br i1 %tobool.not, label %do.end.do.end_crit_edge, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  %6 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8) #11, !srcloc !115
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #11
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sprd_stop_tx_dma(ptr nocapture noundef %port) unnamed_addr #3 align 64 {
entry:
  %state2 = alloca %struct.dma_tx_state, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state2) #11
  %2 = getelementptr inbounds %struct.dma_tx_state, ptr %state2, i32 0, i32 2
  %tx_dma = getelementptr inbounds %struct.sprd_uart_port, ptr %port, i32 0, i32 3
  %3 = call ptr @memset(ptr %state2, i32 255, i32 16)
  %4 = ptrtoint ptr %tx_dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_dma, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %device_pause.i = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 45
  %8 = ptrtoint ptr %device_pause.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device_pause.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.dmaengine_pause.exit_crit_edge, label %if.then.i

entry.dmaengine_pause.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_pause.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 %9(ptr noundef %5) #11
  br label %dmaengine_pause.exit

dmaengine_pause.exit:                             ; preds = %if.then.i, %entry.dmaengine_pause.exit_crit_edge
  %10 = ptrtoint ptr %tx_dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_dma, align 4
  %cookie = getelementptr inbounds %struct.sprd_uart_port, ptr %port, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cookie, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %15, i32 0, i32 49
  %16 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device_tx_status.i, align 4
  %call.i32 = call i32 %17(ptr noundef %11, i32 noundef %13, ptr noundef nonnull %state2) #11
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %dmaengine_pause.exit.if.end_crit_edge, label %if.then

dmaengine_pause.exit.if.end_crit_edge:            ; preds = %dmaengine_pause.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %dmaengine_pause.exit
  call void @__sanitizer_cov_trace_pc() #13
  %phys_addr = getelementptr inbounds %struct.sprd_uart_port, ptr %port, i32 0, i32 3, i32 2
  %20 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phys_addr, align 4
  %sub = sub i32 %19, %21
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tail, align 4
  %add = add i32 %23, %sub
  %and = and i32 %add, 4095
  store i32 %and, ptr %tail, align 4
  %tx = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 5
  %24 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx, align 4
  %add10 = add i32 %25, %sub
  store i32 %add10, ptr %tx, align 4
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %28 = load i32, ptr %phys_addr, align 4
  %trans_len14 = getelementptr inbounds %struct.sprd_uart_port, ptr %port, i32 0, i32 3, i32 4
  %29 = ptrtoint ptr %trans_len14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %trans_len14, align 4
  call void @dma_unmap_page_attrs(ptr noundef %27, i32 noundef %28, i32 noundef %30, i32 noundef 1, i32 noundef 0) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %dmaengine_pause.exit.if.end_crit_edge
  %31 = ptrtoint ptr %tx_dma to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tx_dma, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %34, i32 0, i32 47
  %35 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i33 = icmp eq ptr %36, null
  br i1 %tobool.not.i33, label %if.end.dmaengine_terminate_all.exit_crit_edge, label %if.then.i35

if.end.dmaengine_terminate_all.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_terminate_all.exit

if.then.i35:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call.i34 = call i32 %36(ptr noundef %32) #11
  br label %dmaengine_terminate_all.exit

dmaengine_terminate_all.exit:                     ; preds = %if.then.i35, %if.end.dmaengine_terminate_all.exit_crit_edge
  %trans_len19 = getelementptr inbounds %struct.sprd_uart_port, ptr %port, i32 0, i32 3, i32 4
  %37 = ptrtoint ptr %trans_len19 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %trans_len19, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sprd_tx_buf_remap(ptr nocapture noundef %port) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tail, align 4
  %sub = sub i32 4096, %3
  %head = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %head, align 4
  %add = add i32 %5, %sub
  %and = and i32 %add, 4095
  %6 = tail call i32 @llvm.smin.i32(i32 %and, i32 %sub)
  %xmit1 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2
  %trans_len = getelementptr inbounds %struct.sprd_uart_port, ptr %port, i32 0, i32 3, i32 4
  %7 = ptrtoint ptr %trans_len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %trans_len, align 4
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %xmit1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xmit1, align 4
  %12 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tail, align 4
  %arrayidx = getelementptr i8, ptr %11, i32 %13
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %arrayidx) #11
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !129

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %9) #11
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 3
  %14 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %9, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %17, %if.end.i.i ], [ %15, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %9, ptr noundef %arrayidx, i32 noundef %6) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %18 = load ptr, ptr @mem_map, align 4
  %19 = ptrtoint ptr %arrayidx to i32
  %sub.i = add i32 %19, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %18, i32 %shr.i
  %and.i = and i32 %19, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %9, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %6, i32 noundef 1, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %phys_addr = getelementptr inbounds %struct.sprd_uart_port, ptr %port, i32 0, i32 3, i32 2
  %20 = ptrtoint ptr %phys_addr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %retval.0.i, ptr %phys_addr, align 4
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %22, i32 noundef %retval.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  %spec.select = select i1 %cmp.i, i32 -12, i32 0
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sprd_tx_dma_config(ptr noundef %port) unnamed_addr #3 align 64 {
entry:
  %sg.i.i = alloca %struct.scatterlist, align 4
  %cfg = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_dma = getelementptr inbounds %struct.sprd_uart_port, ptr %port, i32 0, i32 3
  %trans_len = getelementptr inbounds %struct.sprd_uart_port, ptr %port, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %trans_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %trans_len, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 32)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cfg) #11
  %3 = getelementptr inbounds i8, ptr %cfg, i32 36
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !130
  %5 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %cfg, align 4
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 1
  %6 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %src_addr, align 4
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 2
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %7 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mapbase, align 4
  %9 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %dst_addr, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 3
  %10 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %src_addr_width, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 4
  %11 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %dst_addr_width, align 4
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 5
  %12 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %2, ptr %src_maxburst, align 4
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 6
  %peripheral_config = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 10
  %13 = ptrtoint ptr %peripheral_config to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %peripheral_config, align 4
  %peripheral_size = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 11
  %14 = ptrtoint ptr %peripheral_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %peripheral_size, align 4
  %15 = call ptr @memset(ptr %dst_maxburst, i32 0, i32 13)
  %16 = ptrtoint ptr %tx_dma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_dma, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 44
  %20 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %dmaengine_slave_config.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

dmaengine_slave_config.exit:                      ; preds = %entry
  %call.i = call i32 %21(ptr noundef %17, ptr noundef nonnull %cfg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4 = icmp slt i32 %call.i, 0
  br i1 %cmp4, label %dmaengine_slave_config.exit.cleanup_crit_edge, label %if.end

dmaengine_slave_config.exit.cleanup_crit_edge:    ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %dmaengine_slave_config.exit
  %22 = ptrtoint ptr %trans_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %trans_len, align 4
  %24 = ptrtoint ptr %tx_dma to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_dma, align 4
  %phys_addr.i = getelementptr inbounds %struct.sprd_uart_port, ptr %port, i32 0, i32 3, i32 2
  %26 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %phys_addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i) #11
  %28 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i, i32 0, i32 3
  %29 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i, i32 0, i32 4
  %30 = call ptr @memset(ptr %sg.i.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i.i, i32 noundef 1) #11
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %27, ptr %28, align 4
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %23, ptr %29, align 4
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %if.end.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %lor.lhs.false.i.i

if.end.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_prep_slave_single.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %if.end
  %33 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %25, align 4
  %tobool1.not.i.i = icmp eq ptr %34, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_prep_slave_single.exit.thread.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %34, i32 0, i32 39
  %35 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %36, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %dmaengine_prep_slave_single.exit.i

lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_prep_slave_single.exit.thread.i

dmaengine_prep_slave_single.exit.thread.i:        ; preds = %lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, %lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, %if.end.dmaengine_prep_slave_single.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #11
  br label %cleanup

dmaengine_prep_slave_single.exit.i:               ; preds = %lor.lhs.false2.i.i
  %call.i.i = call ptr %36(ptr noundef nonnull %25, ptr noundef nonnull %sg.i.i, i32 noundef 1, i32 noundef 1, i32 noundef 4, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #11
  %tobool.not.i19 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i19, label %dmaengine_prep_slave_single.exit.i.cleanup_crit_edge, label %if.end.i

dmaengine_prep_slave_single.exit.i.cleanup_crit_edge: ; preds = %dmaengine_prep_slave_single.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %dmaengine_prep_slave_single.exit.i
  %callback1.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 6
  %37 = ptrtoint ptr %callback1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @sprd_complete_tx_dma, ptr %callback1.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 8
  %38 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %port, ptr %callback_param.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 4
  %39 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i20.i = call i32 %40(ptr noundef nonnull %call.i.i) #11
  %cookie.i = getelementptr inbounds %struct.sprd_uart_port, ptr %port, i32 0, i32 3, i32 3
  %41 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call.i20.i, ptr %cookie.i, align 4
  %42 = call i32 @llvm.smin.i32(i32 %call.i20.i, i32 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i20.i)
  %tobool5.not.i = icmp sgt i32 %call.i20.i, -1
  br i1 %tobool5.not.i, label %if.end9.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %tx_dma to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tx_dma, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %46, i32 0, i32 50
  %47 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device_issue_pending.i.i, align 4
  call void %48(ptr noundef %44) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end9.i, %if.end.i.cleanup_crit_edge, %dmaengine_prep_slave_single.exit.i.cleanup_crit_edge, %dmaengine_prep_slave_single.exit.thread.i, %dmaengine_slave_config.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %dmaengine_slave_config.exit.cleanup_crit_edge ], [ 0, %if.end9.i ], [ -19, %dmaengine_prep_slave_single.exit.i.cleanup_crit_edge ], [ -19, %dmaengine_prep_slave_single.exit.thread.i ], [ %42, %if.end.i.cleanup_crit_edge ], [ -38, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_complete_tx_dma(ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %data) #11
  %dev = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 45
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %phys_addr = getelementptr inbounds %struct.sprd_uart_port, ptr %data, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phys_addr, align 4
  %trans_len = getelementptr inbounds %struct.sprd_uart_port, ptr %data, i32 0, i32 3, i32 4
  %6 = ptrtoint ptr %trans_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %trans_len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef 1, i32 noundef 0) #11
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tail, align 4
  %10 = ptrtoint ptr %trans_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %trans_len, align 4
  %add = add i32 %11, %9
  %and = and i32 %add, 4095
  store i32 %and, ptr %tail, align 4
  %12 = load i32, ptr %trans_len, align 4
  %tx = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 31, i32 5
  %13 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx, align 4
  %add13 = add i32 %14, %12
  store i32 %add13, ptr %tx, align 4
  %head = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %head, align 4
  %17 = load i32, ptr %tail, align 4
  %sub = sub i32 %16, %17
  %and15 = and i32 %sub, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %cmp16 = icmp eq i32 %and15, 0
  br i1 %cmp16, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @uart_write_wakeup(ptr noundef %data) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %18 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %head, align 4
  %20 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp20 = icmp eq i32 %19, %21
  br i1 %cmp20, label %if.end.if.then26_crit_edge, label %lor.lhs.false

if.end.if.then26_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26

lor.lhs.false:                                    ; preds = %if.end
  %call22 = tail call fastcc i32 @sprd_tx_buf_remap(ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool.not = icmp eq i32 %call22, 0
  br i1 %tobool.not, label %lor.lhs.false23, label %lor.lhs.false.if.then26_crit_edge

lor.lhs.false.if.then26_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26

lor.lhs.false23:                                  ; preds = %lor.lhs.false
  %call24 = tail call fastcc i32 @sprd_tx_dma_config(ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %lor.lhs.false23.if.end29_crit_edge, label %lor.lhs.false23.if.then26_crit_edge

lor.lhs.false23.if.then26_crit_edge:              ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26

lor.lhs.false23.if.end29_crit_edge:               ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then26:                                        ; preds = %lor.lhs.false23.if.then26_crit_edge, %lor.lhs.false.if.then26_crit_edge, %if.end.if.then26_crit_edge
  %22 = ptrtoint ptr %trans_len to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %trans_len, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %lor.lhs.false23.if.end29_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %data, i32 noundef %call4) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_handle_irq(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  %state.i.i = alloca %struct.dma_tx_state, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %dev_id) #11
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 44
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !115
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %dev_id) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 2097152) #11, !srcloc !116
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %and5 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.if.end8_crit_edge, label %if.then7

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %7, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 -2147483648) #11, !srcloc !116
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4.if.end8_crit_edge
  %and9 = and i32 %3, 8321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end12_crit_edge, label %if.then11

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then11:                                        ; preds = %if.end8
  %state.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 30
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state.i, align 4
  %enable.i = getelementptr inbounds %struct.sprd_uart_port, ptr %dev_id, i32 0, i32 4, i32 5
  %10 = ptrtoint ptr %enable.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enable.i, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %while.cond.preheader.i, label %if.then.i

while.cond.preheader.i:                           ; preds = %if.then11
  %12 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i, align 4
  %add.ptr.i60.i = getelementptr i8, ptr %13, i32 12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60.i) #11, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %14)
  %tobool2.not61.i = icmp ult i32 %14, 16777216
  br i1 %tobool2.not61.i, label %while.cond.preheader.i.while.end.i_crit_edge, label %land.rhs.lr.ph.i

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

land.rhs.lr.ph.i:                                 ; preds = %while.cond.preheader.i
  %rx.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 4
  %brk.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 9
  %handle_break.i.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 17
  %has_sysrq.i.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 48
  %cons.i.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 32
  %line.i.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 41
  %sysrq.i.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 46
  %flags.i.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 33
  %parity.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 8
  %frame.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 6
  %overrun.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 7
  %read_status_mask.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 28
  br label %land.rhs.i

if.then.i:                                        ; preds = %if.then11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state.i.i) #11
  %15 = getelementptr inbounds %struct.dma_tx_state, ptr %state.i.i, i32 0, i32 2
  %rx_dma.i.i = getelementptr inbounds %struct.sprd_uart_port, ptr %dev_id, i32 0, i32 4
  %16 = call ptr @memset(ptr %state.i.i, i32 255, i32 16)
  %17 = ptrtoint ptr %rx_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rx_dma.i.i, align 4
  %cookie.i.i = getelementptr inbounds %struct.sprd_uart_port, ptr %dev_id, i32 0, i32 4, i32 3
  %19 = ptrtoint ptr %cookie.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cookie.i.i, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  %device_tx_status.i.i.i = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 49
  %23 = ptrtoint ptr %device_tx_status.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device_tx_status.i.i.i, align 4
  %call.i.i.i = call i32 %24(ptr noundef %18, i32 noundef %20, ptr noundef nonnull %state.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, 3
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.i.if.end.i.i_crit_edge

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  %25 = ptrtoint ptr %enable.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %enable.i, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i.i.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.sprd_stop_rx.exit.i.i_crit_edge, label %if.then.i.i.i

if.then.i.i.sprd_stop_rx.exit.i.i_crit_edge:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sprd_stop_rx.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  %27 = ptrtoint ptr %rx_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx_dma.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %device_terminate_all.i.i.i.i = getelementptr inbounds %struct.dma_device, ptr %30, i32 0, i32 47
  %31 = ptrtoint ptr %device_terminate_all.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %device_terminate_all.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.sprd_stop_rx.exit.i.i_crit_edge, label %if.then.i.i.i.i

if.then.i.i.i.sprd_stop_rx.exit.i.i_crit_edge:    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sprd_stop_rx.exit.i.i

if.then.i.i.i.i:                                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i = call i32 %32(ptr noundef %28) #11
  br label %sprd_stop_rx.exit.i.i

sprd_stop_rx.exit.i.i:                            ; preds = %if.then.i.i.i.i, %if.then.i.i.i.sprd_stop_rx.exit.i.i_crit_edge, %if.then.i.i.sprd_stop_rx.exit.i.i_crit_edge
  %33 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %34, i32 20
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #11, !srcloc !115
  %36 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase.i, align 4
  %add.ptr.i12.i.i.i = getelementptr i8, ptr %37, i32 16
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i.i.i) #11, !srcloc !115
  %39 = and i32 %38, 2130706431
  %40 = or i32 %35, -2130706432
  %41 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %membase.i, align 4
  %add.ptr.i14.i.i.i = getelementptr i8, ptr %42, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i.i.i, i32 %39) #11, !srcloc !116
  %43 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase.i, align 4
  %add.ptr.i16.i.i.i = getelementptr i8, ptr %44, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i.i.i, i32 %40) #11, !srcloc !116
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %sprd_stop_rx.exit.i.i, %if.then.i.if.end.i.i_crit_edge
  %45 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i.i = icmp eq i32 %46, 0
  %pos.i.i = getelementptr inbounds %struct.sprd_uart_port, ptr %dev_id, i32 0, i32 5
  %47 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pos.i.i, align 4
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.end.i.i.if.end23.i.i_crit_edge

if.end.i.i.if.end23.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %phys_addr.i.i = getelementptr inbounds %struct.sprd_uart_port, ptr %dev_id, i32 0, i32 4, i32 2
  %49 = ptrtoint ptr %phys_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %phys_addr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp3.i.i = icmp eq i32 %48, %50
  br i1 %cmp3.i.i, label %land.lhs.true.i.i.sprd_uart_dma_irq.exit.i_crit_edge, label %if.then8.i.i

land.lhs.true.i.i.sprd_uart_dma_irq.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sprd_uart_dma_irq.exit.i

if.then8.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.i.i = add i32 %50, 1024
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.then8.i.i, %if.end.i.i.if.end23.i.i_crit_edge
  %.pn.i = phi i32 [ %add.i.i, %if.then8.i.i ], [ %46, %if.end.i.i.if.end23.i.i_crit_edge ]
  %.sink.i.i = phi i32 [ %50, %if.then8.i.i ], [ %46, %if.end.i.i.if.end23.i.i_crit_edge ]
  %sub18.sink.i.i = sub i32 %.pn.i, %48
  %trans_len20.i.i = getelementptr inbounds %struct.sprd_uart_port, ptr %dev_id, i32 0, i32 4, i32 4
  %51 = ptrtoint ptr %trans_len20.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sub18.sink.i.i, ptr %trans_len20.i.i, align 4
  %52 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %.sink.i.i, ptr %pos.i.i, align 4
  %53 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %state.i, align 4
  %rx.i.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 4
  %55 = ptrtoint ptr %rx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rx.i.i.i, align 4
  %add.i.i.i = add i32 %56, %sub18.sink.i.i
  store i32 %add.i.i.i, ptr %rx.i.i.i, align 4
  %rx_buf_tail.i.i.i = getelementptr inbounds %struct.sprd_uart_port, ptr %dev_id, i32 0, i32 6
  %57 = ptrtoint ptr %rx_buf_tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rx_buf_tail.i.i.i, align 4
  %call.i.i44.i.i = call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %54, ptr noundef %58, i8 noundef zeroext 0, i32 noundef %sub18.sink.i.i) #11
  call void @tty_flip_buffer_push(ptr noundef %54) #11
  %59 = ptrtoint ptr %trans_len20.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %trans_len20.i.i, align 4
  %61 = ptrtoint ptr %rx_buf_tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rx_buf_tail.i.i.i, align 4
  %add.ptr26.i.i = getelementptr i8, ptr %62, i32 %60
  store ptr %add.ptr26.i.i, ptr %rx_buf_tail.i.i.i, align 4
  br label %sprd_uart_dma_irq.exit.i

sprd_uart_dma_irq.exit.i:                         ; preds = %if.end23.i.i, %land.lhs.true.i.i.sprd_uart_dma_irq.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state.i.i) #11
  br label %if.end12

land.rhs.i:                                       ; preds = %while.cond.backedge.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %max_count.062.i = phi i32 [ 256000, %land.rhs.lr.ph.i ], [ %dec.i, %while.cond.backedge.i.land.rhs.i_crit_edge ]
  %dec.i = add nsw i32 %max_count.062.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_count.062.i)
  %tobool3.not.i = icmp eq i32 %max_count.062.i, 0
  br i1 %tobool3.not.i, label %land.rhs.i.while.end.i_crit_edge, label %while.body.i

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.i:                                     ; preds = %land.rhs.i
  %63 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %membase.i, align 4
  %add.ptr.i34.i = getelementptr i8, ptr %64, i32 8
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34.i) #11, !srcloc !115
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #11
  %67 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %membase.i, align 4
  %add.ptr.i36.i = getelementptr i8, ptr %68, i32 4
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36.i) #11, !srcloc !115
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #11
  %71 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rx.i, align 4
  %inc.i = add i32 %72, 1
  store i32 %inc.i, ptr %rx.i, align 4
  %and6.i = and i32 %66, 156
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %while.body.i.if.end13.i_crit_edge, label %if.then8.i

while.body.i.if.end13.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

if.then8.i:                                       ; preds = %while.body.i
  %and.i.i = and i32 %66, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i37.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i37.i, label %if.else.i42.i, label %if.then.i39.i

if.then.i39.i:                                    ; preds = %if.then8.i
  %and1.i.i = and i32 %66, -13
  %73 = ptrtoint ptr %brk.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %brk.i.i, align 4
  %inc.i.i = add i32 %74, 1
  store i32 %inc.i.i, ptr %brk.i.i, align 4
  %75 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %state.i, align 4
  %77 = ptrtoint ptr %handle_break.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %handle_break.i.i.i, align 4
  %tobool.not.i.i38.i = icmp eq ptr %78, null
  br i1 %tobool.not.i.i38.i, label %if.then.i39.i.if.end.i.i.i_crit_edge, label %if.then.i.i40.i

if.then.i39.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.then.i.i40.i:                                  ; preds = %if.then.i39.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %78(ptr noundef %dev_id) #11
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i40.i, %if.then.i39.i.if.end.i.i.i_crit_edge
  %79 = ptrtoint ptr %has_sysrq.i.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %has_sysrq.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool3.not.i.i.i = icmp eq i8 %80, 0
  br i1 %tobool3.not.i.i.i, label %if.end.i.i.i.if.end15.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i.i.if.end15.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i.i
  %81 = ptrtoint ptr %cons.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cons.i.i.i, align 4
  %tobool4.not.i.i.i = icmp eq ptr %82, null
  br i1 %tobool4.not.i.i.i, label %land.lhs.true.i.i.i.if.end15.i.i.i_crit_edge, label %land.lhs.true5.i.i.i

land.lhs.true.i.i.i.if.end15.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i.i.i

land.lhs.true5.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %index.i.i.i = getelementptr inbounds %struct.console, ptr %82, i32 0, i32 9
  %83 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %index.i.i.i, align 2
  %conv7.i.i.i = sext i16 %84 to i32
  %85 = ptrtoint ptr %line.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %line.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %conv7.i.i.i)
  %cmp.i.i.i = icmp eq i32 %86, %conv7.i.i.i
  br i1 %cmp.i.i.i, label %if.then9.i.i.i, label %land.lhs.true5.i.i.i.if.end15.i.i.i_crit_edge

land.lhs.true5.i.i.i.if.end15.i.i.i_crit_edge:    ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i.i.i

if.then9.i.i.i:                                   ; preds = %land.lhs.true5.i.i.i
  %87 = ptrtoint ptr %sysrq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %sysrq.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool10.not.i.i.i = icmp eq i32 %88, 0
  br i1 %tobool10.not.i.i.i, label %handle_lsr_errors.exit.i, label %if.end13.i.i.i

if.end13.i.i.i:                                   ; preds = %if.then9.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %89 = ptrtoint ptr %sysrq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %sysrq.i.i.i, align 4
  br label %if.end15.i.i.i

if.end15.i.i.i:                                   ; preds = %if.end13.i.i.i, %land.lhs.true5.i.i.i.if.end15.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.end15.i.i.i_crit_edge, %if.end.i.i.i.if.end15.i.i.i_crit_edge
  %90 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %91, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool16.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool16.not.i.i.i, label %if.end15.i.i.i.if.end17.i.i_crit_edge, label %if.then17.i.i.i

if.end15.i.i.i.if.end17.i.i_crit_edge:            ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i.i

if.then17.i.i.i:                                  ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %tty.i.i.i = getelementptr inbounds %struct.tty_port, ptr %76, i32 0, i32 1
  %92 = ptrtoint ptr %tty.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %tty.i.i.i, align 4
  tail call void @do_SAK(ptr noundef %93) #11
  br label %if.end17.i.i

if.else.i42.i:                                    ; preds = %if.then8.i
  %and4.i.i = and i32 %66, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.else9.i.i, label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.else.i42.i
  call void @__sanitizer_cov_trace_pc() #13
  %94 = ptrtoint ptr %parity.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %parity.i.i, align 4
  %inc8.i.i = add i32 %95, 1
  store i32 %inc8.i.i, ptr %parity.i.i, align 4
  br label %if.end17.i.i

if.else9.i.i:                                     ; preds = %if.else.i42.i
  %and10.i.i = and i32 %66, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.else9.i.i.if.end17.i.i_crit_edge, label %if.then12.i.i

if.else9.i.i.if.end17.i.i_crit_edge:              ; preds = %if.else9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i.i

if.then12.i.i:                                    ; preds = %if.else9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %96 = ptrtoint ptr %frame.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %frame.i.i, align 4
  %inc14.i.i = add i32 %97, 1
  store i32 %inc14.i.i, ptr %frame.i.i, align 4
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then12.i.i, %if.else9.i.i.if.end17.i.i_crit_edge, %if.then6.i.i, %if.then17.i.i.i, %if.end15.i.i.i.if.end17.i.i_crit_edge
  %lsr.0.i = phi i32 [ %66, %if.else9.i.i.if.end17.i.i_crit_edge ], [ %66, %if.then12.i.i ], [ %66, %if.then6.i.i ], [ %and1.i.i, %if.end15.i.i.i.if.end17.i.i_crit_edge ], [ %and1.i.i, %if.then17.i.i.i ]
  %and18.i.i = and i32 %lsr.0.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool19.not.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %tobool19.not.i.i, label %if.end17.i.i.if.end23.i43.i_crit_edge, label %if.then20.i.i

if.end17.i.i.if.end23.i43.i_crit_edge:            ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i43.i

if.then20.i.i:                                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %98 = ptrtoint ptr %overrun.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %overrun.i.i, align 4
  %inc22.i.i = add i32 %99, 1
  store i32 %inc22.i.i, ptr %overrun.i.i, align 4
  br label %if.end23.i43.i

if.end23.i43.i:                                   ; preds = %if.then20.i.i, %if.end17.i.i.if.end23.i43.i_crit_edge
  %100 = ptrtoint ptr %read_status_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %read_status_mask.i.i, align 4
  %and24.i.i = and i32 %101, %lsr.0.i
  %and25.i.i = and i32 %and24.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool26.not.i.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool26.not.i.i, label %if.else28.i.i, label %if.end23.i43.i.if.end13.i_crit_edge

if.end23.i43.i.if.end13.i_crit_edge:              ; preds = %if.end23.i43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

if.else28.i.i:                                    ; preds = %if.end23.i43.i
  %and29.i.i = and i32 %and24.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool30.not.i.i = icmp eq i32 %and29.i.i, 0
  br i1 %tobool30.not.i.i, label %if.else32.i.i, label %if.else28.i.i.if.end13.i_crit_edge

if.else28.i.i.if.end13.i_crit_edge:               ; preds = %if.else28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

if.else32.i.i:                                    ; preds = %if.else28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and33.i.i = lshr i32 %and24.i.i, 2
  %102 = and i32 %and33.i.i, 2
  br label %if.end13.i

handle_lsr_errors.exit.i:                         ; preds = %if.then9.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %103 = load volatile i32, ptr @jiffies, align 128
  %add.i.i41.i = add i32 %103, 500
  %104 = ptrtoint ptr %sysrq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %add.i.i41.i, ptr %sysrq.i.i.i, align 4
  br label %while.cond.backedge.i

if.end13.i:                                       ; preds = %if.else32.i.i, %if.else28.i.i.if.end13.i_crit_edge, %if.end23.i43.i.if.end13.i_crit_edge, %while.body.i.if.end13.i_crit_edge
  %flag.1.i = phi i32 [ 0, %while.body.i.if.end13.i_crit_edge ], [ 3, %if.else28.i.i.if.end13.i_crit_edge ], [ 1, %if.end23.i43.i.if.end13.i_crit_edge ], [ %102, %if.else32.i.i ]
  %lsr.2.i = phi i32 [ %66, %while.body.i.if.end13.i_crit_edge ], [ %and24.i.i, %if.else28.i.i.if.end13.i_crit_edge ], [ %and24.i.i, %if.end23.i43.i.if.end13.i_crit_edge ], [ %and24.i.i, %if.else32.i.i ]
  %105 = ptrtoint ptr %sysrq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %sysrq.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool.not.i44.i = icmp eq i32 %106, 0
  br i1 %tobool.not.i44.i, label %if.end13.i.if.end17.i_crit_edge, label %if.end.i45.i

if.end13.i.if.end17.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.end.i45.i:                                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool1.not.i.i = icmp eq i32 %69, 0
  br i1 %tobool1.not.i.i, label %if.end.i45.i.uart_handle_sysrq_char.exit.thread65.i_crit_edge, label %land.lhs.true.i48.i

if.end.i45.i.uart_handle_sysrq_char.exit.thread65.i_crit_edge: ; preds = %if.end.i45.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uart_handle_sysrq_char.exit.thread65.i

land.lhs.true.i48.i:                              ; preds = %if.end.i45.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %107 = load volatile i32, ptr @jiffies, align 128
  %sub.i46.i = sub i32 %107, %106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i46.i)
  %cmp.i47.i = icmp slt i32 %sub.i46.i, 0
  br i1 %cmp.i47.i, label %if.then3.i.i, label %land.lhs.true.i48.i.uart_handle_sysrq_char.exit.thread65.i_crit_edge

land.lhs.true.i48.i.uart_handle_sysrq_char.exit.thread65.i_crit_edge: ; preds = %land.lhs.true.i48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uart_handle_sysrq_char.exit.thread65.i

if.then3.i.i:                                     ; preds = %land.lhs.true.i48.i
  %call.i.i = tail call i32 @sysrq_mask() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end7.i.i, label %uart_handle_sysrq_char.exit.i

if.end7.i.i:                                      ; preds = %if.then3.i.i
  %call8.i.i = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %dev_id, i32 noundef %70) #11
  br i1 %call8.i.i, label %if.end7.i.i.while.cond.backedge.i_crit_edge, label %if.end7.i.i.uart_handle_sysrq_char.exit.thread65.i_crit_edge

if.end7.i.i.uart_handle_sysrq_char.exit.thread65.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uart_handle_sysrq_char.exit.thread65.i

if.end7.i.i.while.cond.backedge.i_crit_edge:      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge.i

uart_handle_sysrq_char.exit.thread65.i:           ; preds = %if.end7.i.i.uart_handle_sysrq_char.exit.thread65.i_crit_edge, %land.lhs.true.i48.i.uart_handle_sysrq_char.exit.thread65.i_crit_edge, %if.end.i45.i.uart_handle_sysrq_char.exit.thread65.i_crit_edge
  %108 = ptrtoint ptr %sysrq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %sysrq.i.i.i, align 4
  br label %if.end17.i

uart_handle_sysrq_char.exit.i:                    ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @handle_sysrq(i32 noundef %70) #11
  %109 = ptrtoint ptr %sysrq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %sysrq.i.i.i, align 4
  br label %while.cond.backedge.i

if.end17.i:                                       ; preds = %uart_handle_sysrq_char.exit.thread65.i, %if.end13.i.if.end17.i_crit_edge
  tail call void @uart_insert_char(ptr noundef %dev_id, i32 noundef %lsr.2.i, i32 noundef 16, i32 noundef %70, i32 noundef %flag.1.i) #11
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end17.i, %uart_handle_sysrq_char.exit.i, %if.end7.i.i.while.cond.backedge.i_crit_edge, %handle_lsr_errors.exit.i
  %110 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %111, i32 12
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !115
  %tobool2.not.i = icmp ult i32 %112, 16777216
  br i1 %tobool2.not.i, label %while.cond.backedge.i.while.end.i_crit_edge, label %while.cond.backedge.i.land.rhs.i_crit_edge

while.cond.backedge.i.land.rhs.i_crit_edge:       ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

while.cond.backedge.i.while.end.i_crit_edge:      ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.backedge.i.while.end.i_crit_edge, %land.rhs.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  tail call void @tty_flip_buffer_push(ptr noundef %9) #11
  br label %if.end12

if.end12:                                         ; preds = %while.end.i, %sprd_uart_dma_irq.exit.i, %if.end8.if.end12_crit_edge
  %and13 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end16_crit_edge, label %if.then15

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then15:                                        ; preds = %if.end12
  %state.i34 = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 30
  %113 = ptrtoint ptr %state.i34 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %state.i34, align 4
  %xmit1.i = getelementptr inbounds %struct.uart_state, ptr %114, i32 0, i32 2
  %x_char.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 24
  %115 = ptrtoint ptr %x_char.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %x_char.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool.not.i35 = icmp eq i8 %116, 0
  br i1 %tobool.not.i35, label %if.end.i, label %if.then.i38

if.then.i38:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i8 %116 to i32
  %117 = shl nuw i32 %conv.i, 24
  %118 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %membase.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 %117) #11, !srcloc !116
  %tx.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 5
  %120 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %tx.i, align 4
  %inc.i37 = add i32 %121, 1
  store i32 %inc.i37, ptr %tx.i, align 4
  %122 = ptrtoint ptr %x_char.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %x_char.i, align 4
  br label %if.end16

if.end.i:                                         ; preds = %if.then15
  %head.i = getelementptr inbounds %struct.uart_state, ptr %114, i32 0, i32 2, i32 1
  %123 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %head.i, align 4
  %tail.i = getelementptr inbounds %struct.uart_state, ptr %114, i32 0, i32 2, i32 2
  %125 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %126)
  %cmp.i = icmp eq i32 %124, %126
  br i1 %cmp.i, label %if.end.i.if.then6.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then6.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %tty2.i.i = getelementptr inbounds %struct.tty_port, ptr %114, i32 0, i32 1
  %127 = ptrtoint ptr %tty2.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %tty2.i.i, align 4
  %tobool.not.i.i39 = icmp eq ptr %128, null
  br i1 %tobool.not.i.i39, label %lor.lhs.false.i.uart_tx_stopped.exit.i_crit_edge, label %land.lhs.true.i.i40

lor.lhs.false.i.uart_tx_stopped.exit.i_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uart_tx_stopped.exit.i

land.lhs.true.i.i40:                              ; preds = %lor.lhs.false.i
  %stopped.i.i = getelementptr inbounds %struct.tty_struct, ptr %128, i32 0, i32 19, i32 1
  %129 = ptrtoint ptr %stopped.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %stopped.i.i, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool3.not.i.i = icmp eq i8 %130, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i40.uart_tx_stopped.exit.i_crit_edge, label %land.lhs.true.i.i40.if.then6.i_crit_edge

land.lhs.true.i.i40.if.then6.i_crit_edge:         ; preds = %land.lhs.true.i.i40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6.i

land.lhs.true.i.i40.uart_tx_stopped.exit.i_crit_edge: ; preds = %land.lhs.true.i.i40
  call void @__sanitizer_cov_trace_pc() #13
  br label %uart_tx_stopped.exit.i

uart_tx_stopped.exit.i:                           ; preds = %land.lhs.true.i.i40.uart_tx_stopped.exit.i_crit_edge, %lor.lhs.false.i.uart_tx_stopped.exit.i_crit_edge
  %hw_stopped.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 35
  %131 = ptrtoint ptr %hw_stopped.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %hw_stopped.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool4.not.i.not.i = icmp eq i32 %132, 0
  br i1 %tobool4.not.i.not.i, label %do.body.preheader.i, label %uart_tx_stopped.exit.i.if.then6.i_crit_edge

uart_tx_stopped.exit.i.if.then6.i_crit_edge:      ; preds = %uart_tx_stopped.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6.i

do.body.preheader.i:                              ; preds = %uart_tx_stopped.exit.i
  %tx13.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 5
  br label %do.body.i

if.then6.i:                                       ; preds = %uart_tx_stopped.exit.i.if.then6.i_crit_edge, %land.lhs.true.i.i40.if.then6.i_crit_edge, %if.end.i.if.then6.i_crit_edge
  %enable.i.i = getelementptr inbounds %struct.sprd_uart_port, ptr %dev_id, i32 0, i32 3, i32 5
  %133 = ptrtoint ptr %enable.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %enable.i.i, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool.not.i59.i = icmp eq i8 %134, 0
  br i1 %tobool.not.i59.i, label %if.end.i.i42, label %if.then.i.i41

if.then.i.i41:                                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @sprd_stop_tx_dma(ptr noundef %dev_id) #11
  br label %if.end16

if.end.i.i42:                                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  %135 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %136, i32 20
  %137 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !115
  %138 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %membase.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %139, i32 16
  %140 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i.i) #11, !srcloc !115
  %141 = or i32 %137, 33554432
  %142 = and i32 %140, -33554433
  %143 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %membase.i, align 4
  %add.ptr.i14.i.i = getelementptr i8, ptr %144, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i.i, i32 %142) #11, !srcloc !116
  %145 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %membase.i, align 4
  %add.ptr.i16.i.i = getelementptr i8, ptr %146, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i.i, i32 %141) #11, !srcloc !116
  br label %if.end16

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.preheader.i
  %count.0.i = phi i32 [ %dec.i43, %do.body.i.do.body.i_crit_edge ], [ 64, %do.body.preheader.i ]
  %147 = ptrtoint ptr %xmit1.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %xmit1.i, align 4
  %149 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %tail.i, align 4
  %arrayidx.i = getelementptr i8, ptr %148, i32 %150
  %151 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx.i, align 1
  %conv9.i = zext i8 %152 to i32
  %153 = shl nuw i32 %conv9.i, 24
  %154 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %membase.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 %153) #11, !srcloc !116
  %156 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %tail.i, align 4
  %add.i = add i32 %157, 1
  %and.i = and i32 %add.i, 4095
  store i32 %and.i, ptr %tail.i, align 4
  %158 = ptrtoint ptr %tx13.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %tx13.i, align 4
  %inc14.i = add i32 %159, 1
  store i32 %inc14.i, ptr %tx13.i, align 4
  %160 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %head.i, align 4
  %162 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %161, i32 %162)
  %cmp17.i = icmp ne i32 %161, %162
  %dec.i43 = add nsw i32 %count.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i43)
  %cmp21.i = icmp ne i32 %dec.i43, 0
  %or.cond.i = select i1 %cmp17.i, i1 %cmp21.i, i1 false
  br i1 %or.cond.i, label %do.body.i.do.body.i_crit_edge, label %do.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %sub.i = sub i32 %161, %162
  %and25.i = and i32 %sub.i, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %cmp26.i = icmp eq i32 %and25.i, 0
  br i1 %cmp26.i, label %if.then28.i, label %do.end.i.if.end29.i_crit_edge

do.end.i.if.end29.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.i

if.then28.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @uart_write_wakeup(ptr noundef %dev_id) #11
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then28.i, %do.end.i.if.end29.i_crit_edge
  %163 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %head.i, align 4
  %165 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %164, i32 %166)
  %cmp32.i = icmp eq i32 %164, %166
  br i1 %cmp32.i, label %if.then34.i, label %if.end29.i.if.end16_crit_edge

if.end29.i.if.end16_crit_edge:                    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then34.i:                                      ; preds = %if.end29.i
  %enable.i61.i = getelementptr inbounds %struct.sprd_uart_port, ptr %dev_id, i32 0, i32 3, i32 5
  %167 = ptrtoint ptr %enable.i61.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %enable.i61.i, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool.not.i62.i = icmp eq i8 %168, 0
  br i1 %tobool.not.i62.i, label %if.end.i69.i, label %if.then.i63.i

if.then.i63.i:                                    ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @sprd_stop_tx_dma(ptr noundef %dev_id) #11
  br label %if.end16

if.end.i69.i:                                     ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #13
  %169 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.i65.i = getelementptr i8, ptr %170, i32 20
  %171 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i65.i) #11, !srcloc !115
  %172 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %membase.i, align 4
  %add.ptr.i12.i66.i = getelementptr i8, ptr %173, i32 16
  %174 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i66.i) #11, !srcloc !115
  %175 = or i32 %171, 33554432
  %176 = and i32 %174, -33554433
  %177 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %membase.i, align 4
  %add.ptr.i14.i67.i = getelementptr i8, ptr %178, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i67.i, i32 %176) #11, !srcloc !116
  %179 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %membase.i, align 4
  %add.ptr.i16.i68.i = getelementptr i8, ptr %180, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i68.i, i32 %175) #11, !srcloc !116
  br label %if.end16

if.end16:                                         ; preds = %if.end.i69.i, %if.then.i63.i, %if.end29.i.if.end16_crit_edge, %if.end.i.i42, %if.then.i.i41, %if.then.i38, %if.end12.if.end16_crit_edge
  call void @_raw_spin_unlock(ptr noundef %dev_id) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then
  %retval.0 = phi i32 [ 1, %if.end16 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sprd_start_dma_rx(ptr noundef %port) unnamed_addr #3 align 64 {
entry:
  %sg.i.i = alloca %struct.scatterlist, align 4
  %cfg.i = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_dma = getelementptr inbounds %struct.sprd_uart_port, ptr %port, i32 0, i32 4
  %enable = getelementptr inbounds %struct.sprd_uart_port, ptr %port, i32 0, i32 4, i32 5
  %0 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enable, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %phys_addr = getelementptr inbounds %struct.sprd_uart_port, ptr %port, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phys_addr, align 4
  %pos = getelementptr inbounds %struct.sprd_uart_port, ptr %port, i32 0, i32 5
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pos, align 4
  %virt = getelementptr inbounds %struct.sprd_uart_port, ptr %port, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %virt, align 4
  %rx_buf_tail = getelementptr inbounds %struct.sprd_uart_port, ptr %port, i32 0, i32 6
  %7 = ptrtoint ptr %rx_buf_tail to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %rx_buf_tail, align 4
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %8 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 32
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !115
  %11 = and i32 %10, -2130706433
  %12 = or i32 %11, 16777216
  %13 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %14, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %12) #11, !srcloc !116
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cfg.i) #11
  %15 = getelementptr inbounds i8, ptr %cfg.i, i32 36
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %15, align 4, !annotation !130
  %17 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %cfg.i, align 4
  %src_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 1
  %mapbase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %18 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mapbase.i, align 4
  %add.i = add i32 %19, 4
  %20 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add.i, ptr %src_addr.i, align 4
  %dst_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 2
  %21 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %dst_addr.i, align 4
  %src_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 3
  %22 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %src_addr_width.i, align 4
  %dst_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 4
  %23 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %dst_addr_width.i, align 4
  %src_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 5
  %24 = ptrtoint ptr %src_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %src_maxburst.i, align 4
  %dst_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 6
  %peripheral_config.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 10
  %25 = ptrtoint ptr %peripheral_config.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %peripheral_config.i, align 4
  %peripheral_size.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 11
  %26 = ptrtoint ptr %peripheral_size.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %peripheral_size.i, align 4
  %27 = call ptr @memset(ptr %dst_maxburst.i, i32 0, i32 13)
  %28 = ptrtoint ptr %rx_dma to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx_dma, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %31, i32 0, i32 44
  %32 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i, label %sprd_rx_dma_config.exit.thread, label %sprd_rx_dma_config.exit

sprd_rx_dma_config.exit.thread:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg.i) #11
  br label %cleanup

sprd_rx_dma_config.exit:                          ; preds = %if.end
  %call.i.i = call i32 %33(ptr noundef %29, ptr noundef nonnull %cfg.i) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not, label %if.end5, label %sprd_rx_dma_config.exit.cleanup_crit_edge

sprd_rx_dma_config.exit.cleanup_crit_edge:        ; preds = %sprd_rx_dma_config.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %sprd_rx_dma_config.exit
  %34 = ptrtoint ptr %rx_dma to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rx_dma, align 4
  %36 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %phys_addr, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i) #11
  %38 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i, i32 0, i32 3
  %39 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i, i32 0, i32 4
  %40 = call ptr @memset(ptr %sg.i.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i.i, i32 noundef 1) #11
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %37, ptr %38, align 4
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1024, ptr %39, align 4
  %tobool.not.i.i18 = icmp eq ptr %35, null
  br i1 %tobool.not.i.i18, label %if.end5.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %lor.lhs.false.i.i

if.end5.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_prep_slave_single.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %if.end5
  %43 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %35, align 4
  %tobool1.not.i.i = icmp eq ptr %44, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_prep_slave_single.exit.thread.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %44, i32 0, i32 39
  %45 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %46, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %dmaengine_prep_slave_single.exit.i

lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_prep_slave_single.exit.thread.i

dmaengine_prep_slave_single.exit.thread.i:        ; preds = %lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, %lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, %if.end5.dmaengine_prep_slave_single.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #11
  br label %cleanup

dmaengine_prep_slave_single.exit.i:               ; preds = %lor.lhs.false2.i.i
  %call.i.i19 = call ptr %46(ptr noundef nonnull %35, ptr noundef nonnull %sg.i.i, i32 noundef 1, i32 noundef 2, i32 noundef 4, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #11
  %tobool.not.i = icmp eq ptr %call.i.i19, null
  br i1 %tobool.not.i, label %dmaengine_prep_slave_single.exit.i.cleanup_crit_edge, label %if.end.i

dmaengine_prep_slave_single.exit.i.cleanup_crit_edge: ; preds = %dmaengine_prep_slave_single.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %dmaengine_prep_slave_single.exit.i
  %callback1.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i19, i32 0, i32 6
  %47 = ptrtoint ptr %callback1.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @sprd_complete_rx_dma, ptr %callback1.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i19, i32 0, i32 8
  %48 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %port, ptr %callback_param.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i19, i32 0, i32 4
  %49 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i20.i = call i32 %50(ptr noundef nonnull %call.i.i19) #11
  %cookie.i = getelementptr inbounds %struct.sprd_uart_port, ptr %port, i32 0, i32 4, i32 3
  %51 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call.i20.i, ptr %cookie.i, align 4
  %52 = call i32 @llvm.smin.i32(i32 %call.i20.i, i32 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i20.i)
  %tobool5.not.i = icmp sgt i32 %call.i20.i, -1
  br i1 %tobool5.not.i, label %if.end9.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %rx_dma to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rx_dma, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %56, i32 0, i32 50
  %57 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %device_issue_pending.i.i, align 4
  call void %58(ptr noundef %54) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end9.i, %if.end.i.cleanup_crit_edge, %dmaengine_prep_slave_single.exit.i.cleanup_crit_edge, %dmaengine_prep_slave_single.exit.thread.i, %sprd_rx_dma_config.exit.cleanup_crit_edge, %sprd_rx_dma_config.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i.i, %sprd_rx_dma_config.exit.cleanup_crit_edge ], [ -38, %sprd_rx_dma_config.exit.thread ], [ 0, %if.end9.i ], [ -19, %dmaengine_prep_slave_single.exit.i.cleanup_crit_edge ], [ -19, %dmaengine_prep_slave_single.exit.thread.i ], [ %52, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_complete_rx_dma(ptr noundef %data) #3 align 64 {
entry:
  %state = alloca %struct.dma_tx_state, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state) #11
  %0 = call ptr @memset(ptr %state, i32 255, i32 16)
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %data) #11
  %rx_dma = getelementptr inbounds %struct.sprd_uart_port, ptr %data, i32 0, i32 4
  %1 = ptrtoint ptr %rx_dma to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rx_dma, align 4
  %cookie = getelementptr inbounds %struct.sprd_uart_port, ptr %data, i32 0, i32 4, i32 3
  %3 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cookie, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %6, i32 0, i32 49
  %7 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device_tx_status.i, align 4
  %call.i = call i32 %8(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %state) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8.not = icmp eq i32 %call.i, 0
  br i1 %cmp8.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %enable.i = getelementptr inbounds %struct.sprd_uart_port, ptr %data, i32 0, i32 4, i32 5
  %9 = ptrtoint ptr %enable.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %enable.i, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.then.sprd_stop_rx.exit_crit_edge, label %if.then.i

if.then.sprd_stop_rx.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sprd_stop_rx.exit

if.then.i:                                        ; preds = %if.then
  %11 = ptrtoint ptr %rx_dma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_dma, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 47
  %15 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.then.i.sprd_stop_rx.exit_crit_edge, label %if.then.i.i

if.then.i.sprd_stop_rx.exit_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sprd_stop_rx.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = call i32 %16(ptr noundef %12) #11
  br label %sprd_stop_rx.exit

sprd_stop_rx.exit:                                ; preds = %if.then.i.i, %if.then.i.sprd_stop_rx.exit_crit_edge, %if.then.sprd_stop_rx.exit_crit_edge
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 2
  %17 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 20
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !115
  %20 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %21, i32 16
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #11, !srcloc !115
  %23 = and i32 %22, 2130706431
  %24 = or i32 %19, -2130706432
  %25 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %26, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 %23) #11, !srcloc !116
  %27 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %28, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 %24) #11, !srcloc !116
  br label %cleanup

if.end:                                           ; preds = %entry
  %pos = getelementptr inbounds %struct.sprd_uart_port, ptr %data, i32 0, i32 5
  %29 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pos, align 4
  %phys_addr = getelementptr inbounds %struct.sprd_uart_port, ptr %data, i32 0, i32 4, i32 2
  %31 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %phys_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp12.not = icmp eq i32 %30, %32
  br i1 %cmp12.not, label %if.end.if.end22_crit_edge, label %if.then14

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add = sub i32 1024, %30
  %sub = add i32 %add, %32
  %trans_len = getelementptr inbounds %struct.sprd_uart_port, ptr %data, i32 0, i32 4, i32 4
  %33 = ptrtoint ptr %trans_len to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub, ptr %trans_len, align 4
  %state.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 30
  %34 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %state.i, align 4
  %rx.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 31, i32 4
  %36 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx.i, align 4
  %add.i = add i32 %37, %sub
  store i32 %add.i, ptr %rx.i, align 4
  %rx_buf_tail.i = getelementptr inbounds %struct.sprd_uart_port, ptr %data, i32 0, i32 6
  %38 = ptrtoint ptr %rx_buf_tail.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rx_buf_tail.i, align 4
  %call.i.i48 = call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %35, ptr noundef %39, i8 noundef zeroext 0, i32 noundef %sub) #11
  call void @tty_flip_buffer_push(ptr noundef %35) #11
  %40 = ptrtoint ptr %trans_len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %trans_len, align 4
  %42 = ptrtoint ptr %rx_buf_tail.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rx_buf_tail.i, align 4
  %add.ptr21 = getelementptr i8, ptr %43, i32 %41
  store ptr %add.ptr21, ptr %rx_buf_tail.i, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then14, %if.end.if.end22_crit_edge
  %call23 = call fastcc i32 @sprd_start_dma_rx(ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool.not = icmp eq i32 %call23, 0
  br i1 %tobool.not, label %if.end22.cleanup_crit_edge, label %if.then24

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then24:                                        ; preds = %if.end22
  %enable.i49 = getelementptr inbounds %struct.sprd_uart_port, ptr %data, i32 0, i32 4, i32 5
  %44 = ptrtoint ptr %enable.i49 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %enable.i49, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i50 = icmp eq i8 %45, 0
  br i1 %tobool.not.i50, label %if.then24.sprd_stop_rx.exit62_crit_edge, label %if.then.i54

if.then24.sprd_stop_rx.exit62_crit_edge:          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %sprd_stop_rx.exit62

if.then.i54:                                      ; preds = %if.then24
  %46 = ptrtoint ptr %rx_dma to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rx_dma, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %device_terminate_all.i.i52 = getelementptr inbounds %struct.dma_device, ptr %49, i32 0, i32 47
  %50 = ptrtoint ptr %device_terminate_all.i.i52 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %device_terminate_all.i.i52, align 4
  %tobool.not.i.i53 = icmp eq ptr %51, null
  br i1 %tobool.not.i.i53, label %if.then.i54.sprd_stop_rx.exit62_crit_edge, label %if.then.i.i56

if.then.i54.sprd_stop_rx.exit62_crit_edge:        ; preds = %if.then.i54
  call void @__sanitizer_cov_trace_pc() #13
  br label %sprd_stop_rx.exit62

if.then.i.i56:                                    ; preds = %if.then.i54
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i55 = call i32 %51(ptr noundef %47) #11
  br label %sprd_stop_rx.exit62

sprd_stop_rx.exit62:                              ; preds = %if.then.i.i56, %if.then.i54.sprd_stop_rx.exit62_crit_edge, %if.then24.sprd_stop_rx.exit62_crit_edge
  %membase.i.i57 = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 2
  %52 = ptrtoint ptr %membase.i.i57 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %membase.i.i57, align 4
  %add.ptr.i.i58 = getelementptr i8, ptr %53, i32 20
  %54 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i58) #11, !srcloc !115
  %55 = ptrtoint ptr %membase.i.i57 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %membase.i.i57, align 4
  %add.ptr.i12.i59 = getelementptr i8, ptr %56, i32 16
  %57 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i59) #11, !srcloc !115
  %58 = and i32 %57, 2130706431
  %59 = or i32 %54, -2130706432
  %60 = ptrtoint ptr %membase.i.i57 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %membase.i.i57, align 4
  %add.ptr.i14.i60 = getelementptr i8, ptr %61, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i60, i32 %58) #11, !srcloc !116
  %62 = ptrtoint ptr %membase.i.i57 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %membase.i.i57, align 4
  %add.ptr.i16.i61 = getelementptr i8, ptr %63, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i61, i32 %59) #11, !srcloc !116
  br label %cleanup

cleanup:                                          ; preds = %sprd_stop_rx.exit62, %if.end22.cleanup_crit_edge, %sprd_stop_rx.exit
  call void @_raw_spin_unlock_irqrestore(ptr noundef %data, i32 noundef %call3) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_insert_char(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_SAK(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_console_check(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @uart_suspend_port(ptr noundef nonnull @sprd_uart_driver, ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_resume(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @uart_resume_port(ptr noundef nonnull @sprd_uart_driver, ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_suspend_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_resume_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !39, !41, !42, !43, !45, !47, !48, !49, !51, !53, !54, !55, !56, !58, !59, !60, !61, !62, !64, !66, !67, !68, !69, !71, !73, !74, !75, !77, !79, !81, !82, !83, !84, !86, !88, !89, !90, !92, !94, !95, !96, !98, !100}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @__initcall__kmod_sprd_serial__236_1056_sprd_serial_console_initcon, !1, !"__initcall__kmod_sprd_serial__236_1056_sprd_serial_console_initcon", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/sprd_serial.c", i32 1056, i32 1}
!2 = !{ptr @__UNIQUE_ID___earlycon_sprd_serial237, !3, !"__UNIQUE_ID___earlycon_sprd_serial237", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/sprd_serial.c", i32 1088, i32 1}
!4 = !{ptr @__initcall__kmod_sprd_serial__238_1285_sprd_platform_driver_init6, !5, !"__initcall__kmod_sprd_serial__238_1285_sprd_platform_driver_init6", i1 false, i1 false}
!5 = !{!"../drivers/tty/serial/sprd_serial.c", i32 1285, i32 1}
!6 = !{ptr @__exitcall_sprd_platform_driver_exit, !5, !"__exitcall_sprd_platform_driver_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/tty/serial/sprd_serial.c", i32 1287, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_description241, !11, !"__UNIQUE_ID_description241", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/sprd_serial.c", i32 1288, i32 1}
!12 = !{ptr @sprd_console, !13, !"sprd_console", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/sprd_serial.c", i32 1041, i32 23}
!14 = !{ptr @sprd_port, !15, !"sprd_port", i1 false, i1 false}
!15 = !{!"../drivers/tty/serial/sprd_serial.c", i32 131, i32 31}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/tty/serial/sprd_serial.c", i32 1029, i32 3}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sprd_console_setup._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @sprd_console_setup._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/tty/serial/sprd_serial.c", i32 1097, i32 17}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/tty/serial/sprd_serial.c", i32 1098, i32 14}
!26 = !{ptr @sprd_uart_driver, !27, !"sprd_uart_driver", i1 false, i1 false}
!27 = !{!"../drivers/tty/serial/sprd_serial.c", i32 1095, i32 27}
!28 = !{ptr @sprd_platform_driver, !29, !"sprd_platform_driver", i1 false, i1 false}
!29 = !{!"../drivers/tty/serial/sprd_serial.c", i32 1275, i32 31}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/tty/serial/sprd_serial.c", i32 1183, i32 45}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/tty/serial/sprd_serial.c", i32 1185, i32 3}
!34 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @sprd_probe._entry, !33, !"_entry", i1 false, i1 false}
!38 = !{ptr @sprd_probe._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/tty/serial/sprd_serial.c", i32 1232, i32 4}
!41 = !{ptr @sprd_probe._entry.10, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @sprd_probe._entry_ptr.12, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @serial_sprd_ops, !44, !"serial_sprd_ops", i1 false, i1 false}
!44 = !{!"../drivers/tty/serial/sprd_serial.c", i32 949, i32 30}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!47 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/tty/serial/sprd_serial.c", i32 739, i32 39}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/tty/serial/sprd_serial.c", i32 746, i32 3}
!53 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @sprd_startup._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @sprd_startup._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/tty/serial/sprd_serial.c", i32 706, i32 3}
!58 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @sprd_uart_dma_startup._entry, !57, !"_entry", i1 false, i1 false}
!61 = !{ptr @sprd_uart_dma_startup._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/tty/serial/sprd_serial.c", i32 503, i32 47}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/tty/serial/sprd_serial.c", i32 505, i32 3}
!66 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @sprd_request_dma._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @sprd_request_dma._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/tty/serial/sprd_serial.c", i32 510, i32 47}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/tty/serial/sprd_serial.c", i32 512, i32 3}
!73 = !{ptr @sprd_request_dma._entry.25, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @sprd_request_dma._entry_ptr.27, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/tty/serial/sprd_serial.c", i32 875, i32 9}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/tty/serial/sprd_serial.c", i32 1138, i32 38}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/tty/serial/sprd_serial.c", i32 1140, i32 3}
!81 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @sprd_clk_init._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @sprd_clk_init._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/tty/serial/sprd_serial.c", i32 1145, i32 40}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/tty/serial/sprd_serial.c", i32 1147, i32 3}
!88 = !{ptr @sprd_clk_init._entry.33, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @sprd_clk_init._entry_ptr.35, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/tty/serial/sprd_serial.c", i32 1157, i32 36}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/tty/serial/sprd_serial.c", i32 1162, i32 3}
!94 = !{ptr @sprd_clk_init._entry.37, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @sprd_clk_init._entry_ptr.39, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @sprd_ports_num, !97, !"sprd_ports_num", i1 false, i1 false}
!97 = !{!"../drivers/tty/serial/sprd_serial.c", i32 132, i32 12}
!98 = !{ptr @serial_ids, !99, !"serial_ids", i1 false, i1 false}
!99 = !{!"../drivers/tty/serial/sprd_serial.c", i32 1269, i32 34}
!100 = !{ptr @sprd_pm_ops, !101, !"sprd_pm_ops", i1 false, i1 false}
!101 = !{!"../drivers/tty/serial/sprd_serial.c", i32 1267, i32 8}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{i64 661355, i64 661416}
!112 = !{i64 664087}
!113 = !{!"branch_weights", i32 1, i32 2000}
!114 = !{i64 664372}
!115 = !{i64 6343015}
!116 = !{i64 6342597}
!117 = !{i64 2154678559}
!118 = !{i64 2154678918}
!119 = !{i64 2154678760}
!120 = !{i64 2154679142}
!121 = !{i64 6342400}
!122 = !{i8 0, i8 2}
!123 = !{i64 2154659976}
!124 = !{i64 2154659818}
!125 = !{i64 2154670057}
!126 = !{i64 2154669899}
!127 = !{i64 2154669085}
!128 = !{i64 2154668927}
!129 = !{!"branch_weights", i32 2000, i32 1}
!130 = !{!"auto-init"}
