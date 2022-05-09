; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/atmel_serial.c_pt.bc'
source_filename = "../drivers/tty/serial/atmel_serial.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.atmel_uart_port = type { %struct.uart_port, ptr, i32, i32, i32, i8, i8, i16, [2 x %struct.atmel_dma_buffer], i8, i8, %struct.atmel_dma_buffer, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, ptr, i32, i32, %struct.scatterlist, %struct.scatterlist, %struct.tasklet_struct, %struct.tasklet_struct, %struct.atomic_t, i32, i32, %struct.circ_buf, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, %struct.timer_list, i8, i8, i32, i32, %struct.spinlock, i8, i32, i32, %struct.anon.88, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.atmel_dma_buffer = type { ptr, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.87, i32 }
%union.anon.87 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.anon.88 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.page = type { i32, %union.anon.2, %union.anon.78, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.78 = type { %struct.atomic_t }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.atmel_uart_char = type { i16, i16 }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.40, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.40 = type { ptr }
%struct.llist_head = type { ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.41, %struct.anon.42, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.41 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.42 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }

@__initcall__kmod_atmel_serial__313_3017_atmel_serial_init6 = internal global ptr @atmel_serial_init, section ".initcall6.init", align 4
@atmel_uart = internal global { %struct.uart_driver, [60 x i8] } { %struct.uart_driver { ptr null, ptr @.str, ptr @.str.1, i32 204, i32 154, i32 8, ptr @atmel_console, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@atmel_serial_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @atmel_serial_probe, ptr @atmel_serial_remove, ptr null, ptr @atmel_serial_suspend, ptr @atmel_serial_resume, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_serial_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"atmel_serial\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ttyAT\00", [26 x i8] zeroinitializer }, align 32
@atmel_console = internal global { %struct.console, [60 x i8] } { %struct.console { [16 x i8] c"ttyAT\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @atmel_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @atmel_uart, ptr null }, [60 x i8] zeroinitializer }, align 32
@atmel_ports = internal global { [8 x %struct.atmel_uart_port], [1728 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"atmel_usart_serial\00", [45 x i8] zeroinitializer }, align 32
@atmel_serial_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-usart-serial\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@atmel_ports_in_use = internal global { [1 x i32], [28 x i8] } zeroinitializer, align 32
@atmel_serial_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&atmel_port->lock_suspended\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atmel,fifo-size\00", [16 x i8] zeroinitializer }, align 32
@atmel_serial_probe_fifos._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 2807, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid FIFO size\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"atmel_serial_probe_fifos\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/tty/serial/atmel_serial.c\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@atmel_serial_probe_fifos._entry_ptr = internal global ptr @atmel_serial_probe_fifos._entry, section ".printk_index", align 4
@atmel_serial_probe_fifos._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.8, i32 2825, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Using FIFO (%u data)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@atmel_serial_probe_fifos._entry_ptr.14 = internal global ptr @atmel_serial_probe_fifos._entry.11, section ".printk_index", align 4
@atmel_serial_probe_fifos.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.8, ptr @.str.15, i8 2, i8 -62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"RTS High Threshold : %2u data\0A\00", [33 x i8] zeroinitializer }, align 32
@atmel_serial_probe_fifos.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.8, ptr @.str.16, i8 2, i8 -61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"RTS Low Threshold  : %2u data\0A\00", [33 x i8] zeroinitializer }, align 32
@atmel_pops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @atmel_tx_empty, ptr @atmel_set_mctrl, ptr @atmel_get_mctrl, ptr @atmel_stop_tx, ptr @atmel_start_tx, ptr null, ptr null, ptr null, ptr @atmel_stop_rx, ptr @atmel_enable_ms, ptr @atmel_break_ctl, ptr @atmel_startup, ptr @atmel_shutdown, ptr @atmel_flush_buffer, ptr @atmel_set_termios, ptr @atmel_set_ldisc, ptr @atmel_serial_pm, ptr @atmel_type, ptr @atmel_release_port, ptr @atmel_request_port, ptr @atmel_config_port, ptr @atmel_verify_port, ptr null, ptr null, ptr @atmel_poll_put_char, ptr @atmel_poll_get_char }, [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"usart\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atmel,use-dma-rx\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dmas\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atmel,use-dma-tx\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@atmel_prepare_rx_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.8, i32 1212, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"using %s for rx DMA transfers\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"atmel_prepare_rx_dma\00", [43 x i8] zeroinitializer }, align 32
@atmel_prepare_rx_dma._entry_ptr = internal global ptr @atmel_prepare_rx_dma._entry, section ".printk_index", align 4
@atmel_prepare_rx_dma.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&atmel_port->lock_rx\00", [43 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@atmel_prepare_rx_dma.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.8, ptr @.str.25, i8 1, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"need to release resource of dma\0A\00", [63 x i8] zeroinitializer }, align 32
@atmel_prepare_rx_dma.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.8, ptr @.str.26, i8 1, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: mapped %d@%p to %pad\0A\00", [38 x i8] zeroinitializer }, align 32
@atmel_prepare_rx_dma._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.8, i32 1247, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DMA rx slave configuration failed\0A\00", [61 x i8] zeroinitializer }, align 32
@atmel_prepare_rx_dma._entry_ptr.29 = internal global ptr @atmel_prepare_rx_dma._entry.27, section ".printk_index", align 4
@atmel_prepare_rx_dma._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.8, i32 1261, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Preparing DMA cyclic failed\0A\00", [35 x i8] zeroinitializer }, align 32
@atmel_prepare_rx_dma._entry_ptr.32 = internal global ptr @atmel_prepare_rx_dma._entry.30, section ".printk_index", align 4
@atmel_prepare_rx_dma._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.23, ptr @.str.8, i32 1270, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dma_submit_error %d\0A\00", [43 x i8] zeroinitializer }, align 32
@atmel_prepare_rx_dma._entry_ptr.35 = internal global ptr @atmel_prepare_rx_dma._entry.33, section ".printk_index", align 4
@atmel_prepare_rx_dma._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.23, ptr @.str.8, i32 1279, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"RX channel not available, switch to pio\0A\00", [55 x i8] zeroinitializer }, align 32
@atmel_prepare_rx_dma._entry_ptr.38 = internal global ptr @atmel_prepare_rx_dma._entry.36, section ".printk_index", align 4
@atmel_rx_from_dma.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.8, ptr @.str.40, i8 1, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atmel_rx_from_dma\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Get residue error, restart tasklet\0A\00", [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@atmel_prepare_tx_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.8, i32 1035, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"using %s for tx DMA transfers\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"atmel_prepare_tx_dma\00", [43 x i8] zeroinitializer }, align 32
@atmel_prepare_tx_dma._entry_ptr = internal global ptr @atmel_prepare_tx_dma._entry, section ".printk_index", align 4
@atmel_prepare_tx_dma.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&atmel_port->lock_tx\00", [43 x i8] zeroinitializer }, align 32
@atmel_prepare_tx_dma.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.8, ptr @.str.25, i8 1, i8 6, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@atmel_prepare_tx_dma.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.8, ptr @.str.26, i8 1, i8 8, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@atmel_prepare_tx_dma._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.45, ptr @.str.8, i32 1072, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DMA tx slave configuration failed\0A\00", [61 x i8] zeroinitializer }, align 32
@atmel_prepare_tx_dma._entry_ptr.49 = internal global ptr @atmel_prepare_tx_dma._entry.47, section ".printk_index", align 4
@atmel_prepare_tx_dma._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.45, ptr @.str.8, i32 1079, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"TX channel not available, switch to pio\0A\00", [55 x i8] zeroinitializer }, align 32
@atmel_prepare_tx_dma._entry_ptr.52 = internal global ptr @atmel_prepare_tx_dma._entry.50, section ".printk_index", align 4
@atmel_tx_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.8, i32 997, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to send via dma!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"atmel_tx_dma\00", [19 x i8] zeroinitializer }, align 32
@atmel_tx_dma._entry_ptr = internal global ptr @atmel_tx_dma._entry, section ".printk_index", align 4
@atmel_tx_dma._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.54, ptr @.str.8, i32 1009, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@atmel_tx_dma._entry_ptr.56 = internal global ptr @atmel_tx_dma._entry.55, section ".printk_index", align 4
@atmel_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.8, i32 1907, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"atmel_startup - Can't get irq\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atmel_startup\00", [18 x i8] zeroinitializer }, align 32
@atmel_startup._entry_ptr = internal global ptr @atmel_startup._entry, section ".printk_index", align 4
@atmel_startup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"(&atmel_port->uart_timer)\00", [38 x i8] zeroinitializer }, align 32
@atmel_handle_status.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.8, ptr @.str.61, i8 1, i8 96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atmel_handle_status\00", [44 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ISO7816 ERROR (0x%08x)\0A\00", [40 x i8] zeroinitializer }, align 32
@atmel_handle_transmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.8, i32 1366, ptr @.str.64, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Should start RX, but TX fifo is not empty\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"atmel_handle_transmit\00", [42 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@atmel_handle_transmit._entry_ptr = internal global ptr @atmel_handle_transmit._entry, section ".printk_index", align 4
@atmel_serial_pm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.8, i32 2123, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"atmel_serial: unknown pm %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atmel_serial_pm\00", [16 x i8] zeroinitializer }, align 32
@atmel_serial_pm._entry_ptr = internal global ptr @atmel_serial_pm._entry, section ".printk_index", align 4
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ATMEL_SERIAL\00", [19 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@atmel_config_rs485.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.8, ptr @.str.69, i8 0, i8 76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"atmel_config_rs485\00", [45 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Setting UART to RS485\0A\00", [41 x i8] zeroinitializer }, align 32
@atmel_config_rs485.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.8, ptr @.str.70, i8 0, i8 78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Setting UART to RS232\0A\00", [41 x i8] zeroinitializer }, align 32
@atmel_config_iso7816._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.8, i32 373, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ISO7816: Timeguard exceeding 255\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"atmel_config_iso7816\00", [43 x i8] zeroinitializer }, align 32
@atmel_config_iso7816._entry_ptr = internal global ptr @atmel_config_iso7816._entry, section ".printk_index", align 4
@atmel_config_iso7816._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.8, i32 386, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ISO7816: Type not supported\0A\00", [35 x i8] zeroinitializer }, align 32
@atmel_config_iso7816._entry_ptr.75 = internal global ptr @atmel_config_iso7816._entry.73, section ".printk_index", align 4
@atmel_config_iso7816._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.72, ptr @.str.8, i32 402, ptr @.str.64, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ISO7816 fidi = 0, Generator generates no signal\0A\00", [47 x i8] zeroinitializer }, align 32
@atmel_config_iso7816._entry_ptr.78 = internal global ptr @atmel_config_iso7816._entry.76, section ".printk_index", align 4
@atmel_config_iso7816._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.72, ptr @.str.8, i32 405, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ISO7816 fidi = %u, value not supported\0A\00", [56 x i8] zeroinitializer }, align 32
@atmel_config_iso7816._entry_ptr.81 = internal global ptr @atmel_config_iso7816._entry.79, section ".printk_index", align 4
@atmel_config_iso7816.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.8, ptr @.str.82, i8 0, i8 106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Setting UART back to RS232\0A\00", [36 x i8] zeroinitializer }, align 32
@atmel_get_ip_name.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.8, ptr @.str.84, i8 1, i8 -54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atmel_get_ip_name\00", [46 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Uart with hw timer\00", [45 x i8] zeroinitializer }, align 32
@atmel_get_ip_name.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.8, ptr @.str.85, i8 1, i8 -53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Usart\0A\00", [25 x i8] zeroinitializer }, align 32
@atmel_get_ip_name.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.8, ptr @.str.86, i8 1, i8 -47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Dbgu or uart without hw timer\0A\00", [33 x i8] zeroinitializer }, align 32
@atmel_get_ip_name.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.8, ptr @.str.87, i8 1, i8 -45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"This version is usart\0A\00", [41 x i8] zeroinitializer }, align 32
@atmel_get_ip_name.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.8, ptr @.str.88, i8 1, i8 -44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"This version is uart\0A\00", [42 x i8] zeroinitializer }, align 32
@atmel_get_ip_name._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.83, ptr @.str.8, i32 1878, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Not supported ip name nor version, set to uart\0A\00", [48 x i8] zeroinitializer }, align 32
@atmel_get_ip_name._entry_ptr = internal global ptr @atmel_get_ip_name._entry, section ".printk_index", align 4
@console_suspend_enabled = external dso_local local_unnamed_addr global i8, align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 512]
@__sancov_gen_cov_switch_values.90 = internal global [5 x i64] [i64 3, i64 32, i64 1145194325, i64 1430344276, i64 1431519570]
@__sancov_gen_cov_switch_values.91 = internal global [5 x i64] [i64 3, i64 32, i64 1282, i64 1793, i64 2068]
@__sancov_gen_cov_switch_values.92 = internal global [7 x i64] [i64 5, i64 32, i64 515, i64 770, i64 66050, i64 66067, i64 66306]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 16]
@__sancov_gen_cov_switch_values.94 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 16, i64 32]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.96 = private unnamed_addr constant [11 x i8] c"atmel_uart\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 2681, i32 27 }
@___asan_gen_.99 = private unnamed_addr constant [20 x i8] c"atmel_serial_driver\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 2992, i32 31 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 2683, i32 17 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 2684, i32 14 }
@___asan_gen_.108 = private unnamed_addr constant [14 x i8] c"atmel_console\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 2665, i32 23 }
@___asan_gen_.111 = private unnamed_addr constant [12 x i8] c"atmel_ports\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 189, i32 31 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 2998, i32 13 }
@___asan_gen_.117 = private unnamed_addr constant [20 x i8] c"atmel_serial_dt_ids\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 193, i32 34 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 2851, i32 28 }
@___asan_gen_.123 = private unnamed_addr constant [19 x i8] c"atmel_ports_in_use\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 190, i32 8 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 2875, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 2798, i32 6 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 2807, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 2824, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 2826, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 2828, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant [11 x i8] c"atmel_pops\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 2451, i32 30 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 2509, i32 42 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1751, i32 32 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1752, i32 33 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1764, i32 32 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1208, i32 59 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1211, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1214, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1228, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1231, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1247, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1261, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1269, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1279, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1129, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 326, i32 6 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1031, i32 59 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1034, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1037, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1072, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1079, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 997, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1008, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1907, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1970, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1408, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1366, i32 5 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 2123, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 2358, i32 38 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 304, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 314, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 373, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 386, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 402, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 405, i32 4 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 424, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1835, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1839, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1860, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1868, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1875, i32 4 }
@___asan_gen_.387 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.390 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.391 = private constant [37 x i8] c"../drivers/tty/serial/atmel_serial.c\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1878, i32 4 }
@llvm.compiler.used = appending global [120 x ptr] [ptr @__initcall__kmod_atmel_serial__313_3017_atmel_serial_init6, ptr @atmel_config_iso7816._entry, ptr @atmel_config_iso7816._entry.73, ptr @atmel_config_iso7816._entry.76, ptr @atmel_config_iso7816._entry.79, ptr @atmel_config_iso7816._entry_ptr, ptr @atmel_config_iso7816._entry_ptr.75, ptr @atmel_config_iso7816._entry_ptr.78, ptr @atmel_config_iso7816._entry_ptr.81, ptr @atmel_get_ip_name._entry, ptr @atmel_get_ip_name._entry_ptr, ptr @atmel_handle_transmit._entry, ptr @atmel_handle_transmit._entry_ptr, ptr @atmel_prepare_rx_dma._entry, ptr @atmel_prepare_rx_dma._entry.27, ptr @atmel_prepare_rx_dma._entry.30, ptr @atmel_prepare_rx_dma._entry.33, ptr @atmel_prepare_rx_dma._entry.36, ptr @atmel_prepare_rx_dma._entry_ptr, ptr @atmel_prepare_rx_dma._entry_ptr.29, ptr @atmel_prepare_rx_dma._entry_ptr.32, ptr @atmel_prepare_rx_dma._entry_ptr.35, ptr @atmel_prepare_rx_dma._entry_ptr.38, ptr @atmel_prepare_tx_dma._entry, ptr @atmel_prepare_tx_dma._entry.47, ptr @atmel_prepare_tx_dma._entry.50, ptr @atmel_prepare_tx_dma._entry_ptr, ptr @atmel_prepare_tx_dma._entry_ptr.49, ptr @atmel_prepare_tx_dma._entry_ptr.52, ptr @atmel_serial_pm._entry, ptr @atmel_serial_pm._entry_ptr, ptr @atmel_serial_probe_fifos._entry, ptr @atmel_serial_probe_fifos._entry.11, ptr @atmel_serial_probe_fifos._entry_ptr, ptr @atmel_serial_probe_fifos._entry_ptr.14, ptr @atmel_startup._entry, ptr @atmel_startup._entry_ptr, ptr @atmel_tx_dma._entry, ptr @atmel_tx_dma._entry.55, ptr @atmel_tx_dma._entry_ptr, ptr @atmel_tx_dma._entry_ptr.56, ptr @atmel_uart, ptr @atmel_serial_driver, ptr @.str, ptr @.str.1, ptr @atmel_console, ptr @atmel_ports, ptr @.str.2, ptr @atmel_serial_dt_ids, ptr @.str.3, ptr @atmel_ports_in_use, ptr @atmel_serial_probe.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @atmel_pops, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @atmel_prepare_rx_dma.__key, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @atmel_prepare_tx_dma.__key, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.57, ptr @.str.58, ptr @atmel_startup.__key, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89], section "llvm.metadata"
@0 = internal global [99 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_uart to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_serial_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_console to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ports to i32), i32 6944, i32 8672, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_serial_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ports_in_use to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_serial_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_serial_probe_fifos._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_serial_probe_fifos._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_prepare_rx_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_prepare_rx_dma.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_prepare_rx_dma._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_prepare_rx_dma._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_prepare_rx_dma._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_prepare_rx_dma._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_prepare_tx_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_prepare_tx_dma.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_prepare_tx_dma._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_prepare_tx_dma._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_tx_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_tx_dma._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_startup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_handle_transmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_serial_pm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_config_iso7816._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_config_iso7816._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_config_iso7816._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_config_iso7816._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_get_ip_name._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_serial_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @uart_register_driver(ptr noundef nonnull @atmel_uart) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @atmel_serial_driver, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @uart_unregister_driver(ptr noundef nonnull @atmel_uart) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
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
define internal void @atmel_console_write(ptr nocapture noundef readonly %co, ptr noundef %s, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index, align 2
  %idxprom = sext i16 %1 to i32
  %arrayidx = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %idxprom
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 2
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !207
  %tx_done_mask = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %idxprom, i32 31
  %5 = ptrtoint ptr %tx_done_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_done_mask, align 4
  %or = or i32 %6, 1
  %7 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %8, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %or) #10, !srcloc !208
  %9 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %10, i32 292
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #10, !srcloc !207
  %12 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %13, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 512) #10, !srcloc !208
  %14 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 64) #10, !srcloc !208
  %tx_stopped = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %idxprom, i32 40
  %16 = ptrtoint ptr %tx_stopped to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %tx_stopped, align 4
  tail call void @uart_console_write(ptr noundef %arrayidx, ptr noundef %s, i32 noundef %count, ptr noundef nonnull @atmel_console_putchar) #10
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %17 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %18, i32 20
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24) #10, !srcloc !207
  %and4 = and i32 %19, 2
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end:                                           ; preds = %do.body
  %and = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.end.if.end_crit_edge, label %if.then

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %21, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 256) #10, !srcloc !208
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end.if.end_crit_edge
  %22 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %23, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 %4) #10, !srcloc !208
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_console_setup(ptr noundef %co, ptr noundef %options) #0 section ".init.text" align 64 {
entry:
  %baud = alloca i32, align 4
  %bits = alloca i32, align 4
  %parity = alloca i32, align 4
  %flow = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index, align 2
  %idxprom = sext i16 %1 to i32
  %arrayidx = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %idxprom
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %baud) #10
  %2 = ptrtoint ptr %baud to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 115200, ptr %baud, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits) #10
  %3 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 8, ptr %bits, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parity) #10
  %4 = ptrtoint ptr %parity to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 110, ptr %parity, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flow) #10
  %5 = ptrtoint ptr %flow to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 110, ptr %flow, align 4
  %membase = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 2
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %idxprom, i32 1
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end6, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %9) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end.i
  %10 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #10, !srcloc !208
  %12 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 260) #10, !srcloc !208
  %14 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 80) #10, !srcloc !208
  %tx_stopped = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %idxprom, i32 40
  %16 = ptrtoint ptr %tx_stopped to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %tx_stopped, align 4
  %tobool7.not = icmp eq ptr %options, null
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  call void @uart_parse_options(ptr noundef nonnull %options, ptr noundef nonnull %baud, ptr noundef nonnull %parity, ptr noundef nonnull %bits, ptr noundef nonnull %flow) #10
  br label %if.end9

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @atmel_console_get_options(ptr noundef %arrayidx, ptr noundef nonnull %baud, ptr noundef nonnull %parity, ptr noundef nonnull %bits) #13
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then8
  %17 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %baud, align 4
  %19 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %parity, align 4
  %21 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bits, align 4
  %23 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flow, align 4
  %call10 = call i32 @uart_set_options(ptr noundef %arrayidx, ptr noundef %co, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then3.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ -19, %entry.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flow) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parity) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %baud) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_console_putchar(ptr nocapture noundef readonly %port, i32 noundef %ch) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8) #10, !srcloc !207
  %and9 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool.not10 = icmp eq i32 %and9, 0
  br i1 %tobool.not10, label %entry.do.end_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !209
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !210
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 20
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !207
  %and = and i32 %5, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.do.end_crit_edge, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  %conv = trunc i32 %ch to i8
  %6 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %7, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i7, i8 %conv) #10, !srcloc !211
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %clk) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmel_console_get_options(ptr nocapture noundef readonly %port, ptr nocapture noundef writeonly %baud, ptr nocapture noundef writeonly %parity, ptr nocapture noundef writeonly %bits) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !207
  %and = and i32 %2, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %4, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24) #10, !srcloc !207
  %and2 = and i32 %5, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %and2)
  %cmp = icmp eq i32 %and2, 192
  %. = select i1 %cmp, i32 8, i32 7
  %6 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %., ptr %bits, align 4
  %7 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %8, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #10, !srcloc !207
  %and6 = and i32 %9, 3584
  %10 = zext i32 %and6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and6, label %if.end.if.end13_crit_edge [
    i32 0, label %if.end.if.end13.sink.split_crit_edge
    i32 512, label %if.then11
  ]

if.end.if.end13.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.sink.split

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.sink.split

if.end13.sink.split:                              ; preds = %if.then11, %if.end.if.end13.sink.split_crit_edge
  %.sink = phi i32 [ 111, %if.then11 ], [ 101, %if.end.if.end13.sink.split_crit_edge ]
  %11 = ptrtoint ptr %parity to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %parity, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end13.sink.split, %if.end.if.end13_crit_edge
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %12 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %uartclk, align 4
  %sub = shl nuw nsw i32 %and, 4
  %mul = add nsw i32 %sub, -16
  %div = udiv i32 %13, %mul
  %14 = ptrtoint ptr %baud to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div, ptr %baud, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_serial_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %of_node2 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %of_node2, align 8
  %call = tail call i32 @of_alias_get_id(ptr noundef %3, ptr noundef nonnull @.str.3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 @_find_first_zero_bit_be(ptr noundef nonnull @atmel_ports_in_use, i32 noundef 8) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call3, %if.then ], [ %call, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %ret.0)
  %cmp4 = icmp sgt i32 %ret.0, 7
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @_test_and_set_bit(i32 noundef %ret.0, ptr noundef nonnull @atmel_ports_in_use) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %arrayidx = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %ret.0
  %backup_imr = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %ret.0, i32 3
  %5 = ptrtoint ptr %backup_imr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %backup_imr, align 4
  %line = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 41
  %6 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %ret.0, ptr %line, align 4
  %has_sysrq = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 48
  %7 = ptrtoint ptr %has_sysrq to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %has_sysrq, align 4
  tail call fastcc void @atmel_serial_probe_fifos(ptr noundef %arrayidx, ptr noundef %pdev)
  %tasklet_shutdown = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %ret.0, i32 24
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tasklet_shutdown, i32 noundef 4) #10
  %8 = ptrtoint ptr %tasklet_shutdown to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %tasklet_shutdown, align 4
  %lock_suspended = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %ret.0, i32 44
  tail call void @__raw_spin_lock_init(ptr noundef %lock_suspended, ptr noundef nonnull @.str.4, ptr noundef nonnull @atmel_serial_probe.__key, i16 noundef signext 3) #10
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 -16
  tail call fastcc void @atmel_init_property(ptr noundef %arrayidx, ptr noundef %pdev) #10
  %use_dma_rx.i.i.i = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %ret.0, i32 5
  %11 = ptrtoint ptr %use_dma_rx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %use_dma_rx.i.i.i, align 4, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.i.not.i.i = icmp eq i8 %12, 0
  br i1 %tobool.i.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %prepare_rx.i.i = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %ret.0, i32 49
  %13 = ptrtoint ptr %prepare_rx.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @atmel_prepare_rx_dma, ptr %prepare_rx.i.i, align 4
  br label %if.end11.i.i

if.else.i.i:                                      ; preds = %if.end9
  %use_pdc_rx.i.i.i = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %ret.0, i32 6
  %14 = ptrtoint ptr %use_pdc_rx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %use_pdc_rx.i.i.i, align 1, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.i47.not.i.i = icmp eq i8 %15, 0
  %prepare_rx8.i.i = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %ret.0, i32 49
  br i1 %tobool.i47.not.i.i, label %if.else7.i.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %prepare_rx8.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @atmel_prepare_rx_pdc, ptr %prepare_rx8.i.i, align 4
  br label %if.end11.i.i

if.else7.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %prepare_rx8.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %prepare_rx8.i.i, align 4
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.else7.i.i, %if.then3.i.i, %if.then.i.i
  %atmel_rx_from_pdc.sink.i.i = phi ptr [ @atmel_rx_from_pdc, %if.then3.i.i ], [ @atmel_rx_from_ring, %if.else7.i.i ], [ @atmel_rx_from_dma, %if.then.i.i ]
  %atmel_release_rx_pdc.sink.i.i = phi ptr [ @atmel_release_rx_pdc, %if.then3.i.i ], [ null, %if.else7.i.i ], [ @atmel_release_rx_dma, %if.then.i.i ]
  %schedule_rx5.i.i = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %ret.0, i32 51
  %18 = ptrtoint ptr %schedule_rx5.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %atmel_rx_from_pdc.sink.i.i, ptr %schedule_rx5.i.i, align 4
  %release_rx6.i.i = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %ret.0, i32 53
  %19 = ptrtoint ptr %release_rx6.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %atmel_release_rx_pdc.sink.i.i, ptr %release_rx6.i.i, align 4
  %use_dma_tx.i.i.i = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %ret.0, i32 9
  %20 = ptrtoint ptr %use_dma_tx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %use_dma_tx.i.i.i, align 4, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.i48.not.i.i = icmp eq i8 %21, 0
  br i1 %tobool.i48.not.i.i, label %if.else14.i.i, label %if.then13.i.i

if.then13.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prepare_tx.i.i = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %ret.0, i32 50
  %22 = ptrtoint ptr %prepare_tx.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @atmel_prepare_tx_dma, ptr %prepare_tx.i.i, align 4
  br label %atmel_set_ops.exit.i

if.else14.i.i:                                    ; preds = %if.end11.i.i
  %use_pdc_tx.i.i.i = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %ret.0, i32 10
  %23 = ptrtoint ptr %use_pdc_tx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %use_pdc_tx.i.i.i, align 1, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.i49.not.i.i = icmp eq i8 %24, 0
  %prepare_tx21.i.i = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %ret.0, i32 50
  br i1 %tobool.i49.not.i.i, label %if.else20.i.i, label %if.then16.i.i

if.then16.i.i:                                    ; preds = %if.else14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %prepare_tx21.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @atmel_prepare_tx_pdc, ptr %prepare_tx21.i.i, align 4
  br label %atmel_set_ops.exit.i

if.else20.i.i:                                    ; preds = %if.else14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %prepare_tx21.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %prepare_tx21.i.i, align 4
  br label %atmel_set_ops.exit.i

