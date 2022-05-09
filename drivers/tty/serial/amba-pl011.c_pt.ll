; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/amba-pl011.c_pt.bc'
source_filename = "../drivers/tty/serial/amba-pl011.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amba_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vendor_data = type { ptr, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.amba_id = type { i32, i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.uart_amba_port = type { %struct.uart_port, ptr, ptr, ptr, i32, i32, i32, i32, i32, [12 x i8], i8, i32, i8, i8, %struct.pl011_dmarx_data, %struct.pl011_dmatx_data, i8 }
%struct.pl011_dmarx_data = type { ptr, %struct.completion, i8, %struct.pl011_sgbuf, %struct.pl011_sgbuf, i32, i8, %struct.timer_list, i32, i32, i8, i32, i32 }
%struct.pl011_sgbuf = type { %struct.scatterlist, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.pl011_dmatx_data = type { ptr, %struct.scatterlist, ptr, i8 }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }
%struct.amba_pl011_data = type { ptr, ptr, ptr, i8, i32, i32, ptr, ptr }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.42, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.42 = type { ptr }
%struct.llist_head = type { ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.40, %struct.anon.41, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.40 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.41 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.amba_device = type { %struct.device, %struct.resource, ptr, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.amba_cs_uci_id = type { i32, i32, i32, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_slave_caps = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i8 }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.page = type { i32, %union.anon.2, %union.anon.78, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.78 = type { %struct.atomic_t }

@__UNIQUE_ID___earlycon_pl011300 = internal constant %struct.earlycon_id { [15 x i8] c"pl011\00\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"arm,pl011\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pl011_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_pl011301 = internal constant %struct.earlycon_id { [15 x i8] c"pl011\00\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"arm,sbsa-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pl011_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_qdf2400_e44302 = internal constant %struct.earlycon_id { [15 x i8] c"qdf2400_e44\00\00\00\00", i8 0, [128 x i8] zeroinitializer, ptr @qdf2400_e44_early_console_setup }, section "__earlycon_table", align 4
@arm_sbsa_uart_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sbsa_uart_probe, ptr @sbsa_uart_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @sbsa_uart_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pl011_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@pl011_driver = internal global { %struct.amba_driver, [36 x i8] } { %struct.amba_driver { %struct.device_driver { ptr @.str.13, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pl011_dev_pm_ops, ptr null, ptr null }, ptr @pl011_probe, ptr @pl011_remove, ptr null, ptr @pl011_ids }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_amba_pl011__307_2946_pl011_init3 = internal global ptr @pl011_init, section ".initcall3.init", align 4
@__exitcall_pl011_exit = internal global ptr @pl011_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author308 = internal constant [50 x i8] c"amba_pl011.author=ARM Ltd/Deep Blue Solutions Ltd\00", section ".modinfo", align 1
@__UNIQUE_ID_description309 = internal constant [51 x i8] c"amba_pl011.description=ARM AMBA serial port driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file310 = internal constant [46 x i8] c"amba_pl011.file=drivers/tty/serial/amba-pl011\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [23 x i8] c"amba_pl011.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sbsa-uart\00", [22 x i8] zeroinitializer }, align 32
@sbsa_uart_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,sbsa-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@pl011_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pl011_suspend, ptr @pl011_resume, ptr @pl011_suspend, ptr @pl011_resume, ptr @pl011_suspend, ptr @pl011_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"current-speed\00", [18 x i8] zeroinitializer }, align 32
@vendor_sbsa = internal constant { %struct.vendor_data, [56 x i8] } { %struct.vendor_data { ptr @pl011_std_offsets, i32 0, i32 8, i32 2, i32 1, i32 256, i32 0, i8 1, i8 0, i8 0, i8 0, i8 1, i8 1, ptr null }, [56 x i8] zeroinitializer }, align 32
@sbsa_uart_pops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @pl011_tx_empty, ptr @sbsa_uart_set_mctrl, ptr @sbsa_uart_get_mctrl, ptr @pl011_stop_tx, ptr @pl011_start_tx, ptr null, ptr null, ptr null, ptr @pl011_stop_rx, ptr null, ptr null, ptr @sbsa_uart_startup, ptr @sbsa_uart_shutdown, ptr null, ptr @sbsa_uart_set_termios, ptr null, ptr null, ptr @pl011_type, ptr null, ptr null, ptr @pl011_config_port, ptr @pl011_verify_port, ptr null, ptr @pl011_hwinit, ptr @pl011_put_poll_char, ptr @pl011_get_poll_char }, [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SBSA\00", [27 x i8] zeroinitializer }, align 32
@amba_ports = internal global { [14 x ptr], [40 x i8] } zeroinitializer, align 32
@pl011_std_offsets = internal global { <{ [15 x i16], [9 x i16] }>, [48 x i8] } { <{ [15 x i16], [9 x i16] }> <{ [15 x i16] [i16 0, i16 0, i16 0, i16 24, i16 44, i16 44, i16 36, i16 40, i16 48, i16 52, i16 56, i16 60, i16 64, i16 68, i16 72], [9 x i16] zeroinitializer }>, [48 x i8] zeroinitializer }, align 32
@pl011_rs485_tx_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1266, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"timeout while draining hardware tx queue\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pl011_rs485_tx_stop\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/tty/serial/amba-pl011.c\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pl011_rs485_tx_stop._entry_ptr = internal global ptr @pl011_rs485_tx_stop._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@pl011_dma_tx_refill.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.6, ptr @.str.11, i8 0, i8 -102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"amba_pl011\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pl011_dma_tx_refill\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unable to map TX DMA\0A\00", [42 x i8] zeroinitializer }, align 32
@pl011_dma_tx_refill.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.6, ptr @.str.12, i8 0, i8 -99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TX DMA busy\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart-pl011\00", [21 x i8] zeroinitializer }, align 32
@pl011_dma_rx_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.6, i32 933, ptr @.str.16, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to pause DMA transfer\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pl011_dma_rx_irq\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@pl011_dma_rx_irq._entry_ptr = internal global ptr @pl011_dma_rx_irq._entry, section ".printk_index", align 4
@pl011_dma_rx_irq._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.6, i32 937, ptr @.str.16, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@pl011_dma_rx_irq._entry_ptr.18 = internal global ptr @pl011_dma_rx_irq._entry.17, section ".printk_index", align 4
@pl011_dma_rx_irq.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.15, ptr @.str.6, ptr @.str.19, i8 0, i8 -17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"could not retrigger RX DMA job fall back to interrupt mode\0A\00", [36 x i8] zeroinitializer }, align 32
@pl011_dma_rx_chars._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.6, i32 881, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"couldn't insert all characters (TTY is full?)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pl011_dma_rx_chars\00", [45 x i8] zeroinitializer }, align 32
@pl011_dma_rx_chars._entry_ptr = internal global ptr @pl011_dma_rx_chars._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@pl011_dma_rx_callback.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.22, ptr @.str.6, ptr @.str.19, i8 0, i8 -5, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pl011_dma_rx_callback\00", [42 x i8] zeroinitializer }, align 32
@pl011_rx_chars.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.23, ptr @.str.6, ptr @.str.24, i8 1, i8 84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pl011_rx_chars\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"could not trigger RX DMA job fall back to interrupt mode again\0A\00", [32 x i8] zeroinitializer }, align 32
@nr_irqs = external dso_local local_unnamed_addr global i32, align 4
@pl011_probe_dt_alias.seen_dev_with_alias = internal global { i1, [31 x i8] } zeroinitializer, align 32
@pl011_probe_dt_alias.seen_dev_without_alias = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@pl011_probe_dt_alias._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.6, i32 2623, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"requested serial port %d  not available.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pl011_probe_dt_alias\00", [43 x i8] zeroinitializer }, align 32
@pl011_probe_dt_alias._entry_ptr = internal global ptr @pl011_probe_dt_alias._entry, section ".printk_index", align 4
@pl011_probe_dt_alias._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.6, i32 2629, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"aliased and non-aliased serial devices found in device tree. Serial port enumeration may be unpredictable.\0A\00", [52 x i8] zeroinitializer }, align 32
@pl011_probe_dt_alias._entry_ptr.30 = internal global ptr @pl011_probe_dt_alias._entry.28, section ".printk_index", align 4
@amba_reg = internal global { %struct.uart_driver, [60 x i8] } { %struct.uart_driver { ptr null, ptr @.str.33, ptr @.str.33, i32 204, i32 64, i32 14, ptr @amba_console, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@pl011_register_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.6, i32 2720, ptr @.str.16, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to register AMBA-PL011 driver\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pl011_register_port\00", [44 x i8] zeroinitializer }, align 32
@pl011_register_port._entry_ptr = internal global ptr @pl011_register_port._entry, section ".printk_index", align 4
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ttyAMA\00", [25 x i8] zeroinitializer }, align 32
@amba_console = internal global { %struct.console, [60 x i8] } { %struct.console { [16 x i8] c"ttyAMA\00\00\00\00\00\00\00\00\00\00", ptr @pl011_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @pl011_console_setup, ptr null, ptr @pl011_console_match, i16 17, i16 -1, i32 0, i32 0, i32 0, ptr @amba_reg, ptr null }, [60 x i8] zeroinitializer }, align 32
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qdf2400_e44\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pl011\00", [26 x i8] zeroinitializer }, align 32
@pl011_ids = internal constant { [3 x %struct.amba_id], [60 x i8] } { [3 x %struct.amba_id] [%struct.amba_id { i32 266257, i32 1048575, ptr @vendor_arm }, %struct.amba_id { i32 3672066, i32 16777215, ptr @vendor_st }, %struct.amba_id zeroinitializer], [60 x i8] zeroinitializer }, align 32
@amba_pl011_pops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @pl011_tx_empty, ptr @pl011_set_mctrl, ptr @pl011_get_mctrl, ptr @pl011_stop_tx, ptr @pl011_start_tx, ptr null, ptr null, ptr null, ptr @pl011_stop_rx, ptr @pl011_enable_ms, ptr @pl011_break_ctl, ptr @pl011_startup, ptr @pl011_shutdown, ptr @pl011_dma_flush_buffer, ptr @pl011_set_termios, ptr null, ptr null, ptr @pl011_type, ptr null, ptr null, ptr @pl011_config_port, ptr @pl011_verify_port, ptr null, ptr @pl011_hwinit, ptr @pl011_put_poll_char, ptr @pl011_get_poll_char }, [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PL011 rev%u\00", [20 x i8] zeroinitializer }, align 32
@pl011_dma_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.6, i32 1090, ptr @.str.16, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"no memory for DMA TX buffer\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pl011_dma_startup\00", [46 x i8] zeroinitializer }, align 32
@pl011_dma_startup._entry_ptr = internal global ptr @pl011_dma_startup._entry, section ".printk_index", align 4
@pl011_dma_startup._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.6, i32 1109, ptr @.str.16, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to init DMA %s: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@pl011_dma_startup._entry_ptr.41 = internal global ptr @pl011_dma_startup._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RX buffer A\00", [20 x i8] zeroinitializer }, align 32
@pl011_dma_startup._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.6, i32 1117, ptr @.str.16, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@pl011_dma_startup._entry_ptr.44 = internal global ptr @pl011_dma_startup._entry.43, section ".printk_index", align 4
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RX buffer B\00", [20 x i8] zeroinitializer }, align 32
@pl011_dma_startup.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.38, ptr @.str.6, ptr @.str.46, i8 1, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"could not trigger initial RX DMA job, fall back to interrupt mode\0A\00", [61 x i8] zeroinitializer }, align 32
@pl011_dma_startup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"(&uap->dmarx.timer)\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@pl011_dma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.6, i32 395, ptr @.str.51, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no DMA platform data\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pl011_dma_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pl011_dma_probe._entry_ptr = internal global ptr @pl011_dma_probe._entry, section ".printk_index", align 4
@pl011_dma_probe._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.50, ptr @.str.6, i32 406, ptr @.str.16, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no TX DMA channel!\0A\00", [44 x i8] zeroinitializer }, align 32
@pl011_dma_probe._entry_ptr.54 = internal global ptr @pl011_dma_probe._entry.52, section ".printk_index", align 4
@pl011_dma_probe._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.50, ptr @.str.6, i32 415, ptr @.str.51, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA channel TX %s\0A\00", [45 x i8] zeroinitializer }, align 32
@pl011_dma_probe._entry_ptr.57 = internal global ptr @pl011_dma_probe._entry.55, section ".printk_index", align 4
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@pl011_dma_probe._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.50, ptr @.str.6, i32 424, ptr @.str.16, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no RX DMA channel!\0A\00", [44 x i8] zeroinitializer }, align 32
@pl011_dma_probe._entry_ptr.61 = internal global ptr @pl011_dma_probe._entry.59, section ".printk_index", align 4
@pl011_dma_probe._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.50, ptr @.str.6, i32 450, ptr @.str.51, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"RX DMA disabled - no residue processing\0A\00", [55 x i8] zeroinitializer }, align 32
@pl011_dma_probe._entry_ptr.64 = internal global ptr @pl011_dma_probe._entry.62, section ".printk_index", align 4
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"auto-poll\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"poll-rate-ms\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"poll-timeout-ms\00", [16 x i8] zeroinitializer }, align 32
@pl011_dma_probe._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.50, ptr @.str.6, i32 497, ptr @.str.51, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA channel RX %s\0A\00", [45 x i8] zeroinitializer }, align 32
@pl011_dma_probe._entry_ptr.70 = internal global ptr @pl011_dma_probe._entry.68, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@vendor_arm = internal global { %struct.vendor_data, [56 x i8] } { %struct.vendor_data { ptr @pl011_std_offsets, i32 18, i32 8, i32 2, i32 1, i32 256, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @get_fifosize_arm }, [56 x i8] zeroinitializer }, align 32
@vendor_st = internal global { %struct.vendor_data, [56 x i8] } { %struct.vendor_data { ptr @pl011_st_offsets, i32 45, i32 8, i32 2, i32 1, i32 256, i32 0, i8 0, i8 1, i8 1, i8 1, i8 0, i8 0, ptr @get_fifosize_st }, [56 x i8] zeroinitializer }, align 32
@pl011_st_offsets = internal global { [24 x i16], [48 x i8] } { [24 x i16] [i16 0, i16 8, i16 12, i16 24, i16 28, i16 44, i16 36, i16 40, i16 48, i16 52, i16 56, i16 60, i16 64, i16 68, i16 72, i16 80, i16 84, i16 88, i16 92, i16 96, i16 128, i16 132, i16 256, i16 348], [48 x i8] zeroinitializer }, align 32
@pl011_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.6, i32 2929, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016Serial: AMBA PL011 UART driver\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl011_init\00", [21 x i8] zeroinitializer }, align 32
@pl011_init._entry_ptr = internal global ptr @pl011_init._entry, section ".printk_index", align 4
@pl011_init._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.6, i32 2932, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014could not register SBSA UART platform driver\0A\00", [48 x i8] zeroinitializer }, align 32
@pl011_init._entry_ptr.75 = internal global ptr @pl011_init._entry.73, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 16, i64 32]
@___asan_gen_.76 = private unnamed_addr constant [30 x i8] c"arm_sbsa_uart_platform_driver\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2888, i32 31 }
@___asan_gen_.79 = private unnamed_addr constant [13 x i8] c"pl011_driver\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2916, i32 27 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2892, i32 11 }
@___asan_gen_.85 = private unnamed_addr constant [19 x i8] c"sbsa_uart_of_match\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2875, i32 34 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"pl011_dev_pm_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2802, i32 8 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2818, i32 34 }
@___asan_gen_.94 = private unnamed_addr constant [12 x i8] c"vendor_sbsa\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 113, i32 33 }
@___asan_gen_.97 = private unnamed_addr constant [15 x i8] c"sbsa_uart_pops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2234, i32 30 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2853, i32 41 }
@___asan_gen_.103 = private unnamed_addr constant [11 x i8] c"amba_ports\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2254, i32 31 }
@___asan_gen_.106 = private unnamed_addr constant [18 x i8] c"pl011_std_offsets\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 58, i32 12 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1265, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 617, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 630, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1748, i32 60 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 933, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 937, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 958, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 880, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1006, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1360, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant [41 x i8] c"pl011_probe_dt_alias.seen_dev_with_alias\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [44 x i8] c"pl011_probe_dt_alias.seen_dev_without_alias\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2616, i32 28 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2623, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2629, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant [9 x i8] c"amba_reg\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2592, i32 27 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2719, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2594, i32 18 }
@___asan_gen_.213 = private unnamed_addr constant [13 x i8] c"amba_console\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2461, i32 23 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2431, i32 20 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2431, i32 58 }
@___asan_gen_.222 = private unnamed_addr constant [10 x i8] c"pl011_ids\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2900, i32 29 }
@___asan_gen_.225 = private unnamed_addr constant [16 x i8] c"amba_pl011_pops\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2202, i32 30 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2761, i32 41 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1090, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1108, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1116, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1141, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1144, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 386, i32 31 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 395, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 406, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 414, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 418, i32 40 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 424, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 449, i32 5 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 480, i32 21 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 485, i32 7 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 490, i32 7 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 496, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant [11 x i8] c"vendor_arm\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 98, i32 27 }
@___asan_gen_.324 = private unnamed_addr constant [10 x i8] c"vendor_st\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 176, i32 27 }
@___asan_gen_.327 = private unnamed_addr constant [17 x i8] c"pl011_st_offsets\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 144, i32 12 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2929, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.342 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.343 = private constant [35 x i8] c"../drivers/tty/serial/amba-pl011.c\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2932, i32 3 }
@llvm.compiler.used = appending global [119 x ptr] [ptr @__UNIQUE_ID___earlycon_pl011300, ptr @__UNIQUE_ID___earlycon_pl011301, ptr @__UNIQUE_ID___earlycon_qdf2400_e44302, ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_description309, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__exitcall_pl011_exit, ptr @__initcall__kmod_amba_pl011__307_2946_pl011_init3, ptr @pl011_dma_probe._entry, ptr @pl011_dma_probe._entry.52, ptr @pl011_dma_probe._entry.55, ptr @pl011_dma_probe._entry.59, ptr @pl011_dma_probe._entry.62, ptr @pl011_dma_probe._entry.68, ptr @pl011_dma_probe._entry_ptr, ptr @pl011_dma_probe._entry_ptr.54, ptr @pl011_dma_probe._entry_ptr.57, ptr @pl011_dma_probe._entry_ptr.61, ptr @pl011_dma_probe._entry_ptr.64, ptr @pl011_dma_probe._entry_ptr.70, ptr @pl011_dma_rx_chars._entry, ptr @pl011_dma_rx_chars._entry_ptr, ptr @pl011_dma_rx_irq._entry, ptr @pl011_dma_rx_irq._entry.17, ptr @pl011_dma_rx_irq._entry_ptr, ptr @pl011_dma_rx_irq._entry_ptr.18, ptr @pl011_dma_startup._entry, ptr @pl011_dma_startup._entry.39, ptr @pl011_dma_startup._entry.43, ptr @pl011_dma_startup._entry_ptr, ptr @pl011_dma_startup._entry_ptr.41, ptr @pl011_dma_startup._entry_ptr.44, ptr @pl011_exit, ptr @pl011_init._entry, ptr @pl011_init._entry.73, ptr @pl011_init._entry_ptr, ptr @pl011_init._entry_ptr.75, ptr @pl011_probe_dt_alias._entry, ptr @pl011_probe_dt_alias._entry.28, ptr @pl011_probe_dt_alias._entry_ptr, ptr @pl011_probe_dt_alias._entry_ptr.30, ptr @pl011_register_port._entry, ptr @pl011_register_port._entry_ptr, ptr @pl011_rs485_tx_stop._entry, ptr @pl011_rs485_tx_stop._entry_ptr, ptr @arm_sbsa_uart_platform_driver, ptr @pl011_driver, ptr @.str, ptr @sbsa_uart_of_match, ptr @pl011_dev_pm_ops, ptr @.str.1, ptr @vendor_sbsa, ptr @sbsa_uart_pops, ptr @.str.2, ptr @amba_ports, ptr @pl011_std_offsets, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @pl011_probe_dt_alias.seen_dev_with_alias, ptr @pl011_probe_dt_alias.seen_dev_without_alias, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @amba_reg, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @amba_console, ptr @.str.34, ptr @.str.35, ptr @pl011_ids, ptr @amba_pl011_pops, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.46, ptr @pl011_dma_startup.__key, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @vendor_arm, ptr @vendor_st, ptr @pl011_st_offsets, ptr @.str.71, ptr @.str.72, ptr @.str.74], section "llvm.metadata"
@0 = internal global [91 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_sbsa_uart_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl011_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbsa_uart_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl011_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vendor_sbsa to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbsa_uart_pops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amba_ports to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl011_std_offsets to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl011_rs485_tx_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl011_dma_rx_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl011_dma_rx_irq._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl011_dma_rx_chars._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl011_probe_dt_alias.seen_dev_with_alias to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl011_probe_dt_alias.seen_dev_without_alias to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl011_probe_dt_alias._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl011_probe_dt_alias._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amba_reg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl011_register_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amba_console to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl011_ids to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amba_pl011_pops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl011_dma_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl011_dma_startup._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl011_dma_startup._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl011_dma_startup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl011_dma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl011_dma_probe._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl011_dma_probe._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl011_dma_probe._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl011_dma_probe._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl011_dma_probe._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vendor_arm to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vendor_st to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl011_st_offsets to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl011_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl011_init._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pl011_early_console_setup(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %opt) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %write = getelementptr inbounds %struct.console, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @pl011_early_write, ptr %write, align 4
  %5 = load ptr, ptr %device, align 4
  %read = getelementptr inbounds %struct.console, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @pl011_early_read, ptr %read, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qdf2400_e44_early_console_setup(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %opt) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %write = getelementptr inbounds %struct.console, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @qdf2400_e44_early_write, ptr %write, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pl011_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @platform_driver_unregister(ptr noundef nonnull @arm_sbsa_uart_platform_driver) #15
  tail call void @amba_driver_unregister(ptr noundef nonnull @pl011_driver) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pl011_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #18
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @arm_sbsa_uart_platform_driver, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end3

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74) #18
  br label %if.end

if.end:                                           ; preds = %do.end3, %entry.if.end_crit_edge
  %call6 = tail call i32 @amba_driver_register(ptr noundef nonnull @pl011_driver) #15
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl011_early_write(ptr nocapture noundef readonly %con, ptr noundef %s, i32 noundef %n) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.console, ptr %con, i32 0, i32 13
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %port = getelementptr inbounds %struct.earlycon_device, ptr %1, i32 0, i32 1
  tail call void @uart_console_write(ptr noundef %port, ptr noundef %s, i32 noundef %n, ptr noundef nonnull @pl011_putc) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl011_early_read(ptr nocapture noundef readonly %con, ptr nocapture noundef writeonly %s, i32 noundef %n) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.console, ptr %con, i32 0, i32 13
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %membase.i = getelementptr inbounds %struct.earlycon_device, ptr %1, i32 0, i32 1, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp11.not = icmp eq i32 %n, 0
  br i1 %cmp11.not, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %iotype.i = getelementptr inbounds %struct.earlycon_device, ptr %1, i32 0, i32 1, i32 26
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %num_read.012 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end.while.body_crit_edge ]
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !198
  %5 = and i32 %4, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end.i:                                         ; preds = %while.body
  %6 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp.i = icmp eq i8 %7, 3
  %8 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i, align 4
  br i1 %cmp.i, label %pl011_getc.exit, label %pl011_getc.exit.thread7

pl011_getc.exit.thread7:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #15, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !200
  %conv18.i = zext i8 %10 to i32
  br label %if.end

pl011_getc.exit:                                  ; preds = %if.end.i
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #15, !srcloc !197
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !201
  call void @__sanitizer_cov_trace_const_cmp4(i32 65280, i32 %11)
  %cmp1 = icmp eq i32 %11, 65280
  br i1 %cmp1, label %pl011_getc.exit.while.end_crit_edge, label %pl011_getc.exit.if.end_crit_edge

pl011_getc.exit.if.end_crit_edge:                 ; preds = %pl011_getc.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

pl011_getc.exit.while.end_crit_edge:              ; preds = %pl011_getc.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end:                                           ; preds = %pl011_getc.exit.if.end_crit_edge, %pl011_getc.exit.thread7
  %retval.0.i10 = phi i32 [ %conv18.i, %pl011_getc.exit.thread7 ], [ %12, %pl011_getc.exit.if.end_crit_edge ]
  %conv = trunc i32 %retval.0.i10 to i8
  %inc = add nuw i32 %num_read.012, 1
  %arrayidx = getelementptr i8, ptr %s, i32 %num_read.012
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %arrayidx, align 1
  %exitcond.not = icmp eq i32 %inc, %n
  br i1 %exitcond.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %pl011_getc.exit.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %num_read.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %num_read.012, %while.body.while.end_crit_edge ], [ %num_read.012, %pl011_getc.exit.while.end_crit_edge ], [ %n, %if.end.while.end_crit_edge ]
  ret i32 %num_read.0.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl011_putc(ptr nocapture noundef readonly %port, i32 noundef %c) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr39 = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #15, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  %3 = and i32 %2, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not40 = icmp eq i32 %3, 0
  br i1 %tobool.not40, label %entry.while.end_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !203
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !204
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #15, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  %7 = and i32 %6, 536870912
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  %iotype = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %8 = ptrtoint ptr %iotype to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %iotype, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp = icmp eq i8 %9, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  tail call void @arm_heavy_mb() #15
  br i1 %cmp, label %do.body7, label %do.body11

do.body7:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  %10 = tail call i32 @llvm.bswap.i32(i32 %c)
  %11 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #15, !srcloc !205
  br label %if.end

do.body11:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  %conv13 = trunc i32 %c to i8
  %13 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %14, i8 %conv13) #15, !srcloc !206
  br label %if.end

if.end:                                           ; preds = %do.body11, %do.body7
  %15 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase, align 4
  %add.ptr2041 = getelementptr i8, ptr %16, i32 24
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2041) #15, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !207
  %18 = and i32 %17, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool25.not42 = icmp eq i32 %18, 0
  br i1 %tobool25.not42, label %if.end.while.end33_crit_edge, label %if.end.do.end30_crit_edge

if.end.do.end30_crit_edge:                        ; preds = %if.end
  br label %do.end30

if.end.while.end33_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end33

do.end30:                                         ; preds = %do.end30.do.end30_crit_edge, %if.end.do.end30_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !208
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !209
  %19 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase, align 4
  %add.ptr20 = getelementptr i8, ptr %20, i32 24
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #15, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !207
  %22 = and i32 %21, 134217728
  %tobool25.not = icmp eq i32 %22, 0
  br i1 %tobool25.not, label %do.end30.while.end33_crit_edge, label %do.end30.do.end30_crit_edge

do.end30.do.end30_crit_edge:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end30

do.end30.while.end33_crit_edge:                   ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end33

while.end33:                                      ; preds = %do.end30.while.end33_crit_edge, %if.end.while.end33_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qdf2400_e44_early_write(ptr nocapture noundef readonly %con, ptr noundef %s, i32 noundef %n) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.console, ptr %con, i32 0, i32 13
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %port = getelementptr inbounds %struct.earlycon_device, ptr %1, i32 0, i32 1
  tail call void @uart_console_write(ptr noundef %port, ptr noundef %s, i32 noundef %n, ptr noundef nonnull @qdf2400_e44_putc) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qdf2400_e44_putc(ptr nocapture noundef readonly %port, i32 noundef %c) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr30 = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #15, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !210
  %3 = and i32 %2, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not31 = icmp eq i32 %3, 0
  br i1 %tobool.not31, label %entry.do.body6_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body6

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !211
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !212
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #15, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !210
  %7 = and i32 %6, 536870912
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.end.do.body6_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

do.end.do.body6_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body6

do.body6:                                         ; preds = %do.end.do.body6_crit_edge, %entry.do.body6_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !213
  tail call void @arm_heavy_mb() #15
  %8 = tail call i32 @llvm.bswap.i32(i32 %c)
  %9 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #15, !srcloc !205
  %11 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase, align 4
  %add.ptr1432 = getelementptr i8, ptr %12, i32 24
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1432) #15, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !214
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %tobool19.not33 = icmp sgt i32 %13, -1
  br i1 %tobool19.not33, label %do.body6.do.end24_crit_edge, label %do.body6.while.end27_crit_edge

do.body6.while.end27_crit_edge:                   ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end27

do.body6.do.end24_crit_edge:                      ; preds = %do.body6
  br label %do.end24

do.end24:                                         ; preds = %do.end24.do.end24_crit_edge, %do.body6.do.end24_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !215
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !216
  %14 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase, align 4
  %add.ptr14 = getelementptr i8, ptr %15, i32 24
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #15, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !214
  %tobool19.not = icmp sgt i32 %16, -1
  br i1 %tobool19.not, label %do.end24.do.end24_crit_edge, label %do.end24.while.end27_crit_edge

do.end24.while.end27_crit_edge:                   ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end27

do.end24.do.end24_crit_edge:                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end24

while.end27:                                      ; preds = %do.end24.while.end27_crit_edge, %do.body6.while.end27_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbsa_uart_probe(ptr noundef %pdev) #3 align 64 {
entry:
  %baudrate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %baudrate) #15
  %0 = ptrtoint ptr %baudrate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %baudrate, align 4, !annotation !217
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull %baudrate, i32 noundef 1, i32 noundef 0) #15
  %3 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool3.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup32_crit_edge

if.then.cleanup32_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup32

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %baudrate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 115200, ptr %baudrate, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then.if.end5_crit_edge
  %5 = load ptr, ptr @amba_ports, align 4
  %cmp1.i = icmp eq ptr %5, null
  br i1 %cmp1.i, label %if.end5.if.end8_crit_edge, label %for.inc.i

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

for.inc.i:                                        ; preds = %if.end5
  %6 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 1), align 4
  %cmp1.1.i = icmp eq ptr %6, null
  br i1 %cmp1.1.i, label %for.inc.i.if.end8_crit_edge, label %for.inc.1.i

for.inc.i.if.end8_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

for.inc.1.i:                                      ; preds = %for.inc.i
  %7 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 2), align 4
  %cmp1.2.i = icmp eq ptr %7, null
  br i1 %cmp1.2.i, label %for.inc.1.i.if.end8_crit_edge, label %for.inc.2.i

for.inc.1.i.if.end8_crit_edge:                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %8 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 3), align 4
  %cmp1.3.i = icmp eq ptr %8, null
  br i1 %cmp1.3.i, label %for.inc.2.i.if.end8_crit_edge, label %for.inc.3.i

for.inc.2.i.if.end8_crit_edge:                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %9 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 4), align 4
  %cmp1.4.i = icmp eq ptr %9, null
  br i1 %cmp1.4.i, label %for.inc.3.i.if.end8_crit_edge, label %for.inc.4.i

for.inc.3.i.if.end8_crit_edge:                    ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %10 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 5), align 4
  %cmp1.5.i = icmp eq ptr %10, null
  br i1 %cmp1.5.i, label %for.inc.4.i.if.end8_crit_edge, label %for.inc.5.i

for.inc.4.i.if.end8_crit_edge:                    ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %11 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 6), align 4
  %cmp1.6.i = icmp eq ptr %11, null
  br i1 %cmp1.6.i, label %for.inc.5.i.if.end8_crit_edge, label %for.inc.6.i

for.inc.5.i.if.end8_crit_edge:                    ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %12 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 7), align 4
  %cmp1.7.i = icmp eq ptr %12, null
  br i1 %cmp1.7.i, label %for.inc.6.i.if.end8_crit_edge, label %for.inc.7.i

for.inc.6.i.if.end8_crit_edge:                    ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %13 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 8), align 4
  %cmp1.8.i = icmp eq ptr %13, null
  br i1 %cmp1.8.i, label %for.inc.7.i.if.end8_crit_edge, label %for.inc.8.i

for.inc.7.i.if.end8_crit_edge:                    ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %14 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 9), align 4
  %cmp1.9.i = icmp eq ptr %14, null
  br i1 %cmp1.9.i, label %for.inc.8.i.if.end8_crit_edge, label %for.inc.9.i

for.inc.8.i.if.end8_crit_edge:                    ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

for.inc.9.i:                                      ; preds = %for.inc.8.i
  %15 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 10), align 4
  %cmp1.10.i = icmp eq ptr %15, null
  br i1 %cmp1.10.i, label %for.inc.9.i.if.end8_crit_edge, label %for.inc.10.i

for.inc.9.i.if.end8_crit_edge:                    ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

for.inc.10.i:                                     ; preds = %for.inc.9.i
  %16 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 11), align 4
  %cmp1.11.i = icmp eq ptr %16, null
  br i1 %cmp1.11.i, label %for.inc.10.i.if.end8_crit_edge, label %for.inc.11.i

for.inc.10.i.if.end8_crit_edge:                   ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

for.inc.11.i:                                     ; preds = %for.inc.10.i
  %17 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 12), align 4
  %cmp1.12.i = icmp eq ptr %17, null
  br i1 %cmp1.12.i, label %for.inc.11.i.if.end8_crit_edge, label %for.inc.12.i

for.inc.11.i.if.end8_crit_edge:                   ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

for.inc.12.i:                                     ; preds = %for.inc.11.i
  %18 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 13), align 4
  %cmp1.13.i = icmp eq ptr %18, null
  br i1 %cmp1.13.i, label %for.inc.12.i.if.end8_crit_edge, label %for.inc.12.i.cleanup32_crit_edge

for.inc.12.i.cleanup32_crit_edge:                 ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup32

for.inc.12.i.if.end8_crit_edge:                   ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.end8:                                          ; preds = %for.inc.12.i.if.end8_crit_edge, %for.inc.11.i.if.end8_crit_edge, %for.inc.10.i.if.end8_crit_edge, %for.inc.9.i.if.end8_crit_edge, %for.inc.8.i.if.end8_crit_edge, %for.inc.7.i.if.end8_crit_edge, %for.inc.6.i.if.end8_crit_edge, %for.inc.5.i.if.end8_crit_edge, %for.inc.4.i.if.end8_crit_edge, %for.inc.3.i.if.end8_crit_edge, %for.inc.2.i.if.end8_crit_edge, %for.inc.1.i.if.end8_crit_edge, %for.inc.i.if.end8_crit_edge, %if.end5.if.end8_crit_edge
  %retval.0.i.ph = phi i32 [ 12, %for.inc.11.i.if.end8_crit_edge ], [ 11, %for.inc.10.i.if.end8_crit_edge ], [ 10, %for.inc.9.i.if.end8_crit_edge ], [ 9, %for.inc.8.i.if.end8_crit_edge ], [ 8, %for.inc.7.i.if.end8_crit_edge ], [ 7, %for.inc.6.i.if.end8_crit_edge ], [ 6, %for.inc.5.i.if.end8_crit_edge ], [ 5, %for.inc.4.i.if.end8_crit_edge ], [ 4, %for.inc.3.i.if.end8_crit_edge ], [ 3, %for.inc.2.i.if.end8_crit_edge ], [ 2, %for.inc.1.i.if.end8_crit_edge ], [ 1, %for.inc.i.if.end8_crit_edge ], [ 0, %if.end5.if.end8_crit_edge ], [ 13, %for.inc.12.i.if.end8_crit_edge ]
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 640, i32 noundef 3520) #15
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %if.end8.cleanup32_crit_edge, label %if.end13

if.end8.cleanup32_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup32

if.end13:                                         ; preds = %if.end8
  %call14 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end13.cleanup32_crit_edge, label %if.end17

if.end13.cleanup32_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup32

if.end17:                                         ; preds = %if.end13
  %irq = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 20
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call14, ptr %irq, align 4
  %vendor = getelementptr inbounds %struct.uart_amba_port, ptr %call.i, i32 0, i32 3
  %20 = ptrtoint ptr %vendor to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @vendor_sbsa, ptr %vendor, align 4
  %reg_offset19 = getelementptr inbounds %struct.uart_amba_port, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %reg_offset19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @pl011_std_offsets, ptr %reg_offset19, align 4
  %fifosize = getelementptr inbounds %struct.uart_amba_port, ptr %call.i, i32 0, i32 7
  %22 = ptrtoint ptr %fifosize to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 32, ptr %fifosize, align 4
  %iotype = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 26
  %23 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 3, ptr %iotype, align 2
  %ops = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 39
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @sbsa_uart_pops, ptr %ops, align 4
  %25 = ptrtoint ptr %baudrate to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %baudrate, align 4
  %fixed_baud = getelementptr inbounds %struct.uart_amba_port, ptr %call.i, i32 0, i32 8
  %27 = ptrtoint ptr %fixed_baud to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %fixed_baud, align 4
  %type = getelementptr inbounds %struct.uart_amba_port, ptr %call.i, i32 0, i32 9
  %28 = call ptr @memcpy(ptr %type, ptr @.str.2, i32 5)
  %call25 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #15
  %call27 = call fastcc i32 @pl011_setup_port(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef %call25, i32 noundef %retval.0.i.ph)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end17.cleanup32_crit_edge

if.end17.cleanup32_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup32

if.end30:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %29 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call31 = call fastcc i32 @pl011_register_port(ptr noundef nonnull %call.i)
  br label %cleanup32

cleanup32:                                        ; preds = %if.end30, %if.end17.cleanup32_crit_edge, %if.end13.cleanup32_crit_edge, %if.end8.cleanup32_crit_edge, %for.inc.12.i.cleanup32_crit_edge, %if.then.cleanup32_crit_edge
  %retval.1 = phi i32 [ %call31, %if.end30 ], [ %3, %if.then.cleanup32_crit_edge ], [ -12, %if.end8.cleanup32_crit_edge ], [ %call14, %if.end13.cleanup32_crit_edge ], [ %call27, %if.end17.cleanup32_crit_edge ], [ -16, %for.inc.12.i.cleanup32_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %baudrate) #15
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbsa_uart_remove(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @amba_reg, ptr noundef %1) #15
  tail call fastcc void @pl011_unregister_port(ptr noundef %1)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pl011_setup_port(ptr noundef %dev, ptr noundef %uap, ptr noundef %mmiobase, i32 noundef %index) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %mmiobase) #15
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %1 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.pl011_probe_dt_alias.exit_crit_edge, label %if.end.i

if.end.pl011_probe_dt_alias.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %pl011_probe_dt_alias.exit

if.end.i:                                         ; preds = %if.end
  %call.i = tail call i32 @of_alias_get_id(ptr noundef nonnull %2, ptr noundef nonnull @.str.25) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i33 = icmp slt i32 %call.i, 0
  br i1 %cmp.i33, label %if.then1.i, label %if.else.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @pl011_probe_dt_alias.seen_dev_without_alias, align 1
  br label %if.end6.i

if.else.i:                                        ; preds = %if.end.i
  store i1 true, ptr @pl011_probe_dt_alias.seen_dev_with_alias, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %call.i)
  %cmp2.i = icmp ugt i32 %call.i, 13
  br i1 %cmp2.i, label %if.else.i.do.end.i_crit_edge, label %lor.lhs.false.i

if.else.i.do.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.else.i
  %arrayidx.i = getelementptr [14 x ptr], ptr @amba_ports, i32 0, i32 %call.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %cmp3.not.i = icmp eq ptr %4, null
  br i1 %cmp3.not.i, label %lor.lhs.false.i.if.end6.i_crit_edge, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

lor.lhs.false.i.if.end6.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.else.i.do.end.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %call.i) #18
  br label %if.end6.i

if.end6.i:                                        ; preds = %do.end.i, %lor.lhs.false.i.if.end6.i_crit_edge, %if.then1.i
  %ret.0.i = phi i32 [ %index, %if.then1.i ], [ %index, %do.end.i ], [ %call.i, %lor.lhs.false.i.if.end6.i_crit_edge ]
  %.b26.i = load i1, ptr @pl011_probe_dt_alias.seen_dev_with_alias, align 1
  br i1 %.b26.i, label %land.lhs.true.i, label %if.end6.i.pl011_probe_dt_alias.exit_crit_edge

if.end6.i.pl011_probe_dt_alias.exit_crit_edge:    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pl011_probe_dt_alias.exit

land.lhs.true.i:                                  ; preds = %if.end6.i
  %.b2527.i = load i1, ptr @pl011_probe_dt_alias.seen_dev_without_alias, align 1
  br i1 %.b2527.i, label %do.end12.i, label %land.lhs.true.i.pl011_probe_dt_alias.exit_crit_edge

land.lhs.true.i.pl011_probe_dt_alias.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pl011_probe_dt_alias.exit

do.end12.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.29) #18
  br label %pl011_probe_dt_alias.exit

pl011_probe_dt_alias.exit:                        ; preds = %do.end12.i, %land.lhs.true.i.pl011_probe_dt_alias.exit_crit_edge, %if.end6.i.pl011_probe_dt_alias.exit_crit_edge, %if.end.pl011_probe_dt_alias.exit_crit_edge
  %retval.0.i = phi i32 [ %index, %if.end.pl011_probe_dt_alias.exit_crit_edge ], [ %ret.0.i, %do.end12.i ], [ %ret.0.i, %land.lhs.true.i.pl011_probe_dt_alias.exit_crit_edge ], [ %ret.0.i, %if.end6.i.pl011_probe_dt_alias.exit_crit_edge ]
  %dev4 = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 45
  %5 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev4, align 4
  %6 = ptrtoint ptr %mmiobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mmiobase, align 4
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 43
  %8 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %mapbase, align 4
  %membase = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 2
  %9 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %membase, align 4
  %fifosize = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 7
  %10 = ptrtoint ptr %fifosize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fifosize, align 4
  %fifosize8 = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 23
  %12 = ptrtoint ptr %fifosize8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %fifosize8, align 4
  %has_sysrq = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 48
  %13 = ptrtoint ptr %has_sysrq to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %has_sysrq, align 4
  %flags = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 33
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 268435456, ptr %flags, align 4
  %line = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 41
  %15 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %retval.0.i, ptr %line, align 4
  %call.i34 = tail call i32 @uart_get_rs485_mode(ptr noundef %uap) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %tobool.not.i35 = icmp eq i32 %call.i34, 0
  br i1 %tobool.not.i35, label %if.end14, label %pl011_probe_dt_alias.exit.cleanup_crit_edge

pl011_probe_dt_alias.exit.cleanup_crit_edge:      ; preds = %pl011_probe_dt_alias.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end14:                                         ; preds = %pl011_probe_dt_alias.exit
  call void @__sanitizer_cov_trace_pc() #17
  %delay_rts_before_send.i = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 56, i32 1
  %16 = ptrtoint ptr %delay_rts_before_send.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %delay_rts_before_send.i, align 4
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 100) #15
  %19 = ptrtoint ptr %delay_rts_before_send.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %delay_rts_before_send.i, align 4
  %delay_rts_after_send.i = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 56, i32 2
  %20 = ptrtoint ptr %delay_rts_after_send.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %delay_rts_after_send.i, align 4
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 100) #15
  %23 = ptrtoint ptr %delay_rts_after_send.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %delay_rts_after_send.i, align 4
  %arrayidx = getelementptr [14 x ptr], ptr @amba_ports, i32 0, i32 %retval.0.i
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %uap, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %pl011_probe_dt_alias.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %if.end14 ], [ %call.i34, %pl011_probe_dt_alias.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pl011_register_port(ptr noundef %uap) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %reg_offset.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 1
  %2 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %3, i32 10
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 26
  %6 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp.i = icmp eq i8 %7, 3
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #15, !srcloc !205
  br label %pl011_write.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 0) #15, !srcloc !218
  br label %pl011_write.exit

pl011_write.exit:                                 ; preds = %if.else.i, %if.then.i
  %8 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i, align 4
  %10 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i27 = getelementptr i16, ptr %11, i32 13
  %12 = ptrtoint ptr %arrayidx.i.i27 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.i.i27, align 2
  %conv.i.i28 = zext i16 %13 to i32
  %add.ptr.i29 = getelementptr i8, ptr %9, i32 %conv.i.i28
  %14 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %15)
  %cmp.i31 = icmp eq i8 %15, 3
  br i1 %cmp.i31, label %if.then.i32, label %if.else.i33

if.then.i32:                                      ; preds = %pl011_write.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 -65536) #15, !srcloc !205
  br label %pl011_write.exit34

if.else.i33:                                      ; preds = %pl011_write.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i29, i16 -1) #15, !srcloc !218
  br label %pl011_write.exit34

pl011_write.exit34:                               ; preds = %if.else.i33, %if.then.i32
  %16 = load ptr, ptr getelementptr inbounds (%struct.uart_driver, ptr @amba_reg, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %if.then, label %pl011_write.exit34.if.end7_crit_edge

pl011_write.exit34.if.end7_crit_edge:             ; preds = %pl011_write.exit34
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then:                                          ; preds = %pl011_write.exit34
  %call = tail call i32 @uart_register_driver(ptr noundef nonnull @amba_reg) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

do.end:                                           ; preds = %if.then
  %dev = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 45
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.31) #18
  %19 = load ptr, ptr @amba_ports, align 4
  %cmp3 = icmp eq ptr %19, %uap
  br i1 %cmp3, label %if.then4, label %do.end.for.inc_crit_edge

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  store ptr null, ptr @amba_ports, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %do.end.for.inc_crit_edge
  %20 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 1), align 4
  %cmp3.1 = icmp eq ptr %20, %uap
  br i1 %cmp3.1, label %if.then4.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1

if.then4.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 1), align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then4.1, %for.inc.for.inc.1_crit_edge
  %21 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 2), align 4
  %cmp3.2 = icmp eq ptr %21, %uap
  br i1 %cmp3.2, label %if.then4.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.2

if.then4.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #17
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 2), align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then4.2, %for.inc.1.for.inc.2_crit_edge
  %22 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 3), align 4
  %cmp3.3 = icmp eq ptr %22, %uap
  br i1 %cmp3.3, label %if.then4.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.3

if.then4.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #17
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 3), align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then4.3, %for.inc.2.for.inc.3_crit_edge
  %23 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 4), align 4
  %cmp3.4 = icmp eq ptr %23, %uap
  br i1 %cmp3.4, label %if.then4.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.4

if.then4.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #17
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 4), align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then4.4, %for.inc.3.for.inc.4_crit_edge
  %24 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 5), align 4
  %cmp3.5 = icmp eq ptr %24, %uap
  br i1 %cmp3.5, label %if.then4.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.5

if.then4.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #17
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 5), align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then4.5, %for.inc.4.for.inc.5_crit_edge
  %25 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 6), align 4
  %cmp3.6 = icmp eq ptr %25, %uap
  br i1 %cmp3.6, label %if.then4.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.6

if.then4.6:                                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #17
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 6), align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then4.6, %for.inc.5.for.inc.6_crit_edge
  %26 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 7), align 4
  %cmp3.7 = icmp eq ptr %26, %uap
  br i1 %cmp3.7, label %if.then4.7, label %for.inc.6.for.inc.7_crit_edge

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.7

if.then4.7:                                       ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #17
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 7), align 4
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then4.7, %for.inc.6.for.inc.7_crit_edge
  %27 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 8), align 4
  %cmp3.8 = icmp eq ptr %27, %uap
  br i1 %cmp3.8, label %if.then4.8, label %for.inc.7.for.inc.8_crit_edge

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.8

if.then4.8:                                       ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #17
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 8), align 4
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then4.8, %for.inc.7.for.inc.8_crit_edge
  %28 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 9), align 4
  %cmp3.9 = icmp eq ptr %28, %uap
  br i1 %cmp3.9, label %if.then4.9, label %for.inc.8.for.inc.9_crit_edge

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.9

if.then4.9:                                       ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #17
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 9), align 4
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.then4.9, %for.inc.8.for.inc.9_crit_edge
  %29 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 10), align 4
  %cmp3.10 = icmp eq ptr %29, %uap
  br i1 %cmp3.10, label %if.then4.10, label %for.inc.9.for.inc.10_crit_edge

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.10

if.then4.10:                                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #17
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 10), align 4
  br label %for.inc.10

for.inc.10:                                       ; preds = %if.then4.10, %for.inc.9.for.inc.10_crit_edge
  %30 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 11), align 4
  %cmp3.11 = icmp eq ptr %30, %uap
  br i1 %cmp3.11, label %if.then4.11, label %for.inc.10.for.inc.11_crit_edge

for.inc.10.for.inc.11_crit_edge:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.11

if.then4.11:                                      ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #17
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 11), align 4
  br label %for.inc.11

for.inc.11:                                       ; preds = %if.then4.11, %for.inc.10.for.inc.11_crit_edge
  %31 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 12), align 4
  %cmp3.12 = icmp eq ptr %31, %uap
  br i1 %cmp3.12, label %if.then4.12, label %for.inc.11.for.inc.12_crit_edge

for.inc.11.for.inc.12_crit_edge:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.12

if.then4.12:                                      ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #17
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 12), align 4
  br label %for.inc.12

for.inc.12:                                       ; preds = %if.then4.12, %for.inc.11.for.inc.12_crit_edge
  %32 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 13), align 4
  %cmp3.13 = icmp eq ptr %32, %uap
  br i1 %cmp3.13, label %if.then4.13, label %for.inc.12.cleanup_crit_edge

for.inc.12.cleanup_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then4.13:                                      ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #17
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 13), align 4
  br label %cleanup

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %pl011_write.exit34.if.end7_crit_edge
  %call9 = tail call i32 @uart_add_one_port(ptr noundef nonnull @amba_reg, ptr noundef %uap) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.then11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @pl011_unregister_port(ptr noundef %uap)
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end7.cleanup_crit_edge, %if.then4.13, %for.inc.12.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then11 ], [ 0, %if.end7.cleanup_crit_edge ], [ %call, %if.then4.13 ], [ %call, %for.inc.12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl011_tx_empty(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %reg_offset.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 1
  %2 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %3, i32 3
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %6 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp.i = icmp eq i8 %7, 3
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !197
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #15
  br label %pl011_read.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #15, !srcloc !219
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #15
  %conv7.i = zext i16 %11 to i32
  br label %pl011_read.exit

pl011_read.exit:                                  ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %9, %cond.true.i ], [ %conv7.i, %cond.false.i ]
  %vendor = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 3
  %12 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vendor, align 4
  %inv_fr = getelementptr inbounds %struct.vendor_data, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %inv_fr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %inv_fr, align 4
  %xor = xor i32 %15, %cond.i
  %fr_busy = getelementptr inbounds %struct.vendor_data, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %fr_busy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fr_busy, align 4
  %or = or i32 %17, 32
  %and = and i32 %or, %xor
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = zext i1 %tobool.not to i32
  ret i32 %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sbsa_uart_set_mctrl(ptr nocapture noundef %port, i32 noundef %mctrl) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sbsa_uart_get_mctrl(ptr nocapture noundef readnone %port) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl011_stop_tx(ptr nocapture noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %im = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 5
  %0 = ptrtoint ptr %im to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %im, align 4
  %and = and i32 %1, -33
  store i32 %and, ptr %im, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 4
  %reg_offset.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 1
  %4 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %5, i32 10
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %7 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %8 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp.i = icmp eq i8 %9, 3
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %10 = tail call i32 @llvm.bswap.i32(i32 %and) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #15, !srcloc !205
  br label %pl011_write.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i = trunc i32 %and to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv3.i) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %11) #15, !srcloc !218
  br label %pl011_write.exit

pl011_write.exit:                                 ; preds = %if.else.i, %if.then.i
  %queued.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 15, i32 3
  %12 = ptrtoint ptr %queued.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %queued.i, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %pl011_write.exit.pl011_dma_tx_stop.exit_crit_edge, label %if.then.i10

pl011_write.exit.pl011_dma_tx_stop.exit_crit_edge: ; preds = %pl011_write.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %pl011_dma_tx_stop.exit

if.then.i10:                                      ; preds = %pl011_write.exit
  %dmacr.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 4
  %14 = ptrtoint ptr %dmacr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dmacr.i, align 4
  %and.i = and i32 %15, -3
  store i32 %and.i, ptr %dmacr.i, align 4
  %16 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i, align 4
  %18 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i.i = getelementptr i16, ptr %19, i32 14
  %20 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.i.i.i, align 2
  %conv.i.i.i = zext i16 %21 to i32
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %conv.i.i.i
  %22 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %23)
  %cmp.i.i = icmp eq i8 %23, 3
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then.i10
  call void @__sanitizer_cov_trace_pc() #17
  %24 = tail call i32 @llvm.bswap.i32(i32 %and.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %24) #15, !srcloc !205
  br label %pl011_dma_tx_stop.exit

if.else.i.i:                                      ; preds = %if.then.i10
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i.i = trunc i32 %and.i to i16
  %25 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %25) #15, !srcloc !218
  br label %pl011_dma_tx_stop.exit

pl011_dma_tx_stop.exit:                           ; preds = %if.else.i.i, %if.then.i.i, %pl011_write.exit.pl011_dma_tx_stop.exit_crit_edge
  %rs485 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56
  %26 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rs485, align 4
  %and2 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %pl011_dma_tx_stop.exit.if.end_crit_edge, label %land.lhs.true

pl011_dma_tx_stop.exit.if.end_crit_edge:          ; preds = %pl011_dma_tx_stop.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %pl011_dma_tx_stop.exit
  %rs485_tx_started = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 10
  %28 = ptrtoint ptr %rs485_tx_started to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %rs485_tx_started, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool3.not = icmp eq i8 %29, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @pl011_rs485_tx_stop(ptr noundef %port)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %pl011_dma_tx_stop.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl011_start_tx(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %using_tx_dma.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 12
  %0 = ptrtoint ptr %using_tx_dma.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %using_tx_dma.i, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.end.i:                                         ; preds = %entry
  %x_char.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 24
  %2 = ptrtoint ptr %x_char.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %x_char.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not.i = icmp eq i8 %3, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end18.i

if.then2.i:                                       ; preds = %if.end.i
  %queued.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 15, i32 3
  %4 = ptrtoint ptr %queued.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %queued.i, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not.i = icmp eq i8 %5, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.else8.i

if.then4.i:                                       ; preds = %if.then2.i
  %call.i = tail call fastcc i32 @pl011_dma_tx_refill(ptr noundef %port) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 0
  br i1 %cmp.i, label %if.then5.i, label %if.then4.i.if.then_crit_edge

if.then4.i.if.then_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then5.i:                                       ; preds = %if.then4.i
  %im.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 5
  %6 = ptrtoint ptr %im.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %im.i, align 4
  %and.i = and i32 %7, -33
  store i32 %and.i, ptr %im.i, align 4
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %8 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i.i, align 4
  %reg_offset.i.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 1
  %10 = ptrtoint ptr %reg_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_offset.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i16, ptr %11, i32 10
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.i.i.i, align 2
  %conv.i.i.i = zext i16 %13 to i32
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %conv.i.i.i
  %iotype.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %14 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %iotype.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %15)
  %cmp.i.i = icmp eq i8 %15, 3
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #17
  %16 = tail call i32 @llvm.bswap.i32(i32 %and.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %16) #15, !srcloc !205
  br label %if.end

if.else.i.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i.i = trunc i32 %and.i to i16
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %17) #15, !srcloc !218
  br label %if.end

if.else8.i:                                       ; preds = %if.then2.i
  %dmacr9.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 4
  %18 = ptrtoint ptr %dmacr9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dmacr9.i, align 4
  %and10.i = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %if.else8.i.if.end_crit_edge

if.else8.i.if.end_crit_edge:                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then12.i:                                      ; preds = %if.else8.i
  %or.i = or i32 %19, 2
  %20 = ptrtoint ptr %dmacr9.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i, ptr %dmacr9.i, align 4
  %membase.i59.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %21 = ptrtoint ptr %membase.i59.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase.i59.i, align 4
  %reg_offset.i.i60.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 1
  %23 = ptrtoint ptr %reg_offset.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_offset.i.i60.i, align 4
  %arrayidx.i.i61.i = getelementptr i16, ptr %24, i32 14
  %25 = ptrtoint ptr %arrayidx.i.i61.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx.i.i61.i, align 2
  %conv.i.i62.i = zext i16 %26 to i32
  %add.ptr.i63.i = getelementptr i8, ptr %22, i32 %conv.i.i62.i
  %iotype.i64.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %27 = ptrtoint ptr %iotype.i64.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %iotype.i64.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %28)
  %cmp.i65.i = icmp eq i8 %28, 3
  br i1 %cmp.i65.i, label %if.then.i66.i, label %if.else.i68.i

if.then.i66.i:                                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #17
  %29 = tail call i32 @llvm.bswap.i32(i32 %or.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63.i, i32 %29) #15, !srcloc !205
  br label %if.end

if.else.i68.i:                                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i67.i = trunc i32 %or.i to i16
  %30 = tail call i16 @llvm.bswap.i16(i16 %conv3.i67.i) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i63.i, i16 %30) #15, !srcloc !218
  br label %if.end

if.end18.i:                                       ; preds = %if.end.i
  %dmacr19.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 4
  %31 = ptrtoint ptr %dmacr19.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dmacr19.i, align 4
  %and21.i = and i32 %32, -3
  store i32 %and21.i, ptr %dmacr19.i, align 4
  %membase.i70.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %33 = ptrtoint ptr %membase.i70.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase.i70.i, align 4
  %reg_offset.i.i71.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 1
  %35 = ptrtoint ptr %reg_offset.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg_offset.i.i71.i, align 4
  %arrayidx.i.i72.i = getelementptr i16, ptr %36, i32 14
  %37 = ptrtoint ptr %arrayidx.i.i72.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx.i.i72.i, align 2
  %conv.i.i73.i = zext i16 %38 to i32
  %add.ptr.i74.i = getelementptr i8, ptr %34, i32 %conv.i.i73.i
  %iotype.i75.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %39 = ptrtoint ptr %iotype.i75.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %iotype.i75.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %40)
  %cmp.i76.i = icmp eq i8 %40, 3
  br i1 %cmp.i76.i, label %if.then.i77.i, label %if.else.i79.i

if.then.i77.i:                                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #17
  %41 = tail call i32 @llvm.bswap.i32(i32 %and21.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74.i, i32 %41) #15, !srcloc !205
  br label %pl011_write.exit80.i

if.else.i79.i:                                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i78.i = trunc i32 %and21.i to i16
  %42 = tail call i16 @llvm.bswap.i16(i16 %conv3.i78.i) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i74.i, i16 %42) #15, !srcloc !218
  br label %pl011_write.exit80.i

pl011_write.exit80.i:                             ; preds = %if.else.i79.i, %if.then.i77.i
  %43 = ptrtoint ptr %membase.i70.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase.i70.i, align 4
  %45 = ptrtoint ptr %reg_offset.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg_offset.i.i71.i, align 4
  %arrayidx.i.i83.i = getelementptr i16, ptr %46, i32 3
  %47 = ptrtoint ptr %arrayidx.i.i83.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx.i.i83.i, align 2
  %conv.i.i84.i = zext i16 %48 to i32
  %add.ptr.i85.i = getelementptr i8, ptr %44, i32 %conv.i.i84.i
  %49 = ptrtoint ptr %iotype.i75.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %iotype.i75.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %50)
  %cmp.i87.i = icmp eq i8 %50, 3
  br i1 %cmp.i87.i, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %pl011_write.exit80.i
  call void @__sanitizer_cov_trace_pc() #17
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i85.i) #15, !srcloc !197
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #15
  br label %pl011_read.exit.i

cond.false.i.i:                                   ; preds = %pl011_write.exit80.i
  call void @__sanitizer_cov_trace_pc() #17
  %53 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i85.i) #15, !srcloc !219
  %54 = tail call i16 @llvm.bswap.i16(i16 %53) #15
  %conv7.i.i = zext i16 %54 to i32
  br label %pl011_read.exit.i

pl011_read.exit.i:                                ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i32 [ %52, %cond.true.i.i ], [ %conv7.i.i, %cond.false.i.i ]
  %and24.i = and i32 %cond.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %pl011_read.exit.i.if.then_crit_edge

pl011_read.exit.i.if.then_crit_edge:              ; preds = %pl011_read.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.end27.i:                                       ; preds = %pl011_read.exit.i
  %55 = ptrtoint ptr %x_char.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %x_char.i, align 4
  %57 = ptrtoint ptr %membase.i70.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %membase.i70.i, align 4
  %59 = ptrtoint ptr %reg_offset.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reg_offset.i.i71.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %60, align 2
  %conv.i.i90.i = zext i16 %62 to i32
  %add.ptr.i91.i = getelementptr i8, ptr %58, i32 %conv.i.i90.i
  %63 = ptrtoint ptr %iotype.i75.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %iotype.i75.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %64)
  %cmp.i93.i = icmp eq i8 %64, 3
  br i1 %cmp.i93.i, label %if.then.i94.i, label %if.else.i96.i

if.then.i94.i:                                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv30.i = zext i8 %56 to i32
  %65 = shl nuw i32 %conv30.i, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91.i, i32 %65) #15, !srcloc !205
  br label %pl011_write.exit97.i

if.else.i96.i:                                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i95.i = zext i8 %56 to i16
  %66 = shl nuw i16 %conv3.i95.i, 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i91.i, i16 %66) #15, !srcloc !218
  br label %pl011_write.exit97.i

pl011_write.exit97.i:                             ; preds = %if.else.i96.i, %if.then.i94.i
  %tx.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 5
  %67 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tx.i, align 4
  %inc.i = add i32 %68, 1
  store i32 %inc.i, ptr %tx.i, align 4
  %69 = ptrtoint ptr %x_char.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %x_char.i, align 4
  %conv34.i = and i32 %32, 65535
  %70 = ptrtoint ptr %dmacr19.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %conv34.i, ptr %dmacr19.i, align 4
  %71 = ptrtoint ptr %membase.i70.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %membase.i70.i, align 4
  %73 = ptrtoint ptr %reg_offset.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reg_offset.i.i71.i, align 4
  %arrayidx.i.i100.i = getelementptr i16, ptr %74, i32 14
  %75 = ptrtoint ptr %arrayidx.i.i100.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx.i.i100.i, align 2
  %conv.i.i101.i = zext i16 %76 to i32
  %add.ptr.i102.i = getelementptr i8, ptr %72, i32 %conv.i.i101.i
  %77 = ptrtoint ptr %iotype.i75.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %iotype.i75.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %78)
  %cmp.i104.i = icmp eq i8 %78, 3
  br i1 %cmp.i104.i, label %if.then.i105.i, label %if.else.i107.i

if.then.i105.i:                                   ; preds = %pl011_write.exit97.i
  call void @__sanitizer_cov_trace_pc() #17
  %79 = tail call i32 @llvm.bswap.i32(i32 %conv34.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102.i, i32 %79) #15, !srcloc !205
  br label %if.end

if.else.i107.i:                                   ; preds = %pl011_write.exit97.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i106.i = trunc i32 %32 to i16
  %80 = tail call i16 @llvm.bswap.i16(i16 %conv3.i106.i) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i102.i, i16 %80) #15, !srcloc !218
  br label %if.end

if.then:                                          ; preds = %pl011_read.exit.i.if.then_crit_edge, %if.then4.i.if.then_crit_edge, %entry.if.then_crit_edge
  %call.i2 = tail call fastcc zeroext i1 @pl011_tx_chars(ptr noundef %port, i1 noundef zeroext false) #15
  br i1 %call.i2, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then.i:                                        ; preds = %if.then
  %im.i3 = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 5
  %81 = ptrtoint ptr %im.i3 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %im.i3, align 4
  %or.i4 = or i32 %82, 32
  store i32 %or.i4, ptr %im.i3, align 4
  %membase.i.i5 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %83 = ptrtoint ptr %membase.i.i5 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %membase.i.i5, align 4
  %reg_offset.i.i.i6 = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 1
  %85 = ptrtoint ptr %reg_offset.i.i.i6 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %reg_offset.i.i.i6, align 4
  %arrayidx.i.i.i7 = getelementptr i16, ptr %86, i32 10
  %87 = ptrtoint ptr %arrayidx.i.i.i7 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %arrayidx.i.i.i7, align 2
  %conv.i.i.i8 = zext i16 %88 to i32
  %add.ptr.i.i9 = getelementptr i8, ptr %84, i32 %conv.i.i.i8
  %iotype.i.i10 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %89 = ptrtoint ptr %iotype.i.i10 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %iotype.i.i10, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %90)
  %cmp.i.i11 = icmp eq i8 %90, 3
  br i1 %cmp.i.i11, label %if.then.i.i12, label %if.else.i.i14

if.then.i.i12:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %91 = tail call i32 @llvm.bswap.i32(i32 %or.i4) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i9, i32 %91) #15, !srcloc !205
  br label %if.end

if.else.i.i14:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i.i13 = trunc i32 %or.i4 to i16
  %92 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i13) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i9, i16 %92) #15, !srcloc !218
  br label %if.end

if.end:                                           ; preds = %if.else.i.i14, %if.then.i.i12, %if.then.if.end_crit_edge, %if.else.i107.i, %if.then.i105.i, %if.else.i68.i, %if.then.i66.i, %if.else8.i.if.end_crit_edge, %if.else.i.i, %if.then.i.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl011_stop_rx(ptr nocapture noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %im = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 5
  %0 = ptrtoint ptr %im to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %im, align 4
  %and = and i32 %1, -2001
  store i32 %and, ptr %im, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 4
  %reg_offset.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 1
  %4 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %5, i32 10
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %7 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %8 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp.i = icmp eq i8 %9, 3
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %10 = tail call i32 @llvm.bswap.i32(i32 %and) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #15, !srcloc !205
  br label %pl011_write.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i = trunc i32 %and to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv3.i) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %11) #15, !srcloc !218
  br label %pl011_write.exit

pl011_write.exit:                                 ; preds = %if.else.i, %if.then.i
  %dmacr.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 4
  %12 = ptrtoint ptr %dmacr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dmacr.i, align 4
  %and.i = and i32 %13, -2
  store i32 %and.i, ptr %dmacr.i, align 4
  %14 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i, align 4
  %16 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i.i = getelementptr i16, ptr %17, i32 14
  %18 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.i.i.i, align 2
  %conv.i.i.i = zext i16 %19 to i32
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %conv.i.i.i
  %20 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %21)
  %cmp.i.i = icmp eq i8 %21, 3
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %pl011_write.exit
  call void @__sanitizer_cov_trace_pc() #17
  %22 = tail call i32 @llvm.bswap.i32(i32 %and.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %22) #15, !srcloc !205
  br label %pl011_dma_rx_stop.exit

if.else.i.i:                                      ; preds = %pl011_write.exit
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i.i = trunc i32 %and.i to i16
  %23 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %23) #15, !srcloc !218
  br label %pl011_dma_rx_stop.exit

pl011_dma_rx_stop.exit:                           ; preds = %if.else.i.i, %if.then.i.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbsa_uart_startup(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pl011_hwinit(ptr noundef %port)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %im.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 5
  %0 = ptrtoint ptr %im.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %im.i, align 4
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i.i, align 4
  %reg_offset.i.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 1
  %4 = ptrtoint ptr %reg_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_offset.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i16, ptr %5, i32 10
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i.i.i, align 2
  %conv.i.i.i = zext i16 %7 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i.i
  %iotype.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %8 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %iotype.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp.i.i = icmp eq i8 %9, 3
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %10 = tail call i32 @llvm.bswap.i32(i32 %1) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %10) #15, !srcloc !205
  br label %pl011_allocate_irq.exit

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i.i = trunc i32 %1 to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %11) #15, !srcloc !218
  br label %pl011_allocate_irq.exit

pl011_allocate_irq.exit:                          ; preds = %if.else.i.i, %if.then.i.i
  %irq.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq.i, align 4
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %13, ptr noundef nonnull @pl011_int, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.13, ptr noundef %port) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not, label %if.end5, label %pl011_allocate_irq.exit.cleanup_crit_edge

pl011_allocate_irq.exit.cleanup_crit_edge:        ; preds = %pl011_allocate_irq.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %pl011_allocate_irq.exit
  call void @__sanitizer_cov_trace_pc() #17
  %old_status = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 6
  %14 = ptrtoint ptr %old_status to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %old_status, align 4
  tail call fastcc void @pl011_enable_interrupts(ptr noundef %port)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %pl011_allocate_irq.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call, %entry.cleanup_crit_edge ], [ %call.i.i, %pl011_allocate_irq.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sbsa_uart_shutdown(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_irq(ptr noundef %port) #15
  %im.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 5
  %0 = ptrtoint ptr %im.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %im.i, align 4
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %1 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %membase.i.i, align 4
  %reg_offset.i.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 1
  %3 = ptrtoint ptr %reg_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_offset.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i16, ptr %4, i32 10
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx.i.i.i, align 2
  %conv.i.i.i = zext i16 %6 to i32
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %conv.i.i.i
  %iotype.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %7 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %iotype.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp.i.i = icmp eq i8 %8, 3
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #15, !srcloc !205
  br label %pl011_write.exit.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 0) #15, !srcloc !218
  br label %pl011_write.exit.i

pl011_write.exit.i:                               ; preds = %if.else.i.i, %if.then.i.i
  %9 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i.i, align 4
  %11 = ptrtoint ptr %reg_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_offset.i.i.i, align 4
  %arrayidx.i.i11.i = getelementptr i16, ptr %12, i32 13
  %13 = ptrtoint ptr %arrayidx.i.i11.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx.i.i11.i, align 2
  %conv.i.i12.i = zext i16 %14 to i32
  %add.ptr.i13.i = getelementptr i8, ptr %10, i32 %conv.i.i12.i
  %15 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %iotype.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %16)
  %cmp.i15.i = icmp eq i8 %16, 3
  br i1 %cmp.i15.i, label %if.then.i16.i, label %if.else.i17.i

if.then.i16.i:                                    ; preds = %pl011_write.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 -65536) #15, !srcloc !205
  br label %pl011_disable_interrupts.exit

if.else.i17.i:                                    ; preds = %pl011_write.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i13.i, i16 -1) #15, !srcloc !218
  br label %pl011_disable_interrupts.exit

pl011_disable_interrupts.exit:                    ; preds = %if.else.i17.i, %if.then.i16.i
  tail call void @_raw_spin_unlock_irq(ptr noundef %port) #15
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %18, ptr noundef %port) #15
  %ops = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 39
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops, align 4
  %flush_buffer = getelementptr inbounds %struct.uart_ops, ptr %20, i32 0, i32 13
  %21 = ptrtoint ptr %flush_buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %flush_buffer, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %pl011_disable_interrupts.exit.if.end_crit_edge, label %if.then

pl011_disable_interrupts.exit.if.end_crit_edge:   ; preds = %pl011_disable_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %pl011_disable_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %22(ptr noundef %port) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %pl011_disable_interrupts.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sbsa_uart_set_termios(ptr noundef %port, ptr noundef %termios, ptr nocapture noundef readnone %old) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fixed_baud = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 8
  %0 = ptrtoint ptr %fixed_baud to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fixed_baud, align 4
  tail call void @tty_termios_encode_baud_rate(ptr noundef %termios, i32 noundef %1, i32 noundef %1) #15
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %2 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c_cflag, align 4
  %and3 = and i32 %3, 1073738895
  %or = or i32 %and3, 2096
  store i32 %or, ptr %c_cflag, align 4
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #15
  %4 = ptrtoint ptr %fixed_baud to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fixed_baud, align 4
  tail call void @uart_update_timeout(ptr noundef %port, i32 noundef 48, i32 noundef %5) #15
  %read_status_mask.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 28
  %6 = ptrtoint ptr %read_status_mask.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2303, ptr %read_status_mask.i, align 4
  %7 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %termios, align 4
  %and.i = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.store.select.i = select i1 %tobool.not.i, i32 2303, i32 3071
  %9 = ptrtoint ptr %read_status_mask.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.store.select.i, ptr %read_status_mask.i, align 4
  %10 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %termios, align 4
  %and3.i = and i32 %11, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %entry.if.end8.i_crit_edge, label %if.then5.i

entry.if.end8.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i

if.then5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %or7.i = or i32 %spec.store.select.i, 1024
  %12 = ptrtoint ptr %read_status_mask.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or7.i, ptr %read_status_mask.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %entry.if.end8.i_crit_edge
  %ignore_status_mask.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 29
  %13 = ptrtoint ptr %ignore_status_mask.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %ignore_status_mask.i, align 4
  %14 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %termios, align 4
  %and10.i = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %spec.store.select47.i = select i1 %tobool11.not.i, i32 0, i32 768
  %16 = ptrtoint ptr %ignore_status_mask.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.store.select47.i, ptr %ignore_status_mask.i, align 4
  %17 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %termios, align 4
  %and17.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end8.i.if.end29.i_crit_edge, label %if.then19.i

if.end8.i.if.end29.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29.i

if.then19.i:                                      ; preds = %if.end8.i
  %or21.i = or i32 %spec.store.select47.i, 1024
  %19 = ptrtoint ptr %ignore_status_mask.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or21.i, ptr %ignore_status_mask.i, align 4
  %20 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %termios, align 4
  %and23.i = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.then19.i.if.end29.i_crit_edge, label %if.then25.i

if.then19.i.if.end29.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29.i

if.then25.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  %or27.i = or i32 %spec.store.select47.i, 3072
  %22 = ptrtoint ptr %ignore_status_mask.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or27.i, ptr %ignore_status_mask.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then25.i, %if.then19.i.if.end29.i_crit_edge, %if.end8.i.if.end29.i_crit_edge
  %23 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %c_cflag, align 4
  %and30.i = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %cmp.i = icmp eq i32 %and30.i, 0
  br i1 %cmp.i, label %if.then31.i, label %if.end29.i.pl011_setup_status_masks.exit_crit_edge

if.end29.i.pl011_setup_status_masks.exit_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pl011_setup_status_masks.exit

if.then31.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %ignore_status_mask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ignore_status_mask.i, align 4
  %or33.i = or i32 %26, 65536
  store i32 %or33.i, ptr %ignore_status_mask.i, align 4
  br label %pl011_setup_status_masks.exit

pl011_setup_status_masks.exit:                    ; preds = %if.then31.i, %if.end29.i.pl011_setup_status_masks.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call7) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @pl011_type(ptr noundef readonly %port) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %1)
  %cmp = icmp eq i32 %1, 32
  %type2 = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 9
  %spec.select = select i1 %cmp, ptr %type2, ptr null
  ret ptr %spec.select
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @pl011_config_port(ptr nocapture noundef writeonly %port, i32 noundef %flags) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 32, ptr %type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pl011_verify_port(ptr nocapture noundef readonly %port, ptr nocapture noundef readonly %ser) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.serial_struct, ptr %ser, i32 0, i32 3
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp3 = icmp slt i32 %1, 0
  br i1 %cmp3, label %entry.if.then6_crit_edge, label %lor.lhs.false

entry.if.then6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %ser to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ser, align 4
  %switch.and = and i32 %3, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %4 = select i1 %switch.selectcmp, i32 0, i32 -22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_irqs to i32))
  %5 = load i32, ptr @nr_irqs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp5.not = icmp slt i32 %1, %5
  br i1 %cmp5.not, label %lor.lhs.false.if.end7_crit_edge, label %lor.lhs.false.if.then6_crit_edge

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6

lor.lhs.false.if.end7_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %entry.if.then6_crit_edge
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %lor.lhs.false.if.end7_crit_edge
  %ret.1 = phi i32 [ -22, %if.then6 ], [ %4, %lor.lhs.false.if.end7_crit_edge ]
  %baud_base = getelementptr inbounds %struct.serial_struct, ptr %ser, i32 0, i32 7
  %6 = ptrtoint ptr %baud_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %baud_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9600, i32 %7)
  %cmp8 = icmp slt i32 %7, 9600
  %spec.select = select i1 %cmp8, i32 -22, i32 %ret.1
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %8 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mapbase, align 4
  %iomem_base = getelementptr inbounds %struct.serial_struct, ptr %ser, i32 0, i32 14
  %10 = ptrtoint ptr %iomem_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iomem_base, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %12)
  %cmp11.not = icmp eq i32 %9, %12
  %ret.3 = select i1 %cmp11.not, i32 %spec.select, i32 -22
  ret i32 %ret.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl011_hwinit(ptr nocapture noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %1) #15
  %clk = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @clk_unprepare(ptr noundef %3) #15
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call4 = tail call i32 @clk_get_rate(ptr noundef %5) #15
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %6 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call4, ptr %uartclk, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %7 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i, align 4
  %reg_offset.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 1
  %9 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %10, i32 13
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %12 to i32
  %add.ptr.i = getelementptr i8, ptr %8, i32 %conv.i.i
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %13 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %14)
  %cmp.i = icmp eq i8 %14, 3
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -804847616) #15, !srcloc !205
  br label %pl011_write.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 -12281) #15, !srcloc !218
  br label %pl011_write.exit

pl011_write.exit:                                 ; preds = %if.else.i, %if.then.i
  %15 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i, align 4
  %17 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i35 = getelementptr i16, ptr %18, i32 10
  %19 = ptrtoint ptr %arrayidx.i.i35 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx.i.i35, align 2
  %conv.i.i36 = zext i16 %20 to i32
  %add.ptr.i37 = getelementptr i8, ptr %16, i32 %conv.i.i36
  %21 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %22)
  %cmp.i39 = icmp eq i8 %22, 3
  br i1 %cmp.i39, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %pl011_write.exit
  call void @__sanitizer_cov_trace_pc() #17
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #15, !srcloc !197
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #15
  br label %pl011_read.exit

cond.false.i:                                     ; preds = %pl011_write.exit
  call void @__sanitizer_cov_trace_pc() #17
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i37) #15, !srcloc !219
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #15
  %conv7.i = zext i16 %26 to i32
  br label %pl011_read.exit

pl011_read.exit:                                  ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %24, %cond.true.i ], [ %conv7.i, %cond.false.i ]
  %im = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 5
  %27 = ptrtoint ptr %im to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond.i, ptr %im, align 4
  %28 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase.i, align 4
  %30 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i42 = getelementptr i16, ptr %31, i32 10
  %32 = ptrtoint ptr %arrayidx.i.i42 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx.i.i42, align 2
  %conv.i.i43 = zext i16 %33 to i32
  %add.ptr.i44 = getelementptr i8, ptr %29, i32 %conv.i.i43
  %34 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %35)
  %cmp.i46 = icmp eq i8 %35, 3
  br i1 %cmp.i46, label %if.then.i47, label %if.else.i48

if.then.i47:                                      ; preds = %pl011_read.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 1342177280) #15, !srcloc !205
  br label %pl011_write.exit50

if.else.i48:                                      ; preds = %pl011_read.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i44, i16 20480) #15, !srcloc !218
  br label %pl011_write.exit50

pl011_write.exit50:                               ; preds = %if.else.i48, %if.then.i47
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %platform_data.i, align 8
  %tobool10.not = icmp eq ptr %39, null
  br i1 %tobool10.not, label %pl011_write.exit50.cleanup_crit_edge, label %if.then11

pl011_write.exit50.cleanup_crit_edge:             ; preds = %pl011_write.exit50
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then11:                                        ; preds = %pl011_write.exit50
  %init = getelementptr inbounds %struct.amba_pl011_data, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %init, align 4
  %tobool15.not = icmp eq ptr %41, null
  br i1 %tobool15.not, label %if.then11.cleanup_crit_edge, label %if.then16

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then16:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %41() #15
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.then11.cleanup_crit_edge, %pl011_write.exit50.cleanup_crit_edge, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then11.cleanup_crit_edge ], [ 0, %if.then16 ], [ 0, %pl011_write.exit50.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl011_put_poll_char(ptr nocapture noundef readonly %port, i8 noundef zeroext %ch) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %reg_offset.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 1
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  br label %while.cond

while.cond:                                       ; preds = %do.end, %entry
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %2 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %3, i32 3
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %6 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp.i = icmp eq i8 %7, 3
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !197
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #15
  br label %pl011_read.exit

cond.false.i:                                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #15, !srcloc !219
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #15
  %conv7.i = zext i16 %11 to i32
  br label %pl011_read.exit

pl011_read.exit:                                  ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %9, %cond.true.i ], [ %conv7.i, %cond.false.i ]
  %and = and i32 %cond.i, 32
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end, label %do.end

do.end:                                           ; preds = %pl011_read.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !221
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !222
  br label %while.cond

while.end:                                        ; preds = %pl011_read.exit
  %12 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i, align 4
  %14 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_offset.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %15, align 2
  %conv.i.i10 = zext i16 %17 to i32
  %add.ptr.i11 = getelementptr i8, ptr %13, i32 %conv.i.i10
  %18 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp.i13 = icmp eq i8 %19, 3
  br i1 %cmp.i13, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  %conv = zext i8 %ch to i32
  %20 = shl nuw i32 %conv, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %20) #15, !srcloc !205
  br label %pl011_write.exit

if.else.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i = zext i8 %ch to i16
  %21 = shl nuw i16 %conv3.i, 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i11, i16 %21) #15, !srcloc !218
  br label %pl011_write.exit

pl011_write.exit:                                 ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl011_get_poll_char(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i.i, align 4
  %reg_offset.i.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 1
  %2 = ptrtoint ptr %reg_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_offset.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i16, ptr %3, i32 12
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i.i.i, align 2
  %conv.i.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i.i
  %iotype.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %6 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %iotype.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp.i.i = icmp eq i8 %7, 3
  br i1 %cmp.i.i, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #15, !srcloc !197
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #15
  br label %pl011_read.exit.i

cond.false.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #15, !srcloc !219
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #15
  %conv7.i.i = zext i16 %11 to i32
  br label %pl011_read.exit.i

pl011_read.exit.i:                                ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i32 [ %9, %cond.true.i.i ], [ %conv7.i.i, %cond.false.i.i ]
  %12 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i.i, align 4
  %14 = ptrtoint ptr %reg_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_offset.i.i.i, align 4
  %arrayidx.i.i7.i = getelementptr i16, ptr %15, i32 13
  %16 = ptrtoint ptr %arrayidx.i.i7.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.i.i7.i, align 2
  %conv.i.i8.i = zext i16 %17 to i32
  %add.ptr.i9.i = getelementptr i8, ptr %13, i32 %conv.i.i8.i
  %18 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %iotype.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp.i11.i = icmp eq i8 %19, 3
  br i1 %cmp.i11.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %pl011_read.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %20 = tail call i32 @llvm.bswap.i32(i32 %cond.i.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %20) #15, !srcloc !205
  br label %pl011_write.exit.i

if.else.i.i:                                      ; preds = %pl011_read.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i.i = trunc i32 %cond.i.i to i16
  %21 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i9.i, i16 %21) #15, !srcloc !218
  br label %pl011_write.exit.i

pl011_write.exit.i:                               ; preds = %if.else.i.i, %if.then.i.i
  %22 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i.i, align 4
  %24 = ptrtoint ptr %reg_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_offset.i.i.i, align 4
  %arrayidx.i.i14.i = getelementptr i16, ptr %25, i32 10
  %26 = ptrtoint ptr %arrayidx.i.i14.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.i.i14.i, align 2
  %conv.i.i15.i = zext i16 %27 to i32
  %add.ptr.i16.i = getelementptr i8, ptr %23, i32 %conv.i.i15.i
  %28 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %iotype.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %29)
  %cmp.i18.i = icmp eq i8 %29, 3
  br i1 %cmp.i18.i, label %cond.true.i19.i, label %cond.false.i21.i

cond.true.i19.i:                                  ; preds = %pl011_write.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.i) #15, !srcloc !197
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #15
  br label %pl011_read.exit23.i

cond.false.i21.i:                                 ; preds = %pl011_write.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i16.i) #15, !srcloc !219
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #15
  %conv7.i20.i = zext i16 %33 to i32
  br label %pl011_read.exit23.i

pl011_read.exit23.i:                              ; preds = %cond.false.i21.i, %cond.true.i19.i
  %cond.i22.i = phi i32 [ %31, %cond.true.i19.i ], [ %conv7.i20.i, %cond.false.i21.i ]
  %and.i = and i32 %cond.i22.i, -33
  %34 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase.i.i, align 4
  %36 = ptrtoint ptr %reg_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_offset.i.i.i, align 4
  %arrayidx.i.i26.i = getelementptr i16, ptr %37, i32 10
  %38 = ptrtoint ptr %arrayidx.i.i26.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx.i.i26.i, align 2
  %conv.i.i27.i = zext i16 %39 to i32
  %add.ptr.i28.i = getelementptr i8, ptr %35, i32 %conv.i.i27.i
  %40 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %iotype.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %41)
  %cmp.i30.i = icmp eq i8 %41, 3
  br i1 %cmp.i30.i, label %if.then.i31.i, label %if.else.i33.i

if.then.i31.i:                                    ; preds = %pl011_read.exit23.i
  call void @__sanitizer_cov_trace_pc() #17
  %42 = tail call i32 @llvm.bswap.i32(i32 %and.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28.i, i32 %42) #15, !srcloc !205
  br label %pl011_quiesce_irqs.exit

if.else.i33.i:                                    ; preds = %pl011_read.exit23.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i32.i = trunc i32 %and.i to i16
  %43 = tail call i16 @llvm.bswap.i16(i16 %conv3.i32.i) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i28.i, i16 %43) #15, !srcloc !218
  br label %pl011_quiesce_irqs.exit

pl011_quiesce_irqs.exit:                          ; preds = %if.else.i33.i, %if.then.i31.i
  %44 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %membase.i.i, align 4
  %46 = ptrtoint ptr %reg_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg_offset.i.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %47, i32 3
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %49 to i32
  %add.ptr.i = getelementptr i8, ptr %45, i32 %conv.i.i
  %50 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %iotype.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %51)
  %cmp.i = icmp eq i8 %51, 3
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %pl011_quiesce_irqs.exit
  call void @__sanitizer_cov_trace_pc() #17
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !197
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #15
  br label %pl011_read.exit

cond.false.i:                                     ; preds = %pl011_quiesce_irqs.exit
  call void @__sanitizer_cov_trace_pc() #17
  %54 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #15, !srcloc !219
  %55 = tail call i16 @llvm.bswap.i16(i16 %54) #15
  %conv7.i = zext i16 %55 to i32
  br label %pl011_read.exit

pl011_read.exit:                                  ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %53, %cond.true.i ], [ %conv7.i, %cond.false.i ]
  %and = and i32 %cond.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %pl011_read.exit.cleanup_crit_edge

pl011_read.exit.cleanup_crit_edge:                ; preds = %pl011_read.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %pl011_read.exit
  %56 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %membase.i.i, align 4
  %58 = ptrtoint ptr %reg_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %reg_offset.i.i.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %59, align 2
  %conv.i.i7 = zext i16 %61 to i32
  %add.ptr.i8 = getelementptr i8, ptr %57, i32 %conv.i.i7
  %62 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %iotype.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %63)
  %cmp.i10 = icmp eq i8 %63, 3
  br i1 %cmp.i10, label %cond.true.i11, label %cond.false.i13

cond.true.i11:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8) #15, !srcloc !197
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #15
  br label %cleanup

cond.false.i13:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %66 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i8) #15, !srcloc !219
  %67 = tail call i16 @llvm.bswap.i16(i16 %66) #15
  %conv7.i12 = zext i16 %67 to i32
  br label %cleanup

cleanup:                                          ; preds = %cond.false.i13, %cond.true.i11, %pl011_read.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 16711680, %pl011_read.exit.cleanup_crit_edge ], [ %65, %cond.true.i11 ], [ %conv7.i12, %cond.false.i13 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pl011_rs485_tx_stop(ptr nocapture noundef %uap) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 2
  %reg_offset.i.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 1
  %iotype.i.i = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 26
  %vendor.i = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 3
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 23
  %rs485_tx_drain_interval = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 11
  br label %while.cond

while.cond:                                       ; preds = %cond.false6, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %cond.false6 ]
  %0 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i.i, align 4
  %2 = ptrtoint ptr %reg_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_offset.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i16, ptr %3, i32 3
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i.i.i, align 2
  %conv.i.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i.i
  %6 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %iotype.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp.i.i = icmp eq i8 %7, 3
  br i1 %cmp.i.i, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #15, !srcloc !197
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #15
  br label %pl011_tx_empty.exit

cond.false.i.i:                                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #15, !srcloc !219
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #15
  %conv7.i.i = zext i16 %11 to i32
  br label %pl011_tx_empty.exit

pl011_tx_empty.exit:                              ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i32 [ %9, %cond.true.i.i ], [ %conv7.i.i, %cond.false.i.i ]
  %12 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vendor.i, align 4
  %inv_fr.i = getelementptr inbounds %struct.vendor_data, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %inv_fr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %inv_fr.i, align 4
  %xor.i = xor i32 %15, %cond.i.i
  %fr_busy.i = getelementptr inbounds %struct.vendor_data, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %fr_busy.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fr_busy.i, align 4
  %or.i = or i32 %17, 32
  %and.i = and i32 %or.i, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %pl011_tx_empty.exit.while.end_crit_edge, label %while.body

pl011_tx_empty.exit.while.end_crit_edge:          ; preds = %pl011_tx_empty.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %pl011_tx_empty.exit
  %18 = ptrtoint ptr %fifosize to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fifosize, align 4
  %cmp = icmp eq i32 %i.0, %19
  br i1 %cmp, label %do.end, label %cond.false6

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 45
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.4) #18
  br label %while.end

cond.false6:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  %22 = ptrtoint ptr %rs485_tx_drain_interval to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rs485_tx_drain_interval, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %24(i32 noundef %23) #15
  %inc = add i32 %i.0, 1
  br label %while.cond

while.end:                                        ; preds = %do.end, %pl011_tx_empty.exit.while.end_crit_edge
  %rs485 = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 56
  %delay_rts_after_send = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 56, i32 2
  %25 = ptrtoint ptr %delay_rts_after_send to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %delay_rts_after_send, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool9.not = icmp eq i32 %26, 0
  br i1 %tobool9.not, label %while.end.if.end45_crit_edge, label %while.end.while.body42_crit_edge

while.end.while.body42_crit_edge:                 ; preds = %while.end
  br label %while.body42

while.end.if.end45_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end45

while.body42:                                     ; preds = %while.body42.while.body42_crit_edge, %while.end.while.body42_crit_edge
  %__ms.096 = phi i32 [ %dec, %while.body42.while.body42_crit_edge ], [ %26, %while.end.while.body42_crit_edge ]
  %dec = add i32 %__ms.096, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #15
  %tobool41.not = icmp eq i32 %dec, 0
  br i1 %tobool41.not, label %while.body42.if.end45_crit_edge, label %while.body42.while.body42_crit_edge

while.body42.while.body42_crit_edge:              ; preds = %while.body42
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body42

while.body42.if.end45_crit_edge:                  ; preds = %while.body42
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end45

if.end45:                                         ; preds = %while.body42.if.end45_crit_edge, %while.end.if.end45_crit_edge
  %28 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase.i.i, align 4
  %30 = ptrtoint ptr %reg_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_offset.i.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %31, i32 8
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %33 to i32
  %add.ptr.i = getelementptr i8, ptr %29, i32 %conv.i.i
  %34 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %iotype.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %35)
  %cmp.i = icmp eq i8 %35, 3
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !197
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #15
  br label %pl011_read.exit

cond.false.i:                                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #15, !srcloc !219
  %39 = tail call i16 @llvm.bswap.i16(i16 %38) #15
  %conv7.i = zext i16 %39 to i32
  br label %pl011_read.exit

pl011_read.exit:                                  ; preds = %cond.false.i, %cond.true.i
  %cond.i78 = phi i32 [ %37, %cond.true.i ], [ %conv7.i, %cond.false.i ]
  %40 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rs485, align 4
  %and50 = and i32 %cond.i78, -2817
  %and = shl i32 %41, 9
  %42 = and i32 %and, 2048
  %43 = or i32 %42, %and50
  %or53 = xor i32 %43, 2560
  %44 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %membase.i.i, align 4
  %46 = ptrtoint ptr %reg_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg_offset.i.i.i, align 4
  %arrayidx.i.i81 = getelementptr i16, ptr %47, i32 8
  %48 = ptrtoint ptr %arrayidx.i.i81 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx.i.i81, align 2
  %conv.i.i82 = zext i16 %49 to i32
  %add.ptr.i83 = getelementptr i8, ptr %45, i32 %conv.i.i82
  %50 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %iotype.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %51)
  %cmp.i85 = icmp eq i8 %51, 3
  br i1 %cmp.i85, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %pl011_read.exit
  call void @__sanitizer_cov_trace_pc() #17
  %52 = tail call i32 @llvm.bswap.i32(i32 %or53) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83, i32 %52) #15, !srcloc !205
  br label %pl011_write.exit

if.else.i:                                        ; preds = %pl011_read.exit
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i = trunc i32 %or53 to i16
  %53 = tail call i16 @llvm.bswap.i16(i16 %conv3.i) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i83, i16 %53) #15, !srcloc !218
  br label %pl011_write.exit

pl011_write.exit:                                 ; preds = %if.else.i, %if.then.i
  %rs485_tx_started = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 10
  %54 = ptrtoint ptr %rs485_tx_started to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %rs485_tx_started, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pl011_dma_tx_refill(ptr noundef %uap) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dmatx1 = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 15
  %0 = ptrtoint ptr %dmatx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmatx1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %state = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 30
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state, align 4
  %xmit3 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2
  %head = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tail, align 4
  %sub = sub i32 %7, %9
  %and = and i32 %sub, 4095
  %fifosize = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 7
  %10 = ptrtoint ptr %fifosize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fifosize, align 4
  %shr = lshr i32 %11, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %shr)
  %cmp = icmp ult i32 %and, %shr
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %queued = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 15, i32 3
  %12 = ptrtoint ptr %queued to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %queued, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub5 = add nsw i32 %and, -1
  %13 = tail call i32 @llvm.umin.i32(i32 %sub5, i32 4096)
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp11 = icmp sgt i32 %7, %9
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %buf = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 15, i32 2
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buf, align 4
  %16 = ptrtoint ptr %xmit3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xmit3, align 4
  %arrayidx15 = getelementptr i8, ptr %17, i32 %9
  %18 = call ptr @memcpy(ptr %15, ptr %arrayidx15, i32 %13)
  br label %if.end33

if.else:                                          ; preds = %if.end
  %sub17 = sub i32 4096, %9
  %19 = tail call i32 @llvm.umin.i32(i32 %sub17, i32 %13)
  %buf22 = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 15, i32 2
  %20 = ptrtoint ptr %buf22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buf22, align 4
  %22 = ptrtoint ptr %xmit3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xmit3, align 4
  %arrayidx26 = getelementptr i8, ptr %23, i32 %9
  %24 = call ptr @memcpy(ptr %21, ptr %arrayidx26, i32 %19)
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %sub17)
  %tobool.not.not = icmp ugt i32 %13, %sub17
  br i1 %tobool.not.not, label %if.then27, label %if.else.if.end33_crit_edge

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %sub21 = sub nsw i32 %13, %19
  %25 = ptrtoint ptr %buf22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buf22, align 4
  %arrayidx29 = getelementptr i8, ptr %26, i32 %19
  %27 = ptrtoint ptr %xmit3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %xmit3, align 4
  %29 = call ptr @memcpy(ptr %arrayidx29, ptr %28, i32 %sub21)
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %if.else.if.end33_crit_edge, %if.then12
  %sg = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 15, i32 1
  %length = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 15, i32 1, i32 2
  %30 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %13, ptr %length, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  %call = tail call i32 @dma_map_sg_attrs(ptr noundef %32, ptr noundef %sg, i32 noundef 1, i32 noundef 1, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp35.not = icmp eq i32 %call, 1
  br i1 %cmp35.not, label %if.end47, label %if.then36

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  %queued38 = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 15, i32 3
  %33 = ptrtoint ptr %queued38 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %queued38, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl011_dma_tx_refill.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl011_dma_tx_refill, %if.then43)) #15
          to label %cleanup [label %if.then43], !srcloc !223

if.then43:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #17
  %dev45 = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 45
  %34 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev45, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl011_dma_tx_refill.__UNIQUE_ID_ddebug290, ptr noundef %35, ptr noundef nonnull @.str.11) #15
  br label %cleanup

if.end47:                                         ; preds = %if.end33
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end47.if.then51_crit_edge, label %lor.lhs.false.i

if.end47.if.then51_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then51

lor.lhs.false.i:                                  ; preds = %if.end47
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %tobool1.not.i = icmp eq ptr %37, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.then51_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.if.then51_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then51

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %37, i32 0, i32 39
  %38 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %39, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.if.then51_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.if.then51_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then51

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i = tail call ptr %39(ptr noundef nonnull %1, ptr noundef %sg, i32 noundef 1, i32 noundef 1, i32 noundef 3, ptr noundef null) #15
  %tobool50.not = icmp eq ptr %call.i, null
  br i1 %tobool50.not, label %dmaengine_prep_slave_sg.exit.if.then51_crit_edge, label %if.end74

dmaengine_prep_slave_sg.exit.if.then51_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then51

if.then51:                                        ; preds = %dmaengine_prep_slave_sg.exit.if.then51_crit_edge, %lor.lhs.false2.i.if.then51_crit_edge, %lor.lhs.false.i.if.then51_crit_edge, %if.end47.if.then51_crit_edge
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %41, ptr noundef %sg, i32 noundef 1, i32 noundef 1, i32 noundef 0) #15
  %queued55 = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 15, i32 3
  %42 = ptrtoint ptr %queued55 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %queued55, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl011_dma_tx_refill.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl011_dma_tx_refill, %if.then68)) #15
          to label %cleanup [label %if.then68], !srcloc !223

if.then68:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #17
  %dev70 = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 45
  %43 = ptrtoint ptr %dev70 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev70, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl011_dma_tx_refill.__UNIQUE_ID_ddebug291, ptr noundef %44, ptr noundef nonnull @.str.12) #15
  br label %cleanup

if.end74:                                         ; preds = %dmaengine_prep_slave_sg.exit
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 6
  %45 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @pl011_dma_tx_callback, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 8
  %46 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %uap, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %47 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tx_submit.i, align 4
  %call.i155 = tail call i32 %48(ptr noundef nonnull %call.i) #15
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 50
  %49 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device_issue_pending, align 4
  tail call void %50(ptr noundef nonnull %1) #15
  %dmacr = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 4
  %51 = ptrtoint ptr %dmacr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dmacr, align 4
  %or = or i32 %52, 2
  store i32 %or, ptr %dmacr, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 2
  %53 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %membase.i, align 4
  %reg_offset.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 1
  %55 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %56, i32 14
  %57 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %58 to i32
  %add.ptr.i = getelementptr i8, ptr %54, i32 %conv.i.i
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 26
  %59 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %60)
  %cmp.i = icmp eq i8 %60, 3
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #17
  %61 = tail call i32 @llvm.bswap.i32(i32 %or) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %61) #15, !srcloc !205
  br label %pl011_write.exit

if.else.i:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i = trunc i32 %or to i16
  %62 = tail call i16 @llvm.bswap.i16(i16 %conv3.i) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %62) #15, !srcloc !218
  br label %pl011_write.exit

pl011_write.exit:                                 ; preds = %if.else.i, %if.then.i
  %queued78 = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 15, i32 3
  %63 = ptrtoint ptr %queued78 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %queued78, align 4
  %64 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tail, align 4
  %add = add i32 %65, %13
  %and80 = and i32 %add, 4095
  store i32 %and80, ptr %tail, align 4
  %tx = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 31, i32 5
  %66 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tx, align 4
  %add83 = add i32 %67, %13
  store i32 %add83, ptr %tx, align 4
  %68 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %head, align 4
  %70 = load i32, ptr %tail, align 4
  %sub86 = sub i32 %69, %70
  %and87 = and i32 %sub86, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %cmp88 = icmp eq i32 %and87, 0
  br i1 %cmp88, label %if.then89, label %pl011_write.exit.cleanup_crit_edge

pl011_write.exit.cleanup_crit_edge:               ; preds = %pl011_write.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then89:                                        ; preds = %pl011_write.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @uart_write_wakeup(ptr noundef %uap) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then89, %pl011_write.exit.cleanup_crit_edge, %if.then68, %if.then51, %if.then43, %if.then36, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -16, %if.then43 ], [ -16, %if.then68 ], [ 1, %if.then89 ], [ 1, %pl011_write.exit.cleanup_crit_edge ], [ -16, %if.then36 ], [ -16, %if.then51 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl011_dma_tx_callback(ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %data) #15
  %queued = getelementptr inbounds %struct.uart_amba_port, ptr %data, i32 0, i32 15, i32 3
  %0 = ptrtoint ptr %queued to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %queued, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dmatx1 = getelementptr inbounds %struct.uart_amba_port, ptr %data, i32 0, i32 15
  %2 = ptrtoint ptr %dmatx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dmatx1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %sg = getelementptr inbounds %struct.uart_amba_port, ptr %data, i32 0, i32 15, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %7, ptr noundef %sg, i32 noundef 1, i32 noundef 1, i32 noundef 0) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dmacr7 = getelementptr inbounds %struct.uart_amba_port, ptr %data, i32 0, i32 4
  %8 = ptrtoint ptr %dmacr7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dmacr7, align 4
  %and = and i32 %9, 65533
  store i32 %and, ptr %dmacr7, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 2
  %10 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i, align 4
  %reg_offset.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %data, i32 0, i32 1
  %12 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %13, i32 14
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %15 to i32
  %add.ptr.i = getelementptr i8, ptr %11, i32 %conv.i.i
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 26
  %16 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %17)
  %cmp.i = icmp eq i8 %17, 3
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %18 = tail call i32 @llvm.bswap.i32(i32 %and) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #15, !srcloc !205
  br label %pl011_write.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i = trunc i32 %and to i16
  %19 = tail call i16 @llvm.bswap.i16(i16 %conv3.i) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %19) #15, !srcloc !218
  br label %pl011_write.exit

pl011_write.exit:                                 ; preds = %if.else.i, %if.then.i
  %and13 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %pl011_write.exit.if.then25_crit_edge, label %lor.lhs.false

pl011_write.exit.if.then25_crit_edge:             ; preds = %pl011_write.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then25

lor.lhs.false:                                    ; preds = %pl011_write.exit
  %state.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 30
  %20 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %state.i, align 4
  %tty2.i = getelementptr inbounds %struct.tty_port, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %tty2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tty2.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %lor.lhs.false.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i

lor.lhs.false.uart_tx_stopped.exit_crit_edge:     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %uart_tx_stopped.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false
  %stopped.i = getelementptr inbounds %struct.tty_struct, ptr %23, i32 0, i32 19, i32 1
  %24 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %stopped.i, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool3.not.i = icmp eq i8 %25, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i.if.then25_crit_edge

land.lhs.true.i.if.then25_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then25

land.lhs.true.i.uart_tx_stopped.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %uart_tx_stopped.exit

uart_tx_stopped.exit:                             ; preds = %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, %lor.lhs.false.uart_tx_stopped.exit_crit_edge
  %hw_stopped.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 35
  %26 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hw_stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool4.not.i.not = icmp eq i32 %27, 0
  br i1 %tobool4.not.i.not, label %lor.lhs.false18, label %uart_tx_stopped.exit.if.then25_crit_edge

uart_tx_stopped.exit.if.then25_crit_edge:         ; preds = %uart_tx_stopped.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then25

lor.lhs.false18:                                  ; preds = %uart_tx_stopped.exit
  %head = getelementptr inbounds %struct.uart_state, ptr %21, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %21, i32 0, i32 2, i32 2
  %30 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp23 = icmp eq i32 %29, %31
  br i1 %cmp23, label %lor.lhs.false18.if.then25_crit_edge, label %if.end30

lor.lhs.false18.if.then25_crit_edge:              ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then25

if.then25:                                        ; preds = %lor.lhs.false18.if.then25_crit_edge, %uart_tx_stopped.exit.if.then25_crit_edge, %land.lhs.true.i.if.then25_crit_edge, %pl011_write.exit.if.then25_crit_edge
  %32 = ptrtoint ptr %queued to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %queued, align 4
  br label %cleanup

if.end30:                                         ; preds = %lor.lhs.false18
  %call31 = tail call fastcc i32 @pl011_dma_tx_refill(ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 1
  br i1 %cmp32, label %if.then34, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then34:                                        ; preds = %if.end30
  %call.i = tail call fastcc zeroext i1 @pl011_tx_chars(ptr noundef %data, i1 noundef zeroext false) #15
  br i1 %call.i, label %if.then.i58, label %if.then34.cleanup_crit_edge

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i58:                                      ; preds = %if.then34
  %im.i = getelementptr inbounds %struct.uart_amba_port, ptr %data, i32 0, i32 5
  %33 = ptrtoint ptr %im.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %im.i, align 4
  %or.i = or i32 %34, 32
  store i32 %or.i, ptr %im.i, align 4
  %35 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase.i, align 4
  %37 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i.i = getelementptr i16, ptr %38, i32 10
  %39 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx.i.i.i, align 2
  %conv.i.i.i = zext i16 %40 to i32
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 %conv.i.i.i
  %41 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %42)
  %cmp.i.i = icmp eq i8 %42, 3
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then.i58
  call void @__sanitizer_cov_trace_pc() #17
  %43 = tail call i32 @llvm.bswap.i32(i32 %or.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %43) #15, !srcloc !205
  br label %cleanup

if.else.i.i:                                      ; preds = %if.then.i58
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i.i = trunc i32 %or.i to i16
  %44 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %44) #15, !srcloc !218
  br label %cleanup

cleanup:                                          ; preds = %if.else.i.i, %if.then.i.i, %if.then34.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.then25
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %data, i32 noundef %call3) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @pl011_tx_chars(ptr noundef %uap, i1 noundef zeroext %from_irq) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %xmit1 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2
  %fifosize = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 7
  %2 = ptrtoint ptr %fifosize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fifosize, align 4
  %shr = lshr i32 %3, 1
  %x_char = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 24
  %4 = ptrtoint ptr %x_char to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %x_char, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then:                                          ; preds = %entry
  br i1 %from_irq, label %if.then.if.end.i_crit_edge, label %land.lhs.true.i, !prof !224

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 2
  %6 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i.i, align 4
  %reg_offset.i.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 1
  %8 = ptrtoint ptr %reg_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_offset.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i16, ptr %9, i32 3
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.i.i.i, align 2
  %conv.i.i.i = zext i16 %11 to i32
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %conv.i.i.i
  %iotype.i.i = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 26
  %12 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %iotype.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp.i.i = icmp eq i8 %13, 3
  br i1 %cmp.i.i, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #15, !srcloc !197
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #15
  br label %pl011_read.exit.i

cond.false.i.i:                                   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #15, !srcloc !219
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #15
  %conv7.i.i = zext i16 %17 to i32
  br label %pl011_read.exit.i

pl011_read.exit.i:                                ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i32 [ %15, %cond.true.i.i ], [ %conv7.i.i, %cond.false.i.i ]
  %and.i = and i32 %cond.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %pl011_read.exit.i.if.end.i_crit_edge, label %pl011_read.exit.i.cleanup_crit_edge

pl011_read.exit.i.cleanup_crit_edge:              ; preds = %pl011_read.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

pl011_read.exit.i.if.end.i_crit_edge:             ; preds = %pl011_read.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.end.i:                                         ; preds = %pl011_read.exit.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %membase.i7.i = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 2
  %18 = ptrtoint ptr %membase.i7.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i7.i, align 4
  %reg_offset.i.i8.i = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 1
  %20 = ptrtoint ptr %reg_offset.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_offset.i.i8.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %21, align 2
  %conv.i.i9.i = zext i16 %23 to i32
  %add.ptr.i10.i = getelementptr i8, ptr %19, i32 %conv.i.i9.i
  %iotype.i11.i = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 26
  %24 = ptrtoint ptr %iotype.i11.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %iotype.i11.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %25)
  %cmp.i12.i = icmp eq i8 %25, 3
  br i1 %cmp.i12.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i = zext i8 %5 to i32
  %26 = shl nuw i32 %conv.i, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %26) #15, !srcloc !205
  br label %if.end

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i.i = zext i8 %5 to i16
  %27 = shl nuw i16 %conv3.i.i, 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10.i, i16 %27) #15, !srcloc !218
  br label %if.end

if.end:                                           ; preds = %if.else.i.i, %if.then.i.i
  %tx.i = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 31, i32 5
  %28 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx.i, align 4
  %inc.i = add i32 %29, 1
  store i32 %inc.i, ptr %tx.i, align 4
  %30 = ptrtoint ptr %x_char to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %x_char, align 4
  %dec = add nsw i32 %shr, -1
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry.if.end9_crit_edge
  %count.0 = phi i32 [ %dec, %if.end ], [ %shr, %entry.if.end9_crit_edge ]
  %head = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %33 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp = icmp eq i32 %32, %34
  br i1 %cmp, label %if.end9.if.then13_crit_edge, label %lor.lhs.false

if.end9.if.then13_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then13

lor.lhs.false:                                    ; preds = %if.end9
  %35 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %state, align 4
  %tty2.i = getelementptr inbounds %struct.tty_port, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %tty2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tty2.i, align 4
  %tobool.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i, label %lor.lhs.false.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i87

lor.lhs.false.uart_tx_stopped.exit_crit_edge:     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %uart_tx_stopped.exit

land.lhs.true.i87:                                ; preds = %lor.lhs.false
  %stopped.i = getelementptr inbounds %struct.tty_struct, ptr %38, i32 0, i32 19, i32 1
  %39 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %stopped.i, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool3.not.i = icmp eq i8 %40, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i87.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i87.if.then13_crit_edge

land.lhs.true.i87.if.then13_crit_edge:            ; preds = %land.lhs.true.i87
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then13

land.lhs.true.i87.uart_tx_stopped.exit_crit_edge: ; preds = %land.lhs.true.i87
  call void @__sanitizer_cov_trace_pc() #17
  br label %uart_tx_stopped.exit

uart_tx_stopped.exit:                             ; preds = %land.lhs.true.i87.uart_tx_stopped.exit_crit_edge, %lor.lhs.false.uart_tx_stopped.exit_crit_edge
  %hw_stopped.i = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 35
  %41 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hw_stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool4.not.i88.not = icmp eq i32 %42, 0
  br i1 %tobool4.not.i88.not, label %if.end15, label %uart_tx_stopped.exit.if.then13_crit_edge

uart_tx_stopped.exit.if.then13_crit_edge:         ; preds = %uart_tx_stopped.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then13

if.then13:                                        ; preds = %uart_tx_stopped.exit.if.then13_crit_edge, %land.lhs.true.i87.if.then13_crit_edge, %if.end9.if.then13_crit_edge
  %im.i = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 5
  %43 = ptrtoint ptr %im.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %im.i, align 4
  %and.i90 = and i32 %44, -33
  store i32 %and.i90, ptr %im.i, align 4
  %membase.i.i91 = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 2
  %45 = ptrtoint ptr %membase.i.i91 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %membase.i.i91, align 4
  %reg_offset.i.i.i92 = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 1
  %47 = ptrtoint ptr %reg_offset.i.i.i92 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg_offset.i.i.i92, align 4
  %arrayidx.i.i.i93 = getelementptr i16, ptr %48, i32 10
  %49 = ptrtoint ptr %arrayidx.i.i.i93 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx.i.i.i93, align 2
  %conv.i.i.i94 = zext i16 %50 to i32
  %add.ptr.i.i95 = getelementptr i8, ptr %46, i32 %conv.i.i.i94
  %iotype.i.i96 = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 26
  %51 = ptrtoint ptr %iotype.i.i96 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %iotype.i.i96, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %52)
  %cmp.i.i97 = icmp eq i8 %52, 3
  br i1 %cmp.i.i97, label %if.then.i.i98, label %if.else.i.i100

if.then.i.i98:                                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  %53 = tail call i32 @llvm.bswap.i32(i32 %and.i90) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i95, i32 %53) #15, !srcloc !205
  br label %pl011_write.exit.i101

if.else.i.i100:                                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i.i99 = trunc i32 %and.i90 to i16
  %54 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i99) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i95, i16 %54) #15, !srcloc !218
  br label %pl011_write.exit.i101

pl011_write.exit.i101:                            ; preds = %if.else.i.i100, %if.then.i.i98
  %queued.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 15, i32 3
  %55 = ptrtoint ptr %queued.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %queued.i.i, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i.i = icmp eq i8 %56, 0
  br i1 %tobool.not.i.i, label %pl011_write.exit.i101.pl011_dma_tx_stop.exit.i_crit_edge, label %if.then.i10.i

pl011_write.exit.i101.pl011_dma_tx_stop.exit.i_crit_edge: ; preds = %pl011_write.exit.i101
  call void @__sanitizer_cov_trace_pc() #17
  br label %pl011_dma_tx_stop.exit.i

if.then.i10.i:                                    ; preds = %pl011_write.exit.i101
  %dmacr.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 4
  %57 = ptrtoint ptr %dmacr.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dmacr.i.i, align 4
  %and.i.i = and i32 %58, -3
  store i32 %and.i.i, ptr %dmacr.i.i, align 4
  %59 = ptrtoint ptr %membase.i.i91 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %membase.i.i91, align 4
  %61 = ptrtoint ptr %reg_offset.i.i.i92 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %reg_offset.i.i.i92, align 4
  %arrayidx.i.i.i.i = getelementptr i16, ptr %62, i32 14
  %63 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %64 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %60, i32 %conv.i.i.i.i
  %65 = ptrtoint ptr %iotype.i.i96 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %iotype.i.i96, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %66)
  %cmp.i.i.i = icmp eq i8 %66, 3
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i10.i
  call void @__sanitizer_cov_trace_pc() #17
  %67 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %67) #15, !srcloc !205
  br label %pl011_dma_tx_stop.exit.i

if.else.i.i.i:                                    ; preds = %if.then.i10.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i.i.i = trunc i32 %and.i.i to i16
  %68 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i.i) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 %68) #15, !srcloc !218
  br label %pl011_dma_tx_stop.exit.i

pl011_dma_tx_stop.exit.i:                         ; preds = %if.else.i.i.i, %if.then.i.i.i, %pl011_write.exit.i101.pl011_dma_tx_stop.exit.i_crit_edge
  %rs485.i = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 56
  %69 = ptrtoint ptr %rs485.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rs485.i, align 4
  %and2.i = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i102 = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i102, label %pl011_dma_tx_stop.exit.i.cleanup_crit_edge, label %land.lhs.true.i104

pl011_dma_tx_stop.exit.i.cleanup_crit_edge:       ; preds = %pl011_dma_tx_stop.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.i104:                               ; preds = %pl011_dma_tx_stop.exit.i
  %rs485_tx_started.i = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 10
  %71 = ptrtoint ptr %rs485_tx_started.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %rs485_tx_started.i, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool3.not.i103 = icmp eq i8 %72, 0
  br i1 %tobool3.not.i103, label %land.lhs.true.i104.cleanup_crit_edge, label %if.then.i

land.lhs.true.i104.cleanup_crit_edge:             ; preds = %land.lhs.true.i104
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i104
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @pl011_rs485_tx_stop(ptr noundef %uap) #15
  br label %cleanup

if.end15:                                         ; preds = %uart_tx_stopped.exit
  %rs485 = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 56
  %73 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rs485, align 4
  %and = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.end15.if.end20_crit_edge, label %land.lhs.true

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end15
  %rs485_tx_started = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 10
  %75 = ptrtoint ptr %rs485_tx_started to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %rs485_tx_started, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool18.not = icmp eq i8 %76, 0
  br i1 %tobool18.not, label %if.then19, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then19:                                        ; preds = %land.lhs.true
  %membase.i.i106 = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 2
  %77 = ptrtoint ptr %membase.i.i106 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %membase.i.i106, align 4
  %reg_offset.i.i.i107 = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 1
  %79 = ptrtoint ptr %reg_offset.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %reg_offset.i.i.i107, align 4
  %arrayidx.i.i.i108 = getelementptr i16, ptr %80, i32 8
  %81 = ptrtoint ptr %arrayidx.i.i.i108 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %arrayidx.i.i.i108, align 2
  %conv.i.i.i109 = zext i16 %82 to i32
  %add.ptr.i.i110 = getelementptr i8, ptr %78, i32 %conv.i.i.i109
  %iotype.i.i111 = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 26
  %83 = ptrtoint ptr %iotype.i.i111 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %iotype.i.i111, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %84)
  %cmp.i.i112 = icmp eq i8 %84, 3
  br i1 %cmp.i.i112, label %cond.true.i.i113, label %cond.false.i.i115

cond.true.i.i113:                                 ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #17
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i110) #15, !srcloc !197
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #15
  br label %pl011_read.exit.i122

cond.false.i.i115:                                ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #17
  %87 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i110) #15, !srcloc !219
  %88 = tail call i16 @llvm.bswap.i16(i16 %87) #15
  %conv7.i.i114 = zext i16 %88 to i32
  br label %pl011_read.exit.i122

pl011_read.exit.i122:                             ; preds = %cond.false.i.i115, %cond.true.i.i113
  %cond.i.i116 = phi i32 [ %86, %cond.true.i.i113 ], [ %conv7.i.i114, %cond.false.i.i115 ]
  %or.i = or i32 %cond.i.i116, 256
  %89 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rs485, align 4
  %and.i118 = and i32 %90, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i118)
  %tobool.not.i119 = icmp eq i32 %and.i118, 0
  %and2.i120 = and i32 %or.i, -2561
  %spec.select.i121 = select i1 %tobool.not.i119, i32 %and2.i120, i32 %or.i
  %and8.i = and i32 %spec.select.i121, -2049
  %and5.i = shl i32 %90, 10
  %91 = and i32 %and5.i, 2048
  %92 = or i32 %and8.i, %91
  %cr.1.i = xor i32 %92, 2048
  %93 = ptrtoint ptr %membase.i.i106 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %membase.i.i106, align 4
  %95 = ptrtoint ptr %reg_offset.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %reg_offset.i.i.i107, align 4
  %arrayidx.i.i59.i = getelementptr i16, ptr %96, i32 8
  %97 = ptrtoint ptr %arrayidx.i.i59.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %arrayidx.i.i59.i, align 2
  %conv.i.i60.i = zext i16 %98 to i32
  %add.ptr.i61.i = getelementptr i8, ptr %94, i32 %conv.i.i60.i
  %99 = ptrtoint ptr %iotype.i.i111 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %iotype.i.i111, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %100)
  %cmp.i63.i = icmp eq i8 %100, 3
  br i1 %cmp.i63.i, label %if.then.i.i123, label %if.else.i.i125

if.then.i.i123:                                   ; preds = %pl011_read.exit.i122
  call void @__sanitizer_cov_trace_pc() #17
  %101 = tail call i32 @llvm.bswap.i32(i32 %cr.1.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i, i32 %101) #15, !srcloc !205
  br label %pl011_write.exit.i126

if.else.i.i125:                                   ; preds = %pl011_read.exit.i122
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i.i124 = trunc i32 %cr.1.i to i16
  %102 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i124) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i61.i, i16 %102) #15, !srcloc !218
  br label %pl011_write.exit.i126

pl011_write.exit.i126:                            ; preds = %if.else.i.i125, %if.then.i.i123
  %delay_rts_before_send.i = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 56, i32 1
  %103 = ptrtoint ptr %delay_rts_before_send.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %delay_rts_before_send.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool12.not.i = icmp eq i32 %104, 0
  br i1 %tobool12.not.i, label %pl011_write.exit.i126.pl011_rs485_tx_start.exit_crit_edge, label %pl011_write.exit.i126.while.body.i_crit_edge

pl011_write.exit.i126.while.body.i_crit_edge:     ; preds = %pl011_write.exit.i126
  br label %while.body.i

pl011_write.exit.i126.pl011_rs485_tx_start.exit_crit_edge: ; preds = %pl011_write.exit.i126
  call void @__sanitizer_cov_trace_pc() #17
  br label %pl011_rs485_tx_start.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %pl011_write.exit.i126.while.body.i_crit_edge
  %__ms.065.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %104, %pl011_write.exit.i126.while.body.i_crit_edge ]
  %dec.i = add i32 %__ms.065.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %105(i32 noundef 214748000) #15
  %tobool38.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool38.not.i, label %while.body.i.pl011_rs485_tx_start.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

while.body.i.pl011_rs485_tx_start.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pl011_rs485_tx_start.exit

pl011_rs485_tx_start.exit:                        ; preds = %while.body.i.pl011_rs485_tx_start.exit_crit_edge, %pl011_write.exit.i126.pl011_rs485_tx_start.exit_crit_edge
  %106 = ptrtoint ptr %rs485_tx_started to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %rs485_tx_started, align 4
  br label %if.end20

if.end20:                                         ; preds = %pl011_rs485_tx_start.exit, %land.lhs.true.if.end20_crit_edge, %if.end15.if.end20_crit_edge
  %using_tx_dma.i = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 12
  %107 = ptrtoint ptr %using_tx_dma.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %using_tx_dma.i, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool.not.i128 = icmp eq i8 %108, 0
  br i1 %tobool.not.i128, label %if.end20.pl011_dma_tx_irq.exit_crit_edge, label %if.end.i129

if.end20.pl011_dma_tx_irq.exit_crit_edge:         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %pl011_dma_tx_irq.exit

if.end.i129:                                      ; preds = %if.end20
  %queued.i = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 15, i32 3
  %109 = ptrtoint ptr %queued.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %queued.i, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool1.not.i = icmp eq i8 %110, 0
  br i1 %tobool1.not.i, label %if.end5.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i129
  %dmacr.i = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 4
  %111 = ptrtoint ptr %dmacr.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %dmacr.i, align 4
  %or.i130 = or i32 %112, 2
  store i32 %or.i130, ptr %dmacr.i, align 4
  %membase.i.i131 = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 2
  %113 = ptrtoint ptr %membase.i.i131 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %membase.i.i131, align 4
  %reg_offset.i.i.i132 = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 1
  %115 = ptrtoint ptr %reg_offset.i.i.i132 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %reg_offset.i.i.i132, align 4
  %arrayidx.i.i.i133 = getelementptr i16, ptr %116, i32 14
  %117 = ptrtoint ptr %arrayidx.i.i.i133 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %arrayidx.i.i.i133, align 2
  %conv.i.i.i134 = zext i16 %118 to i32
  %add.ptr.i.i135 = getelementptr i8, ptr %114, i32 %conv.i.i.i134
  %iotype.i.i136 = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 26
  %119 = ptrtoint ptr %iotype.i.i136 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %iotype.i.i136, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %120)
  %cmp.i.i137 = icmp eq i8 %120, 3
  br i1 %cmp.i.i137, label %if.then.i.i138, label %if.else.i.i140

if.then.i.i138:                                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #17
  %121 = tail call i32 @llvm.bswap.i32(i32 %or.i130) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i135, i32 %121) #15, !srcloc !205
  br label %pl011_write.exit.i143

if.else.i.i140:                                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i.i139 = trunc i32 %or.i130 to i16
  %122 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i139) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i135, i16 %122) #15, !srcloc !218
  br label %pl011_write.exit.i143

pl011_write.exit.i143:                            ; preds = %if.else.i.i140, %if.then.i.i138
  %im.i141 = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 5
  %123 = ptrtoint ptr %im.i141 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %im.i141, align 4
  %and.i142 = and i32 %124, -33
  store i32 %and.i142, ptr %im.i141, align 4
  %125 = ptrtoint ptr %membase.i.i131 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %membase.i.i131, align 4
  %127 = ptrtoint ptr %reg_offset.i.i.i132 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %reg_offset.i.i.i132, align 4
  %arrayidx.i.i24.i = getelementptr i16, ptr %128, i32 10
  %129 = ptrtoint ptr %arrayidx.i.i24.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %arrayidx.i.i24.i, align 2
  %conv.i.i25.i = zext i16 %130 to i32
  %add.ptr.i26.i = getelementptr i8, ptr %126, i32 %conv.i.i25.i
  %131 = ptrtoint ptr %iotype.i.i136 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %iotype.i.i136, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %132)
  %cmp.i28.i = icmp eq i8 %132, 3
  br i1 %cmp.i28.i, label %if.then.i29.i, label %if.else.i31.i

if.then.i29.i:                                    ; preds = %pl011_write.exit.i143
  call void @__sanitizer_cov_trace_pc() #17
  %133 = tail call i32 @llvm.bswap.i32(i32 %and.i142) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 %133) #15, !srcloc !205
  br label %cleanup

if.else.i31.i:                                    ; preds = %pl011_write.exit.i143
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i30.i = trunc i32 %and.i142 to i16
  %134 = tail call i16 @llvm.bswap.i16(i16 %conv3.i30.i) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i26.i, i16 %134) #15, !srcloc !218
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i129
  %call.i = tail call fastcc i32 @pl011_dma_tx_refill(ptr noundef %uap) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i144 = icmp sgt i32 %call.i, 0
  br i1 %cmp.i144, label %if.then6.i, label %if.end5.i.pl011_dma_tx_irq.exit_crit_edge

if.end5.i.pl011_dma_tx_irq.exit_crit_edge:        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pl011_dma_tx_irq.exit

if.then6.i:                                       ; preds = %if.end5.i
  %im7.i = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 5
  %135 = ptrtoint ptr %im7.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %im7.i, align 4
  %and8.i145 = and i32 %136, -33
  store i32 %and8.i145, ptr %im7.i, align 4
  %membase.i33.i = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 2
  %137 = ptrtoint ptr %membase.i33.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %membase.i33.i, align 4
  %reg_offset.i.i34.i = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 1
  %139 = ptrtoint ptr %reg_offset.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %reg_offset.i.i34.i, align 4
  %arrayidx.i.i35.i = getelementptr i16, ptr %140, i32 10
  %141 = ptrtoint ptr %arrayidx.i.i35.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %arrayidx.i.i35.i, align 2
  %conv.i.i36.i = zext i16 %142 to i32
  %add.ptr.i37.i = getelementptr i8, ptr %138, i32 %conv.i.i36.i
  %iotype.i38.i = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 26
  %143 = ptrtoint ptr %iotype.i38.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %iotype.i38.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %144)
  %cmp.i39.i = icmp eq i8 %144, 3
  br i1 %cmp.i39.i, label %if.then.i40.i, label %if.else.i42.i

if.then.i40.i:                                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #17
  %145 = tail call i32 @llvm.bswap.i32(i32 %and8.i145) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37.i, i32 %145) #15, !srcloc !205
  br label %cleanup

if.else.i42.i:                                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i41.i = trunc i32 %and8.i145 to i16
  %146 = tail call i16 @llvm.bswap.i16(i16 %conv3.i41.i) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i37.i, i16 %146) #15, !srcloc !218
  br label %cleanup

pl011_dma_tx_irq.exit:                            ; preds = %if.end5.i.pl011_dma_tx_irq.exit_crit_edge, %if.end20.pl011_dma_tx_irq.exit_crit_edge
  %membase.i.i147 = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 2
  %reg_offset.i.i.i148 = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 1
  %iotype.i.i152 = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 26
  %tx.i173 = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 31, i32 5
  br label %do.body

do.body:                                          ; preds = %if.end36.do.body_crit_edge, %pl011_dma_tx_irq.exit
  %count.1 = phi i32 [ %count.0, %pl011_dma_tx_irq.exit ], [ %count.2220, %if.end36.do.body_crit_edge ]
  br i1 %from_irq, label %land.lhs.true27, label %land.lhs.true.i154, !prof !224

land.lhs.true27:                                  ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1)
  %cmp29 = icmp eq i32 %count.1, 0
  br i1 %cmp29, label %land.lhs.true27.do.end_crit_edge, label %if.end31.thread

land.lhs.true27.do.end_crit_edge:                 ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.end31.thread:                                  ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #17
  %dec28 = add i32 %count.1, -1
  %147 = ptrtoint ptr %xmit1 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %xmit1, align 4
  %149 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %tail, align 4
  %arrayidx218 = getelementptr i8, ptr %148, i32 %150
  %151 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx218, align 1
  br label %if.end.i168

land.lhs.true.i154:                               ; preds = %do.body
  %153 = ptrtoint ptr %xmit1 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %xmit1, align 4
  %155 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %tail, align 4
  %arrayidx = getelementptr i8, ptr %154, i32 %156
  %157 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx, align 1
  %159 = ptrtoint ptr %membase.i.i147 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %membase.i.i147, align 4
  %161 = ptrtoint ptr %reg_offset.i.i.i148 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %reg_offset.i.i.i148, align 4
  %arrayidx.i.i.i149 = getelementptr i16, ptr %162, i32 3
  %163 = ptrtoint ptr %arrayidx.i.i.i149 to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %arrayidx.i.i.i149, align 2
  %conv.i.i.i150 = zext i16 %164 to i32
  %add.ptr.i.i151 = getelementptr i8, ptr %160, i32 %conv.i.i.i150
  %165 = ptrtoint ptr %iotype.i.i152 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %iotype.i.i152, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %166)
  %cmp.i.i153 = icmp eq i8 %166, 3
  br i1 %cmp.i.i153, label %cond.true.i.i155, label %cond.false.i.i157

cond.true.i.i155:                                 ; preds = %land.lhs.true.i154
  call void @__sanitizer_cov_trace_pc() #17
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i151) #15, !srcloc !197
  %168 = tail call i32 @llvm.bswap.i32(i32 %167) #15
  br label %pl011_read.exit.i161

cond.false.i.i157:                                ; preds = %land.lhs.true.i154
  call void @__sanitizer_cov_trace_pc() #17
  %169 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i151) #15, !srcloc !219
  %170 = tail call i16 @llvm.bswap.i16(i16 %169) #15
  %conv7.i.i156 = zext i16 %170 to i32
  br label %pl011_read.exit.i161

pl011_read.exit.i161:                             ; preds = %cond.false.i.i157, %cond.true.i.i155
  %cond.i.i158 = phi i32 [ %168, %cond.true.i.i155 ], [ %conv7.i.i156, %cond.false.i.i157 ]
  %and.i159 = and i32 %cond.i.i158, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i159)
  %tobool4.not.i160 = icmp eq i32 %and.i159, 0
  br i1 %tobool4.not.i160, label %pl011_read.exit.i161.if.end.i168_crit_edge, label %pl011_read.exit.i161.do.end_crit_edge

pl011_read.exit.i161.do.end_crit_edge:            ; preds = %pl011_read.exit.i161
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

pl011_read.exit.i161.if.end.i168_crit_edge:       ; preds = %pl011_read.exit.i161
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i168

if.end.i168:                                      ; preds = %pl011_read.exit.i161.if.end.i168_crit_edge, %if.end31.thread
  %171 = phi i8 [ %152, %if.end31.thread ], [ %158, %pl011_read.exit.i161.if.end.i168_crit_edge ]
  %count.2220 = phi i32 [ %dec28, %if.end31.thread ], [ %count.1, %pl011_read.exit.i161.if.end.i168_crit_edge ]
  %172 = ptrtoint ptr %membase.i.i147 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %membase.i.i147, align 4
  %174 = ptrtoint ptr %reg_offset.i.i.i148 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %reg_offset.i.i.i148, align 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %175, align 2
  %conv.i.i9.i164 = zext i16 %177 to i32
  %add.ptr.i10.i165 = getelementptr i8, ptr %173, i32 %conv.i.i9.i164
  %178 = ptrtoint ptr %iotype.i.i152 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %iotype.i.i152, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %179)
  %cmp.i12.i167 = icmp eq i8 %179, 3
  br i1 %cmp.i12.i167, label %if.then.i.i170, label %if.else.i.i172

if.then.i.i170:                                   ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i169 = zext i8 %171 to i32
  %180 = shl nuw i32 %conv.i169, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i165, i32 %180) #15, !srcloc !205
  br label %if.end36

if.else.i.i172:                                   ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i.i171 = zext i8 %171 to i16
  %181 = shl nuw i16 %conv3.i.i171, 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10.i165, i16 %181) #15, !srcloc !218
  br label %if.end36

if.end36:                                         ; preds = %if.else.i.i172, %if.then.i.i170
  %182 = ptrtoint ptr %tx.i173 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %tx.i173, align 4
  %inc.i174 = add i32 %183, 1
  store i32 %inc.i174, ptr %tx.i173, align 4
  %184 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %tail, align 4
  %add = add i32 %185, 1
  %and38 = and i32 %add, 4095
  store i32 %and38, ptr %tail, align 4
  %186 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %head, align 4
  %cmp42.not = icmp eq i32 %187, %and38
  br i1 %cmp42.not, label %if.end36.do.end_crit_edge, label %if.end36.do.body_crit_edge

if.end36.do.body_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.end36.do.end_crit_edge:                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

do.end:                                           ; preds = %if.end36.do.end_crit_edge, %pl011_read.exit.i161.do.end_crit_edge, %land.lhs.true27.do.end_crit_edge
  %188 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %head, align 4
  %190 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %tail, align 4
  %sub = sub i32 %189, %191
  %and47 = and i32 %sub, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %cmp48 = icmp eq i32 %and47, 0
  br i1 %cmp48, label %if.then49, label %do.end.if.end51_crit_edge

do.end.if.end51_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51

if.then49:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @uart_write_wakeup(ptr noundef %uap) #15
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %do.end.if.end51_crit_edge
  %192 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %head, align 4
  %194 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %193, i32 %195)
  %cmp54 = icmp eq i32 %193, %195
  br i1 %cmp54, label %if.then55, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then55:                                        ; preds = %if.end51
  %im.i178 = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 5
  %196 = ptrtoint ptr %im.i178 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %im.i178, align 4
  %and.i179 = and i32 %197, -33
  store i32 %and.i179, ptr %im.i178, align 4
  %198 = ptrtoint ptr %membase.i.i147 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %membase.i.i147, align 4
  %200 = ptrtoint ptr %reg_offset.i.i.i148 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %reg_offset.i.i.i148, align 4
  %arrayidx.i.i.i182 = getelementptr i16, ptr %201, i32 10
  %202 = ptrtoint ptr %arrayidx.i.i.i182 to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %arrayidx.i.i.i182, align 2
  %conv.i.i.i183 = zext i16 %203 to i32
  %add.ptr.i.i184 = getelementptr i8, ptr %199, i32 %conv.i.i.i183
  %204 = ptrtoint ptr %iotype.i.i152 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %iotype.i.i152, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %205)
  %cmp.i.i186 = icmp eq i8 %205, 3
  br i1 %cmp.i.i186, label %if.then.i.i187, label %if.else.i.i189

if.then.i.i187:                                   ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #17
  %206 = tail call i32 @llvm.bswap.i32(i32 %and.i179) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i184, i32 %206) #15, !srcloc !205
  br label %pl011_write.exit.i192

if.else.i.i189:                                   ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i.i188 = trunc i32 %and.i179 to i16
  %207 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i188) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i184, i16 %207) #15, !srcloc !218
  br label %pl011_write.exit.i192

pl011_write.exit.i192:                            ; preds = %if.else.i.i189, %if.then.i.i187
  %queued.i.i190 = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 15, i32 3
  %208 = ptrtoint ptr %queued.i.i190 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %queued.i.i190, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %209)
  %tobool.not.i.i191 = icmp eq i8 %209, 0
  br i1 %tobool.not.i.i191, label %pl011_write.exit.i192.pl011_dma_tx_stop.exit.i206_crit_edge, label %if.then.i10.i199

pl011_write.exit.i192.pl011_dma_tx_stop.exit.i206_crit_edge: ; preds = %pl011_write.exit.i192
  call void @__sanitizer_cov_trace_pc() #17
  br label %pl011_dma_tx_stop.exit.i206

if.then.i10.i199:                                 ; preds = %pl011_write.exit.i192
  %dmacr.i.i193 = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 4
  %210 = ptrtoint ptr %dmacr.i.i193 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %dmacr.i.i193, align 4
  %and.i.i194 = and i32 %211, -3
  store i32 %and.i.i194, ptr %dmacr.i.i193, align 4
  %212 = ptrtoint ptr %membase.i.i147 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %membase.i.i147, align 4
  %214 = ptrtoint ptr %reg_offset.i.i.i148 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %reg_offset.i.i.i148, align 4
  %arrayidx.i.i.i.i195 = getelementptr i16, ptr %215, i32 14
  %216 = ptrtoint ptr %arrayidx.i.i.i.i195 to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %arrayidx.i.i.i.i195, align 2
  %conv.i.i.i.i196 = zext i16 %217 to i32
  %add.ptr.i.i.i197 = getelementptr i8, ptr %213, i32 %conv.i.i.i.i196
  %218 = ptrtoint ptr %iotype.i.i152 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %iotype.i.i152, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %219)
  %cmp.i.i.i198 = icmp eq i8 %219, 3
  br i1 %cmp.i.i.i198, label %if.then.i.i.i200, label %if.else.i.i.i202

if.then.i.i.i200:                                 ; preds = %if.then.i10.i199
  call void @__sanitizer_cov_trace_pc() #17
  %220 = tail call i32 @llvm.bswap.i32(i32 %and.i.i194) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i197, i32 %220) #15, !srcloc !205
  br label %pl011_dma_tx_stop.exit.i206

if.else.i.i.i202:                                 ; preds = %if.then.i10.i199
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i.i.i201 = trunc i32 %and.i.i194 to i16
  %221 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i.i201) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i197, i16 %221) #15, !srcloc !218
  br label %pl011_dma_tx_stop.exit.i206

pl011_dma_tx_stop.exit.i206:                      ; preds = %if.else.i.i.i202, %if.then.i.i.i200, %pl011_write.exit.i192.pl011_dma_tx_stop.exit.i206_crit_edge
  %222 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %rs485, align 4
  %and2.i204 = and i32 %223, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i204)
  %tobool.not.i205 = icmp eq i32 %and2.i204, 0
  br i1 %tobool.not.i205, label %pl011_dma_tx_stop.exit.i206.cleanup_crit_edge, label %land.lhs.true.i209

pl011_dma_tx_stop.exit.i206.cleanup_crit_edge:    ; preds = %pl011_dma_tx_stop.exit.i206
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.i209:                               ; preds = %pl011_dma_tx_stop.exit.i206
  %rs485_tx_started.i207 = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 10
  %224 = ptrtoint ptr %rs485_tx_started.i207 to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %rs485_tx_started.i207, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %225)
  %tobool3.not.i208 = icmp eq i8 %225, 0
  br i1 %tobool3.not.i208, label %land.lhs.true.i209.cleanup_crit_edge, label %if.then.i210

land.lhs.true.i209.cleanup_crit_edge:             ; preds = %land.lhs.true.i209
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i210:                                     ; preds = %land.lhs.true.i209
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @pl011_rs485_tx_stop(ptr noundef %uap) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i210, %land.lhs.true.i209.cleanup_crit_edge, %pl011_dma_tx_stop.exit.i206.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.else.i42.i, %if.then.i40.i, %if.else.i31.i, %if.then.i29.i, %if.then.i, %land.lhs.true.i104.cleanup_crit_edge, %pl011_dma_tx_stop.exit.i.cleanup_crit_edge, %pl011_read.exit.i.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end51.cleanup_crit_edge ], [ true, %pl011_read.exit.i.cleanup_crit_edge ], [ false, %pl011_dma_tx_stop.exit.i.cleanup_crit_edge ], [ false, %land.lhs.true.i104.cleanup_crit_edge ], [ false, %if.then.i ], [ false, %pl011_dma_tx_stop.exit.i206.cleanup_crit_edge ], [ false, %land.lhs.true.i209.cleanup_crit_edge ], [ false, %if.then.i210 ], [ true, %if.then.i29.i ], [ true, %if.else.i31.i ], [ true, %if.then.i40.i ], [ true, %if.else.i42.i ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pl011_enable_interrupts(ptr noundef %uap) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_irq(ptr noundef %uap) #15
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %reg_offset.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 1
  %2 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %3, i32 13
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 26
  %6 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp.i = icmp eq i8 %7, 3
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1342177280) #15, !srcloc !205
  br label %pl011_write.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 20480) #15, !srcloc !218
  br label %pl011_write.exit

pl011_write.exit:                                 ; preds = %if.else.i, %if.then.i
  %fifosize = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 7
  %8 = ptrtoint ptr %fifosize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fifosize, align 4
  %mul48.mask = and i32 %9, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul48.mask)
  %cmp49.not = icmp eq i32 %mul48.mask, 0
  br i1 %cmp49.not, label %pl011_write.exit.for.end_crit_edge, label %pl011_write.exit.for.body_crit_edge

pl011_write.exit.for.body_crit_edge:              ; preds = %pl011_write.exit
  br label %for.body

pl011_write.exit.for.end_crit_edge:               ; preds = %pl011_write.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %pl011_read.exit37.for.body_crit_edge, %pl011_write.exit.for.body_crit_edge
  %i.050 = phi i32 [ %inc, %pl011_read.exit37.for.body_crit_edge ], [ 0, %pl011_write.exit.for.body_crit_edge ]
  %10 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i, align 4
  %12 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i22 = getelementptr i16, ptr %13, i32 3
  %14 = ptrtoint ptr %arrayidx.i.i22 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.i.i22, align 2
  %conv.i.i23 = zext i16 %15 to i32
  %add.ptr.i24 = getelementptr i8, ptr %11, i32 %conv.i.i23
  %16 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %17)
  %cmp.i26 = icmp eq i8 %17, 3
  br i1 %cmp.i26, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24) #15, !srcloc !197
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #15
  br label %pl011_read.exit

cond.false.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i24) #15, !srcloc !219
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #15
  %conv7.i = zext i16 %21 to i32
  br label %pl011_read.exit

pl011_read.exit:                                  ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %19, %cond.true.i ], [ %conv7.i, %cond.false.i ]
  %and = and i32 %cond.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %pl011_read.exit.for.end_crit_edge

pl011_read.exit.for.end_crit_edge:                ; preds = %pl011_read.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end:                                           ; preds = %pl011_read.exit
  %22 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i, align 4
  %24 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_offset.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %25, align 2
  %conv.i.i29 = zext i16 %27 to i32
  %add.ptr.i30 = getelementptr i8, ptr %23, i32 %conv.i.i29
  %28 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %29)
  %cmp.i32 = icmp eq i8 %29, 3
  br i1 %cmp.i32, label %cond.true.i33, label %cond.false.i35

cond.true.i33:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30) #15, !srcloc !197
  br label %pl011_read.exit37

cond.false.i35:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i30) #15, !srcloc !219
  br label %pl011_read.exit37

pl011_read.exit37:                                ; preds = %cond.false.i35, %cond.true.i33
  %inc = add nuw i32 %i.050, 1
  %32 = ptrtoint ptr %fifosize to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fifosize, align 4
  %mul = shl i32 %33, 1
  %cmp = icmp ult i32 %inc, %mul
  br i1 %cmp, label %pl011_read.exit37.for.body_crit_edge, label %pl011_read.exit37.for.end_crit_edge

pl011_read.exit37.for.end_crit_edge:              ; preds = %pl011_read.exit37
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

pl011_read.exit37.for.body_crit_edge:             ; preds = %pl011_read.exit37
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %pl011_read.exit37.for.end_crit_edge, %pl011_read.exit.for.end_crit_edge, %pl011_write.exit.for.end_crit_edge
  %im = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 5
  %34 = ptrtoint ptr %im to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 64, ptr %im, align 4
  %using_rx_dma.i = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 13
  %35 = ptrtoint ptr %using_rx_dma.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %using_rx_dma.i, align 1, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i = icmp eq i8 %36, 0
  br i1 %tobool.not.i, label %for.end.if.then3_crit_edge, label %pl011_dma_rx_running.exit

for.end.if.then3_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then3

pl011_dma_rx_running.exit:                        ; preds = %for.end
  %running.i = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14, i32 6
  %37 = ptrtoint ptr %running.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %running.i, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool1.i.not = icmp eq i8 %38, 0
  br i1 %tobool1.i.not, label %pl011_dma_rx_running.exit.if.then3_crit_edge, label %pl011_dma_rx_running.exit.if.end5_crit_edge

pl011_dma_rx_running.exit.if.end5_crit_edge:      ; preds = %pl011_dma_rx_running.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

pl011_dma_rx_running.exit.if.then3_crit_edge:     ; preds = %pl011_dma_rx_running.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then3

if.then3:                                         ; preds = %pl011_dma_rx_running.exit.if.then3_crit_edge, %for.end.if.then3_crit_edge
  %39 = ptrtoint ptr %im to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 80, ptr %im, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %pl011_dma_rx_running.exit.if.end5_crit_edge
  %40 = ptrtoint ptr %im to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %im, align 4
  %42 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %membase.i, align 4
  %44 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i40 = getelementptr i16, ptr %45, i32 10
  %46 = ptrtoint ptr %arrayidx.i.i40 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx.i.i40, align 2
  %conv.i.i41 = zext i16 %47 to i32
  %add.ptr.i42 = getelementptr i8, ptr %43, i32 %conv.i.i41
  %48 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %49)
  %cmp.i44 = icmp eq i8 %49, 3
  br i1 %cmp.i44, label %if.then.i45, label %if.else.i46

if.then.i45:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %50 = tail call i32 @llvm.bswap.i32(i32 %41) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %50) #15, !srcloc !205
  br label %pl011_write.exit47

if.else.i46:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i = trunc i32 %41 to i16
  %51 = tail call i16 @llvm.bswap.i16(i16 %conv3.i) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i42, i16 %51) #15, !srcloc !218
  br label %pl011_write.exit47

pl011_write.exit47:                               ; preds = %if.else.i46, %if.then.i45
  tail call void @_raw_spin_unlock_irq(ptr noundef %uap) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl011_int(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_id) #15
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %reg_offset.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %dev_id, i32 0, i32 1
  %2 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %3, i32 11
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 26
  %6 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp.i = icmp eq i8 %7, 3
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !197
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #15
  br label %pl011_read.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #15, !srcloc !219
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #15
  %conv7.i = zext i16 %11 to i32
  br label %pl011_read.exit

pl011_read.exit:                                  ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %9, %cond.true.i ], [ %conv7.i, %cond.false.i ]
  %im = getelementptr inbounds %struct.uart_amba_port, ptr %dev_id, i32 0, i32 5
  %12 = ptrtoint ptr %im to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %im, align 4
  %and = and i32 %13, %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %pl011_read.exit.if.end34_crit_edge, label %do.body6.preheader

pl011_read.exit.if.end34_crit_edge:               ; preds = %pl011_read.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

do.body6.preheader:                               ; preds = %pl011_read.exit
  %vendor.i = getelementptr inbounds %struct.uart_amba_port, ptr %dev_id, i32 0, i32 3
  %using_rx_dma.i = getelementptr inbounds %struct.uart_amba_port, ptr %dev_id, i32 0, i32 13
  %running.i = getelementptr inbounds %struct.uart_amba_port, ptr %dev_id, i32 0, i32 14, i32 6
  %old_status.i = getelementptr inbounds %struct.uart_amba_port, ptr %dev_id, i32 0, i32 6
  %dsr.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 1
  %state.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 30
  br label %do.body6

do.body6:                                         ; preds = %pl011_read.exit88.do.body6_crit_edge, %do.body6.preheader
  %status.0 = phi i32 [ %and29, %pl011_read.exit88.do.body6_crit_edge ], [ %and, %do.body6.preheader ]
  %pass_counter.0 = phi i32 [ %dec, %pl011_read.exit88.do.body6_crit_edge ], [ 256, %do.body6.preheader ]
  %14 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vendor.i, align 4
  %cts_event_workaround.i = getelementptr inbounds %struct.vendor_data, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %cts_event_workaround.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cts_event_workaround.i, align 1, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %do.body6.check_apply_cts_event_workaround.exit_crit_edge, label %if.end.i

do.body6.check_apply_cts_event_workaround.exit_crit_edge: ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #17
  br label %check_apply_cts_event_workaround.exit

if.end.i:                                         ; preds = %do.body6
  %18 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i, align 4
  %20 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i.i = getelementptr i16, ptr %21, i32 13
  %22 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.i.i.i, align 2
  %conv.i.i.i = zext i16 %23 to i32
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %conv.i.i.i
  %24 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %25)
  %cmp.i.i = icmp eq i8 %25, 3
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #15, !srcloc !205
  br label %pl011_write.exit.i

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 0) #15, !srcloc !218
  br label %pl011_write.exit.i

pl011_write.exit.i:                               ; preds = %if.else.i.i, %if.then.i.i
  %26 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase.i, align 4
  %28 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i7.i = getelementptr i16, ptr %29, i32 13
  %30 = ptrtoint ptr %arrayidx.i.i7.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx.i.i7.i, align 2
  %conv.i.i8.i = zext i16 %31 to i32
  %add.ptr.i9.i = getelementptr i8, ptr %27, i32 %conv.i.i8.i
  %32 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %33)
  %cmp.i11.i = icmp eq i8 %33, 3
  br i1 %cmp.i11.i, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %pl011_write.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #15, !srcloc !197
  br label %pl011_read.exit.i

cond.false.i.i:                                   ; preds = %pl011_write.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i9.i) #15, !srcloc !219
  br label %pl011_read.exit.i

pl011_read.exit.i:                                ; preds = %cond.false.i.i, %cond.true.i.i
  %36 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase.i, align 4
  %38 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i14.i = getelementptr i16, ptr %39, i32 13
  %40 = ptrtoint ptr %arrayidx.i.i14.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx.i.i14.i, align 2
  %conv.i.i15.i = zext i16 %41 to i32
  %add.ptr.i16.i = getelementptr i8, ptr %37, i32 %conv.i.i15.i
  %42 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %43)
  %cmp.i18.i = icmp eq i8 %43, 3
  br i1 %cmp.i18.i, label %cond.true.i19.i, label %cond.false.i21.i

cond.true.i19.i:                                  ; preds = %pl011_read.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.i) #15, !srcloc !197
  br label %check_apply_cts_event_workaround.exit

cond.false.i21.i:                                 ; preds = %pl011_read.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %45 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i16.i) #15, !srcloc !219
  br label %check_apply_cts_event_workaround.exit

check_apply_cts_event_workaround.exit:            ; preds = %cond.false.i21.i, %cond.true.i19.i, %do.body6.check_apply_cts_event_workaround.exit_crit_edge
  %and7 = and i32 %status.0, -113
  %46 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %membase.i, align 4
  %48 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i57 = getelementptr i16, ptr %49, i32 13
  %50 = ptrtoint ptr %arrayidx.i.i57 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx.i.i57, align 2
  %conv.i.i58 = zext i16 %51 to i32
  %add.ptr.i59 = getelementptr i8, ptr %47, i32 %conv.i.i58
  %52 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %53)
  %cmp.i61 = icmp eq i8 %53, 3
  br i1 %cmp.i61, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %check_apply_cts_event_workaround.exit
  call void @__sanitizer_cov_trace_pc() #17
  %54 = tail call i32 @llvm.bswap.i32(i32 %and7) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %54) #15, !srcloc !205
  br label %pl011_write.exit

if.else.i:                                        ; preds = %check_apply_cts_event_workaround.exit
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i = trunc i32 %and7 to i16
  %55 = tail call i16 @llvm.bswap.i16(i16 %conv3.i) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i59, i16 %55) #15, !srcloc !218
  br label %pl011_write.exit

pl011_write.exit:                                 ; preds = %if.else.i, %if.then.i
  %and8 = and i32 %status.0, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %pl011_write.exit.if.end13_crit_edge, label %if.then10

pl011_write.exit.if.end13_crit_edge:              ; preds = %pl011_write.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.then10:                                        ; preds = %pl011_write.exit
  %56 = ptrtoint ptr %using_rx_dma.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %using_rx_dma.i, align 1, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i63 = icmp eq i8 %57, 0
  br i1 %tobool.not.i63, label %if.then10.if.else_crit_edge, label %pl011_dma_rx_running.exit

if.then10.if.else_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

pl011_dma_rx_running.exit:                        ; preds = %if.then10
  %58 = ptrtoint ptr %running.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %running.i, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool1.i.not = icmp eq i8 %59, 0
  br i1 %tobool1.i.not, label %pl011_dma_rx_running.exit.if.else_crit_edge, label %if.then12

pl011_dma_rx_running.exit.if.else_crit_edge:      ; preds = %pl011_dma_rx_running.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then12:                                        ; preds = %pl011_dma_rx_running.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @pl011_dma_rx_irq(ptr noundef %dev_id)
  br label %if.end13

if.else:                                          ; preds = %pl011_dma_rx_running.exit.if.else_crit_edge, %if.then10.if.else_crit_edge
  tail call fastcc void @pl011_rx_chars(ptr noundef %dev_id)
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then12, %pl011_write.exit.if.end13_crit_edge
  %and14 = and i32 %status.0, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end17_crit_edge, label %if.then16

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.then16:                                        ; preds = %if.end13
  %60 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %membase.i, align 4
  %62 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i.i66 = getelementptr i16, ptr %63, i32 3
  %64 = ptrtoint ptr %arrayidx.i.i.i66 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx.i.i.i66, align 2
  %conv.i.i.i67 = zext i16 %65 to i32
  %add.ptr.i.i68 = getelementptr i8, ptr %61, i32 %conv.i.i.i67
  %66 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %67)
  %cmp.i.i70 = icmp eq i8 %67, 3
  br i1 %cmp.i.i70, label %cond.true.i.i71, label %cond.false.i.i72

cond.true.i.i71:                                  ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i68) #15, !srcloc !197
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #15
  br label %pl011_read.exit.i74

cond.false.i.i72:                                 ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  %70 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i68) #15, !srcloc !219
  %71 = tail call i16 @llvm.bswap.i16(i16 %70) #15
  %conv7.i.i = zext i16 %71 to i32
  br label %pl011_read.exit.i74

pl011_read.exit.i74:                              ; preds = %cond.false.i.i72, %cond.true.i.i71
  %cond.i.i = phi i32 [ %69, %cond.true.i.i71 ], [ %conv7.i.i, %cond.false.i.i72 ]
  %and.i = and i32 %cond.i.i, 7
  %72 = ptrtoint ptr %old_status.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %old_status.i, align 4
  %xor.i = xor i32 %and.i, %73
  store i32 %and.i, ptr %old_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i)
  %tobool.not.i73 = icmp eq i32 %xor.i, 0
  br i1 %tobool.not.i73, label %pl011_read.exit.i74.if.end17_crit_edge, label %if.end.i75

pl011_read.exit.i74.if.end17_crit_edge:           ; preds = %pl011_read.exit.i74
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.end.i75:                                       ; preds = %pl011_read.exit.i74
  %and2.i = and i32 %xor.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i75.if.end6.i_crit_edge, label %if.then4.i

if.end.i75.if.end6.i_crit_edge:                   ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #17
  %and5.i = and i32 %cond.i.i, 4
  tail call void @uart_handle_dcd_change(ptr noundef %dev_id, i32 noundef %and5.i) #15
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i75.if.end6.i_crit_edge
  %74 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %vendor.i, align 4
  %fr_dsr.i = getelementptr inbounds %struct.vendor_data, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %fr_dsr.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %fr_dsr.i, align 4
  %and7.i = and i32 %77, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.if.end11.i_crit_edge, label %if.then9.i

if.end6.i.if.end11.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  %78 = ptrtoint ptr %dsr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %dsr.i, align 4
  %inc.i = add i32 %79, 1
  store i32 %inc.i, ptr %dsr.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %if.end6.i.if.end11.i_crit_edge
  %fr_cts.i = getelementptr inbounds %struct.vendor_data, ptr %75, i32 0, i32 4
  %80 = ptrtoint ptr %fr_cts.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %fr_cts.i, align 4
  %and13.i = and i32 %81, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end11.i.if.end20.i_crit_edge, label %if.then15.i

if.end11.i.if.end20.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i

if.then15.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  %and19.i = and i32 %81, %and.i
  tail call void @uart_handle_cts_change(ptr noundef %dev_id, i32 noundef %and19.i) #15
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then15.i, %if.end11.i.if.end20.i_crit_edge
  %82 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %state.i, align 4
  %delta_msr_wait.i = getelementptr inbounds %struct.tty_port, ptr %83, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %delta_msr_wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #15
  br label %if.end17

if.end17:                                         ; preds = %if.end20.i, %pl011_read.exit.i74.if.end17_crit_edge, %if.end13.if.end17_crit_edge
  %and18 = and i32 %status.0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end22_crit_edge, label %if.then20

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  %call21 = tail call fastcc zeroext i1 @pl011_tx_chars(ptr noundef %dev_id, i1 noundef zeroext true)
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end17.if.end22_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pass_counter.0)
  %cmp23 = icmp eq i32 %pass_counter.0, 0
  br i1 %cmp23, label %if.end22.if.end34_crit_edge, label %if.end26

if.end22.if.end34_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.end26:                                         ; preds = %if.end22
  %dec = add nsw i32 %pass_counter.0, -1
  %84 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %membase.i, align 4
  %86 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i79 = getelementptr i16, ptr %87, i32 11
  %88 = ptrtoint ptr %arrayidx.i.i79 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %arrayidx.i.i79, align 2
  %conv.i.i80 = zext i16 %89 to i32
  %add.ptr.i81 = getelementptr i8, ptr %85, i32 %conv.i.i80
  %90 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %91)
  %cmp.i83 = icmp eq i8 %91, 3
  br i1 %cmp.i83, label %cond.true.i84, label %cond.false.i86

cond.true.i84:                                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i81) #15, !srcloc !197
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #15
  br label %pl011_read.exit88

cond.false.i86:                                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  %94 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i81) #15, !srcloc !219
  %95 = tail call i16 @llvm.bswap.i16(i16 %94) #15
  %conv7.i85 = zext i16 %95 to i32
  br label %pl011_read.exit88

pl011_read.exit88:                                ; preds = %cond.false.i86, %cond.true.i84
  %cond.i87 = phi i32 [ %93, %cond.true.i84 ], [ %conv7.i85, %cond.false.i86 ]
  %96 = ptrtoint ptr %im to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %im, align 4
  %and29 = and i32 %97, %cond.i87
  %cmp31.not = icmp eq i32 %and29, 0
  br i1 %cmp31.not, label %pl011_read.exit88.if.end34_crit_edge, label %pl011_read.exit88.do.body6_crit_edge

pl011_read.exit88.do.body6_crit_edge:             ; preds = %pl011_read.exit88
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body6

pl011_read.exit88.if.end34_crit_edge:             ; preds = %pl011_read.exit88
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.end34:                                         ; preds = %pl011_read.exit88.if.end34_crit_edge, %if.end22.if.end34_crit_edge, %pl011_read.exit.if.end34_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_id, i32 noundef %call2) #15
  %not.tobool.not = xor i1 %tobool.not, true
  %cond = zext i1 %not.tobool.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pl011_dma_rx_irq(ptr noundef %uap) unnamed_addr #3 align 64 {
entry:
  %state = alloca %struct.dma_tx_state, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dmarx1 = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14
  %0 = ptrtoint ptr %dmarx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmarx1, align 4
  %use_buf_b = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14, i32 2
  %2 = ptrtoint ptr %use_buf_b to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_buf_b, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %sgbuf_b = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14, i32 4
  %sgbuf_a = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14, i32 3
  %cond = select i1 %tobool.not, ptr %sgbuf_a, ptr %sgbuf_b
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state) #15
  %4 = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 2
  %5 = call ptr @memset(ptr %state, i32 255, i32 16)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %device_pause.i = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 45
  %8 = ptrtoint ptr %device_pause.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device_pause.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %dmaengine_pause.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

dmaengine_pause.exit:                             ; preds = %entry
  %call.i = tail call i32 %9(ptr noundef %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %dmaengine_pause.exit.if.end_crit_edge, label %dmaengine_pause.exit.do.end_crit_edge

dmaengine_pause.exit.do.end_crit_edge:            ; preds = %dmaengine_pause.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

dmaengine_pause.exit.if.end_crit_edge:            ; preds = %dmaengine_pause.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %dmaengine_pause.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 45
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.14) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %dmaengine_pause.exit.if.end_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %13, i32 0, i32 49
  %14 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device_tx_status, align 4
  %cookie = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14, i32 5
  %16 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cookie, align 4
  %call3 = call i32 %15(ptr noundef %1, i32 noundef %17, ptr noundef nonnull %state) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 2
  br i1 %cmp.not, label %if.end.if.end10_crit_edge, label %do.end7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %dev9 = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 45
  %18 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.14) #18
  br label %if.end10

if.end10:                                         ; preds = %do.end7, %if.end.if.end10_crit_edge
  %dmacr = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 4
  %20 = ptrtoint ptr %dmacr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dmacr, align 4
  %and = and i32 %21, -2
  store i32 %and, ptr %dmacr, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 2
  %22 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i, align 4
  %reg_offset.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 1
  %24 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %25, i32 14
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %27 to i32
  %add.ptr.i = getelementptr i8, ptr %23, i32 %conv.i.i
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 26
  %28 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %29)
  %cmp.i = icmp eq i8 %29, 3
  br i1 %cmp.i, label %if.then.i80, label %if.else.i

if.then.i80:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %30 = call i32 @llvm.bswap.i32(i32 %and) #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %30) #15, !srcloc !205
  br label %pl011_write.exit

if.else.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i = trunc i32 %and to i16
  %31 = call i16 @llvm.bswap.i16(i16 %conv3.i) #15
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %31) #15, !srcloc !218
  br label %pl011_write.exit

pl011_write.exit:                                 ; preds = %if.else.i, %if.then.i80
  %running = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14, i32 6
  %32 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %running, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %cond, i32 0, i32 2
  %33 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %length, align 4
  %35 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %4, align 4
  %sub = sub i32 %34, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub)
  %cmp14 = icmp ugt i32 %sub, 4096
  br i1 %cmp14, label %do.body18, label %do.end26, !prof !225

do.body18:                                        ; preds = %pl011_write.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/tty/serial/amba-pl011.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 945, 0\0A.popsection", ""() #15, !srcloc !226
  unreachable

do.end26:                                         ; preds = %pl011_write.exit
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %38, i32 0, i32 47
  %39 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i81 = icmp eq ptr %40, null
  br i1 %tobool.not.i81, label %do.end26.dmaengine_terminate_all.exit_crit_edge, label %if.then.i83

do.end26.dmaengine_terminate_all.exit_crit_edge:  ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmaengine_terminate_all.exit

if.then.i83:                                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #17
  %call.i82 = call i32 %40(ptr noundef %1) #15
  br label %dmaengine_terminate_all.exit

dmaengine_terminate_all.exit:                     ; preds = %if.then.i83, %do.end26.dmaengine_terminate_all.exit_crit_edge
  %41 = ptrtoint ptr %use_buf_b to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %use_buf_b, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool29.not = icmp eq i8 %42, 0
  %state.i = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 30
  %43 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %state.i, align 4
  %cond.i = select i1 %tobool29.not, ptr %sgbuf_a, ptr %sgbuf_b
  %poll_rate.i = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14, i32 11
  %45 = ptrtoint ptr %poll_rate.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %poll_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool8.not.i = icmp eq i32 %46, 0
  br i1 %tobool8.not.i, label %dmaengine_terminate_all.exit.if.end11.i_crit_edge, label %if.then.i84

dmaengine_terminate_all.exit.if.end11.i_crit_edge: ; preds = %dmaengine_terminate_all.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i

if.then.i84:                                      ; preds = %dmaengine_terminate_all.exit
  call void @__sanitizer_cov_trace_pc() #17
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %cond.i, i32 0, i32 2
  %47 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %length.i, align 4
  %last_residue.i = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14, i32 8
  %49 = ptrtoint ptr %last_residue.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %last_residue.i, align 4
  %sub.i = sub i32 %48, %50
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub)
  %cmp.not.i = icmp ugt i32 %sub.i, %sub
  %sub10.i = select i1 %cmp.not.i, i32 0, i32 %sub.i
  %spec.select.i = sub i32 %sub, %sub10.i
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then.i84, %dmaengine_terminate_all.exit.if.end11.i_crit_edge
  %pending.addr.0.i = phi i32 [ %sub, %dmaengine_terminate_all.exit.if.end11.i_crit_edge ], [ %spec.select.i, %if.then.i84 ]
  %dmataken.0.i = phi i32 [ 0, %dmaengine_terminate_all.exit.if.end11.i_crit_edge ], [ %sub.i, %if.then.i84 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pending.addr.0.i)
  %tobool12.not.i = icmp eq i32 %pending.addr.0.i, 0
  br i1 %tobool12.not.i, label %if.end11.i.if.end19.i_crit_edge, label %if.then13.i

if.end11.i.if.end19.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19.i

if.then13.i:                                      ; preds = %if.end11.i
  %buf.i = getelementptr inbounds %struct.pl011_sgbuf, ptr %cond.i, i32 0, i32 1
  %51 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %buf.i, align 4
  %add.ptr.i85 = getelementptr i8, ptr %52, i32 %dmataken.0.i
  %call.i.i = call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %44, ptr noundef %add.ptr.i85, i8 noundef zeroext 0, i32 noundef %pending.addr.0.i) #15
  %rx.i = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 31, i32 4
  %53 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx.i, align 4
  %add.i = add i32 %54, %call.i.i
  store i32 %add.i, ptr %rx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %pending.addr.0.i)
  %cmp15.i = icmp ult i32 %call.i.i, %pending.addr.0.i
  br i1 %cmp15.i, label %do.end.i, label %if.then13.i.if.end19.i_crit_edge

if.then13.i.if.end19.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19.i

do.end.i:                                         ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 45
  %55 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %56, ptr noundef nonnull @.str.20) #18
  br label %if.end19.i

if.end19.i:                                       ; preds = %do.end.i, %if.then13.i.if.end19.i_crit_edge, %if.end11.i.if.end19.i_crit_edge
  %dma_count.0.i = phi i32 [ %call.i.i, %do.end.i ], [ %call.i.i, %if.then13.i.if.end19.i_crit_edge ], [ 0, %if.end11.i.if.end19.i_crit_edge ]
  %57 = ptrtoint ptr %poll_rate.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %poll_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool22.not.i = icmp eq i32 %58, 0
  br i1 %tobool22.not.i, label %if.end19.i.if.end27.i_crit_edge, label %if.then23.i

if.end19.i.if.end27.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27.i

if.then23.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #17
  %length25.i = getelementptr inbounds %struct.scatterlist, ptr %cond.i, i32 0, i32 2
  %59 = ptrtoint ptr %length25.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %length25.i, align 4
  %last_residue26.i = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14, i32 8
  %61 = ptrtoint ptr %last_residue26.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %last_residue26.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then23.i, %if.end19.i.if.end27.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %dma_count.0.i, i32 %pending.addr.0.i)
  %cmp28.i = icmp eq i32 %dma_count.0.i, %pending.addr.0.i
  br i1 %cmp28.i, label %if.then30.i, label %if.end27.i.pl011_dma_rx_chars.exit_crit_edge

if.end27.i.pl011_dma_rx_chars.exit_crit_edge:     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pl011_dma_rx_chars.exit

if.then30.i:                                      ; preds = %if.end27.i
  %62 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %membase.i, align 4
  %64 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i.i = getelementptr i16, ptr %65, i32 13
  %66 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx.i.i.i, align 2
  %conv.i.i.i = zext i16 %67 to i32
  %add.ptr.i.i = getelementptr i8, ptr %63, i32 %conv.i.i.i
  %68 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %69)
  %cmp.i.i = icmp eq i8 %69, 3
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -2147024896) #15, !srcloc !205
  br label %pl011_write.exit.i

if.else.i.i:                                      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 -32761) #15, !srcloc !218
  br label %pl011_write.exit.i

pl011_write.exit.i:                               ; preds = %if.else.i.i, %if.then.i.i
  call fastcc void @pl011_fifo_to_tty(ptr noundef %uap) #15
  br label %pl011_dma_rx_chars.exit

pl011_dma_rx_chars.exit:                          ; preds = %pl011_write.exit.i, %if.end27.i.pl011_dma_rx_chars.exit_crit_edge
  call void @tty_flip_buffer_push(ptr noundef %44) #15
  %70 = ptrtoint ptr %use_buf_b to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %use_buf_b, align 4, !range !220
  %72 = xor i8 %71, 1
  store i8 %72, ptr %use_buf_b, align 4
  %call35 = call fastcc i32 @pl011_dma_rx_trigger_dma(ptr noundef %uap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %pl011_dma_rx_chars.exit.if.end55_crit_edge, label %do.body38

pl011_dma_rx_chars.exit.if.end55_crit_edge:       ; preds = %pl011_dma_rx_chars.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end55

do.body38:                                        ; preds = %pl011_dma_rx_chars.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl011_dma_rx_irq.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl011_dma_rx_irq, %if.then48)) #15
          to label %do.end53 [label %if.then48], !srcloc !223

if.then48:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #17
  %dev50 = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 45
  %73 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev50, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl011_dma_rx_irq.__UNIQUE_ID_ddebug292, ptr noundef %74, ptr noundef nonnull @.str.19) #15
  br label %do.end53

do.end53:                                         ; preds = %if.then48, %do.body38
  %im = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 5
  %75 = ptrtoint ptr %im to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %im, align 4
  %or = or i32 %76, 16
  store i32 %or, ptr %im, align 4
  %77 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %membase.i, align 4
  %79 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i88 = getelementptr i16, ptr %80, i32 10
  %81 = ptrtoint ptr %arrayidx.i.i88 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %arrayidx.i.i88, align 2
  %conv.i.i89 = zext i16 %82 to i32
  %add.ptr.i90 = getelementptr i8, ptr %78, i32 %conv.i.i89
  %83 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %84)
  %cmp.i92 = icmp eq i8 %84, 3
  br i1 %cmp.i92, label %if.then.i93, label %if.else.i95

if.then.i93:                                      ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #17
  %85 = call i32 @llvm.bswap.i32(i32 %or) #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90, i32 %85) #15, !srcloc !205
  br label %if.end55

if.else.i95:                                      ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i94 = trunc i32 %or to i16
  %86 = call i16 @llvm.bswap.i16(i16 %conv3.i94) #15
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i90, i16 %86) #15, !srcloc !218
  br label %if.end55

if.end55:                                         ; preds = %if.else.i95, %if.then.i93, %pl011_dma_rx_chars.exit.if.end55_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pl011_rx_chars(ptr noundef %uap) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @pl011_fifo_to_tty(ptr noundef %uap)
  tail call void @_raw_spin_unlock(ptr noundef %uap) #15
  %state = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  tail call void @tty_flip_buffer_push(ptr noundef %1) #15
  %using_rx_dma.i = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 13
  %2 = ptrtoint ptr %using_rx_dma.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %using_rx_dma.i, align 1, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.not = icmp eq i8 %3, 0
  br i1 %tobool.i.not, label %entry.if.end24_crit_edge, label %if.then

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.then:                                          ; preds = %entry
  %call4 = tail call fastcc i32 @pl011_dma_rx_trigger_dma(ptr noundef %uap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl011_rx_chars.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl011_rx_chars, %if.then10)) #15
          to label %do.end [label %if.then10], !srcloc !223

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 45
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl011_rx_chars.__UNIQUE_ID_ddebug295, ptr noundef %5, ptr noundef nonnull @.str.24) #15
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %im = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 5
  %6 = ptrtoint ptr %im to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %im, align 4
  %or = or i32 %7, 16
  store i32 %or, ptr %im, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 2
  %8 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i, align 4
  %reg_offset.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 1
  %10 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %11, i32 10
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %13 to i32
  %add.ptr.i = getelementptr i8, ptr %9, i32 %conv.i.i
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 26
  %14 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %15)
  %cmp.i42 = icmp eq i8 %15, 3
  br i1 %cmp.i42, label %if.then.i43, label %if.else.i44

if.then.i43:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %16 = tail call i32 @llvm.bswap.i32(i32 %or) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #15, !srcloc !205
  br label %if.end24

if.else.i44:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i = trunc i32 %or to i16
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv3.i) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %17) #15, !srcloc !218
  br label %if.end24

if.else:                                          ; preds = %if.then
  %poll_rate = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14, i32 11
  %18 = ptrtoint ptr %poll_rate to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %poll_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool13.not = icmp eq i32 %19, 0
  br i1 %tobool13.not, label %if.else.if.end24_crit_edge, label %if.then14

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %last_jiffies = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14, i32 9
  %21 = ptrtoint ptr %last_jiffies to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %last_jiffies, align 4
  %last_residue = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14, i32 8
  %22 = ptrtoint ptr %last_residue to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4096, ptr %last_residue, align 4
  %timer = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14, i32 7
  %23 = load volatile i32, ptr @jiffies, align 128
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %19) #15
  %add = add i32 %call2.i, %23
  %call21 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #15
  br label %if.end24

if.end24:                                         ; preds = %if.then14, %if.else.if.end24_crit_edge, %if.else.i44, %if.then.i43, %entry.if.end24_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %uap) #15
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pl011_dma_rx_trigger_dma(ptr noundef %uap) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dmarx = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14
  %0 = ptrtoint ptr %dmarx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmarx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %use_buf_b = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14, i32 2
  %2 = ptrtoint ptr %use_buf_b to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_buf_b, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  %sgbuf_b = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14, i32 4
  %sgbuf_a = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14, i32 3
  %cond = select i1 %tobool4.not, ptr %sgbuf_a, ptr %sgbuf_b
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.then8_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.if.then8_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then8

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 39
  %6 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %7, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.if.then8_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.if.then8_crit_edge:              ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then8

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i = tail call ptr %7(ptr noundef nonnull %1, ptr noundef %cond, i32 noundef 1, i32 noundef 2, i32 noundef 3, ptr noundef null) #15
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %dmaengine_prep_slave_sg.exit.if.then8_crit_edge, label %if.end11

dmaengine_prep_slave_sg.exit.if.then8_crit_edge:  ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then8

if.then8:                                         ; preds = %dmaengine_prep_slave_sg.exit.if.then8_crit_edge, %lor.lhs.false2.i.if.then8_crit_edge, %lor.lhs.false.i.if.then8_crit_edge
  %running = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14, i32 6
  %8 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %running, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 47
  %11 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i39 = icmp eq ptr %12, null
  br i1 %tobool.not.i39, label %if.then8.cleanup_crit_edge, label %if.then.i

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  %call.i40 = tail call i32 %12(ptr noundef nonnull %1) #15
  br label %cleanup

if.end11:                                         ; preds = %dmaengine_prep_slave_sg.exit
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 6
  %13 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @pl011_dma_rx_callback, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 8
  %14 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %uap, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_submit.i, align 4
  %call.i41 = tail call i32 %16(ptr noundef nonnull %call.i) #15
  %cookie = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14, i32 5
  %17 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call.i41, ptr %cookie, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 50
  %20 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %21(ptr noundef nonnull %1) #15
  %dmacr = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 4
  %22 = ptrtoint ptr %dmacr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dmacr, align 4
  %or = or i32 %23, 1
  store i32 %or, ptr %dmacr, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 2
  %24 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase.i, align 4
  %reg_offset.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 1
  %26 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %27, i32 14
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %29 to i32
  %add.ptr.i = getelementptr i8, ptr %25, i32 %conv.i.i
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 26
  %30 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %31)
  %cmp.i = icmp eq i8 %31, 3
  br i1 %cmp.i, label %if.then.i42, label %if.else.i

if.then.i42:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %32 = tail call i32 @llvm.bswap.i32(i32 %or) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %32) #15, !srcloc !205
  br label %pl011_write.exit

if.else.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i = trunc i32 %or to i16
  %33 = tail call i16 @llvm.bswap.i16(i16 %conv3.i) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %33) #15, !srcloc !218
  br label %pl011_write.exit

pl011_write.exit:                                 ; preds = %if.else.i, %if.then.i42
  %running15 = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14, i32 6
  %34 = ptrtoint ptr %running15 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %running15, align 4
  %im = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 5
  %35 = ptrtoint ptr %im to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %im, align 4
  %and = and i32 %36, -17
  store i32 %and, ptr %im, align 4
  %37 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %membase.i, align 4
  %39 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i46 = getelementptr i16, ptr %40, i32 10
  %41 = ptrtoint ptr %arrayidx.i.i46 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx.i.i46, align 2
  %conv.i.i47 = zext i16 %42 to i32
  %add.ptr.i48 = getelementptr i8, ptr %38, i32 %conv.i.i47
  %43 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %44)
  %cmp.i50 = icmp eq i8 %44, 3
  br i1 %cmp.i50, label %if.then.i51, label %if.else.i53

if.then.i51:                                      ; preds = %pl011_write.exit
  call void @__sanitizer_cov_trace_pc() #17
  %45 = tail call i32 @llvm.bswap.i32(i32 %and) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %45) #15, !srcloc !205
  br label %cleanup

if.else.i53:                                      ; preds = %pl011_write.exit
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i52 = trunc i32 %and to i16
  %46 = tail call i16 @llvm.bswap.i16(i16 %conv3.i52) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i48, i16 %46) #15, !srcloc !218
  br label %cleanup

cleanup:                                          ; preds = %if.else.i53, %if.then.i51, %if.then.i, %if.then8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ -16, %if.then8.cleanup_crit_edge ], [ -16, %if.then.i ], [ 0, %if.then.i51 ], [ 0, %if.else.i53 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pl011_fifo_to_tty(ptr noundef %uap) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 2
  %reg_offset.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 1
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 26
  %rx = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 31, i32 4
  %brk = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 31, i32 9
  %parity = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 31, i32 8
  %frame = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 31, i32 6
  %overrun = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 31, i32 7
  %read_status_mask = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 28
  %sysrq.i = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 46
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %fifotaken.021 = phi i32 [ 0, %entry ], [ %inc70, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %2 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %3, i32 3
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %6 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp.i = icmp eq i8 %7, 3
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !197
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #15
  br label %pl011_read.exit

cond.false.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #15, !srcloc !219
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #15
  %conv7.i = zext i16 %11 to i32
  br label %pl011_read.exit

pl011_read.exit:                                  ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %9, %cond.true.i ], [ %conv7.i, %cond.false.i ]
  %and = and i32 %cond.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %pl011_read.exit.for.end_crit_edge

pl011_read.exit.for.end_crit_edge:                ; preds = %pl011_read.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end:                                           ; preds = %pl011_read.exit
  %12 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i, align 4
  %14 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_offset.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %15, align 2
  %conv.i.i3 = zext i16 %17 to i32
  %add.ptr.i4 = getelementptr i8, ptr %13, i32 %conv.i.i3
  %18 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp.i6 = icmp eq i8 %19, 3
  br i1 %cmp.i6, label %cond.true.i7, label %cond.false.i9

cond.true.i7:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4) #15, !srcloc !197
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #15
  br label %pl011_read.exit11

cond.false.i9:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i4) #15, !srcloc !219
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #15
  %conv7.i8 = zext i16 %23 to i32
  br label %pl011_read.exit11

pl011_read.exit11:                                ; preds = %cond.false.i9, %cond.true.i7
  %cond.i10 = phi i32 [ %21, %cond.true.i7 ], [ %conv7.i8, %cond.false.i9 ]
  %or = or i32 %cond.i10, 65536
  %24 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %rx, align 4
  %and3 = and i32 %cond.i10, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %pl011_read.exit11.if.end59_crit_edge, label %if.then7, !prof !224

pl011_read.exit11.if.end59_crit_edge:             ; preds = %pl011_read.exit11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end59

if.then7:                                         ; preds = %pl011_read.exit11
  %and8 = and i32 %cond.i10, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.then7
  %and11 = and i32 %or, -769
  %26 = ptrtoint ptr %brk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %brk, align 4
  %inc14 = add i32 %27, 1
  store i32 %inc14, ptr %brk, align 4
  %call16 = tail call fastcc i32 @uart_handle_break(ptr noundef %uap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then10.if.end35_crit_edge, label %if.then10.for.inc_crit_edge

if.then10.for.inc_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then10.if.end35_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

if.else:                                          ; preds = %if.then7
  %and20 = and i32 %cond.i10, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.else26, label %if.else.if.end35.sink.split_crit_edge

if.else.if.end35.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35.sink.split

if.else26:                                        ; preds = %if.else
  %and27 = and i32 %cond.i10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.else26.if.end35_crit_edge, label %if.else26.if.end35.sink.split_crit_edge

if.else26.if.end35.sink.split_crit_edge:          ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35.sink.split

if.else26.if.end35_crit_edge:                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

if.end35.sink.split:                              ; preds = %if.else26.if.end35.sink.split_crit_edge, %if.else.if.end35.sink.split_crit_edge
  %parity.sink22 = phi ptr [ %parity, %if.else.if.end35.sink.split_crit_edge ], [ %frame, %if.else26.if.end35.sink.split_crit_edge ]
  %28 = ptrtoint ptr %parity.sink22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %parity.sink22, align 4
  %inc25 = add i32 %29, 1
  store i32 %inc25, ptr %parity.sink22, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end35.sink.split, %if.else26.if.end35_crit_edge, %if.then10.if.end35_crit_edge
  %ch.0 = phi i32 [ %and11, %if.then10.if.end35_crit_edge ], [ %or, %if.else26.if.end35_crit_edge ], [ %or, %if.end35.sink.split ]
  %and36 = and i32 %ch.0, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.if.end42_crit_edge, label %if.then38

if.end35.if.end42_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %overrun to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %overrun, align 4
  %inc41 = add i32 %31, 1
  store i32 %inc41, ptr %overrun, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %if.end35.if.end42_crit_edge
  %32 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %read_status_mask, align 4
  %and44 = and i32 %33, %ch.0
  %and45 = and i32 %and44, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.else48, label %if.end42.if.end59_crit_edge

if.end42.if.end59_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end59

if.else48:                                        ; preds = %if.end42
  %and49 = and i32 %and44, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.else52, label %if.else48.if.end59_crit_edge

if.else48.if.end59_crit_edge:                     ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end59

if.else52:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #17
  %and53 = lshr i32 %and44, 7
  %34 = and i32 %and53, 2
  br label %if.end59

if.end59:                                         ; preds = %if.else52, %if.else48.if.end59_crit_edge, %if.end42.if.end59_crit_edge, %pl011_read.exit11.if.end59_crit_edge
  %ch.1 = phi i32 [ %or, %pl011_read.exit11.if.end59_crit_edge ], [ %and44, %if.end42.if.end59_crit_edge ], [ %and44, %if.else48.if.end59_crit_edge ], [ %and44, %if.else52 ]
  %flag.0 = phi i32 [ 0, %pl011_read.exit11.if.end59_crit_edge ], [ 1, %if.end42.if.end59_crit_edge ], [ 3, %if.else48.if.end59_crit_edge ], [ %34, %if.else52 ]
  tail call void @_raw_spin_unlock(ptr noundef %uap) #15
  %and62 = and i32 %ch.1, 255
  %35 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sysrq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i, label %if.end59.if.then67_crit_edge, label %if.end.i

if.end59.if.then67_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then67

if.end.i:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool1.not.i = icmp eq i32 %and62, 0
  br i1 %tobool1.not.i, label %if.end.i.uart_handle_sysrq_char.exit.thread18_crit_edge, label %land.lhs.true.i

if.end.i.uart_handle_sysrq_char.exit.thread18_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %uart_handle_sysrq_char.exit.thread18

land.lhs.true.i:                                  ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %37, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i12 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i12, label %if.then3.i, label %land.lhs.true.i.uart_handle_sysrq_char.exit.thread18_crit_edge

land.lhs.true.i.uart_handle_sysrq_char.exit.thread18_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %uart_handle_sysrq_char.exit.thread18

if.then3.i:                                       ; preds = %land.lhs.true.i
  %call.i = tail call i32 @sysrq_mask() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end7.i, label %uart_handle_sysrq_char.exit

if.end7.i:                                        ; preds = %if.then3.i
  %call8.i = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %uap, i32 noundef %and62) #15
  br i1 %call8.i, label %uart_handle_sysrq_char.exit.thread15, label %if.end7.i.uart_handle_sysrq_char.exit.thread18_crit_edge

if.end7.i.uart_handle_sysrq_char.exit.thread18_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %uart_handle_sysrq_char.exit.thread18

uart_handle_sysrq_char.exit.thread15:             ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_lock(ptr noundef %uap) #15
  br label %for.inc

uart_handle_sysrq_char.exit.thread18:             ; preds = %if.end7.i.uart_handle_sysrq_char.exit.thread18_crit_edge, %land.lhs.true.i.uart_handle_sysrq_char.exit.thread18_crit_edge, %if.end.i.uart_handle_sysrq_char.exit.thread18_crit_edge
  %38 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %sysrq.i, align 4
  br label %if.then67

uart_handle_sysrq_char.exit:                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @handle_sysrq(i32 noundef %and62) #15
  %39 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %sysrq.i, align 4
  tail call void @_raw_spin_lock(ptr noundef %uap) #15
  br label %for.inc

if.then67:                                        ; preds = %uart_handle_sysrq_char.exit.thread18, %if.end59.if.then67_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %uap) #15
  tail call void @uart_insert_char(ptr noundef %uap, i32 noundef %ch.1, i32 noundef 2048, i32 noundef %ch.1, i32 noundef %flag.0) #15
  br label %for.inc

for.inc:                                          ; preds = %if.then67, %uart_handle_sysrq_char.exit, %uart_handle_sysrq_char.exit.thread15, %if.then10.for.inc_crit_edge
  %inc70 = add nuw nsw i32 %fifotaken.021, 1
  %cmp.not = icmp eq i32 %inc70, 256
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %pl011_read.exit.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uart_handle_break(ptr noundef %port) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %3(ptr noundef %port) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %cons = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 32
  %6 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cons, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %land.lhs.true.if.end15_crit_edge, label %land.lhs.true5

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %14, 500
  %15 = ptrtoint ptr %sysrq to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add, ptr %sysrq, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  %tty = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tty, align 4
  tail call void @do_SAK(ptr noundef %20) #15
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
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl011_dma_rx_callback(ptr noundef %data) #3 align 64 {
entry:
  %state = alloca %struct.dma_tx_state, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dmarx1 = getelementptr inbounds %struct.uart_amba_port, ptr %data, i32 0, i32 14
  %0 = ptrtoint ptr %dmarx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmarx1, align 4
  %use_buf_b = getelementptr inbounds %struct.uart_amba_port, ptr %data, i32 0, i32 14, i32 2
  %2 = ptrtoint ptr %use_buf_b to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_buf_b, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %sgbuf_b = getelementptr inbounds %struct.uart_amba_port, ptr %data, i32 0, i32 14, i32 4
  %sgbuf_a = getelementptr inbounds %struct.uart_amba_port, ptr %data, i32 0, i32 14, i32 3
  %cond = select i1 %tobool.not, ptr %sgbuf_a, ptr %sgbuf_b
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state) #15
  %4 = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 2
  %5 = call ptr @memset(ptr %state, i32 255, i32 16)
  tail call void @_raw_spin_lock_irq(ptr noundef %data) #15
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 49
  %8 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device_tx_status, align 4
  %cookie = getelementptr inbounds %struct.uart_amba_port, ptr %data, i32 0, i32 14, i32 5
  %10 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cookie, align 4
  %call = call i32 %9(ptr noundef %1, i32 noundef %11, ptr noundef nonnull %state) #15
  %length = getelementptr inbounds %struct.scatterlist, ptr %cond, i32 0, i32 2
  %12 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length, align 4
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %4, align 4
  %sub = sub i32 %13, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub)
  %cmp = icmp ugt i32 %sub, 4096
  br i1 %cmp, label %do.body6, label %do.end11, !prof !225

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/tty/serial/amba-pl011.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 991, 0\0A.popsection", ""() #15, !srcloc !227
  unreachable

do.end11:                                         ; preds = %entry
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 47
  %18 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %do.end11.dmaengine_terminate_all.exit_crit_edge, label %if.then.i

do.end11.dmaengine_terminate_all.exit_crit_edge:  ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmaengine_terminate_all.exit

if.then.i:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = call i32 %19(ptr noundef %1) #15
  br label %dmaengine_terminate_all.exit

dmaengine_terminate_all.exit:                     ; preds = %if.then.i, %do.end11.dmaengine_terminate_all.exit_crit_edge
  %running = getelementptr inbounds %struct.uart_amba_port, ptr %data, i32 0, i32 14, i32 6
  %20 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %running, align 4
  %21 = xor i8 %3, 1
  %22 = ptrtoint ptr %use_buf_b to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %use_buf_b, align 4
  %call19 = call fastcc i32 @pl011_dma_rx_trigger_dma(ptr noundef %data)
  %state.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 30
  %23 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %state.i, align 4
  %poll_rate.i = getelementptr inbounds %struct.uart_amba_port, ptr %data, i32 0, i32 14, i32 11
  %25 = ptrtoint ptr %poll_rate.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %poll_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool8.not.i = icmp eq i32 %26, 0
  br i1 %tobool8.not.i, label %dmaengine_terminate_all.exit.if.end11.i_crit_edge, label %if.then.i61

dmaengine_terminate_all.exit.if.end11.i_crit_edge: ; preds = %dmaengine_terminate_all.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i

if.then.i61:                                      ; preds = %dmaengine_terminate_all.exit
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %length, align 4
  %last_residue.i = getelementptr inbounds %struct.uart_amba_port, ptr %data, i32 0, i32 14, i32 8
  %29 = ptrtoint ptr %last_residue.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %last_residue.i, align 4
  %sub.i = sub i32 %28, %30
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub)
  %cmp.not.i = icmp ugt i32 %sub.i, %sub
  %sub10.i = select i1 %cmp.not.i, i32 0, i32 %sub.i
  %spec.select.i = sub i32 %sub, %sub10.i
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then.i61, %dmaengine_terminate_all.exit.if.end11.i_crit_edge
  %pending.addr.0.i = phi i32 [ %sub, %dmaengine_terminate_all.exit.if.end11.i_crit_edge ], [ %spec.select.i, %if.then.i61 ]
  %dmataken.0.i = phi i32 [ 0, %dmaengine_terminate_all.exit.if.end11.i_crit_edge ], [ %sub.i, %if.then.i61 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pending.addr.0.i)
  %tobool12.not.i = icmp eq i32 %pending.addr.0.i, 0
  br i1 %tobool12.not.i, label %if.end11.i.if.end19.i_crit_edge, label %if.then13.i

if.end11.i.if.end19.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19.i

if.then13.i:                                      ; preds = %if.end11.i
  %buf.i = getelementptr inbounds %struct.pl011_sgbuf, ptr %cond, i32 0, i32 1
  %31 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buf.i, align 4
  %add.ptr.i = getelementptr i8, ptr %32, i32 %dmataken.0.i
  %call.i.i = call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %24, ptr noundef %add.ptr.i, i8 noundef zeroext 0, i32 noundef %pending.addr.0.i) #15
  %rx.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 31, i32 4
  %33 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx.i, align 4
  %add.i = add i32 %34, %call.i.i
  store i32 %add.i, ptr %rx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %pending.addr.0.i)
  %cmp15.i = icmp ult i32 %call.i.i, %pending.addr.0.i
  br i1 %cmp15.i, label %do.end.i, label %if.then13.i.if.end19.i_crit_edge

if.then13.i.if.end19.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19.i

do.end.i:                                         ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 45
  %35 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %36, ptr noundef nonnull @.str.20) #18
  br label %if.end19.i

if.end19.i:                                       ; preds = %do.end.i, %if.then13.i.if.end19.i_crit_edge, %if.end11.i.if.end19.i_crit_edge
  %37 = ptrtoint ptr %poll_rate.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %poll_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool22.not.i = icmp eq i32 %38, 0
  br i1 %tobool22.not.i, label %if.end19.i.pl011_dma_rx_chars.exit_crit_edge, label %if.then23.i

if.end19.i.pl011_dma_rx_chars.exit_crit_edge:     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pl011_dma_rx_chars.exit

if.then23.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #17
  %39 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %length, align 4
  %last_residue26.i = getelementptr inbounds %struct.uart_amba_port, ptr %data, i32 0, i32 14, i32 8
  %41 = ptrtoint ptr %last_residue26.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %last_residue26.i, align 4
  br label %pl011_dma_rx_chars.exit

pl011_dma_rx_chars.exit:                          ; preds = %if.then23.i, %if.end19.i.pl011_dma_rx_chars.exit_crit_edge
  call void @tty_flip_buffer_push(ptr noundef %24) #15
  call void @_raw_spin_unlock_irq(ptr noundef %data) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool23.not = icmp eq i32 %call19, 0
  br i1 %tobool23.not, label %pl011_dma_rx_chars.exit.if.end41_crit_edge, label %do.body25

pl011_dma_rx_chars.exit.if.end41_crit_edge:       ; preds = %pl011_dma_rx_chars.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

do.body25:                                        ; preds = %pl011_dma_rx_chars.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl011_dma_rx_callback.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl011_dma_rx_callback, %if.then35)) #15
          to label %do.end39 [label %if.then35], !srcloc !223

if.then35:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 45
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl011_dma_rx_callback.__UNIQUE_ID_ddebug293, ptr noundef %43, ptr noundef nonnull @.str.19) #15
  br label %do.end39

do.end39:                                         ; preds = %if.then35, %do.body25
  %im = getelementptr inbounds %struct.uart_amba_port, ptr %data, i32 0, i32 5
  %44 = ptrtoint ptr %im to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %im, align 4
  %or = or i32 %45, 16
  store i32 %or, ptr %im, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 2
  %46 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %membase.i, align 4
  %reg_offset.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %data, i32 0, i32 1
  %48 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %49, i32 10
  %50 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %51 to i32
  %add.ptr.i62 = getelementptr i8, ptr %47, i32 %conv.i.i
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 26
  %52 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %53)
  %cmp.i = icmp eq i8 %53, 3
  br i1 %cmp.i, label %if.then.i63, label %if.else.i

if.then.i63:                                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #17
  %54 = call i32 @llvm.bswap.i32(i32 %or) #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 %54) #15, !srcloc !205
  br label %if.end41

if.else.i:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i = trunc i32 %or to i16
  %55 = call i16 @llvm.bswap.i16(i16 %conv3.i) #15
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i62, i16 %55) #15, !srcloc !218
  br label %if.end41

if.end41:                                         ; preds = %if.else.i, %if.then.i63, %pl011_dma_rx_chars.exit.if.end41_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_handle_dcd_change(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_handle_cts_change(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_rs485_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pl011_unregister_port(ptr noundef readonly %uap) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @amba_ports, align 4
  %cmp1 = icmp eq ptr %0, %uap
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  store ptr null, ptr @amba_ports, align 4
  br label %for.inc

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %tobool.not = icmp ne ptr %0, null
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %busy.1.off0 = phi i1 [ false, %if.then ], [ %tobool.not, %if.else ]
  %1 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 1), align 4
  %cmp1.1 = icmp eq ptr %1, %uap
  br i1 %cmp1.1, label %if.then.1, label %if.else.1

if.else.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  %tobool.not.1 = icmp ne ptr %1, null
  %spec.select.1 = select i1 %tobool.not.1, i1 true, i1 %busy.1.off0
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 1), align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %if.else.1
  %busy.1.off0.1 = phi i1 [ %busy.1.off0, %if.then.1 ], [ %spec.select.1, %if.else.1 ]
  %2 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 2), align 4
  %cmp1.2 = icmp eq ptr %2, %uap
  br i1 %cmp1.2, label %if.then.2, label %if.else.2

if.else.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #17
  %tobool.not.2 = icmp ne ptr %2, null
  %spec.select.2 = select i1 %tobool.not.2, i1 true, i1 %busy.1.off0.1
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #17
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 2), align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %if.else.2
  %busy.1.off0.2 = phi i1 [ %busy.1.off0.1, %if.then.2 ], [ %spec.select.2, %if.else.2 ]
  %3 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 3), align 4
  %cmp1.3 = icmp eq ptr %3, %uap
  br i1 %cmp1.3, label %if.then.3, label %if.else.3

if.else.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #17
  %tobool.not.3 = icmp ne ptr %3, null
  %spec.select.3 = select i1 %tobool.not.3, i1 true, i1 %busy.1.off0.2
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #17
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 3), align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %if.else.3
  %busy.1.off0.3 = phi i1 [ %busy.1.off0.2, %if.then.3 ], [ %spec.select.3, %if.else.3 ]
  %4 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 4), align 4
  %cmp1.4 = icmp eq ptr %4, %uap
  br i1 %cmp1.4, label %if.then.4, label %if.else.4

if.else.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #17
  %tobool.not.4 = icmp ne ptr %4, null
  %spec.select.4 = select i1 %tobool.not.4, i1 true, i1 %busy.1.off0.3
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #17
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 4), align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %if.else.4
  %busy.1.off0.4 = phi i1 [ %busy.1.off0.3, %if.then.4 ], [ %spec.select.4, %if.else.4 ]
  %5 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 5), align 4
  %cmp1.5 = icmp eq ptr %5, %uap
  br i1 %cmp1.5, label %if.then.5, label %if.else.5

if.else.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #17
  %tobool.not.5 = icmp ne ptr %5, null
  %spec.select.5 = select i1 %tobool.not.5, i1 true, i1 %busy.1.off0.4
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #17
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 5), align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %if.else.5
  %busy.1.off0.5 = phi i1 [ %busy.1.off0.4, %if.then.5 ], [ %spec.select.5, %if.else.5 ]
  %6 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 6), align 4
  %cmp1.6 = icmp eq ptr %6, %uap
  br i1 %cmp1.6, label %if.then.6, label %if.else.6

if.else.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #17
  %tobool.not.6 = icmp ne ptr %6, null
  %spec.select.6 = select i1 %tobool.not.6, i1 true, i1 %busy.1.off0.5
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #17
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 6), align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %if.else.6
  %busy.1.off0.6 = phi i1 [ %busy.1.off0.5, %if.then.6 ], [ %spec.select.6, %if.else.6 ]
  %7 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 7), align 4
  %cmp1.7 = icmp eq ptr %7, %uap
  br i1 %cmp1.7, label %if.then.7, label %if.else.7

if.else.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #17
  %tobool.not.7 = icmp ne ptr %7, null
  %spec.select.7 = select i1 %tobool.not.7, i1 true, i1 %busy.1.off0.6
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #17
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 7), align 4
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %if.else.7
  %busy.1.off0.7 = phi i1 [ %busy.1.off0.6, %if.then.7 ], [ %spec.select.7, %if.else.7 ]
  %8 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 8), align 4
  %cmp1.8 = icmp eq ptr %8, %uap
  br i1 %cmp1.8, label %if.then.8, label %if.else.8

if.else.8:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #17
  %tobool.not.8 = icmp ne ptr %8, null
  %spec.select.8 = select i1 %tobool.not.8, i1 true, i1 %busy.1.off0.7
  br label %for.inc.8

if.then.8:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #17
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 8), align 4
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then.8, %if.else.8
  %busy.1.off0.8 = phi i1 [ %busy.1.off0.7, %if.then.8 ], [ %spec.select.8, %if.else.8 ]
  %9 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 9), align 4
  %cmp1.9 = icmp eq ptr %9, %uap
  br i1 %cmp1.9, label %if.then.9, label %if.else.9

if.else.9:                                        ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #17
  %tobool.not.9 = icmp ne ptr %9, null
  %spec.select.9 = select i1 %tobool.not.9, i1 true, i1 %busy.1.off0.8
  br label %for.inc.9

if.then.9:                                        ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #17
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 9), align 4
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.then.9, %if.else.9
  %busy.1.off0.9 = phi i1 [ %busy.1.off0.8, %if.then.9 ], [ %spec.select.9, %if.else.9 ]
  %10 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 10), align 4
  %cmp1.10 = icmp eq ptr %10, %uap
  br i1 %cmp1.10, label %if.then.10, label %if.else.10

if.else.10:                                       ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #17
  %tobool.not.10 = icmp ne ptr %10, null
  %spec.select.10 = select i1 %tobool.not.10, i1 true, i1 %busy.1.off0.9
  br label %for.inc.10

if.then.10:                                       ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #17
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 10), align 4
  br label %for.inc.10

for.inc.10:                                       ; preds = %if.then.10, %if.else.10
  %busy.1.off0.10 = phi i1 [ %busy.1.off0.9, %if.then.10 ], [ %spec.select.10, %if.else.10 ]
  %11 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 11), align 4
  %cmp1.11 = icmp eq ptr %11, %uap
  br i1 %cmp1.11, label %if.then.11, label %if.else.11

if.else.11:                                       ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #17
  %tobool.not.11 = icmp ne ptr %11, null
  %spec.select.11 = select i1 %tobool.not.11, i1 true, i1 %busy.1.off0.10
  br label %for.inc.11

if.then.11:                                       ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #17
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 11), align 4
  br label %for.inc.11

for.inc.11:                                       ; preds = %if.then.11, %if.else.11
  %busy.1.off0.11 = phi i1 [ %busy.1.off0.10, %if.then.11 ], [ %spec.select.11, %if.else.11 ]
  %12 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 12), align 4
  %cmp1.12 = icmp eq ptr %12, %uap
  br i1 %cmp1.12, label %if.then.12, label %if.else.12

if.else.12:                                       ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #17
  %tobool.not.12 = icmp ne ptr %12, null
  %spec.select.12 = select i1 %tobool.not.12, i1 true, i1 %busy.1.off0.11
  br label %for.inc.12

if.then.12:                                       ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #17
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 12), align 4
  br label %for.inc.12

for.inc.12:                                       ; preds = %if.then.12, %if.else.12
  %busy.1.off0.12 = phi i1 [ %busy.1.off0.11, %if.then.12 ], [ %spec.select.12, %if.else.12 ]
  %13 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 13), align 4
  %cmp1.13 = icmp eq ptr %13, %uap
  br i1 %cmp1.13, label %if.then.13, label %if.else.13

if.else.13:                                       ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #17
  %tobool.not.13 = icmp ne ptr %13, null
  %spec.select.13 = select i1 %tobool.not.13, i1 true, i1 %busy.1.off0.12
  br label %for.inc.13

if.then.13:                                       ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #17
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 13), align 4
  br label %for.inc.13

for.inc.13:                                       ; preds = %if.then.13, %if.else.13
  %busy.1.off0.13 = phi i1 [ %busy.1.off0.12, %if.then.13 ], [ %spec.select.13, %if.else.13 ]
  %dmatx.i = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 15
  %14 = ptrtoint ptr %dmatx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dmatx.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %for.inc.13.if.end.i_crit_edge, label %if.then.i

for.inc.13.if.end.i_crit_edge:                    ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dma_release_channel(ptr noundef nonnull %15) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.inc.13.if.end.i_crit_edge
  %dmarx.i = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14
  %16 = ptrtoint ptr %dmarx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dmarx.i, align 4
  %tobool4.not.i = icmp eq ptr %17, null
  br i1 %tobool4.not.i, label %if.end.i.pl011_dma_remove.exit_crit_edge, label %if.then5.i

if.end.i.pl011_dma_remove.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pl011_dma_remove.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dma_release_channel(ptr noundef nonnull %17) #15
  br label %pl011_dma_remove.exit

pl011_dma_remove.exit:                            ; preds = %if.then5.i, %if.end.i.pl011_dma_remove.exit_crit_edge
  br i1 %busy.1.off0.13, label %pl011_dma_remove.exit.if.end8_crit_edge, label %if.then7

pl011_dma_remove.exit.if.end8_crit_edge:          ; preds = %pl011_dma_remove.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then7:                                         ; preds = %pl011_dma_remove.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @uart_unregister_driver(ptr noundef nonnull @amba_reg) #15
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %pl011_dma_remove.exit.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl011_console_write(ptr nocapture noundef readonly %co, ptr noundef %s, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index, align 2
  %idxprom = sext i16 %1 to i32
  %arrayidx = getelementptr [14 x ptr], ptr @amba_ports, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %clk = getelementptr inbounds %struct.uart_amba_port, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_enable(ptr noundef %5) #15
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !228
  %and.i = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @trace_hardirqs_off() #15
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry.do.end11_crit_edge
  %sysrq = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 46
  %7 = ptrtoint ptr %sysrq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sysrq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool12.not = icmp eq i32 %8, 0
  br i1 %tobool12.not, label %if.else, label %do.end11.if.end22_crit_edge

do.end11.if.end22_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

if.else:                                          ; preds = %do.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %9 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool14.not = icmp eq i32 %9, 0
  br i1 %tobool14.not, label %if.else18, label %if.then15

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %3) #15
  br label %if.end22

if.else18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_lock(ptr noundef %3) #15
  br label %if.end22

if.end22:                                         ; preds = %if.else18, %if.then15, %do.end11.if.end22_crit_edge
  %locked.0 = phi i32 [ %call.i, %if.then15 ], [ 1, %if.else18 ], [ 0, %do.end11.if.end22_crit_edge ]
  %vendor = getelementptr inbounds %struct.uart_amba_port, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vendor, align 4
  %always_enabled = getelementptr inbounds %struct.vendor_data, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %always_enabled to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %always_enabled, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool23.not = icmp eq i8 %13, 0
  br i1 %tobool23.not, label %if.then24, label %if.end22.if.end26_crit_edge

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

if.then24:                                        ; preds = %if.end22
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i, align 4
  %reg_offset.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %17, i32 8
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %19 to i32
  %add.ptr.i = getelementptr i8, ptr %15, i32 %conv.i.i
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 26
  %20 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %21)
  %cmp.i = icmp eq i8 %21, 3
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #17
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !197
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #15
  br label %pl011_read.exit

cond.false.i:                                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #17
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #15, !srcloc !219
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #15
  %conv7.i = zext i16 %25 to i32
  br label %pl011_read.exit

pl011_read.exit:                                  ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %23, %cond.true.i ], [ %conv7.i, %cond.false.i ]
  %and = and i32 %cond.i, -33026
  %or = or i32 %and, 257
  %26 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase.i, align 4
  %28 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i104 = getelementptr i16, ptr %29, i32 8
  %30 = ptrtoint ptr %arrayidx.i.i104 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx.i.i104, align 2
  %conv.i.i105 = zext i16 %31 to i32
  %add.ptr.i106 = getelementptr i8, ptr %27, i32 %conv.i.i105
  %32 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %33)
  %cmp.i108 = icmp eq i8 %33, 3
  br i1 %cmp.i108, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %pl011_read.exit
  call void @__sanitizer_cov_trace_pc() #17
  %34 = tail call i32 @llvm.bswap.i32(i32 %or) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106, i32 %34) #15, !srcloc !205
  br label %if.end26

if.else.i:                                        ; preds = %pl011_read.exit
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i = trunc i32 %or to i16
  %35 = tail call i16 @llvm.bswap.i16(i16 %conv3.i) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i106, i16 %35) #15, !srcloc !218
  br label %if.end26

if.end26:                                         ; preds = %if.else.i, %if.then.i, %if.end22.if.end26_crit_edge
  %old_cr.0 = phi i32 [ 0, %if.end22.if.end26_crit_edge ], [ %cond.i, %if.then.i ], [ %cond.i, %if.else.i ]
  tail call void @uart_console_write(ptr noundef %3, ptr noundef %s, i32 noundef %count, ptr noundef nonnull @pl011_console_putchar) #15
  %membase.i109 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %reg_offset.i.i110 = getelementptr inbounds %struct.uart_amba_port, ptr %3, i32 0, i32 1
  %iotype.i114 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 26
  br label %while.cond

while.cond:                                       ; preds = %do.end37, %if.end26
  %36 = ptrtoint ptr %membase.i109 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase.i109, align 4
  %38 = ptrtoint ptr %reg_offset.i.i110 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_offset.i.i110, align 4
  %arrayidx.i.i111 = getelementptr i16, ptr %39, i32 3
  %40 = ptrtoint ptr %arrayidx.i.i111 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx.i.i111, align 2
  %conv.i.i112 = zext i16 %41 to i32
  %add.ptr.i113 = getelementptr i8, ptr %37, i32 %conv.i.i112
  %42 = ptrtoint ptr %iotype.i114 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %iotype.i114, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %43)
  %cmp.i115 = icmp eq i8 %43, 3
  br i1 %cmp.i115, label %cond.true.i116, label %cond.false.i118

cond.true.i116:                                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113) #15, !srcloc !197
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #15
  br label %pl011_read.exit120

cond.false.i118:                                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  %46 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i113) #15, !srcloc !219
  %47 = tail call i16 @llvm.bswap.i16(i16 %46) #15
  %conv7.i117 = zext i16 %47 to i32
  br label %pl011_read.exit120

pl011_read.exit120:                               ; preds = %cond.false.i118, %cond.true.i116
  %cond.i119 = phi i32 [ %45, %cond.true.i116 ], [ %conv7.i117, %cond.false.i118 ]
  %48 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vendor, align 4
  %inv_fr = getelementptr inbounds %struct.vendor_data, ptr %49, i32 0, i32 6
  %50 = ptrtoint ptr %inv_fr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %inv_fr, align 4
  %xor = xor i32 %51, %cond.i119
  %fr_busy = getelementptr inbounds %struct.vendor_data, ptr %49, i32 0, i32 2
  %52 = ptrtoint ptr %fr_busy to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fr_busy, align 4
  %and31 = and i32 %xor, %53
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %while.end, label %do.end37

do.end37:                                         ; preds = %pl011_read.exit120
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !229
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !230
  br label %while.cond

while.end:                                        ; preds = %pl011_read.exit120
  %always_enabled43 = getelementptr inbounds %struct.vendor_data, ptr %49, i32 0, i32 11
  %54 = ptrtoint ptr %always_enabled43 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %always_enabled43, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool44.not = icmp eq i8 %55, 0
  br i1 %tobool44.not, label %if.then45, label %while.end.if.end46_crit_edge

while.end.if.end46_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end46

if.then45:                                        ; preds = %while.end
  %56 = ptrtoint ptr %membase.i109 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %membase.i109, align 4
  %58 = ptrtoint ptr %reg_offset.i.i110 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %reg_offset.i.i110, align 4
  %arrayidx.i.i123 = getelementptr i16, ptr %59, i32 8
  %60 = ptrtoint ptr %arrayidx.i.i123 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx.i.i123, align 2
  %conv.i.i124 = zext i16 %61 to i32
  %add.ptr.i125 = getelementptr i8, ptr %57, i32 %conv.i.i124
  %62 = ptrtoint ptr %iotype.i114 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %iotype.i114, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %63)
  %cmp.i127 = icmp eq i8 %63, 3
  br i1 %cmp.i127, label %if.then.i128, label %if.else.i130

if.then.i128:                                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #17
  %64 = tail call i32 @llvm.bswap.i32(i32 %old_cr.0) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i125, i32 %64) #15, !srcloc !205
  br label %if.end46

if.else.i130:                                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i129 = trunc i32 %old_cr.0 to i16
  %65 = tail call i16 @llvm.bswap.i16(i16 %conv3.i129) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i125, i16 %65) #15, !srcloc !218
  br label %if.end46

if.end46:                                         ; preds = %if.else.i130, %if.then.i128, %while.end.if.end46_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %locked.0)
  %tobool47.not = icmp eq i32 %locked.0, 0
  br i1 %tobool47.not, label %if.end46.do.body52_crit_edge, label %if.then48

if.end46.do.body52_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body52

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock(ptr noundef %3) #15
  br label %do.body52

do.body52:                                        ; preds = %if.then48, %if.end46.do.body52_crit_edge
  br i1 %tobool.not, label %if.then61, label %do.body52.do.body63_crit_edge

do.body52.do.body63_crit_edge:                    ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body63

if.then61:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @trace_hardirqs_on() #15
  br label %do.body63

do.body63:                                        ; preds = %if.then61, %do.body52.do.body63_crit_edge
  %66 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !231
  %and.i.i = and i32 %66, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool71.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool71.not, label %if.then75, label %do.body63.do.end78_crit_edge, !prof !225

do.body63.do.end78_crit_edge:                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end78

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end78

do.end78:                                         ; preds = %if.then75, %do.body63.do.end78_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #15, !srcloc !232
  %67 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %68) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl011_console_setup(ptr noundef %co, ptr noundef %options) #3 align 64 {
entry:
  %baud = alloca i32, align 4
  %bits = alloca i32, align 4
  %parity = alloca i32, align 4
  %flow = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %baud) #15
  %0 = ptrtoint ptr %baud to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 38400, ptr %baud, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits) #15
  %1 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8, ptr %bits, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parity) #15
  %2 = ptrtoint ptr %parity to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 110, ptr %parity, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flow) #15
  %3 = ptrtoint ptr %flow to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 110, ptr %flow, align 4
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %index, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %5)
  %cmp = icmp sgt i16 %5, 13
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %index, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %index, align 2
  %idxprom = sext i16 %8 to i32
  %arrayidx = getelementptr [14 x ptr], ptr @amba_ports, i32 0, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 45
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %call = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %12) #15
  %clk = getelementptr inbounds %struct.uart_amba_port, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  %call6 = tail call i32 @clk_prepare(ptr noundef %14) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %platform_data.i, align 8
  %tobool13.not = icmp eq ptr %18, null
  br i1 %tobool13.not, label %if.end9.if.end22_crit_edge, label %if.then14

if.end9.if.end22_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

if.then14:                                        ; preds = %if.end9
  %init = getelementptr inbounds %struct.amba_pl011_data, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init, align 4
  %tobool18.not = icmp eq ptr %20, null
  br i1 %tobool18.not, label %if.then14.if.end22_crit_edge, label %if.then19

if.then14.if.end22_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

if.then19:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %20() #15
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.then14.if.end22_crit_edge, %if.end9.if.end22_crit_edge
  %21 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk, align 4
  %call24 = tail call i32 @clk_get_rate(ptr noundef %22) #15
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 22
  %23 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call24, ptr %uartclk, align 4
  %vendor = getelementptr inbounds %struct.uart_amba_port, ptr %10, i32 0, i32 3
  %24 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vendor, align 4
  %fixed_options = getelementptr inbounds %struct.vendor_data, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %fixed_options to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %fixed_options, align 1, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool26.not = icmp eq i8 %27, 0
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  %fixed_baud = getelementptr inbounds %struct.uart_amba_port, ptr %10, i32 0, i32 8
  %28 = ptrtoint ptr %fixed_baud to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fixed_baud, align 4
  %30 = ptrtoint ptr %baud to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %baud, align 4
  br label %if.end32

if.else:                                          ; preds = %if.end22
  %tobool28.not = icmp eq ptr %options, null
  br i1 %tobool28.not, label %if.else30, label %if.then29

if.then29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  call void @uart_parse_options(ptr noundef nonnull %options, ptr noundef nonnull %baud, ptr noundef nonnull %parity, ptr noundef nonnull %bits, ptr noundef nonnull %flow) #15
  br label %if.end32

if.else30:                                        ; preds = %if.else
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 2
  %31 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %membase.i.i, align 4
  %reg_offset.i.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %10, i32 0, i32 1
  %33 = ptrtoint ptr %reg_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_offset.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i16, ptr %34, i32 8
  %35 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx.i.i.i, align 2
  %conv.i.i.i = zext i16 %36 to i32
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 %conv.i.i.i
  %iotype.i.i = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 26
  %37 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %iotype.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %38)
  %cmp.i.i = icmp eq i8 %38, 3
  br i1 %cmp.i.i, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #17
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #15, !srcloc !197
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #15
  br label %pl011_read.exit.i

cond.false.i.i:                                   ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #17
  %41 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #15, !srcloc !219
  %42 = tail call i16 @llvm.bswap.i16(i16 %41) #15
  %conv7.i.i = zext i16 %42 to i32
  br label %pl011_read.exit.i

pl011_read.exit.i:                                ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i32 [ %40, %cond.true.i.i ], [ %conv7.i.i, %cond.false.i.i ]
  %and.i = and i32 %cond.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %pl011_read.exit.i.if.end32_crit_edge, label %if.then.i

pl011_read.exit.i.if.end32_crit_edge:             ; preds = %pl011_read.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.then.i:                                        ; preds = %pl011_read.exit.i
  %43 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase.i.i, align 4
  %45 = ptrtoint ptr %reg_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg_offset.i.i.i, align 4
  %arrayidx.i.i40.i = getelementptr i16, ptr %46, i32 5
  %47 = ptrtoint ptr %arrayidx.i.i40.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx.i.i40.i, align 2
  %conv.i.i41.i = zext i16 %48 to i32
  %add.ptr.i42.i = getelementptr i8, ptr %44, i32 %conv.i.i41.i
  %49 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %iotype.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %50)
  %cmp.i44.i = icmp eq i8 %50, 3
  br i1 %cmp.i44.i, label %cond.true.i45.i, label %cond.false.i47.i

cond.true.i45.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42.i) #15, !srcloc !197
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #15
  br label %pl011_read.exit49.i

cond.false.i47.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %53 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i42.i) #15, !srcloc !219
  %54 = tail call i16 @llvm.bswap.i16(i16 %53) #15
  %conv7.i46.i = zext i16 %54 to i32
  br label %pl011_read.exit49.i

pl011_read.exit49.i:                              ; preds = %cond.false.i47.i, %cond.true.i45.i
  %cond.i48.i = phi i32 [ %52, %cond.true.i45.i ], [ %conv7.i46.i, %cond.false.i47.i ]
  %and2.i = and i32 %cond.i48.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %and5.i = and i32 %cond.i48.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %.86.i = select i1 %tobool6.not.i, i32 111, i32 101
  %storemerge.i = select i1 %tobool3.not.i, i32 110, i32 %.86.i
  %55 = ptrtoint ptr %parity to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %storemerge.i, ptr %parity, align 4
  %and9.i = and i32 %cond.i48.i, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and9.i)
  %cmp.i = icmp eq i32 %and9.i, 64
  %..i = select i1 %cmp.i, i32 7, i32 8
  %56 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %..i, ptr %bits, align 4
  %57 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %membase.i.i, align 4
  %59 = ptrtoint ptr %reg_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reg_offset.i.i.i, align 4
  %arrayidx.i.i52.i = getelementptr i16, ptr %60, i32 6
  %61 = ptrtoint ptr %arrayidx.i.i52.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx.i.i52.i, align 2
  %conv.i.i53.i = zext i16 %62 to i32
  %add.ptr.i54.i = getelementptr i8, ptr %58, i32 %conv.i.i53.i
  %63 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %iotype.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %64)
  %cmp.i56.i = icmp eq i8 %64, 3
  br i1 %cmp.i56.i, label %cond.true.i57.i, label %cond.false.i59.i

cond.true.i57.i:                                  ; preds = %pl011_read.exit49.i
  call void @__sanitizer_cov_trace_pc() #17
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54.i) #15, !srcloc !197
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #15
  br label %pl011_read.exit61.i

cond.false.i59.i:                                 ; preds = %pl011_read.exit49.i
  call void @__sanitizer_cov_trace_pc() #17
  %67 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i54.i) #15, !srcloc !219
  %68 = tail call i16 @llvm.bswap.i16(i16 %67) #15
  %conv7.i58.i = zext i16 %68 to i32
  br label %pl011_read.exit61.i

pl011_read.exit61.i:                              ; preds = %cond.false.i59.i, %cond.true.i57.i
  %cond.i60.i = phi i32 [ %66, %cond.true.i57.i ], [ %conv7.i58.i, %cond.false.i59.i ]
  %69 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %membase.i.i, align 4
  %71 = ptrtoint ptr %reg_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %reg_offset.i.i.i, align 4
  %arrayidx.i.i64.i = getelementptr i16, ptr %72, i32 7
  %73 = ptrtoint ptr %arrayidx.i.i64.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %arrayidx.i.i64.i, align 2
  %conv.i.i65.i = zext i16 %74 to i32
  %add.ptr.i66.i = getelementptr i8, ptr %70, i32 %conv.i.i65.i
  %75 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %iotype.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %76)
  %cmp.i68.i = icmp eq i8 %76, 3
  br i1 %cmp.i68.i, label %cond.true.i69.i, label %cond.false.i71.i

cond.true.i69.i:                                  ; preds = %pl011_read.exit61.i
  call void @__sanitizer_cov_trace_pc() #17
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i66.i) #15, !srcloc !197
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #15
  br label %pl011_read.exit73.i

cond.false.i71.i:                                 ; preds = %pl011_read.exit61.i
  call void @__sanitizer_cov_trace_pc() #17
  %79 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i66.i) #15, !srcloc !219
  %80 = tail call i16 @llvm.bswap.i16(i16 %79) #15
  %conv7.i70.i = zext i16 %80 to i32
  br label %pl011_read.exit73.i

pl011_read.exit73.i:                              ; preds = %cond.false.i71.i, %cond.true.i69.i
  %cond.i72.i = phi i32 [ %78, %cond.true.i69.i ], [ %conv7.i70.i, %cond.false.i71.i ]
  %81 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %uartclk, align 4
  %mul.i = shl i32 %82, 2
  %mul15.i = shl i32 %cond.i60.i, 6
  %add.i = add i32 %cond.i72.i, %mul15.i
  %div.i = udiv i32 %mul.i, %add.i
  %83 = ptrtoint ptr %baud to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %div.i, ptr %baud, align 4
  %84 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %vendor, align 4
  %oversampling.i = getelementptr inbounds %struct.vendor_data, ptr %85, i32 0, i32 8
  %86 = ptrtoint ptr %oversampling.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %oversampling.i, align 1, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool16.not.i = icmp eq i8 %87, 0
  br i1 %tobool16.not.i, label %pl011_read.exit73.i.if.end32_crit_edge, label %if.then17.i

pl011_read.exit73.i.if.end32_crit_edge:           ; preds = %pl011_read.exit73.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.then17.i:                                      ; preds = %pl011_read.exit73.i
  %88 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %membase.i.i, align 4
  %90 = ptrtoint ptr %reg_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %reg_offset.i.i.i, align 4
  %arrayidx.i.i76.i = getelementptr i16, ptr %91, i32 8
  %92 = ptrtoint ptr %arrayidx.i.i76.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %arrayidx.i.i76.i, align 2
  %conv.i.i77.i = zext i16 %93 to i32
  %add.ptr.i78.i = getelementptr i8, ptr %89, i32 %conv.i.i77.i
  %94 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %iotype.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %95)
  %cmp.i80.i = icmp eq i8 %95, 3
  br i1 %cmp.i80.i, label %cond.true.i81.i, label %cond.false.i83.i

cond.true.i81.i:                                  ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #17
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i78.i) #15, !srcloc !197
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #15
  br label %pl011_read.exit85.i

cond.false.i83.i:                                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #17
  %98 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i78.i) #15, !srcloc !219
  %99 = tail call i16 @llvm.bswap.i16(i16 %98) #15
  %conv7.i82.i = zext i16 %99 to i32
  br label %pl011_read.exit85.i

pl011_read.exit85.i:                              ; preds = %cond.false.i83.i, %cond.true.i81.i
  %cond.i84.i = phi i32 [ %97, %cond.true.i81.i ], [ %conv7.i82.i, %cond.false.i83.i ]
  %and19.i = and i32 %cond.i84.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %pl011_read.exit85.i.if.end32_crit_edge, label %if.then21.i

pl011_read.exit85.i.if.end32_crit_edge:           ; preds = %pl011_read.exit85.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.then21.i:                                      ; preds = %pl011_read.exit85.i
  call void @__sanitizer_cov_trace_pc() #17
  %100 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %baud, align 4
  %mul22.i = shl i32 %101, 1
  store i32 %mul22.i, ptr %baud, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then21.i, %pl011_read.exit85.i.if.end32_crit_edge, %pl011_read.exit73.i.if.end32_crit_edge, %pl011_read.exit.i.if.end32_crit_edge, %if.then29, %if.then27
  %102 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %baud, align 4
  %104 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %parity, align 4
  %106 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %bits, align 4
  %108 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %flow, align 4
  %call34 = call i32 @uart_set_options(ptr noundef nonnull %10, ptr noundef %co, i32 noundef %103, i32 noundef %105, i32 noundef %107, i32 noundef %109) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call34, %if.end32 ], [ -19, %if.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flow) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parity) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %baud) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl011_console_match(ptr noundef %co, ptr nocapture noundef readonly %name, i32 noundef %idx, ptr noundef %options) #3 align 64 {
entry:
  %options.addr = alloca ptr, align 4
  %iotype = alloca i8, align 1
  %addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %options.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %options, ptr %options.addr, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %iotype) #15
  %1 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %iotype, align 1, !annotation !217
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #15
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %addr, align 4, !annotation !217
  %call = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(12) @.str.34) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(6) @.str.35) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup27_crit_edge

land.lhs.true.cleanup27_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup27

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call i32 @uart_parse_earlycon(ptr noundef %options, ptr noundef nonnull %iotype, ptr noundef nonnull %addr, ptr noundef nonnull %options.addr) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup27_crit_edge

if.end.cleanup27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup27

if.end5:                                          ; preds = %if.end
  %3 = ptrtoint ptr %iotype to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %iotype, align 1
  %5 = and i8 %4, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %switch = icmp eq i8 %5, 2
  br i1 %switch, label %for.body.preheader, label %if.end5.cleanup27_crit_edge

if.end5.cleanup27_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup27

for.body.preheader:                               ; preds = %if.end5
  %6 = load ptr, ptr @amba_ports, align 4
  %tobool16.not = icmp eq ptr %6, null
  br i1 %tobool16.not, label %for.body.preheader.for.inc_crit_edge, label %if.end18

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end18:                                         ; preds = %for.body.preheader
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 43
  %7 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mapbase, align 4
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp21.not = icmp eq i32 %8, %10
  br i1 %cmp21.not, label %if.end18.cleanup_crit_edge, label %if.end18.for.inc_crit_edge

if.end18.for.inc_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %if.end18.13.cleanup_crit_edge, %if.end18.12.cleanup_crit_edge, %if.end18.11.cleanup_crit_edge, %if.end18.10.cleanup_crit_edge, %if.end18.9.cleanup_crit_edge, %if.end18.8.cleanup_crit_edge, %if.end18.7.cleanup_crit_edge, %if.end18.6.cleanup_crit_edge, %if.end18.5.cleanup_crit_edge, %if.end18.4.cleanup_crit_edge, %if.end18.3.cleanup_crit_edge, %if.end18.2.cleanup_crit_edge, %if.end18.1.cleanup_crit_edge, %if.end18.cleanup_crit_edge
  %i.042.lcssa = phi i16 [ 0, %if.end18.cleanup_crit_edge ], [ 1, %if.end18.1.cleanup_crit_edge ], [ 2, %if.end18.2.cleanup_crit_edge ], [ 3, %if.end18.3.cleanup_crit_edge ], [ 4, %if.end18.4.cleanup_crit_edge ], [ 5, %if.end18.5.cleanup_crit_edge ], [ 6, %if.end18.6.cleanup_crit_edge ], [ 7, %if.end18.7.cleanup_crit_edge ], [ 8, %if.end18.8.cleanup_crit_edge ], [ 9, %if.end18.9.cleanup_crit_edge ], [ 10, %if.end18.10.cleanup_crit_edge ], [ 11, %if.end18.11.cleanup_crit_edge ], [ 12, %if.end18.12.cleanup_crit_edge ], [ 13, %if.end18.13.cleanup_crit_edge ]
  %.lcssa = phi ptr [ %6, %if.end18.cleanup_crit_edge ], [ %15, %if.end18.1.cleanup_crit_edge ], [ %20, %if.end18.2.cleanup_crit_edge ], [ %25, %if.end18.3.cleanup_crit_edge ], [ %30, %if.end18.4.cleanup_crit_edge ], [ %35, %if.end18.5.cleanup_crit_edge ], [ %40, %if.end18.6.cleanup_crit_edge ], [ %45, %if.end18.7.cleanup_crit_edge ], [ %50, %if.end18.8.cleanup_crit_edge ], [ %55, %if.end18.9.cleanup_crit_edge ], [ %60, %if.end18.10.cleanup_crit_edge ], [ %65, %if.end18.11.cleanup_crit_edge ], [ %70, %if.end18.12.cleanup_crit_edge ], [ %75, %if.end18.13.cleanup_crit_edge ]
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %11 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %i.042.lcssa, ptr %index, align 2
  %cons = getelementptr inbounds %struct.uart_port, ptr %.lcssa, i32 0, i32 32
  %12 = ptrtoint ptr %cons to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %co, ptr %cons, align 4
  %13 = ptrtoint ptr %options.addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %options.addr, align 4
  %call26 = call i32 @pl011_console_setup(ptr noundef %co, ptr noundef %14)
  br label %cleanup27

for.inc:                                          ; preds = %if.end18.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %15 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 1), align 4
  %tobool16.not.1 = icmp eq ptr %15, null
  br i1 %tobool16.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end18.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1

if.end18.1:                                       ; preds = %for.inc
  %mapbase.1 = getelementptr inbounds %struct.uart_port, ptr %15, i32 0, i32 43
  %16 = ptrtoint ptr %mapbase.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mapbase.1, align 4
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp21.not.1 = icmp eq i32 %17, %19
  br i1 %cmp21.not.1, label %if.end18.1.cleanup_crit_edge, label %if.end18.1.for.inc.1_crit_edge

if.end18.1.for.inc.1_crit_edge:                   ; preds = %if.end18.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1

if.end18.1.cleanup_crit_edge:                     ; preds = %if.end18.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc.1:                                        ; preds = %if.end18.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %20 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 2), align 4
  %tobool16.not.2 = icmp eq ptr %20, null
  br i1 %tobool16.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end18.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.2

if.end18.2:                                       ; preds = %for.inc.1
  %mapbase.2 = getelementptr inbounds %struct.uart_port, ptr %20, i32 0, i32 43
  %21 = ptrtoint ptr %mapbase.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mapbase.2, align 4
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp21.not.2 = icmp eq i32 %22, %24
  br i1 %cmp21.not.2, label %if.end18.2.cleanup_crit_edge, label %if.end18.2.for.inc.2_crit_edge

if.end18.2.for.inc.2_crit_edge:                   ; preds = %if.end18.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.2

if.end18.2.cleanup_crit_edge:                     ; preds = %if.end18.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc.2:                                        ; preds = %if.end18.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %25 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 3), align 4
  %tobool16.not.3 = icmp eq ptr %25, null
  br i1 %tobool16.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end18.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.3

if.end18.3:                                       ; preds = %for.inc.2
  %mapbase.3 = getelementptr inbounds %struct.uart_port, ptr %25, i32 0, i32 43
  %26 = ptrtoint ptr %mapbase.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mapbase.3, align 4
  %28 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp21.not.3 = icmp eq i32 %27, %29
  br i1 %cmp21.not.3, label %if.end18.3.cleanup_crit_edge, label %if.end18.3.for.inc.3_crit_edge

if.end18.3.for.inc.3_crit_edge:                   ; preds = %if.end18.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.3

if.end18.3.cleanup_crit_edge:                     ; preds = %if.end18.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc.3:                                        ; preds = %if.end18.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %30 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 4), align 4
  %tobool16.not.4 = icmp eq ptr %30, null
  br i1 %tobool16.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end18.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.4

if.end18.4:                                       ; preds = %for.inc.3
  %mapbase.4 = getelementptr inbounds %struct.uart_port, ptr %30, i32 0, i32 43
  %31 = ptrtoint ptr %mapbase.4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mapbase.4, align 4
  %33 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp21.not.4 = icmp eq i32 %32, %34
  br i1 %cmp21.not.4, label %if.end18.4.cleanup_crit_edge, label %if.end18.4.for.inc.4_crit_edge

if.end18.4.for.inc.4_crit_edge:                   ; preds = %if.end18.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.4

if.end18.4.cleanup_crit_edge:                     ; preds = %if.end18.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc.4:                                        ; preds = %if.end18.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %35 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 5), align 4
  %tobool16.not.5 = icmp eq ptr %35, null
  br i1 %tobool16.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.end18.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.5

if.end18.5:                                       ; preds = %for.inc.4
  %mapbase.5 = getelementptr inbounds %struct.uart_port, ptr %35, i32 0, i32 43
  %36 = ptrtoint ptr %mapbase.5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mapbase.5, align 4
  %38 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp21.not.5 = icmp eq i32 %37, %39
  br i1 %cmp21.not.5, label %if.end18.5.cleanup_crit_edge, label %if.end18.5.for.inc.5_crit_edge

if.end18.5.for.inc.5_crit_edge:                   ; preds = %if.end18.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.5

if.end18.5.cleanup_crit_edge:                     ; preds = %if.end18.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc.5:                                        ; preds = %if.end18.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %40 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 6), align 4
  %tobool16.not.6 = icmp eq ptr %40, null
  br i1 %tobool16.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.end18.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.6

if.end18.6:                                       ; preds = %for.inc.5
  %mapbase.6 = getelementptr inbounds %struct.uart_port, ptr %40, i32 0, i32 43
  %41 = ptrtoint ptr %mapbase.6 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mapbase.6, align 4
  %43 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp21.not.6 = icmp eq i32 %42, %44
  br i1 %cmp21.not.6, label %if.end18.6.cleanup_crit_edge, label %if.end18.6.for.inc.6_crit_edge

if.end18.6.for.inc.6_crit_edge:                   ; preds = %if.end18.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.6

if.end18.6.cleanup_crit_edge:                     ; preds = %if.end18.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc.6:                                        ; preds = %if.end18.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %45 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 7), align 4
  %tobool16.not.7 = icmp eq ptr %45, null
  br i1 %tobool16.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.end18.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.7

if.end18.7:                                       ; preds = %for.inc.6
  %mapbase.7 = getelementptr inbounds %struct.uart_port, ptr %45, i32 0, i32 43
  %46 = ptrtoint ptr %mapbase.7 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mapbase.7, align 4
  %48 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp21.not.7 = icmp eq i32 %47, %49
  br i1 %cmp21.not.7, label %if.end18.7.cleanup_crit_edge, label %if.end18.7.for.inc.7_crit_edge

if.end18.7.for.inc.7_crit_edge:                   ; preds = %if.end18.7
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.7

if.end18.7.cleanup_crit_edge:                     ; preds = %if.end18.7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc.7:                                        ; preds = %if.end18.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  %50 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 8), align 4
  %tobool16.not.8 = icmp eq ptr %50, null
  br i1 %tobool16.not.8, label %for.inc.7.for.inc.8_crit_edge, label %if.end18.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.8

if.end18.8:                                       ; preds = %for.inc.7
  %mapbase.8 = getelementptr inbounds %struct.uart_port, ptr %50, i32 0, i32 43
  %51 = ptrtoint ptr %mapbase.8 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mapbase.8, align 4
  %53 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp21.not.8 = icmp eq i32 %52, %54
  br i1 %cmp21.not.8, label %if.end18.8.cleanup_crit_edge, label %if.end18.8.for.inc.8_crit_edge

if.end18.8.for.inc.8_crit_edge:                   ; preds = %if.end18.8
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.8

if.end18.8.cleanup_crit_edge:                     ; preds = %if.end18.8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc.8:                                        ; preds = %if.end18.8.for.inc.8_crit_edge, %for.inc.7.for.inc.8_crit_edge
  %55 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 9), align 4
  %tobool16.not.9 = icmp eq ptr %55, null
  br i1 %tobool16.not.9, label %for.inc.8.for.inc.9_crit_edge, label %if.end18.9

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.9

if.end18.9:                                       ; preds = %for.inc.8
  %mapbase.9 = getelementptr inbounds %struct.uart_port, ptr %55, i32 0, i32 43
  %56 = ptrtoint ptr %mapbase.9 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mapbase.9, align 4
  %58 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp21.not.9 = icmp eq i32 %57, %59
  br i1 %cmp21.not.9, label %if.end18.9.cleanup_crit_edge, label %if.end18.9.for.inc.9_crit_edge

if.end18.9.for.inc.9_crit_edge:                   ; preds = %if.end18.9
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.9

if.end18.9.cleanup_crit_edge:                     ; preds = %if.end18.9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc.9:                                        ; preds = %if.end18.9.for.inc.9_crit_edge, %for.inc.8.for.inc.9_crit_edge
  %60 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 10), align 4
  %tobool16.not.10 = icmp eq ptr %60, null
  br i1 %tobool16.not.10, label %for.inc.9.for.inc.10_crit_edge, label %if.end18.10

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.10

if.end18.10:                                      ; preds = %for.inc.9
  %mapbase.10 = getelementptr inbounds %struct.uart_port, ptr %60, i32 0, i32 43
  %61 = ptrtoint ptr %mapbase.10 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %mapbase.10, align 4
  %63 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp21.not.10 = icmp eq i32 %62, %64
  br i1 %cmp21.not.10, label %if.end18.10.cleanup_crit_edge, label %if.end18.10.for.inc.10_crit_edge

if.end18.10.for.inc.10_crit_edge:                 ; preds = %if.end18.10
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.10

if.end18.10.cleanup_crit_edge:                    ; preds = %if.end18.10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc.10:                                       ; preds = %if.end18.10.for.inc.10_crit_edge, %for.inc.9.for.inc.10_crit_edge
  %65 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 11), align 4
  %tobool16.not.11 = icmp eq ptr %65, null
  br i1 %tobool16.not.11, label %for.inc.10.for.inc.11_crit_edge, label %if.end18.11

for.inc.10.for.inc.11_crit_edge:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.11

if.end18.11:                                      ; preds = %for.inc.10
  %mapbase.11 = getelementptr inbounds %struct.uart_port, ptr %65, i32 0, i32 43
  %66 = ptrtoint ptr %mapbase.11 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mapbase.11, align 4
  %68 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp21.not.11 = icmp eq i32 %67, %69
  br i1 %cmp21.not.11, label %if.end18.11.cleanup_crit_edge, label %if.end18.11.for.inc.11_crit_edge

if.end18.11.for.inc.11_crit_edge:                 ; preds = %if.end18.11
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.11

if.end18.11.cleanup_crit_edge:                    ; preds = %if.end18.11
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc.11:                                       ; preds = %if.end18.11.for.inc.11_crit_edge, %for.inc.10.for.inc.11_crit_edge
  %70 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 12), align 4
  %tobool16.not.12 = icmp eq ptr %70, null
  br i1 %tobool16.not.12, label %for.inc.11.for.inc.12_crit_edge, label %if.end18.12

for.inc.11.for.inc.12_crit_edge:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.12

if.end18.12:                                      ; preds = %for.inc.11
  %mapbase.12 = getelementptr inbounds %struct.uart_port, ptr %70, i32 0, i32 43
  %71 = ptrtoint ptr %mapbase.12 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mapbase.12, align 4
  %73 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp21.not.12 = icmp eq i32 %72, %74
  br i1 %cmp21.not.12, label %if.end18.12.cleanup_crit_edge, label %if.end18.12.for.inc.12_crit_edge

if.end18.12.for.inc.12_crit_edge:                 ; preds = %if.end18.12
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.12

if.end18.12.cleanup_crit_edge:                    ; preds = %if.end18.12
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc.12:                                       ; preds = %if.end18.12.for.inc.12_crit_edge, %for.inc.11.for.inc.12_crit_edge
  %75 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 13), align 4
  %tobool16.not.13 = icmp eq ptr %75, null
  br i1 %tobool16.not.13, label %for.inc.12.cleanup27_crit_edge, label %if.end18.13

for.inc.12.cleanup27_crit_edge:                   ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup27

if.end18.13:                                      ; preds = %for.inc.12
  %mapbase.13 = getelementptr inbounds %struct.uart_port, ptr %75, i32 0, i32 43
  %76 = ptrtoint ptr %mapbase.13 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %mapbase.13, align 4
  %78 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %79)
  %cmp21.not.13 = icmp eq i32 %77, %79
  br i1 %cmp21.not.13, label %if.end18.13.cleanup_crit_edge, label %if.end18.13.cleanup27_crit_edge

if.end18.13.cleanup27_crit_edge:                  ; preds = %if.end18.13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup27

if.end18.13.cleanup_crit_edge:                    ; preds = %if.end18.13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup27:                                        ; preds = %if.end18.13.cleanup27_crit_edge, %for.inc.12.cleanup27_crit_edge, %cleanup, %if.end5.cleanup27_crit_edge, %if.end.cleanup27_crit_edge, %land.lhs.true.cleanup27_crit_edge
  %retval.2 = phi i32 [ %call26, %cleanup ], [ -19, %land.lhs.true.cleanup27_crit_edge ], [ -19, %if.end.cleanup27_crit_edge ], [ -19, %if.end5.cleanup27_crit_edge ], [ -19, %if.end18.13.cleanup27_crit_edge ], [ -19, %for.inc.12.cleanup27_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %iotype) #15
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl011_console_putchar(ptr nocapture noundef readonly %port, i32 noundef %ch) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %reg_offset.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 1
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  br label %while.cond

while.cond:                                       ; preds = %do.end, %entry
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %2 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %3, i32 3
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %6 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp.i = icmp eq i8 %7, 3
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !197
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #15
  br label %pl011_read.exit

cond.false.i:                                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #15, !srcloc !219
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #15
  %conv7.i = zext i16 %11 to i32
  br label %pl011_read.exit

pl011_read.exit:                                  ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %9, %cond.true.i ], [ %conv7.i, %cond.false.i ]
  %and = and i32 %cond.i, 32
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end, label %do.end

do.end:                                           ; preds = %pl011_read.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !233
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !234
  br label %while.cond

while.end:                                        ; preds = %pl011_read.exit
  %12 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i, align 4
  %14 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_offset.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %15, align 2
  %conv.i.i10 = zext i16 %17 to i32
  %add.ptr.i11 = getelementptr i8, ptr %13, i32 %conv.i.i10
  %18 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp.i13 = icmp eq i8 %19, 3
  br i1 %cmp.i13, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  %20 = tail call i32 @llvm.bswap.i32(i32 %ch) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %20) #15, !srcloc !205
  br label %pl011_write.exit

if.else.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i = trunc i32 %ch to i16
  %21 = tail call i16 @llvm.bswap.i16(i16 %conv3.i) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i11, i16 %21) #15, !srcloc !218
  br label %pl011_write.exit

pl011_write.exit:                                 ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_parse_earlycon(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl011_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call1 = tail call i32 @uart_suspend_port(ptr noundef nonnull @amba_reg, ptr noundef nonnull %1) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl011_resume(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call1 = tail call i32 @uart_resume_port(ptr noundef nonnull @amba_reg, ptr noundef nonnull %1) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_suspend_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_resume_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl011_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.amba_id, ptr %id, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = load ptr, ptr @amba_ports, align 4
  %cmp1.i = icmp eq ptr %2, null
  br i1 %cmp1.i, label %entry.if.end_crit_edge, label %for.inc.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.inc.i:                                        ; preds = %entry
  %3 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 1), align 4
  %cmp1.1.i = icmp eq ptr %3, null
  br i1 %cmp1.1.i, label %for.inc.i.if.end_crit_edge, label %for.inc.1.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.inc.1.i:                                      ; preds = %for.inc.i
  %4 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 2), align 4
  %cmp1.2.i = icmp eq ptr %4, null
  br i1 %cmp1.2.i, label %for.inc.1.i.if.end_crit_edge, label %for.inc.2.i

for.inc.1.i.if.end_crit_edge:                     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %5 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 3), align 4
  %cmp1.3.i = icmp eq ptr %5, null
  br i1 %cmp1.3.i, label %for.inc.2.i.if.end_crit_edge, label %for.inc.3.i

for.inc.2.i.if.end_crit_edge:                     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %6 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 4), align 4
  %cmp1.4.i = icmp eq ptr %6, null
  br i1 %cmp1.4.i, label %for.inc.3.i.if.end_crit_edge, label %for.inc.4.i

for.inc.3.i.if.end_crit_edge:                     ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %7 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 5), align 4
  %cmp1.5.i = icmp eq ptr %7, null
  br i1 %cmp1.5.i, label %for.inc.4.i.if.end_crit_edge, label %for.inc.5.i

for.inc.4.i.if.end_crit_edge:                     ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %8 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 6), align 4
  %cmp1.6.i = icmp eq ptr %8, null
  br i1 %cmp1.6.i, label %for.inc.5.i.if.end_crit_edge, label %for.inc.6.i

for.inc.5.i.if.end_crit_edge:                     ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %9 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 7), align 4
  %cmp1.7.i = icmp eq ptr %9, null
  br i1 %cmp1.7.i, label %for.inc.6.i.if.end_crit_edge, label %for.inc.7.i

for.inc.6.i.if.end_crit_edge:                     ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %10 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 8), align 4
  %cmp1.8.i = icmp eq ptr %10, null
  br i1 %cmp1.8.i, label %for.inc.7.i.if.end_crit_edge, label %for.inc.8.i

for.inc.7.i.if.end_crit_edge:                     ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %11 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 9), align 4
  %cmp1.9.i = icmp eq ptr %11, null
  br i1 %cmp1.9.i, label %for.inc.8.i.if.end_crit_edge, label %for.inc.9.i

for.inc.8.i.if.end_crit_edge:                     ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.inc.9.i:                                      ; preds = %for.inc.8.i
  %12 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 10), align 4
  %cmp1.10.i = icmp eq ptr %12, null
  br i1 %cmp1.10.i, label %for.inc.9.i.if.end_crit_edge, label %for.inc.10.i

for.inc.9.i.if.end_crit_edge:                     ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.inc.10.i:                                     ; preds = %for.inc.9.i
  %13 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 11), align 4
  %cmp1.11.i = icmp eq ptr %13, null
  br i1 %cmp1.11.i, label %for.inc.10.i.if.end_crit_edge, label %for.inc.11.i

for.inc.10.i.if.end_crit_edge:                    ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.inc.11.i:                                     ; preds = %for.inc.10.i
  %14 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 12), align 4
  %cmp1.12.i = icmp eq ptr %14, null
  br i1 %cmp1.12.i, label %for.inc.11.i.if.end_crit_edge, label %for.inc.12.i

for.inc.11.i.if.end_crit_edge:                    ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.inc.12.i:                                     ; preds = %for.inc.11.i
  %15 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 13), align 4
  %cmp1.13.i = icmp eq ptr %15, null
  br i1 %cmp1.13.i, label %for.inc.12.i.if.end_crit_edge, label %for.inc.12.i.cleanup_crit_edge

for.inc.12.i.cleanup_crit_edge:                   ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc.12.i.if.end_crit_edge:                    ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %for.inc.12.i.if.end_crit_edge, %for.inc.11.i.if.end_crit_edge, %for.inc.10.i.if.end_crit_edge, %for.inc.9.i.if.end_crit_edge, %for.inc.8.i.if.end_crit_edge, %for.inc.7.i.if.end_crit_edge, %for.inc.6.i.if.end_crit_edge, %for.inc.5.i.if.end_crit_edge, %for.inc.4.i.if.end_crit_edge, %for.inc.3.i.if.end_crit_edge, %for.inc.2.i.if.end_crit_edge, %for.inc.1.i.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i.ph = phi i32 [ 12, %for.inc.11.i.if.end_crit_edge ], [ 11, %for.inc.10.i.if.end_crit_edge ], [ 10, %for.inc.9.i.if.end_crit_edge ], [ 9, %for.inc.8.i.if.end_crit_edge ], [ 8, %for.inc.7.i.if.end_crit_edge ], [ 7, %for.inc.6.i.if.end_crit_edge ], [ 6, %for.inc.5.i.if.end_crit_edge ], [ 5, %for.inc.4.i.if.end_crit_edge ], [ 4, %for.inc.3.i.if.end_crit_edge ], [ 3, %for.inc.2.i.if.end_crit_edge ], [ 2, %for.inc.1.i.if.end_crit_edge ], [ 1, %for.inc.i.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ], [ 13, %for.inc.12.i.if.end_crit_edge ]
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 640, i32 noundef 3520) #15
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call6 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #15
  %clk = getelementptr inbounds %struct.uart_amba_port, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call6, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %17 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %reg_offset13 = getelementptr inbounds %struct.uart_amba_port, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %reg_offset13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %reg_offset13, align 4
  %vendor14 = getelementptr inbounds %struct.uart_amba_port, ptr %call.i, i32 0, i32 3
  %21 = ptrtoint ptr %vendor14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %1, ptr %vendor14, align 4
  %get_fifosize = getelementptr inbounds %struct.vendor_data, ptr %1, i32 0, i32 13
  %22 = ptrtoint ptr %get_fifosize to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get_fifosize, align 4
  %call15 = tail call i32 %23(ptr noundef %dev) #15
  %fifosize = getelementptr inbounds %struct.uart_amba_port, ptr %call.i, i32 0, i32 7
  %24 = ptrtoint ptr %fifosize to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call15, ptr %fifosize, align 4
  %access_32b = getelementptr inbounds %struct.vendor_data, ptr %1, i32 0, i32 7
  %25 = ptrtoint ptr %access_32b to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %access_32b, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool16.not = icmp eq i8 %26, 0
  %conv = select i1 %tobool16.not, i8 2, i8 3
  %iotype = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 26
  %27 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv, ptr %iotype, align 2
  %irq = getelementptr inbounds %struct.amba_device, ptr %dev, i32 0, i32 7
  %28 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq, align 8
  %irq18 = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 20
  %30 = ptrtoint ptr %irq18 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %irq18, align 4
  %ops = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 39
  %31 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @amba_pl011_pops, ptr %ops, align 4
  %rs485_config = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 18
  %32 = ptrtoint ptr %rs485_config to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @pl011_rs485_config, ptr %rs485_config, align 4
  %type = getelementptr inbounds %struct.uart_amba_port, ptr %call.i, i32 0, i32 9
  %periphid = getelementptr inbounds %struct.amba_device, ptr %dev, i32 0, i32 4
  %33 = ptrtoint ptr %periphid to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %periphid, align 8
  %shr = lshr i32 %34, 20
  %and = and i32 %shr, 15
  %call21 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %type, i32 noundef 12, ptr noundef nonnull @.str.36, i32 noundef %and)
  %res = getelementptr inbounds %struct.amba_device, ptr %dev, i32 0, i32 1
  %call23 = tail call fastcc i32 @pl011_setup_port(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef %res, i32 noundef %retval.0.i.ph)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end26:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %35 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call28 = tail call fastcc i32 @pl011_register_port(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end12.cleanup_crit_edge, %if.then9, %if.end.cleanup_crit_edge, %for.inc.12.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.then9 ], [ %call28, %if.end26 ], [ -12, %if.end.cleanup_crit_edge ], [ %call23, %if.end12.cleanup_crit_edge ], [ -16, %for.inc.12.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl011_remove(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call2 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @amba_reg, ptr noundef %1) #15
  tail call fastcc void @pl011_unregister_port(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl011_rs485_config(ptr nocapture noundef %port, ptr nocapture noundef %rs485) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rs485, align 4
  %and = lshr i32 %1, 1
  %and2 = lshr i32 %1, 2
  %2 = xor i32 %and, %and2
  %3 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %or = and i32 %1, -7
  %and8 = or i32 %or, 2
  %4 = ptrtoint ptr %rs485 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and8, ptr %rs485, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %delay_rts_before_send = getelementptr inbounds %struct.serial_rs485, ptr %rs485, i32 0, i32 1
  %5 = ptrtoint ptr %delay_rts_before_send to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %delay_rts_before_send, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 100)
  %8 = ptrtoint ptr %delay_rts_before_send to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %delay_rts_before_send, align 4
  %delay_rts_after_send = getelementptr inbounds %struct.serial_rs485, ptr %rs485, i32 0, i32 2
  %9 = ptrtoint ptr %delay_rts_after_send to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %delay_rts_after_send, align 4
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 100)
  %12 = ptrtoint ptr %delay_rts_after_send to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %delay_rts_after_send, align 4
  %padding = getelementptr inbounds %struct.serial_rs485, ptr %rs485, i32 0, i32 3
  %13 = call ptr @memset(ptr %padding, i32 0, i32 20)
  %rs48519 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56
  %14 = ptrtoint ptr %rs48519 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rs48519, align 4
  %and21 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end.if.end24_crit_edge, label %if.then23

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @pl011_rs485_tx_stop(ptr noundef %port)
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end.if.end24_crit_edge
  %16 = call ptr @memcpy(ptr %rs48519, ptr %rs485, i32 32)
  %17 = ptrtoint ptr %rs48519 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rs48519, align 4
  %and28 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end24.if.end33_crit_edge, label %if.then30

if.end24.if.end33_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.then30:                                        ; preds = %if.end24
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %19 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase.i, align 4
  %reg_offset.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 1
  %21 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %22, i32 8
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %24 to i32
  %add.ptr.i = getelementptr i8, ptr %20, i32 %conv.i.i
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %25 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %26)
  %cmp.i = icmp eq i8 %26, 3
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #17
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !197
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #15
  br label %pl011_read.exit

cond.false.i:                                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #17
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #15, !srcloc !219
  %30 = tail call i16 @llvm.bswap.i16(i16 %29) #15
  %conv7.i = zext i16 %30 to i32
  br label %pl011_read.exit

pl011_read.exit:                                  ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %28, %cond.true.i ], [ %conv7.i, %cond.false.i ]
  %and31 = and i32 %cond.i, -16385
  %31 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %membase.i, align 4
  %33 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i57 = getelementptr i16, ptr %34, i32 8
  %35 = ptrtoint ptr %arrayidx.i.i57 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx.i.i57, align 2
  %conv.i.i58 = zext i16 %36 to i32
  %add.ptr.i59 = getelementptr i8, ptr %32, i32 %conv.i.i58
  %37 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %38)
  %cmp.i61 = icmp eq i8 %38, 3
  br i1 %cmp.i61, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %pl011_read.exit
  call void @__sanitizer_cov_trace_pc() #17
  %39 = tail call i32 @llvm.bswap.i32(i32 %and31) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %39) #15, !srcloc !205
  br label %pl011_write.exit

if.else.i:                                        ; preds = %pl011_read.exit
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i = trunc i32 %and31 to i16
  %40 = tail call i16 @llvm.bswap.i16(i16 %conv3.i) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i59, i16 %40) #15, !srcloc !218
  br label %pl011_write.exit

pl011_write.exit:                                 ; preds = %if.else.i, %if.then.i
  %status = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 34
  %41 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %status, align 4
  %and32 = and i32 %42, -5
  store i32 %and32, ptr %status, align 4
  br label %if.end33

if.end33:                                         ; preds = %pl011_write.exit, %if.end24.if.end33_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl011_set_mctrl(ptr nocapture noundef readonly %port, i32 noundef %mctrl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %reg_offset.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 1
  %2 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %3, i32 8
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %6 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp.i = icmp eq i8 %7, 3
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !197
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #15
  br label %pl011_read.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #15, !srcloc !219
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #15
  %conv7.i = zext i16 %11 to i32
  br label %pl011_read.exit

pl011_read.exit:                                  ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %9, %cond.true.i ], [ %conv7.i, %cond.false.i ]
  %and = and i32 %mctrl, 4
  %and1 = and i32 %cond.i, -15489
  %12 = shl nuw nsw i32 %and, 9
  %cr.0 = or i32 %and1, %12
  %and2 = shl i32 %mctrl, 9
  %13 = and i32 %and2, 1024
  %cr.1 = or i32 %cr.0, %13
  %and9 = lshr i32 %mctrl, 1
  %14 = and i32 %and9, 4096
  %cr.2 = or i32 %cr.1, %14
  %15 = and i32 %and9, 8192
  %cr.3 = or i32 %cr.2, %15
  %and23 = lshr i32 %mctrl, 8
  %16 = and i32 %and23, 128
  %cr.4 = or i32 %cr.3, %16
  %status = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 34
  %17 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status, align 4
  %and30 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %pl011_read.exit.if.end40_crit_edge, label %if.then32

pl011_read.exit.if.end40_crit_edge:               ; preds = %pl011_read.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40

if.then32:                                        ; preds = %pl011_read.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else37, label %if.then35

if.then35:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #17
  %or36 = or i32 %cr.4, 16384
  br label %if.end40

if.else37:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #17
  %and38 = and i32 %cr.4, -16385
  br label %if.end40

if.end40:                                         ; preds = %if.else37, %if.then35, %pl011_read.exit.if.end40_crit_edge
  %cr.5 = phi i32 [ %or36, %if.then35 ], [ %and38, %if.else37 ], [ %cr.4, %pl011_read.exit.if.end40_crit_edge ]
  %19 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase.i, align 4
  %21 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i62 = getelementptr i16, ptr %22, i32 8
  %23 = ptrtoint ptr %arrayidx.i.i62 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx.i.i62, align 2
  %conv.i.i63 = zext i16 %24 to i32
  %add.ptr.i64 = getelementptr i8, ptr %20, i32 %conv.i.i63
  %25 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %26)
  %cmp.i66 = icmp eq i8 %26, 3
  br i1 %cmp.i66, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  %27 = tail call i32 @llvm.bswap.i32(i32 %cr.5) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 %27) #15, !srcloc !205
  br label %pl011_write.exit

if.else.i:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i = trunc i32 %cr.5 to i16
  %28 = tail call i16 @llvm.bswap.i16(i16 %conv3.i) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i64, i16 %28) #15, !srcloc !218
  br label %pl011_write.exit

pl011_write.exit:                                 ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl011_get_mctrl(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %reg_offset.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 1
  %2 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %3, i32 3
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %6 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp.i = icmp eq i8 %7, 3
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !197
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #15
  br label %pl011_read.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #15, !srcloc !219
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #15
  %conv7.i = zext i16 %11 to i32
  br label %pl011_read.exit

pl011_read.exit:                                  ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %9, %cond.true.i ], [ %conv7.i, %cond.false.i ]
  %and = shl i32 %cond.i, 4
  %12 = and i32 %and, 64
  %vendor = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 3
  %13 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vendor, align 4
  %fr_dsr = getelementptr inbounds %struct.vendor_data, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %fr_dsr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fr_dsr, align 4
  %and1 = and i32 %16, %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %or4 = or i32 %12, 256
  %result.1 = select i1 %tobool2.not, i32 %12, i32 %or4
  %fr_cts = getelementptr inbounds %struct.vendor_data, ptr %14, i32 0, i32 4
  %17 = ptrtoint ptr %fr_cts to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fr_cts, align 4
  %and7 = and i32 %18, %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %or10 = or i32 %result.1, 32
  %result.2 = select i1 %tobool8.not, i32 %result.1, i32 %or10
  %fr_ri = getelementptr inbounds %struct.vendor_data, ptr %14, i32 0, i32 5
  %19 = ptrtoint ptr %fr_ri to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fr_ri, align 4
  %and13 = and i32 %20, %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %or16 = or i32 %result.2, 128
  %result.3 = select i1 %tobool14.not, i32 %result.2, i32 %or16
  ret i32 %result.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl011_enable_ms(ptr nocapture noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %im = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 5
  %0 = ptrtoint ptr %im to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %im, align 4
  %or = or i32 %1, 15
  store i32 %or, ptr %im, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 4
  %reg_offset.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 1
  %4 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %5, i32 10
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %7 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %8 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp.i = icmp eq i8 %9, 3
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %10 = tail call i32 @llvm.bswap.i32(i32 %or) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #15, !srcloc !205
  br label %pl011_write.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i = trunc i32 %or to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv3.i) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %11) #15, !srcloc !218
  br label %pl011_write.exit

pl011_write.exit:                                 ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl011_break_ctl(ptr noundef %port, i32 noundef %break_state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #15
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %reg_offset.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 1
  %2 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %3, i32 5
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %6 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp.i = icmp eq i8 %7, 3
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !197
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #15
  br label %pl011_read.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #15, !srcloc !219
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #15
  %conv7.i = zext i16 %11 to i32
  br label %pl011_read.exit

pl011_read.exit:                                  ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %9, %cond.true.i ], [ %conv7.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %break_state)
  %cmp8 = icmp eq i32 %break_state, -1
  %and = and i32 %cond.i, -2
  %masksel = zext i1 %cmp8 to i32
  %lcr_h.0 = or i32 %and, %masksel
  %12 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i, align 4
  %14 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i19 = getelementptr i16, ptr %15, i32 5
  %16 = ptrtoint ptr %arrayidx.i.i19 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.i.i19, align 2
  %conv.i.i20 = zext i16 %17 to i32
  %add.ptr.i21 = getelementptr i8, ptr %13, i32 %conv.i.i20
  %18 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp.i23 = icmp eq i8 %19, 3
  br i1 %cmp.i23, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %pl011_read.exit
  call void @__sanitizer_cov_trace_pc() #17
  %20 = tail call i32 @llvm.bswap.i32(i32 %lcr_h.0) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %20) #15, !srcloc !205
  br label %pl011_write.exit

if.else.i:                                        ; preds = %pl011_read.exit
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i = trunc i32 %lcr_h.0 to i16
  %21 = tail call i16 @llvm.bswap.i16(i16 %conv3.i) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i21, i16 %21) #15, !srcloc !218
  br label %pl011_write.exit

pl011_write.exit:                                 ; preds = %if.else.i, %if.then.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl011_startup(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pl011_hwinit(ptr noundef %port)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.clk_dis_crit_edge

entry.clk_dis_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %clk_dis

if.end:                                           ; preds = %entry
  %im.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 5
  %0 = ptrtoint ptr %im.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %im.i, align 4
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i.i, align 4
  %reg_offset.i.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 1
  %4 = ptrtoint ptr %reg_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_offset.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i16, ptr %5, i32 10
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i.i.i, align 2
  %conv.i.i.i = zext i16 %7 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i.i
  %iotype.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %8 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %iotype.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp.i.i = icmp eq i8 %9, 3
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %10 = tail call i32 @llvm.bswap.i32(i32 %1) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %10) #15, !srcloc !205
  br label %pl011_allocate_irq.exit

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i.i = trunc i32 %1 to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %11) #15, !srcloc !218
  br label %pl011_allocate_irq.exit

pl011_allocate_irq.exit:                          ; preds = %if.else.i.i, %if.then.i.i
  %irq.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq.i, align 4
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %13, ptr noundef nonnull @pl011_int, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.13, ptr noundef %port) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not, label %if.end5, label %pl011_allocate_irq.exit.clk_dis_crit_edge

pl011_allocate_irq.exit.clk_dis_crit_edge:        ; preds = %pl011_allocate_irq.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %clk_dis

if.end5:                                          ; preds = %pl011_allocate_irq.exit
  %vendor = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 3
  %14 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vendor, align 4
  %ifls = getelementptr inbounds %struct.vendor_data, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %ifls to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ifls, align 4
  %18 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i.i, align 4
  %20 = ptrtoint ptr %reg_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_offset.i.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %21, i32 9
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %23 to i32
  %add.ptr.i = getelementptr i8, ptr %19, i32 %conv.i.i
  %24 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %iotype.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %25)
  %cmp.i = icmp eq i8 %25, 3
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %26 = tail call i32 @llvm.bswap.i32(i32 %17) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %26) #15, !srcloc !205
  br label %pl011_write.exit

if.else.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i = trunc i32 %17 to i16
  %27 = tail call i16 @llvm.bswap.i16(i16 %conv3.i) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %27) #15, !srcloc !218
  br label %pl011_write.exit

pl011_write.exit:                                 ; preds = %if.else.i, %if.then.i
  tail call void @_raw_spin_lock_irq(ptr noundef %port) #15
  %28 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase.i.i, align 4
  %30 = ptrtoint ptr %reg_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_offset.i.i.i, align 4
  %arrayidx.i.i39 = getelementptr i16, ptr %31, i32 8
  %32 = ptrtoint ptr %arrayidx.i.i39 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx.i.i39, align 2
  %conv.i.i40 = zext i16 %33 to i32
  %add.ptr.i41 = getelementptr i8, ptr %29, i32 %conv.i.i40
  %34 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %iotype.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %35)
  %cmp.i43 = icmp eq i8 %35, 3
  br i1 %cmp.i43, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %pl011_write.exit
  call void @__sanitizer_cov_trace_pc() #17
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41) #15, !srcloc !197
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #15
  br label %pl011_read.exit

cond.false.i:                                     ; preds = %pl011_write.exit
  call void @__sanitizer_cov_trace_pc() #17
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i41) #15, !srcloc !219
  %39 = tail call i16 @llvm.bswap.i16(i16 %38) #15
  %conv7.i = zext i16 %39 to i32
  br label %pl011_read.exit

pl011_read.exit:                                  ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %37, %cond.true.i ], [ %conv7.i, %cond.false.i ]
  %and = and i32 %cond.i, 3072
  %rs485 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56
  %40 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rs485, align 4
  %and8 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %spec.select.v = select i1 %tobool9.not, i32 769, i32 513
  %spec.select = or i32 %spec.select.v, %and
  %42 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %membase.i.i, align 4
  %44 = ptrtoint ptr %reg_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg_offset.i.i.i, align 4
  %arrayidx.i.i46 = getelementptr i16, ptr %45, i32 8
  %46 = ptrtoint ptr %arrayidx.i.i46 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx.i.i46, align 2
  %conv.i.i47 = zext i16 %47 to i32
  %add.ptr.i48 = getelementptr i8, ptr %43, i32 %conv.i.i47
  %48 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %iotype.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %49)
  %cmp.i50 = icmp eq i8 %49, 3
  br i1 %cmp.i50, label %if.then.i51, label %if.else.i53

if.then.i51:                                      ; preds = %pl011_read.exit
  call void @__sanitizer_cov_trace_pc() #17
  %50 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %50) #15, !srcloc !205
  br label %pl011_write.exit54

if.else.i53:                                      ; preds = %pl011_read.exit
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i52 = trunc i32 %spec.select to i16
  %51 = tail call i16 @llvm.bswap.i16(i16 %conv3.i52) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i48, i16 %51) #15, !srcloc !218
  br label %pl011_write.exit54

pl011_write.exit54:                               ; preds = %if.else.i53, %if.then.i51
  tail call void @_raw_spin_unlock_irq(ptr noundef %port) #15
  %52 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %membase.i.i, align 4
  %54 = ptrtoint ptr %reg_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg_offset.i.i.i, align 4
  %arrayidx.i.i57 = getelementptr i16, ptr %55, i32 3
  %56 = ptrtoint ptr %arrayidx.i.i57 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx.i.i57, align 2
  %conv.i.i58 = zext i16 %57 to i32
  %add.ptr.i59 = getelementptr i8, ptr %53, i32 %conv.i.i58
  %58 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %iotype.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %59)
  %cmp.i61 = icmp eq i8 %59, 3
  br i1 %cmp.i61, label %cond.true.i62, label %cond.false.i64

cond.true.i62:                                    ; preds = %pl011_write.exit54
  call void @__sanitizer_cov_trace_pc() #17
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59) #15, !srcloc !197
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #15
  br label %pl011_read.exit66

cond.false.i64:                                   ; preds = %pl011_write.exit54
  call void @__sanitizer_cov_trace_pc() #17
  %62 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i59) #15, !srcloc !219
  %63 = tail call i16 @llvm.bswap.i16(i16 %62) #15
  %conv7.i63 = zext i16 %63 to i32
  br label %pl011_read.exit66

pl011_read.exit66:                                ; preds = %cond.false.i64, %cond.true.i62
  %cond.i65 = phi i32 [ %61, %cond.true.i62 ], [ %conv7.i63, %cond.false.i64 ]
  %and16 = and i32 %cond.i65, 7
  %old_status = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 6
  %64 = ptrtoint ptr %old_status to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %and16, ptr %old_status, align 4
  tail call fastcc void @pl011_dma_startup(ptr noundef %port)
  tail call fastcc void @pl011_enable_interrupts(ptr noundef %port)
  br label %cleanup

clk_dis:                                          ; preds = %pl011_allocate_irq.exit.clk_dis_crit_edge, %entry.clk_dis_crit_edge
  %retval1.0 = phi i32 [ %call, %entry.clk_dis_crit_edge ], [ %call.i.i, %pl011_allocate_irq.exit.clk_dis_crit_edge ]
  %clk = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 2
  %65 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %66) #15
  tail call void @clk_unprepare(ptr noundef %66) #15
  br label %cleanup

cleanup:                                          ; preds = %clk_dis, %pl011_read.exit66
  %retval.0 = phi i32 [ %retval1.0, %clk_dis ], [ 0, %pl011_read.exit66 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl011_shutdown(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_irq(ptr noundef %port) #15
  %im.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 5
  %0 = ptrtoint ptr %im.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %im.i, align 4
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %1 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %membase.i.i, align 4
  %reg_offset.i.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 1
  %3 = ptrtoint ptr %reg_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_offset.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i16, ptr %4, i32 10
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx.i.i.i, align 2
  %conv.i.i.i = zext i16 %6 to i32
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %conv.i.i.i
  %iotype.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %7 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %iotype.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp.i.i = icmp eq i8 %8, 3
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #15, !srcloc !205
  br label %pl011_write.exit.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 0) #15, !srcloc !218
  br label %pl011_write.exit.i

pl011_write.exit.i:                               ; preds = %if.else.i.i, %if.then.i.i
  %9 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i.i, align 4
  %11 = ptrtoint ptr %reg_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_offset.i.i.i, align 4
  %arrayidx.i.i11.i = getelementptr i16, ptr %12, i32 13
  %13 = ptrtoint ptr %arrayidx.i.i11.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx.i.i11.i, align 2
  %conv.i.i12.i = zext i16 %14 to i32
  %add.ptr.i13.i = getelementptr i8, ptr %10, i32 %conv.i.i12.i
  %15 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %iotype.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %16)
  %cmp.i15.i = icmp eq i8 %16, 3
  br i1 %cmp.i15.i, label %if.then.i16.i, label %if.else.i17.i

if.then.i16.i:                                    ; preds = %pl011_write.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 -65536) #15, !srcloc !205
  br label %pl011_disable_interrupts.exit

if.else.i17.i:                                    ; preds = %pl011_write.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i13.i, i16 -1) #15, !srcloc !218
  br label %pl011_disable_interrupts.exit

pl011_disable_interrupts.exit:                    ; preds = %if.else.i17.i, %if.then.i16.i
  tail call void @_raw_spin_unlock_irq(ptr noundef %port) #15
  %using_tx_dma.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 12
  %17 = ptrtoint ptr %using_tx_dma.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %using_tx_dma.i, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %pl011_disable_interrupts.exit.if.end.i_crit_edge

pl011_disable_interrupts.exit.if.end.i_crit_edge: ; preds = %pl011_disable_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

lor.lhs.false.i:                                  ; preds = %pl011_disable_interrupts.exit
  %using_rx_dma.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 13
  %19 = ptrtoint ptr %using_rx_dma.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %using_rx_dma.i, align 1, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool1.not.i = icmp eq i8 %20, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.pl011_dma_shutdown.exit_crit_edge, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

lor.lhs.false.i.pl011_dma_shutdown.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pl011_dma_shutdown.exit

if.end.i:                                         ; preds = %lor.lhs.false.i.if.end.i_crit_edge, %pl011_disable_interrupts.exit.if.end.i_crit_edge
  %vendor.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 3
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end.i, %if.end.i
  %21 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase.i.i, align 4
  %23 = ptrtoint ptr %reg_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_offset.i.i.i, align 4
  %arrayidx.i.i.i43 = getelementptr i16, ptr %24, i32 3
  %25 = ptrtoint ptr %arrayidx.i.i.i43 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx.i.i.i43, align 2
  %conv.i.i.i44 = zext i16 %26 to i32
  %add.ptr.i.i45 = getelementptr i8, ptr %22, i32 %conv.i.i.i44
  %27 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %iotype.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %28)
  %cmp.i.i46 = icmp eq i8 %28, 3
  br i1 %cmp.i.i46, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i45) #15, !srcloc !197
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #15
  br label %pl011_read.exit.i

cond.false.i.i:                                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i45) #15, !srcloc !219
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #15
  %conv7.i.i = zext i16 %32 to i32
  br label %pl011_read.exit.i

pl011_read.exit.i:                                ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i32 [ %30, %cond.true.i.i ], [ %conv7.i.i, %cond.false.i.i ]
  %33 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vendor.i, align 4
  %fr_busy.i = getelementptr inbounds %struct.vendor_data, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %fr_busy.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fr_busy.i, align 4
  %and.i = and i32 %36, %cond.i.i
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %while.end.i, label %do.end.i

do.end.i:                                         ; preds = %pl011_read.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !235
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !236
  br label %while.cond.i

while.end.i:                                      ; preds = %pl011_read.exit.i
  tail call void @_raw_spin_lock_irq(ptr noundef %port) #15
  %dmacr.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 4
  %37 = ptrtoint ptr %dmacr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dmacr.i, align 4
  %and7.i = and i32 %38, -8
  store i32 %and7.i, ptr %dmacr.i, align 4
  %39 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase.i.i, align 4
  %41 = ptrtoint ptr %reg_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg_offset.i.i.i, align 4
  %arrayidx.i.i73.i = getelementptr i16, ptr %42, i32 14
  %43 = ptrtoint ptr %arrayidx.i.i73.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx.i.i73.i, align 2
  %conv.i.i74.i = zext i16 %44 to i32
  %add.ptr.i75.i = getelementptr i8, ptr %40, i32 %conv.i.i74.i
  %45 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %iotype.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %46)
  %cmp.i77.i = icmp eq i8 %46, 3
  br i1 %cmp.i77.i, label %if.then.i.i47, label %if.else.i.i48

if.then.i.i47:                                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %47 = tail call i32 @llvm.bswap.i32(i32 %and7.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75.i, i32 %47) #15, !srcloc !205
  br label %pl011_write.exit.i49

if.else.i.i48:                                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i.i = trunc i32 %and7.i to i16
  %48 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i75.i, i16 %48) #15, !srcloc !218
  br label %pl011_write.exit.i49

pl011_write.exit.i49:                             ; preds = %if.else.i.i48, %if.then.i.i47
  tail call void @_raw_spin_unlock_irq(ptr noundef %port) #15
  %49 = ptrtoint ptr %using_tx_dma.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %using_tx_dma.i, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool12.not.i = icmp eq i8 %50, 0
  br i1 %tobool12.not.i, label %pl011_write.exit.i49.if.end26.i_crit_edge, label %if.then13.i

pl011_write.exit.i49.if.end26.i_crit_edge:        ; preds = %pl011_write.exit.i49
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26.i

if.then13.i:                                      ; preds = %pl011_write.exit.i49
  %dmatx.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 15
  %51 = ptrtoint ptr %dmatx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dmatx.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %54, i32 0, i32 47
  %55 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %56, null
  br i1 %tobool.not.i.i, label %if.then13.i.dmaengine_terminate_all.exit.i_crit_edge, label %if.then.i78.i

if.then13.i.dmaengine_terminate_all.exit.i_crit_edge: ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmaengine_terminate_all.exit.i

if.then.i78.i:                                    ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i = tail call i32 %56(ptr noundef %52) #15
  br label %dmaengine_terminate_all.exit.i

dmaengine_terminate_all.exit.i:                   ; preds = %if.then.i78.i, %if.then13.i.dmaengine_terminate_all.exit.i_crit_edge
  %queued.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 15, i32 3
  %57 = ptrtoint ptr %queued.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %queued.i, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool16.not.i = icmp eq i8 %58, 0
  br i1 %tobool16.not.i, label %dmaengine_terminate_all.exit.i.if.end23.i_crit_edge, label %if.then17.i

dmaengine_terminate_all.exit.i.if.end23.i_crit_edge: ; preds = %dmaengine_terminate_all.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23.i

if.then17.i:                                      ; preds = %dmaengine_terminate_all.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %59 = ptrtoint ptr %dmatx.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dmatx.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %62, i32 0, i32 15
  %63 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i, align 4
  %sg.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 15, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %64, ptr noundef %sg.i, i32 noundef 1, i32 noundef 1, i32 noundef 0) #15
  %65 = ptrtoint ptr %queued.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %queued.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then17.i, %dmaengine_terminate_all.exit.i.if.end23.i_crit_edge
  %buf.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 15, i32 2
  %66 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %buf.i, align 4
  tail call void @kfree(ptr noundef %67) #15
  %68 = ptrtoint ptr %using_tx_dma.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %using_tx_dma.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.end23.i, %pl011_write.exit.i49.if.end26.i_crit_edge
  %using_rx_dma27.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 13
  %69 = ptrtoint ptr %using_rx_dma27.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %using_rx_dma27.i, align 1, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool28.not.i = icmp eq i8 %70, 0
  br i1 %tobool28.not.i, label %if.end26.i.pl011_dma_shutdown.exit_crit_edge, label %if.then29.i

if.end26.i.pl011_dma_shutdown.exit_crit_edge:     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pl011_dma_shutdown.exit

if.then29.i:                                      ; preds = %if.end26.i
  %dmarx.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 14
  %71 = ptrtoint ptr %dmarx.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dmarx.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %device_terminate_all.i79.i = getelementptr inbounds %struct.dma_device, ptr %74, i32 0, i32 47
  %75 = ptrtoint ptr %device_terminate_all.i79.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %device_terminate_all.i79.i, align 4
  %tobool.not.i80.i = icmp eq ptr %76, null
  br i1 %tobool.not.i80.i, label %if.then29.i.dmaengine_terminate_all.exit83.i_crit_edge, label %if.then.i82.i

if.then29.i.dmaengine_terminate_all.exit83.i_crit_edge: ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmaengine_terminate_all.exit83.i

if.then.i82.i:                                    ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i81.i = tail call i32 %76(ptr noundef %72) #15
  br label %dmaengine_terminate_all.exit83.i

dmaengine_terminate_all.exit83.i:                 ; preds = %if.then.i82.i, %if.then29.i.dmaengine_terminate_all.exit83.i_crit_edge
  %buf.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 14, i32 3, i32 1
  %77 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %buf.i.i, align 4
  %tobool.not.i84.i = icmp eq ptr %78, null
  br i1 %tobool.not.i84.i, label %dmaengine_terminate_all.exit83.i.pl011_sgbuf_free.exit.i_crit_edge, label %if.then.i85.i

dmaengine_terminate_all.exit83.i.pl011_sgbuf_free.exit.i_crit_edge: ; preds = %dmaengine_terminate_all.exit83.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pl011_sgbuf_free.exit.i

if.then.i85.i:                                    ; preds = %dmaengine_terminate_all.exit83.i
  call void @__sanitizer_cov_trace_pc() #17
  %79 = ptrtoint ptr %dmarx.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dmarx.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %dev.i.i = getelementptr inbounds %struct.dma_device, ptr %82, i32 0, i32 15
  %83 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev.i.i, align 4
  %dma_address.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 14, i32 3, i32 0, i32 3
  %85 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %dma_address.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %84, i32 noundef 4096, ptr noundef nonnull %78, i32 noundef %86, i32 noundef 0) #15
  br label %pl011_sgbuf_free.exit.i

pl011_sgbuf_free.exit.i:                          ; preds = %if.then.i85.i, %dmaengine_terminate_all.exit83.i.pl011_sgbuf_free.exit.i_crit_edge
  %buf.i86.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 14, i32 4, i32 1
  %87 = ptrtoint ptr %buf.i86.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %buf.i86.i, align 4
  %tobool.not.i87.i = icmp eq ptr %88, null
  br i1 %tobool.not.i87.i, label %pl011_sgbuf_free.exit.i.pl011_sgbuf_free.exit91.i_crit_edge, label %if.then.i90.i

pl011_sgbuf_free.exit.i.pl011_sgbuf_free.exit91.i_crit_edge: ; preds = %pl011_sgbuf_free.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pl011_sgbuf_free.exit91.i

if.then.i90.i:                                    ; preds = %pl011_sgbuf_free.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %89 = ptrtoint ptr %dmarx.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dmarx.i, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  %dev.i88.i = getelementptr inbounds %struct.dma_device, ptr %92, i32 0, i32 15
  %93 = ptrtoint ptr %dev.i88.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev.i88.i, align 4
  %dma_address.i89.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 14, i32 4, i32 0, i32 3
  %95 = ptrtoint ptr %dma_address.i89.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %dma_address.i89.i, align 4
  tail call void @dma_free_attrs(ptr noundef %94, i32 noundef 4096, ptr noundef nonnull %88, i32 noundef %96, i32 noundef 0) #15
  br label %pl011_sgbuf_free.exit91.i

pl011_sgbuf_free.exit91.i:                        ; preds = %if.then.i90.i, %pl011_sgbuf_free.exit.i.pl011_sgbuf_free.exit91.i_crit_edge
  %poll_rate.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 14, i32 11
  %97 = ptrtoint ptr %poll_rate.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %poll_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool39.not.i = icmp eq i32 %98, 0
  br i1 %tobool39.not.i, label %pl011_sgbuf_free.exit91.i.if.end43.i_crit_edge, label %if.then40.i

pl011_sgbuf_free.exit91.i.if.end43.i_crit_edge:   ; preds = %pl011_sgbuf_free.exit91.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43.i

if.then40.i:                                      ; preds = %pl011_sgbuf_free.exit91.i
  call void @__sanitizer_cov_trace_pc() #17
  %timer.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 14, i32 7
  %call42.i = tail call i32 @del_timer_sync(ptr noundef %timer.i) #15
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then40.i, %pl011_sgbuf_free.exit91.i.if.end43.i_crit_edge
  %99 = ptrtoint ptr %using_rx_dma27.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %using_rx_dma27.i, align 1
  br label %pl011_dma_shutdown.exit

pl011_dma_shutdown.exit:                          ; preds = %if.end43.i, %if.end26.i.pl011_dma_shutdown.exit_crit_edge, %lor.lhs.false.i.pl011_dma_shutdown.exit_crit_edge
  %rs485 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56
  %100 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %rs485, align 4
  %and = and i32 %101, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %pl011_dma_shutdown.exit.if.end_crit_edge, label %land.lhs.true

pl011_dma_shutdown.exit.if.end_crit_edge:         ; preds = %pl011_dma_shutdown.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %pl011_dma_shutdown.exit
  %rs485_tx_started = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 10
  %102 = ptrtoint ptr %rs485_tx_started to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %rs485_tx_started, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool1.not = icmp eq i8 %103, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @pl011_rs485_tx_stop(ptr noundef %port)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %pl011_dma_shutdown.exit.if.end_crit_edge
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %104 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %105, ptr noundef %port) #15
  %status.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 34
  %106 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %status.i, align 4
  %and.i50 = and i32 %107, -13
  store i32 %and.i50, ptr %status.i, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %port) #15
  %108 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %membase.i.i, align 4
  %110 = ptrtoint ptr %reg_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %reg_offset.i.i.i, align 4
  %arrayidx.i.i.i53 = getelementptr i16, ptr %111, i32 8
  %112 = ptrtoint ptr %arrayidx.i.i.i53 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %arrayidx.i.i.i53, align 2
  %conv.i.i.i54 = zext i16 %113 to i32
  %add.ptr.i.i55 = getelementptr i8, ptr %109, i32 %conv.i.i.i54
  %114 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %iotype.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %115)
  %cmp.i.i57 = icmp eq i8 %115, 3
  br i1 %cmp.i.i57, label %cond.true.i.i58, label %cond.false.i.i60

cond.true.i.i58:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i55) #15, !srcloc !197
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #15
  br label %pl011_read.exit.i62

cond.false.i.i60:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %118 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i55) #15, !srcloc !219
  %119 = tail call i16 @llvm.bswap.i16(i16 %118) #15
  %conv7.i.i59 = zext i16 %119 to i32
  br label %pl011_read.exit.i62

pl011_read.exit.i62:                              ; preds = %cond.false.i.i60, %cond.true.i.i58
  %cond.i.i61 = phi i32 [ %117, %cond.true.i.i58 ], [ %conv7.i.i59, %cond.false.i.i60 ]
  %and2.i = and i32 %cond.i.i61, 3072
  %or.i = or i32 %and2.i, 257
  %120 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %membase.i.i, align 4
  %122 = ptrtoint ptr %reg_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %reg_offset.i.i.i, align 4
  %arrayidx.i.i17.i = getelementptr i16, ptr %123, i32 8
  %124 = ptrtoint ptr %arrayidx.i.i17.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %arrayidx.i.i17.i, align 2
  %conv.i.i18.i = zext i16 %125 to i32
  %add.ptr.i19.i = getelementptr i8, ptr %121, i32 %conv.i.i18.i
  %126 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %iotype.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %127)
  %cmp.i21.i = icmp eq i8 %127, 3
  br i1 %cmp.i21.i, label %if.then.i.i63, label %if.else.i.i65

if.then.i.i63:                                    ; preds = %pl011_read.exit.i62
  call void @__sanitizer_cov_trace_pc() #17
  %128 = tail call i32 @llvm.bswap.i32(i32 %or.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 %128) #15, !srcloc !205
  br label %pl011_write.exit.i66

if.else.i.i65:                                    ; preds = %pl011_read.exit.i62
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i.i64 = trunc i32 %or.i to i16
  %129 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i64) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i19.i, i16 %129) #15, !srcloc !218
  br label %pl011_write.exit.i66

pl011_write.exit.i66:                             ; preds = %if.else.i.i65, %if.then.i.i63
  tail call void @_raw_spin_unlock_irq(ptr noundef %port) #15
  %130 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %membase.i.i, align 4
  %132 = ptrtoint ptr %reg_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %reg_offset.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr i16, ptr %133, i32 4
  %134 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %arrayidx.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %135 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %131, i32 %conv.i.i.i.i
  %136 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %iotype.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %137)
  %cmp.i.i.i = icmp eq i8 %137, 3
  br i1 %cmp.i.i.i, label %cond.true.i.i.i, label %cond.false.i.i.i

cond.true.i.i.i:                                  ; preds = %pl011_write.exit.i66
  call void @__sanitizer_cov_trace_pc() #17
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #15, !srcloc !197
  %139 = tail call i32 @llvm.bswap.i32(i32 %138) #15
  br label %pl011_read.exit.i.i

cond.false.i.i.i:                                 ; preds = %pl011_write.exit.i66
  call void @__sanitizer_cov_trace_pc() #17
  %140 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #15, !srcloc !219
  %141 = tail call i16 @llvm.bswap.i16(i16 %140) #15
  %conv7.i.i.i = zext i16 %141 to i32
  br label %pl011_read.exit.i.i

pl011_read.exit.i.i:                              ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %cond.i.i.i = phi i32 [ %139, %cond.true.i.i.i ], [ %conv7.i.i.i, %cond.false.i.i.i ]
  %and.i.i = and i32 %cond.i.i.i, -18
  %142 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %membase.i.i, align 4
  %144 = ptrtoint ptr %reg_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %reg_offset.i.i.i, align 4
  %arrayidx.i.i6.i.i = getelementptr i16, ptr %145, i32 4
  %146 = ptrtoint ptr %arrayidx.i.i6.i.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %arrayidx.i.i6.i.i, align 2
  %conv.i.i7.i.i = zext i16 %147 to i32
  %add.ptr.i8.i.i = getelementptr i8, ptr %143, i32 %conv.i.i7.i.i
  %148 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %iotype.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %149)
  %cmp.i10.i.i = icmp eq i8 %149, 3
  br i1 %cmp.i10.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %pl011_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %150 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 %150) #15, !srcloc !205
  br label %pl011_shutdown_channel.exit.i

if.else.i.i.i:                                    ; preds = %pl011_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i.i.i = trunc i32 %and.i.i to i16
  %151 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i.i) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i8.i.i, i16 %151) #15, !srcloc !218
  br label %pl011_shutdown_channel.exit.i

pl011_shutdown_channel.exit.i:                    ; preds = %if.else.i.i.i, %if.then.i.i.i
  %152 = ptrtoint ptr %reg_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %reg_offset.i.i.i, align 4
  %arrayidx.i.i23.i = getelementptr i16, ptr %153, i32 4
  %154 = ptrtoint ptr %arrayidx.i.i23.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %arrayidx.i.i23.i, align 2
  %arrayidx.i4.i.i = getelementptr i16, ptr %153, i32 5
  %156 = ptrtoint ptr %arrayidx.i4.i.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %arrayidx.i4.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %155, i16 %157)
  %cmp.i24.not.i = icmp eq i16 %155, %157
  br i1 %cmp.i24.not.i, label %pl011_shutdown_channel.exit.i.pl011_disable_uart.exit_crit_edge, label %if.then.i

pl011_shutdown_channel.exit.i.pl011_disable_uart.exit_crit_edge: ; preds = %pl011_shutdown_channel.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pl011_disable_uart.exit

if.then.i:                                        ; preds = %pl011_shutdown_channel.exit.i
  %158 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %membase.i.i, align 4
  %conv.i.i.i28.i = zext i16 %157 to i32
  %add.ptr.i.i29.i = getelementptr i8, ptr %159, i32 %conv.i.i.i28.i
  %160 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %iotype.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %161)
  %cmp.i.i31.i = icmp eq i8 %161, 3
  br i1 %cmp.i.i31.i, label %cond.true.i.i32.i, label %cond.false.i.i34.i

cond.true.i.i32.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i29.i) #15, !srcloc !197
  %163 = tail call i32 @llvm.bswap.i32(i32 %162) #15
  br label %pl011_read.exit.i41.i

cond.false.i.i34.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %164 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i29.i) #15, !srcloc !219
  %165 = tail call i16 @llvm.bswap.i16(i16 %164) #15
  %conv7.i.i33.i = zext i16 %165 to i32
  br label %pl011_read.exit.i41.i

pl011_read.exit.i41.i:                            ; preds = %cond.false.i.i34.i, %cond.true.i.i32.i
  %cond.i.i35.i = phi i32 [ %163, %cond.true.i.i32.i ], [ %conv7.i.i33.i, %cond.false.i.i34.i ]
  %and.i36.i = and i32 %cond.i.i35.i, -18
  %166 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %membase.i.i, align 4
  %168 = ptrtoint ptr %reg_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %reg_offset.i.i.i, align 4
  %arrayidx.i.i6.i37.i = getelementptr i16, ptr %169, i32 5
  %170 = ptrtoint ptr %arrayidx.i.i6.i37.i to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %arrayidx.i.i6.i37.i, align 2
  %conv.i.i7.i38.i = zext i16 %171 to i32
  %add.ptr.i8.i39.i = getelementptr i8, ptr %167, i32 %conv.i.i7.i38.i
  %172 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %iotype.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %173)
  %cmp.i10.i40.i = icmp eq i8 %173, 3
  br i1 %cmp.i10.i40.i, label %if.then.i.i42.i, label %if.else.i.i44.i

if.then.i.i42.i:                                  ; preds = %pl011_read.exit.i41.i
  call void @__sanitizer_cov_trace_pc() #17
  %174 = tail call i32 @llvm.bswap.i32(i32 %and.i36.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i39.i, i32 %174) #15, !srcloc !205
  br label %pl011_disable_uart.exit

if.else.i.i44.i:                                  ; preds = %pl011_read.exit.i41.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i.i43.i = trunc i32 %and.i36.i to i16
  %175 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i43.i) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i8.i39.i, i16 %175) #15, !srcloc !218
  br label %pl011_disable_uart.exit

pl011_disable_uart.exit:                          ; preds = %if.else.i.i44.i, %if.then.i.i42.i, %pl011_shutdown_channel.exit.i.pl011_disable_uart.exit_crit_edge
  %clk = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 2
  %176 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %177) #15
  tail call void @clk_unprepare(ptr noundef %177) #15
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %178 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %dev, align 4
  %call3 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %179) #15
  %180 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %dev, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %181, i32 0, i32 7
  %182 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %platform_data.i, align 8
  %tobool7.not = icmp eq ptr %183, null
  br i1 %tobool7.not, label %pl011_disable_uart.exit.if.end16_crit_edge, label %if.then8

pl011_disable_uart.exit.if.end16_crit_edge:       ; preds = %pl011_disable_uart.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then8:                                         ; preds = %pl011_disable_uart.exit
  %exit = getelementptr inbounds %struct.amba_pl011_data, ptr %183, i32 0, i32 7
  %184 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %exit, align 4
  %tobool12.not = icmp eq ptr %185, null
  br i1 %tobool12.not, label %if.then8.if.end16_crit_edge, label %if.then13

if.then8.if.end16_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then13:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %185() #15
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.then8.if.end16_crit_edge, %pl011_disable_uart.exit.if.end16_crit_edge
  %ops = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 39
  %186 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %ops, align 4
  %flush_buffer = getelementptr inbounds %struct.uart_ops, ptr %187, i32 0, i32 13
  %188 = ptrtoint ptr %flush_buffer to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %flush_buffer, align 4
  %tobool18.not = icmp eq ptr %189, null
  br i1 %tobool18.not, label %if.end16.if.end23_crit_edge, label %if.then19

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %189(ptr noundef %port) #15
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end16.if.end23_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl011_dma_flush_buffer(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %using_tx_dma = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 12
  %0 = ptrtoint ptr %using_tx_dma to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %using_tx_dma, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %dmatx = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 15
  %2 = ptrtoint ptr %dmatx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dmatx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 47
  %6 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.dmaengine_terminate_async.exit_crit_edge, label %if.then.i

if.end.dmaengine_terminate_async.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmaengine_terminate_async.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call i32 %7(ptr noundef %3) #15
  br label %dmaengine_terminate_async.exit

dmaengine_terminate_async.exit:                   ; preds = %if.then.i, %if.end.dmaengine_terminate_async.exit_crit_edge
  %queued = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 15, i32 3
  %8 = ptrtoint ptr %queued to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %queued, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %dmaengine_terminate_async.exit.cleanup_crit_edge, label %if.then3

dmaengine_terminate_async.exit.cleanup_crit_edge: ; preds = %dmaengine_terminate_async.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then3:                                         ; preds = %dmaengine_terminate_async.exit
  %10 = ptrtoint ptr %dmatx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dmatx, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %sg = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 15, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %15, ptr noundef %sg, i32 noundef 1, i32 noundef 1, i32 noundef 0) #15
  %16 = ptrtoint ptr %queued to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %queued, align 4
  %dmacr = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 4
  %17 = ptrtoint ptr %dmacr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dmacr, align 4
  %and = and i32 %18, -3
  store i32 %and, ptr %dmacr, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %19 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase.i, align 4
  %reg_offset.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 1
  %21 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %22, i32 14
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %24 to i32
  %add.ptr.i = getelementptr i8, ptr %20, i32 %conv.i.i
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %25 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %26)
  %cmp.i = icmp eq i8 %26, 3
  br i1 %cmp.i, label %if.then.i19, label %if.else.i

if.then.i19:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  %27 = tail call i32 @llvm.bswap.i32(i32 %and) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %27) #15, !srcloc !205
  br label %cleanup

if.else.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i = trunc i32 %and to i16
  %28 = tail call i16 @llvm.bswap.i16(i16 %conv3.i) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %28) #15, !srcloc !218
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i19, %dmaengine_terminate_async.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl011_set_termios(ptr noundef %port, ptr noundef %termios, ptr noundef %old) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %vendor = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 3
  %0 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vendor, align 4
  %oversampling = getelementptr inbounds %struct.vendor_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %oversampling to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %oversampling, align 1, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %4 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %uartclk, align 4
  %6 = select i1 %tobool.not, i32 4, i32 3
  %div264 = lshr i32 %5, %6
  %call = tail call i32 @uart_get_baud_rate(ptr noundef %port, ptr noundef %termios, ptr noundef %old, i32 noundef 0, i32 noundef %div264) #15
  %auto_poll_rate = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 14, i32 10
  %7 = ptrtoint ptr %auto_poll_rate to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %auto_poll_rate, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not = icmp eq i8 %8, 0
  br i1 %tobool1.not, label %entry.if.end5_crit_edge, label %if.then2

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %sub = add i32 %call, 9999999
  %div3 = udiv i32 %sub, %call
  %poll_rate = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 14, i32 11
  %9 = ptrtoint ptr %poll_rate to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div3, ptr %poll_rate, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %entry.if.end5_crit_edge
  %10 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %uartclk, align 4
  %div7209 = lshr i32 %11, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %div7209)
  %cmp = icmp ugt i32 %call, %div7209
  %div11212 = lshr i32 %call, 1
  %add12.pn.v.v = select i1 %cmp, i32 3, i32 2
  %add12.pn.v = shl i32 %11, %add12.pn.v.v
  %add12.pn = add i32 %add12.pn.v, %div11212
  %quot.0 = udiv i32 %add12.pn, %call
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %12 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %c_cflag, align 4
  %and = and i32 %13, 48
  %14 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %sw.default [
    i32 0, label %if.end5.sw.epilog_crit_edge
    i32 16, label %sw.bb24
    i32 32, label %sw.bb25
  ]

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.default:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb25, %sw.bb24, %if.end5.sw.epilog_crit_edge
  %lcr_h.0 = phi i32 [ 96, %sw.default ], [ 64, %sw.bb25 ], [ 32, %sw.bb24 ], [ %and, %if.end5.sw.epilog_crit_edge ]
  %and27 = lshr i32 %13, 3
  %15 = and i32 %and27, 8
  %16 = or i32 %lcr_h.0, %15
  %and32 = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %sw.epilog.if.end48_crit_edge, label %if.then34

sw.epilog.if.end48_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48

if.then34:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  %and37 = and i32 %13, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %spec.select213.v = select i1 %tobool38.not, i32 6, i32 2
  %and43 = lshr i32 %13, 23
  %17 = and i32 %and43, 128
  %spec.select213 = or i32 %spec.select213.v, %17
  %18 = or i32 %spec.select213, %16
  br label %if.end48

if.end48:                                         ; preds = %if.then34, %sw.epilog.if.end48_crit_edge
  %lcr_h.3 = phi i32 [ %16, %sw.epilog.if.end48_crit_edge ], [ %18, %if.then34 ]
  %fifosize = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 7
  %19 = ptrtoint ptr %fifosize to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fifosize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp49 = icmp ugt i32 %20, 1
  %or51 = or i32 %lcr_h.3, 16
  %spec.select214 = select i1 %cmp49, i32 %or51, i32 %lcr_h.3
  %call54 = tail call zeroext i8 @tty_get_frame_size(i32 noundef %13) #15
  %conv = zext i8 %call54 to i32
  %call60 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #15
  %21 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %c_cflag, align 4
  tail call void @uart_update_timeout(ptr noundef %port, i32 noundef %22, i32 noundef %call) #15
  %mul65 = mul nuw nsw i32 %conv, 1000000
  %div66 = udiv i32 %mul65, %call
  %rs485_tx_drain_interval = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 11
  %23 = ptrtoint ptr %rs485_tx_drain_interval to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div66, ptr %rs485_tx_drain_interval, align 4
  %read_status_mask.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 28
  %24 = ptrtoint ptr %read_status_mask.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2303, ptr %read_status_mask.i, align 4
  %25 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %termios, align 4
  %and.i = and i32 %26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.store.select.i = select i1 %tobool.not.i, i32 2303, i32 3071
  %27 = ptrtoint ptr %read_status_mask.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %spec.store.select.i, ptr %read_status_mask.i, align 4
  %28 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %termios, align 4
  %and3.i = and i32 %29, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end48.if.end8.i_crit_edge, label %if.then5.i

if.end48.if.end8.i_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  %or7.i = or i32 %spec.store.select.i, 1024
  %30 = ptrtoint ptr %read_status_mask.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or7.i, ptr %read_status_mask.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.end48.if.end8.i_crit_edge
  %ignore_status_mask.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 29
  %31 = ptrtoint ptr %ignore_status_mask.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %ignore_status_mask.i, align 4
  %32 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %termios, align 4
  %and10.i = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %spec.store.select47.i = select i1 %tobool11.not.i, i32 0, i32 768
  %34 = ptrtoint ptr %ignore_status_mask.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %spec.store.select47.i, ptr %ignore_status_mask.i, align 4
  %35 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %termios, align 4
  %and17.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end8.i.if.end29.i_crit_edge, label %if.then19.i

if.end8.i.if.end29.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29.i

if.then19.i:                                      ; preds = %if.end8.i
  %or21.i = or i32 %spec.store.select47.i, 1024
  %37 = ptrtoint ptr %ignore_status_mask.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or21.i, ptr %ignore_status_mask.i, align 4
  %38 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %termios, align 4
  %and23.i = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.then19.i.if.end29.i_crit_edge, label %if.then25.i

if.then19.i.if.end29.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29.i

if.then25.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  %or27.i = or i32 %spec.store.select47.i, 3072
  %40 = ptrtoint ptr %ignore_status_mask.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or27.i, ptr %ignore_status_mask.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then25.i, %if.then19.i.if.end29.i_crit_edge, %if.end8.i.if.end29.i_crit_edge
  %41 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %c_cflag, align 4
  %and30.i = and i32 %42, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %cmp.i = icmp eq i32 %and30.i, 0
  br i1 %cmp.i, label %if.then31.i, label %if.end29.i.pl011_setup_status_masks.exit_crit_edge

if.end29.i.pl011_setup_status_masks.exit_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pl011_setup_status_masks.exit

if.then31.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #17
  %43 = ptrtoint ptr %ignore_status_mask.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ignore_status_mask.i, align 4
  %or33.i = or i32 %44, 65536
  store i32 %or33.i, ptr %ignore_status_mask.i, align 4
  br label %pl011_setup_status_masks.exit

pl011_setup_status_masks.exit:                    ; preds = %if.then31.i, %if.end29.i.pl011_setup_status_masks.exit_crit_edge
  %flags67 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %45 = ptrtoint ptr %flags67 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags67, align 4
  %and68 = and i32 %46, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %lor.lhs.false, label %pl011_setup_status_masks.exit.if.then77_crit_edge

pl011_setup_status_masks.exit.if.then77_crit_edge: ; preds = %pl011_setup_status_masks.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then77

lor.lhs.false:                                    ; preds = %pl011_setup_status_masks.exit
  %47 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %c_cflag, align 4
  %49 = and i32 %48, -2147481600
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %49)
  %.not = icmp eq i32 %49, 2048
  br i1 %.not, label %lor.lhs.false.if.end78_crit_edge, label %lor.lhs.false.if.then77_crit_edge

lor.lhs.false.if.then77_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then77

lor.lhs.false.if.end78_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end78

if.then77:                                        ; preds = %lor.lhs.false.if.then77_crit_edge, %pl011_setup_status_masks.exit.if.then77_crit_edge
  %im.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 5
  %50 = ptrtoint ptr %im.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %im.i, align 4
  %or.i = or i32 %51, 15
  store i32 %or.i, ptr %im.i, align 4
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %52 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %membase.i.i, align 4
  %reg_offset.i.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 1
  %54 = ptrtoint ptr %reg_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg_offset.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i16, ptr %55, i32 10
  %56 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx.i.i.i, align 2
  %conv.i.i.i = zext i16 %57 to i32
  %add.ptr.i.i = getelementptr i8, ptr %53, i32 %conv.i.i.i
  %iotype.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %58 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %iotype.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %59)
  %cmp.i.i = icmp eq i8 %59, 3
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #17
  %60 = tail call i32 @llvm.bswap.i32(i32 %or.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %60) #15, !srcloc !205
  br label %if.end78

if.else.i.i:                                      ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i.i = trunc i32 %or.i to i16
  %61 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %61) #15, !srcloc !218
  br label %if.end78

if.end78:                                         ; preds = %if.else.i.i, %if.then.i.i, %lor.lhs.false.if.end78_crit_edge
  %rs485 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56
  %62 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rs485, align 4
  %and80 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end78.if.end85_crit_edge, label %if.then82

if.end78.if.end85_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end85

if.then82:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #17
  %64 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %c_cflag, align 4
  %and84 = and i32 %65, 2147483647
  store i32 %and84, ptr %c_cflag, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %if.end78.if.end85_crit_edge
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %66 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %membase.i, align 4
  %reg_offset.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 1
  %68 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %69, i32 8
  %70 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %71 to i32
  %add.ptr.i = getelementptr i8, ptr %67, i32 %conv.i.i
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %72 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %73)
  %cmp.i221 = icmp eq i8 %73, 3
  br i1 %cmp.i221, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #17
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !197
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #15
  br label %pl011_read.exit

cond.false.i:                                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #17
  %76 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #15, !srcloc !219
  %77 = tail call i16 @llvm.bswap.i16(i16 %76) #15
  %conv7.i = zext i16 %77 to i32
  br label %pl011_read.exit

pl011_read.exit:                                  ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %75, %cond.true.i ], [ %conv7.i, %cond.false.i ]
  %78 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %79)
  %tobool89.not = icmp sgt i32 %79, -1
  br i1 %tobool89.not, label %if.else98, label %if.then90

if.then90:                                        ; preds = %pl011_read.exit
  call void @__sanitizer_cov_trace_pc() #17
  %and91 = shl i32 %cond.i, 3
  %80 = and i32 %and91, 16384
  %81 = or i32 %cond.i, %80
  %or96 = or i32 %81, 32768
  %status = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 34
  %82 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %status, align 4
  %or97 = or i32 %83, 12
  store i32 %or97, ptr %status, align 4
  br label %if.end102

if.else98:                                        ; preds = %pl011_read.exit
  call void @__sanitizer_cov_trace_pc() #17
  %and99 = and i32 %cond.i, -49153
  %status100 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 34
  %84 = ptrtoint ptr %status100 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %status100, align 4
  %and101 = and i32 %85, -13
  store i32 %and101, ptr %status100, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.else98, %if.then90
  %old_cr.1 = phi i32 [ %or96, %if.then90 ], [ %and99, %if.else98 ]
  %86 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %vendor, align 4
  %oversampling104 = getelementptr inbounds %struct.vendor_data, ptr %87, i32 0, i32 8
  %88 = ptrtoint ptr %oversampling104 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %oversampling104, align 1, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool105.not = icmp eq i8 %89, 0
  br i1 %tobool105.not, label %if.end102.if.end140_crit_edge, label %if.then106

if.end102.if.end140_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end140

if.then106:                                       ; preds = %if.end102
  %90 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %uartclk, align 4
  %div108211 = lshr i32 %91, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %div108211)
  %cmp109 = icmp ugt i32 %call, %div108211
  %and114 = and i32 %old_cr.1, -9
  %masksel = select i1 %cmp109, i32 8, i32 0
  %old_cr.2.ph = or i32 %masksel, %and114
  %92 = add i32 %call, -3000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %92)
  %93 = icmp ult i32 %92, 250000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %quot.0)
  %cmp126 = icmp ugt i32 %quot.0, 1
  %or.cond217 = select i1 %93, i1 %cmp126, i1 false
  br i1 %or.cond217, label %if.then128, label %if.else130

if.then128:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #17
  %sub129 = add i32 %quot.0, -1
  br label %if.end140

if.else130:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 3250000, i32 %call)
  %cmp131 = icmp ugt i32 %call, 3250000
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %quot.0)
  %cmp134 = icmp ugt i32 %quot.0, 2
  %or.cond218 = select i1 %cmp131, i1 %cmp134, i1 false
  %sub137 = add i32 %quot.0, -2
  %spec.select220 = select i1 %or.cond218, i32 %sub137, i32 %quot.0
  br label %if.end140

if.end140:                                        ; preds = %if.else130, %if.then128, %if.end102.if.end140_crit_edge
  %old_cr.2263 = phi i32 [ %old_cr.2.ph, %if.then128 ], [ %old_cr.2.ph, %if.else130 ], [ %old_cr.1, %if.end102.if.end140_crit_edge ]
  %quot.1 = phi i32 [ %sub129, %if.then128 ], [ %spec.select220, %if.else130 ], [ %quot.0, %if.end102.if.end140_crit_edge ]
  %and141 = and i32 %quot.1, 63
  %94 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %membase.i, align 4
  %96 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i224 = getelementptr i16, ptr %97, i32 7
  %98 = ptrtoint ptr %arrayidx.i.i224 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %arrayidx.i.i224, align 2
  %conv.i.i225 = zext i16 %99 to i32
  %add.ptr.i226 = getelementptr i8, ptr %95, i32 %conv.i.i225
  %100 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %101)
  %cmp.i228 = icmp eq i8 %101, 3
  br i1 %cmp.i228, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #17
  %102 = shl nuw nsw i32 %and141, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i226, i32 %102) #15, !srcloc !205
  br label %pl011_write.exit

if.else.i:                                        ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i = trunc i32 %and141 to i16
  %103 = shl nuw nsw i16 %conv3.i, 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i226, i16 %103) #15, !srcloc !218
  br label %pl011_write.exit

pl011_write.exit:                                 ; preds = %if.else.i, %if.then.i
  %shr = lshr i32 %quot.1, 6
  %104 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %membase.i, align 4
  %106 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i231 = getelementptr i16, ptr %107, i32 6
  %108 = ptrtoint ptr %arrayidx.i.i231 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %arrayidx.i.i231, align 2
  %conv.i.i232 = zext i16 %109 to i32
  %add.ptr.i233 = getelementptr i8, ptr %105, i32 %conv.i.i232
  %110 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %111)
  %cmp.i235 = icmp eq i8 %111, 3
  br i1 %cmp.i235, label %if.then.i236, label %if.else.i238

if.then.i236:                                     ; preds = %pl011_write.exit
  call void @__sanitizer_cov_trace_pc() #17
  %112 = tail call i32 @llvm.bswap.i32(i32 %shr) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i233, i32 %112) #15, !srcloc !205
  br label %pl011_write.exit239

if.else.i238:                                     ; preds = %pl011_write.exit
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i237 = trunc i32 %shr to i16
  %113 = tail call i16 @llvm.bswap.i16(i16 %conv3.i237) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i233, i16 %113) #15, !srcloc !218
  br label %pl011_write.exit239

pl011_write.exit239:                              ; preds = %if.else.i238, %if.then.i236
  %114 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %membase.i, align 4
  %116 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i.i242 = getelementptr i16, ptr %117, i32 4
  %118 = ptrtoint ptr %arrayidx.i.i.i242 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %arrayidx.i.i.i242, align 2
  %conv.i.i.i243 = zext i16 %119 to i32
  %add.ptr.i.i244 = getelementptr i8, ptr %115, i32 %conv.i.i.i243
  %120 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %121)
  %cmp.i.i246 = icmp eq i8 %121, 3
  br i1 %cmp.i.i246, label %if.then.i.i247, label %if.else.i.i249

if.then.i.i247:                                   ; preds = %pl011_write.exit239
  call void @__sanitizer_cov_trace_pc() #17
  %122 = tail call i32 @llvm.bswap.i32(i32 %spec.select214) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i244, i32 %122) #15, !srcloc !205
  br label %pl011_write.exit.i

if.else.i.i249:                                   ; preds = %pl011_write.exit239
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i.i248 = trunc i32 %spec.select214 to i16
  %123 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i248) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i244, i16 %123) #15, !srcloc !218
  br label %pl011_write.exit.i

pl011_write.exit.i:                               ; preds = %if.else.i.i249, %if.then.i.i247
  %124 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i7.i = getelementptr i16, ptr %125, i32 4
  %126 = ptrtoint ptr %arrayidx.i.i7.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %arrayidx.i.i7.i, align 2
  %arrayidx.i4.i.i = getelementptr i16, ptr %125, i32 5
  %128 = ptrtoint ptr %arrayidx.i4.i.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %arrayidx.i4.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %127, i16 %129)
  %cmp.i8.not.i = icmp eq i16 %127, %129
  br i1 %cmp.i8.not.i, label %pl011_write.exit.i.pl011_write_lcr_h.exit_crit_edge, label %pl011_write.exit.i.for.body.i_crit_edge

pl011_write.exit.i.for.body.i_crit_edge:          ; preds = %pl011_write.exit.i
  br label %for.body.i

pl011_write.exit.i.pl011_write_lcr_h.exit_crit_edge: ; preds = %pl011_write.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pl011_write_lcr_h.exit

for.body.i:                                       ; preds = %pl011_write.exit18.i.for.body.i_crit_edge, %pl011_write.exit.i.for.body.i_crit_edge
  %i.030.i = phi i32 [ %inc.i, %pl011_write.exit18.i.for.body.i_crit_edge ], [ 0, %pl011_write.exit.i.for.body.i_crit_edge ]
  %130 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %membase.i, align 4
  %132 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i11.i = getelementptr i16, ptr %133, i32 12
  %134 = ptrtoint ptr %arrayidx.i.i11.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %arrayidx.i.i11.i, align 2
  %conv.i.i12.i = zext i16 %135 to i32
  %add.ptr.i13.i = getelementptr i8, ptr %131, i32 %conv.i.i12.i
  %136 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %137)
  %cmp.i15.i = icmp eq i8 %137, 3
  br i1 %cmp.i15.i, label %if.then.i16.i, label %if.else.i17.i

if.then.i16.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 -16777216) #15, !srcloc !205
  br label %pl011_write.exit18.i

if.else.i17.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i13.i, i16 -256) #15, !srcloc !218
  br label %pl011_write.exit18.i

pl011_write.exit18.i:                             ; preds = %if.else.i17.i, %if.then.i16.i
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %for.end.i, label %pl011_write.exit18.i.for.body.i_crit_edge

pl011_write.exit18.i.for.body.i_crit_edge:        ; preds = %pl011_write.exit18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.end.i:                                        ; preds = %pl011_write.exit18.i
  %138 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %membase.i, align 4
  %140 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i21.i = getelementptr i16, ptr %141, i32 5
  %142 = ptrtoint ptr %arrayidx.i.i21.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %arrayidx.i.i21.i, align 2
  %conv.i.i22.i = zext i16 %143 to i32
  %add.ptr.i23.i = getelementptr i8, ptr %139, i32 %conv.i.i22.i
  %144 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %145)
  %cmp.i25.i = icmp eq i8 %145, 3
  br i1 %cmp.i25.i, label %if.then.i26.i, label %if.else.i28.i

if.then.i26.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %146 = tail call i32 @llvm.bswap.i32(i32 %spec.select214) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 %146) #15, !srcloc !205
  br label %pl011_write_lcr_h.exit

if.else.i28.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i27.i = trunc i32 %spec.select214 to i16
  %147 = tail call i16 @llvm.bswap.i16(i16 %conv3.i27.i) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i23.i, i16 %147) #15, !srcloc !218
  br label %pl011_write_lcr_h.exit

pl011_write_lcr_h.exit:                           ; preds = %if.else.i28.i, %if.then.i26.i, %pl011_write.exit.i.pl011_write_lcr_h.exit_crit_edge
  %148 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %membase.i, align 4
  %150 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i.i252 = getelementptr i16, ptr %151, i32 8
  %152 = ptrtoint ptr %arrayidx.i.i252 to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %arrayidx.i.i252, align 2
  %conv.i.i253 = zext i16 %153 to i32
  %add.ptr.i254 = getelementptr i8, ptr %149, i32 %conv.i.i253
  %154 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %155)
  %cmp.i256 = icmp eq i8 %155, 3
  br i1 %cmp.i256, label %if.then.i257, label %if.else.i259

if.then.i257:                                     ; preds = %pl011_write_lcr_h.exit
  call void @__sanitizer_cov_trace_pc() #17
  %156 = tail call i32 @llvm.bswap.i32(i32 %old_cr.2263) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i254, i32 %156) #15, !srcloc !205
  br label %pl011_write.exit260

if.else.i259:                                     ; preds = %pl011_write_lcr_h.exit
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i258 = trunc i32 %old_cr.2263 to i16
  %157 = tail call i16 @llvm.bswap.i16(i16 %conv3.i258) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i254, i16 %157) #15, !srcloc !218
  br label %pl011_write.exit260

pl011_write.exit260:                              ; preds = %if.else.i259, %if.then.i257
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call60) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pl011_dma_startup(ptr noundef %uap) unnamed_addr #3 align 64 {
entry:
  %dma_addr.i138 = alloca i32, align 4
  %dma_addr.i = alloca i32, align 4
  %tx_conf.i = alloca %struct.dma_slave_config, align 4
  %mask.i = alloca %struct.dma_cap_mask_t, align 4
  %rx_conf.i = alloca %struct.dma_slave_config, align 4
  %caps.i = alloca %struct.dma_slave_caps, align 4
  %x.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_probed = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 16
  %0 = ptrtoint ptr %dma_probed to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dma_probed, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 45
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %platform_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %tx_conf.i) #15
  %6 = getelementptr inbounds i8, ptr %tx_conf.i, i32 36
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !217
  %8 = ptrtoint ptr %tx_conf.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %tx_conf.i, align 4
  %src_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %tx_conf.i, i32 0, i32 1
  %9 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %src_addr.i, align 4
  %dst_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %tx_conf.i, i32 0, i32 2
  %mapbase.i = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 43
  %10 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mapbase.i, align 4
  %reg_offset.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 1
  %12 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_offset.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %13, align 2
  %conv.i.i = zext i16 %15 to i32
  %add.i = add i32 %11, %conv.i.i
  %16 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add.i, ptr %dst_addr.i, align 4
  %src_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %tx_conf.i, i32 0, i32 3
  %17 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %src_addr_width.i, align 4
  %dst_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %tx_conf.i, i32 0, i32 4
  %18 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %dst_addr_width.i, align 4
  %src_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %tx_conf.i, i32 0, i32 5
  %19 = ptrtoint ptr %src_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %src_maxburst.i, align 4
  %dst_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %tx_conf.i, i32 0, i32 6
  %fifosize.i = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 7
  %20 = ptrtoint ptr %fifosize.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fifosize.i, align 4
  %shr.i = lshr i32 %21, 1
  %22 = ptrtoint ptr %dst_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shr.i, ptr %dst_maxburst.i, align 4
  %src_port_window_size.i = getelementptr inbounds %struct.dma_slave_config, ptr %tx_conf.i, i32 0, i32 7
  %23 = ptrtoint ptr %src_port_window_size.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %src_port_window_size.i, align 4
  %dst_port_window_size.i = getelementptr inbounds %struct.dma_slave_config, ptr %tx_conf.i, i32 0, i32 8
  %24 = ptrtoint ptr %dst_port_window_size.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %dst_port_window_size.i, align 4
  store i8 0, ptr %6, align 4
  %peripheral_config.i = getelementptr inbounds %struct.dma_slave_config, ptr %tx_conf.i, i32 0, i32 10
  %25 = ptrtoint ptr %peripheral_config.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %peripheral_config.i, align 4
  %peripheral_size.i = getelementptr inbounds %struct.dma_slave_config, ptr %tx_conf.i, i32 0, i32 11
  %26 = ptrtoint ptr %peripheral_size.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %peripheral_size.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #15
  %27 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %mask.i, align 4, !annotation !217
  %28 = ptrtoint ptr %dma_probed to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %dma_probed, align 4
  %call6.i = tail call ptr @dma_request_chan(ptr noundef %3, ptr noundef nonnull @.str.48) #15
  %cmp.i.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i128, label %if.then.if.end26.i_crit_edge

if.then.if.end26.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26.i

if.then.i128:                                     ; preds = %if.then
  %cmp.i127 = icmp eq ptr %call6.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp.i127, label %if.then9.i, label %if.end.i129

if.then9.i:                                       ; preds = %if.then.i128
  call void @__sanitizer_cov_trace_pc() #17
  %29 = ptrtoint ptr %dma_probed to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %dma_probed, align 4
  br label %pl011_dma_probe.exit

if.end.i129:                                      ; preds = %if.then.i128
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i129.do.end.i_crit_edge, label %lor.lhs.false.i

if.end.i129.do.end.i_crit_edge:                   ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end.i129
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %5, align 4
  %tobool11.not.i = icmp eq ptr %31, null
  br i1 %tobool11.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %if.end15.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.end.i129.do.end.i_crit_edge
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %33, ptr noundef nonnull @.str.49) #18
  br label %pl011_dma_probe.exit

if.end15.i:                                       ; preds = %lor.lhs.false.i
  %34 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %mask.i, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %mask.i) #15
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %5, align 4
  %dma_tx_param.i = getelementptr inbounds %struct.amba_pl011_data, ptr %5, i32 0, i32 2
  %37 = ptrtoint ptr %dma_tx_param.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dma_tx_param.i, align 4
  %call17.i = call ptr @__dma_request_channel(ptr noundef nonnull %mask.i, ptr noundef %36, ptr noundef %38, ptr noundef null) #15
  %tobool18.not.i = icmp eq ptr %call17.i, null
  br i1 %tobool18.not.i, label %do.end22.i, label %if.end15.i.if.end26.i_crit_edge

if.end15.i.if.end26.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26.i

do.end22.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #17
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.53) #18
  br label %pl011_dma_probe.exit

if.end26.i:                                       ; preds = %if.end15.i.if.end26.i_crit_edge, %if.then.if.end26.i_crit_edge
  %chan.0.i = phi ptr [ %call17.i, %if.end15.i.if.end26.i_crit_edge ], [ %call6.i, %if.then.if.end26.i_crit_edge ]
  %41 = ptrtoint ptr %chan.0.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %chan.0.i, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %42, i32 0, i32 44
  %43 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i.i, label %if.end26.i.dmaengine_slave_config.exit.i_crit_edge, label %if.then.i.i

if.end26.i.dmaengine_slave_config.exit.i_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmaengine_slave_config.exit.i

if.then.i.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i = call i32 %44(ptr noundef %chan.0.i, ptr noundef nonnull %tx_conf.i) #15
  br label %dmaengine_slave_config.exit.i

dmaengine_slave_config.exit.i:                    ; preds = %if.then.i.i, %if.end26.i.dmaengine_slave_config.exit.i_crit_edge
  %dmatx.i = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 15
  %45 = ptrtoint ptr %dmatx.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %chan.0.i, ptr %dmatx.i, align 4
  %46 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i, align 4
  %dev.i.i = getelementptr inbounds %struct.dma_chan, ptr %chan.0.i, i32 0, i32 5
  %48 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i.i, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %49, i32 0, i32 1, i32 3
  %50 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %51, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %dmaengine_slave_config.exit.i.dma_chan_name.exit.i_crit_edge

dmaengine_slave_config.exit.i.dma_chan_name.exit.i_crit_edge: ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_chan_name.exit.i

if.end.i.i.i:                                     ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %49, i32 0, i32 1
  %52 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %device.i.i, align 4
  br label %dma_chan_name.exit.i

dma_chan_name.exit.i:                             ; preds = %if.end.i.i.i, %dmaengine_slave_config.exit.i.dma_chan_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %53, %if.end.i.i.i ], [ %51, %dmaengine_slave_config.exit.i.dma_chan_name.exit.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %47, ptr noundef nonnull @.str.56, ptr noundef %retval.0.i.i.i) #18
  %call.i230.i = call ptr @dma_request_chan(ptr noundef %3, ptr noundef nonnull @.str.58) #15
  %cmp.i.i.i = icmp ugt ptr %call.i230.i, inttoptr (i32 -4096 to ptr)
  %tobool38.not249.i = icmp eq ptr %call.i230.i, null
  %tobool38.not.i = or i1 %cmp.i.i.i, %tobool38.not249.i
  br i1 %tobool38.not.i, label %land.lhs.true.i, label %dma_chan_name.exit.i.if.then56.i_crit_edge

dma_chan_name.exit.i.if.then56.i_crit_edge:       ; preds = %dma_chan_name.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then56.i

land.lhs.true.i:                                  ; preds = %dma_chan_name.exit.i
  %tobool39.not.i = icmp eq ptr %5, null
  br i1 %tobool39.not.i, label %land.lhs.true.i.pl011_dma_probe.exit_crit_edge, label %land.lhs.true40.i

land.lhs.true.i.pl011_dma_probe.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pl011_dma_probe.exit

land.lhs.true40.i:                                ; preds = %land.lhs.true.i
  %dma_rx_param.i = getelementptr inbounds %struct.amba_pl011_data, ptr %5, i32 0, i32 1
  %54 = ptrtoint ptr %dma_rx_param.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dma_rx_param.i, align 4
  %tobool41.not.i = icmp eq ptr %55, null
  br i1 %tobool41.not.i, label %land.lhs.true40.i.pl011_dma_probe.exit_crit_edge, label %if.then42.i

land.lhs.true40.i.pl011_dma_probe.exit_crit_edge: ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pl011_dma_probe.exit

if.then42.i:                                      ; preds = %land.lhs.true40.i
  %56 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %5, align 4
  %call45.i = call ptr @__dma_request_channel(ptr noundef nonnull %mask.i, ptr noundef %57, ptr noundef nonnull %55, ptr noundef null) #15
  %tobool46.not.i = icmp eq ptr %call45.i, null
  br i1 %tobool46.not.i, label %do.end50.i, label %if.then42.i.if.then56.i_crit_edge

if.then42.i.if.then56.i_crit_edge:                ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then56.i

do.end50.i:                                       ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #17
  %58 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.60) #18
  br label %pl011_dma_probe.exit

if.then56.i:                                      ; preds = %if.then42.i.if.then56.i_crit_edge, %dma_chan_name.exit.i.if.then56.i_crit_edge
  %chan.1.i = phi ptr [ %call.i230.i, %dma_chan_name.exit.i.if.then56.i_crit_edge ], [ %call45.i, %if.then42.i.if.then56.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %rx_conf.i) #15
  %60 = getelementptr inbounds i8, ptr %rx_conf.i, i32 36
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %60, align 4, !annotation !217
  %62 = ptrtoint ptr %rx_conf.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 2, ptr %rx_conf.i, align 4
  %src_addr58.i = getelementptr inbounds %struct.dma_slave_config, ptr %rx_conf.i, i32 0, i32 1
  %63 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mapbase.i, align 4
  %65 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reg_offset.i.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %66, align 2
  %conv.i232.i = zext i16 %68 to i32
  %add62.i = add i32 %64, %conv.i232.i
  %69 = ptrtoint ptr %src_addr58.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %add62.i, ptr %src_addr58.i, align 4
  %dst_addr63.i = getelementptr inbounds %struct.dma_slave_config, ptr %rx_conf.i, i32 0, i32 2
  %70 = ptrtoint ptr %dst_addr63.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %dst_addr63.i, align 4
  %src_addr_width64.i = getelementptr inbounds %struct.dma_slave_config, ptr %rx_conf.i, i32 0, i32 3
  %71 = ptrtoint ptr %src_addr_width64.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %src_addr_width64.i, align 4
  %dst_addr_width65.i = getelementptr inbounds %struct.dma_slave_config, ptr %rx_conf.i, i32 0, i32 4
  %72 = ptrtoint ptr %dst_addr_width65.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %dst_addr_width65.i, align 4
  %src_maxburst66.i = getelementptr inbounds %struct.dma_slave_config, ptr %rx_conf.i, i32 0, i32 5
  %73 = ptrtoint ptr %fifosize.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %fifosize.i, align 4
  %shr68.i = lshr i32 %74, 2
  %75 = ptrtoint ptr %src_maxburst66.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %shr68.i, ptr %src_maxburst66.i, align 4
  %dst_maxburst69.i = getelementptr inbounds %struct.dma_slave_config, ptr %rx_conf.i, i32 0, i32 6
  %peripheral_config73.i = getelementptr inbounds %struct.dma_slave_config, ptr %rx_conf.i, i32 0, i32 10
  %76 = ptrtoint ptr %peripheral_config73.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %peripheral_config73.i, align 4
  %peripheral_size74.i = getelementptr inbounds %struct.dma_slave_config, ptr %rx_conf.i, i32 0, i32 11
  %77 = ptrtoint ptr %peripheral_size74.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %peripheral_size74.i, align 4
  %78 = call ptr @memset(ptr %dst_maxburst69.i, i32 0, i32 13)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %caps.i) #15
  %79 = call ptr @memset(ptr %caps.i, i32 255, i32 36)
  %call75.i = call i32 @dma_get_slave_caps(ptr noundef nonnull %chan.1.i, ptr noundef nonnull %caps.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %cmp76.i = icmp eq i32 %call75.i, 0
  br i1 %cmp76.i, label %if.then77.i, label %if.then56.i.if.end86.i_crit_edge

if.then56.i.if.end86.i_crit_edge:                 ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end86.i

if.then77.i:                                      ; preds = %if.then56.i
  %residue_granularity.i = getelementptr inbounds %struct.dma_slave_caps, ptr %caps.i, i32 0, i32 9
  %80 = ptrtoint ptr %residue_granularity.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %residue_granularity.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp78.i = icmp eq i32 %81, 0
  br i1 %cmp78.i, label %if.then79.i, label %if.then77.i.if.end86.i_crit_edge

if.then77.i.if.end86.i_crit_edge:                 ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end86.i

if.then79.i:                                      ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @dma_release_channel(ptr noundef nonnull %chan.1.i) #15
  %82 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %83, ptr noundef nonnull @.str.63) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %caps.i) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %rx_conf.i) #15
  br label %pl011_dma_probe.exit

if.end86.i:                                       ; preds = %if.then77.i.if.end86.i_crit_edge, %if.then56.i.if.end86.i_crit_edge
  %84 = ptrtoint ptr %chan.1.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %chan.1.i, align 4
  %device_config.i233.i = getelementptr inbounds %struct.dma_device, ptr %85, i32 0, i32 44
  %86 = ptrtoint ptr %device_config.i233.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %device_config.i233.i, align 4
  %tobool.not.i234.i = icmp eq ptr %87, null
  br i1 %tobool.not.i234.i, label %if.end86.i.dmaengine_slave_config.exit237.i_crit_edge, label %if.then.i236.i

if.end86.i.dmaengine_slave_config.exit237.i_crit_edge: ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmaengine_slave_config.exit237.i

if.then.i236.i:                                   ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i235.i = call i32 %87(ptr noundef nonnull %chan.1.i, ptr noundef nonnull %rx_conf.i) #15
  br label %dmaengine_slave_config.exit237.i

dmaengine_slave_config.exit237.i:                 ; preds = %if.then.i236.i, %if.end86.i.dmaengine_slave_config.exit237.i_crit_edge
  %dmarx.i = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14
  %88 = ptrtoint ptr %dmarx.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %chan.1.i, ptr %dmarx.i, align 4
  %auto_poll_rate.i = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14, i32 10
  %89 = ptrtoint ptr %auto_poll_rate.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %auto_poll_rate.i, align 4
  %tobool90.not.i = icmp eq ptr %5, null
  br i1 %tobool90.not.i, label %land.lhs.true115.critedge.i, label %land.lhs.true91.i

land.lhs.true91.i:                                ; preds = %dmaengine_slave_config.exit237.i
  %dma_rx_poll_enable.i = getelementptr inbounds %struct.amba_pl011_data, ptr %5, i32 0, i32 3
  %90 = ptrtoint ptr %dma_rx_poll_enable.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %dma_rx_poll_enable.i, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool92.not.i = icmp eq i8 %91, 0
  br i1 %tobool92.not.i, label %land.lhs.true91.i.do.end151.i_crit_edge, label %if.then93.i

land.lhs.true91.i.do.end151.i_crit_edge:          ; preds = %land.lhs.true91.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end151.i

if.then93.i:                                      ; preds = %land.lhs.true91.i
  %dma_rx_poll_rate.i = getelementptr inbounds %struct.amba_pl011_data, ptr %5, i32 0, i32 4
  %92 = ptrtoint ptr %dma_rx_poll_rate.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %dma_rx_poll_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool94.not.i = icmp eq i32 %93, 0
  br i1 %tobool94.not.i, label %if.else.i130, label %if.then93.i.if.end104.i_crit_edge

if.then93.i.if.end104.i_crit_edge:                ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end104.i

if.else.i130:                                     ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #17
  %94 = ptrtoint ptr %auto_poll_rate.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %auto_poll_rate.i, align 4
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.else.i130, %if.then93.i.if.end104.i_crit_edge
  %.sink.i = phi i32 [ 100, %if.else.i130 ], [ %93, %if.then93.i.if.end104.i_crit_edge ]
  %95 = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14, i32 11
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %.sink.i, ptr %95, align 4
  %dma_rx_poll_timeout.i = getelementptr inbounds %struct.amba_pl011_data, ptr %5, i32 0, i32 5
  %97 = ptrtoint ptr %dma_rx_poll_timeout.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %dma_rx_poll_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool105.not.i = icmp eq i32 %98, 0
  %poll_timeout111.i = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14, i32 12
  br i1 %tobool105.not.i, label %if.else109.i, label %if.then106.i

if.then106.i:                                     ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #17
  %99 = ptrtoint ptr %poll_timeout111.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %poll_timeout111.i, align 4
  br label %do.end151.i

if.else109.i:                                     ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #17
  %100 = ptrtoint ptr %poll_timeout111.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 3000, ptr %poll_timeout111.i, align 4
  br label %do.end151.i

land.lhs.true115.critedge.i:                      ; preds = %dmaengine_slave_config.exit237.i
  %of_node.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %101 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %of_node.i, align 8
  %tobool116.not.i = icmp eq ptr %102, null
  br i1 %tobool116.not.i, label %land.lhs.true115.critedge.i.do.end151.i_crit_edge, label %if.then117.i

land.lhs.true115.critedge.i.do.end151.i_crit_edge: ; preds = %land.lhs.true115.critedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end151.i

if.then117.i:                                     ; preds = %land.lhs.true115.critedge.i
  %call.i238.i = call ptr @of_find_property(ptr noundef nonnull %102, ptr noundef nonnull @.str.65, ptr noundef null) #15
  %tobool.i.i = icmp ne ptr %call.i238.i, null
  %frombool.i = zext i1 %tobool.i.i to i8
  %103 = ptrtoint ptr %auto_poll_rate.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %frombool.i, ptr %auto_poll_rate.i, align 4
  br i1 %tobool.i.i, label %if.then125.i, label %if.then117.i.do.end151.i_crit_edge

if.then117.i.do.end151.i_crit_edge:               ; preds = %if.then117.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end151.i

if.then125.i:                                     ; preds = %if.then117.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.i) #15
  %104 = ptrtoint ptr %x.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 -1, ptr %x.i, align 4, !annotation !217
  %105 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %of_node.i, align 8
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %106, ptr noundef nonnull @.str.66, ptr noundef nonnull %x.i, i32 noundef 1, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %cmp128.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %cmp128.i, label %if.then129.i, label %if.then125.i.if.end135.i_crit_edge

if.then125.i.if.end135.i_crit_edge:               ; preds = %if.then125.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end135.i

if.then129.i:                                     ; preds = %if.then125.i
  call void @__sanitizer_cov_trace_pc() #17
  %107 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %x.i, align 4
  br label %if.end135.i

if.end135.i:                                      ; preds = %if.then129.i, %if.then125.i.if.end135.i_crit_edge
  %.sink250.i = phi i32 [ %108, %if.then129.i ], [ 100, %if.then125.i.if.end135.i_crit_edge ]
  %109 = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14, i32 11
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %.sink250.i, ptr %109, align 4
  %111 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %of_node.i, align 8
  %call.i.i239.i = call i32 @of_property_read_variable_u32_array(ptr noundef %112, ptr noundef nonnull @.str.67, ptr noundef nonnull %x.i, i32 noundef 1, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i239.i)
  %cmp138.i = icmp sgt i32 %call.i.i239.i, -1
  br i1 %cmp138.i, label %if.then139.i, label %if.end135.i.if.end145.i_crit_edge

if.end135.i.if.end145.i_crit_edge:                ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end145.i

if.then139.i:                                     ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #17
  %113 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %x.i, align 4
  br label %if.end145.i

if.end145.i:                                      ; preds = %if.then139.i, %if.end135.i.if.end145.i_crit_edge
  %.sink251.i = phi i32 [ %114, %if.then139.i ], [ 3000, %if.end135.i.if.end145.i_crit_edge ]
  %115 = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14, i32 12
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %.sink251.i, ptr %115, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.i) #15
  br label %do.end151.i

do.end151.i:                                      ; preds = %if.end145.i, %if.then117.i.do.end151.i_crit_edge, %land.lhs.true115.critedge.i.do.end151.i_crit_edge, %if.else109.i, %if.then106.i, %land.lhs.true91.i.do.end151.i_crit_edge
  %117 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev.i, align 4
  %119 = ptrtoint ptr %dmarx.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dmarx.i, align 4
  %dev.i240.i = getelementptr inbounds %struct.dma_chan, ptr %120, i32 0, i32 5
  %121 = ptrtoint ptr %dev.i240.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev.i240.i, align 4
  %init_name.i.i241.i = getelementptr inbounds %struct.dma_chan_dev, ptr %122, i32 0, i32 1, i32 3
  %123 = ptrtoint ptr %init_name.i.i241.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %init_name.i.i241.i, align 8
  %tobool.not.i.i242.i = icmp eq ptr %124, null
  br i1 %tobool.not.i.i242.i, label %if.end.i.i244.i, label %do.end151.i.dma_chan_name.exit246.i_crit_edge

do.end151.i.dma_chan_name.exit246.i_crit_edge:    ; preds = %do.end151.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_chan_name.exit246.i

if.end.i.i244.i:                                  ; preds = %do.end151.i
  call void @__sanitizer_cov_trace_pc() #17
  %device.i243.i = getelementptr inbounds %struct.dma_chan_dev, ptr %122, i32 0, i32 1
  %125 = ptrtoint ptr %device.i243.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %device.i243.i, align 4
  br label %dma_chan_name.exit246.i

dma_chan_name.exit246.i:                          ; preds = %if.end.i.i244.i, %do.end151.i.dma_chan_name.exit246.i_crit_edge
  %retval.0.i.i245.i = phi ptr [ %126, %if.end.i.i244.i ], [ %124, %do.end151.i.dma_chan_name.exit246.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %118, ptr noundef nonnull @.str.69, ptr noundef %retval.0.i.i245.i) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %caps.i) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %rx_conf.i) #15
  br label %pl011_dma_probe.exit

pl011_dma_probe.exit:                             ; preds = %dma_chan_name.exit246.i, %if.then79.i, %do.end50.i, %land.lhs.true40.i.pl011_dma_probe.exit_crit_edge, %land.lhs.true.i.pl011_dma_probe.exit_crit_edge, %do.end22.i, %do.end.i, %if.then9.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %tx_conf.i) #15
  br label %if.end

if.end:                                           ; preds = %pl011_dma_probe.exit, %entry.if.end_crit_edge
  %dmatx = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 15
  %127 = ptrtoint ptr %dmatx to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dmatx, align 4
  %tobool1.not = icmp eq ptr %128, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 12) to i32))
  %129 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 12), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %129, i32 noundef 3265, i32 noundef 4096) #20
  %buf = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 15, i32 2
  %130 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call7.i, ptr %buf, align 4
  %tobool7.not = icmp eq ptr %call7.i, null
  br i1 %tobool7.not, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 45
  %131 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %132, ptr noundef nonnull @.str.37) #18
  %fifosize = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 7
  %133 = ptrtoint ptr %fifosize to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %fifosize, align 4
  %fifosize10 = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 23
  %135 = ptrtoint ptr %fifosize10 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %fifosize10, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end3
  %sg = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 15, i32 1
  call void @sg_init_one(ptr noundef %sg, ptr noundef nonnull %call7.i, i32 noundef 4096) #15
  %fifosize16 = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 23
  %136 = ptrtoint ptr %fifosize16 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 4096, ptr %fifosize16, align 4
  %using_tx_dma = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 12
  %137 = ptrtoint ptr %using_tx_dma to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 1, ptr %using_tx_dma, align 4
  %dmarx = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14
  %138 = ptrtoint ptr %dmarx to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dmarx, align 4
  %tobool18.not = icmp eq ptr %139, null
  br i1 %tobool18.not, label %if.end11.skip_rx_crit_edge, label %if.end20

if.end11.skip_rx_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %skip_rx

if.end20:                                         ; preds = %if.end11
  %sgbuf_a = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_addr.i) #15
  %140 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 -1, ptr %dma_addr.i, align 4, !annotation !217
  %141 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %139, align 4
  %dev.i131 = getelementptr inbounds %struct.dma_device, ptr %142, i32 0, i32 15
  %143 = ptrtoint ptr %dev.i131 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev.i131, align 4
  %call.i.i132 = call ptr @dma_alloc_attrs(ptr noundef %144, i32 noundef 4096, ptr noundef nonnull %dma_addr.i, i32 noundef 3264, i32 noundef 0) #15
  %buf.i = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14, i32 3, i32 1
  %145 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %call.i.i132, ptr %buf.i, align 4
  %tobool.not.i133 = icmp eq ptr %call.i.i132, null
  br i1 %tobool.not.i133, label %do.end29, label %if.end.i136

if.end.i136:                                      ; preds = %if.end20
  call void @sg_init_table(ptr noundef %sgbuf_a, i32 noundef 1) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %146 = load ptr, ptr @mem_map, align 4
  %147 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %dma_addr.i, align 4
  %shr.i134 = lshr i32 %148, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %149 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i = sub i32 %shr.i134, %149
  %add.ptr.i = getelementptr %struct.page, ptr %146, i32 %sub.i
  %and.i = and i32 %148, 4095
  %150 = ptrtoint ptr %sgbuf_a to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %sgbuf_a, align 4
  %152 = ptrtoint ptr %add.ptr.i to i32
  %and2.i.i.i = and i32 %152, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i135 = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i135, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !224

do.body5.i.i.i:                                   ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #15, !srcloc !237
  unreachable

do.body11.i.i.i:                                  ; preds = %if.end.i136
  %and.i.i.i.i = and i32 %151, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %if.end32, label %do.body19.i.i.i, !prof !224

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #15, !srcloc !238
  unreachable

do.end29:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_addr.i) #15
  %dev31 = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 45
  %153 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dev31, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %154, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.42, i32 noundef -12) #18
  br label %skip_rx

if.end32:                                         ; preds = %do.body11.i.i.i
  %and.i.i.i = and i32 %151, 3
  %or.i.i.i = or i32 %and.i.i.i, %152
  %155 = ptrtoint ptr %sgbuf_a to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %or.i.i.i, ptr %sgbuf_a, align 4
  %offset1.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14, i32 3, i32 0, i32 1
  %156 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %and.i, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14, i32 3, i32 0, i32 2
  %157 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 4096, ptr %length.i.i, align 4
  %dma_address.i = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14, i32 3, i32 0, i32 3
  %158 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %148, ptr %dma_address.i, align 4
  %dma_length.i = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14, i32 3, i32 0, i32 4
  %159 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 4096, ptr %dma_length.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_addr.i) #15
  %160 = ptrtoint ptr %dmarx to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %dmarx, align 4
  %sgbuf_b = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_addr.i138) #15
  %162 = ptrtoint ptr %dma_addr.i138 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 -1, ptr %dma_addr.i138, align 4, !annotation !217
  %163 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %161, align 4
  %dev.i139 = getelementptr inbounds %struct.dma_device, ptr %164, i32 0, i32 15
  %165 = ptrtoint ptr %dev.i139 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev.i139, align 4
  %call.i.i140 = call ptr @dma_alloc_attrs(ptr noundef %166, i32 noundef 4096, ptr noundef nonnull %dma_addr.i138, i32 noundef 3264, i32 noundef 0) #15
  %buf.i141 = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14, i32 4, i32 1
  %167 = ptrtoint ptr %buf.i141 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %call.i.i140, ptr %buf.i141, align 4
  %tobool.not.i142 = icmp eq ptr %call.i.i140, null
  br i1 %tobool.not.i142, label %do.end41, label %if.end.i149

if.end.i149:                                      ; preds = %if.end32
  call void @sg_init_table(ptr noundef %sgbuf_b, i32 noundef 1) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %168 = load ptr, ptr @mem_map, align 4
  %169 = ptrtoint ptr %dma_addr.i138 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %dma_addr.i138, align 4
  %shr.i143 = lshr i32 %170, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %171 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i144 = sub i32 %shr.i143, %171
  %add.ptr.i145 = getelementptr %struct.page, ptr %168, i32 %sub.i144
  %and.i146 = and i32 %170, 4095
  %172 = ptrtoint ptr %sgbuf_b to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %sgbuf_b, align 4
  %174 = ptrtoint ptr %add.ptr.i145 to i32
  %and2.i.i.i147 = and i32 %174, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i147)
  %tobool.not.i.i.i148 = icmp eq i32 %and2.i.i.i147, 0
  br i1 %tobool.not.i.i.i148, label %do.body11.i.i.i153, label %do.body5.i.i.i150, !prof !224

do.body5.i.i.i150:                                ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #15, !srcloc !237
  unreachable

do.body11.i.i.i153:                               ; preds = %if.end.i149
  %and.i.i.i.i151 = and i32 %173, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i151)
  %tobool.i.not.i.i.i152 = icmp eq i32 %and.i.i.i.i151, 0
  br i1 %tobool.i.not.i.i.i152, label %if.end48, label %do.body19.i.i.i154, !prof !224

do.body19.i.i.i154:                               ; preds = %do.body11.i.i.i153
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #15, !srcloc !238
  unreachable

do.end41:                                         ; preds = %if.end32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_addr.i138) #15
  %dev43 = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 45
  %175 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %dev43, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %176, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.45, i32 noundef -12) #18
  %177 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %buf.i, align 4
  %tobool.not.i165 = icmp eq ptr %178, null
  br i1 %tobool.not.i165, label %do.end41.skip_rx_crit_edge, label %if.then.i168

do.end41.skip_rx_crit_edge:                       ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %skip_rx

if.then.i168:                                     ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #17
  %179 = ptrtoint ptr %dmarx to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %dmarx, align 4
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %180, align 4
  %dev.i166 = getelementptr inbounds %struct.dma_device, ptr %182, i32 0, i32 15
  %183 = ptrtoint ptr %dev.i166 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %dev.i166, align 4
  %185 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %dma_address.i, align 4
  call void @dma_free_attrs(ptr noundef %184, i32 noundef 4096, ptr noundef nonnull %178, i32 noundef %186, i32 noundef 0) #15
  br label %skip_rx

if.end48:                                         ; preds = %do.body11.i.i.i153
  call void @__sanitizer_cov_trace_pc() #17
  %and.i.i.i155 = and i32 %173, 3
  %or.i.i.i156 = or i32 %and.i.i.i155, %174
  %187 = ptrtoint ptr %sgbuf_b to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %or.i.i.i156, ptr %sgbuf_b, align 4
  %offset1.i.i157 = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14, i32 4, i32 0, i32 1
  %188 = ptrtoint ptr %offset1.i.i157 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %and.i146, ptr %offset1.i.i157, align 4
  %length.i.i158 = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14, i32 4, i32 0, i32 2
  %189 = ptrtoint ptr %length.i.i158 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 4096, ptr %length.i.i158, align 4
  %dma_address.i159 = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14, i32 4, i32 0, i32 3
  %190 = ptrtoint ptr %dma_address.i159 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %170, ptr %dma_address.i159, align 4
  %dma_length.i160 = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14, i32 4, i32 0, i32 4
  %191 = ptrtoint ptr %dma_length.i160 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 4096, ptr %dma_length.i160, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_addr.i138) #15
  %using_rx_dma = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 13
  %192 = ptrtoint ptr %using_rx_dma to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 1, ptr %using_rx_dma, align 1
  br label %skip_rx

skip_rx:                                          ; preds = %if.end48, %if.then.i168, %do.end41.skip_rx_crit_edge, %do.end29, %if.end11.skip_rx_crit_edge
  %dmacr = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 4
  %193 = ptrtoint ptr %dmacr to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %dmacr, align 4
  %or = or i32 %194, 4
  store i32 %or, ptr %dmacr, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 2
  %195 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %membase.i, align 4
  %reg_offset.i.i170 = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 1
  %197 = ptrtoint ptr %reg_offset.i.i170 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %reg_offset.i.i170, align 4
  %arrayidx.i.i = getelementptr i16, ptr %198, i32 14
  %199 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i171 = zext i16 %200 to i32
  %add.ptr.i172 = getelementptr i8, ptr %196, i32 %conv.i.i171
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 26
  %201 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %202)
  %cmp.i173 = icmp eq i8 %202, 3
  br i1 %cmp.i173, label %if.then.i174, label %if.else.i175

if.then.i174:                                     ; preds = %skip_rx
  call void @__sanitizer_cov_trace_pc() #17
  %203 = call i32 @llvm.bswap.i32(i32 %or) #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i172, i32 %203) #15, !srcloc !205
  br label %pl011_write.exit

if.else.i175:                                     ; preds = %skip_rx
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i = trunc i32 %or to i16
  %204 = call i16 @llvm.bswap.i16(i16 %conv3.i) #15
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i172, i16 %204) #15, !srcloc !218
  br label %pl011_write.exit

pl011_write.exit:                                 ; preds = %if.else.i175, %if.then.i174
  %vendor = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 3
  %205 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %vendor, align 4
  %dma_threshold = getelementptr inbounds %struct.vendor_data, ptr %206, i32 0, i32 9
  %207 = ptrtoint ptr %dma_threshold to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %dma_threshold, align 2, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %208)
  %tobool50.not = icmp eq i8 %208, 0
  br i1 %tobool50.not, label %pl011_write.exit.if.end52_crit_edge, label %if.then51

pl011_write.exit.if.end52_crit_edge:              ; preds = %pl011_write.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end52

if.then51:                                        ; preds = %pl011_write.exit
  %209 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %membase.i, align 4
  %211 = ptrtoint ptr %reg_offset.i.i170 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %reg_offset.i.i170, align 4
  %arrayidx.i.i179 = getelementptr i16, ptr %212, i32 1
  %213 = ptrtoint ptr %arrayidx.i.i179 to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %arrayidx.i.i179, align 2
  %conv.i.i180 = zext i16 %214 to i32
  %add.ptr.i181 = getelementptr i8, ptr %210, i32 %conv.i.i180
  %215 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %216)
  %cmp.i183 = icmp eq i8 %216, 3
  br i1 %cmp.i183, label %if.then.i184, label %if.else.i185

if.then.i184:                                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i181, i32 603979776) #15, !srcloc !205
  br label %if.end52

if.else.i185:                                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i181, i16 9216) #15, !srcloc !218
  br label %if.end52

if.end52:                                         ; preds = %if.else.i185, %if.then.i184, %pl011_write.exit.if.end52_crit_edge
  %using_rx_dma53 = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 13
  %217 = ptrtoint ptr %using_rx_dma53 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %using_rx_dma53, align 1, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %218)
  %tobool54.not = icmp eq i8 %218, 0
  br i1 %tobool54.not, label %if.end52.cleanup_crit_edge, label %if.then55

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then55:                                        ; preds = %if.end52
  %call56 = call fastcc i32 @pl011_dma_rx_trigger_dma(ptr noundef %uap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then55.if.end70_crit_edge, label %do.body59

if.then55.if.end70_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end70

do.body59:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl011_dma_startup.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl011_dma_startup, %if.then64)) #15
          to label %if.end70 [label %if.then64], !srcloc !223

if.then64:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #17
  %dev66 = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 45
  %219 = ptrtoint ptr %dev66 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %dev66, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl011_dma_startup.__UNIQUE_ID_ddebug294, ptr noundef %220, ptr noundef nonnull @.str.46) #15
  br label %if.end70

if.end70:                                         ; preds = %if.then64, %do.body59, %if.then55.if.end70_crit_edge
  %poll_rate = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14, i32 11
  %221 = ptrtoint ptr %poll_rate to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %poll_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %tobool72.not = icmp eq i32 %222, 0
  br i1 %tobool72.not, label %if.end70.cleanup_crit_edge, label %do.body74

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body74:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #17
  %timer = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14, i32 7
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @pl011_dma_rx_poll, i32 noundef 0, ptr noundef nonnull @.str.47, ptr noundef nonnull @pl011_dma_startup.__key) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %223 = load volatile i32, ptr @jiffies, align 128
  %224 = ptrtoint ptr %poll_rate to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %poll_rate, align 4
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %225) #15
  %add = add i32 %call2.i, %223
  %call83 = call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #15
  %last_residue = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14, i32 8
  %226 = ptrtoint ptr %last_residue to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 4096, ptr %last_residue, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %227 = load volatile i32, ptr @jiffies, align 128
  %last_jiffies = getelementptr inbounds %struct.uart_amba_port, ptr %uap, i32 0, i32 14, i32 9
  %228 = ptrtoint ptr %last_jiffies to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %227, ptr %last_jiffies, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body74, %if.end70.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl011_dma_rx_poll(ptr noundef %t) #3 align 64 {
entry:
  %state5 = alloca %struct.dma_tx_state, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -536
  %state = getelementptr i8, ptr %t, i32 -388
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %dmarx3 = getelementptr i8, ptr %t, i32 -120
  %2 = ptrtoint ptr %dmarx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dmarx3, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state5) #15
  %4 = getelementptr inbounds %struct.dma_tx_state, ptr %state5, i32 0, i32 2
  %use_buf_b = getelementptr i8, ptr %t, i32 -60
  %5 = call ptr @memset(ptr %state5, i32 255, i32 16)
  %6 = ptrtoint ptr %use_buf_b to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %use_buf_b, align 4, !range !220
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 49
  %10 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device_tx_status, align 4
  %cookie = getelementptr i8, ptr %t, i32 -8
  %12 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cookie, align 4
  %call = call i32 %11(ptr noundef %3, i32 noundef %13, ptr noundef nonnull %state5) #15
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %4, align 4
  %last_residue = getelementptr i8, ptr %t, i32 48
  %16 = ptrtoint ptr %last_residue to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %last_residue, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp = icmp ugt i32 %17, %15
  br i1 %cmp, label %if.then, label %entry.if.end20_crit_edge, !prof !224

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %cond.v = select i1 %tobool.not, i32 -56, i32 -32
  %cond = getelementptr i8, ptr %t, i32 %cond.v
  %length = getelementptr inbounds %struct.scatterlist, ptr %cond, i32 0, i32 2
  %18 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length, align 4
  %sub = sub i32 %19, %17
  %sub13 = sub i32 %17, %15
  %buf = getelementptr inbounds %struct.pl011_sgbuf, ptr %cond, i32 0, i32 1
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buf, align 4
  %add.ptr14 = getelementptr i8, ptr %21, i32 %sub
  %call.i = call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %1, ptr noundef %add.ptr14, i8 noundef zeroext 0, i32 noundef %sub13) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %sub13)
  %cmp16 = icmp eq i32 %call.i, %sub13
  br i1 %cmp16, label %if.then17, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then17:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %4, align 4
  %24 = ptrtoint ptr %last_residue to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %last_residue, align 4
  br label %if.end

if.end:                                           ; preds = %if.then17, %if.then.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %last_jiffies = getelementptr i8, ptr %t, i32 52
  %26 = ptrtoint ptr %last_jiffies to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %last_jiffies, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end, %entry.if.end20_crit_edge
  call void @tty_flip_buffer_push(ptr noundef %1) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %last_jiffies21 = getelementptr i8, ptr %t, i32 52
  %28 = ptrtoint ptr %last_jiffies21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %last_jiffies21, align 4
  %sub22 = sub i32 %27, %29
  %call23 = call i32 @jiffies_to_msecs(i32 noundef %sub22) #15
  %poll_timeout = getelementptr i8, ptr %t, i32 64
  %30 = ptrtoint ptr %poll_timeout to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %poll_timeout, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call23, i32 %31)
  %cmp25 = icmp ugt i32 %call23, %31
  br i1 %cmp25, label %do.body27, label %if.else

do.body27:                                        ; preds = %if.end20
  %call32 = call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #15
  %dmacr.i = getelementptr i8, ptr %t, i32 -164
  %32 = ptrtoint ptr %dmacr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dmacr.i, align 4
  %and.i = and i32 %33, -2
  store i32 %and.i, ptr %dmacr.i, align 4
  %membase.i.i = getelementptr i8, ptr %t, i32 -488
  %34 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase.i.i, align 4
  %reg_offset.i.i.i = getelementptr i8, ptr %t, i32 -176
  %36 = ptrtoint ptr %reg_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_offset.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i16, ptr %37, i32 14
  %38 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx.i.i.i, align 2
  %conv.i.i.i = zext i16 %39 to i32
  %add.ptr.i.i = getelementptr i8, ptr %35, i32 %conv.i.i.i
  %iotype.i.i = getelementptr i8, ptr %t, i32 -398
  %40 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %iotype.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %41)
  %cmp.i.i = icmp eq i8 %41, 3
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #17
  %42 = call i32 @llvm.bswap.i32(i32 %and.i) #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %42) #15, !srcloc !205
  br label %pl011_dma_rx_stop.exit

if.else.i.i:                                      ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i.i = trunc i32 %and.i to i16
  %43 = call i16 @llvm.bswap.i16(i16 %conv3.i.i) #15
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %43) #15, !srcloc !218
  br label %pl011_dma_rx_stop.exit

pl011_dma_rx_stop.exit:                           ; preds = %if.else.i.i, %if.then.i.i
  %im = getelementptr i8, ptr %t, i32 -160
  %44 = ptrtoint ptr %im to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %im, align 4
  %or = or i32 %45, 16
  store i32 %or, ptr %im, align 4
  %46 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %membase.i.i, align 4
  %48 = ptrtoint ptr %reg_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_offset.i.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %49, i32 10
  %50 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %51 to i32
  %add.ptr.i = getelementptr i8, ptr %47, i32 %conv.i.i
  %52 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %iotype.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %53)
  %cmp.i76 = icmp eq i8 %53, 3
  br i1 %cmp.i76, label %if.then.i77, label %if.else.i78

if.then.i77:                                      ; preds = %pl011_dma_rx_stop.exit
  call void @__sanitizer_cov_trace_pc() #17
  %54 = call i32 @llvm.bswap.i32(i32 %or) #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %54) #15, !srcloc !205
  br label %pl011_write.exit

if.else.i78:                                      ; preds = %pl011_dma_rx_stop.exit
  call void @__sanitizer_cov_trace_pc() #17
  %conv3.i = trunc i32 %or to i16
  %55 = call i16 @llvm.bswap.i16(i16 %conv3.i) #15
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %55) #15, !srcloc !218
  br label %pl011_write.exit

pl011_write.exit:                                 ; preds = %if.else.i78, %if.then.i77
  call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call32) #15
  %running = getelementptr i8, ptr %t, i32 -4
  %56 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %running, align 4
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %3, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %58, i32 0, i32 47
  %59 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %60, null
  br i1 %tobool.not.i, label %pl011_write.exit.dmaengine_terminate_all.exit_crit_edge, label %if.then.i81

pl011_write.exit.dmaengine_terminate_all.exit_crit_edge: ; preds = %pl011_write.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmaengine_terminate_all.exit

if.then.i81:                                      ; preds = %pl011_write.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call.i80 = call i32 %60(ptr noundef %3) #15
  br label %dmaengine_terminate_all.exit

dmaengine_terminate_all.exit:                     ; preds = %if.then.i81, %pl011_write.exit.dmaengine_terminate_all.exit_crit_edge
  %call41 = call i32 @del_timer(ptr noundef %t) #15
  br label %if.end47

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %61 = load volatile i32, ptr @jiffies, align 128
  %poll_rate = getelementptr i8, ptr %t, i32 60
  %62 = ptrtoint ptr %poll_rate to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %poll_rate, align 4
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %63) #15
  %add = add i32 %call2.i, %61
  %call46 = call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #15
  br label %if.end47

if.end47:                                         ; preds = %if.else, %dmaengine_terminate_all.exit
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state5) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_get_slave_caps(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tty_get_frame_size(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_fifosize_arm(ptr nocapture noundef readonly %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %periphid = getelementptr inbounds %struct.amba_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %periphid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %periphid, align 8
  %2 = and i32 %1, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 3145728, i32 %2)
  %cmp = icmp ult i32 %2, 3145728
  %cond = select i1 %cmp, i32 16, i32 32
  ret i32 %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_fifosize_st(ptr nocapture noundef readnone %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 64
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_driver_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nobuiltin }
attributes #20 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !36, !37, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !51, !53, !54, !55, !56, !57, !59, !60, !62, !63, !65, !66, !67, !68, !70, !71, !73, !74, !75, !77, !79, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !118, !119, !120, !122, !123, !124, !125, !127, !128, !129, !131, !132, !134, !135, !137, !139, !140, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !155, !156, !157, !159, !160, !161, !163, !165, !167, !169, !170, !171, !173, !175, !177, !179, !181, !182, !183, !184, !186, !187}
!llvm.module.flags = !{!188, !189, !190, !191, !192, !193, !194, !195}
!llvm.ident = !{!196}

!0 = !{ptr @__UNIQUE_ID___earlycon_pl011300, !1, !"__UNIQUE_ID___earlycon_pl011300", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/amba-pl011.c", i32 2563, i32 1}
!2 = !{ptr @__UNIQUE_ID___earlycon_pl011301, !3, !"__UNIQUE_ID___earlycon_pl011301", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/amba-pl011.c", i32 2564, i32 1}
!4 = !{ptr @__UNIQUE_ID___earlycon_qdf2400_e44302, !5, !"__UNIQUE_ID___earlycon_qdf2400_e44302", i1 false, i1 false}
!5 = !{!"../drivers/tty/serial/amba-pl011.c", i32 2586, i32 1}
!6 = !{ptr @__initcall__kmod_amba_pl011__307_2946_pl011_init3, !7, !"__initcall__kmod_amba_pl011__307_2946_pl011_init3", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/amba-pl011.c", i32 2946, i32 1}
!8 = !{ptr @__exitcall_pl011_exit, !9, !"__exitcall_pl011_exit", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/amba-pl011.c", i32 2947, i32 1}
!10 = !{ptr @__UNIQUE_ID_author308, !11, !"__UNIQUE_ID_author308", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/amba-pl011.c", i32 2949, i32 1}
!12 = !{ptr @__UNIQUE_ID_description309, !13, !"__UNIQUE_ID_description309", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/amba-pl011.c", i32 2950, i32 1}
!14 = !{ptr @__UNIQUE_ID_file310, !15, !"__UNIQUE_ID_file310", i1 false, i1 false}
!15 = !{!"../drivers/tty/serial/amba-pl011.c", i32 2951, i32 1}
!16 = !{ptr @__UNIQUE_ID_license311, !15, !"__UNIQUE_ID_license311", i1 false, i1 false}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/tty/serial/amba-pl011.c", i32 2892, i32 11}
!19 = !{ptr @arm_sbsa_uart_platform_driver, !20, !"arm_sbsa_uart_platform_driver", i1 false, i1 false}
!20 = !{!"../drivers/tty/serial/amba-pl011.c", i32 2888, i32 31}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/tty/serial/amba-pl011.c", i32 2818, i32 34}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/tty/serial/amba-pl011.c", i32 2853, i32 41}
!25 = !{ptr @amba_ports, !26, !"amba_ports", i1 false, i1 false}
!26 = !{!"../drivers/tty/serial/amba-pl011.c", i32 2254, i32 31}
!27 = !{ptr @vendor_sbsa, !28, !"vendor_sbsa", i1 false, i1 false}
!28 = !{!"../drivers/tty/serial/amba-pl011.c", i32 113, i32 33}
!29 = !{ptr @pl011_std_offsets, !30, !"pl011_std_offsets", i1 false, i1 false}
!30 = !{!"../drivers/tty/serial/amba-pl011.c", i32 58, i32 12}
!31 = !{ptr @sbsa_uart_pops, !32, !"sbsa_uart_pops", i1 false, i1 false}
!32 = !{!"../drivers/tty/serial/amba-pl011.c", i32 2234, i32 30}
!33 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/tty/serial/amba-pl011.c", i32 1265, i32 4}
!35 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @pl011_rs485_tx_stop._entry, !34, !"_entry", i1 false, i1 false}
!40 = !{ptr @pl011_rs485_tx_stop._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/tty/serial/amba-pl011.c", i32 617, i32 3}
!43 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @pl011_dma_tx_refill.__UNIQUE_ID_ddebug290, !42, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/tty/serial/amba-pl011.c", i32 630, i32 3}
!48 = !{ptr @pl011_dma_tx_refill.__UNIQUE_ID_ddebug291, !47, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/tty/serial/amba-pl011.c", i32 1748, i32 60}
!51 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/tty/serial/amba-pl011.c", i32 933, i32 3}
!53 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @pl011_dma_rx_irq._entry, !52, !"_entry", i1 false, i1 false}
!56 = !{ptr @pl011_dma_rx_irq._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @pl011_dma_rx_irq._entry.17, !58, !"_entry", i1 false, i1 false}
!58 = !{!"../drivers/tty/serial/amba-pl011.c", i32 937, i32 3}
!59 = !{ptr @pl011_dma_rx_irq._entry_ptr.18, !58, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/tty/serial/amba-pl011.c", i32 958, i32 3}
!62 = !{ptr @pl011_dma_rx_irq.__UNIQUE_ID_ddebug292, !61, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/tty/serial/amba-pl011.c", i32 880, i32 4}
!65 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @pl011_dma_rx_chars._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @pl011_dma_rx_chars._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/tty/serial/amba-pl011.c", i32 1006, i32 3}
!70 = !{ptr @pl011_dma_rx_callback.__UNIQUE_ID_ddebug293, !69, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!71 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/tty/serial/amba-pl011.c", i32 1360, i32 4}
!73 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @pl011_rx_chars.__UNIQUE_ID_ddebug295, !72, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!75 = distinct !{null, !76, !"seen_dev_with_alias", i1 false, i1 false}
!76 = !{!"../drivers/tty/serial/amba-pl011.c", i32 2605, i32 14}
!77 = distinct !{null, !78, !"seen_dev_without_alias", i1 false, i1 false}
!78 = !{!"../drivers/tty/serial/amba-pl011.c", i32 2606, i32 14}
!79 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/tty/serial/amba-pl011.c", i32 2616, i32 28}
!81 = !{ptr @.str.26, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/tty/serial/amba-pl011.c", i32 2623, i32 4}
!83 = !{ptr @.str.27, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @pl011_probe_dt_alias._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @pl011_probe_dt_alias._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.29, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/tty/serial/amba-pl011.c", i32 2629, i32 3}
!88 = !{ptr @pl011_probe_dt_alias._entry.28, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @pl011_probe_dt_alias._entry_ptr.30, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.31, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/tty/serial/amba-pl011.c", i32 2719, i32 4}
!92 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @pl011_register_port._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @pl011_register_port._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.33, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/tty/serial/amba-pl011.c", i32 2594, i32 18}
!97 = !{ptr @amba_reg, !98, !"amba_reg", i1 false, i1 false}
!98 = !{!"../drivers/tty/serial/amba-pl011.c", i32 2592, i32 27}
!99 = !{ptr @amba_console, !100, !"amba_console", i1 false, i1 false}
!100 = !{!"../drivers/tty/serial/amba-pl011.c", i32 2461, i32 23}
!101 = !{ptr @.str.34, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/tty/serial/amba-pl011.c", i32 2431, i32 20}
!103 = !{ptr @.str.35, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/tty/serial/amba-pl011.c", i32 2431, i32 58}
!105 = !{ptr @sbsa_uart_of_match, !106, !"sbsa_uart_of_match", i1 false, i1 false}
!106 = !{!"../drivers/tty/serial/amba-pl011.c", i32 2875, i32 34}
!107 = !{ptr @pl011_dev_pm_ops, !108, !"pl011_dev_pm_ops", i1 false, i1 false}
!108 = !{!"../drivers/tty/serial/amba-pl011.c", i32 2802, i32 8}
!109 = !{ptr @pl011_driver, !110, !"pl011_driver", i1 false, i1 false}
!110 = !{!"../drivers/tty/serial/amba-pl011.c", i32 2916, i32 27}
!111 = !{ptr @.str.36, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/tty/serial/amba-pl011.c", i32 2761, i32 41}
!113 = !{ptr @amba_pl011_pops, !114, !"amba_pl011_pops", i1 false, i1 false}
!114 = !{!"../drivers/tty/serial/amba-pl011.c", i32 2202, i32 30}
!115 = !{ptr @.str.37, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/tty/serial/amba-pl011.c", i32 1090, i32 3}
!117 = !{ptr @.str.38, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @pl011_dma_startup._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @pl011_dma_startup._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.40, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/tty/serial/amba-pl011.c", i32 1108, i32 3}
!122 = !{ptr @pl011_dma_startup._entry.39, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @pl011_dma_startup._entry_ptr.41, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.42, !121, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @pl011_dma_startup._entry.43, !126, !"_entry", i1 false, i1 false}
!126 = !{!"../drivers/tty/serial/amba-pl011.c", i32 1116, i32 3}
!127 = !{ptr @pl011_dma_startup._entry_ptr.44, !126, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.45, !126, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.46, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/tty/serial/amba-pl011.c", i32 1141, i32 4}
!131 = !{ptr @pl011_dma_startup.__UNIQUE_ID_ddebug294, !130, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!132 = !{ptr @pl011_dma_startup.__key, !133, !"__key", i1 false, i1 false}
!133 = !{!"../drivers/tty/serial/amba-pl011.c", i32 1144, i32 4}
!134 = !{ptr @.str.47, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.48, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/tty/serial/amba-pl011.c", i32 386, i32 31}
!137 = !{ptr @.str.49, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/tty/serial/amba-pl011.c", i32 395, i32 4}
!139 = !{ptr @.str.50, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.51, !138, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @pl011_dma_probe._entry, !138, !"_entry", i1 false, i1 false}
!142 = !{ptr @pl011_dma_probe._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.53, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/tty/serial/amba-pl011.c", i32 406, i32 4}
!145 = !{ptr @pl011_dma_probe._entry.52, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @pl011_dma_probe._entry_ptr.54, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.56, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/tty/serial/amba-pl011.c", i32 414, i32 2}
!149 = !{ptr @pl011_dma_probe._entry.55, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @pl011_dma_probe._entry_ptr.57, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.58, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/tty/serial/amba-pl011.c", i32 418, i32 40}
!153 = !{ptr @.str.60, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/tty/serial/amba-pl011.c", i32 424, i32 4}
!155 = !{ptr @pl011_dma_probe._entry.59, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @pl011_dma_probe._entry_ptr.61, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.63, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/tty/serial/amba-pl011.c", i32 449, i32 5}
!159 = !{ptr @pl011_dma_probe._entry.62, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @pl011_dma_probe._entry_ptr.64, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.65, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/tty/serial/amba-pl011.c", i32 480, i32 21}
!163 = !{ptr @.str.66, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/tty/serial/amba-pl011.c", i32 485, i32 7}
!165 = !{ptr @.str.67, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/tty/serial/amba-pl011.c", i32 490, i32 7}
!167 = !{ptr @.str.69, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/tty/serial/amba-pl011.c", i32 496, i32 3}
!169 = !{ptr @pl011_dma_probe._entry.68, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @pl011_dma_probe._entry_ptr.70, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @pl011_ids, !172, !"pl011_ids", i1 false, i1 false}
!172 = !{!"../drivers/tty/serial/amba-pl011.c", i32 2900, i32 29}
!173 = !{ptr @vendor_arm, !174, !"vendor_arm", i1 false, i1 false}
!174 = !{!"../drivers/tty/serial/amba-pl011.c", i32 98, i32 27}
!175 = !{ptr @vendor_st, !176, !"vendor_st", i1 false, i1 false}
!176 = !{!"../drivers/tty/serial/amba-pl011.c", i32 176, i32 27}
!177 = !{ptr @pl011_st_offsets, !178, !"pl011_st_offsets", i1 false, i1 false}
!178 = !{!"../drivers/tty/serial/amba-pl011.c", i32 144, i32 12}
!179 = !{ptr @.str.71, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/tty/serial/amba-pl011.c", i32 2929, i32 2}
!181 = !{ptr @.str.72, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @pl011_init._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @pl011_init._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.74, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/tty/serial/amba-pl011.c", i32 2932, i32 3}
!186 = !{ptr @pl011_init._entry.73, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @pl011_init._entry_ptr.75, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{i32 1, !"wchar_size", i32 2}
!189 = !{i32 1, !"min_enum_size", i32 4}
!190 = !{i32 8, !"branch-target-enforcement", i32 0}
!191 = !{i32 8, !"sign-return-address", i32 0}
!192 = !{i32 8, !"sign-return-address-all", i32 0}
!193 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!194 = !{i32 7, !"uwtable", i32 1}
!195 = !{i32 7, !"frame-pointer", i32 2}
!196 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!197 = !{i64 5920648}
!198 = !{i64 2156110880}
!199 = !{i64 5920428}
!200 = !{i64 2156111663}
!201 = !{i64 2156111420}
!202 = !{i64 2156108626}
!203 = !{i64 2156108907}
!204 = !{i64 2156108749}
!205 = !{i64 5920230}
!206 = !{i64 5920033}
!207 = !{i64 2156110096}
!208 = !{i64 2156110377}
!209 = !{i64 2156110219}
!210 = !{i64 2156106666}
!211 = !{i64 2156106947}
!212 = !{i64 2156106789}
!213 = !{i64 2156107167}
!214 = !{i64 2156107842}
!215 = !{i64 2156108123}
!216 = !{i64 2156107965}
!217 = !{!"auto-init"}
!218 = !{i64 5919610}
!219 = !{i64 5919810}
!220 = !{i8 0, i8 2}
!221 = !{i64 2156085918}
!222 = !{i64 2156085760}
!223 = !{i64 2149026896, i64 2149026901, i64 2149026914, i64 2149026958, i64 2149026992, i64 2149027013}
!224 = !{!"branch_weights", i32 2000, i32 1}
!225 = !{!"branch_weights", i32 1, i32 2000}
!226 = !{i64 2156041926, i64 2156042422, i64 2156041963, i64 2156042019, i64 2156042053, i64 2156042077, i64 2156042118, i64 2156042139, i64 2156042167, i64 2156042201}
!227 = !{i64 2156046302, i64 2156046798, i64 2156046339, i64 2156046395, i64 2156046429, i64 2156046453, i64 2156046494, i64 2156046515, i64 2156046543, i64 2156046577}
!228 = !{i64 817219, i64 817280}
!229 = !{i64 2156104907}
!230 = !{i64 2156104749}
!231 = !{i64 819951}
!232 = !{i64 820236}
!233 = !{i64 2156104004}
!234 = !{i64 2156103846}
!235 = !{i64 2156060852}
!236 = !{i64 2156060694}
!237 = !{i64 2155307746, i64 2155308238, i64 2155307783, i64 2155307839, i64 2155307873, i64 2155307897, i64 2155307938, i64 2155307959, i64 2155307987, i64 2155308021}
!238 = !{i64 2155309356, i64 2155309848, i64 2155309393, i64 2155309449, i64 2155309483, i64 2155309507, i64 2155309548, i64 2155309569, i64 2155309597, i64 2155309631}