atmel_set_ops.exit.i:                             ; preds = %if.else20.i.i, %if.then16.i.i, %if.then13.i.i
  %atmel_tx_pdc.sink.i.i = phi ptr [ @atmel_tx_pdc, %if.then16.i.i ], [ @atmel_tx_chars, %if.else20.i.i ], [ @atmel_tx_dma, %if.then13.i.i ]
  %atmel_release_tx_pdc.sink.i.i = phi ptr [ @atmel_release_tx_pdc, %if.then16.i.i ], [ null, %if.else20.i.i ], [ @atmel_release_tx_dma, %if.then13.i.i ]
  %schedule_tx18.i.i = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %ret.0, i32 52
  %27 = ptrtoint ptr %schedule_tx18.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %atmel_tx_pdc.sink.i.i, ptr %schedule_tx18.i.i, align 4
  %release_tx19.i.i = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %ret.0, i32 54
  %28 = ptrtoint ptr %release_tx19.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %atmel_release_tx_pdc.sink.i.i, ptr %release_tx19.i.i, align 4
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 26
  %29 = ptrtoint ptr %iotype.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %iotype.i, align 2
  %flags.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 33
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1879048192, ptr %flags.i, align 4
  %ops.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 39
  %31 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @atmel_pops, ptr %ops.i, align 4
  %fifosize.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 23
  %32 = ptrtoint ptr %fifosize.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %fifosize.i, align 4
  %dev2.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 45
  %33 = ptrtoint ptr %dev2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %dev, ptr %dev2.i, align 4
  %resource.i = getelementptr i8, ptr %10, i32 952
  %34 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %resource.i, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %mapbase.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 43
  %38 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %mapbase.i, align 4
  %call.i = tail call i32 @platform_get_irq(ptr noundef %add.ptr.i, i32 noundef 0) #10
  %irq.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 20
  %39 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call.i, ptr %irq.i, align 4
  %rs485_config.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 18
  %40 = ptrtoint ptr %rs485_config.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @atmel_config_rs485, ptr %rs485_config.i, align 4
  %iso7816_config.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 19
  %41 = ptrtoint ptr %iso7816_config.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @atmel_config_iso7816, ptr %iso7816_config.i, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 2
  %42 = ptrtoint ptr %membase.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %membase.i, align 4
  %rx_ring.i = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %ret.0, i32 27
  %43 = call ptr @memset(ptr %rx_ring.i, i32 0, i32 12)
  %call3.i = tail call i32 @uart_get_rs485_mode(ptr noundef %arrayidx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %atmel_set_ops.exit.i.err_clear_bit_crit_edge

atmel_set_ops.exit.i.err_clear_bit_crit_edge:     ; preds = %atmel_set_ops.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_clear_bit

if.end.i:                                         ; preds = %atmel_set_ops.exit.i
  %clk.i = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %ret.0, i32 1
  %44 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %clk.i, align 4
  %tobool4.not.i = icmp eq ptr %45, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end.i.if.end26.i_crit_edge

if.end.i.if.end26.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

if.then5.i:                                       ; preds = %if.end.i
  %call7.i = tail call ptr @clk_get(ptr noundef %10, ptr noundef nonnull @.str.17) #10
  %46 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call7.i, ptr %clk.i, align 4
  %cmp.i.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %atmel_init_port.exit, label %if.end15.i

if.end15.i:                                       ; preds = %if.then5.i
  %call.i.i141 = tail call i32 @clk_prepare(ptr noundef %call7.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i141)
  %tobool.not.i.i = icmp eq i32 %call.i.i141, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end15.i.if.then19.i_crit_edge

if.end15.i.if.then19.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19.i

if.end.i.i:                                       ; preds = %if.end15.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %call7.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end22.i, label %if.then3.i78.i

if.then3.i78.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %call7.i) #10
  br label %if.then19.i

if.then19.i:                                      ; preds = %if.then3.i78.i, %if.end15.i.if.then19.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i78.i ], [ %call.i.i141, %if.end15.i.if.then19.i_crit_edge ]
  %47 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %clk.i, align 4
  tail call void @clk_put(ptr noundef %48) #10
  %49 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %clk.i, align 4
  br label %err_clear_bit

if.end22.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %clk.i, align 4
  %call24.i = tail call i32 @clk_get_rate(ptr noundef %51) #10
  %uartclk.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 22
  %52 = ptrtoint ptr %uartclk.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call24.i, ptr %uartclk.i, align 4
  %53 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %54) #10
  tail call void @clk_unprepare(ptr noundef %54) #10
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.end22.i, %if.end.i.if.end26.i_crit_edge
  %rs485.i.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 56
  %55 = ptrtoint ptr %rs485.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rs485.i.i, align 4
  %57 = and i32 %56, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %if.end26.i.if.end18_crit_edge, label %atmel_uart_is_half_duplex.exit.i

if.end26.i.if.end18_crit_edge:                    ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

atmel_uart_is_half_duplex.exit.i:                 ; preds = %if.end26.i
  %iso7816.i.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 58
  %59 = ptrtoint ptr %iso7816.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %iso7816.i.i, align 4
  %and6.i.i = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool28.not.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool28.not.i, label %if.else.i, label %atmel_uart_is_half_duplex.exit.i.if.end18_crit_edge

atmel_uart_is_half_duplex.exit.i.if.end18_crit_edge: ; preds = %atmel_uart_is_half_duplex.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.else.i:                                        ; preds = %atmel_uart_is_half_duplex.exit.i
  %use_pdc_tx.i.i = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %ret.0, i32 10
  %61 = ptrtoint ptr %use_pdc_tx.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %use_pdc_tx.i.i, align 1, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.i.not.i = icmp eq i8 %62, 0
  br i1 %tobool.i.not.i, label %if.else.i.if.end18_crit_edge, label %if.then31.i

if.else.i.if.end18_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then31.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %fifosize.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 512, ptr %fifosize.i, align 4
  br label %if.end18

atmel_init_port.exit:                             ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %call7.i to i32
  %65 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %clk.i, align 4
  br label %err_clear_bit

if.end18:                                         ; preds = %if.then31.i, %if.else.i.if.end18_crit_edge, %atmel_uart_is_half_duplex.exit.i.if.end18_crit_edge, %if.end26.i.if.end18_crit_edge
  %.sink = phi i32 [ 2064, %if.then31.i ], [ 512, %atmel_uart_is_half_duplex.exit.i.if.end18_crit_edge ], [ 512, %if.end26.i.if.end18_crit_edge ], [ 2, %if.else.i.if.end18_crit_edge ]
  %tx_done_mask.i = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %ret.0, i32 31
  %66 = ptrtoint ptr %tx_done_mask.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %.sink, ptr %tx_done_mask.i, align 4
  %call20 = tail call ptr @mctrl_gpio_init(ptr noundef %arrayidx, i32 noundef 0) #10
  %gpios = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %ret.0, i32 28
  %67 = ptrtoint ptr %gpios to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call20, ptr %gpios, align 4
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %call20 to i32
  br label %err_clear_bit

if.end26:                                         ; preds = %if.end18
  %use_pdc_rx.i = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %ret.0, i32 6
  %69 = ptrtoint ptr %use_pdc_rx.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %use_pdc_rx.i, align 1, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.i.not = icmp eq i8 %70, 0
  br i1 %tobool.i.not, label %if.then29, label %if.end26.if.end34_crit_edge

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then29:                                        ; preds = %if.end26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %71 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %71, i32 noundef 3264, i32 noundef 4096) #14
  %tobool31.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool31.not, label %if.then29.err_alloc_ring_crit_edge, label %if.end33

if.then29.err_alloc_ring_crit_edge:               ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_alloc_ring

if.end33:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call7.i.i, ptr %rx_ring.i, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end26.if.end34_crit_edge
  %73 = ptrtoint ptr %rs485.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rs485.i.i, align 4
  %and = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  %call38 = tail call i32 @uart_add_one_port(ptr noundef nonnull @atmel_uart, ptr noundef %arrayidx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %err_add_port

if.end41:                                         ; preds = %if.end34
  %cons = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 32
  %75 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cons, align 4
  %tobool43.not = icmp eq ptr %76, null
  br i1 %tobool43.not, label %if.end41.if.end55_crit_edge, label %land.lhs.true

if.end41.if.end55_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

land.lhs.true:                                    ; preds = %if.end41
  %index = getelementptr inbounds %struct.console, ptr %76, i32 0, i32 9
  %77 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %index, align 2
  %conv = sext i16 %78 to i32
  %79 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %conv)
  %cmp48 = icmp eq i32 %80, %conv
  br i1 %cmp48, label %land.lhs.true50, label %land.lhs.true.if.end55_crit_edge

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

land.lhs.true50:                                  ; preds = %land.lhs.true
  %81 = load i16, ptr getelementptr inbounds (%struct.console, ptr @atmel_console, i32 0, i32 8), align 4
  %82 = and i16 %81, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %tobool53.not = icmp eq i16 %82, 0
  br i1 %tobool53.not, label %land.lhs.true50.if.end55_crit_edge, label %if.then54

land.lhs.true50.if.end55_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then54:                                        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %84) #10
  tail call void @clk_unprepare(ptr noundef %84) #10
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %land.lhs.true50.if.end55_crit_edge, %land.lhs.true.if.end55_crit_edge, %if.end41.if.end55_crit_edge
  %call57 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %85 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %arrayidx, ptr %driver_data.i.i, align 4
  %86 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %clk.i, align 4
  %call59 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %87)
  br i1 %tobool36.not, label %if.end55.if.end64_crit_edge, label %if.then61

if.end55.if.end64_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then61:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %membase.i, align 4
  %add.ptr.i143 = getelementptr i8, ptr %89, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143, i32 0) #10, !srcloc !208
  %90 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 262144) #10, !srcloc !208
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.end55.if.end64_crit_edge
  tail call fastcc void @atmel_get_ip_name(ptr noundef %arrayidx)
  %92 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %93) #10
  tail call void @clk_unprepare(ptr noundef %93) #10
  br label %cleanup

err_add_port:                                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %94 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rx_ring.i, align 4
  tail call void @kfree(ptr noundef %95) #10
  %96 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %rx_ring.i, align 4
  br label %err_alloc_ring

err_alloc_ring:                                   ; preds = %err_add_port, %if.then29.err_alloc_ring_crit_edge
  %ret.1 = phi i32 [ %call38, %err_add_port ], [ -12, %if.then29.err_alloc_ring_crit_edge ]
  %cons72 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 32
  %97 = ptrtoint ptr %cons72 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cons72, align 4
  %tobool73.not = icmp eq ptr %98, null
  br i1 %tobool73.not, label %err_alloc_ring.if.then83_crit_edge, label %land.lhs.true74

err_alloc_ring.if.then83_crit_edge:               ; preds = %err_alloc_ring
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then83

land.lhs.true74:                                  ; preds = %err_alloc_ring
  %index77 = getelementptr inbounds %struct.console, ptr %98, i32 0, i32 9
  %99 = ptrtoint ptr %index77 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %index77, align 2
  %conv78 = sext i16 %100 to i32
  %101 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %conv78)
  %cmp81 = icmp eq i32 %102, %conv78
  br i1 %cmp81, label %land.lhs.true74.err_clear_bit_crit_edge, label %land.lhs.true74.if.then83_crit_edge

land.lhs.true74.if.then83_crit_edge:              ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then83

land.lhs.true74.err_clear_bit_crit_edge:          ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_clear_bit

if.then83:                                        ; preds = %land.lhs.true74.if.then83_crit_edge, %err_alloc_ring.if.then83_crit_edge
  %103 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %clk.i, align 4
  tail call void @clk_put(ptr noundef %104) #10
  %105 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %clk.i, align 4
  br label %err_clear_bit

err_clear_bit:                                    ; preds = %if.then83, %land.lhs.true74.err_clear_bit_crit_edge, %if.then23, %atmel_init_port.exit, %if.then19.i, %atmel_set_ops.exit.i.err_clear_bit_crit_edge
  %ret.2 = phi i32 [ %64, %atmel_init_port.exit ], [ %68, %if.then23 ], [ %ret.1, %land.lhs.true74.err_clear_bit_crit_edge ], [ %ret.1, %if.then83 ], [ %call3.i, %atmel_set_ops.exit.i.err_clear_bit_crit_edge ], [ %retval.0.i.ph.i, %if.then19.i ]
  %106 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %line, align 4
  tail call void @_clear_bit(i32 noundef %107, ptr noundef nonnull @atmel_ports_in_use) #10
  br label %cleanup

cleanup:                                          ; preds = %err_clear_bit, %if.end64, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end64 ], [ %ret.2, %err_clear_bit ], [ -19, %if.end.cleanup_crit_edge ], [ -16, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_serial_remove(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tasklet_rx = getelementptr inbounds %struct.atmel_uart_port, ptr %1, i32 0, i32 22
  tail call void @tasklet_kill(ptr noundef %tasklet_rx) #10
  %tasklet_tx = getelementptr inbounds %struct.atmel_uart_port, ptr %1, i32 0, i32 23
  tail call void @tasklet_kill(ptr noundef %tasklet_tx) #10
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call2 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext false) #10
  %call3 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @atmel_uart, ptr noundef %1) #10
  %rx_ring = getelementptr inbounds %struct.atmel_uart_port, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_ring, align 4
  tail call void @kfree(ptr noundef %3) #10
  %line = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 41
  %4 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %line, align 4
  tail call void @_clear_bit(i32 noundef %5, ptr noundef nonnull @atmel_ports_in_use) #10
  %clk = getelementptr inbounds %struct.atmel_uart_port, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %7) #10
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %clk, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %of_node, align 8
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_serial_suspend(ptr noundef %pdev, [1 x i32] %state.coerce) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cons = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cons, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end41_crit_edge, label %land.lhs.true

entry.if.end41_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

land.lhs.true:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.console, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %index, align 2
  %conv = sext i16 %5 to i32
  %line = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 41
  %6 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp = icmp eq i32 %7, %conv
  br i1 %cmp, label %land.lhs.true4, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @console_suspend_enabled to i32))
  %8 = load i8, ptr @console_suspend_enabled, align 1, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not = icmp eq i8 %8, 0
  br i1 %tobool5.not, label %land.lhs.true4.if.end_crit_edge, label %while.cond.preheader

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

while.cond.preheader:                             ; preds = %land.lhs.true4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i, align 4
  %add.ptr.i105 = getelementptr i8, ptr %10, i32 20
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i105) #10, !srcloc !207
  %and106 = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool8.not107 = icmp eq i32 %and106, 0
  br i1 %tobool8.not107, label %while.cond.preheader.do.end_crit_edge, label %while.cond.preheader.if.end_crit_edge

while.cond.preheader.if.end_crit_edge:            ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

while.cond.preheader.do.end_crit_edge:            ; preds = %while.cond.preheader
  br label %do.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %while.cond.preheader.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !213
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !214
  %12 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 20
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !207
  %and = and i32 %14, 512
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %do.end.do.end_crit_edge, label %do.end.if.end_crit_edge

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end:                                           ; preds = %do.end.if.end_crit_edge, %while.cond.preheader.if.end_crit_edge, %land.lhs.true4.if.end_crit_edge, %land.lhs.true.if.end_crit_edge
  %15 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load ptr, ptr %cons, align 4
  %tobool16.not = icmp eq ptr %.pr, null
  br i1 %tobool16.not, label %if.end.if.end41_crit_edge, label %land.lhs.true17

if.end.if.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

land.lhs.true17:                                  ; preds = %if.end
  %index19 = getelementptr inbounds %struct.console, ptr %.pr, i32 0, i32 9
  %16 = ptrtoint ptr %index19 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %index19, align 2
  %conv20 = sext i16 %17 to i32
  %18 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv20)
  %cmp22 = icmp eq i32 %19, %conv20
  br i1 %cmp22, label %land.lhs.true24, label %land.lhs.true17.if.end41_crit_edge

land.lhs.true17.if.end41_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

land.lhs.true24:                                  ; preds = %land.lhs.true17
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @console_suspend_enabled to i32))
  %20 = load i8, ptr @console_suspend_enabled, align 1, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool25.not = icmp eq i8 %20, 0
  br i1 %tobool25.not, label %if.then26, label %land.lhs.true24.if.end41_crit_edge

land.lhs.true24.if.end41_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then26:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #12
  %membase.i90 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %membase.i90 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase.i90, align 4
  %add.ptr.i91 = getelementptr i8, ptr %22, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i91) #10, !srcloc !207
  %mr = getelementptr inbounds %struct.atmel_uart_port, ptr %1, i32 0, i32 48, i32 1
  %24 = ptrtoint ptr %mr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %mr, align 4
  %25 = ptrtoint ptr %membase.i90 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase.i90, align 4
  %add.ptr.i93 = getelementptr i8, ptr %26, i32 16
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i93) #10, !srcloc !207
  %imr = getelementptr inbounds %struct.atmel_uart_port, ptr %1, i32 0, i32 48, i32 2
  %28 = ptrtoint ptr %imr to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %imr, align 4
  %29 = ptrtoint ptr %membase.i90 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase.i90, align 4
  %add.ptr.i95 = getelementptr i8, ptr %30, i32 32
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i95) #10, !srcloc !207
  %brgr = getelementptr inbounds %struct.atmel_uart_port, ptr %1, i32 0, i32 48, i32 3
  %32 = ptrtoint ptr %brgr to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %brgr, align 4
  %rtor = getelementptr inbounds %struct.atmel_uart_port, ptr %1, i32 0, i32 36
  %33 = ptrtoint ptr %rtor to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rtor, align 4
  %35 = ptrtoint ptr %membase.i90 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase.i90, align 4
  %add.ptr.i97 = getelementptr i8, ptr %36, i32 %34
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i97) #10, !srcloc !207
  %rtor34 = getelementptr inbounds %struct.atmel_uart_port, ptr %1, i32 0, i32 48, i32 4
  %38 = ptrtoint ptr %rtor34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %rtor34, align 4
  %39 = ptrtoint ptr %membase.i90 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase.i90, align 4
  %add.ptr.i99 = getelementptr i8, ptr %40, i32 40
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i99) #10, !srcloc !207
  %ttgr = getelementptr inbounds %struct.atmel_uart_port, ptr %1, i32 0, i32 48, i32 5
  %42 = ptrtoint ptr %ttgr to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %ttgr, align 4
  %43 = ptrtoint ptr %membase.i90 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase.i90, align 4
  %add.ptr.i101 = getelementptr i8, ptr %44, i32 160
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i101) #10, !srcloc !207
  %fmr = getelementptr inbounds %struct.atmel_uart_port, ptr %1, i32 0, i32 48, i32 6
  %46 = ptrtoint ptr %fmr to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %fmr, align 4
  %47 = ptrtoint ptr %membase.i90 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %membase.i90, align 4
  %add.ptr.i103 = getelementptr i8, ptr %48, i32 176
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i103) #10, !srcloc !207
  %fimr = getelementptr inbounds %struct.atmel_uart_port, ptr %1, i32 0, i32 48, i32 7
  %50 = ptrtoint ptr %fimr to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %fimr, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then26, %land.lhs.true24.if.end41_crit_edge, %land.lhs.true17.if.end41_crit_edge, %if.end.if.end41_crit_edge, %entry.if.end41_crit_edge
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %can_wakeup.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 1
  %51 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end41.device_may_wakeup.exit_crit_edge, label %land.rhs.i

if.end41.device_may_wakeup.exit_crit_edge:        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %device_may_wakeup.exit

land.rhs.i:                                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %wakeup.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 6
  %52 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i = icmp ne ptr %53, null
  %phi.cast = zext i1 %tobool2.i to i32
  br label %device_may_wakeup.exit

device_may_wakeup.exit:                           ; preds = %land.rhs.i, %if.end41.device_may_wakeup.exit_crit_edge
  %54 = phi i32 [ 0, %if.end41.device_may_wakeup.exit_crit_edge ], [ %phi.cast, %land.rhs.i ]
  %may_wakeup = getelementptr inbounds %struct.atmel_uart_port, ptr %1, i32 0, i32 2
  %55 = ptrtoint ptr %may_wakeup to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %may_wakeup, align 4
  %call.i = tail call i32 @at91_suspend_entering_slow_clock() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.i.not, label %device_may_wakeup.exit.if.end59_crit_edge, label %if.then45

device_may_wakeup.exit.if.end59_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then45:                                        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  %lock_suspended = getelementptr inbounds %struct.atmel_uart_port, ptr %1, i32 0, i32 44
  %call51 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock_suspended) #10
  %suspended = getelementptr inbounds %struct.atmel_uart_port, ptr %1, i32 0, i32 41
  %56 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %suspended, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock_suspended, i32 noundef %call51) #10
  %call58 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev, i1 noundef zeroext false) #10
  br label %if.end59

if.end59:                                         ; preds = %if.then45, %device_may_wakeup.exit.if.end59_crit_edge
  %call60 = tail call i32 @uart_suspend_port(ptr noundef nonnull @atmel_uart, ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_serial_resume(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cons = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cons, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.body16_crit_edge, label %land.lhs.true

entry.do.body16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body16

land.lhs.true:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.console, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %index, align 2
  %conv = sext i16 %5 to i32
  %line = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 41
  %6 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp = icmp eq i32 %7, %conv
  br i1 %cmp, label %land.lhs.true4, label %land.lhs.true.do.body16_crit_edge

land.lhs.true.do.body16_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body16

land.lhs.true4:                                   ; preds = %land.lhs.true
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @console_suspend_enabled to i32))
  %8 = load i8, ptr @console_suspend_enabled, align 1, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not = icmp eq i8 %8, 0
  br i1 %tobool5.not, label %if.then, label %land.lhs.true4.do.body16_crit_edge

land.lhs.true4.do.body16_crit_edge:               ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body16

if.then:                                          ; preds = %land.lhs.true4
  %mr = getelementptr inbounds %struct.atmel_uart_port, ptr %1, i32 0, i32 48, i32 1
  %9 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mr, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #10, !srcloc !208
  %imr = getelementptr inbounds %struct.atmel_uart_port, ptr %1, i32 0, i32 48, i32 2
  %13 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %imr, align 4
  %15 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i, align 4
  %add.ptr.i71 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71, i32 %14) #10, !srcloc !208
  %brgr = getelementptr inbounds %struct.atmel_uart_port, ptr %1, i32 0, i32 48, i32 3
  %17 = ptrtoint ptr %brgr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %brgr, align 4
  %19 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase.i, align 4
  %add.ptr.i73 = getelementptr i8, ptr %20, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73, i32 %18) #10, !srcloc !208
  %rtor = getelementptr inbounds %struct.atmel_uart_port, ptr %1, i32 0, i32 36
  %21 = ptrtoint ptr %rtor to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rtor, align 4
  %rtor9 = getelementptr inbounds %struct.atmel_uart_port, ptr %1, i32 0, i32 48, i32 4
  %23 = ptrtoint ptr %rtor9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rtor9, align 4
  %25 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase.i, align 4
  %add.ptr.i75 = getelementptr i8, ptr %26, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75, i32 %24) #10, !srcloc !208
  %ttgr = getelementptr inbounds %struct.atmel_uart_port, ptr %1, i32 0, i32 48, i32 5
  %27 = ptrtoint ptr %ttgr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ttgr, align 4
  %29 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase.i, align 4
  %add.ptr.i77 = getelementptr i8, ptr %30, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77, i32 %28) #10, !srcloc !208
  %fifo_size = getelementptr inbounds %struct.atmel_uart_port, ptr %1, i32 0, i32 32
  %31 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fifo_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool11.not = icmp eq i32 %32, 0
  br i1 %tobool11.not, label %if.then.if.end_crit_edge, label %if.then12

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 1174405120) #10, !srcloc !208
  %fmr = getelementptr inbounds %struct.atmel_uart_port, ptr %1, i32 0, i32 48, i32 6
  %35 = ptrtoint ptr %fmr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fmr, align 4
  %37 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %membase.i, align 4
  %add.ptr.i80 = getelementptr i8, ptr %38, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80, i32 %36) #10, !srcloc !208
  %fimr = getelementptr inbounds %struct.atmel_uart_port, ptr %1, i32 0, i32 48, i32 7
  %39 = ptrtoint ptr %fimr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fimr, align 4
  %41 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %membase.i, align 4
  %add.ptr.i82 = getelementptr i8, ptr %42, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82, i32 %40) #10, !srcloc !208
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.then.if.end_crit_edge
  %43 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 256) #10, !srcloc !208
  %45 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 16) #10, !srcloc !208
  %use_pdc_rx.i.i = getelementptr inbounds %struct.atmel_uart_port, ptr %1, i32 0, i32 6
  %47 = ptrtoint ptr %use_pdc_rx.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %use_pdc_rx.i.i, align 1, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.i.not.i = icmp eq i8 %48, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %read_status_mask.i = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 28
  %49 = ptrtoint ptr %read_status_mask.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %read_status_mask.i, align 4
  %or.i = or i32 %50, 264
  %51 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %52, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or.i) #10, !srcloc !208
  %53 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %membase.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %54, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 1) #10, !srcloc !208
  br label %do.body16

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %membase.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %56, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 1) #10, !srcloc !208
  br label %do.body16

do.body16:                                        ; preds = %if.else.i, %if.then.i, %land.lhs.true4.do.body16_crit_edge, %land.lhs.true.do.body16_crit_edge, %entry.do.body16_crit_edge
  %lock_suspended = getelementptr inbounds %struct.atmel_uart_port, ptr %1, i32 0, i32 44
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock_suspended) #10
  %pending = getelementptr inbounds %struct.atmel_uart_port, ptr %1, i32 0, i32 42
  %57 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool23.not = icmp eq i32 %58, 0
  br i1 %tobool23.not, label %do.body16.if.end29_crit_edge, label %if.then24

do.body16.if.end29_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then24:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @atmel_handle_receive(ptr noundef %1, i32 noundef %58)
  %59 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pending, align 4
  %pending_status = getelementptr inbounds %struct.atmel_uart_port, ptr %1, i32 0, i32 43
  %61 = ptrtoint ptr %pending_status to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pending_status, align 4
  tail call fastcc void @atmel_handle_status(ptr noundef %1, i32 noundef %60, i32 noundef %62)
  %63 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pending, align 4
  tail call fastcc void @atmel_handle_transmit(ptr noundef %1, i32 noundef %64)
  %65 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %pending, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %do.body16.if.end29_crit_edge
  %suspended = getelementptr inbounds %struct.atmel_uart_port, ptr %1, i32 0, i32 41
  %66 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %suspended, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock_suspended, i32 noundef %call20) #10
  %call31 = tail call i32 @uart_resume_port(ptr noundef nonnull @atmel_uart, ptr noundef %1) #10
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %may_wakeup = getelementptr inbounds %struct.atmel_uart_port, ptr %1, i32 0, i32 2
  %67 = ptrtoint ptr %may_wakeup to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %may_wakeup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool32 = icmp ne i32 %68, 0
  %call33 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev, i1 noundef zeroext %tobool32) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmel_serial_probe_fifos(ptr noundef %atmel_port, ptr noundef %pdev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fifo_size = getelementptr inbounds %struct.atmel_uart_port, ptr %atmel_port, i32 0, i32 32
  %0 = ptrtoint ptr %fifo_size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %fifo_size, align 4
  %rts_low = getelementptr inbounds %struct.atmel_uart_port, ptr %atmel_port, i32 0, i32 34
  %1 = ptrtoint ptr %rts_low to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %rts_low, align 4
  %rts_high = getelementptr inbounds %struct.atmel_uart_port, ptr %atmel_port, i32 0, i32 33
  %2 = ptrtoint ptr %rts_high to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %rts_high, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %4, ptr noundef nonnull @.str.5, ptr noundef %fifo_size, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %entry.do.end57_crit_edge

entry.do.end57_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end57

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fifo_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %if.end.do.end57_crit_edge, label %if.end5

if.end.do.end57_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end57

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %6)
  %cmp = icmp ult i32 %6, 8
  br i1 %cmp, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %fifo_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %fifo_size, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6) #15
  br label %do.end57

if.end10:                                         ; preds = %if.end5
  %shr = lshr i32 %6, 1
  %sub = add i32 %6, -16
  %8 = tail call i32 @llvm.smax.i32(i32 %shr, i32 %sub)
  %9 = ptrtoint ptr %rts_high to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %rts_high, align 4
  %shr16 = lshr i32 %6, 2
  %sub18 = add i32 %6, -20
  %10 = tail call i32 @llvm.smax.i32(i32 %shr16, i32 %sub18)
  %11 = ptrtoint ptr %rts_low to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %rts_low, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %6) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_serial_probe_fifos.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_serial_probe_fifos, %if.then36)) #10
          to label %do.body41 [label %if.then36], !srcloc !215

if.then36:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %rts_high to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rts_high, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_serial_probe_fifos.__UNIQUE_ID_ddebug310, ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %13) #10
  br label %do.body41

do.body41:                                        ; preds = %if.then36, %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_serial_probe_fifos.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_serial_probe_fifos, %if.then53)) #10
          to label %do.end57 [label %if.then53], !srcloc !215

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %rts_low to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rts_low, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_serial_probe_fifos.__UNIQUE_ID_ddebug311, ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %15) #10
  br label %do.end57

do.end57:                                         ; preds = %if.then53, %do.body41, %if.then7, %if.end.do.end57_crit_edge, %entry.do.end57_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mctrl_gpio_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmel_get_ip_name(ptr nocapture noundef %port) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 240
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !207
  %has_frac_baudrate = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 37
  %3 = ptrtoint ptr %has_frac_baudrate to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %has_frac_baudrate, align 4
  %has_hw_timer = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 38
  %4 = ptrtoint ptr %has_hw_timer to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %has_hw_timer, align 1
  %5 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %2, label %if.else56 [
    i32 1430344276, label %do.body
    i32 1431519570, label %do.body9
    i32 1145194325, label %do.body39
  ]

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_get_ip_name.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_get_ip_name, %if.then5)) #10
          to label %do.end [label %if.then5], !srcloc !215

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_get_ip_name.__UNIQUE_ID_ddebug301, ptr noundef %7, ptr noundef nonnull @.str.84) #10
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %8 = ptrtoint ptr %has_hw_timer to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %has_hw_timer, align 1
  %rtor = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 36
  %9 = ptrtoint ptr %rtor to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 40, ptr %rtor, align 4
  br label %if.end105

do.body9:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_get_ip_name.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_get_ip_name, %if.then21)) #10
          to label %do.end25 [label %if.then21], !srcloc !215

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %dev22 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %10 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_get_ip_name.__UNIQUE_ID_ddebug302, ptr noundef %11, ptr noundef nonnull @.str.85) #10
  br label %do.end25

do.end25:                                         ; preds = %if.then21, %do.body9
  %12 = ptrtoint ptr %has_frac_baudrate to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %has_frac_baudrate, align 4
  %13 = ptrtoint ptr %has_hw_timer to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %has_hw_timer, align 1
  %rtor28 = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 36
  %14 = ptrtoint ptr %rtor28 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 36, ptr %rtor28, align 4
  %15 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i, align 4
  %add.ptr.i146 = getelementptr i8, ptr %16, i32 252
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i146) #10, !srcloc !207
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %17, label %sw.default [
    i32 2068, label %do.end25.sw.bb30_crit_edge
    i32 1793, label %do.end25.sw.bb30_crit_edge154
    i32 1282, label %sw.bb31
  ]

do.end25.sw.bb30_crit_edge154:                    ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb30

do.end25.sw.bb30_crit_edge:                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb30

sw.bb30:                                          ; preds = %do.end25.sw.bb30_crit_edge, %do.end25.sw.bb30_crit_edge154
  %fidi_min = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 46
  %19 = ptrtoint ptr %fidi_min to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %fidi_min, align 4
  %fidi_max = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 47
  %20 = ptrtoint ptr %fidi_max to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 65535, ptr %fidi_max, align 4
  br label %if.end105

sw.bb31:                                          ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #12
  %fidi_min32 = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 46
  %21 = ptrtoint ptr %fidi_min32 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %fidi_min32, align 4
  %fidi_max33 = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 47
  %22 = ptrtoint ptr %fidi_max33 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2047, ptr %fidi_max33, align 4
  br label %if.end105

sw.default:                                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #12
  %fidi_min34 = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 46
  %23 = ptrtoint ptr %fidi_min34 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %fidi_min34, align 4
  %fidi_max35 = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 47
  %24 = ptrtoint ptr %fidi_max35 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2047, ptr %fidi_max35, align 4
  br label %if.end105

do.body39:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_get_ip_name.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_get_ip_name, %if.then51)) #10
          to label %if.end105 [label %if.then51], !srcloc !215

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #12
  %dev52 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %25 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev52, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_get_ip_name.__UNIQUE_ID_ddebug303, ptr noundef %26, ptr noundef nonnull @.str.86) #10
  br label %if.end105

if.else56:                                        ; preds = %entry
  %27 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase.i, align 4
  %add.ptr.i148 = getelementptr i8, ptr %28, i32 252
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i148) #10, !srcloc !207
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %29, label %do.end100 [
    i32 770, label %if.else56.do.body59_crit_edge
    i32 66067, label %if.else56.do.body59_crit_edge155
    i32 66306, label %if.else56.do.body59_crit_edge156
    i32 515, label %if.else56.do.body80_crit_edge
    i32 66050, label %if.else56.do.body80_crit_edge157
  ]

if.else56.do.body80_crit_edge157:                 ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body80

if.else56.do.body80_crit_edge:                    ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body80

if.else56.do.body59_crit_edge156:                 ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body59

if.else56.do.body59_crit_edge155:                 ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body59

if.else56.do.body59_crit_edge:                    ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body59

do.body59:                                        ; preds = %if.else56.do.body59_crit_edge, %if.else56.do.body59_crit_edge155, %if.else56.do.body59_crit_edge156
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_get_ip_name.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_get_ip_name, %if.then71)) #10
          to label %do.end75 [label %if.then71], !srcloc !215

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #12
  %dev72 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %31 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev72, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_get_ip_name.__UNIQUE_ID_ddebug304, ptr noundef %32, ptr noundef nonnull @.str.87) #10
  br label %do.end75

do.end75:                                         ; preds = %if.then71, %do.body59
  %33 = ptrtoint ptr %has_frac_baudrate to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %has_frac_baudrate, align 4
  %34 = ptrtoint ptr %has_hw_timer to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %has_hw_timer, align 1
  %rtor78 = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 36
  %35 = ptrtoint ptr %rtor78 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 36, ptr %rtor78, align 4
  br label %if.end105

do.body80:                                        ; preds = %if.else56.do.body80_crit_edge, %if.else56.do.body80_crit_edge157
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_get_ip_name.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_get_ip_name, %if.then92)) #10
          to label %if.end105 [label %if.then92], !srcloc !215

if.then92:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #12
  %dev93 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %36 = ptrtoint ptr %dev93 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev93, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_get_ip_name.__UNIQUE_ID_ddebug305, ptr noundef %37, ptr noundef nonnull @.str.88) #10
  br label %if.end105

do.end100:                                        ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #12
  %dev101 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %38 = ptrtoint ptr %dev101 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev101, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.89) #15
  br label %if.end105

if.end105:                                        ; preds = %do.end100, %if.then92, %do.body80, %do.end75, %if.then51, %do.body39, %sw.default, %sw.bb31, %sw.bb30, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmel_init_property(ptr nocapture noundef writeonly %atmel_port, ptr nocapture noundef readonly %pdev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef null) #10
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %if.else5, label %if.then

if.then:                                          ; preds = %entry
  %call.i35 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef null) #10
  %tobool.i36.not = icmp eq ptr %call.i35, null
  %use_dma_rx3 = getelementptr inbounds %struct.atmel_uart_port, ptr %atmel_port, i32 0, i32 5
  br i1 %tobool.i36.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %use_dma_rx3 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %use_dma_rx3, align 4
  br label %if.end8

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %use_dma_rx3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %use_dma_rx3, align 4
  br label %if.end8

if.else5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %use_dma_rx6 = getelementptr inbounds %struct.atmel_uart_port, ptr %atmel_port, i32 0, i32 5
  %4 = ptrtoint ptr %use_dma_rx6 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %use_dma_rx6, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else5, %if.else, %if.then2
  %.sink = phi i8 [ 0, %if.then2 ], [ 1, %if.else ], [ 0, %if.else5 ]
  %use_pdc_rx = getelementptr inbounds %struct.atmel_uart_port, ptr %atmel_port, i32 0, i32 6
  %5 = ptrtoint ptr %use_pdc_rx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %.sink, ptr %use_pdc_rx, align 1
  %call.i37 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.20, ptr noundef null) #10
  %tobool.i38.not = icmp eq ptr %call.i37, null
  br i1 %tobool.i38.not, label %if.else17, label %if.then10

if.then10:                                        ; preds = %if.end8
  %call.i39 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef null) #10
  %tobool.i40.not = icmp eq ptr %call.i39, null
  %use_dma_tx14 = getelementptr inbounds %struct.atmel_uart_port, ptr %atmel_port, i32 0, i32 9
  br i1 %tobool.i40.not, label %if.else13, label %if.then12

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %use_dma_tx14 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %use_dma_tx14, align 4
  br label %if.end20

if.else13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %use_dma_tx14 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %use_dma_tx14, align 4
  br label %if.end20

if.else17:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %use_dma_tx18 = getelementptr inbounds %struct.atmel_uart_port, ptr %atmel_port, i32 0, i32 9
  %8 = ptrtoint ptr %use_dma_tx18 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %use_dma_tx18, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else17, %if.else13, %if.then12
  %.sink41 = phi i8 [ 0, %if.then12 ], [ 1, %if.else13 ], [ 0, %if.else17 ]
  %use_pdc_tx = getelementptr inbounds %struct.atmel_uart_port, ptr %atmel_port, i32 0, i32 10
  %9 = ptrtoint ptr %use_pdc_tx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %.sink41, ptr %use_pdc_tx, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_config_rs485(ptr nocapture noundef %port, ptr nocapture noundef readonly %rs485conf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_done_mask = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 31
  %0 = ptrtoint ptr %tx_done_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_done_mask, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %1) #10, !srcloc !208
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  %add.ptr.i65 = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65) #10, !srcloc !207
  %and = and i32 %6, -16
  %rs485 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56
  %7 = call ptr @memcpy(ptr %rs485, ptr %rs485conf, i32 32)
  %8 = ptrtoint ptr %rs485conf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rs485conf, align 4
  %and2 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %do.body17, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_config_rs485.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_config_rs485, %if.then7)) #10
          to label %do.end [label %if.then7], !srcloc !215

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_config_rs485.__UNIQUE_ID_ddebug290, ptr noundef %11, ptr noundef nonnull @.str.69) #10
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %12 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rs485, align 4
  %and10 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %. = select i1 %tobool11.not, i32 512, i32 2
  %14 = ptrtoint ptr %tx_done_mask to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %., ptr %tx_done_mask, align 4
  %delay_rts_after_send = getelementptr inbounds %struct.serial_rs485, ptr %rs485conf, i32 0, i32 2
  %15 = ptrtoint ptr %delay_rts_after_send to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %delay_rts_after_send, align 4
  %17 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase.i, align 4
  %add.ptr.i67 = getelementptr i8, ptr %18, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67, i32 %16) #10, !srcloc !208
  %or = or i32 %and, 1
  br label %if.end40

do.body17:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_config_rs485.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_config_rs485, %if.then29)) #10
          to label %do.end33 [label %if.then29], !srcloc !215

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  %dev30 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %19 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev30, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_config_rs485.__UNIQUE_ID_ddebug291, ptr noundef %20, ptr noundef nonnull @.str.70) #10
  br label %do.end33

do.end33:                                         ; preds = %if.then29, %do.body17
  %use_pdc_tx.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 10
  %21 = ptrtoint ptr %use_pdc_tx.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %use_pdc_tx.i, align 1, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.i.not = icmp eq i8 %22, 0
  br i1 %tobool.i.not, label %if.else37, label %if.then35

if.then35:                                        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %tx_done_mask to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2064, ptr %tx_done_mask, align 4
  br label %if.end40

if.else37:                                        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %tx_done_mask to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %tx_done_mask, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.else37, %if.then35, %do.end
  %mode.0 = phi i32 [ %or, %do.end ], [ %and, %if.then35 ], [ %and, %if.else37 ]
  %25 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase.i, align 4
  %add.ptr.i69 = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 %mode.0) #10, !srcloc !208
  %27 = ptrtoint ptr %tx_done_mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_done_mask, align 4
  %29 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase.i, align 4
  %add.ptr.i71 = getelementptr i8, ptr %30, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71, i32 %28) #10, !srcloc !208
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_config_iso7816(ptr noundef %port, ptr nocapture noundef %iso7816conf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_done_mask = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 31
  %0 = ptrtoint ptr %tx_done_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_done_mask, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %1) #10, !srcloc !208
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  %add.ptr.i127 = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i127) #10, !srcloc !207
  %7 = ptrtoint ptr %iso7816conf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iso7816conf, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body51, label %if.then

if.then:                                          ; preds = %entry
  %and2 = and i32 %6, -50609728
  %tg = getelementptr inbounds %struct.serial_iso7816, ptr %iso7816conf, i32 0, i32 1
  %9 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %10)
  %cmp = icmp ugt i32 %10, 255
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.71) #15
  %13 = call ptr @memset(ptr %iso7816conf, i32 0, i32 40)
  br label %err_out

if.end:                                           ; preds = %if.then
  %14 = trunc i32 %8 to i8
  %trunc = and i8 %14, -16
  %15 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.93)
  switch i8 %trunc, label %do.end16 [
    i8 0, label %if.end.if.end19_crit_edge
    i8 16, label %if.then11
  ]

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev17 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %16 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.74) #15
  %18 = call ptr @memset(ptr %iso7816conf, i32 0, i32 40)
  br label %err_out

if.end19:                                         ; preds = %if.then11, %if.end.if.end19_crit_edge
  %.sink = phi i32 [ 1048582, %if.then11 ], [ 2097156, %if.end.if.end19_crit_edge ]
  %or12 = or i32 %and2, %.sink
  %or22 = or i32 %or12, 50593792
  %clk.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 1
  %19 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk.i, align 4
  %call1.i = tail call i32 @clk_get_rate(ptr noundef %20) #10
  %clk2.i = getelementptr inbounds %struct.serial_iso7816, ptr %iso7816conf, i32 0, i32 4
  %21 = ptrtoint ptr %clk2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %clk2.i, align 4
  %div177.i = udiv i32 %call1.i, %22
  %sc_fi.i = getelementptr inbounds %struct.serial_iso7816, ptr %iso7816conf, i32 0, i32 2
  %23 = ptrtoint ptr %sc_fi.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sc_fi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i128 = icmp eq i32 %24, 0
  br i1 %tobool.not.i128, label %if.end19.do.end29_crit_edge, label %land.lhs.true.i

if.end19.do.end29_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29

land.lhs.true.i:                                  ; preds = %if.end19
  %sc_di.i = getelementptr inbounds %struct.serial_iso7816, ptr %iso7816conf, i32 0, i32 3
  %25 = ptrtoint ptr %sc_di.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sc_di.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool1.not.i = icmp eq i32 %26, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end29_crit_edge, label %if.then176.i

land.lhs.true.i.do.end29_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29

if.then176.i:                                     ; preds = %land.lhs.true.i
  %div180.i = udiv i32 %24, %26
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %24)
  %cmp25 = icmp ugt i32 %26, %24
  br i1 %cmp25, label %if.then176.i.do.end29_crit_edge, label %if.else31

if.then176.i.do.end29_crit_edge:                  ; preds = %if.then176.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29

do.end29:                                         ; preds = %if.then176.i.do.end29_crit_edge, %land.lhs.true.i.do.end29_crit_edge, %if.end19.do.end29_crit_edge
  %dev30 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %27 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev30, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.77) #15
  br label %if.end40

if.else31:                                        ; preds = %if.then176.i
  %fidi_min = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 46
  %29 = ptrtoint ptr %fidi_min to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fidi_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div180.i, i32 %30)
  %cmp32 = icmp ult i32 %div180.i, %30
  br i1 %cmp32, label %if.else31.do.end37_crit_edge, label %lor.lhs.false

if.else31.do.end37_crit_edge:                     ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37

lor.lhs.false:                                    ; preds = %if.else31
  %fidi_max = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 47
  %31 = ptrtoint ptr %fidi_max to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fidi_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div180.i, i32 %32)
  %cmp33 = icmp ugt i32 %div180.i, %32
  br i1 %cmp33, label %lor.lhs.false.do.end37_crit_edge, label %lor.lhs.false.if.end40_crit_edge

lor.lhs.false.if.end40_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

lor.lhs.false.do.end37_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37

do.end37:                                         ; preds = %lor.lhs.false.do.end37_crit_edge, %if.else31.do.end37_crit_edge
  %dev38 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %33 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev38, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.80, i32 noundef %div180.i) #15
  %35 = call ptr @memset(ptr %iso7816conf, i32 0, i32 40)
  br label %err_out

if.end40:                                         ; preds = %lor.lhs.false.if.end40_crit_edge, %do.end29
  %fidi.0.off0.i188 = phi i32 [ %div180.i, %lor.lhs.false.if.end40_crit_edge ], [ 0, %do.end29 ]
  %iso7816 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 58
  %36 = ptrtoint ptr %iso7816 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %iso7816, align 4
  %and42 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.then44, label %if.end40.if.end47_crit_edge

if.end40.if.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %membase.i, align 4
  %add.ptr.i166 = getelementptr i8, ptr %39, i32 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i166) #10, !srcloc !207
  %backup_mode = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 29
  %41 = ptrtoint ptr %backup_mode to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %backup_mode, align 4
  %42 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %membase.i, align 4
  %add.ptr.i168 = getelementptr i8, ptr %43, i32 32
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i168) #10, !srcloc !207
  %backup_brgr = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 30
  %45 = ptrtoint ptr %backup_brgr to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %backup_brgr, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end40.if.end47_crit_edge
  %46 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tg, align 4
  %48 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %membase.i, align 4
  %add.ptr.i170 = getelementptr i8, ptr %49, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i170, i32 %47) #10, !srcloc !208
  %50 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %membase.i, align 4
  %add.ptr.i172 = getelementptr i8, ptr %51, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i172, i32 %div177.i) #10, !srcloc !208
  %52 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %membase.i, align 4
  %add.ptr.i174 = getelementptr i8, ptr %53, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i174, i32 %fidi.0.off0.i188) #10, !srcloc !208
  %54 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 144) #10, !srcloc !208
  br label %if.end69

do.body51:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_config_iso7816.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_config_iso7816, %if.then56)) #10
          to label %do.end60 [label %if.then56], !srcloc !215

if.then56:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #12
  %dev57 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %56 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev57, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_config_iso7816.__UNIQUE_ID_ddebug292, ptr noundef %57, ptr noundef nonnull @.str.82) #10
  br label %do.end60

do.end60:                                         ; preds = %if.then56, %do.body51
  %backup_mode61 = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 29
  %58 = ptrtoint ptr %backup_mode61 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %backup_mode61, align 4
  %60 = call ptr @memset(ptr %iso7816conf, i32 0, i32 40)
  %61 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %membase.i, align 4
  %add.ptr.i177 = getelementptr i8, ptr %62, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i177, i32 0) #10, !srcloc !208
  %backup_brgr62 = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 30
  %63 = ptrtoint ptr %backup_brgr62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %backup_brgr62, align 4
  %65 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %membase.i, align 4
  %add.ptr.i179 = getelementptr i8, ptr %66, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i179, i32 %64) #10, !srcloc !208
  %67 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %membase.i, align 4
  %add.ptr.i181 = getelementptr i8, ptr %68, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i181, i32 372) #10, !srcloc !208
  %use_pdc_tx.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 10
  %69 = ptrtoint ptr %use_pdc_tx.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %use_pdc_tx.i, align 1, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.i.not = icmp eq i8 %70, 0
  %. = select i1 %tobool.i.not, i32 2, i32 2064
  br label %if.end69

if.end69:                                         ; preds = %do.end60, %if.end47
  %.sink191 = phi i32 [ 9728, %if.end47 ], [ %., %do.end60 ]
  %mode.1 = phi i32 [ %or22, %if.end47 ], [ %59, %do.end60 ]
  %71 = ptrtoint ptr %tx_done_mask to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %.sink191, ptr %tx_done_mask, align 4
  %iso781670 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 58
  %72 = call ptr @memcpy(ptr %iso781670, ptr %iso7816conf, i32 40)
  %73 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %membase.i, align 4
  %add.ptr.i183 = getelementptr i8, ptr %74, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i183, i32 %mode.1) #10, !srcloc !208
  br label %err_out

err_out:                                          ; preds = %if.end69, %do.end37, %do.end16, %do.end
  %ret.0 = phi i32 [ -22, %do.end ], [ 0, %if.end69 ], [ -22, %do.end37 ], [ -22, %do.end16 ]
  %75 = ptrtoint ptr %tx_done_mask to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tx_done_mask, align 4
  %77 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %membase.i, align 4
  %add.ptr.i185 = getelementptr i8, ptr %78, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i185, i32 %76) #10, !srcloc !208
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_rs485_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_prepare_rx_dma(ptr noundef %port) #3 align 64 {
entry:
  %mask = alloca %struct.dma_cap_mask_t, align 4
  %config = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #10
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %config) #10
  %4 = call ptr @memset(ptr %config, i32 255, i32 48)
  %rx_ring = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 27
  %5 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %mask, align 4
  call void @_set_bit(i32 noundef 12, ptr noundef nonnull %mask) #10
  %call.i = call ptr @dma_request_chan(ptr noundef %3, ptr noundef nonnull @.str.21) #10
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i = select i1 %cmp.i.i, ptr null, ptr %call.i
  %chan_rx = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 15
  %6 = ptrtoint ptr %chan_rx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %spec.select.i, ptr %chan_rx, align 4
  %cmp = icmp eq ptr %spec.select.i, null
  br i1 %cmp, label %entry.do.end108_crit_edge, label %do.end

entry.do.end108_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end108

do.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %spec.select.i, i32 0, i32 5
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %10, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.dma_chan_name.exit_crit_edge

do.end.dma_chan_name.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_chan_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device.i, align 4
  br label %dma_chan_name.exit

dma_chan_name.exit:                               ; preds = %if.end.i.i, %do.end.dma_chan_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %14, %if.end.i.i ], [ %12, %do.end.dma_chan_name.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.22, ptr noundef %retval.0.i.i) #15
  %lock_rx = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 13
  call void @__raw_spin_lock_init(ptr noundef %lock_rx, ptr noundef nonnull @.str.24, ptr noundef nonnull @atmel_prepare_rx_dma.__key, i16 noundef signext 3) #10
  %sg_rx = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 21
  call void @sg_init_table(ptr noundef %sg_rx, i32 noundef 1) #10
  %15 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_ring, align 4
  %17 = ptrtoint ptr %16 to i32
  %and = and i32 %17, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp11.not = icmp eq i32 %and, 0
  br i1 %cmp11.not, label %do.end23, label %do.body15, !prof !216

do.body15:                                        ; preds = %dma_chan_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/tty/serial/atmel_serial.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1217, 0\0A.popsection", ""() #10, !srcloc !217
  unreachable

do.end23:                                         ; preds = %dma_chan_name.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %18 = load ptr, ptr @mem_map, align 4
  %sub = add i32 %17, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %18, i32 %shr
  %19 = ptrtoint ptr %sg_rx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sg_rx, align 4
  %21 = ptrtoint ptr %add.ptr to i32
  %and2.i.i = and i32 %21, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i165 = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i165, label %do.body11.i.i, label %do.body5.i.i, !prof !216

do.body5.i.i:                                     ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !218
  unreachable

do.body11.i.i:                                    ; preds = %do.end23
  %and.i.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !216

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !219
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  %and.i.i = and i32 %20, 3
  %or.i.i = or i32 %and.i.i, %21
  %22 = ptrtoint ptr %sg_rx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or.i.i, ptr %sg_rx, align 4
  %offset1.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 21, i32 1
  %23 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 21, i32 2
  %24 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4096, ptr %length.i, align 4
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %call31 = call i32 @dma_map_sg_attrs(ptr noundef %26, ptr noundef %sg_rx, i32 noundef 1, i32 noundef 2, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %do.body34, label %do.body48

do.body34:                                        ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_prepare_rx_dma.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_prepare_rx_dma, %if.then43)) #10
          to label %do.end108 [label %if.then43], !srcloc !215

if.then43:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_prepare_rx_dma.__UNIQUE_ID_ddebug296, ptr noundef %28, ptr noundef nonnull @.str.25) #10
  br label %do.end108

do.body48:                                        ; preds = %sg_set_page.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_prepare_rx_dma.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_prepare_rx_dma, %if.then60)) #10
          to label %if.end68 [label %if.then60], !srcloc !215

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  %dma_length = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 21, i32 4
  %31 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dma_length, align 4
  %33 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rx_ring, align 4
  %dma_address = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 21, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_prepare_rx_dma.__UNIQUE_ID_ddebug297, ptr noundef %30, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.23, i32 noundef %32, ptr noundef %34, ptr noundef %dma_address) #10
  br label %if.end68

if.end68:                                         ; preds = %if.then60, %do.body48
  %35 = getelementptr inbounds i8, ptr %config, i32 8
  %36 = call ptr @memset(ptr %35, i32 0, i32 40)
  %37 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %config, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 3
  %38 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %src_addr_width, align 4
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %39 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mapbase, align 4
  %add69 = add i32 %40, 24
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 1
  %41 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add69, ptr %src_addr, align 4
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 5
  %42 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %src_maxburst, align 4
  %43 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chan_rx, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %46, i32 0, i32 44
  %47 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %48, null
  br i1 %tobool.not.i, label %if.end68.do.end76_crit_edge, label %dmaengine_slave_config.exit

if.end68.do.end76_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end76

dmaengine_slave_config.exit:                      ; preds = %if.end68
  %call.i166 = call i32 %48(ptr noundef %44, ptr noundef nonnull %config) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i166)
  %tobool72.not = icmp eq i32 %call.i166, 0
  br i1 %tobool72.not, label %if.end78, label %dmaengine_slave_config.exit.do.end76_crit_edge

dmaengine_slave_config.exit.do.end76_crit_edge:   ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end76

do.end76:                                         ; preds = %dmaengine_slave_config.exit.do.end76_crit_edge, %if.end68.do.end76_crit_edge
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.28) #15
  br label %do.end108

if.end78:                                         ; preds = %dmaengine_slave_config.exit
  %51 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %chan_rx, align 4
  %dma_address81 = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 21, i32 3
  %53 = ptrtoint ptr %dma_address81 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dma_address81, align 4
  %dma_length83 = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 21, i32 4
  %55 = ptrtoint ptr %dma_length83 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dma_length83, align 4
  %div161 = lshr i32 %56, 1
  %tobool.not.i168 = icmp eq ptr %52, null
  br i1 %tobool.not.i168, label %if.end78.do.end91_crit_edge, label %lor.lhs.false.i

if.end78.do.end91_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end91

lor.lhs.false.i:                                  ; preds = %if.end78
  %57 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %52, align 4
  %tobool1.not.i = icmp eq ptr %58, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.end91_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.do.end91_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end91

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_dma_cyclic.i = getelementptr inbounds %struct.dma_device, ptr %58, i32 0, i32 40
  %59 = ptrtoint ptr %device_prep_dma_cyclic.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %device_prep_dma_cyclic.i, align 4
  %tobool4.not.i = icmp eq ptr %60, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.do.end91_crit_edge, label %dmaengine_prep_dma_cyclic.exit

lor.lhs.false2.i.do.end91_crit_edge:              ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end91

dmaengine_prep_dma_cyclic.exit:                   ; preds = %lor.lhs.false2.i
  %call.i169 = call ptr %60(ptr noundef nonnull %52, i32 noundef %54, i32 noundef %56, i32 noundef %div161, i32 noundef 2, i32 noundef 1) #10
  %tobool87.not = icmp eq ptr %call.i169, null
  br i1 %tobool87.not, label %dmaengine_prep_dma_cyclic.exit.do.end91_crit_edge, label %if.end93

dmaengine_prep_dma_cyclic.exit.do.end91_crit_edge: ; preds = %dmaengine_prep_dma_cyclic.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end91

do.end91:                                         ; preds = %dmaengine_prep_dma_cyclic.exit.do.end91_crit_edge, %lor.lhs.false2.i.do.end91_crit_edge, %lor.lhs.false.i.do.end91_crit_edge, %if.end78.do.end91_crit_edge
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.31) #15
  br label %do.end108

if.end93:                                         ; preds = %dmaengine_prep_dma_cyclic.exit
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i169, i32 0, i32 6
  %63 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @atmel_complete_rx_dma, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i169, i32 0, i32 8
  %64 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %port, ptr %callback_param, align 4
  %desc_rx = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 17
  %65 = ptrtoint ptr %desc_rx to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i169, ptr %desc_rx, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i169, i32 0, i32 4
  %66 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tx_submit.i, align 4
  %call.i171 = call i32 %67(ptr noundef nonnull %call.i169) #10
  %cookie_rx = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 19
  %68 = ptrtoint ptr %cookie_rx to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %call.i171, ptr %cookie_rx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i171)
  %tobool97.not = icmp sgt i32 %call.i171, -1
  br i1 %tobool97.not, label %if.end104, label %do.end101

do.end101:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.34, i32 noundef %call.i171) #15
  br label %do.end108

if.end104:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %chan_rx, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %74, i32 0, i32 50
  %75 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %device_issue_pending.i, align 4
  call void %76(ptr noundef %72) #10
  br label %cleanup

do.end108:                                        ; preds = %do.end101, %do.end91, %do.end76, %if.then43, %do.body34, %entry.do.end108_crit_edge
  %77 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.37) #15
  %use_dma_rx = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 5
  %79 = ptrtoint ptr %use_dma_rx to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %use_dma_rx, align 4
  %80 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %chan_rx, align 4
  %tobool111.not = icmp eq ptr %81, null
  br i1 %tobool111.not, label %do.end108.cleanup_crit_edge, label %if.then.i174

do.end108.cleanup_crit_edge:                      ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i174:                                     ; preds = %do.end108
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %83, i32 0, i32 47
  %84 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i173 = icmp eq ptr %85, null
  br i1 %tobool.not.i.i173, label %if.then.i174.atmel_release_rx_dma.exit_crit_edge, label %if.then.i.i

if.then.i174.atmel_release_rx_dma.exit_crit_edge: ; preds = %if.then.i174
  call void @__sanitizer_cov_trace_pc() #12
  br label %atmel_release_rx_dma.exit

if.then.i.i:                                      ; preds = %if.then.i174
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = call i32 %85(ptr noundef nonnull %81) #10
  br label %atmel_release_rx_dma.exit

atmel_release_rx_dma.exit:                        ; preds = %if.then.i.i, %if.then.i174.atmel_release_rx_dma.exit_crit_edge
  call void @dma_release_channel(ptr noundef nonnull %81) #10
  %86 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev, align 4
  %sg_rx.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 21
  call void @dma_unmap_sg_attrs(ptr noundef %87, ptr noundef %sg_rx.i, i32 noundef 1, i32 noundef 2, i32 noundef 0) #10
  %desc_rx.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 17
  %88 = ptrtoint ptr %desc_rx.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %desc_rx.i, align 4
  %89 = ptrtoint ptr %chan_rx to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %chan_rx, align 4
  %cookie_rx.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 19
  %90 = ptrtoint ptr %cookie_rx.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -22, ptr %cookie_rx.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %atmel_release_rx_dma.exit, %do.end108.cleanup_crit_edge, %if.end104
  %retval.0 = phi i32 [ 0, %if.end104 ], [ -22, %atmel_release_rx_dma.exit ], [ -22, %do.end108.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %config) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_rx_from_dma(ptr noundef %port) #3 align 64 {
entry:
  %state2 = alloca %struct.dma_tx_state, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %rx_ring = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 27
  %chan_rx = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 15
  %2 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan_rx, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state2) #10
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %4 = call ptr @memset(ptr %state2, i32 255, i32 16)
  %5 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 2048) #10, !srcloc !208
  %cookie_rx = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 19
  %7 = ptrtoint ptr %cookie_rx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cookie_rx, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 49
  %11 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device_tx_status.i, align 4
  %call.i = call i32 %12(ptr noundef %3, i32 noundef %8, ptr noundef nonnull %state2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 3
  br i1 %cmp, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_rx_from_dma.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_rx_from_dma, %if.then7)) #10
          to label %do.end [label %if.then7], !srcloc !215

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_rx_from_dma.__UNIQUE_ID_ddebug295, ptr noundef %14, ptr noundef nonnull @.str.40) #10
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %15 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 256) #10, !srcloc !208
  %tasklet_rx = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 22
  %tasklet_shutdown.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 24
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %tasklet_shutdown.i, i32 noundef 4) #10
  %17 = ptrtoint ptr %tasklet_shutdown.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %tasklet_shutdown.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %do.end
  %state.i.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 22, i32 1
  %call.i.i = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__tasklet_schedule(ptr noundef %tasklet_rx) #10
  br label %cleanup

if.end8:                                          ; preds = %entry
  %19 = getelementptr inbounds %struct.dma_tx_state, ptr %state2, i32 0, i32 2
  %dev9 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %20 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev9, align 4
  %sg_rx = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 21
  call void @dma_sync_sg_for_cpu(ptr noundef %21, ptr noundef %sg_rx, i32 noundef 1, i32 noundef 2) #10
  %dma_length = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 21, i32 4
  %22 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_length, align 4
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %19, align 4
  %sub = sub i32 %23, %25
  %head = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 27, i32 1
  %26 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub, ptr %head, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp15 = icmp ult i32 %23, %25
  br i1 %cmp15, label %do.body23, label %do.end31, !prof !220

do.body23:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/tty/serial/atmel_serial.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1149, 0\0A.popsection", ""() #10, !srcloc !221
  unreachable

do.end31:                                         ; preds = %if.end8
  %tail = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 27, i32 2
  %27 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %28)
  %cmp33 = icmp slt i32 %sub, %28
  br i1 %cmp33, label %if.then34, label %do.end31.if.end42_crit_edge

do.end31.if.end42_crit_edge:                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then34:                                        ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #12
  %sub38 = sub i32 %23, %28
  %29 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rx_ring, align 4
  %add.ptr = getelementptr i8, ptr %30, i32 %28
  %call.i120 = call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %1, ptr noundef %add.ptr, i8 noundef zeroext 0, i32 noundef %sub38) #10
  %31 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %tail, align 4
  %rx = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 4
  %32 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx, align 4
  %add = add i32 %33, %sub38
  store i32 %add, ptr %rx, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then34, %do.end31.if.end42_crit_edge
  %34 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tail, align 4
  %36 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %head, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %35)
  %cmp45 = icmp sgt i32 %37, %35
  br i1 %cmp45, label %if.then46, label %if.end42.if.end66_crit_edge

if.end42.if.end66_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then46:                                        ; preds = %if.end42
  %sub49 = sub i32 %37, %35
  %38 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rx_ring, align 4
  %add.ptr52 = getelementptr i8, ptr %39, i32 %35
  %call.i121 = call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %1, ptr noundef %add.ptr52, i8 noundef zeroext 0, i32 noundef %sub49) #10
  %40 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %head, align 4
  %42 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp57.not = icmp ult i32 %41, %43
  br i1 %cmp57.not, label %if.then46.if.end60_crit_edge, label %if.then58

if.then46.if.end60_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then58:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %head, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.then46.if.end60_crit_edge
  %45 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %head, align 4
  %47 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %tail, align 4
  %rx64 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 4
  %48 = ptrtoint ptr %rx64 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rx64, align 4
  %add65 = add i32 %49, %sub49
  store i32 %add65, ptr %rx64, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.end60, %if.end42.if.end66_crit_edge
  %50 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev9, align 4
  call void @dma_sync_sg_for_device(ptr noundef %51, ptr noundef %sg_rx, i32 noundef 1, i32 noundef 2) #10
  call void @tty_flip_buffer_push(ptr noundef %1) #10
  %52 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %membase.i, align 4
  %add.ptr.i123 = getelementptr i8, ptr %53, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123, i32 256) #10, !srcloc !208
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.then.i.i, %if.then.i.cleanup_crit_edge, %do.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_release_rx_dma(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_rx = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 15
  %0 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan_rx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 47
  %4 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.dmaengine_terminate_all.exit_crit_edge, label %if.then.i

if.then.dmaengine_terminate_all.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_terminate_all.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 %5(ptr noundef nonnull %1) #10
  br label %dmaengine_terminate_all.exit

dmaengine_terminate_all.exit:                     ; preds = %if.then.i, %if.then.dmaengine_terminate_all.exit_crit_edge
  tail call void @dma_release_channel(ptr noundef nonnull %1) #10
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %sg_rx = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 21
  tail call void @dma_unmap_sg_attrs(ptr noundef %7, ptr noundef %sg_rx, i32 noundef 1, i32 noundef 2, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %dmaengine_terminate_all.exit, %entry.if.end_crit_edge
  %desc_rx = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 17
  %8 = ptrtoint ptr %desc_rx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %desc_rx, align 4
  %9 = ptrtoint ptr %chan_rx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %chan_rx, align 4
  %cookie_rx = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 19
  %10 = ptrtoint ptr %cookie_rx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -22, ptr %cookie_rx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_prepare_rx_pdc(ptr nocapture noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev12 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %arrayidx = getelementptr %struct.atmel_uart_port, ptr %port, i32 0, i32 8, i32 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 512) #14
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i, ptr %arrayidx, align 4
  %cmp3 = icmp eq ptr %call7.i, null
  br i1 %cmp3, label %entry.if.end_crit_edge, label %if.end11

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then5:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dma_addr = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 8, i32 0, i32 1
  %2 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_addr, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %21, i32 noundef %3, i32 noundef 512, i32 noundef 2, i32 noundef 0) #10
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %5) #10
  br label %if.end

if.end:                                           ; preds = %if.then5, %entry.if.end_crit_edge
  %use_pdc_rx = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 6
  %6 = ptrtoint ptr %use_pdc_rx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %use_pdc_rx, align 1
  br label %cleanup22

if.end11:                                         ; preds = %entry
  %7 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev12, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call7.i) #10
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end11
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !216

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %8) #10
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %12, %if.end.i.i ], [ %10, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.42, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #10
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @debug_dma_map_single(ptr noundef %8, ptr noundef nonnull %call7.i, i32 noundef 512) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %13 = load ptr, ptr @mem_map, align 4
  %14 = ptrtoint ptr %call7.i to i32
  %sub.i = add i32 %14, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %13, i32 %shr.i
  %and.i = and i32 %14, 4088
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %8, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 512, i32 noundef 2, i32 noundef 0) #10
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %dma_addr15 = getelementptr %struct.atmel_uart_port, ptr %port, i32 0, i32 8, i32 0, i32 1
  %15 = ptrtoint ptr %dma_addr15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %retval.0.i, ptr %dma_addr15, align 4
  %dma_size = getelementptr %struct.atmel_uart_port, ptr %port, i32 0, i32 8, i32 0, i32 2
  %16 = ptrtoint ptr %dma_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 512, ptr %dma_size, align 4
  %ofs = getelementptr %struct.atmel_uart_port, ptr %port, i32 0, i32 8, i32 0, i32 3
  %17 = ptrtoint ptr %ofs to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %ofs, align 4
  %arrayidx.1 = getelementptr %struct.atmel_uart_port, ptr %port, i32 0, i32 8, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.1 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3264, i32 noundef 512) #14
  %19 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.1, ptr %arrayidx.1, align 4
  %cmp3.1 = icmp eq ptr %call7.i.1, null
  %20 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev12, align 4
  br i1 %cmp3.1, label %if.then5, label %if.end11.1

if.end11.1:                                       ; preds = %dma_map_single_attrs.exit
  %call.i.1 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call7.i.1) #10
  br i1 %call.i.1, label %land.rhs.i.1, label %if.end39.i.1

if.end39.i.1:                                     ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @debug_dma_map_single(ptr noundef %21, ptr noundef nonnull %call7.i.1, i32 noundef 512) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %22 = load ptr, ptr @mem_map, align 4
  %23 = ptrtoint ptr %call7.i.1 to i32
  %sub.i.1 = add i32 %23, 1073741824
  %shr.i.1 = lshr i32 %sub.i.1, 12
  %add.ptr.i.1 = getelementptr %struct.page, ptr %22, i32 %shr.i.1
  %and.i.1 = and i32 %23, 4088
  %call41.i.1 = tail call i32 @dma_map_page_attrs(ptr noundef %21, ptr noundef %add.ptr.i.1, i32 noundef %and.i.1, i32 noundef 512, i32 noundef 2, i32 noundef 0) #10
  br label %dma_map_single_attrs.exit.1

land.rhs.i.1:                                     ; preds = %if.end11.1
  %.b1.i.1 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.1, label %land.rhs.i.1.dma_map_single_attrs.exit.1_crit_edge, label %if.then.i.1, !prof !216

land.rhs.i.1.dma_map_single_attrs.exit.1_crit_edge: ; preds = %land.rhs.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit.1

if.then.i.1:                                      ; preds = %land.rhs.i.1
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.1 = tail call ptr @dev_driver_string(ptr noundef %21) #10
  %init_name.i.i.1 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 3
  %24 = ptrtoint ptr %init_name.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i.i.1, align 8
  %tobool.not.i.i.1 = icmp eq ptr %25, null
  br i1 %tobool.not.i.i.1, label %if.end.i.i.1, label %if.then.i.1.dev_name.exit.i.1_crit_edge

if.then.i.1.dev_name.exit.i.1_crit_edge:          ; preds = %if.then.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i.1

if.end.i.i.1:                                     ; preds = %if.then.i.1
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %21, align 4
  br label %dev_name.exit.i.1

dev_name.exit.i.1:                                ; preds = %if.end.i.i.1, %if.then.i.1.dev_name.exit.i.1_crit_edge
  %retval.0.i.i.1 = phi ptr [ %27, %if.end.i.i.1 ], [ %25, %if.then.i.1.dev_name.exit.i.1_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.42, ptr noundef %call16.i.1, ptr noundef %retval.0.i.i.1) #10
  br label %dma_map_single_attrs.exit.1

dma_map_single_attrs.exit.1:                      ; preds = %dev_name.exit.i.1, %land.rhs.i.1.dma_map_single_attrs.exit.1_crit_edge, %if.end39.i.1
  %retval.0.i.1 = phi i32 [ %call41.i.1, %if.end39.i.1 ], [ -1, %dev_name.exit.i.1 ], [ -1, %land.rhs.i.1.dma_map_single_attrs.exit.1_crit_edge ]
  %dma_addr15.1 = getelementptr %struct.atmel_uart_port, ptr %port, i32 0, i32 8, i32 1, i32 1
  %28 = ptrtoint ptr %dma_addr15.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %retval.0.i.1, ptr %dma_addr15.1, align 4
  %dma_size.1 = getelementptr %struct.atmel_uart_port, ptr %port, i32 0, i32 8, i32 1, i32 2
  %29 = ptrtoint ptr %dma_size.1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 512, ptr %dma_size.1, align 4
  %ofs.1 = getelementptr %struct.atmel_uart_port, ptr %port, i32 0, i32 8, i32 1, i32 3
  %30 = ptrtoint ptr %ofs.1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %ofs.1, align 4
  %pdc_rx_idx = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 7
  %31 = ptrtoint ptr %pdc_rx_idx to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %pdc_rx_idx, align 2
  %32 = ptrtoint ptr %dma_addr15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma_addr15, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %34 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %35, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 %33) #10, !srcloc !208
  %36 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase.i, align 4
  %add.ptr.i46 = getelementptr i8, ptr %37, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 512) #10, !srcloc !208
  %38 = ptrtoint ptr %dma_addr15.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma_addr15.1, align 4
  %40 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %membase.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %41, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %39) #10, !srcloc !208
  %42 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %membase.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %43, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 512) #10, !srcloc !208
  br label %cleanup22

cleanup22:                                        ; preds = %dma_map_single_attrs.exit.1, %if.end
  %retval.2 = phi i32 [ 0, %dma_map_single_attrs.exit.1 ], [ -12, %if.end ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_rx_from_pdc(ptr nocapture noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %pdc_rx_idx = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 7
  %2 = ptrtoint ptr %pdc_rx_idx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pdc_rx_idx, align 2
  %conv = sext i16 %3 to i32
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %rx = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 4
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %rx_idx.0 = phi i32 [ %conv, %entry ], [ %rx_idx.1, %do.cond.do.body_crit_edge ]
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 2048) #10, !srcloc !208
  %6 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 256
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !207
  %dma_addr = getelementptr %struct.atmel_uart_port, ptr %port, i32 0, i32 8, i32 %rx_idx.0, i32 1
  %9 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma_addr, align 4
  %sub = sub i32 %8, %10
  %ofs = getelementptr %struct.atmel_uart_port, ptr %port, i32 0, i32 8, i32 %rx_idx.0, i32 3
  %11 = ptrtoint ptr %ofs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ofs, align 4
  %dma_size = getelementptr %struct.atmel_uart_port, ptr %port, i32 0, i32 8, i32 %rx_idx.0, i32 2
  %13 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_size, align 4
  %15 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %14)
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %12)
  %cmp4.not = icmp eq i32 %15, %12
  br i1 %cmp4.not, label %do.body.if.end_crit_edge, label %if.then, !prof !220

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.atmel_uart_port, ptr %port, i32 0, i32 8, i32 %rx_idx.0
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %17, i32 noundef %10, i32 noundef %14, i32 noundef 2) #10
  %sub9 = sub i32 %15, %12
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %20 = ptrtoint ptr %ofs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ofs, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 %21
  %call.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %1, ptr noundef %add.ptr, i8 noundef zeroext 0, i32 noundef %sub9) #10
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %24 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_addr, align 4
  %26 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_size, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef 2) #10
  %28 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx, align 4
  %add = add i32 %29, %sub9
  store i32 %add, ptr %rx, align 4
  %30 = ptrtoint ptr %ofs to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %15, ptr %ofs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body.if.end_crit_edge
  %31 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dma_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %32)
  %cmp17.not = icmp ult i32 %15, %32
  br i1 %cmp17.not, label %if.end.do.cond_crit_edge, label %if.then19

if.end.do.cond_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %ofs to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %ofs, align 4
  %34 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_addr, align 4
  %36 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase.i, align 4
  %add.ptr.i72 = getelementptr i8, ptr %37, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72, i32 %35) #10, !srcloc !208
  %38 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma_size, align 4
  %40 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %membase.i, align 4
  %add.ptr.i74 = getelementptr i8, ptr %41, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74, i32 %39) #10, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_idx.0)
  %tobool23.not = icmp eq i32 %rx_idx.0, 0
  %lnot.ext25 = zext i1 %tobool23.not to i32
  %conv26 = zext i1 %tobool23.not to i16
  %42 = ptrtoint ptr %pdc_rx_idx to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv26, ptr %pdc_rx_idx, align 2
  br label %do.cond

do.cond:                                          ; preds = %if.then19, %if.end.do.cond_crit_edge
  %rx_idx.1 = phi i32 [ %lnot.ext25, %if.then19 ], [ %rx_idx.0, %if.end.do.cond_crit_edge ]
  %43 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dma_size, align 4
  %cmp30.not = icmp ult i32 %15, %44
  br i1 %cmp30.not, label %do.end, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end:                                           ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @tty_flip_buffer_push(ptr noundef %1) #10
  %45 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %membase.i, align 4
  %add.ptr.i76 = getelementptr i8, ptr %46, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76, i32 264) #10, !srcloc !208
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_release_rx_pdc(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %arrayidx = getelementptr %struct.atmel_uart_port, ptr %port, i32 0, i32 8, i32 0
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dma_addr = getelementptr %struct.atmel_uart_port, ptr %port, i32 0, i32 8, i32 0, i32 1
  %2 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_addr, align 4
  %dma_size = getelementptr %struct.atmel_uart_port, ptr %port, i32 0, i32 8, i32 0, i32 2
  %4 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_size, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef 2, i32 noundef 0) #10
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %7) #10
  %arrayidx.1 = getelementptr %struct.atmel_uart_port, ptr %port, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %dma_addr.1 = getelementptr %struct.atmel_uart_port, ptr %port, i32 0, i32 8, i32 1, i32 1
  %10 = ptrtoint ptr %dma_addr.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_addr.1, align 4
  %dma_size.1 = getelementptr %struct.atmel_uart_port, ptr %port, i32 0, i32 8, i32 1, i32 2
  %12 = ptrtoint ptr %dma_size.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_size.1, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef 2, i32 noundef 0) #10
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.1, align 4
  tail call void @kfree(ptr noundef %15) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_rx_from_ring(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ring = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 27
  %head = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 27, i32 1
  %tail = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 27, i32 2
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %head, align 4
  %2 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not96 = icmp eq i32 %1, %3
  br i1 %cmp.not96, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %rx = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 4
  %brk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 9
  %parity = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 8
  %frame = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 6
  %overrun = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 7
  %read_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 28
  %sysrq.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 46
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !222
  %4 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_ring, align 4
  %6 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tail, align 4
  %arrayidx = getelementptr %struct.atmel_uart_char, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %c.sroa.0.0.copyload = load i16, ptr %arrayidx, align 2
  %c.sroa.5.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 2
  %9 = ptrtoint ptr %c.sroa.5.0.arrayidx.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %9)
  %c.sroa.5.0.copyload = load i16, ptr %c.sroa.5.0.arrayidx.sroa_idx, align 2
  %add = add i32 %7, 1
  %and = and i32 %add, 1023
  store i32 %and, ptr %tail, align 4
  %10 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %rx, align 4
  %conv = zext i16 %c.sroa.0.0.copyload to i32
  %and8 = and i32 %conv, 228
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  br i1 %tobool.not, label %while.body.if.end53_crit_edge, label %if.then, !prof !216

while.body.if.end53_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then:                                          ; preds = %while.body
  %and11 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then.if.end20_crit_edge, label %if.then13

if.then.if.end20_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then13:                                        ; preds = %if.then
  %and14 = and i32 %conv, 65343
  %12 = ptrtoint ptr %brk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %brk, align 4
  %inc16 = add i32 %13, 1
  store i32 %inc16, ptr %brk, align 4
  %call17 = tail call fastcc i32 @uart_handle_break(ptr noundef %port)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then13.if.end20_crit_edge, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then13.if.end20_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end20:                                         ; preds = %if.then13.if.end20_crit_edge, %if.then.if.end20_crit_edge
  %status.0 = phi i32 [ %and14, %if.then13.if.end20_crit_edge ], [ %conv, %if.then.if.end20_crit_edge ]
  %and21 = and i32 %status.0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end26_crit_edge, label %if.then23

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %parity, align 4
  %inc25 = add i32 %15, 1
  store i32 %inc25, ptr %parity, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end20.if.end26_crit_edge
  %and27 = and i32 %status.0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.if.end32_crit_edge, label %if.then29

if.end26.if.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %frame, align 4
  %inc31 = add i32 %17, 1
  store i32 %inc31, ptr %frame, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end26.if.end32_crit_edge
  %and33 = and i32 %status.0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.if.end38_crit_edge, label %if.then35

if.end32.if.end38_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %overrun to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %overrun, align 4
  %inc37 = add i32 %19, 1
  store i32 %inc37, ptr %overrun, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end32.if.end38_crit_edge
  %20 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %read_status_mask, align 4
  %and39 = and i32 %21, %status.0
  %and40 = and i32 %and39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.else, label %if.end38.if.end53_crit_edge

if.end38.if.end53_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.else:                                          ; preds = %if.end38
  %and43 = and i32 %and39, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.else46, label %if.else.if.end53_crit_edge

if.else.if.end53_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.else46:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %and47 = lshr i32 %and39, 5
  %22 = and i32 %and47, 2
  br label %if.end53

if.end53:                                         ; preds = %if.else46, %if.else.if.end53_crit_edge, %if.end38.if.end53_crit_edge, %while.body.if.end53_crit_edge
  %flg.0 = phi i32 [ 0, %while.body.if.end53_crit_edge ], [ 1, %if.end38.if.end53_crit_edge ], [ 3, %if.else.if.end53_crit_edge ], [ %22, %if.else46 ]
  %status.1 = phi i32 [ %conv, %while.body.if.end53_crit_edge ], [ %and39, %if.end38.if.end53_crit_edge ], [ %and39, %if.else.if.end53_crit_edge ], [ %and39, %if.else46 ]
  %conv54 = zext i16 %c.sroa.5.0.copyload to i32
  %23 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sysrq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %if.end53.if.end58_crit_edge, label %if.end.i

if.end53.if.end58_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.end.i:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %c.sroa.5.0.copyload)
  %tobool1.not.i = icmp eq i16 %c.sroa.5.0.copyload, 0
  br i1 %tobool1.not.i, label %if.end.i.uart_handle_sysrq_char.exit.thread93_crit_edge, label %land.lhs.true.i

if.end.i.uart_handle_sysrq_char.exit.thread93_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_handle_sysrq_char.exit.thread93

land.lhs.true.i:                                  ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %25, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then3.i, label %land.lhs.true.i.uart_handle_sysrq_char.exit.thread93_crit_edge

land.lhs.true.i.uart_handle_sysrq_char.exit.thread93_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_handle_sysrq_char.exit.thread93

if.then3.i:                                       ; preds = %land.lhs.true.i
  %call.i = tail call i32 @sysrq_mask() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end7.i, label %uart_handle_sysrq_char.exit

if.end7.i:                                        ; preds = %if.then3.i
  %call8.i = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %port, i32 noundef %conv54) #10
  br i1 %call8.i, label %if.end7.i.cleanup_crit_edge, label %if.end7.i.uart_handle_sysrq_char.exit.thread93_crit_edge

if.end7.i.uart_handle_sysrq_char.exit.thread93_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_handle_sysrq_char.exit.thread93

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

uart_handle_sysrq_char.exit.thread93:             ; preds = %if.end7.i.uart_handle_sysrq_char.exit.thread93_crit_edge, %land.lhs.true.i.uart_handle_sysrq_char.exit.thread93_crit_edge, %if.end.i.uart_handle_sysrq_char.exit.thread93_crit_edge
  %26 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %sysrq.i, align 4
  br label %if.end58

uart_handle_sysrq_char.exit:                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @handle_sysrq(i32 noundef %conv54) #10
  %27 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %sysrq.i, align 4
  br label %cleanup

if.end58:                                         ; preds = %uart_handle_sysrq_char.exit.thread93, %if.end53.if.end58_crit_edge
  tail call void @uart_insert_char(ptr noundef %port, i32 noundef %status.1, i32 noundef 32, i32 noundef %conv54, i32 noundef %flg.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %uart_handle_sysrq_char.exit, %if.end7.i.cleanup_crit_edge, %if.then13.cleanup_crit_edge
  %28 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %head, align 4
  %30 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tail, align 4
  %cmp.not = icmp eq i32 %29, %31
  br i1 %cmp.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %entry.while.end_crit_edge
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %32 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %state, align 4
  tail call void @tty_flip_buffer_push(ptr noundef %33) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_prepare_tx_dma(ptr noundef %port) #3 align 64 {
entry:
  %mask = alloca %struct.dma_cap_mask_t, align 4
  %config = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #10
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %config) #10
  %4 = call ptr @memset(ptr %config, i32 255, i32 48)
  %5 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %mask, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %mask) #10
  %call.i = call ptr @dma_request_chan(ptr noundef %3, ptr noundef nonnull @.str.43) #10
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i = select i1 %cmp.i.i, ptr null, ptr %call.i
  %chan_tx = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 14
  %6 = ptrtoint ptr %chan_tx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %spec.select.i, ptr %chan_tx, align 4
  %cmp = icmp eq ptr %spec.select.i, null
  br i1 %cmp, label %entry.do.end88_crit_edge, label %do.end

entry.do.end88_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end88

do.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %spec.select.i, i32 0, i32 5
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %10, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.dma_chan_name.exit_crit_edge

do.end.dma_chan_name.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_chan_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device.i, align 4
  br label %dma_chan_name.exit

dma_chan_name.exit:                               ; preds = %if.end.i.i, %do.end.dma_chan_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %14, %if.end.i.i ], [ %12, %do.end.dma_chan_name.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.44, ptr noundef %retval.0.i.i) #15
  %lock_tx = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 12
  call void @__raw_spin_lock_init(ptr noundef %lock_tx, ptr noundef nonnull @.str.46, ptr noundef nonnull @atmel_prepare_tx_dma.__key, i16 noundef signext 3) #10
  %sg_tx = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 20
  call void @sg_init_table(ptr noundef %sg_tx, i32 noundef 1) #10
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %state, align 4
  %xmit = getelementptr inbounds %struct.uart_state, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %xmit to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %xmit, align 4
  %19 = ptrtoint ptr %18 to i32
  %and = and i32 %19, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp11.not = icmp eq i32 %and, 0
  br i1 %cmp11.not, label %do.end23, label %do.body15, !prof !216

do.body15:                                        ; preds = %dma_chan_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/tty/serial/atmel_serial.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1040, 0\0A.popsection", ""() #10, !srcloc !223
  unreachable

do.end23:                                         ; preds = %dma_chan_name.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %20 = load ptr, ptr @mem_map, align 4
  %sub = add i32 %19, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %20, i32 %shr
  %21 = ptrtoint ptr %sg_tx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sg_tx, align 4
  %23 = ptrtoint ptr %add.ptr to i32
  %and2.i.i = and i32 %23, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i127 = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i127, label %do.body11.i.i, label %do.body5.i.i, !prof !216

do.body5.i.i:                                     ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !218
  unreachable

do.body11.i.i:                                    ; preds = %do.end23
  %and.i.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !216

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !219
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  %and.i.i = and i32 %22, 3
  %or.i.i = or i32 %and.i.i, %23
  %24 = ptrtoint ptr %sg_tx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or.i.i, ptr %sg_tx, align 4
  %offset1.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 20, i32 1
  %25 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 20, i32 2
  %26 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 4096, ptr %length.i, align 4
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %call35 = call i32 @dma_map_sg_attrs(ptr noundef %28, ptr noundef %sg_tx, i32 noundef 1, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %do.body38, label %do.body52

do.body38:                                        ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_prepare_tx_dma.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_prepare_tx_dma, %if.then47)) #10
          to label %do.end88 [label %if.then47], !srcloc !215

if.then47:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_prepare_tx_dma.__UNIQUE_ID_ddebug293, ptr noundef %30, ptr noundef nonnull @.str.25) #10
  br label %do.end88

do.body52:                                        ; preds = %sg_set_page.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_prepare_tx_dma.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_prepare_tx_dma, %if.then64)) #10
          to label %if.end74 [label %if.then64], !srcloc !215

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  %dma_length = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 20, i32 4
  %33 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma_length, align 4
  %35 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %state, align 4
  %xmit68 = getelementptr inbounds %struct.uart_state, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %xmit68 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %xmit68, align 4
  %dma_address = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 20, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_prepare_tx_dma.__UNIQUE_ID_ddebug294, ptr noundef %32, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.45, i32 noundef %34, ptr noundef %38, ptr noundef %dma_address) #10
  br label %if.end74

if.end74:                                         ; preds = %if.then64, %do.body52
  %39 = getelementptr inbounds i8, ptr %config, i32 4
  %40 = call ptr @memset(ptr %39, i32 0, i32 44)
  %41 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %config, align 4
  %fifo_size = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 32
  %42 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fifo_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool75.not = icmp eq i32 %43, 0
  %cond = select i1 %tobool75.not, i32 1, i32 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 4
  %44 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %cond, ptr %dst_addr_width, align 4
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %45 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mapbase, align 4
  %add76 = add i32 %46, 28
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 2
  %47 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %add76, ptr %dst_addr, align 4
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 6
  %48 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %dst_maxburst, align 4
  %49 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chan_tx, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %52, i32 0, i32 44
  %53 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %54, null
  br i1 %tobool.not.i, label %if.end74.do.end83_crit_edge, label %dmaengine_slave_config.exit

if.end74.do.end83_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end83

dmaengine_slave_config.exit:                      ; preds = %if.end74
  %call.i128 = call i32 %54(ptr noundef %50, ptr noundef nonnull %config) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %tobool79.not = icmp eq i32 %call.i128, 0
  br i1 %tobool79.not, label %dmaengine_slave_config.exit.cleanup_crit_edge, label %dmaengine_slave_config.exit.do.end83_crit_edge

dmaengine_slave_config.exit.do.end83_crit_edge:   ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end83

dmaengine_slave_config.exit.cleanup_crit_edge:    ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end83:                                         ; preds = %dmaengine_slave_config.exit.do.end83_crit_edge, %if.end74.do.end83_crit_edge
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.48) #15
  br label %do.end88

do.end88:                                         ; preds = %do.end83, %if.then47, %do.body38, %entry.do.end88_crit_edge
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.51) #15
  %use_dma_tx = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 9
  %59 = ptrtoint ptr %use_dma_tx to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %use_dma_tx, align 4
  %60 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %chan_tx, align 4
  %tobool91.not = icmp eq ptr %61, null
  br i1 %tobool91.not, label %do.end88.cleanup_crit_edge, label %if.then.i132

do.end88.cleanup_crit_edge:                       ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i132:                                     ; preds = %do.end88
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %63, i32 0, i32 47
  %64 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i131 = icmp eq ptr %65, null
  br i1 %tobool.not.i.i131, label %if.then.i132.atmel_release_tx_dma.exit_crit_edge, label %if.then.i.i

if.then.i132.atmel_release_tx_dma.exit_crit_edge: ; preds = %if.then.i132
  call void @__sanitizer_cov_trace_pc() #12
  br label %atmel_release_tx_dma.exit

if.then.i.i:                                      ; preds = %if.then.i132
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = call i32 %65(ptr noundef nonnull %61) #10
  br label %atmel_release_tx_dma.exit

atmel_release_tx_dma.exit:                        ; preds = %if.then.i.i, %if.then.i132.atmel_release_tx_dma.exit_crit_edge
  call void @dma_release_channel(ptr noundef nonnull %61) #10
  %66 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev, align 4
  %sg_tx.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 20
  call void @dma_unmap_sg_attrs(ptr noundef %67, ptr noundef %sg_tx.i, i32 noundef 1, i32 noundef 1, i32 noundef 0) #10
  %desc_tx.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 16
  %68 = ptrtoint ptr %desc_tx.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %desc_tx.i, align 4
  %69 = ptrtoint ptr %chan_tx to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %chan_tx, align 4
  %cookie_tx.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 18
  %70 = ptrtoint ptr %cookie_tx.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -22, ptr %cookie_tx.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %atmel_release_tx_dma.exit, %do.end88.cleanup_crit_edge, %dmaengine_slave_config.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dmaengine_slave_config.exit.cleanup_crit_edge ], [ -22, %atmel_release_tx_dma.exit ], [ -22, %do.end88.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %config) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_tx_dma(ptr noundef %port) #3 align 64 {
entry:
  %sgl = alloca [2 x %struct.scatterlist], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %chan_tx = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 14
  %2 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan_tx, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sgl) #10
  %4 = call ptr @memset(ptr %sgl, i32 255, i32 40)
  %sg_tx2 = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 20
  %desc_tx = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 16
  %5 = ptrtoint ptr %desc_tx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %desc_tx, align 4
  %cmp.not = icmp eq ptr %6, null
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %head = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp3 = icmp eq i32 %8, %10
  br i1 %cmp3, label %if.end.if.end47_crit_edge, label %land.lhs.true

if.end.if.end47_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

land.lhs.true:                                    ; preds = %if.end
  %tty2.i = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %tty2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tty2.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %land.lhs.true.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i

land.lhs.true.uart_tx_stopped.exit_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_tx_stopped.exit

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %stopped.i = getelementptr inbounds %struct.tty_struct, ptr %12, i32 0, i32 19, i32 1
  %13 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %stopped.i, align 4, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool3.not.i = icmp eq i8 %14, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i.if.end47_crit_edge

land.lhs.true.i.if.end47_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

land.lhs.true.i.uart_tx_stopped.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_tx_stopped.exit

uart_tx_stopped.exit:                             ; preds = %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, %land.lhs.true.uart_tx_stopped.exit_crit_edge
  %hw_stopped.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 35
  %15 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hw_stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool4.not.i.not = icmp eq i32 %16, 0
  br i1 %tobool4.not.i.not, label %if.then5, label %uart_tx_stopped.exit.if.end47_crit_edge

uart_tx_stopped.exit.if.end47_crit_edge:          ; preds = %uart_tx_stopped.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then5:                                         ; preds = %uart_tx_stopped.exit
  %sub = sub i32 4096, %10
  %add = add i32 %sub, %8
  %and = and i32 %add, 4095
  %17 = tail call i32 @llvm.smin.i32(i32 %and, i32 %sub)
  %fifo_size = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 32
  %18 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fifo_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool9.not = icmp eq i32 %19, 0
  %and11 = and i32 %17, -4
  %and12 = and i32 %17, 3
  %part2_len.0 = select i1 %tobool9.not, i32 %17, i32 %and12
  call void @sg_init_table(ptr noundef nonnull %sgl, i32 noundef 2) #10
  %dma_address = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 20, i32 3
  %20 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_address, align 4
  %22 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tail, align 4
  %add15 = add i32 %23, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool16.not118 = icmp eq i32 %and11, 0
  %tobool16.not = select i1 %tobool9.not, i1 true, i1 %tobool16.not118
  br i1 %tobool16.not, label %if.then5.if.end20_crit_edge, label %if.then17

if.then5.if.end20_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then17:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %dma_address18 = getelementptr inbounds %struct.scatterlist, ptr %sgl, i32 0, i32 3
  %24 = ptrtoint ptr %dma_address18 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add15, ptr %dma_address18, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sgl, i32 0, i32 4
  %25 = ptrtoint ptr %dma_length to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and11, ptr %dma_length, align 4
  %add19 = add i32 %add15, %and11
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.then5.if.end20_crit_edge
  %sg_len.0 = phi i32 [ 1, %if.then17 ], [ 0, %if.then5.if.end20_crit_edge ]
  %phys_addr.0 = phi i32 [ %add19, %if.then17 ], [ %add15, %if.then5.if.end20_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %part2_len.0)
  %tobool21.not = icmp eq i32 %part2_len.0, 0
  br i1 %tobool21.not, label %if.end20.if.end27_crit_edge, label %if.then22

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %inc23 = add nuw nsw i32 %sg_len.0, 1
  %dma_address25 = getelementptr [2 x %struct.scatterlist], ptr %sgl, i32 0, i32 %sg_len.0, i32 3
  %26 = ptrtoint ptr %dma_address25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %phys_addr.0, ptr %dma_address25, align 4
  %dma_length26 = getelementptr [2 x %struct.scatterlist], ptr %sgl, i32 0, i32 %sg_len.0, i32 4
  %27 = ptrtoint ptr %dma_length26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %part2_len.0, ptr %dma_length26, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.end20.if.end27_crit_edge
  %sg_len.1 = phi i32 [ %inc23, %if.then22 ], [ %sg_len.0, %if.end20.if.end27_crit_edge ]
  %tx_len28 = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 26
  %28 = ptrtoint ptr %tx_len28 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %17, ptr %tx_len28, align 4
  %tobool.not.i109 = icmp eq ptr %3, null
  br i1 %tobool.not.i109, label %if.end27.do.end_crit_edge, label %lor.lhs.false.i110

if.end27.do.end_crit_edge:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false.i110:                               ; preds = %if.end27
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 4
  %tobool1.not.i = icmp eq ptr %30, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i110.do.end_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i110.do.end_crit_edge:              ; preds = %lor.lhs.false.i110
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i110
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %30, i32 0, i32 39
  %31 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i111 = icmp eq ptr %32, null
  br i1 %tobool4.not.i111, label %lor.lhs.false2.i.do.end_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.do.end_crit_edge:                ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i = call ptr %32(ptr noundef nonnull %3, ptr noundef nonnull %sgl, i32 noundef %sg_len.1, i32 noundef 1, i32 noundef 3, ptr noundef null) #10
  %tobool31.not = icmp eq ptr %call.i, null
  br i1 %tobool31.not, label %dmaengine_prep_slave_sg.exit.do.end_crit_edge, label %if.end33

dmaengine_prep_slave_sg.exit.do.end_crit_edge:    ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %dmaengine_prep_slave_sg.exit.do.end_crit_edge, %lor.lhs.false2.i.do.end_crit_edge, %lor.lhs.false.i110.do.end_crit_edge, %if.end27.do.end_crit_edge
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.53) #15
  br label %cleanup

if.end33:                                         ; preds = %dmaengine_prep_slave_sg.exit
  %dev34 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %35 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev34, align 4
  call void @dma_sync_sg_for_device(ptr noundef %36, ptr noundef %sg_tx2, i32 noundef 1, i32 noundef 1) #10
  %37 = ptrtoint ptr %desc_tx to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i, ptr %desc_tx, align 4
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 6
  %38 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @atmel_complete_tx_dma, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 8
  %39 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %port, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %40 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tx_submit.i, align 4
  %call.i113 = call i32 %41(ptr noundef nonnull %call.i) #10
  %cookie_tx = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 18
  %42 = ptrtoint ptr %cookie_tx to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call.i113, ptr %cookie_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i113)
  %tobool39.not = icmp sgt i32 %call.i113, -1
  br i1 %tobool39.not, label %if.end46, label %do.end43

do.end43:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev34, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.34, i32 noundef %call.i113) #15
  br label %cleanup

if.end46:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %3, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %46, i32 0, i32 50
  %47 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device_issue_pending.i, align 4
  call void %48(ptr noundef nonnull %3) #10
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %uart_tx_stopped.exit.if.end47_crit_edge, %land.lhs.true.i.if.end47_crit_edge, %if.end.if.end47_crit_edge
  %49 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %head, align 4
  %51 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tail, align 4
  %sub50 = sub i32 %50, %52
  %and51 = and i32 %sub50, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %cmp52 = icmp eq i32 %and51, 0
  br i1 %cmp52, label %if.then53, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then53:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  call void @uart_write_wakeup(ptr noundef %port) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then53, %if.end47.cleanup_crit_edge, %do.end43, %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sgl) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_release_tx_dma(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_tx = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 14
  %0 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan_tx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 47
  %4 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.dmaengine_terminate_all.exit_crit_edge, label %if.then.i

if.then.dmaengine_terminate_all.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_terminate_all.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 %5(ptr noundef nonnull %1) #10
  br label %dmaengine_terminate_all.exit

dmaengine_terminate_all.exit:                     ; preds = %if.then.i, %if.then.dmaengine_terminate_all.exit_crit_edge
  tail call void @dma_release_channel(ptr noundef nonnull %1) #10
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %sg_tx = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 20
  tail call void @dma_unmap_sg_attrs(ptr noundef %7, ptr noundef %sg_tx, i32 noundef 1, i32 noundef 1, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %dmaengine_terminate_all.exit, %entry.if.end_crit_edge
  %desc_tx = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 16
  %8 = ptrtoint ptr %desc_tx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %desc_tx, align 4
  %9 = ptrtoint ptr %chan_tx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %chan_tx, align 4
  %cookie_tx = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 18
  %10 = ptrtoint ptr %cookie_tx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -22, ptr %cookie_tx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_prepare_tx_pdc(ptr nocapture noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdc_tx = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 11
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %xmit1 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %xmit1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xmit1, align 4
  %4 = ptrtoint ptr %pdc_tx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %pdc_tx, align 4
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %3) #10
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !216

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %6) #10
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.42, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #10
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @debug_dma_map_single(ptr noundef %6, ptr noundef %3, i32 noundef 4096) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %11 = load ptr, ptr @mem_map, align 4
  %12 = ptrtoint ptr %3 to i32
  %sub.i = add i32 %12, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %11, i32 %shr.i
  %and.i = and i32 %12, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %6, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #10
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %dma_addr = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 11, i32 1
  %13 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %retval.0.i, ptr %dma_addr, align 4
  %dma_size = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 11, i32 2
  %14 = ptrtoint ptr %dma_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4096, ptr %dma_size, align 4
  %ofs = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 11, i32 3
  %15 = ptrtoint ptr %ofs to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %ofs, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_tx_pdc(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 268
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !207
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ofs = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 11, i32 3
  %5 = ptrtoint ptr %ofs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ofs, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tail, align 4
  %add = add i32 %8, %6
  %and = and i32 %add, 4095
  store i32 %and, ptr %tail, align 4
  %9 = load i32, ptr %ofs, align 4
  %tx = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 5
  %10 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx, align 4
  %add5 = add i32 %11, %9
  store i32 %add5, ptr %tx, align 4
  store i32 0, ptr %ofs, align 4
  %12 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i, align 4
  %add.ptr.i68 = getelementptr i8, ptr %13, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 512) #10, !srcloc !208
  %head = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %head, align 4
  %16 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp = icmp eq i32 %15, %17
  br i1 %cmp, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state, align 4
  %tty2.i = getelementptr inbounds %struct.tty_port, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %tty2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tty2.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %land.lhs.true.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i

land.lhs.true.uart_tx_stopped.exit_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_tx_stopped.exit

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %stopped.i = getelementptr inbounds %struct.tty_struct, ptr %21, i32 0, i32 19, i32 1
  %22 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %stopped.i, align 4, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool3.not.i = icmp eq i8 %23, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i.if.else_crit_edge

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true.i.uart_tx_stopped.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_tx_stopped.exit

uart_tx_stopped.exit:                             ; preds = %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, %land.lhs.true.uart_tx_stopped.exit_crit_edge
  %hw_stopped.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 35
  %24 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hw_stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool4.not.i.not = icmp eq i32 %25, 0
  br i1 %tobool4.not.i.not, label %if.then10, label %uart_tx_stopped.exit.if.else_crit_edge

uart_tx_stopped.exit.if.else_crit_edge:           ; preds = %uart_tx_stopped.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then10:                                        ; preds = %uart_tx_stopped.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %dma_addr = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 11, i32 1
  %28 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_addr, align 4
  %dma_size = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 11, i32 2
  %30 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma_size, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef 1) #10
  %32 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tail, align 4
  %sub = sub i32 4096, %33
  %34 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %head, align 4
  %add13 = add i32 %35, %sub
  %and14 = and i32 %add13, 4095
  %36 = tail call i32 @llvm.smin.i32(i32 %and14, i32 %sub)
  %37 = ptrtoint ptr %ofs to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %ofs, align 4
  %38 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma_addr, align 4
  %40 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tail, align 4
  %add19 = add i32 %41, %39
  %42 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %membase.i, align 4
  %add.ptr.i70 = getelementptr i8, ptr %43, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70, i32 %add19) #10, !srcloc !208
  %44 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %membase.i, align 4
  %add.ptr.i72 = getelementptr i8, ptr %45, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72, i32 %36) #10, !srcloc !208
  %46 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %membase.i, align 4
  %add.ptr.i74 = getelementptr i8, ptr %47, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74, i32 256) #10, !srcloc !208
  %tx_done_mask = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 31
  %48 = ptrtoint ptr %tx_done_mask to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tx_done_mask, align 4
  %50 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %membase.i, align 4
  %add.ptr.i76 = getelementptr i8, ptr %51, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76, i32 %49) #10, !srcloc !208
  br label %if.end24

if.else:                                          ; preds = %uart_tx_stopped.exit.if.else_crit_edge, %land.lhs.true.i.if.else_crit_edge, %if.end.if.else_crit_edge
  %rs485.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56
  %52 = ptrtoint ptr %rs485.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rs485.i, align 4
  %54 = and i32 %53, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %if.else.if.then22_crit_edge, label %atmel_uart_is_half_duplex.exit

if.else.if.then22_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

atmel_uart_is_half_duplex.exit:                   ; preds = %if.else
  %iso7816.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 58
  %56 = ptrtoint ptr %iso7816.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %iso7816.i, align 4
  %and6.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool21.not = icmp eq i32 %and6.i, 0
  br i1 %tobool21.not, label %atmel_uart_is_half_duplex.exit.if.end24_crit_edge, label %atmel_uart_is_half_duplex.exit.if.then22_crit_edge

atmel_uart_is_half_duplex.exit.if.then22_crit_edge: ; preds = %atmel_uart_is_half_duplex.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

atmel_uart_is_half_duplex.exit.if.end24_crit_edge: ; preds = %atmel_uart_is_half_duplex.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then22:                                        ; preds = %atmel_uart_is_half_duplex.exit.if.then22_crit_edge, %if.else.if.then22_crit_edge
  %58 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 256) #10, !srcloc !208
  %60 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 16) #10, !srcloc !208
  %use_pdc_rx.i.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 6
  %62 = ptrtoint ptr %use_pdc_rx.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %use_pdc_rx.i.i, align 1, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.i.not.i = icmp eq i8 %63, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  %read_status_mask.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 28
  %64 = ptrtoint ptr %read_status_mask.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %read_status_mask.i, align 4
  %or.i = or i32 %65, 264
  %66 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %67, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or.i) #10, !srcloc !208
  %68 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %membase.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %69, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 1) #10, !srcloc !208
  br label %if.end24

if.else.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %membase.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %71, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 1) #10, !srcloc !208
  br label %if.end24

if.end24:                                         ; preds = %if.else.i, %if.then.i, %atmel_uart_is_half_duplex.exit.if.end24_crit_edge, %if.then10
  %72 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %head, align 4
  %74 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tail, align 4
  %sub27 = sub i32 %73, %75
  %and28 = and i32 %sub27, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %cmp29 = icmp eq i32 %and28, 0
  br i1 %cmp29, label %if.then30, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then30:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @uart_write_wakeup(ptr noundef %port) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end24.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_release_tx_pdc(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dma_addr = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 11, i32 1
  %2 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_addr, align 4
  %dma_size = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 11, i32 2
  %4 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_size, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef 1, i32 noundef 0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_tx_chars(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !207
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %x_char to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %x_char, align 4
  %9 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i, align 4
  %add.ptr.i76 = getelementptr i8, ptr %10, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i76, i8 %8) #10, !srcloc !211
  %tx = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 5
  %11 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %tx, align 4
  %13 = ptrtoint ptr %x_char to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %x_char, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %head = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp = icmp eq i32 %15, %17
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state, align 4
  %tty2.i = getelementptr inbounds %struct.tty_port, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %tty2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tty2.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %lor.lhs.false.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i

lor.lhs.false.uart_tx_stopped.exit_crit_edge:     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_tx_stopped.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false
  %stopped.i = getelementptr inbounds %struct.tty_struct, ptr %21, i32 0, i32 19, i32 1
  %22 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %stopped.i, align 4, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool3.not.i = icmp eq i8 %23, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i.uart_tx_stopped.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_tx_stopped.exit

uart_tx_stopped.exit:                             ; preds = %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, %lor.lhs.false.uart_tx_stopped.exit_crit_edge
  %hw_stopped.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 35
  %24 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hw_stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool4.not.i.not = icmp eq i32 %25, 0
  br i1 %tobool4.not.i.not, label %while.cond.preheader, label %uart_tx_stopped.exit.cleanup_crit_edge

uart_tx_stopped.exit.cleanup_crit_edge:           ; preds = %uart_tx_stopped.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.preheader:                             ; preds = %uart_tx_stopped.exit
  %membase.i77 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %tx19 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 5
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.preheader
  %26 = ptrtoint ptr %membase.i77 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase.i77, align 4
  %add.ptr.i78 = getelementptr i8, ptr %27, i32 20
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i78) #10, !srcloc !207
  %and12 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.cond
  %29 = ptrtoint ptr %xmit1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %xmit1, align 4
  %31 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tail, align 4
  %arrayidx = getelementptr i8, ptr %30, i32 %32
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx, align 1
  %35 = ptrtoint ptr %membase.i77 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase.i77, align 4
  %add.ptr.i80 = getelementptr i8, ptr %36, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i80, i8 %34) #10, !srcloc !211
  %37 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tail, align 4
  %add = add i32 %38, 1
  %and16 = and i32 %add, 4095
  store i32 %and16, ptr %tail, align 4
  %39 = ptrtoint ptr %tx19 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx19, align 4
  %inc20 = add i32 %40, 1
  store i32 %inc20, ptr %tx19, align 4
  %41 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %head, align 4
  %43 = load i32, ptr %tail, align 4
  %cmp23 = icmp eq i32 %42, %43
  br i1 %cmp23, label %while.body.while.end_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %44 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %head, align 4
  %46 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tail, align 4
  %sub = sub i32 %45, %47
  %and29 = and i32 %sub, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %cmp30 = icmp eq i32 %and29, 0
  br i1 %cmp30, label %if.then32, label %while.end.if.end33_crit_edge

while.end.if.end33_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then32:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @uart_write_wakeup(ptr noundef %port) #10
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %while.end.if.end33_crit_edge
  %48 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %head, align 4
  %50 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp36 = icmp eq i32 %49, %51
  br i1 %cmp36, label %if.else, label %if.then38

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %tx_done_mask = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 31
  %52 = ptrtoint ptr %tx_done_mask to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tx_done_mask, align 4
  %or = or i32 %53, 2
  store i32 %or, ptr %tx_done_mask, align 4
  %54 = ptrtoint ptr %membase.i77 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %membase.i77, align 4
  %add.ptr.i82 = getelementptr i8, ptr %55, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82, i32 %or) #10, !srcloc !208
  br label %cleanup

if.else:                                          ; preds = %if.end33
  %rs485.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56
  %56 = ptrtoint ptr %rs485.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rs485.i, align 4
  %58 = and i32 %57, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %if.else.if.then42_crit_edge, label %atmel_uart_is_half_duplex.exit

if.else.if.then42_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42

atmel_uart_is_half_duplex.exit:                   ; preds = %if.else
  %iso7816.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 58
  %60 = ptrtoint ptr %iso7816.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %iso7816.i, align 4
  %and6.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool41.not = icmp eq i32 %and6.i, 0
  br i1 %tobool41.not, label %atmel_uart_is_half_duplex.exit.cleanup_crit_edge, label %atmel_uart_is_half_duplex.exit.if.then42_crit_edge

atmel_uart_is_half_duplex.exit.if.then42_crit_edge: ; preds = %atmel_uart_is_half_duplex.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42

atmel_uart_is_half_duplex.exit.cleanup_crit_edge: ; preds = %atmel_uart_is_half_duplex.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then42:                                        ; preds = %atmel_uart_is_half_duplex.exit.if.then42_crit_edge, %if.else.if.then42_crit_edge
  %tx_done_mask43 = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 31
  %62 = ptrtoint ptr %tx_done_mask43 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tx_done_mask43, align 4
  %and44 = and i32 %63, -3
  store i32 %and44, ptr %tx_done_mask43, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %atmel_uart_is_half_duplex.exit.cleanup_crit_edge, %if.then38, %uart_tx_stopped.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_complete_rx_dma(ptr noundef %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tasklet_rx = getelementptr inbounds %struct.atmel_uart_port, ptr %arg, i32 0, i32 22
  %tasklet_shutdown.i = getelementptr inbounds %struct.atmel_uart_port, ptr %arg, i32 0, i32 24
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tasklet_shutdown.i, i32 noundef 4) #10
  %0 = ptrtoint ptr %tasklet_shutdown.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %tasklet_shutdown.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.atmel_tasklet_schedule.exit_crit_edge

entry.atmel_tasklet_schedule.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %atmel_tasklet_schedule.exit

if.then.i:                                        ; preds = %entry
  %state.i.i = getelementptr inbounds %struct.atmel_uart_port, ptr %arg, i32 0, i32 22, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i.atmel_tasklet_schedule.exit_crit_edge

if.then.i.atmel_tasklet_schedule.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atmel_tasklet_schedule.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__tasklet_schedule(ptr noundef %tasklet_rx) #10
  br label %atmel_tasklet_schedule.exit

atmel_tasklet_schedule.exit:                      ; preds = %if.then.i.i, %if.then.i.atmel_tasklet_schedule.exit_crit_edge, %entry.atmel_tasklet_schedule.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_cpu(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_device(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

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
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uart_handle_break(ptr noundef %port) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %state1 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %handle_break = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 17
  %2 = ptrtoint ptr %handle_break to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle_break, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %3(ptr noundef %port) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %has_sysrq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 48
  %4 = ptrtoint ptr %has_sysrq to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_sysrq, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.end.if.end15_crit_edge, label %land.lhs.true

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %cons = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 32
  %6 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cons, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %land.lhs.true.if.end15_crit_edge, label %land.lhs.true5

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

land.lhs.true5:                                   ; preds = %land.lhs.true
  %index = getelementptr inbounds %struct.console, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %index, align 2
  %conv7 = sext i16 %9 to i32
  %line = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %10 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv7)
  %cmp = icmp eq i32 %11, %conv7
  br i1 %cmp, label %if.then9, label %land.lhs.true5.if.end15_crit_edge

land.lhs.true5.if.end15_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then9:                                         ; preds = %land.lhs.true5
  %sysrq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 46
  %12 = ptrtoint ptr %sysrq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sysrq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not = icmp eq i32 %13, 0
  br i1 %tobool10.not, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %14, 500
  %15 = ptrtoint ptr %sysrq to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add, ptr %sysrq, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %sysrq to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %sysrq, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end13, %land.lhs.true5.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %flags = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %and = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end15.cleanup_crit_edge, label %if.then17

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %tty = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tty, align 4
  tail call void @do_SAK(ptr noundef %20) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end15.cleanup_crit_edge, %if.then11
  %retval.0 = phi i32 [ 1, %if.then11 ], [ 0, %if.then17 ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_complete_tx_dma(ptr noundef %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %arg, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %chan_tx = getelementptr inbounds %struct.atmel_uart_port, ptr %arg, i32 0, i32 14
  %2 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan_tx, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arg) #10
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 %7(ptr noundef nonnull %3) #10
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %tx_len = getelementptr inbounds %struct.atmel_uart_port, ptr %arg, i32 0, i32 26
  %8 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_len, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tail, align 4
  %add = add i32 %11, %9
  %and = and i32 %add, 4095
  store i32 %and, ptr %tail, align 4
  %12 = load i32, ptr %tx_len, align 4
  %tx = getelementptr inbounds %struct.uart_port, ptr %arg, i32 0, i32 31, i32 5
  %13 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx, align 4
  %add9 = add i32 %14, %12
  store i32 %add9, ptr %tx, align 4
  %lock_tx = getelementptr inbounds %struct.atmel_uart_port, ptr %arg, i32 0, i32 12
  tail call void @_raw_spin_lock_irq(ptr noundef %lock_tx) #10
  %desc_tx = getelementptr inbounds %struct.atmel_uart_port, ptr %arg, i32 0, i32 16
  %15 = ptrtoint ptr %desc_tx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %desc_tx, align 4
  %flags.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %18, 2
  store i32 %or.i, ptr %flags.i, align 4
  %cookie_tx = getelementptr inbounds %struct.atmel_uart_port, ptr %arg, i32 0, i32 18
  %19 = ptrtoint ptr %cookie_tx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -22, ptr %cookie_tx, align 4
  store ptr null, ptr %desc_tx, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock_tx) #10
  %head = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %head, align 4
  %22 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tail, align 4
  %sub = sub i32 %21, %23
  %and13 = and i32 %sub, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %cmp14 = icmp eq i32 %and13, 0
  br i1 %cmp14, label %if.then16, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @uart_write_wakeup(ptr noundef %arg) #10
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end.if.end17_crit_edge
  %24 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %head, align 4
  %26 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp20 = icmp eq i32 %25, %27
  br i1 %cmp20, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end17
  %tasklet_tx = getelementptr inbounds %struct.atmel_uart_port, ptr %arg, i32 0, i32 23
  %tasklet_shutdown.i = getelementptr inbounds %struct.atmel_uart_port, ptr %arg, i32 0, i32 24
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tasklet_shutdown.i, i32 noundef 4) #10
  %28 = ptrtoint ptr %tasklet_shutdown.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %tasklet_shutdown.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i53 = icmp eq i32 %29, 0
  br i1 %tobool.not.i53, label %if.then.i54, label %if.then22.if.end27_crit_edge

if.then22.if.end27_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then.i54:                                      ; preds = %if.then22
  %state.i.i = getelementptr inbounds %struct.atmel_uart_port, ptr %arg, i32 0, i32 23, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i54.if.end27_crit_edge

if.then.i54.if.end27_crit_edge:                   ; preds = %if.then.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then.i.i:                                      ; preds = %if.then.i54
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__tasklet_schedule(ptr noundef %tasklet_tx) #10
  br label %if.end27

if.else:                                          ; preds = %if.end17
  %rs485.i = getelementptr inbounds %struct.uart_port, ptr %arg, i32 0, i32 56
  %30 = ptrtoint ptr %rs485.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rs485.i, align 4
  %32 = and i32 %31, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %if.else.if.then25_crit_edge, label %atmel_uart_is_half_duplex.exit

if.else.if.then25_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then25

atmel_uart_is_half_duplex.exit:                   ; preds = %if.else
  %iso7816.i = getelementptr inbounds %struct.uart_port, ptr %arg, i32 0, i32 58
  %34 = ptrtoint ptr %iso7816.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iso7816.i, align 4
  %and6.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool24.not = icmp eq i32 %and6.i, 0
  br i1 %tobool24.not, label %atmel_uart_is_half_duplex.exit.if.end27_crit_edge, label %atmel_uart_is_half_duplex.exit.if.then25_crit_edge

atmel_uart_is_half_duplex.exit.if.then25_crit_edge: ; preds = %atmel_uart_is_half_duplex.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then25

atmel_uart_is_half_duplex.exit.if.end27_crit_edge: ; preds = %atmel_uart_is_half_duplex.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then25:                                        ; preds = %atmel_uart_is_half_duplex.exit.if.then25_crit_edge, %if.else.if.then25_crit_edge
  %hd_start_rx = getelementptr inbounds %struct.atmel_uart_port, ptr %arg, i32 0, i32 45
  %36 = ptrtoint ptr %hd_start_rx to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %hd_start_rx, align 4
  %tx_done_mask = getelementptr inbounds %struct.atmel_uart_port, ptr %arg, i32 0, i32 31
  %37 = ptrtoint ptr %tx_done_mask to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx_done_mask, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %arg, i32 0, i32 2
  %39 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %40, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %38) #10, !srcloc !208
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %atmel_uart_is_half_duplex.exit.if.end27_crit_edge, %if.then.i.i, %if.then.i54.if.end27_crit_edge, %if.then22.if.end27_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arg, i32 noundef %call3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_tx_empty(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_stopped = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 40
  %0 = ptrtoint ptr %tx_stopped to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tx_stopped, align 4, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !207
  %and = lshr i32 %4, 9
  %and.lobit = and i32 %and, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and.lobit, %if.end ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_set_mctrl(ptr nocapture noundef readonly %port, i32 noundef %mctrl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !207
  %rs485 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56
  %3 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rs485, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %delay_rts_after_send = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56, i32 2
  %5 = ptrtoint ptr %delay_rts_after_send to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %delay_rts_after_send, align 4
  %7 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %8, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %6) #10, !srcloc !208
  %and3 = and i32 %2, -16
  %or = or i32 %and3, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mode.0 = phi i32 [ %or, %if.then ], [ %2, %entry.if.end_crit_edge ]
  %and4 = and i32 %mode.0, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and4)
  %cmp = icmp eq i32 %and4, 2
  %. = select i1 %cmp, i32 262144, i32 524288
  %.48 = select i1 %cmp, i32 524288, i32 262144
  %and7 = and i32 %mctrl, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %control.0 = select i1 %tobool8.not, i32 %., i32 %.48
  %and14 = and i32 %mctrl, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %control.1.v = select i1 %tobool15.not, i32 131072, i32 65536
  %control.1 = or i32 %control.0, %control.1.v
  %9 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %control.1) #10, !srcloc !208
  %gpios = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 28
  %11 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gpios, align 4
  tail call void @mctrl_gpio_set(ptr noundef %12, i32 noundef %mctrl) #10
  %and21 = and i32 %mode.0, -49153
  %and22 = and i32 %mctrl, 32768
  %13 = or i32 %and21, %and22
  %14 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i, align 4
  %add.ptr.i53 = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 %13) #10, !srcloc !208
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_get_mctrl(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #10
  %0 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ret, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %1 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 20
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !207
  %and = and i32 %3, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ret, align 4
  %or = or i32 %5, 64
  store i32 %or, ptr %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and2 = and i32 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ret, align 4
  %or5 = or i32 %7, 32
  store i32 %or5, ptr %ret, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %and7 = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end6.if.end11_crit_edge

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ret, align 4
  %or10 = or i32 %9, 256
  store i32 %or10, ptr %ret, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end6.if.end11_crit_edge
  %and12 = and i32 %3, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end11.if.end16_crit_edge

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ret, align 4
  %or15 = or i32 %11, 128
  store i32 %or15, ptr %ret, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end11.if.end16_crit_edge
  %gpios = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 28
  %12 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gpios, align 4
  %call17 = call i32 @mctrl_gpio_get(ptr noundef %13, ptr noundef nonnull %ret) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #10
  ret i32 %call17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_stop_tx(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %use_pdc_tx.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 10
  %0 = ptrtoint ptr %use_pdc_tx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_pdc_tx.i, align 1, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not = icmp eq i8 %1, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 512) #10, !srcloc !208
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %membase.i17 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %4 = ptrtoint ptr %membase.i17 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i17, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 128) #10, !srcloc !208
  %tx_stopped = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 40
  %6 = ptrtoint ptr %tx_stopped to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %tx_stopped, align 4
  %tx_done_mask = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 31
  %7 = ptrtoint ptr %tx_done_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_done_mask, align 4
  %9 = ptrtoint ptr %membase.i17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i17, align 4
  %add.ptr.i19 = getelementptr i8, ptr %10, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %8) #10, !srcloc !208
  %rs485.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56
  %11 = ptrtoint ptr %rs485.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rs485.i, align 4
  %13 = and i32 %12, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %if.end.if.then3_crit_edge, label %atmel_uart_is_half_duplex.exit

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

atmel_uart_is_half_duplex.exit:                   ; preds = %if.end
  %iso7816.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 58
  %15 = ptrtoint ptr %iso7816.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iso7816.i, align 4
  %and6.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool.not = icmp eq i32 %and6.i, 0
  br i1 %tobool.not, label %atmel_uart_is_half_duplex.exit.if.end8_crit_edge, label %atmel_uart_is_half_duplex.exit.if.then3_crit_edge

atmel_uart_is_half_duplex.exit.if.then3_crit_edge: ; preds = %atmel_uart_is_half_duplex.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

atmel_uart_is_half_duplex.exit.if.end8_crit_edge: ; preds = %atmel_uart_is_half_duplex.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then3:                                         ; preds = %atmel_uart_is_half_duplex.exit.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %tasklet_shutdown = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 24
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tasklet_shutdown, i32 noundef 4) #10
  %17 = ptrtoint ptr %tasklet_shutdown to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %tasklet_shutdown, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool5.not = icmp eq i32 %18, 0
  br i1 %tobool5.not, label %if.then6, label %if.then3.if.end8_crit_edge

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then6:                                         ; preds = %if.then3
  %19 = ptrtoint ptr %membase.i17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase.i17, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 256) #10, !srcloc !208
  %21 = ptrtoint ptr %membase.i17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase.i17, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 16) #10, !srcloc !208
  %use_pdc_rx.i.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 6
  %23 = ptrtoint ptr %use_pdc_rx.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %use_pdc_rx.i.i, align 1, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.i.not.i = icmp eq i8 %24, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %read_status_mask.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 28
  %25 = ptrtoint ptr %read_status_mask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %read_status_mask.i, align 4
  %or.i = or i32 %26, 264
  %27 = ptrtoint ptr %membase.i17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase.i17, align 4
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or.i) #10, !srcloc !208
  %29 = ptrtoint ptr %membase.i17 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase.i17, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %30, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 1) #10, !srcloc !208
  br label %if.end8

if.else.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %membase.i17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %membase.i17, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %32, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 1) #10, !srcloc !208
  br label %if.end8

if.end8:                                          ; preds = %if.else.i, %if.then.i, %if.then3.if.end8_crit_edge, %atmel_uart_is_half_duplex.exit.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_start_tx(ptr nocapture noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %use_pdc_tx.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 10
  %0 = ptrtoint ptr %use_pdc_tx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_pdc_tx.i, align 1, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not = icmp eq i8 %1, 0
  br i1 %tobool.i.not, label %entry.lor.lhs.false_crit_edge, label %land.lhs.true

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 292
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !207
  %and = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %5 = ptrtoint ptr %use_pdc_tx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %.pr = load i8, ptr %use_pdc_tx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool.i26.not = icmp eq i8 %.pr, 0
  br i1 %tobool.i26.not, label %if.end.lor.lhs.false_crit_edge, label %if.end.if.then5_crit_edge

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %use_dma_tx.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 9
  %6 = ptrtoint ptr %use_dma_tx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %use_dma_tx.i, align 4, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.i27.not = icmp eq i8 %7, 0
  br i1 %tobool.i27.not, label %lor.lhs.false.if.end10_crit_edge, label %lor.lhs.false.if.then5_crit_edge

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

lor.lhs.false.if.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %if.end.if.then5_crit_edge
  %rs485.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56
  %8 = ptrtoint ptr %rs485.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rs485.i, align 4
  %10 = and i32 %9, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %if.then5.if.then8_crit_edge, label %atmel_uart_is_half_duplex.exit

if.then5.if.then8_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

atmel_uart_is_half_duplex.exit:                   ; preds = %if.then5
  %iso7816.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 58
  %12 = ptrtoint ptr %iso7816.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iso7816.i, align 4
  %and6.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not, label %atmel_uart_is_half_duplex.exit.if.end10_crit_edge, label %atmel_uart_is_half_duplex.exit.if.then8_crit_edge

atmel_uart_is_half_duplex.exit.if.then8_crit_edge: ; preds = %atmel_uart_is_half_duplex.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

atmel_uart_is_half_duplex.exit.if.end10_crit_edge: ; preds = %atmel_uart_is_half_duplex.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then8:                                         ; preds = %atmel_uart_is_half_duplex.exit.if.then8_crit_edge, %if.then5.if.then8_crit_edge
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %14 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 32) #10, !srcloc !208
  %use_pdc_rx.i.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 6
  %16 = ptrtoint ptr %use_pdc_rx.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %use_pdc_rx.i.i, align 1, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.i.not.i = icmp eq i8 %17, 0
  %18 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i.i, align 4
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 2) #10, !srcloc !208
  %read_status_mask.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 28
  %20 = ptrtoint ptr %read_status_mask.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %read_status_mask.i, align 4
  %or.i = or i32 %21, 264
  %22 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %23, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %or.i) #10, !srcloc !208
  br label %if.end10

if.else.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i10.i = getelementptr i8, ptr %19, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 1) #10, !srcloc !208
  br label %if.end10

if.end10:                                         ; preds = %if.else.i, %if.then.i, %atmel_uart_is_half_duplex.exit.if.end10_crit_edge, %lor.lhs.false.if.end10_crit_edge
  %24 = ptrtoint ptr %use_pdc_tx.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %use_pdc_tx.i, align 1, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.i29.not = icmp eq i8 %25, 0
  br i1 %tobool.i29.not, label %if.end10.if.end13_crit_edge, label %if.then12

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %membase.i30 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %26 = ptrtoint ptr %membase.i30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase.i30, align 4
  %add.ptr.i31 = getelementptr i8, ptr %27, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 256) #10, !srcloc !208
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10.if.end13_crit_edge
  %tx_done_mask = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 31
  %28 = ptrtoint ptr %tx_done_mask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_done_mask, align 4
  %membase.i32 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %30 = ptrtoint ptr %membase.i32 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase.i32, align 4
  %add.ptr.i33 = getelementptr i8, ptr %31, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %29) #10, !srcloc !208
  %32 = ptrtoint ptr %membase.i32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase.i32, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 64) #10, !srcloc !208
  %tx_stopped = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 40
  %34 = ptrtoint ptr %tx_stopped to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %tx_stopped, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_stop_rx(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 32) #10, !srcloc !208
  %use_pdc_rx.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 6
  %2 = ptrtoint ptr %use_pdc_rx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_pdc_rx.i, align 1, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.not = icmp eq i8 %3, 0
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %5, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 2) #10, !srcloc !208
  %read_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 28
  %6 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %read_status_mask, align 4
  %or = or i32 %7, 264
  %8 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %or) #10, !srcloc !208
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i10 = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 1) #10, !srcloc !208
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_enable_ms(ptr nocapture noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ms_irq_enabled = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 35
  %0 = ptrtoint ptr %ms_irq_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ms_irq_enabled, align 4, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %ms_irq_enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %ms_irq_enabled, align 4
  %gpios = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 28
  %3 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gpios, align 4
  %call2 = tail call ptr @mctrl_gpio_to_gpiod(ptr noundef %4, i32 noundef 0) #10
  %tobool3.not = icmp eq ptr %call2, null
  %spec.select = select i1 %tobool3.not, i32 524288, i32 0
  %5 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gpios, align 4
  %call7 = tail call ptr @mctrl_gpio_to_gpiod(ptr noundef %6, i32 noundef 1) #10
  %tobool8.not = icmp eq ptr %call7, null
  %or10 = or i32 %spec.select, 131072
  %ier.1 = select i1 %tobool8.not, i32 %or10, i32 %spec.select
  %7 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gpios, align 4
  %call13 = tail call ptr @mctrl_gpio_to_gpiod(ptr noundef %8, i32 noundef 3) #10
  %tobool14.not = icmp eq ptr %call13, null
  %or16 = or i32 %ier.1, 65536
  %ier.2 = select i1 %tobool14.not, i32 %or16, i32 %ier.1
  %9 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gpios, align 4
  %call19 = tail call ptr @mctrl_gpio_to_gpiod(ptr noundef %10, i32 noundef 2) #10
  %tobool20.not = icmp eq ptr %call19, null
  %or22 = or i32 %ier.2, 262144
  %ier.3 = select i1 %tobool20.not, i32 %or22, i32 %ier.2
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %11 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %ier.3) #10, !srcloc !208
  %13 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpios, align 4
  tail call void @mctrl_gpio_enable_ms(ptr noundef %14) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_break_ctl(ptr nocapture noundef readonly %port, i32 noundef %break_state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %break_state)
  %cmp.not = icmp eq i32 %break_state, 0
  %membase.i2 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i2, align 4
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 512) #10, !srcloc !208
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 1024) #10, !srcloc !208
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_startup(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #10, !srcloc !208
  %ms_irq_enabled = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 35
  %4 = ptrtoint ptr %ms_irq_enabled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %ms_irq_enabled, align 4
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %10, %if.end.i ], [ %8, %entry.dev_name.exit_crit_edge ]
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %6, ptr noundef nonnull @atmel_interrupt, ptr noundef null, i32 noundef 262272, ptr noundef %retval.0.i, ptr noundef %port) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.57) #15
  br label %cleanup

if.end:                                           ; preds = %dev_name.exit
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %tasklet_shutdown = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 24
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tasklet_shutdown, i32 noundef 4) #10
  %13 = ptrtoint ptr %tasklet_shutdown to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 0, ptr %tasklet_shutdown, align 4
  %tasklet_rx = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 22
  tail call void @tasklet_setup(ptr noundef %tasklet_rx, ptr noundef nonnull @atmel_tasklet_rx_func) #10
  %tasklet_tx = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 23
  tail call void @tasklet_setup(ptr noundef %tasklet_tx, ptr noundef nonnull @atmel_tasklet_tx_func) #10
  tail call fastcc void @atmel_init_property(ptr noundef %port, ptr noundef %add.ptr)
  %use_dma_rx.i.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 5
  %14 = ptrtoint ptr %use_dma_rx.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %use_dma_rx.i.i, align 4, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.i.not.i = icmp eq i8 %15, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %prepare_rx.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 49
  %16 = ptrtoint ptr %prepare_rx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @atmel_prepare_rx_dma, ptr %prepare_rx.i, align 4
  br label %if.end11.i

if.else.i:                                        ; preds = %if.end
  %use_pdc_rx.i.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 6
  %17 = ptrtoint ptr %use_pdc_rx.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %use_pdc_rx.i.i, align 1, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.i47.not.i = icmp eq i8 %18, 0
  %prepare_rx8.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 49
  br i1 %tobool.i47.not.i, label %if.else7.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %prepare_rx8.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @atmel_prepare_rx_pdc, ptr %prepare_rx8.i, align 4
  br label %if.end11.i

if.else7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %prepare_rx8.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %prepare_rx8.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else7.i, %if.then3.i, %if.then.i
  %atmel_rx_from_pdc.sink.i = phi ptr [ @atmel_rx_from_pdc, %if.then3.i ], [ @atmel_rx_from_ring, %if.else7.i ], [ @atmel_rx_from_dma, %if.then.i ]
  %atmel_release_rx_pdc.sink.i = phi ptr [ @atmel_release_rx_pdc, %if.then3.i ], [ null, %if.else7.i ], [ @atmel_release_rx_dma, %if.then.i ]
  %schedule_rx5.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 51
  %21 = ptrtoint ptr %schedule_rx5.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %atmel_rx_from_pdc.sink.i, ptr %schedule_rx5.i, align 4
  %release_rx6.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 53
  %22 = ptrtoint ptr %release_rx6.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %atmel_release_rx_pdc.sink.i, ptr %release_rx6.i, align 4
  %use_dma_tx.i.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 9
  %23 = ptrtoint ptr %use_dma_tx.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %use_dma_tx.i.i, align 4, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.i48.not.i = icmp eq i8 %24, 0
  br i1 %tobool.i48.not.i, label %if.else14.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %prepare_tx.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 50
  %25 = ptrtoint ptr %prepare_tx.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @atmel_prepare_tx_dma, ptr %prepare_tx.i, align 4
  br label %atmel_set_ops.exit

if.else14.i:                                      ; preds = %if.end11.i
  %use_pdc_tx.i.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 10
  %26 = ptrtoint ptr %use_pdc_tx.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %use_pdc_tx.i.i, align 1, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.i49.not.i = icmp eq i8 %27, 0
  %prepare_tx21.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 50
  br i1 %tobool.i49.not.i, label %if.else20.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %prepare_tx21.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @atmel_prepare_tx_pdc, ptr %prepare_tx21.i, align 4
  br label %atmel_set_ops.exit

if.else20.i:                                      ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %prepare_tx21.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %prepare_tx21.i, align 4
  br label %atmel_set_ops.exit

atmel_set_ops.exit:                               ; preds = %if.else20.i, %if.then16.i, %if.then13.i
  %atmel_tx_pdc.sink.i = phi ptr [ @atmel_tx_pdc, %if.then16.i ], [ @atmel_tx_chars, %if.else20.i ], [ @atmel_tx_dma, %if.then13.i ]
  %atmel_release_tx_pdc.sink.i = phi ptr [ @atmel_release_tx_pdc, %if.then16.i ], [ null, %if.else20.i ], [ @atmel_release_tx_dma, %if.then13.i ]
  %schedule_tx18.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 52
  %30 = ptrtoint ptr %schedule_tx18.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %atmel_tx_pdc.sink.i, ptr %schedule_tx18.i, align 4
  %release_tx19.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 54
  %31 = ptrtoint ptr %release_tx19.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %atmel_release_tx_pdc.sink.i, ptr %release_tx19.i, align 4
  %prepare_rx = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 49
  %32 = ptrtoint ptr %prepare_rx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prepare_rx, align 4
  %tobool6.not = icmp eq ptr %33, null
  br i1 %tobool6.not, label %atmel_set_ops.exit.if.end12_crit_edge, label %if.then7

atmel_set_ops.exit.if.end12_crit_edge:            ; preds = %atmel_set_ops.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then7:                                         ; preds = %atmel_set_ops.exit
  %call9 = tail call i32 %33(ptr noundef %port) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.then10, label %if.then7.if.end12_crit_edge

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then10:                                        ; preds = %if.then7
  %34 = ptrtoint ptr %use_dma_rx.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %use_dma_rx.i.i, align 4, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.i.not.i131 = icmp eq i8 %35, 0
  br i1 %tobool.i.not.i131, label %if.else.i137, label %if.then10.if.end11.i146_crit_edge

if.then10.if.end11.i146_crit_edge:                ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i146

if.else.i137:                                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %use_pdc_rx.i.i134 = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 6
  %36 = ptrtoint ptr %use_pdc_rx.i.i134 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %use_pdc_rx.i.i134, align 1, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.i47.not.i135 = icmp eq i8 %37, 0
  %.atmel_prepare_rx_pdc = select i1 %tobool.i47.not.i135, ptr null, ptr @atmel_prepare_rx_pdc
  %atmel_rx_from_ring.atmel_rx_from_pdc = select i1 %tobool.i47.not.i135, ptr @atmel_rx_from_ring, ptr @atmel_rx_from_pdc
  %.atmel_release_rx_pdc = select i1 %tobool.i47.not.i135, ptr null, ptr @atmel_release_rx_pdc
  br label %if.end11.i146

if.end11.i146:                                    ; preds = %if.else.i137, %if.then10.if.end11.i146_crit_edge
  %.sink = phi ptr [ @atmel_prepare_rx_dma, %if.then10.if.end11.i146_crit_edge ], [ %.atmel_prepare_rx_pdc, %if.else.i137 ]
  %atmel_rx_from_pdc.sink.i140 = phi ptr [ @atmel_rx_from_dma, %if.then10.if.end11.i146_crit_edge ], [ %atmel_rx_from_ring.atmel_rx_from_pdc, %if.else.i137 ]
  %atmel_release_rx_pdc.sink.i141 = phi ptr [ @atmel_release_rx_dma, %if.then10.if.end11.i146_crit_edge ], [ %.atmel_release_rx_pdc, %if.else.i137 ]
  %38 = ptrtoint ptr %prepare_rx to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %.sink, ptr %prepare_rx, align 4
  %39 = ptrtoint ptr %schedule_rx5.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %atmel_rx_from_pdc.sink.i140, ptr %schedule_rx5.i, align 4
  %40 = ptrtoint ptr %release_rx6.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %atmel_release_rx_pdc.sink.i141, ptr %release_rx6.i, align 4
  %41 = ptrtoint ptr %use_dma_tx.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %use_dma_tx.i.i, align 4, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.i48.not.i145 = icmp eq i8 %42, 0
  br i1 %tobool.i48.not.i145, label %if.else14.i152, label %if.then13.i148

if.then13.i148:                                   ; preds = %if.end11.i146
  call void @__sanitizer_cov_trace_pc() #12
  %prepare_tx.i147 = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 50
  %43 = ptrtoint ptr %prepare_tx.i147 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @atmel_prepare_tx_dma, ptr %prepare_tx.i147, align 4
  br label %atmel_set_ops.exit159

if.else14.i152:                                   ; preds = %if.end11.i146
  %use_pdc_tx.i.i149 = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 10
  %44 = ptrtoint ptr %use_pdc_tx.i.i149 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %use_pdc_tx.i.i149, align 1, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.i49.not.i150 = icmp eq i8 %45, 0
  %prepare_tx21.i151 = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 50
  br i1 %tobool.i49.not.i150, label %if.else20.i154, label %if.then16.i153

if.then16.i153:                                   ; preds = %if.else14.i152
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %prepare_tx21.i151 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @atmel_prepare_tx_pdc, ptr %prepare_tx21.i151, align 4
  br label %atmel_set_ops.exit159

if.else20.i154:                                   ; preds = %if.else14.i152
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %prepare_tx21.i151 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %prepare_tx21.i151, align 4
  br label %atmel_set_ops.exit159

atmel_set_ops.exit159:                            ; preds = %if.else20.i154, %if.then16.i153, %if.then13.i148
  %atmel_tx_pdc.sink.i155 = phi ptr [ @atmel_tx_pdc, %if.then16.i153 ], [ @atmel_tx_chars, %if.else20.i154 ], [ @atmel_tx_dma, %if.then13.i148 ]
  %atmel_release_tx_pdc.sink.i156 = phi ptr [ @atmel_release_tx_pdc, %if.then16.i153 ], [ null, %if.else20.i154 ], [ @atmel_release_tx_dma, %if.then13.i148 ]
  %48 = ptrtoint ptr %schedule_tx18.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %atmel_tx_pdc.sink.i155, ptr %schedule_tx18.i, align 4
  %49 = ptrtoint ptr %release_tx19.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %atmel_release_tx_pdc.sink.i156, ptr %release_tx19.i, align 4
  br label %if.end12

if.end12:                                         ; preds = %atmel_set_ops.exit159, %if.then7.if.end12_crit_edge, %atmel_set_ops.exit.if.end12_crit_edge
  %prepare_tx = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 50
  %50 = ptrtoint ptr %prepare_tx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prepare_tx, align 4
  %tobool13.not = icmp eq ptr %51, null
  br i1 %tobool13.not, label %if.end12.if.end20_crit_edge, label %if.then14

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then14:                                        ; preds = %if.end12
  %call16 = tail call i32 %51(ptr noundef %port) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.then14.if.end20_crit_edge

if.then14.if.end20_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then18:                                        ; preds = %if.then14
  %52 = ptrtoint ptr %use_dma_rx.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %use_dma_rx.i.i, align 4, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.i.not.i161 = icmp eq i8 %53, 0
  br i1 %tobool.i.not.i161, label %if.else.i167, label %if.then18.if.end11.i176_crit_edge

if.then18.if.end11.i176_crit_edge:                ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i176

if.else.i167:                                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  %use_pdc_rx.i.i164 = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 6
  %54 = ptrtoint ptr %use_pdc_rx.i.i164 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %use_pdc_rx.i.i164, align 1, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.i47.not.i165 = icmp eq i8 %55, 0
  %.atmel_prepare_rx_pdc219 = select i1 %tobool.i47.not.i165, ptr null, ptr @atmel_prepare_rx_pdc
  %atmel_rx_from_ring.atmel_rx_from_pdc220 = select i1 %tobool.i47.not.i165, ptr @atmel_rx_from_ring, ptr @atmel_rx_from_pdc
  %.atmel_release_rx_pdc221 = select i1 %tobool.i47.not.i165, ptr null, ptr @atmel_release_rx_pdc
  br label %if.end11.i176

if.end11.i176:                                    ; preds = %if.else.i167, %if.then18.if.end11.i176_crit_edge
  %.sink218 = phi ptr [ @atmel_prepare_rx_dma, %if.then18.if.end11.i176_crit_edge ], [ %.atmel_prepare_rx_pdc219, %if.else.i167 ]
  %atmel_rx_from_pdc.sink.i170 = phi ptr [ @atmel_rx_from_dma, %if.then18.if.end11.i176_crit_edge ], [ %atmel_rx_from_ring.atmel_rx_from_pdc220, %if.else.i167 ]
  %atmel_release_rx_pdc.sink.i171 = phi ptr [ @atmel_release_rx_dma, %if.then18.if.end11.i176_crit_edge ], [ %.atmel_release_rx_pdc221, %if.else.i167 ]
  %56 = ptrtoint ptr %prepare_rx to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %.sink218, ptr %prepare_rx, align 4
  %57 = ptrtoint ptr %schedule_rx5.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %atmel_rx_from_pdc.sink.i170, ptr %schedule_rx5.i, align 4
  %58 = ptrtoint ptr %release_rx6.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %atmel_release_rx_pdc.sink.i171, ptr %release_rx6.i, align 4
  %59 = ptrtoint ptr %use_dma_tx.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %use_dma_tx.i.i, align 4, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.i48.not.i175 = icmp eq i8 %60, 0
  br i1 %tobool.i48.not.i175, label %if.else14.i182, label %if.end11.i176.atmel_set_ops.exit189_crit_edge

if.end11.i176.atmel_set_ops.exit189_crit_edge:    ; preds = %if.end11.i176
  call void @__sanitizer_cov_trace_pc() #12
  br label %atmel_set_ops.exit189

if.else14.i182:                                   ; preds = %if.end11.i176
  call void @__sanitizer_cov_trace_pc() #12
  %use_pdc_tx.i.i179 = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 10
  %61 = ptrtoint ptr %use_pdc_tx.i.i179 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %use_pdc_tx.i.i179, align 1, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.i49.not.i180 = icmp eq i8 %62, 0
  %.atmel_prepare_tx_pdc = select i1 %tobool.i49.not.i180, ptr null, ptr @atmel_prepare_tx_pdc
  %atmel_tx_chars.atmel_tx_pdc = select i1 %tobool.i49.not.i180, ptr @atmel_tx_chars, ptr @atmel_tx_pdc
  %.atmel_release_tx_pdc = select i1 %tobool.i49.not.i180, ptr null, ptr @atmel_release_tx_pdc
  br label %atmel_set_ops.exit189

atmel_set_ops.exit189:                            ; preds = %if.else14.i182, %if.end11.i176.atmel_set_ops.exit189_crit_edge
  %atmel_prepare_tx_dma.sink = phi ptr [ @atmel_prepare_tx_dma, %if.end11.i176.atmel_set_ops.exit189_crit_edge ], [ %.atmel_prepare_tx_pdc, %if.else14.i182 ]
  %atmel_tx_pdc.sink.i185 = phi ptr [ @atmel_tx_dma, %if.end11.i176.atmel_set_ops.exit189_crit_edge ], [ %atmel_tx_chars.atmel_tx_pdc, %if.else14.i182 ]
  %atmel_release_tx_pdc.sink.i186 = phi ptr [ @atmel_release_tx_dma, %if.end11.i176.atmel_set_ops.exit189_crit_edge ], [ %.atmel_release_tx_pdc, %if.else14.i182 ]
  %63 = ptrtoint ptr %prepare_tx to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %atmel_prepare_tx_dma.sink, ptr %prepare_tx, align 4
  %64 = ptrtoint ptr %schedule_tx18.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %atmel_tx_pdc.sink.i185, ptr %schedule_tx18.i, align 4
  %65 = ptrtoint ptr %release_tx19.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %atmel_release_tx_pdc.sink.i186, ptr %release_tx19.i, align 4
  br label %if.end20

if.end20:                                         ; preds = %atmel_set_ops.exit189, %if.then14.if.end20_crit_edge, %if.end12.if.end20_crit_edge
  %fifo_size = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 32
  %66 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %fifo_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool21.not = icmp eq i32 %67, 0
  br i1 %tobool21.not, label %if.end20.if.end41_crit_edge, label %if.then22

if.end20.if.end41_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then22:                                        ; preds = %if.end20
  %68 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 1174405120) #10, !srcloc !208
  %70 = ptrtoint ptr %use_dma_tx.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %use_dma_tx.i.i, align 4, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.i.not = icmp eq i8 %71, 0
  %spec.select = select i1 %tobool.i.not, i32 0, i32 2
  %rts_high = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 33
  %72 = ptrtoint ptr %rts_high to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rts_high, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool28.not = icmp eq i32 %73, 0
  br i1 %tobool28.not, label %if.then22.if.end40_crit_edge, label %land.lhs.true

if.then22.if.end40_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

land.lhs.true:                                    ; preds = %if.then22
  %rts_low = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 34
  %74 = ptrtoint ptr %rts_low to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rts_low, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool29.not = icmp eq i32 %75, 0
  br i1 %tobool29.not, label %land.lhs.true.if.end40_crit_edge, label %if.then30

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %and32 = shl i32 %73, 16
  %shl33 = and i32 %and32, 4128768
  %and36 = shl i32 %75, 24
  %shl37 = and i32 %and36, 1056964608
  %or34 = or i32 %spec.select, %shl33
  %or38 = or i32 %or34, %shl37
  %or39 = or i32 %or38, 128
  br label %if.end40

if.end40:                                         ; preds = %if.then30, %land.lhs.true.if.end40_crit_edge, %if.then22.if.end40_crit_edge
  %fmr.0 = phi i32 [ %or39, %if.then30 ], [ %spec.select, %land.lhs.true.if.end40_crit_edge ], [ %spec.select, %if.then22.if.end40_crit_edge ]
  %76 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %membase.i, align 4
  %add.ptr.i192 = getelementptr i8, ptr %77, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i192, i32 %fmr.0) #10, !srcloc !208
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end20.if.end41_crit_edge
  %78 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %membase.i, align 4
  %add.ptr.i194 = getelementptr i8, ptr %79, i32 20
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i194) #10, !srcloc !207
  %irq_status_prev = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 25
  %81 = ptrtoint ptr %irq_status_prev to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %irq_status_prev, align 4
  %82 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 260) #10, !srcloc !208
  %84 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 80) #10, !srcloc !208
  %tx_stopped = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 40
  %86 = ptrtoint ptr %tx_stopped to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %tx_stopped, align 4
  %uart_timer = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 39
  tail call void @init_timer_key(ptr noundef %uart_timer, ptr noundef nonnull @atmel_uart_timer_callback, i32 noundef 0, ptr noundef nonnull @.str.59, ptr noundef nonnull @atmel_startup.__key) #10
  %use_pdc_rx.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 6
  %87 = ptrtoint ptr %use_pdc_rx.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %use_pdc_rx.i, align 1, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool.i197.not = icmp eq i8 %88, 0
  br i1 %tobool.i197.not, label %if.else54, label %if.then47

if.then47:                                        ; preds = %if.end41
  %has_hw_timer = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 38
  %89 = ptrtoint ptr %has_hw_timer to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %has_hw_timer, align 1, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool48.not = icmp eq i8 %90, 0
  br i1 %tobool48.not, label %if.then49, label %if.else

if.then49:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %91 = load volatile i32, ptr @jiffies, align 128
  %timeout1.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 37
  %92 = ptrtoint ptr %timeout1.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %timeout1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %93)
  %cmp.i = icmp sgt i32 %93, 6
  %div.i = sdiv i32 %93, 2
  %sub.i = add nsw i32 %div.i, -2
  %cond.i = select i1 %cmp.i, i32 %sub.i, i32 1
  %add = add i32 %cond.i, %91
  %call52 = tail call i32 @mod_timer(ptr noundef %uart_timer, i32 noundef %add) #10
  br label %if.end53

if.else:                                          ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  %rtor = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 36
  %94 = ptrtoint ptr %rtor to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rtor, align 4
  %96 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %membase.i, align 4
  %add.ptr.i199 = getelementptr i8, ptr %97, i32 %95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i199, i32 30) #10, !srcloc !208
  %98 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 2048) #10, !srcloc !208
  %100 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %membase.i, align 4
  %add.ptr.i202 = getelementptr i8, ptr %101, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i202, i32 264) #10, !srcloc !208
  br label %if.end53

if.end53:                                         ; preds = %if.else, %if.then49
  %102 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %membase.i, align 4
  %add.ptr.i204 = getelementptr i8, ptr %103, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i204, i32 1) #10, !srcloc !208
  br label %cleanup

if.else54:                                        ; preds = %if.end41
  %104 = ptrtoint ptr %use_dma_rx.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %use_dma_rx.i.i, align 4, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool.i205.not = icmp eq i8 %105, 0
  br i1 %tobool.i205.not, label %if.else67, label %if.then56

if.then56:                                        ; preds = %if.else54
  %has_hw_timer57 = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 38
  %106 = ptrtoint ptr %has_hw_timer57 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %has_hw_timer57, align 1, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool58.not = icmp eq i8 %107, 0
  br i1 %tobool58.not, label %if.then59, label %if.else64

if.then59:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %108 = load volatile i32, ptr @jiffies, align 128
  %timeout1.i206 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 37
  %109 = ptrtoint ptr %timeout1.i206 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %timeout1.i206, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %110)
  %cmp.i207 = icmp sgt i32 %110, 6
  %div.i208 = sdiv i32 %110, 2
  %sub.i209 = add nsw i32 %div.i208, -2
  %cond.i210 = select i1 %cmp.i207, i32 %sub.i209, i32 1
  %add62 = add i32 %cond.i210, %108
  %call63 = tail call i32 @mod_timer(ptr noundef %uart_timer, i32 noundef %add62) #10
  br label %cleanup

if.else64:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  %rtor65 = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 36
  %111 = ptrtoint ptr %rtor65 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %rtor65, align 4
  %113 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %membase.i, align 4
  %add.ptr.i212 = getelementptr i8, ptr %114, i32 %112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i212, i32 30) #10, !srcloc !208
  %115 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 2048) #10, !srcloc !208
  %117 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %membase.i, align 4
  %add.ptr.i215 = getelementptr i8, ptr %118, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i215, i32 256) #10, !srcloc !208
  br label %cleanup

if.else67:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #12
  %119 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %membase.i, align 4
  %add.ptr.i217 = getelementptr i8, ptr %120, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i217, i32 1) #10, !srcloc !208
  br label %cleanup

cleanup:                                          ; preds = %if.else67, %if.else64, %if.then59, %if.end53, %do.end
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_shutdown(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @atmel_disable_ms(ptr noundef %port)
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #10, !srcloc !208
  %tasklet_shutdown = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 24
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tasklet_shutdown, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %tasklet_shutdown, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tasklet_shutdown, ptr %tasklet_shutdown, i32 1, ptr elementtype(i32) %tasklet_shutdown) #10, !srcloc !224
  %uart_timer = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 39
  %call1 = tail call i32 @del_timer_sync(ptr noundef %uart_timer) #10
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  tail call void @synchronize_irq(i32 noundef %4) #10
  %tasklet_rx = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 22
  tail call void @tasklet_kill(ptr noundef %tasklet_rx) #10
  %tasklet_tx = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 23
  tail call void @tasklet_kill(ptr noundef %tasklet_tx) #10
  %5 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 32) #10, !srcloc !208
  %use_pdc_rx.i.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 6
  %7 = ptrtoint ptr %use_pdc_rx.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %use_pdc_rx.i.i, align 1, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.i.not.i = icmp eq i8 %8, 0
  %9 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i, align 4
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 2) #10, !srcloc !208
  %read_status_mask.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 28
  %11 = ptrtoint ptr %read_status_mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %read_status_mask.i, align 4
  %or.i = or i32 %12, 264
  %13 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %14, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %or.i) #10, !srcloc !208
  br label %atmel_stop_rx.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i10.i = getelementptr i8, ptr %10, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 1) #10, !srcloc !208
  br label %atmel_stop_rx.exit

atmel_stop_rx.exit:                               ; preds = %if.else.i, %if.then.i
  tail call void @atmel_stop_tx(ptr noundef %port)
  %15 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 256) #10, !srcloc !208
  %release_rx = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 53
  %17 = ptrtoint ptr %release_rx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %release_rx, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %atmel_stop_rx.exit.if.end_crit_edge, label %if.then

atmel_stop_rx.exit.if.end_crit_edge:              ; preds = %atmel_stop_rx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %atmel_stop_rx.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %18(ptr noundef %port) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %atmel_stop_rx.exit.if.end_crit_edge
  %release_tx = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 54
  %19 = ptrtoint ptr %release_tx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %release_tx, align 4
  %tobool3.not = icmp eq ptr %20, null
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %20(ptr noundef %port) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %head = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 27, i32 1
  %21 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %head, align 4
  %tail = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 27, i32 2
  %22 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %tail, align 4
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq, align 4
  %call9 = tail call ptr @free_irq(i32 noundef %24, ptr noundef %port) #10
  %use_pdc_tx.i.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 10
  %25 = ptrtoint ptr %use_pdc_tx.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %use_pdc_tx.i.i, align 1, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.i.not.i32 = icmp eq i8 %26, 0
  br i1 %tobool.i.not.i32, label %if.end6.atmel_flush_buffer.exit_crit_edge, label %if.then.i35

if.end6.atmel_flush_buffer.exit_crit_edge:        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %atmel_flush_buffer.exit

if.then.i35:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.i34 = getelementptr i8, ptr %28, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i34, i32 0) #10, !srcloc !208
  %ofs.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 11, i32 3
  %29 = ptrtoint ptr %ofs.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %ofs.i, align 4
  br label %atmel_flush_buffer.exit

atmel_flush_buffer.exit:                          ; preds = %if.then.i35, %if.end6.atmel_flush_buffer.exit_crit_edge
  %tx_len.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 26
  %30 = ptrtoint ptr %tx_len.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %tx_len.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_flush_buffer(ptr nocapture noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %use_pdc_tx.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 10
  %0 = ptrtoint ptr %use_pdc_tx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_pdc_tx.i, align 1, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not = icmp eq i8 %1, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !208
  %ofs = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 11, i32 3
  %4 = ptrtoint ptr %ofs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ofs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tx_len = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 26
  %5 = ptrtoint ptr %tx_len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %tx_len, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_set_termios(ptr noundef %port, ptr noundef %termios, ptr noundef %old) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !207
  %and = and i32 %2, -16128
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %3 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %uartclk, align 4
  %div2264 = lshr i32 %4, 4
  %call3 = tail call i32 @uart_get_baud_rate(ptr noundef %port, ptr noundef %termios, ptr noundef %old, i32 noundef 0, i32 noundef %div2264) #10
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %5 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %c_cflag, align 4
  %and4 = and i32 %6, 48
  %7 = zext i32 %and4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %and4, label %sw.default [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 16, label %sw.bb5
    i32 32, label %sw.bb7
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or6 = or i32 %and, 64
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or8 = or i32 %and, 128
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or9 = or i32 %and, 192
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb5, %entry.sw.epilog_crit_edge
  %mode.0 = phi i32 [ %or9, %sw.default ], [ %or8, %sw.bb7 ], [ %or6, %sw.bb5 ], [ %and, %entry.sw.epilog_crit_edge ]
  %and11 = shl i32 %6, 7
  %8 = and i32 %and11, 8192
  %9 = or i32 %mode.0, %8
  %and14 = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %and30 = and i32 %6, 512
  %and18 = lshr i32 %6, 20
  %10 = and i32 %and18, 1024
  %11 = or i32 %10, %and30
  %and30.sink = select i1 %tobool15.not, i32 2048, i32 %11
  %12 = or i32 %9, %and30.sink
  %call43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #10
  %read_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 28
  %13 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 32, ptr %read_status_mask, align 4
  %14 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %termios, align 4
  %and46 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  %spec.store.select = select i1 %tobool47.not, i32 32, i32 224
  %16 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.store.select, ptr %read_status_mask, align 4
  %17 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %termios, align 4
  %and53 = and i32 %18, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %sw.epilog.if.end58_crit_edge, label %if.then55

sw.epilog.if.end58_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then55:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %or57 = or i32 %spec.store.select, 4
  %19 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or57, ptr %read_status_mask, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %sw.epilog.if.end58_crit_edge
  %use_pdc_rx.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 6
  %20 = ptrtoint ptr %use_pdc_rx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %use_pdc_rx.i, align 1, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.i.not = icmp eq i8 %21, 0
  br i1 %tobool.i.not, label %if.end58.if.end62_crit_edge, label %if.then60

if.end58.if.end62_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then60:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %read_status_mask, align 4
  %24 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase.i, align 4
  %add.ptr.i271 = getelementptr i8, ptr %25, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i271, i32 %23) #10, !srcloc !208
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.end58.if.end62_crit_edge
  %ignore_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 29
  %26 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %ignore_status_mask, align 4
  %27 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %termios, align 4
  %and64 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  %spec.store.select267 = select i1 %tobool65.not, i32 0, i32 192
  %29 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %spec.store.select267, ptr %ignore_status_mask, align 4
  %30 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %termios, align 4
  %and71 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.end62.if.end83_crit_edge, label %if.then73

if.end62.if.end83_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.then73:                                        ; preds = %if.end62
  %or75 = or i32 %spec.store.select267, 4
  %32 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or75, ptr %ignore_status_mask, align 4
  %33 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %termios, align 4
  %and77 = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.then73.if.end83_crit_edge, label %if.then79

if.then73.if.end83_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.then79:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #12
  %or81 = or i32 %spec.store.select267, 36
  %35 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or81, ptr %ignore_status_mask, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then79, %if.then73.if.end83_crit_edge, %if.end62.if.end83_crit_edge
  %36 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %c_cflag, align 4
  tail call void @uart_update_timeout(ptr noundef %port, i32 noundef %37, i32 noundef %call3) #10
  %38 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %membase.i, align 4
  %add.ptr.i273 = getelementptr i8, ptr %39, i32 16
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i273) #10, !srcloc !207
  %41 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %membase.i, align 4
  %add.ptr.i275 = getelementptr i8, ptr %42, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i275, i32 -1) #10, !srcloc !208
  %43 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 160) #10, !srcloc !208
  %tx_stopped = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 40
  %45 = ptrtoint ptr %tx_stopped to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %tx_stopped, align 4
  %rs485 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56
  %46 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rs485, align 4
  %and87 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.else92, label %if.then89

if.then89:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  %delay_rts_after_send = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56, i32 2
  %48 = ptrtoint ptr %delay_rts_after_send to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %delay_rts_after_send, align 4
  %50 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %membase.i, align 4
  %add.ptr.i278 = getelementptr i8, ptr %51, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i278, i32 %49) #10, !srcloc !208
  %or91 = or i32 %12, 1
  br label %if.end128

if.else92:                                        ; preds = %if.end83
  %iso7816 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 58
  %52 = ptrtoint ptr %iso7816 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %iso7816, align 4
  %and94 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.else110, label %if.then96

if.then96:                                        ; preds = %if.else92
  %tg = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 58, i32 1
  %54 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tg, align 4
  %56 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %membase.i, align 4
  %add.ptr.i280 = getelementptr i8, ptr %57, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i280, i32 %55) #10, !srcloc !208
  %58 = ptrtoint ptr %iso7816 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %iso7816, align 4
  %and102 = and i32 %59, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %cmp103 = icmp eq i32 %and102, 0
  br i1 %cmp103, label %if.then105, label %if.else107

if.then105:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #12
  %or106 = or i32 %12, 50593796
  br label %if.end128

if.else107:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #12
  %or108 = or i32 %12, 50593798
  br label %if.end128

if.else110:                                       ; preds = %if.else92
  %60 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %61)
  %tobool113.not = icmp sgt i32 %61, -1
  br i1 %tobool113.not, label %if.else110.if.end128_crit_edge, label %if.then114

if.else110.if.end128_crit_edge:                   ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end128

if.then114:                                       ; preds = %if.else110
  %fifo_size.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 32
  %62 = ptrtoint ptr %fifo_size.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %fifo_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.i281.not = icmp eq i32 %63, 0
  br i1 %tobool.i281.not, label %if.then114.if.end128_crit_edge, label %land.lhs.true

if.then114.if.end128_crit_edge:                   ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end128

land.lhs.true:                                    ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #12
  %gpios = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 28
  %64 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %gpios, align 4
  %call117 = tail call ptr @mctrl_gpio_to_gpiod(ptr noundef %65, i32 noundef 0) #10
  %tobool118.not = icmp eq ptr %call117, null
  %or120 = or i32 %12, 2
  %spec.select269 = select i1 %tobool118.not, i32 %or120, i32 %12
  br label %if.end128

if.end128:                                        ; preds = %land.lhs.true, %if.then114.if.end128_crit_edge, %if.else110.if.end128_crit_edge, %if.else107, %if.then105, %if.then89
  %mode.3 = phi i32 [ %or91, %if.then89 ], [ %or106, %if.then105 ], [ %or108, %if.else107 ], [ %12, %if.then114.if.end128_crit_edge ], [ %12, %if.else110.if.end128_crit_edge ], [ %spec.select269, %land.lhs.true ]
  %has_frac_baudrate = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 37
  %66 = ptrtoint ptr %has_frac_baudrate to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %has_frac_baudrate, align 4, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool129.not = icmp eq i8 %67, 0
  br i1 %tobool129.not, label %if.else136, label %if.then130

if.then130:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %uartclk, align 4
  %mul = shl i32 %call3, 1
  %div133266 = and i32 %call3, 2147483647
  %add = add i32 %69, %div133266
  %div134 = udiv i32 %add, %mul
  %shr = lshr i32 %div134, 3
  %and135 = shl i32 %div134, 16
  %phi.bo = and i32 %and135, 458752
  br label %if.end138

if.else136:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  %call137 = tail call i32 @uart_get_divisor(ptr noundef %port, i32 noundef %call3) #10
  br label %if.end138

if.end138:                                        ; preds = %if.else136, %if.then130
  %cd.0 = phi i32 [ %shr, %if.then130 ], [ %call137, %if.else136 ]
  %fp.0 = phi i32 [ %phi.bo, %if.then130 ], [ 0, %if.else136 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %cd.0)
  %cmp139 = icmp ugt i32 %cd.0, 65535
  %or143 = or i32 %mode.3, 16
  %mode.4 = select i1 %cmp139, i32 %or143, i32 %mode.3
  %iso7816146 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 58
  %70 = ptrtoint ptr %iso7816146 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %iso7816146, align 4
  %and148 = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %if.then150, label %if.end138.if.end151_crit_edge

if.end138.if.end151_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end151

if.then150:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #12
  %div142265 = lshr i32 %cd.0, 3
  %cd.1 = select i1 %cmp139, i32 %div142265, i32 %cd.0
  %or145 = or i32 %cd.1, %fp.0
  %72 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %membase.i, align 4
  %add.ptr.i283 = getelementptr i8, ptr %73, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i283, i32 %or145) #10, !srcloc !208
  br label %if.end151

if.end151:                                        ; preds = %if.then150, %if.end138.if.end151_crit_edge
  %74 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %membase.i, align 4
  %add.ptr.i285 = getelementptr i8, ptr %75, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i285, i32 %mode.4) #10, !srcloc !208
  %and152 = and i32 %2, 15
  %and153 = and i32 %mode.4, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and152, i32 %and153)
  %cmp154.not = icmp eq i32 %and152, %and153
  br i1 %cmp154.not, label %if.end151.if.end163_crit_edge, label %if.then156

if.end151.if.end163_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end163

if.then156:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and153)
  %cmp158 = icmp eq i32 %and153, 2
  %. = select i1 %cmp158, i32 524288, i32 262144
  %76 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %.) #10, !srcloc !208
  br label %if.end163

if.end163:                                        ; preds = %if.then156, %if.end151.if.end163_crit_edge
  %78 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 260) #10, !srcloc !208
  %80 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 80) #10, !srcloc !208
  %82 = ptrtoint ptr %tx_stopped to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %tx_stopped, align 4
  %83 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %membase.i, align 4
  %add.ptr.i290 = getelementptr i8, ptr %84, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i290, i32 %40) #10, !srcloc !208
  %flags165 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %85 = ptrtoint ptr %flags165 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags165, align 4
  %and166 = and i32 %86, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166)
  %tobool167.not = icmp eq i32 %and166, 0
  br i1 %tobool167.not, label %lor.lhs.false, label %if.end163.if.then175_crit_edge

if.end163.if.then175_crit_edge:                   ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then175

lor.lhs.false:                                    ; preds = %if.end163
  %87 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %c_cflag, align 4
  %89 = and i32 %88, -2147481600
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %89)
  %.not = icmp eq i32 %89, 2048
  br i1 %.not, label %if.else176, label %lor.lhs.false.if.then175_crit_edge

lor.lhs.false.if.then175_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then175

if.then175:                                       ; preds = %lor.lhs.false.if.then175_crit_edge, %if.end163.if.then175_crit_edge
  tail call void @atmel_enable_ms(ptr noundef %port)
  br label %if.end177

if.else176:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @atmel_disable_ms(ptr noundef %port)
  br label %if.end177

if.end177:                                        ; preds = %if.else176, %if.then175
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call43) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_set_ldisc(ptr noundef %port, ptr nocapture noundef readonly %termios) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %c_line = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 4
  %0 = ptrtoint ptr %c_line to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %c_line, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %1)
  %cmp = icmp eq i8 %1, 18
  %flags = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %3, 2048
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %flags, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %port) #10
  tail call void @atmel_enable_ms(ptr noundef %port)
  br label %if.end15.sink.split

if.else:                                          ; preds = %entry
  %and = and i32 %3, -2049
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and, ptr %flags, align 4
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %6 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %c_cflag, align 4
  %8 = and i32 %7, -2147481600
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %8)
  %.not = icmp eq i32 %8, 2048
  br i1 %.not, label %if.then12, label %if.else.if.end15_crit_edge

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_lock_irq(ptr noundef %port) #10
  tail call fastcc void @atmel_disable_ms(ptr noundef %port)
  br label %if.end15.sink.split

if.end15.sink.split:                              ; preds = %if.then12, %if.then
  tail call void @_raw_spin_unlock_irq(ptr noundef %port) #10
  br label %if.end15

if.end15:                                         ; preds = %if.end15.sink.split, %if.else.if.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_serial_pm(ptr nocapture noundef %port, i32 noundef %state, i32 noundef %oldstate) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %state, label %do.end [
    i32 0, label %sw.bb
    i32 3, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %clk = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 1
  %1 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.clk_prepare_enable.exit_crit_edge

sw.bb.clk_prepare_enable.exit_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %sw.bb
  %call1.i = tail call i32 @clk_enable(ptr noundef %2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %2) #10
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %sw.bb.clk_prepare_enable.exit_crit_edge
  %backup_imr = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 3
  %3 = ptrtoint ptr %backup_imr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %backup_imr, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %5 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #10, !srcloc !208
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %membase.i14 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %7 = ptrtoint ptr %membase.i14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i14, align 4
  %add.ptr.i15 = getelementptr i8, ptr %8, i32 16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15) #10, !srcloc !207
  %backup_imr4 = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 3
  %10 = ptrtoint ptr %backup_imr4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %backup_imr4, align 4
  %11 = ptrtoint ptr %membase.i14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i14, align 4
  %add.ptr.i17 = getelementptr i8, ptr %12, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 -1) #10, !srcloc !208
  %clk5 = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 1
  %13 = ptrtoint ptr %clk5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk5, align 4
  tail call void @clk_disable(ptr noundef %14) #10
  tail call void @clk_unprepare(ptr noundef %14) #10
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.65, i32 noundef %state) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb2, %clk_prepare_enable.exit
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @atmel_type(ptr nocapture noundef readonly %port) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %1)
  %cmp = icmp eq i32 %1, 49
  %cond = select i1 %cmp, ptr @.str.67, ptr null
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_release_port(ptr nocapture noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %resource = getelementptr i8, ptr %3, i32 952
  %4 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resource, align 8
  %end.i = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  %sub.i = add i32 %7, 1
  %add.i = sub i32 %sub.i, %9
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %10 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mapbase, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %11, i32 noundef %add.i) #10
  %flags = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %tobool.not = icmp sgt i32 %13, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %14 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase, align 4
  tail call void @iounmap(ptr noundef %15) #10
  %16 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %membase, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_request_port(ptr nocapture noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %resource = getelementptr i8, ptr %3, i32 952
  %4 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resource, align 8
  %end.i = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  %sub.i = add i32 %7, 1
  %add.i = sub i32 %sub.i, %9
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %10 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mapbase, align 4
  %call1 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %11, i32 noundef %add.i, ptr noundef nonnull @.str, i32 noundef 0) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %tobool2.not = icmp sgt i32 %13, -1
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %14 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mapbase, align 4
  %call5 = tail call ptr @ioremap(i32 noundef %15, i32 noundef %add.i) #10
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %16 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call5, ptr %membase, align 4
  %cmp = icmp eq ptr %call5, null
  br i1 %cmp, label %if.then7, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mapbase, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %18, i32 noundef %add.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then7 ], [ -16, %entry.cleanup_crit_edge ], [ 0, %if.then3.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_config_port(ptr nocapture noundef %port, i32 noundef %flags) #3 align 64 {
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
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 49, ptr %type, align 4
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent.i, align 8
  %resource.i = getelementptr i8, ptr %4, i32 952
  %5 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %resource.i, align 8
  %end.i.i = getelementptr inbounds %struct.resource, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %6, align 4
  %sub.i.i = add i32 %8, 1
  %add.i.i = sub i32 %sub.i.i, %10
  %mapbase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %11 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mapbase.i, align 4
  %call1.i = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %12, i32 noundef %add.i.i, ptr noundef nonnull @.str, i32 noundef 0) #10
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %flags.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %tobool2.not.i = icmp sgt i32 %14, -1
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  %15 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mapbase.i, align 4
  %call5.i = tail call ptr @ioremap(i32 noundef %16, i32 noundef %add.i.i) #10
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %17 = ptrtoint ptr %membase.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5.i, ptr %membase.i, align 4
  %cmp.i = icmp eq ptr %call5.i, null
  br i1 %cmp.i, label %if.then7.i, label %if.then3.i.if.end_crit_edge

if.then3.i.if.end_crit_edge:                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then7.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mapbase.i, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %19, i32 noundef %add.i.i) #10
  br label %if.end

if.end:                                           ; preds = %if.then7.i, %if.then3.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atmel_verify_port(ptr nocapture noundef readonly %port, ptr nocapture noundef readonly %ser) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ser to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ser, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %switch.selectcmp.case1 = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %1)
  %switch.selectcmp.case2 = icmp eq i32 %1, 49
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %irq3 = getelementptr inbounds %struct.serial_struct, ptr %ser, i32 0, i32 3
  %4 = ptrtoint ptr %irq3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp4.not = icmp eq i32 %3, %5
  %io_type = getelementptr inbounds %struct.serial_struct, ptr %ser, i32 0, i32 9
  %6 = ptrtoint ptr %io_type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %io_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp7.not = icmp eq i8 %7, 2
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %8 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %uartclk, align 4
  %div38 = lshr i32 %9, 4
  %baud_base = getelementptr inbounds %struct.serial_struct, ptr %ser, i32 0, i32 7
  %10 = ptrtoint ptr %baud_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %baud_base, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div38, i32 %11)
  %cmp11.not = icmp eq i32 %div38, %11
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %12 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mapbase, align 4
  %iomem_base = getelementptr inbounds %struct.serial_struct, ptr %ser, i32 0, i32 14
  %14 = ptrtoint ptr %iomem_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iomem_base, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %16)
  %cmp15.not = icmp eq i32 %13, %16
  %iobase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %17 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iobase, align 4
  %port19 = getelementptr inbounds %struct.serial_struct, ptr %ser, i32 0, i32 2
  %19 = ptrtoint ptr %port19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp20.not = icmp eq i32 %18, %20
  %hub6 = getelementptr inbounds %struct.serial_struct, ptr %ser, i32 0, i32 11
  %21 = ptrtoint ptr %hub6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hub6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp24.not = icmp eq i32 %22, 0
  %23 = select i1 %cmp24.not, i1 %cmp20.not, i1 false
  %24 = select i1 %23, i1 %cmp15.not, i1 false
  %25 = select i1 %24, i1 %cmp11.not, i1 false
  %26 = select i1 %25, i1 %cmp7.not, i1 false
  %27 = select i1 %26, i1 %cmp4.not, i1 false
  %28 = select i1 %27, i1 %switch.selectcmp, i1 false
  %ret.6 = select i1 %28, i32 0, i32 -22
  ret i32 %ret.6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_poll_put_char(ptr nocapture noundef readonly %port, i8 noundef zeroext %ch) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8) #10, !srcloc !207
  %and9 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool.not10 = icmp eq i32 %and9, 0
  br i1 %tobool.not10, label %entry.do.end_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !225
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !226
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 20
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !207
  %and = and i32 %5, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.do.end_crit_edge, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  %6 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %7, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i7, i8 %ch) #10, !srcloc !211
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_poll_get_char(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9) #10, !srcloc !207
  %and10 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool.not11 = icmp eq i32 %and10, 0
  br i1 %tobool.not11, label %entry.do.end_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !227
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !228
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 20
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !207
  %and = and i32 %5, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.do.end_crit_edge, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  %6 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %7, i32 24
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i8) #10, !srcloc !229
  %conv = zext i8 %8 to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctrl_gpio_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mctrl_gpio_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mctrl_gpio_to_gpiod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctrl_gpio_enable_ms(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_interrupt(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock_suspended = getelementptr inbounds %struct.atmel_uart_port, ptr %dev_id, i32 0, i32 44
  tail call void @_raw_spin_lock(ptr noundef %lock_suspended) #10
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 2
  %suspended = getelementptr inbounds %struct.atmel_uart_port, ptr %dev_id, i32 0, i32 41
  br label %do.body

do.body:                                          ; preds = %if.end6.do.body_crit_edge, %entry
  %pass_counter.0 = phi i32 [ 0, %entry ], [ %inc, %if.end6.do.body_crit_edge ]
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !207
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %4, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28) #10, !srcloc !207
  %and = and i32 %5, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %if.end

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end:                                           ; preds = %do.body
  %6 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %suspended, align 1, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %pending5 = getelementptr inbounds %struct.atmel_uart_port, ptr %dev_id, i32 0, i32 42
  %8 = ptrtoint ptr %pending5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pending5, align 4
  %or = or i32 %9, %and
  store i32 %or, ptr %pending5, align 4
  %pending_status = getelementptr inbounds %struct.atmel_uart_port, ptr %dev_id, i32 0, i32 43
  %10 = ptrtoint ptr %pending_status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %2, ptr %pending_status, align 4
  %11 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %12, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %5) #10, !srcloc !208
  tail call void @pm_system_wakeup() #10
  br label %do.end

if.end6:                                          ; preds = %if.end
  tail call fastcc void @atmel_handle_receive(ptr noundef %dev_id, i32 noundef %and)
  tail call fastcc void @atmel_handle_status(ptr noundef %dev_id, i32 noundef %and, i32 noundef %2)
  tail call fastcc void @atmel_handle_transmit(ptr noundef %dev_id, i32 noundef %and)
  %inc = add nuw nsw i32 %pass_counter.0, 1
  %exitcond.not = icmp eq i32 %inc, 257
  br i1 %exitcond.not, label %if.end6.do.end_crit_edge, label %if.end6.do.body_crit_edge

if.end6.do.body_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end6.do.end_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %if.end6.do.end_crit_edge, %if.then4, %do.body.do.end_crit_edge
  %pass_counter.1 = phi i32 [ %pass_counter.0, %if.then4 ], [ %pass_counter.0, %do.body.do.end_crit_edge ], [ 257, %if.end6.do.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock_suspended) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pass_counter.1)
  %tobool8.not = icmp ne i32 %pass_counter.1, 0
  %cond = zext i1 %tobool8.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_tasklet_rx_func(ptr noundef %t) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -584
  tail call void @_raw_spin_lock(ptr noundef %add.ptr) #10
  %schedule_rx = getelementptr i8, ptr %t, i32 268
  %0 = ptrtoint ptr %schedule_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %schedule_rx, align 4
  tail call void %1(ptr noundef %add.ptr) #10
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_tasklet_tx_func(ptr noundef %t) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -608
  tail call void @_raw_spin_lock(ptr noundef %add.ptr) #10
  %schedule_tx = getelementptr i8, ptr %t, i32 248
  %0 = ptrtoint ptr %schedule_tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %schedule_tx, align 4
  tail call void %1(ptr noundef %add.ptr) #10
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_uart_timer_callback(ptr noundef %t) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tasklet_shutdown = getelementptr i8, ptr %t, i32 -64
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tasklet_shutdown, i32 noundef 4) #10
  %0 = ptrtoint ptr %tasklet_shutdown to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %tasklet_shutdown, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %state.i = getelementptr i8, ptr %t, i32 -108
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.tasklet_schedule.exit_crit_edge

if.then.tasklet_schedule.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %tasklet_rx = getelementptr i8, ptr %t, i32 -112
  tail call void @__tasklet_schedule(ptr noundef %tasklet_rx) #10
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %if.then.tasklet_schedule.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %timeout1.i = getelementptr i8, ptr %t, i32 -480
  %3 = ptrtoint ptr %timeout1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %timeout1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %cmp.i = icmp sgt i32 %4, 6
  %div.i = sdiv i32 %4, 2
  %sub.i = add nsw i32 %div.i, -2
  %cond.i = select i1 %cmp.i, i32 %sub.i, i32 1
  %add = add i32 %cond.i, %2
  %call2 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #10
  br label %if.end

if.end:                                           ; preds = %tasklet_schedule.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_system_wakeup() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmel_handle_receive(ptr noundef %port, i32 noundef %pending) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %use_pdc_rx.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 6
  %0 = ptrtoint ptr %use_pdc_rx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_pdc_rx.i, align 1, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not = icmp eq i8 %1, 0
  br i1 %tobool.i.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then:                                          ; preds = %entry
  %and = and i32 %pending, 264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then2:                                         ; preds = %if.then
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 264) #10, !srcloc !208
  %tasklet_rx = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 22
  %tasklet_shutdown.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 24
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tasklet_shutdown.i, i32 noundef 4) #10
  %4 = ptrtoint ptr %tasklet_shutdown.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %tasklet_shutdown.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then2.if.end_crit_edge

if.then2.if.end_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %if.then2
  %state.i.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 22, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__tasklet_schedule(ptr noundef %tasklet_rx) #10
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.then.i.if.end_crit_edge, %if.then2.if.end_crit_edge, %if.then.if.end_crit_edge
  %and3 = and i32 %pending, 228
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %if.end
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %6 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 256) #10, !srcloc !208
  %and.i = and i32 %pending, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i41 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i41, label %if.then5.if.end.i_crit_edge, label %if.then.i42

if.then5.if.end.i_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i42:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %and1.i = and i32 %pending, -193
  %brk.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 9
  %8 = ptrtoint ptr %brk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %brk.i, align 4
  %inc.i = add i32 %9, 1
  store i32 %inc.i, ptr %brk.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i42, %if.then5.if.end.i_crit_edge
  %status.addr.0.i = phi i32 [ %and1.i, %if.then.i42 ], [ %pending, %if.then5.if.end.i_crit_edge ]
  %and2.i = and i32 %status.addr.0.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then4.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %parity.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 8
  %10 = ptrtoint ptr %parity.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %parity.i, align 4
  %inc6.i = add i32 %11, 1
  store i32 %inc6.i, ptr %parity.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %if.end.i.if.end7.i_crit_edge
  %and8.i = and i32 %status.addr.0.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.end7.i.if.end13.i_crit_edge, label %if.then10.i

if.end7.i.if.end13.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %frame.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 6
  %12 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frame.i, align 4
  %inc12.i = add i32 %13, 1
  store i32 %inc12.i, ptr %frame.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then10.i, %if.end7.i.if.end13.i_crit_edge
  %and14.i = and i32 %status.addr.0.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end13.i.if.end7_crit_edge, label %if.then16.i

if.end13.i.if.end7_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %overrun.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 7
  %14 = ptrtoint ptr %overrun.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %overrun.i, align 4
  %inc18.i = add i32 %15, 1
  store i32 %inc18.i, ptr %overrun.i, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then16.i, %if.end13.i.if.end7_crit_edge, %if.end.if.end7_crit_edge, %entry.if.end7_crit_edge
  %use_dma_rx.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 5
  %16 = ptrtoint ptr %use_dma_rx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %use_dma_rx.i, align 4, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.i43.not = icmp eq i8 %17, 0
  %and10 = and i32 %pending, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %or.cond = or i1 %tobool11.not, %tobool.i43.not
  br i1 %or.cond, label %if.end7.if.end15_crit_edge, label %if.then12

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then12:                                        ; preds = %if.end7
  %membase.i44 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %18 = ptrtoint ptr %membase.i44 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i44, align 4
  %add.ptr.i45 = getelementptr i8, ptr %19, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 256) #10, !srcloc !208
  %tasklet_rx13 = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 22
  %tasklet_shutdown.i46 = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 24
  %call.i.i.i47 = tail call zeroext i1 @__kasan_check_read(ptr noundef %tasklet_shutdown.i46, i32 noundef 4) #10
  %20 = ptrtoint ptr %tasklet_shutdown.i46 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %tasklet_shutdown.i46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i48 = icmp eq i32 %21, 0
  br i1 %tobool.not.i48, label %if.then.i52, label %if.then12.if.end15_crit_edge

if.then12.if.end15_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then.i52:                                      ; preds = %if.then12
  %state.i.i49 = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 22, i32 1
  %call.i.i50 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i49) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i50)
  %tobool.not.i.i51 = icmp eq i32 %call.i.i50, 0
  br i1 %tobool.not.i.i51, label %if.then.i.i53, label %if.then.i52.if.end15_crit_edge

if.then.i52.if.end15_crit_edge:                   ; preds = %if.then.i52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then.i.i53:                                    ; preds = %if.then.i52
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__tasklet_schedule(ptr noundef %tasklet_rx13) #10
  br label %if.end15

if.end15:                                         ; preds = %if.then.i.i53, %if.then.i52.if.end15_crit_edge, %if.then12.if.end15_crit_edge, %if.end7.if.end15_crit_edge
  %and16 = and i32 %pending, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end15
  %membase.i.i56 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %22 = ptrtoint ptr %membase.i.i56 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i.i56, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 20
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !207
  %and45.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool.not46.i = icmp eq i32 %and45.i, 0
  br i1 %tobool.not46.i, label %if.then18.while.end.i_crit_edge, label %while.body.lr.ph.i

if.then18.while.end.i_crit_edge:                  ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.then18
  %break_active.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 4
  %tail.i.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 27, i32 2
  %head.i.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 27, i32 1
  %rx_ring.i.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 27
  br label %while.body.i

while.body.i:                                     ; preds = %atmel_buffer_rx_char.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %status.047.i = phi i32 [ %24, %while.body.lr.ph.i ], [ %52, %atmel_buffer_rx_char.exit.i.while.body.i_crit_edge ]
  %25 = ptrtoint ptr %membase.i.i56 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase.i.i56, align 4
  %add.ptr.i35.i = getelementptr i8, ptr %26, i32 24
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i35.i) #10, !srcloc !229
  %and3.i = and i32 %status.047.i, 228
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %lor.rhs.i, label %while.body.i.if.then.i59_crit_edge, !prof !216

while.body.i.if.then.i59_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i59

lor.rhs.i:                                        ; preds = %while.body.i
  %28 = ptrtoint ptr %break_active.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %break_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool5.not.i = icmp eq i32 %29, 0
  br i1 %tobool5.not.i, label %lor.rhs.i.if.end16.i_crit_edge, label %lor.rhs.i.if.then.i59_crit_edge, !prof !216

lor.rhs.i.if.then.i59_crit_edge:                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i59

lor.rhs.i.if.end16.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

if.then.i59:                                      ; preds = %lor.rhs.i.if.then.i59_crit_edge, %while.body.i.if.then.i59_crit_edge
  %30 = ptrtoint ptr %membase.i.i56 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase.i.i56, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 256) #10, !srcloc !208
  %and8.i57 = and i32 %status.047.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i57)
  %tobool9.not.i58 = icmp eq i32 %and8.i57, 0
  br i1 %tobool9.not.i58, label %if.then.i59.if.else.i_crit_edge, label %land.lhs.true.i

if.then.i59.if.else.i_crit_edge:                  ; preds = %if.then.i59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then.i59
  %32 = ptrtoint ptr %break_active.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %break_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool11.not.i = icmp eq i32 %33, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then12.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %break_active.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %break_active.i, align 4
  %35 = ptrtoint ptr %membase.i.i56 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase.i.i56, align 4
  %add.ptr.i38.i = getelementptr i8, ptr %36, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38.i, i32 4) #10, !srcloc !208
  br label %if.end16.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then.i59.if.else.i_crit_edge
  %37 = ptrtoint ptr %membase.i.i56 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %membase.i.i56, align 4
  %add.ptr.i40.i = getelementptr i8, ptr %38, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40.i, i32 4) #10, !srcloc !208
  %and14.i60 = and i32 %status.047.i, -5
  %39 = ptrtoint ptr %break_active.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %break_active.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else.i, %if.then12.i, %lor.rhs.i.if.end16.i_crit_edge
  %status.1.i = phi i32 [ %and14.i60, %if.else.i ], [ %status.047.i, %if.then12.i ], [ %status.047.i, %lor.rhs.i.if.end16.i_crit_edge ]
  %40 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tail.i.i, align 4
  %42 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %head.i.i, align 4
  %add.neg.i.i = xor i32 %43, -1
  %sub.i.i = add i32 %41, %add.neg.i.i
  %and.i.i = and i32 %sub.i.i, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i61 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i61, label %if.end16.i.atmel_buffer_rx_char.exit.i_crit_edge, label %if.end.i.i

if.end16.i.atmel_buffer_rx_char.exit.i_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atmel_buffer_rx_char.exit.i

if.end.i.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %rx_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rx_ring.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.atmel_uart_char, ptr %45, i32 %43
  %conv.i.i = trunc i32 %status.1.i to i16
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv.i.i, ptr %arrayidx.i.i, align 2
  %conv3.i.i = zext i8 %27 to i16
  %ch4.i.i = getelementptr %struct.atmel_uart_char, ptr %45, i32 %43, i32 1
  %47 = ptrtoint ptr %ch4.i.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv3.i.i, ptr %ch4.i.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !230
  %48 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %head.i.i, align 4
  %add9.i.i = add i32 %49, 1
  %and10.i.i = and i32 %add9.i.i, 1023
  store i32 %and10.i.i, ptr %head.i.i, align 4
  br label %atmel_buffer_rx_char.exit.i

atmel_buffer_rx_char.exit.i:                      ; preds = %if.end.i.i, %if.end16.i.atmel_buffer_rx_char.exit.i_crit_edge
  %50 = ptrtoint ptr %membase.i.i56 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %membase.i.i56, align 4
  %add.ptr.i42.i = getelementptr i8, ptr %51, i32 20
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42.i) #10, !srcloc !207
  %and.i62 = and i32 %52, 1
  %tobool.not.i63 = icmp eq i32 %and.i62, 0
  br i1 %tobool.not.i63, label %atmel_buffer_rx_char.exit.i.while.end.i_crit_edge, label %atmel_buffer_rx_char.exit.i.while.body.i_crit_edge

atmel_buffer_rx_char.exit.i.while.body.i_crit_edge: ; preds = %atmel_buffer_rx_char.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

atmel_buffer_rx_char.exit.i.while.end.i_crit_edge: ; preds = %atmel_buffer_rx_char.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %atmel_buffer_rx_char.exit.i.while.end.i_crit_edge, %if.then18.while.end.i_crit_edge
  %tasklet_rx.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 22
  %tasklet_shutdown.i.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 24
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tasklet_shutdown.i.i, i32 noundef 4) #10
  %53 = ptrtoint ptr %tasklet_shutdown.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %tasklet_shutdown.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i43.i = icmp eq i32 %54, 0
  br i1 %tobool.not.i43.i, label %if.then.i.i65, label %while.end.i.if.end23_crit_edge

while.end.i.if.end23_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then.i.i65:                                    ; preds = %while.end.i
  %state.i.i.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 22, i32 1
  %call.i.i.i64 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i64)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i64, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i65.if.end23_crit_edge

if.then.i.i65.if.end23_crit_edge:                 ; preds = %if.then.i.i65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then.i.i.i:                                    ; preds = %if.then.i.i65
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__tasklet_schedule(ptr noundef %tasklet_rx.i) #10
  br label %if.end23

if.else:                                          ; preds = %if.end15
  %and19 = and i32 %pending, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.else.if.end23_crit_edge, label %if.then21

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %membase.i66 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %55 = ptrtoint ptr %membase.i66 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %membase.i66, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 256) #10, !srcloc !208
  %57 = ptrtoint ptr %membase.i66 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %membase.i66, align 4
  %add.ptr.i68 = getelementptr i8, ptr %58, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 4) #10, !srcloc !208
  %break_active = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 4
  %59 = ptrtoint ptr %break_active to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %break_active, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.else.if.end23_crit_edge, %if.then.i.i.i, %if.then.i.i65.if.end23_crit_edge, %while.end.i.if.end23_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmel_handle_status(ptr noundef %port, i32 noundef %pending, i32 noundef %status) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %pending, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end30_crit_edge, label %if.then

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then:                                          ; preds = %entry
  %irq_status_prev = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 25
  %0 = ptrtoint ptr %irq_status_prev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_status_prev, align 4
  %xor = xor i32 %1, %status
  store i32 %status, ptr %irq_status_prev, align 4
  %and2 = and i32 %xor, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then.if.end30_crit_edge, label %if.then4

if.then.if.end30_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then4:                                         ; preds = %if.then
  %and5 = and i32 %xor, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.then4.if.end_crit_edge, label %if.then7

if.then4.if.end_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %rng = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 2
  %2 = ptrtoint ptr %rng to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rng, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %rng, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then4.if.end_crit_edge
  %and8 = and i32 %xor, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end.if.end13_crit_edge, label %if.then10

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dsr = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 1
  %4 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dsr, align 4
  %inc12 = add i32 %5, 1
  store i32 %inc12, ptr %dsr, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end.if.end13_crit_edge
  %and14 = and i32 %xor, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end19_crit_edge, label %if.then16

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %and17 = lshr i32 %status, 22
  %and17.lobit = and i32 %and17, 1
  %6 = xor i32 %and17.lobit, 1
  tail call void @uart_handle_dcd_change(ptr noundef %port, i32 noundef %6) #10
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end13.if.end19_crit_edge
  %and20 = and i32 %xor, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end27_crit_edge, label %if.then22

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %and23 = lshr i32 %status, 23
  %and23.lobit = and i32 %and23, 1
  %7 = xor i32 %and23.lobit, 1
  tail call void @uart_handle_cts_change(ptr noundef %port, i32 noundef %7) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.end19.if.end27_crit_edge
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state, align 4
  %delta_msr_wait = getelementptr inbounds %struct.tty_port, ptr %9, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %delta_msr_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %if.end30

if.end30:                                         ; preds = %if.end27, %if.then.if.end30_crit_edge, %entry.if.end30_crit_edge
  %and31 = and i32 %pending, 9216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end43_crit_edge, label %do.body

if.end30.if.end43_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

do.body:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_handle_status.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_handle_status, %if.then41)) #10
          to label %if.end43 [label %if.then41], !srcloc !215

if.then41:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_handle_status.__UNIQUE_ID_ddebug298, ptr noundef %11, ptr noundef nonnull @.str.61, i32 noundef %pending) #10
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %do.body, %if.end30.if.end43_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmel_handle_transmit(ptr noundef %port, i32 noundef %pending) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_done_mask = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 31
  %0 = ptrtoint ptr %tx_done_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_done_mask, align 4
  %and = and i32 %1, %pending
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then:                                          ; preds = %entry
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %1) #10, !srcloc !208
  %hd_start_rx = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 45
  %4 = ptrtoint ptr %hd_start_rx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hd_start_rx, align 4, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.then.if.end9_crit_edge, label %if.then3

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then3:                                         ; preds = %if.then
  %6 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %7, i32 20
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21) #10, !srcloc !207
  %and5 = and i32 %8, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %do.end, label %if.then3.if.end_crit_edge

if.then3.if.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.62) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then3.if.end_crit_edge
  %11 = ptrtoint ptr %hd_start_rx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %hd_start_rx, align 4
  %12 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 256) #10, !srcloc !208
  %14 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 16) #10, !srcloc !208
  %use_pdc_rx.i.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 6
  %16 = ptrtoint ptr %use_pdc_rx.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %use_pdc_rx.i.i, align 1, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.i.not.i = icmp eq i8 %17, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %read_status_mask.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 28
  %18 = ptrtoint ptr %read_status_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %read_status_mask.i, align 4
  %or.i = or i32 %19, 264
  %20 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or.i) #10, !srcloc !208
  %22 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %23, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 1) #10, !srcloc !208
  br label %if.end9

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %25, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 1) #10, !srcloc !208
  br label %if.end9

if.end9:                                          ; preds = %if.else.i, %if.then.i, %if.then.if.end9_crit_edge
  %tasklet_tx = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 23
  %tasklet_shutdown.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 24
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tasklet_shutdown.i, i32 noundef 4) #10
  %26 = ptrtoint ptr %tasklet_shutdown.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %tasklet_shutdown.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %if.then.i22, label %if.end9.if.end10_crit_edge

if.end9.if.end10_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then.i22:                                      ; preds = %if.end9
  %state.i.i = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 23, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i22.if.end10_crit_edge

if.then.i22.if.end10_crit_edge:                   ; preds = %if.then.i22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then.i.i:                                      ; preds = %if.then.i22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__tasklet_schedule(ptr noundef %tasklet_tx) #10
  br label %if.end10

if.end10:                                         ; preds = %if.then.i.i, %if.then.i22.if.end10_crit_edge, %if.end9.if.end10_crit_edge, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_handle_dcd_change(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_handle_cts_change(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmel_disable_ms(ptr nocapture noundef %port) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ms_irq_enabled = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 35
  %0 = ptrtoint ptr %ms_irq_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ms_irq_enabled, align 4, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %ms_irq_enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %ms_irq_enabled, align 4
  %gpios = getelementptr inbounds %struct.atmel_uart_port, ptr %port, i32 0, i32 28
  %3 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gpios, align 4
  tail call void @mctrl_gpio_disable_ms(ptr noundef %4) #10
  %5 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gpios, align 4
  %call3 = tail call ptr @mctrl_gpio_to_gpiod(ptr noundef %6, i32 noundef 0) #10
  %tobool4.not = icmp eq ptr %call3, null
  %spec.select = select i1 %tobool4.not, i32 524288, i32 0
  %7 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gpios, align 4
  %call8 = tail call ptr @mctrl_gpio_to_gpiod(ptr noundef %8, i32 noundef 1) #10
  %tobool9.not = icmp eq ptr %call8, null
  %or11 = or i32 %spec.select, 131072
  %idr.1 = select i1 %tobool9.not, i32 %or11, i32 %spec.select
  %9 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gpios, align 4
  %call14 = tail call ptr @mctrl_gpio_to_gpiod(ptr noundef %10, i32 noundef 3) #10
  %tobool15.not = icmp eq ptr %call14, null
  %or17 = or i32 %idr.1, 65536
  %idr.2 = select i1 %tobool15.not, i32 %or17, i32 %idr.1
  %11 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gpios, align 4
  %call20 = tail call ptr @mctrl_gpio_to_gpiod(ptr noundef %12, i32 noundef 2) #10
  %tobool21.not = icmp eq ptr %call20, null
  %or23 = or i32 %idr.2, 262144
  %idr.3 = select i1 %tobool21.not, i32 %or23, i32 %idr.2
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %13 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %idr.3) #10, !srcloc !208
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctrl_gpio_disable_ms(ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_divisor(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_suspend_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @at91_suspend_entering_slow_clock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_resume_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 99)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 99)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !25, !27, !28, !29, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !43, !44, !46, !48, !50, !52, !54, !56, !57, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !96, !97, !98, !99, !101, !102, !104, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !119, !121, !122, !124, !126, !127, !128, !129, !131, !132, !134, !135, !136, !138, !139, !140, !141, !142, !144, !145, !146, !147, !149, !151, !152, !153, !155, !156, !158, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !178, !179, !180, !182, !183, !185, !186, !188, !189, !191, !192, !194, !195, !196}
!llvm.module.flags = !{!198, !199, !200, !201, !202, !203, !204, !205}
!llvm.ident = !{!206}

!0 = !{ptr @__initcall__kmod_atmel_serial__313_3017_atmel_serial_init6, !1, !"__initcall__kmod_atmel_serial__313_3017_atmel_serial_init6", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/atmel_serial.c", i32 3017, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/atmel_serial.c", i32 2683, i32 17}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/tty/serial/atmel_serial.c", i32 2684, i32 14}
!6 = !{ptr @atmel_uart, !7, !"atmel_uart", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/atmel_serial.c", i32 2681, i32 27}
!8 = !{ptr @atmel_console, !9, !"atmel_console", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/atmel_serial.c", i32 2665, i32 23}
!10 = !{ptr @atmel_ports, !11, !"atmel_ports", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/atmel_serial.c", i32 189, i32 31}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/atmel_serial.c", i32 2998, i32 13}
!14 = !{ptr @atmel_serial_driver, !15, !"atmel_serial_driver", i1 false, i1 false}
!15 = !{!"../drivers/tty/serial/atmel_serial.c", i32 2992, i32 31}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/tty/serial/atmel_serial.c", i32 2851, i32 28}
!18 = !{ptr @atmel_serial_probe.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/tty/serial/atmel_serial.c", i32 2875, i32 2}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @atmel_ports_in_use, !22, !"atmel_ports_in_use", i1 false, i1 false}
!22 = !{!"../drivers/tty/serial/atmel_serial.c", i32 190, i32 8}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/tty/serial/atmel_serial.c", i32 2798, i32 6}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/tty/serial/atmel_serial.c", i32 2807, i32 3}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @atmel_serial_probe_fifos._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @atmel_serial_probe_fifos._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/tty/serial/atmel_serial.c", i32 2824, i32 2}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @atmel_serial_probe_fifos._entry.11, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @atmel_serial_probe_fifos._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/tty/serial/atmel_serial.c", i32 2826, i32 2}
!40 = !{ptr @atmel_serial_probe_fifos.__UNIQUE_ID_ddebug310, !39, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/tty/serial/atmel_serial.c", i32 2828, i32 2}
!43 = !{ptr @atmel_serial_probe_fifos.__UNIQUE_ID_ddebug311, !42, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/tty/serial/atmel_serial.c", i32 2509, i32 42}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/tty/serial/atmel_serial.c", i32 1751, i32 32}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/tty/serial/atmel_serial.c", i32 1752, i32 33}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/tty/serial/atmel_serial.c", i32 1764, i32 32}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/tty/serial/atmel_serial.c", i32 1208, i32 59}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/tty/serial/atmel_serial.c", i32 1211, i32 2}
!56 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @atmel_prepare_rx_dma._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @atmel_prepare_rx_dma._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @atmel_prepare_rx_dma.__key, !60, !"__key", i1 false, i1 false}
!60 = !{!"../drivers/tty/serial/atmel_serial.c", i32 1214, i32 2}
!61 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/tty/serial/atmel_serial.c", i32 1228, i32 3}
!64 = !{ptr @atmel_prepare_rx_dma.__UNIQUE_ID_ddebug296, !63, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/tty/serial/atmel_serial.c", i32 1231, i32 3}
!67 = !{ptr @atmel_prepare_rx_dma.__UNIQUE_ID_ddebug297, !66, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/tty/serial/atmel_serial.c", i32 1247, i32 3}
!70 = !{ptr @atmel_prepare_rx_dma._entry.27, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @atmel_prepare_rx_dma._entry_ptr.29, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/tty/serial/atmel_serial.c", i32 1261, i32 3}
!74 = !{ptr @atmel_prepare_rx_dma._entry.30, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @atmel_prepare_rx_dma._entry_ptr.32, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/tty/serial/atmel_serial.c", i32 1269, i32 3}
!78 = !{ptr @atmel_prepare_rx_dma._entry.33, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @atmel_prepare_rx_dma._entry_ptr.35, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/tty/serial/atmel_serial.c", i32 1279, i32 2}
!82 = !{ptr @atmel_prepare_rx_dma._entry.36, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @atmel_prepare_rx_dma._entry_ptr.38, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/tty/serial/atmel_serial.c", i32 1129, i32 3}
!86 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @atmel_rx_from_dma.__UNIQUE_ID_ddebug295, !85, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!88 = distinct !{null, !89, !"__already_done", i1 false, i1 false}
!89 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!90 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/tty/serial/atmel_serial.c", i32 1031, i32 59}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/tty/serial/atmel_serial.c", i32 1034, i32 2}
!96 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @atmel_prepare_tx_dma._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @atmel_prepare_tx_dma._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @atmel_prepare_tx_dma.__key, !100, !"__key", i1 false, i1 false}
!100 = !{!"../drivers/tty/serial/atmel_serial.c", i32 1037, i32 2}
!101 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @atmel_prepare_tx_dma.__UNIQUE_ID_ddebug293, !103, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!103 = !{!"../drivers/tty/serial/atmel_serial.c", i32 1051, i32 3}
!104 = !{ptr @atmel_prepare_tx_dma.__UNIQUE_ID_ddebug294, !105, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!105 = !{!"../drivers/tty/serial/atmel_serial.c", i32 1054, i32 3}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/tty/serial/atmel_serial.c", i32 1072, i32 3}
!108 = !{ptr @atmel_prepare_tx_dma._entry.47, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @atmel_prepare_tx_dma._entry_ptr.49, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/tty/serial/atmel_serial.c", i32 1079, i32 2}
!112 = !{ptr @atmel_prepare_tx_dma._entry.50, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @atmel_prepare_tx_dma._entry_ptr.52, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/tty/serial/atmel_serial.c", i32 997, i32 4}
!116 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @atmel_tx_dma._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @atmel_tx_dma._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @atmel_tx_dma._entry.55, !120, !"_entry", i1 false, i1 false}
!120 = !{!"../drivers/tty/serial/atmel_serial.c", i32 1008, i32 4}
!121 = !{ptr @atmel_tx_dma._entry_ptr.56, !120, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @atmel_pops, !123, !"atmel_pops", i1 false, i1 false}
!123 = !{!"../drivers/tty/serial/atmel_serial.c", i32 2451, i32 30}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/tty/serial/atmel_serial.c", i32 1907, i32 3}
!126 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @atmel_startup._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @atmel_startup._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @atmel_startup.__key, !130, !"__key", i1 false, i1 false}
!130 = !{!"../drivers/tty/serial/atmel_serial.c", i32 1970, i32 2}
!131 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/tty/serial/atmel_serial.c", i32 1408, i32 3}
!134 = !{ptr @.str.61, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @atmel_handle_status.__UNIQUE_ID_ddebug298, !133, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!136 = !{ptr @.str.62, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/tty/serial/atmel_serial.c", i32 1366, i32 5}
!138 = !{ptr @.str.63, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.64, !137, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @atmel_handle_transmit._entry, !137, !"_entry", i1 false, i1 false}
!141 = !{ptr @atmel_handle_transmit._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.65, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/tty/serial/atmel_serial.c", i32 2123, i32 3}
!144 = !{ptr @.str.66, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @atmel_serial_pm._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @atmel_serial_pm._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/tty/serial/atmel_serial.c", i32 2358, i32 38}
!149 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/tty/serial/atmel_serial.c", i32 304, i32 3}
!151 = !{ptr @.str.69, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @atmel_config_rs485.__UNIQUE_ID_ddebug290, !150, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!153 = !{ptr @.str.70, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/tty/serial/atmel_serial.c", i32 314, i32 3}
!155 = !{ptr @atmel_config_rs485.__UNIQUE_ID_ddebug291, !154, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!156 = !{ptr @.str.71, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/tty/serial/atmel_serial.c", i32 373, i32 4}
!158 = !{ptr @.str.72, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @atmel_config_iso7816._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @atmel_config_iso7816._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.74, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/tty/serial/atmel_serial.c", i32 386, i32 4}
!163 = !{ptr @atmel_config_iso7816._entry.73, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @atmel_config_iso7816._entry_ptr.75, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.77, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/tty/serial/atmel_serial.c", i32 402, i32 4}
!167 = !{ptr @atmel_config_iso7816._entry.76, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @atmel_config_iso7816._entry_ptr.78, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.80, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/tty/serial/atmel_serial.c", i32 405, i32 4}
!171 = !{ptr @atmel_config_iso7816._entry.79, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @atmel_config_iso7816._entry_ptr.81, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.82, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/tty/serial/atmel_serial.c", i32 424, i32 3}
!175 = !{ptr @atmel_config_iso7816.__UNIQUE_ID_ddebug292, !174, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!176 = !{ptr @.str.83, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/tty/serial/atmel_serial.c", i32 1835, i32 3}
!178 = !{ptr @.str.84, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @atmel_get_ip_name.__UNIQUE_ID_ddebug301, !177, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!180 = !{ptr @.str.85, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/tty/serial/atmel_serial.c", i32 1839, i32 3}
!182 = !{ptr @atmel_get_ip_name.__UNIQUE_ID_ddebug302, !181, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!183 = !{ptr @.str.86, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/tty/serial/atmel_serial.c", i32 1860, i32 3}
!185 = !{ptr @atmel_get_ip_name.__UNIQUE_ID_ddebug303, !184, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!186 = !{ptr @.str.87, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/tty/serial/atmel_serial.c", i32 1868, i32 4}
!188 = !{ptr @atmel_get_ip_name.__UNIQUE_ID_ddebug304, !187, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!189 = !{ptr @.str.88, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/tty/serial/atmel_serial.c", i32 1875, i32 4}
!191 = !{ptr @atmel_get_ip_name.__UNIQUE_ID_ddebug305, !190, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!192 = !{ptr @.str.89, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/tty/serial/atmel_serial.c", i32 1878, i32 4}
!194 = !{ptr @atmel_get_ip_name._entry, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @atmel_get_ip_name._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @atmel_serial_dt_ids, !197, !"atmel_serial_dt_ids", i1 false, i1 false}
!197 = !{!"../drivers/tty/serial/atmel_serial.c", i32 193, i32 34}
!198 = !{i32 1, !"wchar_size", i32 2}
!199 = !{i32 1, !"min_enum_size", i32 4}
!200 = !{i32 8, !"branch-target-enforcement", i32 0}
!201 = !{i32 8, !"sign-return-address", i32 0}
!202 = !{i32 8, !"sign-return-address-all", i32 0}
!203 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!204 = !{i32 7, !"uwtable", i32 1}
!205 = !{i32 7, !"frame-pointer", i32 2}
!206 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!207 = !{i64 6777762}
!208 = !{i64 6777344}
!209 = !{i64 2155639439}
!210 = !{i64 2155639281}
!211 = !{i64 6777147}
!212 = !{i8 0, i8 2}
!213 = !{i64 2155643081}
!214 = !{i64 2155642923}
!215 = !{i64 2148574262, i64 2148574267, i64 2148574280, i64 2148574324, i64 2148574358, i64 2148574379}
!216 = !{!"branch_weights", i32 2000, i32 1}
!217 = !{i64 2155571152, i64 2155571651, i64 2155571189, i64 2155571245, i64 2155571279, i64 2155571303, i64 2155571344, i64 2155571365, i64 2155571393, i64 2155571427}
!218 = !{i64 2154327980, i64 2154328472, i64 2154328017, i64 2154328073, i64 2154328107, i64 2154328131, i64 2154328172, i64 2154328193, i64 2154328221, i64 2154328255}
!219 = !{i64 2154329590, i64 2154330082, i64 2154329627, i64 2154329683, i64 2154329717, i64 2154329741, i64 2154329782, i64 2154329803, i64 2154329831, i64 2154329865}
!220 = !{!"branch_weights", i32 1, i32 2000}
!221 = !{i64 2155566901, i64 2155567400, i64 2155566938, i64 2155566994, i64 2155567028, i64 2155567052, i64 2155567093, i64 2155567114, i64 2155567142, i64 2155567176}
!222 = !{i64 2155594156}
!223 = !{i64 2155553119, i64 2155553618, i64 2155553156, i64 2155553212, i64 2155553246, i64 2155553270, i64 2155553311, i64 2155553332, i64 2155553360, i64 2155553394}
!224 = !{i64 2148749664, i64 2148749690, i64 2148749719, i64 2148749753, i64 2148749784, i64 2148749807}
!225 = !{i64 2155637203}
!226 = !{i64 2155637045}
!227 = !{i64 2155636841}
!228 = !{i64 2155636683}
!229 = !{i64 6777542}
!230 = !{i64 2155543178}
