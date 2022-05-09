; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/stm32-usart.c_pt.bc'
source_filename = "../drivers/tty/serial/stm32-usart.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stm32_usart_info = type { %struct.stm32_usart_offsets, %struct.stm32_usart_config }
%struct.stm32_usart_offsets = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.stm32_usart_config = type { i8, i8, i8, i8, i8, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.stm32_port = type { %struct.uart_port, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, i8, i32, ptr, %struct.dma_tx_state }
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
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
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
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }

@stm32f4_info = dso_local global { %struct.stm32_usart_info, [40 x i8] } { %struct.stm32_usart_info { %struct.stm32_usart_offsets { i8 12, i8 16, i8 20, i8 8, i8 24, i8 -1, i8 -1, i8 0, i8 -1, i8 4, i8 4 }, %struct.stm32_usart_config { i8 13, i8 0, i8 0, i8 0, i8 0, i32 1 } }, [40 x i8] zeroinitializer }, align 32
@stm32f7_info = dso_local global { %struct.stm32_usart_info, [40 x i8] } { %struct.stm32_usart_info { %struct.stm32_usart_offsets { i8 0, i8 4, i8 8, i8 12, i8 16, i8 20, i8 24, i8 28, i8 32, i8 36, i8 40 }, %struct.stm32_usart_config { i8 0, i8 1, i8 1, i8 0, i8 0, i32 1 } }, [40 x i8] zeroinitializer }, align 32
@stm32h7_info = dso_local global { %struct.stm32_usart_info, [40 x i8] } { %struct.stm32_usart_info { %struct.stm32_usart_offsets { i8 0, i8 4, i8 8, i8 12, i8 16, i8 20, i8 24, i8 28, i8 32, i8 36, i8 40 }, %struct.stm32_usart_config { i8 0, i8 1, i8 1, i8 1, i8 1, i32 16 } }, [40 x i8] zeroinitializer }, align 32
@stm32_serial_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32_usart_serial_probe, ptr @stm32_usart_serial_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_serial_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@stm32_usart_driver = internal global { %struct.uart_driver, [60 x i8] } { %struct.uart_driver { ptr null, ptr @.str, ptr @.str.43, i32 0, i32 0, i32 8, ptr @stm32_console, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_stm32_usart__240_1899_stm32_usart_init6 = internal global ptr @stm32_usart_init, section ".initcall6.init", align 4
@__exitcall_stm32_usart_exit = internal global ptr @stm32_usart_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias241 = internal constant [39 x i8] c"stm32_usart.alias=platform:stm32-usart\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [68 x i8] c"stm32_usart.description=STMicroelectronics STM32 serial port driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [48 x i8] c"stm32_usart.file=drivers/tty/serial/stm32-usart\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [27 x i8] c"stm32_usart.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stm32-usart\00", [20 x i8] zeroinitializer }, align 32
@stm32_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32f4_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32f7-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32f7_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32h7-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32h7_info }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@stm32_serial_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_usart_serial_suspend, ptr @stm32_usart_serial_resume, ptr @stm32_usart_serial_suspend, ptr @stm32_usart_serial_resume, ptr @stm32_usart_serial_suspend, ptr @stm32_usart_serial_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_usart_runtime_suspend, ptr @stm32_usart_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@stm32_usart_serial_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1549, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"interrupt mode for rx (no dma)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stm32_usart_serial_probe\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/tty/serial/stm32-usart.c\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm32_usart_serial_probe._entry_ptr = internal global ptr @stm32_usart_serial_probe._entry, section ".printk_index", align 4
@stm32_usart_serial_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 1551, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"interrupt mode for tx (no dma)\0A\00", [32 x i8] zeroinitializer }, align 32
@stm32_usart_serial_probe._entry_ptr.10 = internal global ptr @stm32_usart_serial_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@stm32_usart_of_get_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.5, i32 1383, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get alias id, errno %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stm32_usart_of_get_port\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@stm32_usart_of_get_port._entry_ptr = internal global ptr @stm32_usart_of_get_port._entry, section ".printk_index", align 4
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"st,hw-flow-ctrl\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"uart-has-rtscts\00", [16 x i8] zeroinitializer }, align 32
@stm32_ports = internal global { [8 x %struct.stm32_port], [896 x i8] } zeroinitializer, align 32
@stm32_uart_ops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @stm32_usart_tx_empty, ptr @stm32_usart_set_mctrl, ptr @stm32_usart_get_mctrl, ptr @stm32_usart_stop_tx, ptr @stm32_usart_start_tx, ptr @stm32_usart_throttle, ptr @stm32_usart_unthrottle, ptr null, ptr @stm32_usart_stop_rx, ptr @stm32_usart_enable_ms, ptr @stm32_usart_break_ctl, ptr @stm32_usart_startup, ptr @stm32_usart_shutdown, ptr @stm32_usart_flush_buffer, ptr @stm32_usart_set_termios, ptr null, ptr @stm32_usart_pm, ptr @stm32_usart_type, ptr @stm32_usart_release_port, ptr @stm32_usart_request_port, ptr @stm32_usart_config_port, ptr @stm32_usart_verify_port, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wakeup-source\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rx-tx-swap\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx-threshold\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tx-threshold\00", [19 x i8] zeroinitializer }, align 32
@stm32_usart_init_port.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&port->lock\00", [20 x i8] zeroinitializer }, align 32
@stm32_usart_init_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.5, i32 1359, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Conflicting RTS/CTS config\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stm32_usart_init_port\00", [42 x i8] zeroinitializer }, align 32
@stm32_usart_init_port._entry_ptr = internal global ptr @stm32_usart_init_port._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@stm32_usart_transmit_chars._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.5, i32 568, ptr @.str.26, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"1 character may be erased\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"stm32_usart_transmit_chars\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@stm32_usart_transmit_chars._entry_ptr = internal global ptr @stm32_usart_transmit_chars._entry, section ".printk_index", align 4
@stm32_usart_receive_chars.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.28, ptr @.str.5, ptr @.str.29, i8 0, i8 89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stm32_usart\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stm32_usart_receive_chars\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DMA error, fallback to irq mode\0A\00", [63 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@stm32_usart_start_rx_dma_cyclic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.5, i32 855, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rx dma prep cyclic failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"stm32_usart_start_rx_dma_cyclic\00", [32 x i8] zeroinitializer }, align 32
@stm32_usart_start_rx_dma_cyclic._entry_ptr = internal global ptr @stm32_usart_start_rx_dma_cyclic._entry, section ".printk_index", align 4
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@stm32_usart_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.5, i32 952, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Transmission is not complete\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stm32_usart_shutdown\00", [43 x i8] zeroinitializer }, align 32
@stm32_usart_shutdown._entry_ptr = internal global ptr @stm32_usart_shutdown._entry, section ".printk_index", align 4
@stm32_usart_set_termios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.35, ptr @.str.5, i32 997, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stm32_usart_set_termios\00", [40 x i8] zeroinitializer }, align 32
@stm32_usart_set_termios._entry_ptr = internal global ptr @stm32_usart_set_termios._entry, section ".printk_index", align 4
@stm32_usart_set_termios.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.35, ptr @.str.5, ptr @.str.36, i8 1, i8 5, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unsupported data bits config: %u bits\0A\00", [57 x i8] zeroinitializer }, align 32
@stm32h7_usart_fifo_thresh_cfg = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1, i32 2, i32 4, i32 8, i32 12, i32 14, i32 16], [36 x i8] zeroinitializer }, align 32
@stm32_usart_get_ftcfg.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.37, ptr @.str.5, ptr @.str.38, i8 1, i8 62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stm32_usart_get_ftcfg\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s set to %d bytes\0A\00", [44 x i8] zeroinitializer }, align 32
@stm32_usart_of_dma_rx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.5, i32 1448, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rx dma channel config failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"stm32_usart_of_dma_rx_probe\00", [36 x i8] zeroinitializer }, align 32
@stm32_usart_of_dma_rx_probe._entry_ptr = internal global ptr @stm32_usart_of_dma_rx_probe._entry, section ".printk_index", align 4
@stm32_usart_of_dma_tx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.5, i32 1486, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tx dma channel config failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"stm32_usart_of_dma_tx_probe\00", [36 x i8] zeroinitializer }, align 32
@stm32_usart_of_dma_tx_probe._entry_ptr = internal global ptr @stm32_usart_of_dma_tx_probe._entry, section ".printk_index", align 4
@console_suspend_enabled = external dso_local local_unnamed_addr global i8, align 1
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ttySTM\00", [25 x i8] zeroinitializer }, align 32
@stm32_console = internal global { %struct.console, [60 x i8] } { %struct.console { [16 x i8] c"ttySTM\00\00\00\00\00\00\00\00\00\00", ptr @stm32_usart_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @stm32_usart_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @stm32_usart_driver, ptr null }, [60 x i8] zeroinitializer }, align 32
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@stm32_usart_init.banner = internal global [31 x i8] c"STM32 USART driver initialized\00", section ".init.data", align 1
@stm32_usart_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.5, i32 1880, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\016%s\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stm32_usart_init\00", [47 x i8] zeroinitializer }, align 32
@stm32_usart_init._entry_ptr = internal global ptr @stm32_usart_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.47 = private unnamed_addr constant [13 x i8] c"stm32f4_info\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 42, i32 25 }
@___asan_gen_.50 = private unnamed_addr constant [13 x i8] c"stm32f7_info\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 63, i32 25 }
@___asan_gen_.53 = private unnamed_addr constant [13 x i8] c"stm32h7_info\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 85, i32 25 }
@___asan_gen_.56 = private unnamed_addr constant [20 x i8] c"stm32_serial_driver\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1865, i32 31 }
@___asan_gen_.59 = private unnamed_addr constant [19 x i8] c"stm32_usart_driver\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1730, i32 27 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1869, i32 11 }
@___asan_gen_.65 = private unnamed_addr constant [12 x i8] c"stm32_match\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1401, i32 34 }
@___asan_gen_.68 = private unnamed_addr constant [20 x i8] c"stm32_serial_pm_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1858, i32 32 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1518, i32 50 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1527, i32 50 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1549, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1551, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1381, i32 27 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1383, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1391, i32 30 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1392, i32 30 }
@___asan_gen_.122 = private unnamed_addr constant [12 x i8] c"stm32_ports\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [36 x i8] c"../drivers/tty/serial/stm32-usart.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 280, i32 26 }
@___asan_gen_.125 = private unnamed_addr constant [15 x i8] c"stm32_uart_ops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1225, i32 30 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1311, i32 44 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1314, i32 44 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1318, i32 31 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1320, i32 31 }
@___asan_gen_.140 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1329, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1359, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 568, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 358, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 855, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1169, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 952, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 997, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1045, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant [30 x i8] c"stm32h7_usart_fifo_thresh_cfg\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1254, i32 18 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1271, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1448, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1486, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1732, i32 14 }
@___asan_gen_.236 = private unnamed_addr constant [14 x i8] c"stm32_console\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1714, i32 23 }
@___asan_gen_.239 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.246 = private constant [36 x i8] c"../drivers/tty/serial/stm32-usart.c\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1880, i32 2 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @__UNIQUE_ID_alias241, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_stm32_usart_exit, ptr @__initcall__kmod_stm32_usart__240_1899_stm32_usart_init6, ptr @stm32_usart_exit, ptr @stm32_usart_init._entry, ptr @stm32_usart_init._entry_ptr, ptr @stm32_usart_init_port._entry, ptr @stm32_usart_init_port._entry_ptr, ptr @stm32_usart_of_dma_rx_probe._entry, ptr @stm32_usart_of_dma_rx_probe._entry_ptr, ptr @stm32_usart_of_dma_tx_probe._entry, ptr @stm32_usart_of_dma_tx_probe._entry_ptr, ptr @stm32_usart_of_get_port._entry, ptr @stm32_usart_of_get_port._entry_ptr, ptr @stm32_usart_serial_probe._entry, ptr @stm32_usart_serial_probe._entry.8, ptr @stm32_usart_serial_probe._entry_ptr, ptr @stm32_usart_serial_probe._entry_ptr.10, ptr @stm32_usart_set_termios._entry, ptr @stm32_usart_set_termios._entry_ptr, ptr @stm32_usart_shutdown._entry, ptr @stm32_usart_shutdown._entry_ptr, ptr @stm32_usart_start_rx_dma_cyclic._entry, ptr @stm32_usart_start_rx_dma_cyclic._entry_ptr, ptr @stm32_usart_transmit_chars._entry, ptr @stm32_usart_transmit_chars._entry_ptr, ptr @stm32f4_info, ptr @stm32f7_info, ptr @stm32h7_info, ptr @stm32_serial_driver, ptr @stm32_usart_driver, ptr @.str, ptr @stm32_match, ptr @stm32_serial_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @stm32_ports, ptr @stm32_uart_ops, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @stm32_usart_init_port.__key, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @stm32h7_usart_fifo_thresh_cfg, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @stm32_console, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f4_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f7_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_serial_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_usart_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_serial_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_usart_serial_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_usart_serial_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_usart_of_get_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_ports to i32), i32 3584, i32 4480, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_uart_ops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_usart_init_port.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_usart_init_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_usart_transmit_chars._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_usart_start_rx_dma_cyclic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_usart_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_usart_set_termios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_usart_fifo_thresh_cfg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_usart_of_dma_rx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_usart_of_dma_tx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_console to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_usart_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm32_usart_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_serial_driver) #11
  tail call void @uart_unregister_driver(ptr noundef nonnull @stm32_usart_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_usart_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @stm32_usart_init.banner) #14
  %call1 = tail call i32 @uart_register_driver(ptr noundef nonnull @stm32_usart_driver) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_serial_driver, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @uart_unregister_driver(ptr noundef nonnull @stm32_usart_driver) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_usart_serial_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call.i = tail call i32 @of_alias_get_id(ptr noundef nonnull %1, ptr noundef nonnull @.str.11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end3.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.12, i32 noundef %call.i) #14
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call.i)
  %cmp4.i = icmp ugt i32 %call.i, 7
  br i1 %cmp4.i, label %do.end16.i, label %if.end31.i, !prof !141

do.end16.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1387, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end31.i:                                       ; preds = %if.end3.i
  %call.i.i = tail call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.15, ptr noundef null) #11
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.not.i, label %lor.rhs.i, label %if.end31.i.stm32_usart_of_get_port.exit_crit_edge

if.end31.i.stm32_usart_of_get_port.exit_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32_usart_of_get_port.exit

lor.rhs.i:                                        ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i54.i = tail call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.16, ptr noundef null) #11
  %tobool.i55.i = icmp ne ptr %call.i54.i, null
  br label %stm32_usart_of_get_port.exit

stm32_usart_of_get_port.exit:                     ; preds = %lor.rhs.i, %if.end31.i.stm32_usart_of_get_port.exit_crit_edge
  %2 = phi i1 [ true, %if.end31.i.stm32_usart_of_get_port.exit_crit_edge ], [ %tobool.i55.i, %lor.rhs.i ]
  %arrayidx.i = getelementptr [8 x %struct.stm32_port], ptr @stm32_ports, i32 0, i32 %call.i
  %hw_flow_control.i = getelementptr [8 x %struct.stm32_port], ptr @stm32_ports, i32 0, i32 %call.i, i32 14
  %frombool.i = zext i1 %2 to i8
  %3 = ptrtoint ptr %hw_flow_control.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool.i, ptr %hw_flow_control.i, align 2
  %line.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx.i, i32 0, i32 41
  %4 = ptrtoint ptr %line.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call.i, ptr %line.i, align 4
  %cr1_irq.i = getelementptr [8 x %struct.stm32_port], ptr @stm32_ports, i32 0, i32 %call.i, i32 9
  %5 = ptrtoint ptr %cr1_irq.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 32, ptr %cr1_irq.i, align 4
  %cr3_irq.i = getelementptr [8 x %struct.stm32_port], ptr @stm32_ports, i32 0, i32 %call.i, i32 10
  %6 = ptrtoint ptr %cr3_irq.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %cr3_irq.i, align 4
  %last_res.i = getelementptr [8 x %struct.stm32_port], ptr @stm32_ports, i32 0, i32 %call.i, i32 11
  %7 = ptrtoint ptr %last_res.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4096, ptr %last_res.i, align 4
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %stm32_usart_of_get_port.exit.cleanup_crit_edge, label %if.end

stm32_usart_of_get_port.exit.cleanup_crit_edge:   ; preds = %stm32_usart_of_get_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %stm32_usart_of_get_port.exit
  %call1 = tail call ptr @of_device_get_match_data(ptr noundef %dev.i) #11
  %info = getelementptr [8 x %struct.stm32_port], ptr @stm32_ports, i32 0, i32 %call.i, i32 2
  %8 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1, ptr %info, align 4
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc i32 @stm32_usart_init_port(ptr noundef nonnull %arrayidx.i, ptr noundef %pdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %wakeup_src = getelementptr [8 x %struct.stm32_port], ptr @stm32_ports, i32 0, i32 %call.i, i32 19
  %9 = ptrtoint ptr %wakeup_src to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %wakeup_src, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool10.not = icmp eq i8 %10, 0
  br i1 %tobool10.not, label %if.end9.if.end18_crit_edge, label %if.then11

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then11:                                        ; preds = %if.end9
  tail call void @device_set_wakeup_capable(ptr noundef %dev.i, i1 noundef zeroext true) #11
  %irq = getelementptr inbounds %struct.uart_port, ptr %arrayidx.i, i32 0, i32 20
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  %call14 = tail call i32 @dev_pm_set_wake_irq(ptr noundef %dev.i, i32 noundef %12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then11.if.end18_crit_edge, label %if.then11.err_deinit_port_crit_edge

if.then11.err_deinit_port_crit_edge:              ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_deinit_port

if.then11.if.end18_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.end18:                                         ; preds = %if.then11.if.end18_crit_edge, %if.end9.if.end18_crit_edge
  %call20 = tail call ptr @dma_request_chan(ptr noundef %dev.i, ptr noundef nonnull @.str.1) #11
  %rx_ch = getelementptr [8 x %struct.stm32_port], ptr @stm32_ports, i32 0, i32 %call.i, i32 3
  %13 = ptrtoint ptr %rx_ch to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call20, ptr %rx_ch, align 4
  %cmp = icmp eq ptr %call20, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.end18.err_wakeirq_crit_edge, label %if.end24

if.end18.err_wakeirq_crit_edge:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_wakeirq

if.end24:                                         ; preds = %if.end18
  %cmp.i174 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i174, label %if.then27, label %if.end24.if.end29_crit_edge

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %rx_ch to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %rx_ch, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end24.if.end29_crit_edge
  %call31 = tail call ptr @dma_request_chan(ptr noundef %dev.i, ptr noundef nonnull @.str.2) #11
  %tx_ch = getelementptr [8 x %struct.stm32_port], ptr @stm32_ports, i32 0, i32 %call.i, i32 6
  %15 = ptrtoint ptr %tx_ch to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call31, ptr %tx_ch, align 4
  %cmp34 = icmp eq ptr %call31, inttoptr (i32 -517 to ptr)
  br i1 %cmp34, label %if.end29.err_dma_rx_crit_edge, label %if.end36

if.end29.err_dma_rx_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_dma_rx

if.end36:                                         ; preds = %if.end29
  %cmp.i175 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i175, label %if.then39, label %if.end36.if.end41_crit_edge

if.end36.if.end41_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %tx_ch to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %tx_ch, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end36.if.end41_crit_edge
  %17 = ptrtoint ptr %rx_ch to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rx_ch, align 4
  %tobool43.not = icmp eq ptr %18, null
  br i1 %tobool43.not, label %if.end41.if.end49_crit_edge, label %land.lhs.true

if.end41.if.end49_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

land.lhs.true:                                    ; preds = %if.end41
  %call44 = tail call fastcc i32 @stm32_usart_of_dma_rx_probe(ptr noundef nonnull %arrayidx.i, ptr noundef %pdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %land.lhs.true.if.end49_crit_edge, label %if.then46

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then46:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %rx_ch to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx_ch, align 4
  tail call void @dma_release_channel(ptr noundef %20) #11
  %21 = ptrtoint ptr %rx_ch to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %rx_ch, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %land.lhs.true.if.end49_crit_edge, %if.end41.if.end49_crit_edge
  %22 = ptrtoint ptr %tx_ch to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx_ch, align 4
  %tobool51.not = icmp eq ptr %23, null
  br i1 %tobool51.not, label %if.end49.if.end58_crit_edge, label %land.lhs.true52

if.end49.if.end58_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

land.lhs.true52:                                  ; preds = %if.end49
  %call53 = tail call fastcc i32 @stm32_usart_of_dma_tx_probe(ptr noundef nonnull %arrayidx.i, ptr noundef %pdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %land.lhs.true52.if.end58_crit_edge, label %if.then55

land.lhs.true52.if.end58_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.then55:                                        ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %tx_ch to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_ch, align 4
  tail call void @dma_release_channel(ptr noundef %25) #11
  %26 = ptrtoint ptr %tx_ch to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %tx_ch, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %land.lhs.true52.if.end58_crit_edge, %if.end49.if.end58_crit_edge
  %27 = ptrtoint ptr %rx_ch to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx_ch, align 4
  %tobool60.not = icmp eq ptr %28, null
  br i1 %tobool60.not, label %do.end, label %if.end58.if.end63_crit_edge

if.end58.if.end63_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

do.end:                                           ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.3) #14
  br label %if.end63

if.end63:                                         ; preds = %do.end, %if.end58.if.end63_crit_edge
  %29 = ptrtoint ptr %tx_ch to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tx_ch, align 4
  %tobool65.not = icmp eq ptr %30, null
  br i1 %tobool65.not, label %do.end69, label %if.end63.if.end71_crit_edge

if.end63.if.end71_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

do.end69:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.9) #14
  br label %if.end71

if.end71:                                         ; preds = %do.end69, %if.end63.if.end71_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %31 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx.i, ptr %driver_data.i.i, align 4
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #11
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #11, !srcloc !143
  %call.i176 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev.i, i32 noundef 0) #11
  tail call void @pm_runtime_enable(ptr noundef %dev.i) #11
  %call78 = tail call i32 @uart_add_one_port(ptr noundef nonnull @stm32_usart_driver, ptr noundef nonnull %arrayidx.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %err_port

if.end81:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  %call.i177 = tail call i32 @__pm_runtime_idle(ptr noundef %dev.i, i32 noundef 4) #11
  br label %cleanup

err_port:                                         ; preds = %if.end71
  tail call void @__pm_runtime_disable(ptr noundef %dev.i, i1 noundef zeroext true) #11
  %call.i178 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev.i, i32 noundef 2) #11
  tail call fastcc void @pm_runtime_put_noidle(ptr noundef %dev.i)
  %33 = ptrtoint ptr %tx_ch to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tx_ch, align 4
  %tobool89.not = icmp eq ptr %34, null
  br i1 %tobool89.not, label %err_port.if.end92_crit_edge, label %if.then90

err_port.if.end92_crit_edge:                      ; preds = %err_port
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92

if.then90:                                        ; preds = %err_port
  %tx_buf.i = getelementptr [8 x %struct.stm32_port], ptr @stm32_ports, i32 0, i32 %call.i, i32 8
  %35 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tx_buf.i, align 4
  %tobool.not.i179 = icmp eq ptr %36, null
  br i1 %tobool.not.i179, label %if.then90.stm32_usart_of_dma_tx_remove.exit_crit_edge, label %if.then.i

if.then90.stm32_usart_of_dma_tx_remove.exit_crit_edge: ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32_usart_of_dma_tx_remove.exit

if.then.i:                                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #13
  %tx_dma_buf.i = getelementptr [8 x %struct.stm32_port], ptr @stm32_ports, i32 0, i32 %call.i, i32 7
  %37 = ptrtoint ptr %tx_dma_buf.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx_dma_buf.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 4096, ptr noundef nonnull %36, i32 noundef %38, i32 noundef 0) #11
  br label %stm32_usart_of_dma_tx_remove.exit

stm32_usart_of_dma_tx_remove.exit:                ; preds = %if.then.i, %if.then90.stm32_usart_of_dma_tx_remove.exit_crit_edge
  %39 = ptrtoint ptr %tx_ch to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tx_ch, align 4
  tail call void @dma_release_channel(ptr noundef %40) #11
  br label %if.end92

if.end92:                                         ; preds = %stm32_usart_of_dma_tx_remove.exit, %err_port.if.end92_crit_edge
  %41 = ptrtoint ptr %rx_ch to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rx_ch, align 4
  %tobool94.not = icmp eq ptr %42, null
  br i1 %tobool94.not, label %if.end92.err_wakeirq_crit_edge, label %if.then95

if.end92.err_wakeirq_crit_edge:                   ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_wakeirq

if.then95:                                        ; preds = %if.end92
  %rx_buf.i = getelementptr [8 x %struct.stm32_port], ptr @stm32_ports, i32 0, i32 %call.i, i32 5
  %43 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rx_buf.i, align 4
  %tobool.not.i182 = icmp eq ptr %44, null
  br i1 %tobool.not.i182, label %if.then95.err_dma_rx_crit_edge, label %if.then.i184

if.then95.err_dma_rx_crit_edge:                   ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_dma_rx

if.then.i184:                                     ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #13
  %rx_dma_buf.i = getelementptr [8 x %struct.stm32_port], ptr @stm32_ports, i32 0, i32 %call.i, i32 4
  %45 = ptrtoint ptr %rx_dma_buf.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rx_dma_buf.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 4096, ptr noundef nonnull %44, i32 noundef %46, i32 noundef 0) #11
  br label %err_dma_rx

err_dma_rx:                                       ; preds = %if.then.i184, %if.then95.err_dma_rx_crit_edge, %if.end29.err_dma_rx_crit_edge
  %ret.0.ph = phi i32 [ %call78, %if.then.i184 ], [ %call78, %if.then95.err_dma_rx_crit_edge ], [ -517, %if.end29.err_dma_rx_crit_edge ]
  %47 = ptrtoint ptr %rx_ch to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pr = load ptr, ptr %rx_ch, align 4
  %tobool98.not = icmp eq ptr %.pr, null
  br i1 %tobool98.not, label %err_dma_rx.err_wakeirq_crit_edge, label %if.then99

err_dma_rx.err_wakeirq_crit_edge:                 ; preds = %err_dma_rx
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_wakeirq

if.then99:                                        ; preds = %err_dma_rx
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dma_release_channel(ptr noundef nonnull %.pr) #11
  br label %err_wakeirq

err_wakeirq:                                      ; preds = %if.then99, %err_dma_rx.err_wakeirq_crit_edge, %if.end92.err_wakeirq_crit_edge, %if.end18.err_wakeirq_crit_edge
  %ret.1 = phi i32 [ %ret.0.ph, %if.then99 ], [ %ret.0.ph, %err_dma_rx.err_wakeirq_crit_edge ], [ -517, %if.end18.err_wakeirq_crit_edge ], [ %call78, %if.end92.err_wakeirq_crit_edge ]
  %48 = ptrtoint ptr %wakeup_src to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %wakeup_src, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool103.not = icmp eq i8 %49, 0
  br i1 %tobool103.not, label %err_wakeirq.if.end111_crit_edge, label %if.then104

err_wakeirq.if.end111_crit_edge:                  ; preds = %err_wakeirq
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end111

if.then104:                                       ; preds = %err_wakeirq
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dev_pm_clear_wake_irq(ptr noundef %dev.i) #11
  br label %err_deinit_port

err_deinit_port:                                  ; preds = %if.then104, %if.then11.err_deinit_port_crit_edge
  %ret.2.ph = phi i32 [ %ret.1, %if.then104 ], [ %call14, %if.then11.err_deinit_port_crit_edge ]
  %50 = ptrtoint ptr %wakeup_src to i32
  call void @__asan_load1_noabort(i32 %50)
  %.pr200 = load i8, ptr %wakeup_src, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr200)
  %tobool108.not = icmp eq i8 %.pr200, 0
  br i1 %tobool108.not, label %err_deinit_port.if.end111_crit_edge, label %if.then109

err_deinit_port.if.end111_crit_edge:              ; preds = %err_deinit_port
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end111

if.then109:                                       ; preds = %err_deinit_port
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @device_set_wakeup_capable(ptr noundef %dev.i, i1 noundef zeroext false) #11
  br label %if.end111

if.end111:                                        ; preds = %if.then109, %err_deinit_port.if.end111_crit_edge, %err_wakeirq.if.end111_crit_edge
  %ret.2205 = phi i32 [ %ret.2.ph, %if.then109 ], [ %ret.2.ph, %err_deinit_port.if.end111_crit_edge ], [ %ret.1, %err_wakeirq.if.end111_crit_edge ]
  %clk.i = getelementptr [8 x %struct.stm32_port], ptr @stm32_ports, i32 0, i32 %call.i, i32 1
  %51 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %52) #11
  tail call void @clk_unprepare(ptr noundef %52) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end111, %if.end81, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %stm32_usart_of_get_port.exit.cleanup_crit_edge, %do.end16.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2205, %if.end111 ], [ 0, %if.end81 ], [ -19, %stm32_usart_of_get_port.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ -19, %do.end.i ], [ -19, %do.end16.i ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_usart_serial_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %info = getelementptr inbounds %struct.stm32_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #11
  %call4 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @stm32_usart_driver, ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #11
  %call.i66 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #11
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !144
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #11, !srcloc !145
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.end.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.end.pm_runtime_put_noidle.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !146
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.end.pm_runtime_put_noidle.exit_crit_edge
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %3, align 1
  %conv = zext i8 %6 to i32
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 %conv
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !147
  %10 = and i32 %9, -65537
  %11 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %12, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %10) #11, !srcloc !148
  %13 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i, align 4
  %cr39 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %3, i32 0, i32 2
  %15 = ptrtoint ptr %cr39 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cr39, align 1
  %conv10 = zext i8 %16 to i32
  %add.ptr = getelementptr i8, ptr %14, i32 %conv10
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !147
  %18 = and i32 %17, -1092616193
  %19 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase.i, align 4
  %21 = ptrtoint ptr %cr39 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cr39, align 1
  %conv16 = zext i8 %22 to i32
  %add.ptr17 = getelementptr i8, ptr %20, i32 %conv16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %18) #11, !srcloc !148
  %tx_ch = getelementptr inbounds %struct.stm32_port, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %tx_ch to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx_ch, align 4
  %tobool18.not = icmp eq ptr %24, null
  br i1 %tobool18.not, label %pm_runtime_put_noidle.exit.if.end21_crit_edge, label %if.then19

pm_runtime_put_noidle.exit.if.end21_crit_edge:    ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then19:                                        ; preds = %pm_runtime_put_noidle.exit
  %tx_buf.i = getelementptr inbounds %struct.stm32_port, ptr %1, i32 0, i32 8
  %25 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tx_buf.i, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.then19.stm32_usart_of_dma_tx_remove.exit_crit_edge, label %if.then.i

if.then19.stm32_usart_of_dma_tx_remove.exit_crit_edge: ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32_usart_of_dma_tx_remove.exit

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  %tx_dma_buf.i = getelementptr inbounds %struct.stm32_port, ptr %1, i32 0, i32 7
  %27 = ptrtoint ptr %tx_dma_buf.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_dma_buf.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 4096, ptr noundef nonnull %26, i32 noundef %28, i32 noundef 0) #11
  br label %stm32_usart_of_dma_tx_remove.exit

stm32_usart_of_dma_tx_remove.exit:                ; preds = %if.then.i, %if.then19.stm32_usart_of_dma_tx_remove.exit_crit_edge
  %29 = ptrtoint ptr %tx_ch to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tx_ch, align 4
  tail call void @dma_release_channel(ptr noundef %30) #11
  br label %if.end21

if.end21:                                         ; preds = %stm32_usart_of_dma_tx_remove.exit, %pm_runtime_put_noidle.exit.if.end21_crit_edge
  %rx_ch = getelementptr inbounds %struct.stm32_port, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %rx_ch to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rx_ch, align 4
  %tobool22.not = icmp eq ptr %32, null
  br i1 %tobool22.not, label %if.end21.if.end25_crit_edge, label %if.then23

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then23:                                        ; preds = %if.end21
  %rx_buf.i = getelementptr inbounds %struct.stm32_port, ptr %1, i32 0, i32 5
  %33 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rx_buf.i, align 4
  %tobool.not.i67 = icmp eq ptr %34, null
  br i1 %tobool.not.i67, label %if.then23.stm32_usart_of_dma_rx_remove.exit_crit_edge, label %if.then.i69

if.then23.stm32_usart_of_dma_rx_remove.exit_crit_edge: ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32_usart_of_dma_rx_remove.exit

if.then.i69:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %rx_dma_buf.i = getelementptr inbounds %struct.stm32_port, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %rx_dma_buf.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_dma_buf.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 4096, ptr noundef nonnull %34, i32 noundef %36, i32 noundef 0) #11
  br label %stm32_usart_of_dma_rx_remove.exit

stm32_usart_of_dma_rx_remove.exit:                ; preds = %if.then.i69, %if.then23.stm32_usart_of_dma_rx_remove.exit_crit_edge
  %37 = ptrtoint ptr %rx_ch to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rx_ch, align 4
  tail call void @dma_release_channel(ptr noundef %38) #11
  br label %if.end25

if.end25:                                         ; preds = %stm32_usart_of_dma_rx_remove.exit, %if.end21.if.end25_crit_edge
  %39 = ptrtoint ptr %cr39 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %cr39, align 1
  %conv27 = zext i8 %40 to i32
  %41 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %membase.i, align 4
  %add.ptr.i71 = getelementptr i8, ptr %42, i32 %conv27
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i71) #11, !srcloc !147
  %44 = and i32 %43, 2147483647
  %45 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %membase.i, align 4
  %add.ptr2.i73 = getelementptr i8, ptr %46, i32 %conv27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i73, i32 %44) #11, !srcloc !148
  %wakeup_src = getelementptr inbounds %struct.stm32_port, ptr %1, i32 0, i32 19
  %47 = ptrtoint ptr %wakeup_src to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %wakeup_src, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool28.not = icmp eq i8 %48, 0
  br i1 %tobool28.not, label %if.end25.if.end33_crit_edge, label %if.then29

if.end25.if.end33_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dev_pm_clear_wake_irq(ptr noundef %dev) #11
  %call32 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext false) #11
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.end25.if.end33_crit_edge
  %clk.i = getelementptr inbounds %struct.stm32_port, ptr %1, i32 0, i32 1
  %49 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %50) #11
  tail call void @clk_unprepare(ptr noundef %50) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %entry.cleanup_crit_edge
  ret i32 %call4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_usart_init_port(ptr noundef %stm32port, ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  %bytes.i146 = alloca i32, align 4
  %bytes.i = alloca i32, align 4
  %res = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #11
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !149
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %iotype = getelementptr inbounds %struct.uart_port, ptr %stm32port, i32 0, i32 26
  %1 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 2, ptr %iotype, align 2
  %flags = getelementptr inbounds %struct.uart_port, ptr %stm32port, i32 0, i32 33
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 268435456, ptr %flags, align 4
  %ops = getelementptr inbounds %struct.uart_port, ptr %stm32port, i32 0, i32 39
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @stm32_uart_ops, ptr %ops, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %dev2 = getelementptr inbounds %struct.uart_port, ptr %stm32port, i32 0, i32 45
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %dev2, align 4
  %info = getelementptr inbounds %struct.stm32_port, ptr %stm32port, i32 0, i32 2
  %5 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %info, align 4
  %fifosize = getelementptr inbounds %struct.stm32_usart_info, ptr %6, i32 0, i32 1, i32 5
  %7 = ptrtoint ptr %fifosize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fifosize, align 4
  %fifosize3 = getelementptr inbounds %struct.uart_port, ptr %stm32port, i32 0, i32 23
  %9 = ptrtoint ptr %fifosize3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %fifosize3, align 4
  %has_sysrq = getelementptr inbounds %struct.uart_port, ptr %stm32port, i32 0, i32 48
  %10 = ptrtoint ptr %has_sysrq to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %has_sysrq, align 4
  %irq4 = getelementptr inbounds %struct.uart_port, ptr %stm32port, i32 0, i32 20
  %11 = ptrtoint ptr %irq4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call, ptr %irq4, align 4
  %rs485_config = getelementptr inbounds %struct.uart_port, ptr %stm32port, i32 0, i32 18
  %12 = ptrtoint ptr %rs485_config to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @stm32_usart_config_rs485, ptr %rs485_config, align 4
  %rs485.i = getelementptr inbounds %struct.uart_port, ptr %stm32port, i32 0, i32 56
  %13 = ptrtoint ptr %rs485.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %rs485.i, align 4
  %delay_rts_before_send.i = getelementptr inbounds %struct.uart_port, ptr %stm32port, i32 0, i32 56, i32 1
  %14 = ptrtoint ptr %delay_rts_before_send.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %delay_rts_before_send.i, align 4
  %delay_rts_after_send.i = getelementptr inbounds %struct.uart_port, ptr %stm32port, i32 0, i32 56, i32 2
  %15 = ptrtoint ptr %delay_rts_after_send.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %delay_rts_after_send.i, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %16 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %stm32_usart_init_rs485.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

stm32_usart_init_rs485.exit:                      ; preds = %if.end
  %call.i = tail call i32 @uart_get_rs485_mode(ptr noundef %stm32port) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end7, label %stm32_usart_init_rs485.exit.cleanup_crit_edge

stm32_usart_init_rs485.exit.cleanup_crit_edge:    ; preds = %stm32_usart_init_rs485.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %stm32_usart_init_rs485.exit
  %18 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %info, align 4
  %has_wakeup = getelementptr inbounds %struct.stm32_usart_info, ptr %19, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %has_wakeup to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %has_wakeup, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool10.not = icmp eq i8 %21, 0
  br i1 %tobool10.not, label %if.end7.land.end_crit_edge, label %land.rhs

if.end7.land.end_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.rhs:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node.i, align 8
  %call.i140 = tail call ptr @of_find_property(ptr noundef %23, ptr noundef nonnull @.str.17, ptr noundef null) #11
  %tobool.i = icmp ne ptr %call.i140, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end7.land.end_crit_edge
  %24 = phi i1 [ false, %if.end7.land.end_crit_edge ], [ %tobool.i, %land.rhs ]
  %wakeup_src = getelementptr inbounds %struct.stm32_port, ptr %stm32port, i32 0, i32 19
  %frombool = zext i1 %24 to i8
  %25 = ptrtoint ptr %wakeup_src to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool, ptr %wakeup_src, align 4
  %26 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %info, align 4
  %has_swap = getelementptr inbounds %struct.stm32_usart_info, ptr %27, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %has_swap to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %has_swap, align 2, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool15.not = icmp eq i8 %29, 0
  br i1 %tobool15.not, label %land.end.land.end20_crit_edge, label %land.rhs16

land.end.land.end20_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end20

land.rhs16:                                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node.i, align 8
  %call.i141 = tail call ptr @of_find_property(ptr noundef %31, ptr noundef nonnull @.str.18, ptr noundef null) #11
  %tobool.i142 = icmp ne ptr %call.i141, null
  br label %land.end20

land.end20:                                       ; preds = %land.rhs16, %land.end.land.end20_crit_edge
  %32 = phi i1 [ false, %land.end.land.end20_crit_edge ], [ %tobool.i142, %land.rhs16 ]
  %swap = getelementptr inbounds %struct.stm32_port, ptr %stm32port, i32 0, i32 15
  %frombool21 = zext i1 %32 to i8
  %33 = ptrtoint ptr %swap to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %frombool21, ptr %swap, align 1
  %34 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %info, align 4
  %has_fifo = getelementptr inbounds %struct.stm32_usart_info, ptr %35, i32 0, i32 1, i32 4
  %36 = ptrtoint ptr %has_fifo to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %has_fifo, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool24.not = icmp eq i8 %37, 0
  %fifoen = getelementptr inbounds %struct.stm32_port, ptr %stm32port, i32 0, i32 16
  %38 = ptrtoint ptr %fifoen to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %fifoen, align 4
  br i1 %tobool24.not, label %land.end20.if.end29_crit_edge, label %if.then28

land.end20.if.end29_crit_edge:                    ; preds = %land.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then28:                                        ; preds = %land.end20
  %rxftcfg = getelementptr inbounds %struct.stm32_port, ptr %stm32port, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes.i) #11
  %39 = ptrtoint ptr %bytes.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %bytes.i, align 4, !annotation !149
  %40 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %of_node.i, align 8
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %41, ptr noundef nonnull @.str.19, ptr noundef nonnull %bytes.i, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i144 = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i144, label %if.end.i145, label %for.inc.2.thread.i

for.inc.2.thread.i:                               ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %bytes.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 8, ptr %bytes.i, align 4
  br label %for.end.i

if.end.i145:                                      ; preds = %if.then28
  %43 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pr.i = load i32, ptr %bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr.i)
  %cmp1.not.i = icmp ugt i32 %.pr.i, 1
  br i1 %cmp1.not.i, label %for.inc.i, label %if.end.i145.for.end.i_crit_edge

if.end.i145.for.end.i_crit_edge:                  ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.i:                                        ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr.i)
  %cmp1.not.1.not.i = icmp eq i32 %.pr.i, 2
  br i1 %cmp1.not.1.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.1.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr.i)
  %cmp1.not.2.i = icmp ugt i32 %.pr.i, 4
  br i1 %cmp1.not.2.i, label %for.inc.2.i, label %for.inc.1.i.for.end.i_crit_edge

for.inc.1.i.for.end.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %.pr.i)
  %cmp1.not.3.i = icmp ugt i32 %.pr.i, 8
  br i1 %cmp1.not.3.i, label %for.inc.3.i, label %for.inc.2.i.for.end.i_crit_edge

for.inc.2.i.for.end.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %.pr.i)
  %cmp1.not.4.i = icmp ugt i32 %.pr.i, 12
  br i1 %cmp1.not.4.i, label %for.inc.4.i, label %for.inc.3.i.for.end.i_crit_edge

for.inc.3.i.for.end.i_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %.pr.i)
  %cmp1.not.5.i = icmp ugt i32 %.pr.i, 14
  br i1 %cmp1.not.5.i, label %for.inc.5.i, label %for.inc.4.i.for.end.i_crit_edge

for.inc.4.i.for.end.i_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %.pr.i)
  %cmp1.not.6.i = icmp ugt i32 %.pr.i, 16
  %spec.select.i = select i1 %cmp1.not.6.i, i32 7, i32 6
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.5.i, %for.inc.4.i.for.end.i_crit_edge, %for.inc.3.i.for.end.i_crit_edge, %for.inc.2.i.for.end.i_crit_edge, %for.inc.1.i.for.end.i_crit_edge, %for.inc.i.for.end.i_crit_edge, %if.end.i145.for.end.i_crit_edge, %for.inc.2.thread.i
  %i.0.lcssa.i = phi i32 [ 0, %if.end.i145.for.end.i_crit_edge ], [ 1, %for.inc.i.for.end.i_crit_edge ], [ 2, %for.inc.1.i.for.end.i_crit_edge ], [ 3, %for.inc.2.i.for.end.i_crit_edge ], [ 4, %for.inc.3.i.for.end.i_crit_edge ], [ 5, %for.inc.4.i.for.end.i_crit_edge ], [ 3, %for.inc.2.thread.i ], [ %spec.select.i, %for.inc.5.i ]
  %44 = call i32 @llvm.umin.i32(i32 %i.0.lcssa.i, i32 6) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_usart_get_ftcfg.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_usart_init_port, %if.then11.i)) #11
          to label %stm32_usart_get_ftcfg.exit [label %if.then11.i], !srcloc !150

if.then11.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx13.i = getelementptr [7 x i32], ptr @stm32h7_usart_fifo_thresh_cfg, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx13.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_usart_get_ftcfg.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.19, i32 noundef %46) #11
  br label %stm32_usart_get_ftcfg.exit

stm32_usart_get_ftcfg.exit:                       ; preds = %if.then11.i, %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool15.not.i = icmp eq i32 %44, 0
  %sub.i = add nsw i32 %44, -1
  %storemerge.i = select i1 %tobool15.not.i, i32 -22, i32 %sub.i
  %47 = ptrtoint ptr %rxftcfg to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %storemerge.i, ptr %rxftcfg, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes.i) #11
  %txftcfg = getelementptr inbounds %struct.stm32_port, ptr %stm32port, i32 0, i32 18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes.i146) #11
  %48 = ptrtoint ptr %bytes.i146 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %bytes.i146, align 4, !annotation !149
  %49 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %of_node.i, align 8
  %call.i.i.i149 = call i32 @of_property_read_variable_u32_array(ptr noundef %50, ptr noundef nonnull @.str.20, ptr noundef nonnull %bytes.i146, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i149)
  %tobool.not.i150 = icmp sgt i32 %call.i.i.i149, -1
  br i1 %tobool.not.i150, label %if.end.i154, label %for.inc.2.thread.i151

for.inc.2.thread.i151:                            ; preds = %stm32_usart_get_ftcfg.exit
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %bytes.i146 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 8, ptr %bytes.i146, align 4
  br label %for.end.i169

if.end.i154:                                      ; preds = %stm32_usart_get_ftcfg.exit
  %52 = ptrtoint ptr %bytes.i146 to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pr.i152 = load i32, ptr %bytes.i146, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr.i152)
  %cmp1.not.i153 = icmp ugt i32 %.pr.i152, 1
  br i1 %cmp1.not.i153, label %for.inc.i156, label %if.end.i154.for.end.i169_crit_edge

if.end.i154.for.end.i169_crit_edge:               ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i169

for.inc.i156:                                     ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr.i152)
  %cmp1.not.1.not.i155 = icmp eq i32 %.pr.i152, 2
  br i1 %cmp1.not.1.not.i155, label %for.inc.i156.for.end.i169_crit_edge, label %for.inc.1.i158

for.inc.i156.for.end.i169_crit_edge:              ; preds = %for.inc.i156
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i169

for.inc.1.i158:                                   ; preds = %for.inc.i156
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr.i152)
  %cmp1.not.2.i157 = icmp ugt i32 %.pr.i152, 4
  br i1 %cmp1.not.2.i157, label %for.inc.2.i160, label %for.inc.1.i158.for.end.i169_crit_edge

for.inc.1.i158.for.end.i169_crit_edge:            ; preds = %for.inc.1.i158
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i169

for.inc.2.i160:                                   ; preds = %for.inc.1.i158
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %.pr.i152)
  %cmp1.not.3.i159 = icmp ugt i32 %.pr.i152, 8
  br i1 %cmp1.not.3.i159, label %for.inc.3.i162, label %for.inc.2.i160.for.end.i169_crit_edge

for.inc.2.i160.for.end.i169_crit_edge:            ; preds = %for.inc.2.i160
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i169

for.inc.3.i162:                                   ; preds = %for.inc.2.i160
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %.pr.i152)
  %cmp1.not.4.i161 = icmp ugt i32 %.pr.i152, 12
  br i1 %cmp1.not.4.i161, label %for.inc.4.i164, label %for.inc.3.i162.for.end.i169_crit_edge

for.inc.3.i162.for.end.i169_crit_edge:            ; preds = %for.inc.3.i162
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i169

for.inc.4.i164:                                   ; preds = %for.inc.3.i162
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %.pr.i152)
  %cmp1.not.5.i163 = icmp ugt i32 %.pr.i152, 14
  br i1 %cmp1.not.5.i163, label %for.inc.5.i167, label %for.inc.4.i164.for.end.i169_crit_edge

for.inc.4.i164.for.end.i169_crit_edge:            ; preds = %for.inc.4.i164
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i169

for.inc.5.i167:                                   ; preds = %for.inc.4.i164
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %.pr.i152)
  %cmp1.not.6.i165 = icmp ugt i32 %.pr.i152, 16
  %spec.select.i166 = select i1 %cmp1.not.6.i165, i32 7, i32 6
  br label %for.end.i169

for.end.i169:                                     ; preds = %for.inc.5.i167, %for.inc.4.i164.for.end.i169_crit_edge, %for.inc.3.i162.for.end.i169_crit_edge, %for.inc.2.i160.for.end.i169_crit_edge, %for.inc.1.i158.for.end.i169_crit_edge, %for.inc.i156.for.end.i169_crit_edge, %if.end.i154.for.end.i169_crit_edge, %for.inc.2.thread.i151
  %i.0.lcssa.i168 = phi i32 [ 0, %if.end.i154.for.end.i169_crit_edge ], [ 1, %for.inc.i156.for.end.i169_crit_edge ], [ 2, %for.inc.1.i158.for.end.i169_crit_edge ], [ 3, %for.inc.2.i160.for.end.i169_crit_edge ], [ 4, %for.inc.3.i162.for.end.i169_crit_edge ], [ 5, %for.inc.4.i164.for.end.i169_crit_edge ], [ 3, %for.inc.2.thread.i151 ], [ %spec.select.i166, %for.inc.5.i167 ]
  %53 = call i32 @llvm.umin.i32(i32 %i.0.lcssa.i168, i32 6) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_usart_get_ftcfg.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_usart_init_port, %if.then11.i171)) #11
          to label %stm32_usart_get_ftcfg.exit175 [label %if.then11.i171], !srcloc !150

if.then11.i171:                                   ; preds = %for.end.i169
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx13.i170 = getelementptr [7 x i32], ptr @stm32h7_usart_fifo_thresh_cfg, i32 0, i32 %53
  %54 = ptrtoint ptr %arrayidx13.i170 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx13.i170, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_usart_get_ftcfg.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.20, i32 noundef %55) #11
  br label %stm32_usart_get_ftcfg.exit175

stm32_usart_get_ftcfg.exit175:                    ; preds = %if.then11.i171, %for.end.i169
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool15.not.i172 = icmp eq i32 %53, 0
  %sub.i173 = add nsw i32 %53, -1
  %storemerge.i174 = select i1 %tobool15.not.i172, i32 -22, i32 %sub.i173
  %56 = ptrtoint ptr %txftcfg to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %storemerge.i174, ptr %txftcfg, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes.i146) #11
  br label %if.end29

if.end29:                                         ; preds = %stm32_usart_get_ftcfg.exit175, %land.end20.if.end29_crit_edge
  %call30 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res) #11
  %membase = getelementptr inbounds %struct.uart_port, ptr %stm32port, i32 0, i32 2
  %57 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call30, ptr %membase, align 4
  %cmp.i = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %call30 to i32
  br label %cleanup

if.end36:                                         ; preds = %if.end29
  %59 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %res, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %stm32port, i32 0, i32 43
  %63 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %mapbase, align 4
  call void @__raw_spin_lock_init(ptr noundef %stm32port, ptr noundef nonnull @.str.21, ptr noundef nonnull @stm32_usart_init_port.__key, i16 noundef signext 3) #11
  %call39 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #11
  %clk = getelementptr inbounds %struct.stm32_port, ptr %stm32port, i32 0, i32 1
  %64 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call39, ptr %clk, align 4
  %cmp.i176 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i176, label %if.then42, label %if.end45

if.then42:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  %65 = ptrtoint ptr %call39 to i32
  br label %cleanup

if.end45:                                         ; preds = %if.end36
  %call.i177 = call i32 @clk_prepare(ptr noundef %call39) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i177)
  %tobool.not.i178 = icmp eq i32 %call.i177, 0
  br i1 %tobool.not.i178, label %if.end.i179, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i179:                                      ; preds = %if.end45
  %call1.i = call i32 @clk_enable(ptr noundef %call39) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end50, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #13
  call void @clk_unprepare(ptr noundef %call39) #11
  br label %cleanup

if.end50:                                         ; preds = %if.end.i179
  %66 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %clk, align 4
  %call52 = call i32 @clk_get_rate(ptr noundef %67) #11
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %stm32port, i32 0, i32 22
  %68 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %call52, ptr %uartclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool56.not = icmp eq i32 %call52, 0
  br i1 %tobool56.not, label %if.end50.err_clk_crit_edge, label %if.end58

if.end50.err_clk_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_clk

if.end58:                                         ; preds = %if.end50
  %call60 = call ptr @mctrl_gpio_init(ptr noundef %stm32port, i32 noundef 0) #11
  %gpios = getelementptr inbounds %struct.stm32_port, ptr %stm32port, i32 0, i32 21
  %69 = ptrtoint ptr %gpios to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call60, ptr %gpios, align 4
  %cmp.i181 = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i181, label %if.then63, label %if.end66

if.then63:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %call60 to i32
  br label %err_clk

if.end66:                                         ; preds = %if.end58
  %hw_flow_control = getelementptr inbounds %struct.stm32_port, ptr %stm32port, i32 0, i32 14
  %71 = ptrtoint ptr %hw_flow_control to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %hw_flow_control, align 2, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool67.not = icmp eq i8 %72, 0
  br i1 %tobool67.not, label %if.end66.cleanup_crit_edge, label %if.then68

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then68:                                        ; preds = %if.end66
  %call70 = call ptr @mctrl_gpio_to_gpiod(ptr noundef %call60, i32 noundef 0) #11
  %tobool71.not = icmp eq ptr %call70, null
  br i1 %tobool71.not, label %lor.lhs.false, label %if.then68.do.end78_crit_edge

if.then68.do.end78_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end78

lor.lhs.false:                                    ; preds = %if.then68
  %73 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %gpios, align 4
  %call73 = call ptr @mctrl_gpio_to_gpiod(ptr noundef %74, i32 noundef 4) #11
  %tobool74.not = icmp eq ptr %call73, null
  br i1 %tobool74.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.do.end78_crit_edge

lor.lhs.false.do.end78_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end78

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end78:                                         ; preds = %lor.lhs.false.do.end78_crit_edge, %if.then68.do.end78_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #14
  br label %err_clk

err_clk:                                          ; preds = %do.end78, %if.then63, %if.end50.err_clk_crit_edge
  %ret.0 = phi i32 [ %70, %if.then63 ], [ -22, %do.end78 ], [ -22, %if.end50.err_clk_crit_edge ]
  %75 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %76) #11
  call void @clk_unprepare(ptr noundef %76) #11
  br label %cleanup

cleanup:                                          ; preds = %err_clk, %lor.lhs.false.cleanup_crit_edge, %if.end66.cleanup_crit_edge, %if.then3.i, %if.end45.cleanup_crit_edge, %if.then42, %if.then33, %stm32_usart_init_rs485.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %58, %if.then33 ], [ %65, %if.then42 ], [ %ret.0, %err_clk ], [ %call, %entry.cleanup_crit_edge ], [ %call.i, %stm32_usart_init_rs485.exit.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end66.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i177, %if.end45.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_set_wake_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_usart_of_dma_rx_probe(ptr noundef %stm32port, ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  %config = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.stm32_port, ptr %stm32port, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %config) #11
  %cons = getelementptr inbounds %struct.uart_port, ptr %stm32port, i32 0, i32 32
  %2 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cons, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.console, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %index, align 2
  %conv = sext i16 %5 to i32
  %line = getelementptr inbounds %struct.uart_port, ptr %stm32port, i32 0, i32 41
  %6 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp = icmp eq i32 %7, %conv
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %rx_dma_buf = getelementptr inbounds %struct.stm32_port, ptr %stm32port, i32 0, i32 4
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev3, i32 noundef 4096, ptr noundef %rx_dma_buf, i32 noundef 3264, i32 noundef 0) #11
  %rx_buf = getelementptr inbounds %struct.stm32_port, ptr %stm32port, i32 0, i32 5
  %8 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %rx_buf, align 4
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %9 = call ptr @memset(ptr %config, i32 0, i32 48)
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %stm32port, i32 0, i32 43
  %10 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mapbase, align 4
  %rdr = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %rdr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rdr, align 1
  %conv10 = zext i8 %13 to i32
  %add = add i32 %11, %conv10
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 1
  %14 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %src_addr, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 3
  %15 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %src_addr_width, align 4
  %rx_ch = getelementptr inbounds %struct.stm32_port, ptr %stm32port, i32 0, i32 3
  %16 = ptrtoint ptr %rx_ch to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_ch, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 44
  %20 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end9.do.end_crit_edge, label %dmaengine_slave_config.exit

if.end9.do.end_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

dmaengine_slave_config.exit:                      ; preds = %if.end9
  %call.i32 = call i32 %21(ptr noundef %17, ptr noundef nonnull %config) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %cmp12 = icmp slt i32 %call.i32, 0
  br i1 %cmp12, label %dmaengine_slave_config.exit.do.end_crit_edge, label %dmaengine_slave_config.exit.cleanup_crit_edge

dmaengine_slave_config.exit.cleanup_crit_edge:    ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

dmaengine_slave_config.exit.do.end_crit_edge:     ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %dmaengine_slave_config.exit.do.end_crit_edge, %if.end9.do.end_crit_edge
  %retval.0.i37 = phi i32 [ %call.i32, %dmaengine_slave_config.exit.do.end_crit_edge ], [ -38, %if.end9.do.end_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.39) #14
  %22 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_buf, align 4
  %tobool.not.i33 = icmp eq ptr %23, null
  br i1 %tobool.not.i33, label %do.end.cleanup_crit_edge, label %if.then.i34

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i34:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %rx_dma_buf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_dma_buf, align 4
  call void @dma_free_attrs(ptr noundef %dev3, i32 noundef 4096, ptr noundef nonnull %23, i32 noundef %25, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i34, %do.end.cleanup_crit_edge, %dmaengine_slave_config.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %land.lhs.true.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %dmaengine_slave_config.exit.cleanup_crit_edge ], [ %retval.0.i37, %do.end.cleanup_crit_edge ], [ %retval.0.i37, %if.then.i34 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %config) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_usart_of_dma_tx_probe(ptr noundef %stm32port, ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  %config = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.stm32_port, ptr %stm32port, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %config) #11
  %tx_dma_buf = getelementptr inbounds %struct.stm32_port, ptr %stm32port, i32 0, i32 7
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev3, i32 noundef 4096, ptr noundef %tx_dma_buf, i32 noundef 3264, i32 noundef 0) #11
  %tx_buf = getelementptr inbounds %struct.stm32_port, ptr %stm32port, i32 0, i32 8
  %2 = ptrtoint ptr %tx_buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %tx_buf, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = call ptr @memset(ptr %config, i32 0, i32 48)
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %stm32port, i32 0, i32 43
  %4 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mapbase, align 4
  %tdr = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %tdr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tdr, align 1
  %conv = zext i8 %7 to i32
  %add = add i32 %5, %conv
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 2
  %8 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %dst_addr, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 4
  %9 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %dst_addr_width, align 4
  %tx_ch = getelementptr inbounds %struct.stm32_port, ptr %stm32port, i32 0, i32 6
  %10 = ptrtoint ptr %tx_ch to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_ch, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %13, i32 0, i32 44
  %14 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.do.end_crit_edge, label %dmaengine_slave_config.exit

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

dmaengine_slave_config.exit:                      ; preds = %if.end
  %call.i22 = call i32 %15(ptr noundef %11, ptr noundef nonnull %config) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %cmp = icmp slt i32 %call.i22, 0
  br i1 %cmp, label %dmaengine_slave_config.exit.do.end_crit_edge, label %dmaengine_slave_config.exit.cleanup_crit_edge

dmaengine_slave_config.exit.cleanup_crit_edge:    ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

dmaengine_slave_config.exit.do.end_crit_edge:     ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %dmaengine_slave_config.exit.do.end_crit_edge, %if.end.do.end_crit_edge
  %retval.0.i27 = phi i32 [ %call.i22, %dmaengine_slave_config.exit.do.end_crit_edge ], [ -38, %if.end.do.end_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.41) #14
  %16 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_buf, align 4
  %tobool.not.i23 = icmp eq ptr %17, null
  br i1 %tobool.not.i23, label %do.end.cleanup_crit_edge, label %if.then.i24

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i24:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %tx_dma_buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_dma_buf, align 4
  call void @dma_free_attrs(ptr noundef %dev3, i32 noundef 4096, ptr noundef nonnull %17, i32 noundef %19, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i24, %do.end.cleanup_crit_edge, %dmaengine_slave_config.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %dmaengine_slave_config.exit.cleanup_crit_edge ], [ %retval.0.i27, %do.end.cleanup_crit_edge ], [ %retval.0.i27, %if.then.i24 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %config) #11
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !144
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #11, !srcloc !145
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !146
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_clear_wake_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_usart_config_rs485(ptr nocapture noundef %port, ptr nocapture noundef %rs485conf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %cfg3 = getelementptr inbounds %struct.stm32_usart_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %cfg3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cfg3, align 4
  %conv5 = zext i8 %5 to i32
  %shl = shl nuw i32 1, %conv5
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %6 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %conv
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !147
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #11
  %neg.i = xor i32 %shl, -1
  %and.i = and i32 %9, %neg.i
  %10 = tail call i32 @llvm.bswap.i32(i32 %and.i) #11
  %11 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %12, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %10) #11, !srcloc !148
  %rs485 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56
  %13 = call ptr @memcpy(ptr %rs485, ptr %rs485conf, i32 32)
  %14 = ptrtoint ptr %rs485conf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rs485conf, align 4
  %or = or i32 %15, 16
  store i32 %or, ptr %rs485conf, align 4
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else52, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %1, align 1
  %conv8 = zext i8 %19 to i32
  %add.ptr = getelementptr i8, ptr %17, i32 %conv8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !147
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i, align 4
  %cr312 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %cr312 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %cr312, align 1
  %conv13 = zext i8 %25 to i32
  %add.ptr14 = getelementptr i8, ptr %23, i32 %conv13
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #11, !srcloc !147
  %27 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase.i, align 4
  %brr = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %brr to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %brr, align 1
  %conv19 = zext i8 %30 to i32
  %add.ptr20 = getelementptr i8, ptr %28, i32 %conv19
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #11, !srcloc !147
  %32 = and i32 %31, -65536
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %and24 = and i32 %21, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %and28 = shl nuw nsw i32 %33, 1
  %shl29 = and i32 %and28, 62
  %or30 = select i1 %tobool25.not, i32 0, i32 %shl29
  %usartdiv.0 = or i32 %or30, %33
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %34 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %uartclk, align 4
  %div95 = lshr i32 %usartdiv.0, 1
  %add = add i32 %div95, %35
  %div32 = udiv i32 %add, %usartdiv.0
  %delay_rts_before_send = getelementptr inbounds %struct.serial_rs485, ptr %rs485conf, i32 0, i32 1
  %36 = ptrtoint ptr %delay_rts_before_send to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %delay_rts_before_send, align 4
  %delay_rts_after_send = getelementptr inbounds %struct.serial_rs485, ptr %rs485conf, i32 0, i32 2
  %38 = ptrtoint ptr %delay_rts_after_send to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %delay_rts_after_send, align 4
  %mul.i = mul i32 %37, %div32
  %rs485_deat_dedt.0.v.i = select i1 %tobool25.not, i32 4, i32 3
  %rs485_deat_dedt.0.i = shl i32 %mul.i, %rs485_deat_dedt.0.v.i
  %add.i = add i32 %rs485_deat_dedt.0.i, 500
  call void @__sanitizer_cov_trace_const_cmp4(i32 31999, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 31999
  %div5.i = udiv i32 %add.i, 1000
  %phi.bo.i = shl i32 %div5.i, 21
  %phi.bo52.i = and i32 %phi.bo.i, 65011712
  %cond.i = select i1 %cmp.i, i32 65011712, i32 %phi.bo52.i
  %or7.i = or i32 %cond.i, %21
  %mul10.i = mul i32 %39, %div32
  %rs485_deat_dedt.1.i = shl i32 %mul10.i, %rs485_deat_dedt.0.v.i
  %add20.i = add i32 %rs485_deat_dedt.1.i, 500
  call void @__sanitizer_cov_trace_const_cmp4(i32 31999, i32 %add20.i)
  %cmp22.i = icmp ugt i32 %add20.i, 31999
  %div21.i = udiv i32 %add20.i, 1000
  %phi.bo53.i = shl i32 %div21.i, 16
  %phi.bo54.i = and i32 %phi.bo53.i, 2031616
  %cond26.i = select i1 %cmp22.i, i32 2031616, i32 %phi.bo54.i
  %or29.i = or i32 %or7.i, %cond26.i
  %40 = ptrtoint ptr %rs485conf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rs485conf, align 4
  %and34 = and i32 %41, 2
  %42 = and i32 %26, -12582913
  %43 = or i32 %42, 4194304
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %and39 = and i32 %41, -5
  %45 = shl nuw nsw i32 %and34, 14
  %46 = or i32 %45, %44
  %cr3.0 = xor i32 %46, 32768
  %47 = shl nuw nsw i32 %and34, 1
  %48 = or i32 %47, %and39
  %storemerge = xor i32 %48, 4
  %49 = ptrtoint ptr %rs485conf to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %storemerge, ptr %rs485conf, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %cr3.0)
  %51 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %membase.i, align 4
  %53 = ptrtoint ptr %cr312 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %cr312, align 1
  %conv46 = zext i8 %54 to i32
  %add.ptr47 = getelementptr i8, ptr %52, i32 %conv46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %50) #11, !srcloc !148
  %55 = tail call i32 @llvm.bswap.i32(i32 %or29.i)
  %56 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %membase.i, align 4
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %1, align 1
  %conv50 = zext i8 %59 to i32
  %add.ptr51 = getelementptr i8, ptr %57, i32 %conv50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %55) #11, !srcloc !148
  br label %if.end57

if.else52:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cr353 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 2
  %60 = ptrtoint ptr %cr353 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %cr353, align 1
  %conv54 = zext i8 %61 to i32
  %62 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %membase.i, align 4
  %add.ptr.i98 = getelementptr i8, ptr %63, i32 %conv54
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i98) #11, !srcloc !147
  %65 = and i32 %64, -12582913
  %66 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %membase.i, align 4
  %add.ptr2.i100 = getelementptr i8, ptr %67, i32 %conv54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i100, i32 %65) #11, !srcloc !148
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %1, align 1
  %conv56 = zext i8 %69 to i32
  %70 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %membase.i, align 4
  %add.ptr.i102 = getelementptr i8, ptr %71, i32 %conv56
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i102) #11, !srcloc !147
  %73 = and i32 %72, -65284
  %74 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %membase.i, align 4
  %add.ptr2.i104 = getelementptr i8, ptr %75, i32 %conv56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i104, i32 %73) #11, !srcloc !148
  br label %if.end57

if.end57:                                         ; preds = %if.else52, %if.then
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %1, align 1
  %conv59 = zext i8 %77 to i32
  %78 = ptrtoint ptr %cfg3 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %cfg3, align 4
  %conv61 = zext i8 %79 to i32
  %shl62 = shl nuw i32 1, %conv61
  %80 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %membase.i, align 4
  %add.ptr.i106 = getelementptr i8, ptr %81, i32 %conv59
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i106) #11, !srcloc !147
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #11
  %or.i107 = or i32 %83, %shl62
  %84 = tail call i32 @llvm.bswap.i32(i32 %or.i107) #11
  %85 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %membase.i, align 4
  %add.ptr2.i108 = getelementptr i8, ptr %86, i32 %conv59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i108, i32 %84) #11, !srcloc !148
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mctrl_gpio_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mctrl_gpio_to_gpiod(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_usart_tx_empty(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 4
  %isr = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %isr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %isr, align 1
  %conv = zext i8 %5 to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !147
  %7 = lshr i32 %6, 30
  %.lobit = and i32 %7, 1
  ret i32 %.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_usart_set_mctrl(ptr nocapture noundef readonly %port, i32 noundef %mctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %and = and i32 %mctrl, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %status = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 34
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %and2 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %cr3 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %cr3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cr3, align 1
  %conv = zext i8 %5 to i32
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %6 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %conv
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !147
  %9 = or i32 %8, 65536
  %10 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %11, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %9) #11, !srcloc !148
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %cr34 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %cr34 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cr34, align 1
  %conv5 = zext i8 %13 to i32
  %membase.i12 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %14 = ptrtoint ptr %membase.i12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i12, align 4
  %add.ptr.i13 = getelementptr i8, ptr %15, i32 %conv5
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #11, !srcloc !147
  %17 = and i32 %16, -65537
  %18 = ptrtoint ptr %membase.i12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i12, align 4
  %add.ptr2.i14 = getelementptr i8, ptr %19, i32 %conv5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i14, i32 %17) #11, !srcloc !148
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %gpios = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 21
  %20 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gpios, align 4
  tail call void @mctrl_gpio_set(ptr noundef %21, i32 noundef %mctrl) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_usart_get_mctrl(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #11
  %0 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 352, ptr %ret, align 4
  %gpios = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 21
  %1 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %gpios, align 4
  %call1 = call i32 @mctrl_gpio_get(ptr noundef %2, ptr noundef nonnull %ret) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_usart_stop_tx(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rs485 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56
  %info = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %fifoen.i = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 16
  %2 = ptrtoint ptr %fifoen.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fifoen.i, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.if.else.i_crit_edge, label %land.lhs.true.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %txftcfg.i = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 18
  %4 = ptrtoint ptr %txftcfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %txftcfg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.i = icmp sgt i32 %5, -1
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %cr3.i = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %cr3.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cr3.i, align 1
  %conv.i = zext i8 %7 to i32
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %8 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %conv.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !147
  %11 = and i32 %10, -32769
  %12 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %13, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %11) #11, !srcloc !148
  br label %stm32_usart_tx_interrupt_disable.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %1, align 1
  %conv2.i = zext i8 %15 to i32
  %membase.i8.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %16 = ptrtoint ptr %membase.i8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i8.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %17, i32 %conv2.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #11, !srcloc !147
  %19 = and i32 %18, 2147483647
  %20 = ptrtoint ptr %membase.i8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase.i8.i, align 4
  %add.ptr2.i11.i = getelementptr i8, ptr %21, i32 %conv2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i11.i, i32 %19) #11, !srcloc !148
  br label %stm32_usart_tx_interrupt_disable.exit

stm32_usart_tx_interrupt_disable.exit:            ; preds = %if.else.i, %if.then.i
  %tx_dma_busy.i = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 12
  %22 = ptrtoint ptr %tx_dma_busy.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %tx_dma_busy.i, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.i.not = icmp eq i8 %23, 0
  br i1 %tobool.i.not, label %stm32_usart_tx_interrupt_disable.exit.if.end_crit_edge, label %land.lhs.true

stm32_usart_tx_interrupt_disable.exit.if.end_crit_edge: ; preds = %stm32_usart_tx_interrupt_disable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %stm32_usart_tx_interrupt_disable.exit
  %24 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %info, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %26 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase.i, align 4
  %cr3.i27 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %25, i32 0, i32 2
  %28 = ptrtoint ptr %cr3.i27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %cr3.i27, align 1
  %conv.i28 = zext i8 %29 to i32
  %add.ptr.i = getelementptr i8, ptr %27, i32 %conv.i28
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.i29 = icmp slt i32 %30, 0
  br i1 %tobool.i29, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %cr3 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %cr3 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %cr3, align 1
  %conv = zext i8 %32 to i32
  %33 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %34, i32 %conv
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31) #11, !srcloc !147
  %36 = and i32 %35, 2147483647
  %37 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %membase.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %38, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %36) #11, !srcloc !148
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %stm32_usart_tx_interrupt_disable.exit.if.end_crit_edge
  %39 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rs485, align 4
  %and = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end15_crit_edge, label %if.then4

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %gpios11 = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 21
  %41 = ptrtoint ptr %gpios11 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %gpios11, align 4
  %mctrl13 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 36
  %43 = ptrtoint ptr %mctrl13 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mctrl13, align 4
  %and10 = and i32 %44, -5
  %and6 = shl i32 %40, 1
  %45 = and i32 %and6, 4
  %46 = or i32 %45, %and10
  %and10.sink = xor i32 %46, 4
  tail call void @mctrl_gpio_set(ptr noundef %42, i32 noundef %and10.sink) #11
  br label %if.end15

if.end15:                                         ; preds = %if.then4, %if.end.if.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_usart_start_tx(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rs485 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %head = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp eq i32 %3, %5
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %x_char = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 24
  %6 = ptrtoint ptr %x_char to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %x_char, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rs485, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end14_crit_edge, label %if.then3

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %gpios9 = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 21
  %10 = ptrtoint ptr %gpios9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gpios9, align 4
  %mctrl11 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 36
  %12 = ptrtoint ptr %mctrl11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mctrl11, align 4
  %and12 = and i32 %13, -5
  %and5 = shl i32 %9, 1
  %14 = and i32 %and5, 4
  %or.sink = or i32 %and12, %14
  tail call void @mctrl_gpio_set(ptr noundef %11, i32 noundef %or.sink) #11
  br label %if.end14

if.end14:                                         ; preds = %if.then3, %if.end.if.end14_crit_edge
  tail call fastcc void @stm32_usart_transmit_chars(ptr noundef %port)
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_usart_throttle(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #11
  %rx_ch.i = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 3
  %2 = ptrtoint ptr %rx_ch.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_ch.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %stm32_usart_rx_dma_enabled.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

stm32_usart_rx_dma_enabled.exit:                  ; preds = %entry
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %6 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i, align 4
  %cr3.i = getelementptr inbounds %struct.stm32_usart_offsets, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %cr3.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cr3.i, align 1
  %conv.i = zext i8 %9 to i32
  %add.ptr.i = getelementptr i8, ptr %7, i32 %conv.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !147
  %11 = and i32 %10, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.i.not = icmp eq i32 %11, 0
  br i1 %tobool3.i.not, label %stm32_usart_rx_dma_enabled.exit.if.end_crit_edge, label %if.then

stm32_usart_rx_dma_enabled.exit.if.end_crit_edge: ; preds = %stm32_usart_rx_dma_enabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %stm32_usart_rx_dma_enabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  %cr3 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %cr3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cr3, align 1
  %conv8 = zext i8 %13 to i32
  %14 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %15, i32 %conv8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29) #11, !srcloc !147
  %17 = and i32 %16, -1073741825
  %18 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %19, i32 %conv8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %17) #11, !srcloc !148
  br label %if.end

if.end:                                           ; preds = %if.then, %stm32_usart_rx_dma_enabled.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %1, align 1
  %conv9 = zext i8 %21 to i32
  %cr1_irq = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 9
  %22 = ptrtoint ptr %cr1_irq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cr1_irq, align 4
  %membase.i30 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %24 = ptrtoint ptr %membase.i30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase.i30, align 4
  %add.ptr.i31 = getelementptr i8, ptr %25, i32 %conv9
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31) #11, !srcloc !147
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #11
  %neg.i = xor i32 %23, -1
  %and.i32 = and i32 %27, %neg.i
  %28 = tail call i32 @llvm.bswap.i32(i32 %and.i32) #11
  %29 = ptrtoint ptr %membase.i30 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase.i30, align 4
  %add.ptr2.i33 = getelementptr i8, ptr %30, i32 %conv9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i33, i32 %28) #11, !srcloc !148
  %cr3_irq = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 10
  %31 = ptrtoint ptr %cr3_irq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cr3_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not = icmp eq i32 %32, 0
  br i1 %tobool.not, label %if.end.if.end14_crit_edge, label %if.then10

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %cr311 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 2
  %33 = ptrtoint ptr %cr311 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %cr311, align 1
  %conv12 = zext i8 %34 to i32
  %35 = ptrtoint ptr %membase.i30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase.i30, align 4
  %add.ptr.i35 = getelementptr i8, ptr %36, i32 %conv12
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35) #11, !srcloc !147
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #11
  %neg.i36 = xor i32 %32, -1
  %and.i37 = and i32 %38, %neg.i36
  %39 = tail call i32 @llvm.bswap.i32(i32 %and.i37) #11
  %40 = ptrtoint ptr %membase.i30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %membase.i30, align 4
  %add.ptr2.i38 = getelementptr i8, ptr %41, i32 %conv12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i38, i32 %39) #11, !srcloc !148
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end.if.end14_crit_edge
  %throttled = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 13
  %42 = ptrtoint ptr %throttled to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %throttled, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_usart_unthrottle(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %conv7 = zext i8 %3 to i32
  %cr1_irq = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 9
  %4 = ptrtoint ptr %cr1_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cr1_irq, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %6 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %conv7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !147
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #11
  %or.i = or i32 %9, %5
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %11 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %12, i32 %conv7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %10) #11, !srcloc !148
  %cr3_irq = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 10
  %13 = ptrtoint ptr %cr3_irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cr3_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cr3 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %cr3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cr3, align 1
  %conv8 = zext i8 %16 to i32
  %17 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %18, i32 %conv8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29) #11, !srcloc !147
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #11
  %or.i30 = or i32 %20, %14
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i30) #11
  %22 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i, align 4
  %add.ptr2.i31 = getelementptr i8, ptr %23, i32 %conv8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i31, i32 %21) #11, !srcloc !148
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rx_ch = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 3
  %24 = ptrtoint ptr %rx_ch to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_ch, align 4
  %tobool10.not = icmp eq ptr %25, null
  br i1 %tobool10.not, label %if.end.if.end14_crit_edge, label %if.then11

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %cr312 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %cr312 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %cr312, align 1
  %conv13 = zext i8 %27 to i32
  %28 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %29, i32 %conv13
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #11, !srcloc !147
  %31 = or i32 %30, 1073741824
  %32 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase.i, align 4
  %add.ptr2.i35 = getelementptr i8, ptr %33, i32 %conv13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i35, i32 %31) #11, !srcloc !148
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end.if.end14_crit_edge
  %throttled = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 13
  %34 = ptrtoint ptr %throttled to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %throttled, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_usart_stop_rx(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %rx_ch = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 3
  %2 = ptrtoint ptr %rx_ch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_ch, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cr3 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %cr3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cr3, align 1
  %conv = zext i8 %5 to i32
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %6 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %conv
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !147
  %9 = and i32 %8, -1073741825
  %10 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %11, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %9) #11, !srcloc !148
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %1, align 1
  %conv2 = zext i8 %13 to i32
  %cr1_irq = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 9
  %14 = ptrtoint ptr %cr1_irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cr1_irq, align 4
  %membase.i18 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %16 = ptrtoint ptr %membase.i18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i18, align 4
  %add.ptr.i19 = getelementptr i8, ptr %17, i32 %conv2
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #11, !srcloc !147
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #11
  %neg.i = xor i32 %15, -1
  %and.i20 = and i32 %19, %neg.i
  %20 = tail call i32 @llvm.bswap.i32(i32 %and.i20) #11
  %21 = ptrtoint ptr %membase.i18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase.i18, align 4
  %add.ptr2.i21 = getelementptr i8, ptr %22, i32 %conv2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i21, i32 %20) #11, !srcloc !148
  %cr3_irq = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 10
  %23 = ptrtoint ptr %cr3_irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cr3_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool3.not = icmp eq i32 %24, 0
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %cr35 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %cr35 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %cr35, align 1
  %conv6 = zext i8 %26 to i32
  %27 = ptrtoint ptr %membase.i18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase.i18, align 4
  %add.ptr.i23 = getelementptr i8, ptr %28, i32 %conv6
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23) #11, !srcloc !147
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #11
  %neg.i24 = xor i32 %24, -1
  %and.i25 = and i32 %30, %neg.i24
  %31 = tail call i32 @llvm.bswap.i32(i32 %and.i25) #11
  %32 = ptrtoint ptr %membase.i18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase.i18, align 4
  %add.ptr2.i26 = getelementptr i8, ptr %33, i32 %conv6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i26, i32 %31) #11, !srcloc !148
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_usart_enable_ms(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %gpios = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 21
  %0 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpios, align 4
  tail call void @mctrl_gpio_enable_ms(ptr noundef %1) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @stm32_usart_break_ctl(ptr nocapture noundef %port, i32 noundef %break_state) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_usart_startup(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %cfg3 = getelementptr inbounds %struct.stm32_usart_info, ptr %1, i32 0, i32 1
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -16
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call5 = tail call i32 @request_threaded_irq(i32 noundef %7, ptr noundef nonnull @stm32_usart_interrupt, ptr noundef nonnull @stm32_usart_threaded_interrupt, i32 noundef 24576, ptr noundef %5, ptr noundef %port) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %swap = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 15
  %8 = ptrtoint ptr %swap to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %swap, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %if.end.if.end15_crit_edge, label %if.then7

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %10 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase, align 4
  %cr2 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %cr2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cr2, align 1
  %conv = zext i8 %13 to i32
  %add.ptr8 = getelementptr i8, ptr %11, i32 %conv
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #11, !srcloc !147
  %15 = or i32 %14, 8388608
  %16 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase, align 4
  %18 = ptrtoint ptr %cr2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %cr2, align 1
  %conv13 = zext i8 %19 to i32
  %add.ptr14 = getelementptr i8, ptr %17, i32 %conv13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %15) #11, !srcloc !148
  br label %if.end15

if.end15:                                         ; preds = %if.then7, %if.end.if.end15_crit_edge
  %rqr = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %rqr to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rqr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %21)
  %cmp.not = icmp eq i8 %21, -1
  br i1 %cmp.not, label %if.end15.if.end23_crit_edge, label %if.then18

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %conv16 = zext i8 %21 to i32
  %membase19 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %22 = ptrtoint ptr %membase19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase19, align 4
  %add.ptr22 = getelementptr i8, ptr %23, i32 %conv16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 134217728) #11, !srcloc !148
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.end15.if.end23_crit_edge
  %rx_ch = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 3
  %24 = ptrtoint ptr %rx_ch to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_ch, align 4
  %tobool24.not = icmp eq ptr %25, null
  br i1 %tobool24.not, label %if.end23.if.end32_crit_edge, label %if.then25

if.end23.if.end32_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then25:                                        ; preds = %if.end23
  %call26 = tail call fastcc i32 @stm32_usart_start_rx_dma_cyclic(ptr noundef %port)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then25.if.end32_crit_edge, label %if.then28

if.then25.if.end32_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then28:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq, align 4
  %call30 = tail call ptr @free_irq(i32 noundef %27, ptr noundef %port) #11
  br label %cleanup

if.end32:                                         ; preds = %if.then25.if.end32_crit_edge, %if.end23.if.end32_crit_edge
  %cr1_irq = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 9
  %28 = ptrtoint ptr %cr1_irq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cr1_irq, align 4
  %30 = ptrtoint ptr %cfg3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %cfg3, align 4
  %conv34 = zext i8 %31 to i32
  %shl = shl nuw i32 1, %conv34
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %1, align 1
  %conv36 = zext i8 %33 to i32
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %34 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %35, i32 %conv36
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !147
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #11
  %or33 = or i32 %29, %shl
  %or35 = or i32 %or33, %37
  %or.i = or i32 %or35, 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %39 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %40, i32 %conv36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %38) #11, !srcloc !148
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then28, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call26, %if.then28 ], [ 0, %if.end32 ], [ %call5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_usart_shutdown(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %cfg3 = getelementptr inbounds %struct.stm32_usart_info, ptr %1, i32 0, i32 1
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 4
  %cr3.i = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %cr3.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cr3.i, align 1
  %conv.i = zext i8 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i = icmp slt i32 %6, 0
  br i1 %tobool.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %cr3.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cr3.i, align 1
  %conv = zext i8 %8 to i32
  %9 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i, align 4
  %add.ptr.i104 = getelementptr i8, ptr %10, i32 %conv
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i104) #11, !srcloc !147
  %12 = and i32 %11, 2147483647
  %13 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %14, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %12) #11, !srcloc !148
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tx_dma_busy.i = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 12
  %15 = ptrtoint ptr %tx_dma_busy.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tx_dma_busy.i, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.i105.not = icmp eq i8 %16, 0
  br i1 %tobool.i105.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then6:                                         ; preds = %if.end
  %tx_ch.i = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 6
  %17 = ptrtoint ptr %tx_ch.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx_ch.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %20, i32 0, i32 47
  %21 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %if.then6.stm32_usart_tx_dma_terminate.exit_crit_edge, label %if.then.i.i

if.then6.stm32_usart_tx_dma_terminate.exit_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32_usart_tx_dma_terminate.exit

if.then.i.i:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call i32 %22(ptr noundef %18) #11
  br label %stm32_usart_tx_dma_terminate.exit

stm32_usart_tx_dma_terminate.exit:                ; preds = %if.then.i.i, %if.then6.stm32_usart_tx_dma_terminate.exit_crit_edge
  %23 = ptrtoint ptr %tx_dma_busy.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %tx_dma_busy.i, align 4
  br label %if.end7

if.end7:                                          ; preds = %stm32_usart_tx_dma_terminate.exit, %if.end.if.end7_crit_edge
  %gpios.i = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 21
  %24 = ptrtoint ptr %gpios.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %gpios.i, align 4
  tail call void @mctrl_gpio_disable_ms(ptr noundef %25) #11
  %cr1_irq = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 9
  %26 = ptrtoint ptr %cr1_irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cr1_irq, align 4
  %28 = ptrtoint ptr %cfg3 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %cfg3, align 4
  %fifoen = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 16
  %30 = ptrtoint ptr %fifoen to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %fifoen, align 4, !range !142
  %call14 = tail call i64 @ktime_get() #11
  %add.i = add i64 %call14, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 948) #11
  %isr25 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 7
  %32 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase.i, align 4
  %34 = ptrtoint ptr %isr25 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %isr25, align 1
  %conv26114 = zext i8 %35 to i32
  %add.ptr115 = getelementptr i8, ptr %33, i32 %conv26114
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr115) #11, !srcloc !147
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %and116 = and i32 %37, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool28.not117 = icmp eq i32 %and116, 0
  br i1 %tobool28.not117, label %if.end7.land.lhs.true_crit_edge, label %if.end7.for.end_crit_edge

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end7.land.lhs.true_crit_edge:                  ; preds = %if.end7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then46.land.lhs.true_crit_edge, %if.end7.land.lhs.true_crit_edge
  %call32 = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call32, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call32, %add.i
  br i1 %cmp3.i, label %if.then36, label %if.then46

if.then36:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %membase.i, align 4
  %40 = ptrtoint ptr %isr25 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %isr25, align 1
  %conv40 = zext i8 %41 to i32
  %add.ptr41 = getelementptr i8, ptr %39, i32 %conv40
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #11, !srcloc !147
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  br label %for.end

if.then46:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #11
  %44 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %membase.i, align 4
  %46 = ptrtoint ptr %isr25 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %isr25, align 1
  %conv26 = zext i8 %47 to i32
  %add.ptr = getelementptr i8, ptr %45, i32 %conv26
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !147
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %and = and i32 %49, 64
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %if.then46.land.lhs.true_crit_edge, label %if.then46.for.end_crit_edge

if.then46.for.end_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then46.land.lhs.true_crit_edge:                ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

for.end:                                          ; preds = %if.then46.for.end_crit_edge, %if.then36, %if.end7.for.end_crit_edge
  %isr.0 = phi i32 [ %43, %if.then36 ], [ %37, %if.end7.for.end_crit_edge ], [ %49, %if.then46.for.end_crit_edge ]
  %and49 = and i32 %isr.0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %do.end55, label %for.end.if.end56_crit_edge

for.end.if.end56_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

do.end55:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.33) #14
  br label %if.end56

if.end56:                                         ; preds = %do.end55, %for.end.if.end56_crit_edge
  %rx_ch = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 3
  %52 = ptrtoint ptr %rx_ch to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rx_ch, align 4
  %tobool57.not = icmp eq ptr %53, null
  br i1 %tobool57.not, label %if.end56.if.end61_crit_edge, label %if.then58

if.end56.if.end61_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then58:                                        ; preds = %if.end56
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %55, i32 0, i32 47
  %56 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %57, null
  br i1 %tobool.not.i, label %if.then58.if.end61_crit_edge, label %if.then.i

if.then58.if.end61_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then.i:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 %57(ptr noundef nonnull %53) #11
  br label %if.end61

if.end61:                                         ; preds = %if.then.i, %if.then58.if.end61_crit_edge, %if.end56.if.end61_crit_edge
  %rqr = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 6
  %58 = ptrtoint ptr %rqr to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %rqr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %59)
  %cmp63.not = icmp eq i8 %59, -1
  br i1 %cmp63.not, label %if.end61.if.end70_crit_edge, label %if.then65

if.end61.if.end70_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  %conv62 = zext i8 %59 to i32
  %60 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %membase.i, align 4
  %add.ptr69 = getelementptr i8, ptr %61, i32 %conv62
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 402653184) #11, !srcloc !148
  br label %if.end70

if.end70:                                         ; preds = %if.then65, %if.end61.if.end70_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not = icmp eq i8 %31, 0
  %conv9 = zext i8 %29 to i32
  %shl = shl nuw i32 1, %conv9
  %or8 = or i32 %shl, %27
  %spec.select.v = select i1 %tobool.not, i32 140, i32 536871052
  %spec.select = or i32 %or8, %spec.select.v
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %1, align 1
  %conv71 = zext i8 %63 to i32
  %64 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %membase.i, align 4
  %add.ptr.i109 = getelementptr i8, ptr %65, i32 %conv71
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i109) #11, !srcloc !147
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #11
  %neg.i = xor i32 %spec.select, -1
  %and.i110 = and i32 %67, %neg.i
  %68 = tail call i32 @llvm.bswap.i32(i32 %and.i110) #11
  %69 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %membase.i, align 4
  %add.ptr2.i111 = getelementptr i8, ptr %70, i32 %conv71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i111, i32 %68) #11, !srcloc !148
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %71 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %irq, align 4
  %call72 = tail call ptr @free_irq(i32 noundef %72, ptr noundef %port) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_usart_flush_buffer(ptr nocapture noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ch = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 6
  %0 = ptrtoint ptr %tx_ch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_ch, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %info = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 47
  %6 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.then.stm32_usart_tx_dma_terminate.exit_crit_edge, label %if.then.i.i

if.then.stm32_usart_tx_dma_terminate.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32_usart_tx_dma_terminate.exit

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call i32 %7(ptr noundef nonnull %1) #11
  br label %stm32_usart_tx_dma_terminate.exit

stm32_usart_tx_dma_terminate.exit:                ; preds = %if.then.i.i, %if.then.stm32_usart_tx_dma_terminate.exit_crit_edge
  %tx_dma_busy.i = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 12
  %8 = ptrtoint ptr %tx_dma_busy.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %tx_dma_busy.i, align 4
  %cr3 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %cr3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cr3, align 1
  %conv = zext i8 %10 to i32
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %11 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 %conv
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !147
  %14 = and i32 %13, 2147483647
  %15 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %16, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %14) #11, !srcloc !148
  br label %if.end

if.end:                                           ; preds = %stm32_usart_tx_dma_terminate.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_usart_set_termios(ptr noundef %port, ptr noundef %termios, ptr noundef %old) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %cfg3 = getelementptr inbounds %struct.stm32_usart_info, ptr %1, i32 0, i32 1
  %rs485 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %2 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c_cflag, align 4
  %hw_flow_control = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 14
  %4 = ptrtoint ptr %hw_flow_control to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_flow_control, align 2, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %and = and i32 %3, 2147483647
  %spec.select = select i1 %tobool.not, i32 %and, i32 %3
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %6 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %uartclk, align 4
  %div419 = lshr i32 %7, 3
  %call4 = tail call i32 @uart_get_baud_rate(ptr noundef %port, ptr noundef %termios, ptr noundef %old, i32 noundef 0, i32 noundef %div419) #11
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #11
  %call10 = tail call i64 @ktime_get() #11
  %add.i = add i64 %call10, 100000000
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %isr12 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase, align 4
  %10 = ptrtoint ptr %isr12 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %isr12, align 1
  %conv13465 = zext i8 %11 to i32
  %add.ptr466 = getelementptr i8, ptr %9, i32 %conv13465
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr466) #11, !srcloc !147
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %and16467 = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16467)
  %tobool17.not468 = icmp eq i32 %and16467, 0
  br i1 %tobool17.not468, label %entry.land.lhs.true_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call21 = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call21, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call21, %add.i
  br i1 %cmp3.i, label %if.then25, label %cond.false

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase, align 4
  %16 = ptrtoint ptr %isr12 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %isr12, align 1
  %conv29 = zext i8 %17 to i32
  %add.ptr30 = getelementptr i8, ptr %15, i32 %conv29
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #11, !srcloc !147
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 2147480) #11
  %21 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase, align 4
  %23 = ptrtoint ptr %isr12 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %isr12, align 1
  %conv13 = zext i8 %24 to i32
  %add.ptr = getelementptr i8, ptr %22, i32 %conv13
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !147
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %and16 = and i32 %26, 64
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %cond.false.land.lhs.true_crit_edge, label %cond.false.for.end_crit_edge

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then25, %entry.for.end_crit_edge
  %isr.0 = phi i32 [ %19, %if.then25 ], [ %13, %entry.for.end_crit_edge ], [ %26, %cond.false.for.end_crit_edge ]
  %and43 = and i32 %isr.0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %do.end49, label %for.end.if.end50_crit_edge

for.end.if.end50_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

do.end49:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.33) #14
  br label %if.end50

if.end50:                                         ; preds = %do.end49, %for.end.if.end50_crit_edge
  %29 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase, align 4
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %1, align 1
  %conv53 = zext i8 %32 to i32
  %add.ptr54 = getelementptr i8, ptr %30, i32 %conv53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 0) #11, !srcloc !148
  %rqr = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 6
  %33 = ptrtoint ptr %rqr to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %rqr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %34)
  %cmp56.not = icmp eq i8 %34, -1
  br i1 %cmp56.not, label %if.end50.if.end63_crit_edge, label %if.then58

if.end50.if.end63_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.then58:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  %conv55 = zext i8 %34 to i32
  %35 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase, align 4
  %add.ptr62 = getelementptr i8, ptr %36, i32 %conv55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 402653184) #11, !srcloc !148
  br label %if.end63

if.end63:                                         ; preds = %if.then58, %if.end50.if.end63_crit_edge
  %fifoen = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 16
  %37 = ptrtoint ptr %fifoen to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %fifoen, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool64.not = icmp eq i8 %38, 0
  %spec.store.select = select i1 %tobool64.not, i32 12, i32 536870924
  %swap = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 15
  %39 = ptrtoint ptr %swap to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %swap, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool67.not = icmp eq i8 %40, 0
  %cond69 = select i1 %tobool67.not, i32 0, i32 32768
  %41 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %membase, align 4
  %cr372 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 2
  %43 = ptrtoint ptr %cr372 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %cr372, align 1
  %conv73 = zext i8 %44 to i32
  %add.ptr74 = getelementptr i8, ptr %42, i32 %conv73
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr74) #11, !srcloc !147
  %46 = and i32 %45, 32784
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %48 = ptrtoint ptr %fifoen to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %fifoen, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool79.not = icmp eq i8 %49, 0
  br i1 %tobool79.not, label %if.end63.if.end94_crit_edge, label %if.then80

if.end63.if.end94_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

if.then80:                                        ; preds = %if.end63
  %txftcfg = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 18
  %50 = ptrtoint ptr %txftcfg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %txftcfg, align 4
  %shl = shl i32 %51, 29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp81458 = icmp slt i32 %51, 0
  %or85 = select i1 %cmp81458, i32 0, i32 %shl
  %cr3.0 = or i32 %or85, %47
  %rxftcfg = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 17
  %52 = ptrtoint ptr %rxftcfg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rxftcfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %cmp87 = icmp sgt i32 %53, -1
  br i1 %cmp87, label %if.then89, label %if.then80.if.end94_crit_edge

if.then80.if.end94_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

if.then89:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #13
  %shl91 = shl i32 %53, 25
  %or92 = or i32 %cr3.0, %shl91
  br label %if.end94

if.end94:                                         ; preds = %if.then89, %if.then80.if.end94_crit_edge, %if.end63.if.end94_crit_edge
  %cr3.1 = phi i32 [ %47, %if.end63.if.end94_crit_edge ], [ %or92, %if.then89 ], [ %cr3.0, %if.then80.if.end94_crit_edge ]
  %and95 = and i32 %spec.select, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  %54 = shl nuw nsw i32 %and95, 7
  %55 = or i32 %cond69, %54
  %call100 = tail call zeroext i8 @tty_get_char_size(i32 noundef %spec.select) #11
  %conv101 = zext i8 %call100 to i32
  %notmask = shl nsw i32 -1, %conv101
  %sub = xor i32 %notmask, -1
  %rdr_mask = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 20
  %56 = ptrtoint ptr %rdr_mask to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %sub, ptr %rdr_mask, align 4
  %and103 = and i32 %spec.select, 256
  %57 = shl nuw nsw i32 %and103, 2
  %58 = or i32 %spec.store.select, %57
  %and103.lobit = lshr exact i32 %and103, 8
  %bits.0 = add nuw nsw i32 %and103.lobit, %conv101
  %59 = zext i32 %bits.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values)
  switch i32 %bits.0, label %if.end94.do.body123_crit_edge [
    i32 9, label %if.then110
    i32 7, label %land.lhs.true114
    i32 8, label %if.end94.if.end136_crit_edge
  ]

if.end94.if.end136_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end136

if.end94.do.body123_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body123

if.then110:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  %or111 = or i32 %58, 4096
  br label %if.end136

land.lhs.true114:                                 ; preds = %if.end94
  %has_7bits_data = getelementptr inbounds %struct.stm32_usart_info, ptr %1, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %has_7bits_data to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %has_7bits_data, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool115.not = icmp eq i8 %61, 0
  br i1 %tobool115.not, label %land.lhs.true114.do.body123_crit_edge, label %if.then117

land.lhs.true114.do.body123_crit_edge:            ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body123

if.then117:                                       ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #13
  %or118 = or i32 %58, 268435456
  br label %if.end136

do.body123:                                       ; preds = %land.lhs.true114.do.body123_crit_edge, %if.end94.do.body123_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_usart_set_termios.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_usart_set_termios, %if.then129)) #11
          to label %if.end136 [label %if.then129], !srcloc !150

if.then129:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #13
  %dev130 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %62 = ptrtoint ptr %dev130 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev130, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_usart_set_termios.__UNIQUE_ID_ddebug238, ptr noundef %63, ptr noundef nonnull @.str.36, i32 noundef %bits.0) #11
  br label %if.end136

if.end136:                                        ; preds = %if.then129, %do.body123, %if.then117, %if.then110, %if.end94.if.end136_crit_edge
  %cr1.1 = phi i32 [ %58, %if.then129 ], [ %58, %if.end94.if.end136_crit_edge ], [ %or118, %if.then117 ], [ %or111, %if.then110 ], [ %58, %do.body123 ]
  %rtor = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 5
  %64 = ptrtoint ptr %rtor to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %rtor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %65)
  %cmp138.not = icmp eq i8 %65, -1
  br i1 %cmp138.not, label %if.end136.if.end161_crit_edge, label %land.lhs.true140

if.end136.if.end161_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end161

land.lhs.true140:                                 ; preds = %if.end136
  %rx_ch = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 3
  %66 = ptrtoint ptr %rx_ch to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rx_ch, align 4
  %tobool141.not = icmp eq ptr %67, null
  br i1 %tobool141.not, label %lor.lhs.false, label %land.lhs.true140.if.then149_crit_edge

land.lhs.true140.if.then149_crit_edge:            ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then149

lor.lhs.false:                                    ; preds = %land.lhs.true140
  %68 = ptrtoint ptr %fifoen to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %fifoen, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool143.not = icmp eq i8 %69, 0
  br i1 %tobool143.not, label %lor.lhs.false.if.end161_crit_edge, label %land.lhs.true145

lor.lhs.false.if.end161_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end161

land.lhs.true145:                                 ; preds = %lor.lhs.false
  %rxftcfg146 = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 17
  %70 = ptrtoint ptr %rxftcfg146 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rxftcfg146, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %71)
  %cmp147 = icmp sgt i32 %71, -1
  br i1 %cmp147, label %land.lhs.true145.if.then149_crit_edge, label %land.lhs.true145.if.end161_crit_edge

land.lhs.true145.if.end161_crit_edge:             ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end161

land.lhs.true145.if.then149_crit_edge:            ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then149

if.then149:                                       ; preds = %land.lhs.true145.if.then149_crit_edge, %land.lhs.true140.if.then149_crit_edge
  %bits.1.v = select i1 %tobool96.not, i32 2, i32 3
  %bits.1 = add nuw nsw i32 %bits.0, %bits.1.v
  %cr1_irq = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 9
  %72 = ptrtoint ptr %cr1_irq to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 67108864, ptr %cr1_irq, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %bits.1)
  %74 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %membase, align 4
  %76 = ptrtoint ptr %rtor to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %rtor, align 1
  %conv158 = zext i8 %77 to i32
  %add.ptr159 = getelementptr i8, ptr %75, i32 %conv158
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr159, i32 %73) #11, !srcloc !148
  %or160 = or i32 %55, 8388608
  %cr3_irq = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 10
  %78 = ptrtoint ptr %cr3_irq to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 268435456, ptr %cr3_irq, align 4
  br label %if.end161

if.end161:                                        ; preds = %if.then149, %land.lhs.true145.if.end161_crit_edge, %lor.lhs.false.if.end161_crit_edge, %if.end136.if.end161_crit_edge
  %cr2.1 = phi i32 [ %or160, %if.then149 ], [ %55, %land.lhs.true145.if.end161_crit_edge ], [ %55, %lor.lhs.false.if.end161_crit_edge ], [ %55, %if.end136.if.end161_crit_edge ]
  %cr1_irq162 = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 9
  %79 = ptrtoint ptr %cr1_irq162 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cr1_irq162, align 4
  %cr3_irq164 = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 10
  %81 = ptrtoint ptr %cr3_irq164 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %cr3_irq164, align 4
  %or165 = or i32 %82, %cr3.1
  %and166 = and i32 %spec.select, 512
  %or163 = or i32 %cr1.1, %and166
  %83 = or i32 %or163, %80
  %status = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 34
  %84 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %status, align 4
  %and171 = and i32 %85, -13
  store i32 %and171, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.select)
  %tobool173.not = icmp sgt i32 %spec.select, -1
  br i1 %tobool173.not, label %if.end161.if.end178_crit_edge, label %if.then174

if.end161.if.end178_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end178

if.then174:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #13
  %or176 = or i32 %85, 12
  %86 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %or176, ptr %status, align 4
  %or177 = or i32 %or165, 768
  br label %if.end178

if.end178:                                        ; preds = %if.then174, %if.end161.if.end178_crit_edge
  %cr3.2 = phi i32 [ %or165, %if.end161.if.end178_crit_edge ], [ %or177, %if.then174 ]
  %87 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %uartclk, align 4
  %div181420 = lshr i32 %call4, 1
  %add182 = add i32 %88, %div181420
  %div183 = udiv i32 %add182, %call4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %div183)
  %cmp184 = icmp ult i32 %div183, 16
  br i1 %cmp184, label %if.then186, label %if.else190

if.then186:                                       ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #13
  %or187 = or i32 %83, 32768
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %1, align 1
  %conv189 = zext i8 %90 to i32
  %91 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %92, i32 %conv189
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !147
  %94 = or i32 %93, 8388608
  %95 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %membase, align 4
  %add.ptr2.i = getelementptr i8, ptr %96, i32 %conv189
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %94) #11, !srcloc !148
  br label %if.end194

if.else190:                                       ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #13
  %and191 = and i32 %83, -32769
  %97 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %1, align 1
  %conv193 = zext i8 %98 to i32
  %99 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %membase, align 4
  %add.ptr.i426 = getelementptr i8, ptr %100, i32 %conv193
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i426) #11, !srcloc !147
  %102 = and i32 %101, -8388609
  %103 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %membase, align 4
  %add.ptr2.i427 = getelementptr i8, ptr %104, i32 %conv193
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i427, i32 %102) #11, !srcloc !148
  br label %if.end194

if.end194:                                        ; preds = %if.else190, %if.then186
  %cr1.3 = phi i32 [ %or187, %if.then186 ], [ %and191, %if.else190 ]
  %oversampling.0 = phi i32 [ 8, %if.then186 ], [ 16, %if.else190 ]
  %div183.frozen = freeze i32 %div183
  %div195 = udiv i32 %div183.frozen, %oversampling.0
  %shl196 = shl i32 %div195, 4
  %105 = mul i32 %div195, %oversampling.0
  %rem.decomposed = sub i32 %div183.frozen, %105
  %or197 = or i32 %shl196, %rem.decomposed
  %106 = tail call i32 @llvm.bswap.i32(i32 %or197)
  %107 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %membase, align 4
  %brr = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 3
  %109 = ptrtoint ptr %brr to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %brr, align 1
  %conv199 = zext i8 %110 to i32
  %add.ptr200 = getelementptr i8, ptr %108, i32 %conv199
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr200, i32 %106) #11, !srcloc !148
  tail call void @uart_update_timeout(ptr noundef %port, i32 noundef %spec.select, i32 noundef %call4) #11
  %read_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 28
  %111 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 8, ptr %read_status_mask, align 4
  %112 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %termios, align 4
  %and201 = and i32 %113, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and201)
  %tobool202.not = icmp eq i32 %and201, 0
  %spec.store.select422 = select i1 %tobool202.not, i32 8, i32 11
  %114 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %spec.store.select422, ptr %read_status_mask, align 4
  %115 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %termios, align 4
  %and208 = and i32 %116, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and208)
  %tobool209.not = icmp eq i32 %and208, 0
  br i1 %tobool209.not, label %if.end194.if.end213_crit_edge, label %if.then210

if.end194.if.end213_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end213

if.then210:                                       ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #13
  %or212 = or i32 %spec.store.select422, 2
  %117 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %or212, ptr %read_status_mask, align 4
  br label %if.end213

if.end213:                                        ; preds = %if.then210, %if.end194.if.end213_crit_edge
  %ignore_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 29
  %118 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %ignore_status_mask, align 4
  %119 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %termios, align 4
  %and215 = and i32 %120, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and215)
  %tobool216.not = icmp eq i32 %and215, 0
  %spec.store.select423 = select i1 %tobool216.not, i32 0, i32 3
  %121 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %spec.store.select423, ptr %ignore_status_mask, align 4
  %122 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %termios, align 4
  %and221 = and i32 %123, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and221)
  %tobool222.not = icmp eq i32 %and221, 0
  br i1 %tobool222.not, label %if.end213.if.end233_crit_edge, label %if.then223

if.end213.if.end233_crit_edge:                    ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end233

if.then223:                                       ; preds = %if.end213
  %or225 = or i32 %spec.store.select423, 2
  %124 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %or225, ptr %ignore_status_mask, align 4
  %125 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %termios, align 4
  %and227 = and i32 %126, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and227)
  %tobool228.not = icmp eq i32 %and227, 0
  br i1 %tobool228.not, label %if.then223.if.end233_crit_edge, label %if.then229

if.then223.if.end233_crit_edge:                   ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end233

if.then229:                                       ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #13
  %or231 = or i32 %spec.store.select423, 10
  %127 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %or231, ptr %ignore_status_mask, align 4
  br label %if.end233

if.end233:                                        ; preds = %if.then229, %if.then223.if.end233_crit_edge, %if.end213.if.end233_crit_edge
  %128 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %c_cflag, align 4
  %and235 = and i32 %129, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and235)
  %cmp236 = icmp eq i32 %and235, 0
  br i1 %cmp236, label %if.then238, label %if.end233.if.end241_crit_edge

if.end233.if.end241_crit_edge:                    ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end241

if.then238:                                       ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #13
  %130 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %ignore_status_mask, align 4
  %or240 = or i32 %131, 65536
  store i32 %or240, ptr %ignore_status_mask, align 4
  br label %if.end241

if.end241:                                        ; preds = %if.then238, %if.end233.if.end241_crit_edge
  %rx_ch242 = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 3
  %132 = ptrtoint ptr %rx_ch242 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %rx_ch242, align 4
  %tobool243.not = icmp eq ptr %133, null
  %or245 = or i32 %cr1.3, 256
  %or248 = or i32 %cr3.2, 8257
  %cr1.4 = select i1 %tobool243.not, i32 %cr1.3, i32 %or245
  %cr3.3 = select i1 %tobool243.not, i32 %cr3.2, i32 %or248
  %134 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %rs485, align 4
  %and251 = and i32 %135, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and251)
  %tobool252.not = icmp eq i32 %and251, 0
  br i1 %tobool252.not, label %if.else266, label %if.then253

if.then253:                                       ; preds = %if.end241
  %delay_rts_before_send = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56, i32 1
  %136 = ptrtoint ptr %delay_rts_before_send to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %delay_rts_before_send, align 4
  %delay_rts_after_send = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56, i32 2
  %138 = ptrtoint ptr %delay_rts_after_send to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %delay_rts_after_send, align 4
  %and.i429 = and i32 %cr1.4, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i429)
  %tobool.not.i = icmp eq i32 %and.i429, 0
  %mul.i = mul i32 %137, %call4
  %rs485_deat_dedt.0.v.i = select i1 %tobool.not.i, i32 4, i32 3
  %rs485_deat_dedt.0.i = shl i32 %mul.i, %rs485_deat_dedt.0.v.i
  %add.i430 = add i32 %rs485_deat_dedt.0.i, 500
  call void @__sanitizer_cov_trace_const_cmp4(i32 31999, i32 %add.i430)
  %cmp.i431 = icmp ugt i32 %add.i430, 31999
  %div5.i = udiv i32 %add.i430, 1000
  %phi.bo.i = shl i32 %div5.i, 21
  %phi.bo52.i = and i32 %phi.bo.i, 65011712
  %cond.i = select i1 %cmp.i431, i32 65011712, i32 %phi.bo52.i
  %or7.i = or i32 %cond.i, %cr1.4
  %mul10.i = mul i32 %139, %call4
  %rs485_deat_dedt.1.i = shl i32 %mul10.i, %rs485_deat_dedt.0.v.i
  %add20.i = add i32 %rs485_deat_dedt.1.i, 500
  call void @__sanitizer_cov_trace_const_cmp4(i32 31999, i32 %add20.i)
  %cmp22.i = icmp ugt i32 %add20.i, 31999
  %div21.i = udiv i32 %add20.i, 1000
  %phi.bo53.i = shl i32 %div21.i, 16
  %phi.bo54.i = and i32 %phi.bo53.i, 2031616
  %cond26.i = select i1 %cmp22.i, i32 2031616, i32 %phi.bo54.i
  %or29.i = or i32 %or7.i, %cond26.i
  %and255 = and i32 %135, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and255)
  %tobool256.not = icmp eq i32 %and255, 0
  br i1 %tobool256.not, label %if.else261, label %if.then257

if.then257:                                       ; preds = %if.then253
  call void @__sanitizer_cov_trace_pc() #13
  %or.i428 = and i32 %cr3.3, -49153
  %and258 = or i32 %or.i428, 16384
  %and260 = and i32 %135, -5
  %140 = ptrtoint ptr %rs485 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %and260, ptr %rs485, align 4
  br label %if.end269

if.else261:                                       ; preds = %if.then253
  call void @__sanitizer_cov_trace_pc() #13
  %or262 = or i32 %cr3.3, 49152
  %or264 = or i32 %135, 4
  %141 = ptrtoint ptr %rs485 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %or264, ptr %rs485, align 4
  br label %if.end269

if.else266:                                       ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #13
  %and267 = and i32 %cr3.3, -49153
  %and268 = and i32 %cr1.4, -67043329
  br label %if.end269

if.end269:                                        ; preds = %if.else266, %if.else261, %if.then257
  %cr1.5 = phi i32 [ %and268, %if.else266 ], [ %or29.i, %if.else261 ], [ %or29.i, %if.then257 ]
  %cr3.4 = phi i32 [ %and267, %if.else266 ], [ %or262, %if.else261 ], [ %and258, %if.then257 ]
  %wakeup_src = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 19
  %142 = ptrtoint ptr %wakeup_src to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %wakeup_src, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool270.not = icmp eq i8 %143, 0
  %and272 = and i32 %cr3.4, -3145729
  %or273 = or i32 %and272, 2097152
  %cr3.5 = select i1 %tobool270.not, i32 %cr3.4, i32 %or273
  %144 = tail call i32 @llvm.bswap.i32(i32 %cr3.5)
  %145 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %membase, align 4
  %147 = ptrtoint ptr %cr372 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %cr372, align 1
  %conv277 = zext i8 %148 to i32
  %add.ptr278 = getelementptr i8, ptr %146, i32 %conv277
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr278, i32 %144) #11, !srcloc !148
  %149 = tail call i32 @llvm.bswap.i32(i32 %cr2.1)
  %150 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %membase, align 4
  %cr2280 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 1
  %152 = ptrtoint ptr %cr2280 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %cr2280, align 1
  %conv281 = zext i8 %153 to i32
  %add.ptr282 = getelementptr i8, ptr %151, i32 %conv281
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr282, i32 %149) #11, !srcloc !148
  %154 = tail call i32 @llvm.bswap.i32(i32 %cr1.5)
  %155 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %membase, align 4
  %157 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %1, align 1
  %conv285 = zext i8 %158 to i32
  %add.ptr286 = getelementptr i8, ptr %156, i32 %conv285
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr286, i32 %154) #11, !srcloc !148
  %159 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %1, align 1
  %conv288 = zext i8 %160 to i32
  %161 = ptrtoint ptr %cfg3 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %cfg3, align 4
  %conv289 = zext i8 %162 to i32
  %shl290 = shl nuw i32 1, %conv289
  %163 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %membase, align 4
  %add.ptr.i433 = getelementptr i8, ptr %164, i32 %conv288
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i433) #11, !srcloc !147
  %166 = tail call i32 @llvm.bswap.i32(i32 %165) #11
  %or.i434 = or i32 %166, %shl290
  %167 = tail call i32 @llvm.bswap.i32(i32 %or.i434) #11
  %168 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %membase, align 4
  %add.ptr2.i435 = getelementptr i8, ptr %169, i32 %conv288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i435, i32 %167) #11, !srcloc !148
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call7) #11
  %flags292 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %170 = ptrtoint ptr %flags292 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %flags292, align 4
  %and293 = and i32 %171, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and293)
  %tobool294.not = icmp eq i32 %and293, 0
  br i1 %tobool294.not, label %lor.lhs.false295, label %if.end269.if.then303_crit_edge

if.end269.if.then303_crit_edge:                   ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then303

lor.lhs.false295:                                 ; preds = %if.end269
  %172 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %c_cflag, align 4
  %174 = and i32 %173, -2147481600
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %174)
  %.not = icmp eq i32 %174, 2048
  br i1 %.not, label %if.else304, label %lor.lhs.false295.if.then303_crit_edge

lor.lhs.false295.if.then303_crit_edge:            ; preds = %lor.lhs.false295
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then303

if.then303:                                       ; preds = %lor.lhs.false295.if.then303_crit_edge, %if.end269.if.then303_crit_edge
  %gpios.i = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 21
  %175 = ptrtoint ptr %gpios.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %gpios.i, align 4
  tail call void @mctrl_gpio_enable_ms(ptr noundef %176) #11
  br label %if.end305

if.else304:                                       ; preds = %lor.lhs.false295
  call void @__sanitizer_cov_trace_pc() #13
  %gpios.i436 = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 21
  %177 = ptrtoint ptr %gpios.i436 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %gpios.i436, align 4
  tail call void @mctrl_gpio_disable_ms(ptr noundef %178) #11
  br label %if.end305

if.end305:                                        ; preds = %if.else304, %if.then303
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_usart_pm(ptr noundef %port, i32 noundef %state, i32 noundef %oldstate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %state, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %do.body5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #11
  br label %sw.epilog

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %info = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 2
  %3 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %info, align 4
  %cfg3 = getelementptr inbounds %struct.stm32_usart_info, ptr %4, i32 0, i32 1
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #11
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 1
  %conv11 = zext i8 %6 to i32
  %7 = ptrtoint ptr %cfg3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cfg3, align 4
  %conv12 = zext i8 %8 to i32
  %shl = shl nuw i32 1, %conv12
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %9 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %conv11
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !147
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #11
  %neg.i = xor i32 %shl, -1
  %and.i = and i32 %12, %neg.i
  %13 = tail call i32 @llvm.bswap.i32(i32 %and.i) #11
  %14 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %15, i32 %conv11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %13) #11, !srcloc !148
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call8) #11
  %dev14 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %16 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev14, align 4
  %call.i22 = tail call i32 @__pm_runtime_idle(ptr noundef %17, i32 noundef 4) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body5, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @stm32_usart_type(ptr nocapture noundef readonly %port) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 113, i32 %1)
  %cmp = icmp eq i32 %1, 113
  %cond = select i1 %cmp, ptr @.str, ptr null
  ret ptr %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @stm32_usart_release_port(ptr nocapture noundef %port) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stm32_usart_request_port(ptr nocapture noundef readnone %port) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @stm32_usart_config_port(ptr nocapture noundef writeonly %port, i32 noundef %flags) #8 align 64 {
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
  store i32 113, ptr %type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stm32_usart_verify_port(ptr nocapture noundef readnone %port, ptr nocapture noundef readnone %ser) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctrl_gpio_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mctrl_gpio_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_usart_transmit_chars(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  %sg.i.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %x_char = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 24
  %2 = ptrtoint ptr %x_char to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %x_char, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end53, label %if.then

if.then:                                          ; preds = %entry
  %tx_dma_busy.i = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 12
  %4 = ptrtoint ptr %tx_dma_busy.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tx_dma_busy.i, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.i.not = icmp eq i8 %5, 0
  br i1 %tobool.i.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %6 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i, align 4
  %cr3.i = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %cr3.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cr3.i, align 1
  %conv.i = zext i8 %9 to i32
  %add.ptr.i = getelementptr i8, ptr %7, i32 %conv.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i133 = icmp slt i32 %10, 0
  br i1 %tobool.i133, label %if.then5, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %cr3.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cr3.i, align 1
  %conv = zext i8 %12 to i32
  %13 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i, align 4
  %add.ptr.i135 = getelementptr i8, ptr %14, i32 %conv
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i135) #11, !srcloc !147
  %16 = and i32 %15, 2147483647
  %17 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %18, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %16) #11, !srcloc !148
  br label %if.end

if.end:                                           ; preds = %if.then5, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %call6 = tail call i64 @ktime_get() #11
  %add.i = add i64 %call6, 1000000
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %isr8 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase, align 4
  %21 = ptrtoint ptr %isr8 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %isr8, align 1
  %conv9187 = zext i8 %22 to i32
  %add.ptr188 = getelementptr i8, ptr %20, i32 %conv9187
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr188) #11, !srcloc !147
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %and189 = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and189)
  %tobool11.not190 = icmp eq i32 %and189, 0
  br i1 %tobool11.not190, label %if.end.land.lhs.true15_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end.land.lhs.true15_crit_edge:                 ; preds = %if.end
  br label %land.lhs.true15

land.lhs.true15:                                  ; preds = %cond.false.land.lhs.true15_crit_edge, %if.end.land.lhs.true15_crit_edge
  %call16 = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call16, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call16, %add.i
  br i1 %cmp3.i, label %if.then19, label %cond.false

if.then19:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase, align 4
  %27 = ptrtoint ptr %isr8 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %isr8, align 1
  %conv23 = zext i8 %28 to i32
  %add.ptr24 = getelementptr i8, ptr %26, i32 %conv23
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #11, !srcloc !147
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 2147480) #11
  %32 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase, align 4
  %34 = ptrtoint ptr %isr8 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %isr8, align 1
  %conv9 = zext i8 %35 to i32
  %add.ptr = getelementptr i8, ptr %33, i32 %conv9
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !147
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %and = and i32 %37, 128
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %cond.false.land.lhs.true15_crit_edge, label %cond.false.for.end_crit_edge

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

cond.false.land.lhs.true15_crit_edge:             ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true15

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then19, %if.end.for.end_crit_edge
  %isr.0 = phi i32 [ %30, %if.then19 ], [ %24, %if.end.for.end_crit_edge ], [ %37, %cond.false.for.end_crit_edge ]
  %and37 = and i32 %isr.0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %do.end, label %for.end.if.end41_crit_edge

for.end.if.end41_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %39, ptr noundef nonnull @.str.24) #14
  br label %if.end41

if.end41:                                         ; preds = %do.end, %for.end.if.end41_crit_edge
  %40 = ptrtoint ptr %x_char to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %x_char, align 4
  %conv43 = zext i8 %41 to i32
  %42 = shl nuw i32 %conv43, 24
  %43 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase, align 4
  %tdr = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 10
  %45 = ptrtoint ptr %tdr to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %tdr, align 1
  %conv45 = zext i8 %46 to i32
  %add.ptr46 = getelementptr i8, ptr %44, i32 %conv45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %42) #11, !srcloc !148
  %47 = ptrtoint ptr %x_char to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %x_char, align 4
  %tx = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 5
  %48 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tx, align 4
  %inc = add i32 %49, 1
  store i32 %inc, ptr %tx, align 4
  %50 = ptrtoint ptr %tx_dma_busy.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %tx_dma_busy.i, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.i137.not = icmp eq i8 %51, 0
  br i1 %tobool.i137.not, label %if.end41.cleanup_crit_edge, label %if.then49

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then49:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  %cr350 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 2
  %52 = ptrtoint ptr %cr350 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %cr350, align 1
  %conv51 = zext i8 %53 to i32
  %54 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %membase, align 4
  %add.ptr.i139 = getelementptr i8, ptr %55, i32 %conv51
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i139) #11, !srcloc !147
  %57 = or i32 %56, -2147483648
  %58 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %membase, align 4
  %add.ptr2.i140 = getelementptr i8, ptr %59, i32 %conv51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i140, i32 %57) #11, !srcloc !148
  br label %cleanup

if.end53:                                         ; preds = %entry
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %60 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %state, align 4
  %head = getelementptr inbounds %struct.uart_state, ptr %61, i32 0, i32 2, i32 1
  %62 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %61, i32 0, i32 2, i32 2
  %64 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %65)
  %cmp54 = icmp eq i32 %63, %65
  br i1 %cmp54, label %if.end53.if.then58_crit_edge, label %lor.lhs.false

if.end53.if.then58_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then58

lor.lhs.false:                                    ; preds = %if.end53
  %tty2.i = getelementptr inbounds %struct.tty_port, ptr %61, i32 0, i32 1
  %66 = ptrtoint ptr %tty2.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tty2.i, align 4
  %tobool.not.i = icmp eq ptr %67, null
  br i1 %tobool.not.i, label %lor.lhs.false.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i

lor.lhs.false.uart_tx_stopped.exit_crit_edge:     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %uart_tx_stopped.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false
  %stopped.i = getelementptr inbounds %struct.tty_struct, ptr %67, i32 0, i32 19, i32 1
  %68 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %stopped.i, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool3.not.i = icmp eq i8 %69, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i.if.then58_crit_edge

land.lhs.true.i.if.then58_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then58

land.lhs.true.i.uart_tx_stopped.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uart_tx_stopped.exit

uart_tx_stopped.exit:                             ; preds = %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, %lor.lhs.false.uart_tx_stopped.exit_crit_edge
  %hw_stopped.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 35
  %70 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %hw_stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool4.not.i.not = icmp eq i32 %71, 0
  br i1 %tobool4.not.i.not, label %if.end59, label %uart_tx_stopped.exit.if.then58_crit_edge

uart_tx_stopped.exit.if.then58_crit_edge:         ; preds = %uart_tx_stopped.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then58

if.then58:                                        ; preds = %uart_tx_stopped.exit.if.then58_crit_edge, %land.lhs.true.i.if.then58_crit_edge, %if.end53.if.then58_crit_edge
  %fifoen.i = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 16
  %72 = ptrtoint ptr %fifoen.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %fifoen.i, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i143 = icmp eq i8 %73, 0
  br i1 %tobool.not.i143, label %if.then58.if.else.i_crit_edge, label %land.lhs.true.i145

if.then58.if.else.i_crit_edge:                    ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i145:                               ; preds = %if.then58
  %txftcfg.i = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 18
  %74 = ptrtoint ptr %txftcfg.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %txftcfg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %75)
  %cmp.i144 = icmp sgt i32 %75, -1
  br i1 %cmp.i144, label %if.then.i, label %land.lhs.true.i145.if.else.i_crit_edge

land.lhs.true.i145.if.else.i_crit_edge:           ; preds = %land.lhs.true.i145
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i145
  call void @__sanitizer_cov_trace_pc() #13
  %cr3.i146 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 2
  %76 = ptrtoint ptr %cr3.i146 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %cr3.i146, align 1
  %conv.i147 = zext i8 %77 to i32
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %78 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %79, i32 %conv.i147
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !147
  %81 = and i32 %80, -32769
  %82 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %membase.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %83, i32 %conv.i147
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %81) #11, !srcloc !148
  br label %cleanup

if.else.i:                                        ; preds = %land.lhs.true.i145.if.else.i_crit_edge, %if.then58.if.else.i_crit_edge
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %1, align 1
  %conv2.i = zext i8 %85 to i32
  %membase.i8.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %86 = ptrtoint ptr %membase.i8.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %membase.i8.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %87, i32 %conv2.i
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #11, !srcloc !147
  %89 = and i32 %88, 2147483647
  %90 = ptrtoint ptr %membase.i8.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %membase.i8.i, align 4
  %add.ptr2.i11.i = getelementptr i8, ptr %91, i32 %conv2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i11.i, i32 %89) #11, !srcloc !148
  br label %cleanup

if.end59:                                         ; preds = %uart_tx_stopped.exit
  %icr = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 8
  %92 = ptrtoint ptr %icr to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %icr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %93)
  %cmp61 = icmp eq i8 %93, -1
  br i1 %cmp61, label %if.then63, label %if.else

if.then63:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  %isr64 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 7
  %94 = ptrtoint ptr %isr64 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %isr64, align 1
  %conv65 = zext i8 %95 to i32
  %membase.i148 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %96 = ptrtoint ptr %membase.i148 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %membase.i148, align 4
  %add.ptr.i149 = getelementptr i8, ptr %97, i32 %conv65
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i149) #11, !srcloc !147
  %99 = and i32 %98, -1073741825
  %100 = ptrtoint ptr %membase.i148 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %membase.i148, align 4
  %add.ptr2.i151 = getelementptr i8, ptr %101, i32 %conv65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i151, i32 %99) #11, !srcloc !148
  br label %if.end70

if.else:                                          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  %conv60 = zext i8 %93 to i32
  %membase66 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %102 = ptrtoint ptr %membase66 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %membase66, align 4
  %add.ptr69 = getelementptr i8, ptr %103, i32 %conv60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 1073741824) #11, !srcloc !148
  br label %if.end70

if.end70:                                         ; preds = %if.else, %if.then63
  %tx_ch = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 6
  %104 = ptrtoint ptr %tx_ch to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %tx_ch, align 4
  %tobool71.not = icmp eq ptr %105, null
  br i1 %tobool71.not, label %if.else73, label %if.then72

if.then72:                                        ; preds = %if.end70
  %106 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %info, align 4
  %108 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %state, align 4
  %xmit2.i = getelementptr inbounds %struct.uart_state, ptr %109, i32 0, i32 2
  %tx_dma_busy.i.i = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 12
  %110 = ptrtoint ptr %tx_dma_busy.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %tx_dma_busy.i.i, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool.i.not.i = icmp eq i8 %111, 0
  br i1 %tobool.i.not.i, label %if.end6.i, label %if.then.i156

if.then.i156:                                     ; preds = %if.then72
  %membase.i.i154 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %112 = ptrtoint ptr %membase.i.i154 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %membase.i.i154, align 4
  %cr3.i.i = getelementptr inbounds %struct.stm32_usart_offsets, ptr %107, i32 0, i32 2
  %114 = ptrtoint ptr %cr3.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %cr3.i.i, align 1
  %conv.i.i = zext i8 %115 to i32
  %add.ptr.i.i155 = getelementptr i8, ptr %113, i32 %conv.i.i
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i155) #11, !srcloc !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool.i98.i = icmp slt i32 %116, 0
  br i1 %tobool.i98.i, label %if.then.i156.if.end74_crit_edge, label %if.then5.i

if.then.i156.if.end74_crit_edge:                  ; preds = %if.then.i156
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

if.then5.i:                                       ; preds = %if.then.i156
  call void @__sanitizer_cov_trace_pc() #13
  %117 = ptrtoint ptr %cr3.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %cr3.i.i, align 1
  %conv.i157 = zext i8 %118 to i32
  %119 = ptrtoint ptr %membase.i.i154 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %membase.i.i154, align 4
  %add.ptr.i100.i = getelementptr i8, ptr %120, i32 %conv.i157
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i100.i) #11, !srcloc !147
  %122 = or i32 %121, -2147483648
  %123 = ptrtoint ptr %membase.i.i154 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %membase.i.i154, align 4
  %add.ptr2.i.i158 = getelementptr i8, ptr %124, i32 %conv.i157
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i158, i32 %122) #11, !srcloc !148
  br label %if.end74

if.end6.i:                                        ; preds = %if.then72
  %head.i = getelementptr inbounds %struct.uart_state, ptr %109, i32 0, i32 2, i32 1
  %125 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %head.i, align 4
  %tail.i = getelementptr inbounds %struct.uart_state, ptr %109, i32 0, i32 2, i32 2
  %127 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %tail.i, align 4
  %sub.i = sub i32 %126, %128
  %and.i159 = and i32 %sub.i, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %128)
  %cmp12.i = icmp sgt i32 %126, %128
  br i1 %cmp12.i, label %if.then14.i, label %if.else.i160

if.then14.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %tx_buf.i = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 8
  %129 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %tx_buf.i, align 4
  %131 = ptrtoint ptr %xmit2.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %xmit2.i, align 4
  %arrayidx16.i = getelementptr i8, ptr %132, i32 %128
  %133 = call ptr @memcpy(ptr %130, ptr %arrayidx16.i, i32 %and.i159)
  br label %if.end35.i

if.else.i160:                                     ; preds = %if.end6.i
  %sub18.i = sub i32 4096, %128
  %134 = tail call i32 @llvm.umin.i32(i32 %sub18.i, i32 %and.i159) #11
  %tx_buf24.i = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 8
  %135 = ptrtoint ptr %tx_buf24.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %tx_buf24.i, align 4
  %137 = ptrtoint ptr %xmit2.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %xmit2.i, align 4
  %arrayidx28.i = getelementptr i8, ptr %138, i32 %128
  %139 = call ptr @memcpy(ptr %136, ptr %arrayidx28.i, i32 %134)
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i159, i32 %sub18.i)
  %tobool.not.not.i = icmp ugt i32 %and.i159, %sub18.i
  br i1 %tobool.not.not.i, label %if.then29.i, label %if.else.i160.if.end35.i_crit_edge

if.else.i160.if.end35.i_crit_edge:                ; preds = %if.else.i160
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.i

if.then29.i:                                      ; preds = %if.else.i160
  call void @__sanitizer_cov_trace_pc() #13
  %sub23.i = sub nsw i32 %and.i159, %134
  %140 = ptrtoint ptr %tx_buf24.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %tx_buf24.i, align 4
  %arrayidx31.i = getelementptr i8, ptr %141, i32 %134
  %142 = ptrtoint ptr %xmit2.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %xmit2.i, align 4
  %144 = call ptr @memcpy(ptr %arrayidx31.i, ptr %143, i32 %sub23.i)
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then29.i, %if.else.i160.if.end35.i_crit_edge, %if.then14.i
  %145 = ptrtoint ptr %tx_ch to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %tx_ch, align 4
  %tx_dma_buf.i = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 7
  %147 = ptrtoint ptr %tx_dma_buf.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %tx_dma_buf.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i) #11
  %149 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i, i32 0, i32 3
  %150 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i, i32 0, i32 4
  %151 = call ptr @memset(ptr %sg.i.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i.i, i32 noundef 1) #11
  %152 = ptrtoint ptr %149 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %148, ptr %149, align 4
  %153 = ptrtoint ptr %150 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %and.i159, ptr %150, align 4
  %tobool.not.i.i = icmp eq ptr %146, null
  br i1 %tobool.not.i.i, label %if.end35.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %lor.lhs.false.i.i

if.end35.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_prep_slave_single.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %if.end35.i
  %154 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %146, align 4
  %tobool1.not.i.i = icmp eq ptr %155, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_prep_slave_single.exit.thread.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %155, i32 0, i32 39
  %156 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %157, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %dmaengine_prep_slave_single.exit.i

lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_prep_slave_single.exit.thread.i

dmaengine_prep_slave_single.exit.thread.i:        ; preds = %lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, %lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, %if.end35.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #11
  br label %fallback_err.i

dmaengine_prep_slave_single.exit.i:               ; preds = %lor.lhs.false2.i.i
  %call.i.i = call ptr %157(ptr noundef nonnull %146, ptr noundef nonnull %sg.i.i, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #11
  %tobool37.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool37.not.i, label %dmaengine_prep_slave_single.exit.i.fallback_err.i_crit_edge, label %if.end39.i

dmaengine_prep_slave_single.exit.i.fallback_err.i_crit_edge: ; preds = %dmaengine_prep_slave_single.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fallback_err.i

if.end39.i:                                       ; preds = %dmaengine_prep_slave_single.exit.i
  %158 = ptrtoint ptr %tx_dma_busy.i.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 1, ptr %tx_dma_busy.i.i, align 4
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 6
  %159 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr @stm32_usart_tx_dma_complete, ptr %callback.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 8
  %160 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %port, ptr %callback_param.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 4
  %161 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i101.i = call i32 %162(ptr noundef nonnull %call.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i101.i)
  %tobool42.not.i = icmp sgt i32 %call.i101.i, -1
  %163 = ptrtoint ptr %tx_ch to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %tx_ch, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %164, align 4
  br i1 %tobool42.not.i, label %if.end44.i, label %if.then43.i

if.then43.i:                                      ; preds = %if.end39.i
  %device_terminate_all.i.i.i = getelementptr inbounds %struct.dma_device, ptr %166, i32 0, i32 47
  %167 = ptrtoint ptr %device_terminate_all.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %device_terminate_all.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %168, null
  br i1 %tobool.not.i.i.i, label %if.then43.i.stm32_usart_tx_dma_terminate.exit.i_crit_edge, label %if.then.i.i.i

if.then43.i.stm32_usart_tx_dma_terminate.exit.i_crit_edge: ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32_usart_tx_dma_terminate.exit.i

if.then.i.i.i:                                    ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call i32 %168(ptr noundef %164) #11
  br label %stm32_usart_tx_dma_terminate.exit.i

stm32_usart_tx_dma_terminate.exit.i:              ; preds = %if.then.i.i.i, %if.then43.i.stm32_usart_tx_dma_terminate.exit.i_crit_edge
  %169 = ptrtoint ptr %tx_dma_busy.i.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 0, ptr %tx_dma_busy.i.i, align 4
  br label %fallback_err.i

if.end44.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %166, i32 0, i32 50
  %170 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %device_issue_pending.i.i, align 4
  call void %171(ptr noundef %164) #11
  %cr346.i = getelementptr inbounds %struct.stm32_usart_offsets, ptr %107, i32 0, i32 2
  %172 = ptrtoint ptr %cr346.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %cr346.i, align 1
  %conv47.i = zext i8 %173 to i32
  %membase.i103.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %174 = ptrtoint ptr %membase.i103.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %membase.i103.i, align 4
  %add.ptr.i104.i = getelementptr i8, ptr %175, i32 %conv47.i
  %176 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i104.i) #11, !srcloc !147
  %177 = or i32 %176, -2147483648
  %178 = ptrtoint ptr %membase.i103.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %membase.i103.i, align 4
  %add.ptr2.i106.i = getelementptr i8, ptr %179, i32 %conv47.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i106.i, i32 %177) #11, !srcloc !148
  %180 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %tail.i, align 4
  %add.i161 = add i32 %181, %sub.i
  %and49.i = and i32 %add.i161, 4095
  store i32 %and49.i, ptr %tail.i, align 4
  %tx.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 5
  %182 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %tx.i, align 4
  %add51.i = add i32 %183, %and.i159
  store i32 %add51.i, ptr %tx.i, align 4
  br label %if.end74

fallback_err.i:                                   ; preds = %stm32_usart_tx_dma_terminate.exit.i, %dmaengine_prep_slave_single.exit.i.fallback_err.i_crit_edge, %dmaengine_prep_slave_single.exit.thread.i
  call fastcc void @stm32_usart_transmit_chars_pio(ptr noundef %port) #11
  br label %if.end74

if.else73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @stm32_usart_transmit_chars_pio(ptr noundef %port)
  br label %if.end74

if.end74:                                         ; preds = %if.else73, %fallback_err.i, %if.end44.i, %if.then5.i, %if.then.i156.if.end74_crit_edge
  %184 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %head, align 4
  %186 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %tail, align 4
  %sub = sub i32 %185, %187
  %and77 = and i32 %sub, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %cmp78 = icmp eq i32 %and77, 0
  br i1 %cmp78, label %if.then80, label %if.end74.if.end81_crit_edge

if.end74.if.end81_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

if.then80:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  call void @uart_write_wakeup(ptr noundef %port) #11
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %if.end74.if.end81_crit_edge
  %188 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %head, align 4
  %190 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %189, i32 %191)
  %cmp84 = icmp eq i32 %189, %191
  br i1 %cmp84, label %if.then86, label %if.end81.cleanup_crit_edge

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then86:                                        ; preds = %if.end81
  %192 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %info, align 4
  %fifoen.i163 = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 16
  %194 = ptrtoint ptr %fifoen.i163 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %fifoen.i163, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %195)
  %tobool.not.i164 = icmp eq i8 %195, 0
  br i1 %tobool.not.i164, label %if.then86.if.else.i178_crit_edge, label %land.lhs.true.i167

if.then86.if.else.i178_crit_edge:                 ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i178

land.lhs.true.i167:                               ; preds = %if.then86
  %txftcfg.i165 = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 18
  %196 = ptrtoint ptr %txftcfg.i165 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %txftcfg.i165, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %197)
  %cmp.i166 = icmp sgt i32 %197, -1
  br i1 %cmp.i166, label %if.then.i173, label %land.lhs.true.i167.if.else.i178_crit_edge

land.lhs.true.i167.if.else.i178_crit_edge:        ; preds = %land.lhs.true.i167
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i178

if.then.i173:                                     ; preds = %land.lhs.true.i167
  call void @__sanitizer_cov_trace_pc() #13
  %cr3.i168 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %193, i32 0, i32 2
  %198 = ptrtoint ptr %cr3.i168 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %cr3.i168, align 1
  %conv.i169 = zext i8 %199 to i32
  %membase.i.i170 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %200 = ptrtoint ptr %membase.i.i170 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %membase.i.i170, align 4
  %add.ptr.i.i171 = getelementptr i8, ptr %201, i32 %conv.i169
  %202 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i171) #11, !srcloc !147
  %203 = and i32 %202, -32769
  %204 = ptrtoint ptr %membase.i.i170 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %membase.i.i170, align 4
  %add.ptr2.i.i172 = getelementptr i8, ptr %205, i32 %conv.i169
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i172, i32 %203) #11, !srcloc !148
  br label %cleanup

if.else.i178:                                     ; preds = %land.lhs.true.i167.if.else.i178_crit_edge, %if.then86.if.else.i178_crit_edge
  %206 = ptrtoint ptr %193 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %193, align 1
  %conv2.i174 = zext i8 %207 to i32
  %membase.i8.i175 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %208 = ptrtoint ptr %membase.i8.i175 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %membase.i8.i175, align 4
  %add.ptr.i9.i176 = getelementptr i8, ptr %209, i32 %conv2.i174
  %210 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i176) #11, !srcloc !147
  %211 = and i32 %210, 2147483647
  %212 = ptrtoint ptr %membase.i8.i175 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %membase.i8.i175, align 4
  %add.ptr2.i11.i177 = getelementptr i8, ptr %213, i32 %conv2.i174
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i11.i177, i32 %211) #11, !srcloc !148
  br label %cleanup

cleanup:                                          ; preds = %if.else.i178, %if.then.i173, %if.end81.cleanup_crit_edge, %if.else.i, %if.then.i, %if.then49, %if.end41.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_usart_transmit_chars_pio(ptr nocapture noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %xmit2 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  %cr3.i = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %cr3.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cr3.i, align 1
  %conv.i = zext i8 %7 to i32
  %add.ptr.i = getelementptr i8, ptr %5, i32 %conv.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i = icmp slt i32 %8, 0
  br i1 %tobool.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %cr3.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cr3.i, align 1
  %conv = zext i8 %10 to i32
  %11 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %12, i32 %conv
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41) #11, !srcloc !147
  %14 = and i32 %13, 2147483647
  %15 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %16, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %14) #11, !srcloc !148
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %head = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 1
  %tail = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %head, align 4
  %19 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp.not62 = icmp eq i32 %18, %20
  br i1 %cmp.not62, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %isr = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 7
  %tdr = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 10
  %tx = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 5
  br label %while.body

while.body:                                       ; preds = %if.end8.while.body_crit_edge, %while.body.lr.ph
  %21 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase.i, align 4
  %23 = ptrtoint ptr %isr to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %isr, align 1
  %conv5 = zext i8 %24 to i32
  %add.ptr = getelementptr i8, ptr %22, i32 %conv5
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %tobool.not = icmp sgt i32 %25, -1
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %if.end8

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end8:                                          ; preds = %while.body
  %26 = ptrtoint ptr %xmit2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %xmit2, align 4
  %28 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tail, align 4
  %arrayidx = getelementptr i8, ptr %27, i32 %29
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx, align 1
  %conv10 = zext i8 %31 to i32
  %32 = shl nuw i32 %conv10, 24
  %33 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase.i, align 4
  %35 = ptrtoint ptr %tdr to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %tdr, align 1
  %conv12 = zext i8 %36 to i32
  %add.ptr13 = getelementptr i8, ptr %34, i32 %conv12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %32) #11, !srcloc !148
  %37 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tail, align 4
  %add = add i32 %38, 1
  %and15 = and i32 %add, 4095
  store i32 %and15, ptr %tail, align 4
  %39 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx, align 4
  %inc = add i32 %40, 1
  store i32 %inc, ptr %tx, align 4
  %41 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %head, align 4
  %43 = load i32, ptr %tail, align 4
  %cmp.not = icmp eq i32 %42, %43
  br i1 %cmp.not, label %if.end8.while.end_crit_edge, label %if.end8.while.body_crit_edge

if.end8.while.body_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end8.while.end_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end8.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %44 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %head, align 4
  %46 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp19 = icmp eq i32 %45, %47
  %48 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %info, align 4
  %fifoen.i = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 16
  %50 = ptrtoint ptr %fifoen.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %fifoen.i, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i = icmp eq i8 %51, 0
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %while.end
  br i1 %tobool.not.i, label %if.then21.if.else.i_crit_edge, label %land.lhs.true.i

if.then21.if.else.i_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then21
  %txftcfg.i = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 18
  %52 = ptrtoint ptr %txftcfg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %txftcfg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %cmp.i = icmp sgt i32 %53, -1
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %cr3.i43 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %49, i32 0, i32 2
  %54 = ptrtoint ptr %cr3.i43 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %cr3.i43, align 1
  %conv.i44 = zext i8 %55 to i32
  %56 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %57, i32 %conv.i44
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !147
  %59 = and i32 %58, -32769
  %60 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %membase.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %61, i32 %conv.i44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %59) #11, !srcloc !148
  br label %if.end22

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then21.if.else.i_crit_edge
  %62 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %49, align 1
  %conv2.i = zext i8 %63 to i32
  %64 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %membase.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %65, i32 %conv2.i
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #11, !srcloc !147
  %67 = and i32 %66, 2147483647
  %68 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %membase.i, align 4
  %add.ptr2.i11.i = getelementptr i8, ptr %69, i32 %conv2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i11.i, i32 %67) #11, !srcloc !148
  br label %if.end22

if.else:                                          ; preds = %while.end
  br i1 %tobool.not.i, label %if.else.if.else.i61_crit_edge, label %land.lhs.true.i50

if.else.if.else.i61_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i61

land.lhs.true.i50:                                ; preds = %if.else
  %txftcfg.i48 = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 18
  %70 = ptrtoint ptr %txftcfg.i48 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %txftcfg.i48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %71)
  %cmp.i49 = icmp sgt i32 %71, -1
  br i1 %cmp.i49, label %if.then.i56, label %land.lhs.true.i50.if.else.i61_crit_edge

land.lhs.true.i50.if.else.i61_crit_edge:          ; preds = %land.lhs.true.i50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i61

if.then.i56:                                      ; preds = %land.lhs.true.i50
  call void @__sanitizer_cov_trace_pc() #13
  %cr3.i51 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %49, i32 0, i32 2
  %72 = ptrtoint ptr %cr3.i51 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %cr3.i51, align 1
  %conv.i52 = zext i8 %73 to i32
  %74 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.i54 = getelementptr i8, ptr %75, i32 %conv.i52
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i54) #11, !srcloc !147
  %77 = or i32 %76, 32768
  %78 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %membase.i, align 4
  %add.ptr2.i.i55 = getelementptr i8, ptr %79, i32 %conv.i52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i55, i32 %77) #11, !srcloc !148
  br label %if.end22

if.else.i61:                                      ; preds = %land.lhs.true.i50.if.else.i61_crit_edge, %if.else.if.else.i61_crit_edge
  %80 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %49, align 1
  %conv2.i57 = zext i8 %81 to i32
  %82 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %membase.i, align 4
  %add.ptr.i9.i59 = getelementptr i8, ptr %83, i32 %conv2.i57
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i59) #11, !srcloc !147
  %85 = or i32 %84, -2147483648
  %86 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %membase.i, align 4
  %add.ptr2.i11.i60 = getelementptr i8, ptr %87, i32 %conv2.i57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i11.i60, i32 %85) #11, !srcloc !148
  br label %if.end22

if.end22:                                         ; preds = %if.else.i61, %if.then.i56, %if.else.i, %if.then.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_usart_tx_dma_complete(ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.stm32_port, ptr %arg, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %cr3 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cr3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cr3, align 1
  %conv = zext i8 %3 to i32
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %arg, i32 0, i32 2
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %conv
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !147
  %7 = and i32 %6, 2147483647
  %8 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %9, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %7) #11, !srcloc !148
  %tx_ch.i = getelementptr inbounds %struct.stm32_port, ptr %arg, i32 0, i32 6
  %10 = ptrtoint ptr %tx_ch.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_ch.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %13, i32 0, i32 47
  %14 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %entry.stm32_usart_tx_dma_terminate.exit_crit_edge, label %if.then.i.i

entry.stm32_usart_tx_dma_terminate.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32_usart_tx_dma_terminate.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call i32 %15(ptr noundef %11) #11
  br label %stm32_usart_tx_dma_terminate.exit

stm32_usart_tx_dma_terminate.exit:                ; preds = %if.then.i.i, %entry.stm32_usart_tx_dma_terminate.exit_crit_edge
  %tx_dma_busy.i = getelementptr inbounds %struct.stm32_port, ptr %arg, i32 0, i32 12
  %16 = ptrtoint ptr %tx_dma_busy.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %tx_dma_busy.i, align 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arg) #11
  tail call fastcc void @stm32_usart_transmit_chars(ptr noundef %arg)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arg, i32 noundef %call5) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctrl_gpio_enable_ms(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_usart_interrupt(i32 noundef %irq, ptr noundef %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %info = getelementptr inbounds %struct.stm32_port, ptr %ptr, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %membase = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 2
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %isr = getelementptr inbounds %struct.stm32_usart_offsets, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %isr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %isr, align 1
  %conv = zext i8 %7 to i32
  %add.ptr = getelementptr i8, ptr %5, i32 %conv
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !147
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %and = and i32 %9, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %icr = getelementptr inbounds %struct.stm32_usart_offsets, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %icr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %icr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %cmp.not = icmp eq i8 %11, -1
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %conv4 = zext i8 %11 to i32
  %12 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase, align 4
  %add.ptr9 = getelementptr i8, ptr %13, i32 %conv4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 524288) #11, !srcloc !148
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %and10 = and i32 %9, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end.if.end28_crit_edge, label %land.lhs.true12

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

land.lhs.true12:                                  ; preds = %if.end
  %icr13 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %3, i32 0, i32 8
  %14 = ptrtoint ptr %icr13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %icr13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %cmp15.not = icmp eq i8 %15, -1
  br i1 %cmp15.not, label %land.lhs.true12.if.end28_crit_edge, label %if.then17

land.lhs.true12.if.end28_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then17:                                        ; preds = %land.lhs.true12
  %conv14 = zext i8 %15 to i32
  %16 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase, align 4
  %add.ptr21 = getelementptr i8, ptr %17, i32 %conv14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 4096) #11, !srcloc !148
  %cr3 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %cr3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %cr3, align 1
  %conv22 = zext i8 %19 to i32
  %20 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 %conv22
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !147
  %23 = and i32 %22, -16385
  %24 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase, align 4
  %add.ptr2.i = getelementptr i8, ptr %25, i32 %conv22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %23) #11, !srcloc !148
  %irq23 = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 20
  %26 = ptrtoint ptr %irq23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq23, align 4
  %call24 = tail call ptr @irq_get_irq_data(i32 noundef %27) #11
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call24, i32 0, i32 3
  %28 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %common.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %and.i89 = and i32 %31, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i89)
  %tobool.i.not = icmp eq i32 %and.i89, 0
  br i1 %tobool.i.not, label %if.then17.if.end28_crit_edge, label %if.then26

if.then17.if.end28_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then26:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  %tty = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tty, align 4
  %dev = getelementptr inbounds %struct.tty_struct, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  tail call void @pm_wakeup_dev_event(ptr noundef %35, i32 noundef 0, i1 noundef zeroext false) #11
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.then17.if.end28_crit_edge, %land.lhs.true12.if.end28_crit_edge, %if.end.if.end28_crit_edge
  %throttled = getelementptr inbounds %struct.stm32_port, ptr %ptr, i32 0, i32 13
  %36 = ptrtoint ptr %throttled to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %throttled, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool29.not = icmp eq i8 %37, 0
  br i1 %tobool29.not, label %if.then30, label %if.end28.if.end46_crit_edge

if.end28.if.end46_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then30:                                        ; preds = %if.end28
  %and31 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.then30.lor.lhs.false_crit_edge, label %land.lhs.true33

if.then30.lor.lhs.false_crit_edge:                ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

land.lhs.true33:                                  ; preds = %if.then30
  %rx_ch.i = getelementptr inbounds %struct.stm32_port, ptr %ptr, i32 0, i32 3
  %38 = ptrtoint ptr %rx_ch.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rx_ch.i, align 4
  %tobool.not.i = icmp eq ptr %39, null
  br i1 %tobool.not.i, label %land.lhs.true33.if.then40_crit_edge, label %stm32_usart_rx_dma_enabled.exit

land.lhs.true33.if.then40_crit_edge:              ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then40

stm32_usart_rx_dma_enabled.exit:                  ; preds = %land.lhs.true33
  %40 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %info, align 4
  %42 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %membase, align 4
  %cr3.i = getelementptr inbounds %struct.stm32_usart_offsets, ptr %41, i32 0, i32 2
  %44 = ptrtoint ptr %cr3.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %cr3.i, align 1
  %conv.i = zext i8 %45 to i32
  %add.ptr.i91 = getelementptr i8, ptr %43, i32 %conv.i
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i91) #11, !srcloc !147
  %47 = and i32 %46, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool3.i.not = icmp eq i32 %47, 0
  br i1 %tobool3.i.not, label %stm32_usart_rx_dma_enabled.exit.if.then40_crit_edge, label %stm32_usart_rx_dma_enabled.exit.lor.lhs.false_crit_edge

stm32_usart_rx_dma_enabled.exit.lor.lhs.false_crit_edge: ; preds = %stm32_usart_rx_dma_enabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

stm32_usart_rx_dma_enabled.exit.if.then40_crit_edge: ; preds = %stm32_usart_rx_dma_enabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then40

lor.lhs.false:                                    ; preds = %stm32_usart_rx_dma_enabled.exit.lor.lhs.false_crit_edge, %if.then30.lor.lhs.false_crit_edge
  %and35 = and i32 %9, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %lor.lhs.false.if.end46_crit_edge, label %land.lhs.true37

lor.lhs.false.if.end46_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

land.lhs.true37:                                  ; preds = %lor.lhs.false
  %rx_ch.i92 = getelementptr inbounds %struct.stm32_port, ptr %ptr, i32 0, i32 3
  %48 = ptrtoint ptr %rx_ch.i92 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rx_ch.i92, align 4
  %tobool.not.i93 = icmp eq ptr %49, null
  br i1 %tobool.not.i93, label %land.lhs.true37.if.end46_crit_edge, label %stm32_usart_rx_dma_enabled.exit102

land.lhs.true37.if.end46_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

stm32_usart_rx_dma_enabled.exit102:               ; preds = %land.lhs.true37
  %50 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %info, align 4
  %52 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %membase, align 4
  %cr3.i96 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %51, i32 0, i32 2
  %54 = ptrtoint ptr %cr3.i96 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %cr3.i96, align 1
  %conv.i97 = zext i8 %55 to i32
  %add.ptr.i98 = getelementptr i8, ptr %53, i32 %conv.i97
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i98) #11, !srcloc !147
  %57 = and i32 %56, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool3.i99.not = icmp eq i32 %57, 0
  br i1 %tobool3.i99.not, label %stm32_usart_rx_dma_enabled.exit102.if.end46_crit_edge, label %stm32_usart_rx_dma_enabled.exit102.if.then40_crit_edge

stm32_usart_rx_dma_enabled.exit102.if.then40_crit_edge: ; preds = %stm32_usart_rx_dma_enabled.exit102
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then40

stm32_usart_rx_dma_enabled.exit102.if.end46_crit_edge: ; preds = %stm32_usart_rx_dma_enabled.exit102
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then40:                                        ; preds = %stm32_usart_rx_dma_enabled.exit102.if.then40_crit_edge, %stm32_usart_rx_dma_enabled.exit.if.then40_crit_edge, %land.lhs.true33.if.then40_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %ptr) #11
  %call41 = tail call fastcc i32 @stm32_usart_receive_chars(ptr noundef %ptr, i1 noundef zeroext false)
  %has_sysrq.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 48
  %58 = ptrtoint ptr %has_sysrq.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %has_sysrq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i103 = icmp eq i8 %59, 0
  br i1 %tobool.not.i103, label %if.then.i, label %if.end.i104

if.then.i:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %ptr) #11
  br label %uart_unlock_and_check_sysrq.exit

if.end.i104:                                      ; preds = %if.then40
  %sysrq_ch1.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 47
  %60 = ptrtoint ptr %sysrq_ch1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sysrq_ch1.i, align 4
  store i32 0, ptr %sysrq_ch1.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %ptr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool4.not.i = icmp eq i32 %61, 0
  br i1 %tobool4.not.i, label %if.end.i104.uart_unlock_and_check_sysrq.exit_crit_edge, label %if.then5.i

if.end.i104.uart_unlock_and_check_sysrq.exit_crit_edge: ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #13
  br label %uart_unlock_and_check_sysrq.exit

if.then5.i:                                       ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @handle_sysrq(i32 noundef %61) #11
  br label %uart_unlock_and_check_sysrq.exit

uart_unlock_and_check_sysrq.exit:                 ; preds = %if.then5.i, %if.end.i104.uart_unlock_and_check_sysrq.exit_crit_edge, %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %uart_unlock_and_check_sysrq.exit.if.end46_crit_edge, label %if.then43

uart_unlock_and_check_sysrq.exit.if.end46_crit_edge: ; preds = %uart_unlock_and_check_sysrq.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then43:                                        ; preds = %uart_unlock_and_check_sysrq.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @tty_flip_buffer_push(ptr noundef %1) #11
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %uart_unlock_and_check_sysrq.exit.if.end46_crit_edge, %stm32_usart_rx_dma_enabled.exit102.if.end46_crit_edge, %land.lhs.true37.if.end46_crit_edge, %lor.lhs.false.if.end46_crit_edge, %if.end28.if.end46_crit_edge
  %and47 = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end46.if.end54_crit_edge, label %land.lhs.true49

if.end46.if.end54_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

land.lhs.true49:                                  ; preds = %if.end46
  %tx_ch = getelementptr inbounds %struct.stm32_port, ptr %ptr, i32 0, i32 6
  %62 = ptrtoint ptr %tx_ch to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tx_ch, align 4
  %tobool50.not = icmp eq ptr %63, null
  br i1 %tobool50.not, label %if.then51, label %land.lhs.true49.if.end54_crit_edge

land.lhs.true49.if.end54_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.then51:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_lock(ptr noundef %ptr) #11
  tail call fastcc void @stm32_usart_transmit_chars(ptr noundef %ptr)
  tail call void @_raw_spin_unlock(ptr noundef %ptr) #11
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %land.lhs.true49.if.end54_crit_edge, %if.end46.if.end54_crit_edge
  %rx_ch.i105 = getelementptr inbounds %struct.stm32_port, ptr %ptr, i32 0, i32 3
  %64 = ptrtoint ptr %rx_ch.i105 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rx_ch.i105, align 4
  %tobool.not.i106 = icmp eq ptr %65, null
  br i1 %tobool.not.i106, label %if.end54.stm32_usart_rx_dma_enabled.exit115.thread_crit_edge, label %stm32_usart_rx_dma_enabled.exit115

if.end54.stm32_usart_rx_dma_enabled.exit115.thread_crit_edge: ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32_usart_rx_dma_enabled.exit115.thread

stm32_usart_rx_dma_enabled.exit115:               ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  %66 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %info, align 4
  %68 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %membase, align 4
  %cr3.i109 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %67, i32 0, i32 2
  %70 = ptrtoint ptr %cr3.i109 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %cr3.i109, align 1
  %conv.i110 = zext i8 %71 to i32
  %add.ptr.i111 = getelementptr i8, ptr %69, i32 %conv.i110
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i111) #11, !srcloc !147
  %73 = and i32 %72, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool3.i112.not = icmp eq i32 %73, 0
  %spec.select = select i1 %tobool3.i112.not, i32 1, i32 2
  br label %stm32_usart_rx_dma_enabled.exit115.thread

stm32_usart_rx_dma_enabled.exit115.thread:        ; preds = %stm32_usart_rx_dma_enabled.exit115, %if.end54.stm32_usart_rx_dma_enabled.exit115.thread_crit_edge
  %74 = phi i32 [ 1, %if.end54.stm32_usart_rx_dma_enabled.exit115.thread_crit_edge ], [ %spec.select, %stm32_usart_rx_dma_enabled.exit115 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_usart_threaded_interrupt(i32 noundef %irq, ptr noundef %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %throttled = getelementptr inbounds %struct.stm32_port, ptr %ptr, i32 0, i32 13
  %2 = ptrtoint ptr %throttled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %throttled, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.body2, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

do.body2:                                         ; preds = %entry
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ptr) #11
  %call7 = tail call fastcc i32 @stm32_usart_receive_chars(ptr noundef %ptr, i1 noundef zeroext false)
  %has_sysrq.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 48
  %4 = ptrtoint ptr %has_sysrq.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_sysrq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ptr, i32 noundef %call4) #11
  br label %uart_unlock_and_check_sysrq_irqrestore.exit

if.end.i:                                         ; preds = %do.body2
  %sysrq_ch1.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 47
  %6 = ptrtoint ptr %sysrq_ch1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysrq_ch1.i, align 4
  store i32 0, ptr %sysrq_ch1.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ptr, i32 noundef %call4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not.i = icmp eq i32 %7, 0
  br i1 %tobool4.not.i, label %if.end.i.uart_unlock_and_check_sysrq_irqrestore.exit_crit_edge, label %if.then5.i

if.end.i.uart_unlock_and_check_sysrq_irqrestore.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uart_unlock_and_check_sysrq_irqrestore.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @handle_sysrq(i32 noundef %7) #11
  br label %uart_unlock_and_check_sysrq_irqrestore.exit

uart_unlock_and_check_sysrq_irqrestore.exit:      ; preds = %if.then5.i, %if.end.i.uart_unlock_and_check_sysrq_irqrestore.exit_crit_edge, %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %uart_unlock_and_check_sysrq_irqrestore.exit.if.end10_crit_edge, label %if.then9

uart_unlock_and_check_sysrq_irqrestore.exit.if.end10_crit_edge: ; preds = %uart_unlock_and_check_sysrq_irqrestore.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then9:                                         ; preds = %uart_unlock_and_check_sysrq_irqrestore.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @tty_flip_buffer_push(ptr noundef %1) #11
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %uart_unlock_and_check_sysrq_irqrestore.exit.if.end10_crit_edge, %entry.if.end10_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_usart_start_rx_dma_cyclic(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %last_res = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 11
  %2 = ptrtoint ptr %last_res to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4096, ptr %last_res, align 4
  %rx_ch = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 3
  %3 = ptrtoint ptr %rx_ch to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx_ch, align 4
  %rx_dma_buf = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 4
  %5 = ptrtoint ptr %rx_dma_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_dma_buf, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %lor.lhs.false.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false.i:                                  ; preds = %entry
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %tobool1.not.i = icmp eq ptr %8, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.end_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_dma_cyclic.i = getelementptr inbounds %struct.dma_device, ptr %8, i32 0, i32 40
  %9 = ptrtoint ptr %device_prep_dma_cyclic.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device_prep_dma_cyclic.i, align 4
  %tobool4.not.i = icmp eq ptr %10, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.do.end_crit_edge, label %dmaengine_prep_dma_cyclic.exit

lor.lhs.false2.i.do.end_crit_edge:                ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

dmaengine_prep_dma_cyclic.exit:                   ; preds = %lor.lhs.false2.i
  %call.i = tail call ptr %10(ptr noundef nonnull %4, i32 noundef %6, i32 noundef 4096, i32 noundef 2048, i32 noundef 2, i32 noundef 1) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %dmaengine_prep_dma_cyclic.exit.do.end_crit_edge, label %if.end

dmaengine_prep_dma_cyclic.exit.do.end_crit_edge:  ; preds = %dmaengine_prep_dma_cyclic.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %dmaengine_prep_dma_cyclic.exit.do.end_crit_edge, %lor.lhs.false2.i.do.end_crit_edge, %lor.lhs.false.i.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.30) #14
  br label %cleanup

if.end:                                           ; preds = %dmaengine_prep_dma_cyclic.exit
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 6
  %13 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @stm32_usart_rx_dma_complete, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 8
  %14 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %port, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_submit.i, align 4
  %call.i30 = tail call i32 %16(ptr noundef nonnull %call.i) #11
  %17 = tail call i32 @llvm.smin.i32(i32 %call.i30, i32 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i30)
  %tobool5.not = icmp sgt i32 %call.i30, -1
  %18 = ptrtoint ptr %rx_ch to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_ch, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  br i1 %tobool5.not, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.end
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %21, i32 0, i32 47
  %22 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %if.then6.cleanup_crit_edge, label %dmaengine_terminate_async.exit.i

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

dmaengine_terminate_async.exit.i:                 ; preds = %if.then6
  %call.i.i = tail call i32 %23(ptr noundef %19) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i31 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i31, label %if.end.i32, label %dmaengine_terminate_async.exit.i.cleanup_crit_edge

dmaengine_terminate_async.exit.i.cleanup_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i32:                                       ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.32, i32 noundef 1169) #11
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %19, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %25, i32 0, i32 48
  %26 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %27, null
  br i1 %tobool.not.i1.i, label %if.end.i32.cleanup_crit_edge, label %if.then.i2.i

if.end.i32.cleanup_crit_edge:                     ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i2.i:                                     ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %27(ptr noundef %19) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %21, i32 0, i32 50
  %28 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %29(ptr noundef %19) #11
  %throttled = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 13
  %30 = ptrtoint ptr %throttled to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %throttled, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool11.not = icmp eq i8 %31, 0
  br i1 %tobool11.not, label %if.then12, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %cr3 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %cr3 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %cr3, align 1
  %conv = zext i8 %33 to i32
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %34 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %35, i32 %conv
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !147
  %37 = or i32 %36, 1073741824
  %38 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %membase.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %39, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %37) #11, !srcloc !148
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end9.cleanup_crit_edge, %if.then.i2.i, %if.end.i32.cleanup_crit_edge, %dmaengine_terminate_async.exit.i.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.then12 ], [ 0, %if.end9.cleanup_crit_edge ], [ %17, %if.then6.cleanup_crit_edge ], [ %17, %dmaengine_terminate_async.exit.i.cleanup_crit_edge ], [ %17, %if.end.i32.cleanup_crit_edge ], [ %17, %if.then.i2.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_usart_receive_chars(ptr noundef %port, i1 noundef zeroext %force_dma_flush) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %rx_ch.i = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 3
  %2 = ptrtoint ptr %rx_ch.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_ch.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.stm32_usart_rx_dma_enabled.exit_crit_edge, label %if.end.i

entry.stm32_usart_rx_dma_enabled.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32_usart_rx_dma_enabled.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  %cr3.i = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %cr3.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cr3.i, align 1
  %conv.i = zext i8 %7 to i32
  %add.ptr.i = getelementptr i8, ptr %5, i32 %conv.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !147
  %9 = and i32 %8, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.i = icmp ne i32 %9, 0
  br label %stm32_usart_rx_dma_enabled.exit

stm32_usart_rx_dma_enabled.exit:                  ; preds = %if.end.i, %entry.stm32_usart_rx_dma_enabled.exit_crit_edge
  %retval.0.i49 = phi i1 [ %tobool3.i, %if.end.i ], [ false, %entry.stm32_usart_rx_dma_enabled.exit_crit_edge ]
  %brmerge = or i1 %retval.0.i49, %force_dma_flush
  br i1 %brmerge, label %if.then, label %if.else28

if.then:                                          ; preds = %stm32_usart_rx_dma_enabled.exit
  %10 = ptrtoint ptr %rx_ch.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_ch.i, align 4
  %cookie = getelementptr inbounds %struct.dma_chan, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cookie, align 4
  %rx_dma_state = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 22
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %15, i32 0, i32 49
  %16 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device_tx_status.i, align 4
  %call.i = tail call i32 %17(ptr noundef %11, i32 noundef %13, ptr noundef %rx_dma_state) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 1
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %residue.i = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 22, i32 2
  %18 = ptrtoint ptr %residue.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %residue.i, align 4
  %last_res.i = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 11
  %20 = ptrtoint ptr %last_res.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %last_res.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp.i = icmp ugt i32 %19, %21
  br i1 %cmp.i, label %if.then.i, label %if.then5.if.end.i50_crit_edge

if.then5.if.end.i50_crit_edge:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i50

if.then.i:                                        ; preds = %if.then5
  %state.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %22 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %state.i.i, align 4
  %rx_buf.i.i = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 5
  %24 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_buf.i.i, align 4
  %sub.i.i = sub i32 4096, %21
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 %sub.i.i
  %rdr_mask.i.i = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 20
  %26 = ptrtoint ptr %rdr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rdr_mask.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %27)
  %cmp.i.i = icmp ne i32 %27, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp338.i.i = icmp ne i32 %21, 0
  %or.cond.i.i = and i1 %cmp338.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %if.then.i.for.body.i.i_crit_edge, label %if.then.i.if.end.i.i_crit_edge

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.for.body.i.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then.i.for.body.i.i_crit_edge
  %i.039.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then.i.for.body.i.i_crit_edge ]
  %28 = ptrtoint ptr %rdr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rdr_mask.i.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %i.039.i.i
  %30 = ptrtoint ptr %add.ptr5.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %add.ptr5.i.i, align 1
  %32 = trunc i32 %29 to i8
  %conv6.i.i = and i8 %31, %32
  store i8 %conv6.i.i, ptr %add.ptr5.i.i, align 1
  %inc.i.i = add nuw i32 %i.039.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %21
  br i1 %exitcond.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body.i.i.if.end.i.i_crit_edge, %if.then.i.if.end.i.i_crit_edge
  %call.i.i.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %23, ptr noundef %add.ptr.i.i, i8 noundef zeroext 0, i32 noundef %21) #11
  %rx.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 4
  %33 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx.i.i, align 4
  %add.i.i = add i32 %34, %call.i.i.i
  store i32 %add.i.i, ptr %rx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i, i32 %21)
  %cmp8.not.i.i = icmp eq i32 %call.i.i.i, %21
  br i1 %cmp8.not.i.i, label %if.end.i.i.stm32_usart_push_buffer_dma.exit.i_crit_edge, label %if.then10.i.i

if.end.i.i.stm32_usart_push_buffer_dma.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32_usart_push_buffer_dma.exit.i

if.then10.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %buf_overrun.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 10
  %35 = ptrtoint ptr %buf_overrun.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %buf_overrun.i.i, align 4
  %inc12.i.i = add i32 %36, 1
  store i32 %inc12.i.i, ptr %buf_overrun.i.i, align 4
  br label %stm32_usart_push_buffer_dma.exit.i

stm32_usart_push_buffer_dma.exit.i:               ; preds = %if.then10.i.i, %if.end.i.i.stm32_usart_push_buffer_dma.exit.i_crit_edge
  %37 = ptrtoint ptr %last_res.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %last_res.i, align 4
  %sub15.i.i = sub i32 %38, %call.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %call.i.i.i)
  %cmp17.i.i = icmp eq i32 %38, %call.i.i.i
  %spec.select.i.i = select i1 %cmp17.i.i, i32 4096, i32 %sub15.i.i
  %39 = ptrtoint ptr %last_res.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %spec.select.i.i, ptr %last_res.i, align 4
  br label %if.end.i50

if.end.i50:                                       ; preds = %stm32_usart_push_buffer_dma.exit.i, %if.then5.if.end.i50_crit_edge
  %size.0.i = phi i32 [ %21, %stm32_usart_push_buffer_dma.exit.i ], [ 0, %if.then5.if.end.i50_crit_edge ]
  %40 = ptrtoint ptr %last_res.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %last_res.i, align 4
  %42 = ptrtoint ptr %residue.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %residue.i, align 4
  %sub.i = sub i32 %41, %43
  %state.i15.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %44 = ptrtoint ptr %state.i15.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %state.i15.i, align 4
  %rx_buf.i16.i = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 5
  %46 = ptrtoint ptr %rx_buf.i16.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rx_buf.i16.i, align 4
  %sub.i18.i = sub i32 4096, %41
  %add.ptr.i19.i = getelementptr i8, ptr %47, i32 %sub.i18.i
  %rdr_mask.i20.i = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 20
  %48 = ptrtoint ptr %rdr_mask.i20.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rdr_mask.i20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %49)
  %cmp.i21.i = icmp ne i32 %49, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp338.i22.i = icmp ne i32 %41, %43
  %or.cond.i23.i = and i1 %cmp338.i22.i, %cmp.i21.i
  br i1 %or.cond.i23.i, label %if.end.i50.for.body.i29.i_crit_edge, label %if.end.i50.if.end.i34.i_crit_edge

if.end.i50.if.end.i34.i_crit_edge:                ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i34.i

if.end.i50.for.body.i29.i_crit_edge:              ; preds = %if.end.i50
  br label %for.body.i29.i

for.body.i29.i:                                   ; preds = %for.body.i29.i.for.body.i29.i_crit_edge, %if.end.i50.for.body.i29.i_crit_edge
  %i.039.i24.i = phi i32 [ %inc.i27.i, %for.body.i29.i.for.body.i29.i_crit_edge ], [ 0, %if.end.i50.for.body.i29.i_crit_edge ]
  %50 = ptrtoint ptr %rdr_mask.i20.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rdr_mask.i20.i, align 4
  %add.ptr5.i25.i = getelementptr i8, ptr %add.ptr.i19.i, i32 %i.039.i24.i
  %52 = ptrtoint ptr %add.ptr5.i25.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %add.ptr5.i25.i, align 1
  %54 = trunc i32 %51 to i8
  %conv6.i26.i = and i8 %53, %54
  store i8 %conv6.i26.i, ptr %add.ptr5.i25.i, align 1
  %inc.i27.i = add nuw i32 %i.039.i24.i, 1
  %exitcond.not.i28.i = icmp eq i32 %inc.i27.i, %sub.i
  br i1 %exitcond.not.i28.i, label %for.body.i29.i.if.end.i34.i_crit_edge, label %for.body.i29.i.for.body.i29.i_crit_edge

for.body.i29.i.for.body.i29.i_crit_edge:          ; preds = %for.body.i29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i29.i

for.body.i29.i.if.end.i34.i_crit_edge:            ; preds = %for.body.i29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i34.i

if.end.i34.i:                                     ; preds = %for.body.i29.i.if.end.i34.i_crit_edge, %if.end.i50.if.end.i34.i_crit_edge
  %call.i.i30.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %45, ptr noundef %add.ptr.i19.i, i8 noundef zeroext 0, i32 noundef %sub.i) #11
  %rx.i31.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 4
  %55 = ptrtoint ptr %rx.i31.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rx.i31.i, align 4
  %add.i32.i = add i32 %56, %call.i.i30.i
  store i32 %add.i32.i, ptr %rx.i31.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i30.i, i32 %sub.i)
  %cmp8.not.i33.i = icmp eq i32 %call.i.i30.i, %sub.i
  br i1 %cmp8.not.i33.i, label %if.end.i34.i.stm32_usart_receive_chars_dma.exit_crit_edge, label %if.then10.i37.i

if.end.i34.i.stm32_usart_receive_chars_dma.exit_crit_edge: ; preds = %if.end.i34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32_usart_receive_chars_dma.exit

if.then10.i37.i:                                  ; preds = %if.end.i34.i
  call void @__sanitizer_cov_trace_pc() #13
  %buf_overrun.i35.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 10
  %57 = ptrtoint ptr %buf_overrun.i35.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %buf_overrun.i35.i, align 4
  %inc12.i36.i = add i32 %58, 1
  store i32 %inc12.i36.i, ptr %buf_overrun.i35.i, align 4
  br label %stm32_usart_receive_chars_dma.exit

stm32_usart_receive_chars_dma.exit:               ; preds = %if.then10.i37.i, %if.end.i34.i.stm32_usart_receive_chars_dma.exit_crit_edge
  %59 = ptrtoint ptr %last_res.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %last_res.i, align 4
  %sub15.i38.i = sub i32 %60, %call.i.i30.i
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %call.i.i30.i)
  %cmp17.i39.i = icmp eq i32 %60, %call.i.i30.i
  %spec.select.i40.i = select i1 %cmp17.i39.i, i32 4096, i32 %sub15.i38.i
  %61 = ptrtoint ptr %last_res.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %spec.select.i40.i, ptr %last_res.i, align 4
  %add.i = add i32 %sub.i, %size.0.i
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %62 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %membase, align 4
  %isr = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 7
  %64 = ptrtoint ptr %isr to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %isr, align 1
  %conv = zext i8 %65 to i32
  %add.ptr = getelementptr i8, ptr %63, i32 %conv
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !147
  %67 = and i32 %66, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool8.not = icmp eq i32 %67, 0
  br i1 %tobool8.not, label %stm32_usart_receive_chars_dma.exit.if.end30_crit_edge, label %if.then9

stm32_usart_receive_chars_dma.exit.if.end30_crit_edge: ; preds = %stm32_usart_receive_chars_dma.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then9:                                         ; preds = %stm32_usart_receive_chars_dma.exit
  call void @__sanitizer_cov_trace_pc() #13
  %cr3 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 2
  %68 = ptrtoint ptr %cr3 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %cr3, align 1
  %conv10 = zext i8 %69 to i32
  %70 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %membase, align 4
  %add.ptr.i52 = getelementptr i8, ptr %71, i32 %conv10
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52) #11, !srcloc !147
  %73 = and i32 %72, -1073741825
  %74 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %membase, align 4
  %add.ptr2.i = getelementptr i8, ptr %75, i32 %conv10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %73) #11, !srcloc !148
  %call11 = tail call fastcc i32 @stm32_usart_receive_chars_pio(ptr noundef %port)
  %add = add i32 %call11, %add.i
  %76 = ptrtoint ptr %cr3 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %cr3, align 1
  %conv13 = zext i8 %77 to i32
  %78 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %membase, align 4
  %add.ptr.i54 = getelementptr i8, ptr %79, i32 %conv13
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54) #11, !srcloc !147
  %81 = or i32 %80, 1073741824
  %82 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %membase, align 4
  %add.ptr2.i55 = getelementptr i8, ptr %83, i32 %conv13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i55, i32 %81) #11, !srcloc !148
  br label %if.end30

if.else:                                          ; preds = %if.then
  %84 = ptrtoint ptr %rx_ch.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rx_ch.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %87, i32 0, i32 47
  %88 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i56 = icmp eq ptr %89, null
  br i1 %tobool.not.i56, label %if.else.dmaengine_terminate_async.exit_crit_edge, label %if.then.i58

if.else.dmaengine_terminate_async.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_terminate_async.exit

if.then.i58:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call.i57 = tail call i32 %89(ptr noundef %85) #11
  br label %dmaengine_terminate_async.exit

dmaengine_terminate_async.exit:                   ; preds = %if.then.i58, %if.else.dmaengine_terminate_async.exit_crit_edge
  %cr316 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 2
  %90 = ptrtoint ptr %cr316 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %cr316, align 1
  %conv17 = zext i8 %91 to i32
  %membase.i60 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %92 = ptrtoint ptr %membase.i60 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %membase.i60, align 4
  %add.ptr.i61 = getelementptr i8, ptr %93, i32 %conv17
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i61) #11, !srcloc !147
  %95 = and i32 %94, -1073741825
  %96 = ptrtoint ptr %membase.i60 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %membase.i60, align 4
  %add.ptr2.i63 = getelementptr i8, ptr %97, i32 %conv17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i63, i32 %95) #11, !srcloc !148
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_usart_receive_chars.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_usart_receive_chars, %if.then24)) #11
          to label %do.end [label %if.then24], !srcloc !150

if.then24:                                        ; preds = %dmaengine_terminate_async.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %98 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_usart_receive_chars.__UNIQUE_ID_ddebug237, ptr noundef %99, ptr noundef nonnull @.str.29) #11
  br label %do.end

do.end:                                           ; preds = %if.then24, %dmaengine_terminate_async.exit
  %call26 = tail call fastcc i32 @stm32_usart_receive_chars_pio(ptr noundef %port)
  br label %if.end30

if.else28:                                        ; preds = %stm32_usart_rx_dma_enabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call29 = tail call fastcc i32 @stm32_usart_receive_chars_pio(ptr noundef %port)
  br label %if.end30

if.end30:                                         ; preds = %if.else28, %do.end, %if.then9, %stm32_usart_receive_chars_dma.exit.if.end30_crit_edge
  %size.0 = phi i32 [ %add, %if.then9 ], [ %add.i, %stm32_usart_receive_chars_dma.exit.if.end30_crit_edge ], [ %call26, %do.end ], [ %call29, %if.else28 ]
  ret i32 %size.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_usart_receive_chars_pio(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 4
  %isr.i104 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %isr.i104 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %isr.i104, align 1
  %conv.i105 = zext i8 %5 to i32
  %add.ptr.i106 = getelementptr i8, ptr %3, i32 %conv.i105
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i106) #11, !srcloc !147
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #11
  %and.i107 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i107)
  %tobool.not.i108 = icmp eq i32 %and.i107, 0
  br i1 %tobool.not.i108, label %entry.while.end_crit_edge, label %if.then.i.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.then.i.lr.ph:                                  ; preds = %entry
  %rx_ch.i.i = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 3
  %icr = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 8
  %rdr_mask.i = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 20
  %rx = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 4
  %overrun = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 7
  %parity = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 8
  %frame = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 6
  %brk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 9
  %state1.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %handle_break.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 17
  %has_sysrq.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 48
  %cons.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 32
  %line.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %sysrq.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 46
  %flags.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %read_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 28
  %sysrq_ch.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 47
  br label %if.then.i

if.then.i:                                        ; preds = %while.cond.backedge.if.then.i_crit_edge, %if.then.i.lr.ph
  %8 = phi i32 [ %7, %if.then.i.lr.ph ], [ %80, %while.cond.backedge.if.then.i_crit_edge ]
  %size.0109 = phi i32 [ 0, %if.then.i.lr.ph ], [ %inc8, %while.cond.backedge.if.then.i_crit_edge ]
  %9 = ptrtoint ptr %rx_ch.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_ch.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.then.i.while.body_crit_edge, label %stm32_usart_rx_dma_enabled.exit.i

if.then.i.while.body_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %.pre = and i32 %8, 15
  br label %while.body

stm32_usart_rx_dma_enabled.exit.i:                ; preds = %if.then.i
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %info, align 4
  %13 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i, align 4
  %cr3.i.i = getelementptr inbounds %struct.stm32_usart_offsets, ptr %12, i32 0, i32 2
  %15 = ptrtoint ptr %cr3.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cr3.i.i, align 1
  %conv.i.i = zext i8 %16 to i32
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %conv.i.i
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !147
  %18 = and i32 %17, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool3.i.not.i = icmp ne i32 %18, 0
  %and5.i = and i32 %8, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %or.cond = select i1 %tobool3.i.not.i, i1 %tobool6.not.i, i1 false
  br i1 %or.cond, label %stm32_usart_rx_dma_enabled.exit.i.while.end_crit_edge, label %stm32_usart_rx_dma_enabled.exit.i.while.body_crit_edge

stm32_usart_rx_dma_enabled.exit.i.while.body_crit_edge: ; preds = %stm32_usart_rx_dma_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

stm32_usart_rx_dma_enabled.exit.i.while.end_crit_edge: ; preds = %stm32_usart_rx_dma_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %stm32_usart_rx_dma_enabled.exit.i.while.body_crit_edge, %if.then.i.while.body_crit_edge
  %and.pre-phi = phi i32 [ %.pre, %if.then.i.while.body_crit_edge ], [ %and5.i, %stm32_usart_rx_dma_enabled.exit.i.while.body_crit_edge ]
  %or = or i32 %8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.pre-phi)
  %tobool.not = icmp eq i32 %and.pre-phi, 0
  br i1 %tobool.not, label %while.body.if.end_crit_edge, label %land.lhs.true

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %19 = ptrtoint ptr %icr to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %icr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %cmp.not = icmp eq i8 %20, -1
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %20 to i32
  %21 = shl nuw nsw i32 %and.pre-phi, 24
  %22 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %21) #11, !srcloc !148
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %while.body.if.end_crit_edge
  %24 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %info, align 4
  %26 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase.i, align 4
  %rdr.i = getelementptr inbounds %struct.stm32_usart_offsets, ptr %25, i32 0, i32 9
  %28 = ptrtoint ptr %rdr.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %rdr.i, align 1
  %conv.i80 = zext i8 %29 to i32
  %add.ptr.i81 = getelementptr i8, ptr %27, i32 %conv.i80
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i81) #11, !srcloc !147
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #11
  %32 = ptrtoint ptr %rdr_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rdr_mask.i, align 4
  %and.i82 = and i32 %31, %33
  %34 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx, align 4
  %inc = add i32 %35, 1
  store i32 %inc, ptr %rx, align 4
  %inc8 = add i32 %size.0109, 1
  br i1 %tobool.not, label %if.end.if.end55_crit_edge, label %if.then11

if.end.if.end55_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.then11:                                        ; preds = %if.end
  %and12 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %overrun to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %overrun, align 4
  %inc16 = add i32 %37, 1
  store i32 %inc16, ptr %overrun, align 4
  br label %if.end40

if.else:                                          ; preds = %if.then11
  %and17 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.else22, label %if.then19

if.then19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %parity, align 4
  %inc21 = add i32 %39, 1
  store i32 %inc21, ptr %parity, align 4
  br label %if.end40

if.else22:                                        ; preds = %if.else
  %and23 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.else22.if.end40_crit_edge, label %if.then25

if.else22.if.end40_crit_edge:                     ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then25:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i82)
  %tobool26.not = icmp eq i32 %and.i82, 0
  br i1 %tobool26.not, label %if.then27, label %if.else34

if.then27:                                        ; preds = %if.then25
  %40 = ptrtoint ptr %brk to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %brk, align 4
  %inc29 = add i32 %41, 1
  store i32 %inc29, ptr %brk, align 4
  %42 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %state1.i, align 4
  %44 = ptrtoint ptr %handle_break.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %handle_break.i, align 4
  %tobool.not.i83 = icmp eq ptr %45, null
  br i1 %tobool.not.i83, label %if.then27.if.end.i85_crit_edge, label %if.then.i84

if.then27.if.end.i85_crit_edge:                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i85

if.then.i84:                                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %45(ptr noundef %port) #11
  br label %if.end.i85

if.end.i85:                                       ; preds = %if.then.i84, %if.then27.if.end.i85_crit_edge
  %46 = ptrtoint ptr %has_sysrq.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %has_sysrq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool3.not.i = icmp eq i8 %47, 0
  br i1 %tobool3.not.i, label %if.end.i85.if.end15.i_crit_edge, label %land.lhs.true.i

if.end.i85.if.end15.i_crit_edge:                  ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %if.end.i85
  %48 = ptrtoint ptr %cons.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cons.i, align 4
  %tobool4.not.i = icmp eq ptr %49, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end15.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.if.end15.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %index.i = getelementptr inbounds %struct.console, ptr %49, i32 0, i32 9
  %50 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %index.i, align 2
  %conv7.i = sext i16 %51 to i32
  %52 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %line.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %conv7.i)
  %cmp.i = icmp eq i32 %53, %conv7.i
  br i1 %cmp.i, label %if.then9.i, label %land.lhs.true5.i.if.end15.i_crit_edge

land.lhs.true5.i.if.end15.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

if.then9.i:                                       ; preds = %land.lhs.true5.i
  %54 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sysrq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool10.not.i = icmp eq i32 %55, 0
  br i1 %tobool10.not.i, label %uart_handle_break.exit, label %if.end13.i

if.end13.i:                                       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %sysrq.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end13.i, %land.lhs.true5.i.if.end15.i_crit_edge, %land.lhs.true.i.if.end15.i_crit_edge, %if.end.i85.if.end15.i_crit_edge
  %57 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags.i, align 4
  %and.i86 = and i32 %58, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i86)
  %tobool16.not.i = icmp eq i32 %and.i86, 0
  br i1 %tobool16.not.i, label %if.end15.i.if.end40_crit_edge, label %if.then17.i

if.end15.i.if.end40_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  %tty.i = getelementptr inbounds %struct.tty_port, ptr %43, i32 0, i32 1
  %59 = ptrtoint ptr %tty.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tty.i, align 4
  tail call void @do_SAK(ptr noundef %60) #11
  br label %if.end40

uart_handle_break.exit:                           ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %61 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %61, 500
  %62 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add.i, ptr %sysrq.i, align 4
  br label %while.cond.backedge

if.else34:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  %63 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %frame, align 4
  %inc36 = add i32 %64, 1
  store i32 %inc36, ptr %frame, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.else34, %if.then17.i, %if.end15.i.if.end40_crit_edge, %if.else22.if.end40_crit_edge, %if.then19, %if.then14
  %65 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %read_status_mask, align 4
  %and41 = and i32 %66, %or
  %and42 = and i32 %and41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.else45, label %if.end40.if.end55_crit_edge

if.end40.if.end55_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.else45:                                        ; preds = %if.end40
  %and46 = and i32 %and41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.else45.if.end55_crit_edge, label %if.then48

if.else45.if.end55_crit_edge:                     ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.then48:                                        ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i82)
  %tobool49.not = icmp eq i32 %and.i82, 0
  %. = select i1 %tobool49.not, i32 1, i32 2
  br label %if.end55

if.end55:                                         ; preds = %if.then48, %if.else45.if.end55_crit_edge, %if.end40.if.end55_crit_edge, %if.end.if.end55_crit_edge
  %sr.0 = phi i32 [ %or, %if.end.if.end55_crit_edge ], [ %and41, %if.else45.if.end55_crit_edge ], [ %and41, %if.then48 ], [ %and41, %if.end40.if.end55_crit_edge ]
  %flag.0 = phi i32 [ 0, %if.end.if.end55_crit_edge ], [ 0, %if.else45.if.end55_crit_edge ], [ %., %if.then48 ], [ 3, %if.end40.if.end55_crit_edge ]
  %67 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sysrq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i89 = icmp eq i32 %68, 0
  br i1 %tobool.not.i89, label %if.end55.if.end59_crit_edge, label %if.end.i90

if.end55.if.end59_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.end.i90:                                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i82)
  %tobool1.not.i = icmp eq i32 %and.i82, 0
  br i1 %tobool1.not.i, label %if.end.i90.uart_prepare_sysrq_char.exit.thread114_crit_edge, label %land.lhs.true.i92

if.end.i90.uart_prepare_sysrq_char.exit.thread114_crit_edge: ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #13
  br label %uart_prepare_sysrq_char.exit.thread114

land.lhs.true.i92:                                ; preds = %if.end.i90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %69 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %69, %68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i91 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i91, label %if.then3.i, label %land.lhs.true.i92.uart_prepare_sysrq_char.exit.thread114_crit_edge

land.lhs.true.i92.uart_prepare_sysrq_char.exit.thread114_crit_edge: ; preds = %land.lhs.true.i92
  call void @__sanitizer_cov_trace_pc() #13
  br label %uart_prepare_sysrq_char.exit.thread114

if.then3.i:                                       ; preds = %land.lhs.true.i92
  %call.i = tail call i32 @sysrq_mask() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i93 = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i93, label %if.end7.i, label %uart_prepare_sysrq_char.exit

if.end7.i:                                        ; preds = %if.then3.i
  %call8.i = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %port, i32 noundef %and.i82) #11
  br i1 %call8.i, label %if.end7.i.while.cond.backedge_crit_edge, label %if.end7.i.uart_prepare_sysrq_char.exit.thread114_crit_edge

if.end7.i.uart_prepare_sysrq_char.exit.thread114_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uart_prepare_sysrq_char.exit.thread114

if.end7.i.while.cond.backedge_crit_edge:          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

uart_prepare_sysrq_char.exit.thread114:           ; preds = %if.end7.i.uart_prepare_sysrq_char.exit.thread114_crit_edge, %land.lhs.true.i92.uart_prepare_sysrq_char.exit.thread114_crit_edge, %if.end.i90.uart_prepare_sysrq_char.exit.thread114_crit_edge
  %70 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %sysrq.i, align 4
  br label %if.end59

uart_prepare_sysrq_char.exit:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %sysrq_ch.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %and.i82, ptr %sysrq_ch.i, align 4
  %72 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %sysrq.i, align 4
  br label %while.cond.backedge

if.end59:                                         ; preds = %uart_prepare_sysrq_char.exit.thread114, %if.end55.if.end59_crit_edge
  tail call void @uart_insert_char(ptr noundef %port, i32 noundef %sr.0, i32 noundef 8, i32 noundef %and.i82, i32 noundef %flag.0) #11
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end59, %uart_prepare_sysrq_char.exit, %if.end7.i.while.cond.backedge_crit_edge, %uart_handle_break.exit
  %73 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %info, align 4
  %75 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %membase.i, align 4
  %isr.i = getelementptr inbounds %struct.stm32_usart_offsets, ptr %74, i32 0, i32 7
  %77 = ptrtoint ptr %isr.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %isr.i, align 1
  %conv.i = zext i8 %78 to i32
  %add.ptr.i = getelementptr i8, ptr %76, i32 %conv.i
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !147
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #11
  %and.i = and i32 %80, 32
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.if.then.i_crit_edge

while.cond.backedge.if.then.i_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %stm32_usart_rx_dma_enabled.exit.i.while.end_crit_edge, %entry.while.end_crit_edge
  %size.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %size.0109, %stm32_usart_rx_dma_enabled.exit.i.while.end_crit_edge ], [ %inc8, %while.cond.backedge.while.end_crit_edge ]
  ret i32 %size.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_insert_char(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_SAK(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_usart_rx_dma_complete(ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %arg, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arg) #11
  %call6 = tail call fastcc i32 @stm32_usart_receive_chars(ptr noundef %arg, i1 noundef zeroext false)
  %has_sysrq.i = getelementptr inbounds %struct.uart_port, ptr %arg, i32 0, i32 48
  %2 = ptrtoint ptr %has_sysrq.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_sysrq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arg, i32 noundef %call3) #11
  br label %uart_unlock_and_check_sysrq_irqrestore.exit

if.end.i:                                         ; preds = %entry
  %sysrq_ch1.i = getelementptr inbounds %struct.uart_port, ptr %arg, i32 0, i32 47
  %4 = ptrtoint ptr %sysrq_ch1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sysrq_ch1.i, align 4
  store i32 0, ptr %sysrq_ch1.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arg, i32 noundef %call3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not.i = icmp eq i32 %5, 0
  br i1 %tobool4.not.i, label %if.end.i.uart_unlock_and_check_sysrq_irqrestore.exit_crit_edge, label %if.then5.i

if.end.i.uart_unlock_and_check_sysrq_irqrestore.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uart_unlock_and_check_sysrq_irqrestore.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @handle_sysrq(i32 noundef %5) #11
  br label %uart_unlock_and_check_sysrq_irqrestore.exit

uart_unlock_and_check_sysrq_irqrestore.exit:      ; preds = %if.then5.i, %if.end.i.uart_unlock_and_check_sysrq_irqrestore.exit_crit_edge, %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %uart_unlock_and_check_sysrq_irqrestore.exit.if.end_crit_edge, label %if.then

uart_unlock_and_check_sysrq_irqrestore.exit.if.end_crit_edge: ; preds = %uart_unlock_and_check_sysrq_irqrestore.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %uart_unlock_and_check_sysrq_irqrestore.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @tty_flip_buffer_push(ptr noundef %1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %uart_unlock_and_check_sysrq_irqrestore.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctrl_gpio_disable_ms(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tty_get_char_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_rs485_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_usart_serial_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @uart_suspend_port(ptr noundef nonnull @stm32_usart_driver, ptr noundef %1) #11
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.lor.lhs.false_crit_edge, label %device_may_wakeup.exit

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.lor.lhs.false_crit_edge, label %device_may_wakeup.exit.if.then_crit_edge

device_may_wakeup.exit.if.then_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

device_may_wakeup.exit.lor.lhs.false_crit_edge:   ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %device_may_wakeup.exit.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %wakeup_path.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 7
  %5 = ptrtoint ptr %wakeup_path.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i35 = load i8, ptr %wakeup_path.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i35)
  %bf.cast.i = icmp slt i8 %bf.load.i35, 0
  br i1 %bf.cast.i, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end6_crit_edge

lor.lhs.false.if.end6_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %device_may_wakeup.exit.if.then_crit_edge
  %info.i = getelementptr inbounds %struct.stm32_port, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info.i, align 4
  %state.i = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 30
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state.i, align 4
  %wakeup_src.i = getelementptr inbounds %struct.stm32_port, ptr %1, i32 0, i32 19
  %10 = ptrtoint ptr %wakeup_src.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %wakeup_src.i, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i36 = icmp eq i8 %11, 0
  br i1 %tobool.not.i36, label %if.then.if.end6_crit_edge, label %lor.lhs.false.i

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

lor.lhs.false.i:                                  ; preds = %if.then
  %iflags.i.i = getelementptr inbounds %struct.tty_port, ptr %9, i32 0, i32 11
  %12 = ptrtoint ptr %iflags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %iflags.i.i, align 4
  %and1.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.i.if.end6_crit_edge, label %if.end.i

lor.lhs.false.i.if.end6_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end.i:                                         ; preds = %lor.lhs.false.i
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %7, align 1
  %conv.i = zext i8 %15 to i32
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %conv.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !147
  %19 = or i32 %18, 33554432
  %20 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %21, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %19) #11, !srcloc !148
  %cr3.i = getelementptr inbounds %struct.stm32_usart_offsets, ptr %7, i32 0, i32 2
  %22 = ptrtoint ptr %cr3.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %cr3.i, align 1
  %conv6.i = zext i8 %23 to i32
  %24 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i65.i = getelementptr i8, ptr %25, i32 %conv6.i
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65.i) #11, !srcloc !147
  %27 = or i32 %26, 16384
  %28 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase.i.i, align 4
  %add.ptr2.i67.i = getelementptr i8, ptr %29, i32 %conv6.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i67.i, i32 %27) #11, !srcloc !148
  %rx_ch.i = getelementptr inbounds %struct.stm32_port, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %rx_ch.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rx_ch.i, align 4
  %tobool7.not.i = icmp eq ptr %31, null
  br i1 %tobool7.not.i, label %if.end.i.if.end23.i_crit_edge, label %do.body9.i

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i

do.body9.i:                                       ; preds = %if.end.i
  %call12.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #11
  %32 = ptrtoint ptr %cr3.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %cr3.i, align 1
  %conv16.i = zext i8 %33 to i32
  %34 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i69.i = getelementptr i8, ptr %35, i32 %conv16.i
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69.i) #11, !srcloc !147
  %37 = and i32 %36, -1073741825
  %38 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %membase.i.i, align 4
  %add.ptr2.i70.i = getelementptr i8, ptr %39, i32 %conv16.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i70.i, i32 %37) #11, !srcloc !148
  %call17.i = tail call fastcc i32 @stm32_usart_receive_chars(ptr noundef %1, i1 noundef zeroext true) #11
  %40 = ptrtoint ptr %rx_ch.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rx_ch.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %43, i32 0, i32 47
  %44 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %45, null
  br i1 %tobool.not.i.i, label %do.body9.i.dmaengine_terminate_async.exit.i_crit_edge, label %if.then.i.i

do.body9.i.dmaengine_terminate_async.exit.i_crit_edge: ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_terminate_async.exit.i

if.then.i.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call i32 %45(ptr noundef %41) #11
  br label %dmaengine_terminate_async.exit.i

dmaengine_terminate_async.exit.i:                 ; preds = %if.then.i.i, %do.body9.i.dmaengine_terminate_async.exit.i_crit_edge
  %has_sysrq.i.i = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 48
  %46 = ptrtoint ptr %has_sysrq.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %has_sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i71.i = icmp eq i8 %47, 0
  br i1 %tobool.not.i71.i, label %if.then.i72.i, label %if.end.i.i

if.then.i72.i:                                    ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call12.i) #11
  br label %uart_unlock_and_check_sysrq_irqrestore.exit.i

if.end.i.i:                                       ; preds = %dmaengine_terminate_async.exit.i
  %sysrq_ch1.i.i = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 47
  %48 = ptrtoint ptr %sysrq_ch1.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sysrq_ch1.i.i, align 4
  store i32 0, ptr %sysrq_ch1.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call12.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool4.not.i.i = icmp eq i32 %49, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.uart_unlock_and_check_sysrq_irqrestore.exit.i_crit_edge, label %if.then5.i.i

if.end.i.i.uart_unlock_and_check_sysrq_irqrestore.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uart_unlock_and_check_sysrq_irqrestore.exit.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @handle_sysrq(i32 noundef %49) #11
  br label %uart_unlock_and_check_sysrq_irqrestore.exit.i

uart_unlock_and_check_sysrq_irqrestore.exit.i:    ; preds = %if.then5.i.i, %if.end.i.i.uart_unlock_and_check_sysrq_irqrestore.exit.i_crit_edge, %if.then.i72.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool20.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool20.not.i, label %uart_unlock_and_check_sysrq_irqrestore.exit.i.if.end23.i_crit_edge, label %if.then21.i

uart_unlock_and_check_sysrq_irqrestore.exit.i.if.end23.i_crit_edge: ; preds = %uart_unlock_and_check_sysrq_irqrestore.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i

if.then21.i:                                      ; preds = %uart_unlock_and_check_sysrq_irqrestore.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @tty_flip_buffer_push(ptr noundef %9) #11
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %uart_unlock_and_check_sysrq_irqrestore.exit.i.if.end23.i_crit_edge, %if.end.i.if.end23.i_crit_edge
  %call24.i = tail call fastcc i32 @stm32_usart_receive_chars(ptr noundef %1, i1 noundef zeroext false) #11
  br label %if.end6

if.end6:                                          ; preds = %if.end23.i, %lor.lhs.false.i.if.end6_crit_edge, %if.then.if.end6_crit_edge, %lor.lhs.false.if.end6_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @console_suspend_enabled to i32))
  %50 = load i8, ptr @console_suspend_enabled, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool7.not = icmp eq i8 %50, 0
  br i1 %tobool7.not, label %lor.lhs.false8, label %if.end6.if.then12_crit_edge

if.end6.if.then12_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

lor.lhs.false8:                                   ; preds = %if.end6
  %cons = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 32
  %51 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cons, align 4
  %tobool9.not = icmp eq ptr %52, null
  br i1 %tobool9.not, label %lor.lhs.false8.if.then12_crit_edge, label %land.lhs.true

lor.lhs.false8.if.then12_crit_edge:               ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

land.lhs.true:                                    ; preds = %lor.lhs.false8
  %index = getelementptr inbounds %struct.console, ptr %52, i32 0, i32 9
  %53 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %index, align 2
  %conv = sext i16 %54 to i32
  %line = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 41
  %55 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %conv)
  %cmp = icmp eq i32 %56, %conv
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.then12_crit_edge

land.lhs.true.if.then12_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then12:                                        ; preds = %land.lhs.true.if.then12_crit_edge, %lor.lhs.false8.if.then12_crit_edge, %if.end6.if.then12_crit_edge
  %57 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %bf.load.i38 = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i38)
  %tobool.not.i39 = icmp sgt i16 %bf.load.i38, -1
  br i1 %tobool.not.i39, label %if.then12.lor.lhs.false15_crit_edge, label %device_may_wakeup.exit43

if.then12.lor.lhs.false15_crit_edge:              ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false15

device_may_wakeup.exit43:                         ; preds = %if.then12
  %wakeup.i40 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %58 = ptrtoint ptr %wakeup.i40 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %wakeup.i40, align 8
  %tobool2.i41.not = icmp eq ptr %59, null
  br i1 %tobool2.i41.not, label %device_may_wakeup.exit43.lor.lhs.false15_crit_edge, label %device_may_wakeup.exit43.if.then18_crit_edge

device_may_wakeup.exit43.if.then18_crit_edge:     ; preds = %device_may_wakeup.exit43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

device_may_wakeup.exit43.lor.lhs.false15_crit_edge: ; preds = %device_may_wakeup.exit43
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %device_may_wakeup.exit43.lor.lhs.false15_crit_edge, %if.then12.lor.lhs.false15_crit_edge
  %wakeup_path.i44 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 7
  %60 = ptrtoint ptr %wakeup_path.i44 to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load.i45 = load i8, ptr %wakeup_path.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i45)
  %bf.cast.i46 = icmp slt i8 %bf.load.i45, 0
  br i1 %bf.cast.i46, label %lor.lhs.false15.if.then18_crit_edge, label %if.else

lor.lhs.false15.if.then18_crit_edge:              ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

if.then18:                                        ; preds = %lor.lhs.false15.if.then18_crit_edge, %device_may_wakeup.exit43.if.then18_crit_edge
  %call19 = tail call i32 @pinctrl_pm_select_idle_state(ptr noundef %dev) #11
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #13
  %call20 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then18, %land.lhs.true.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_usart_serial_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #11
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.lor.lhs.false_crit_edge, label %device_may_wakeup.exit

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.lor.lhs.false_crit_edge, label %device_may_wakeup.exit.if.then_crit_edge

device_may_wakeup.exit.if.then_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

device_may_wakeup.exit.lor.lhs.false_crit_edge:   ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %device_may_wakeup.exit.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %wakeup_path.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 7
  %5 = ptrtoint ptr %wakeup_path.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i14 = load i8, ptr %wakeup_path.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i14)
  %bf.cast.i = icmp slt i8 %bf.load.i14, 0
  br i1 %bf.cast.i, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end6_crit_edge

lor.lhs.false.if.end6_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %device_may_wakeup.exit.if.then_crit_edge
  %info.i = getelementptr inbounds %struct.stm32_port, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info.i, align 4
  %wakeup_src.i = getelementptr inbounds %struct.stm32_port, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %wakeup_src.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %wakeup_src.i, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i15 = icmp eq i8 %9, 0
  br i1 %tobool.not.i15, label %if.then.if.end6_crit_edge, label %lor.lhs.false.i

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

lor.lhs.false.i:                                  ; preds = %if.then
  %state.i = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 30
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state.i, align 4
  %iflags.i.i = getelementptr inbounds %struct.tty_port, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %iflags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %iflags.i.i, align 4
  %and1.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.i.if.end6_crit_edge, label %if.end.i

lor.lhs.false.i.if.end6_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end.i:                                         ; preds = %lor.lhs.false.i
  %rx_ch25.i = getelementptr inbounds %struct.stm32_port, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %rx_ch25.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_ch25.i, align 4
  %tobool26.not.i = icmp eq ptr %15, null
  br i1 %tobool26.not.i, label %if.end.i.if.end32.i_crit_edge, label %if.then27.i

if.end.i.if.end32.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

if.then27.i:                                      ; preds = %if.end.i
  %call28.i = tail call fastcc i32 @stm32_usart_start_rx_dma_cyclic(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.then27.i.if.end32.i_crit_edge, label %if.then27.i.cleanup_crit_edge

if.then27.i.cleanup_crit_edge:                    ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then27.i.if.end32.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then27.i.if.end32.i_crit_edge, %if.end.i.if.end32.i_crit_edge
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %7, align 1
  %conv34.i = zext i8 %17 to i32
  %membase.i73.i = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %membase.i73.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i73.i, align 4
  %add.ptr.i74.i = getelementptr i8, ptr %19, i32 %conv34.i
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74.i) #11, !srcloc !147
  %21 = and i32 %20, -33554433
  %22 = ptrtoint ptr %membase.i73.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i73.i, align 4
  %add.ptr2.i76.i = getelementptr i8, ptr %23, i32 %conv34.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i76.i, i32 %21) #11, !srcloc !148
  %cr335.i = getelementptr inbounds %struct.stm32_usart_offsets, ptr %7, i32 0, i32 2
  %24 = ptrtoint ptr %cr335.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %cr335.i, align 1
  %conv36.i = zext i8 %25 to i32
  %26 = ptrtoint ptr %membase.i73.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase.i73.i, align 4
  %add.ptr.i78.i = getelementptr i8, ptr %27, i32 %conv36.i
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i78.i) #11, !srcloc !147
  %29 = and i32 %28, -16385
  %30 = ptrtoint ptr %membase.i73.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase.i73.i, align 4
  %add.ptr2.i80.i = getelementptr i8, ptr %31, i32 %conv36.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i80.i, i32 %29) #11, !srcloc !148
  br label %if.end6

if.end6:                                          ; preds = %if.end32.i, %lor.lhs.false.i.if.end6_crit_edge, %if.then.if.end6_crit_edge, %lor.lhs.false.if.end6_crit_edge
  %call7 = tail call i32 @uart_resume_port(ptr noundef nonnull @stm32_usart_driver, ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then27.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ %call28.i, %if.then27.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_usart_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.stm32_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #11
  tail call void @clk_unprepare(ptr noundef %3) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_usart_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.stm32_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %3) #11
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.clk_prepare_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_suspend_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_idle_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_resume_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_usart_console_write(ptr nocapture noundef readonly %co, ptr noundef %s, i32 noundef %cnt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index, align 2
  %idxprom = sext i16 %1 to i32
  %arrayidx = getelementptr [8 x %struct.stm32_port], ptr @stm32_ports, i32 0, i32 %idxprom
  %info = getelementptr [8 x %struct.stm32_port], ptr @stm32_ports, i32 0, i32 %idxprom, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %cfg4 = getelementptr inbounds %struct.stm32_usart_info, ptr %3, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %4 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.body56, label %do.body5

do.body5:                                         ; preds = %entry
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !151
  %and.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool15.not = icmp eq i32 %and.i, 0
  br i1 %tobool15.not, label %do.end18, label %do.end18.thread

do.end18:                                         ; preds = %do.body5
  tail call void @trace_hardirqs_off() #11
  %call21 = tail call i32 @_raw_spin_trylock(ptr noundef %arrayidx) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then32, label %do.end18.if.end69_crit_edge

do.end18.if.end69_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

do.end18.thread:                                  ; preds = %do.body5
  %call21103 = tail call i32 @_raw_spin_trylock(ptr noundef %arrayidx) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21103)
  %tobool22.not104 = icmp eq i32 %call21103, 0
  br i1 %tobool22.not104, label %do.end18.thread.do.body34_crit_edge, label %do.end18.thread.if.end69_crit_edge

do.end18.thread.if.end69_crit_edge:               ; preds = %do.end18.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

do.end18.thread.do.body34_crit_edge:              ; preds = %do.end18.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body34

if.then32:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_on() #11
  br label %do.body34

do.body34:                                        ; preds = %if.then32, %do.end18.thread.do.body34_crit_edge
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !152
  %and.i.i = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool42.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool42.not, label %if.then46, label %do.body34.do.end49_crit_edge, !prof !141

do.body34.do.end49_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end49

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end49

do.end49:                                         ; preds = %if.then46, %do.body34.do.end49_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %5) #11, !srcloc !153
  br label %if.end69

do.body56:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call64 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx) #11
  br label %if.end69

if.end69:                                         ; preds = %do.body56, %do.end49, %do.end18.thread.if.end69_crit_edge, %do.end18.if.end69_crit_edge
  %tobool83.not = phi i1 [ false, %do.end18.thread.if.end69_crit_edge ], [ true, %do.end49 ], [ false, %do.end18.if.end69_crit_edge ], [ false, %do.body56 ]
  %flags.0 = phi i32 [ %5, %do.end18.thread.if.end69_crit_edge ], [ %5, %do.end49 ], [ %5, %do.end18.if.end69_crit_edge ], [ %call64, %do.body56 ]
  %membase = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 2
  %7 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %3, align 1
  %conv70 = zext i8 %10 to i32
  %add.ptr = getelementptr i8, ptr %8, i32 %conv70
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !147
  %12 = and i32 %11, 129957875
  %13 = ptrtoint ptr %cfg4 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cfg4, align 4
  %conv73 = zext i8 %14 to i32
  %shl = shl nuw i32 1, %conv73
  %15 = or i32 %12, 134217728
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  %or74 = or i32 %16, %shl
  %17 = tail call i32 @llvm.bswap.i32(i32 %or74)
  %18 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase, align 4
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %3, align 1
  %conv77 = zext i8 %21 to i32
  %add.ptr78 = getelementptr i8, ptr %19, i32 %conv77
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 %17) #11, !srcloc !148
  tail call void @uart_console_write(ptr noundef %arrayidx, ptr noundef %s, i32 noundef %cnt, ptr noundef nonnull @stm32_usart_console_putchar) #11
  %22 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase, align 4
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %3, align 1
  %conv81 = zext i8 %25 to i32
  %add.ptr82 = getelementptr i8, ptr %23, i32 %conv81
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 %11) #11, !srcloc !148
  br i1 %tobool83.not, label %if.end69.if.end86_crit_edge, label %if.then84

if.end69.if.end86_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86

if.then84:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx, i32 noundef %flags.0) #11
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %if.end69.if.end86_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_usart_console_setup(ptr noundef %co, ptr noundef %options) #2 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %5)
  %cmp = icmp sgt i16 %5, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = sext i16 %5 to i32
  %arrayidx = getelementptr [8 x %struct.stm32_port], ptr @stm32_ports, i32 0, i32 %conv
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 43
  %6 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mapbase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3 = icmp eq i32 %7, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %membase = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 2
  %8 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %tobool8.not = icmp eq ptr %options, null
  br i1 %tobool8.not, label %if.end7.if.end10_crit_edge, label %if.then9

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  call void @uart_parse_options(ptr noundef nonnull %options, ptr noundef nonnull %baud, ptr noundef nonnull %parity, ptr noundef nonnull %bits, ptr noundef nonnull %flow) #11
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7.if.end10_crit_edge
  %10 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %baud, align 4
  %12 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %parity, align 4
  %14 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bits, align 4
  %16 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flow, align 4
  %call = call i32 @uart_set_options(ptr noundef %arrayidx, ptr noundef %co, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end10 ], [ -19, %entry.cleanup_crit_edge ], [ -6, %lor.lhs.false.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flow) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parity) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %baud) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_usart_console_putchar(ptr nocapture noundef readonly %port, i32 noundef %ch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.stm32_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %isr = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 4
  %4 = ptrtoint ptr %isr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %isr, align 1
  %conv15 = zext i8 %5 to i32
  %add.ptr16 = getelementptr i8, ptr %3, i32 %conv15
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #11, !srcloc !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %tobool.not17 = icmp sgt i32 %6, -1
  br i1 %tobool.not17, label %entry.do.end_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !154
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !155
  %7 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase, align 4
  %9 = ptrtoint ptr %isr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %isr, align 1
  %conv = zext i8 %10 to i32
  %add.ptr = getelementptr i8, ptr %8, i32 %conv
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !147
  %tobool.not = icmp sgt i32 %11, -1
  br i1 %tobool.not, label %do.end.do.end_crit_edge, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  %12 = tail call i32 @llvm.bswap.i32(i32 %ch)
  %13 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase, align 4
  %tdr = getelementptr inbounds %struct.stm32_usart_offsets, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %tdr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tdr, align 1
  %conv10 = zext i8 %16 to i32
  %add.ptr11 = getelementptr i8, ptr %14, i32 %conv10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %12) #11, !srcloc !148
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !33, !35, !36, !37, !39, !41, !42, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !62, !64, !65, !66, !67, !69, !71, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !101, !102, !103, !105, !107, !108, !109, !110, !112, !113, !114, !115, !117, !119, !121, !123, !125, !127, !129, !130, !131}
!llvm.module.flags = !{!132, !133, !134, !135, !136, !137, !138, !139}
!llvm.ident = !{!140}

!0 = !{ptr @stm32f4_info, !1, !"stm32f4_info", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/stm32-usart.h", i32 42, i32 25}
!2 = !{ptr @stm32f7_info, !3, !"stm32f7_info", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/stm32-usart.h", i32 63, i32 25}
!4 = !{ptr @stm32h7_info, !5, !"stm32h7_info", i1 false, i1 false}
!5 = !{!"../drivers/tty/serial/stm32-usart.h", i32 85, i32 25}
!6 = !{ptr @__initcall__kmod_stm32_usart__240_1899_stm32_usart_init6, !7, !"__initcall__kmod_stm32_usart__240_1899_stm32_usart_init6", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/stm32-usart.c", i32 1899, i32 1}
!8 = !{ptr @__exitcall_stm32_usart_exit, !9, !"__exitcall_stm32_usart_exit", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/stm32-usart.c", i32 1900, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias241, !11, !"__UNIQUE_ID_alias241", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/stm32-usart.c", i32 1902, i32 1}
!12 = !{ptr @__UNIQUE_ID_description242, !13, !"__UNIQUE_ID_description242", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/stm32-usart.c", i32 1903, i32 1}
!14 = !{ptr @__UNIQUE_ID_file243, !15, !"__UNIQUE_ID_file243", i1 false, i1 false}
!15 = !{!"../drivers/tty/serial/stm32-usart.c", i32 1904, i32 1}
!16 = !{ptr @__UNIQUE_ID_license244, !15, !"__UNIQUE_ID_license244", i1 false, i1 false}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/tty/serial/stm32-usart.c", i32 1869, i32 11}
!19 = !{ptr @stm32_serial_driver, !20, !"stm32_serial_driver", i1 false, i1 false}
!20 = !{!"../drivers/tty/serial/stm32-usart.c", i32 1865, i32 31}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/tty/serial/stm32-usart.c", i32 1518, i32 50}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/tty/serial/stm32-usart.c", i32 1527, i32 50}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/tty/serial/stm32-usart.c", i32 1549, i32 3}
!27 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @stm32_usart_serial_probe._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @stm32_usart_serial_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/tty/serial/stm32-usart.c", i32 1551, i32 3}
!35 = !{ptr @stm32_usart_serial_probe._entry.8, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @stm32_usart_serial_probe._entry_ptr.10, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/tty/serial/stm32-usart.c", i32 1381, i32 27}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/tty/serial/stm32-usart.c", i32 1383, i32 3}
!41 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @stm32_usart_of_get_port._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @stm32_usart_of_get_port._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/tty/serial/stm32-usart.c", i32 1391, i32 30}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/tty/serial/stm32-usart.c", i32 1392, i32 30}
!49 = !{ptr @stm32_ports, !50, !"stm32_ports", i1 false, i1 false}
!50 = !{!"../drivers/tty/serial/stm32-usart.h", i32 280, i32 26}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/tty/serial/stm32-usart.c", i32 1311, i32 44}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/tty/serial/stm32-usart.c", i32 1314, i32 44}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/tty/serial/stm32-usart.c", i32 1318, i32 31}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/tty/serial/stm32-usart.c", i32 1320, i32 31}
!59 = !{ptr @stm32_usart_init_port.__key, !60, !"__key", i1 false, i1 false}
!60 = !{!"../drivers/tty/serial/stm32-usart.c", i32 1329, i32 2}
!61 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/tty/serial/stm32-usart.c", i32 1359, i32 4}
!64 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @stm32_usart_init_port._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @stm32_usart_init_port._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @stm32_uart_ops, !68, !"stm32_uart_ops", i1 false, i1 false}
!68 = !{!"../drivers/tty/serial/stm32-usart.c", i32 1225, i32 30}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/tty/serial/stm32-usart.c", i32 568, i32 4}
!71 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @stm32_usart_transmit_chars._entry, !70, !"_entry", i1 false, i1 false}
!74 = !{ptr @stm32_usart_transmit_chars._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/tty/serial/stm32-usart.c", i32 358, i32 4}
!77 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @stm32_usart_receive_chars.__UNIQUE_ID_ddebug237, !76, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/tty/serial/stm32-usart.c", i32 855, i32 3}
!82 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @stm32_usart_start_rx_dma_cyclic._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @stm32_usart_start_rx_dma_cyclic._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/tty/serial/stm32-usart.c", i32 952, i32 3}
!89 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @stm32_usart_shutdown._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @stm32_usart_shutdown._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/tty/serial/stm32-usart.c", i32 997, i32 3}
!94 = !{ptr @stm32_usart_set_termios._entry, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @stm32_usart_set_termios._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/tty/serial/stm32-usart.c", i32 1045, i32 3}
!98 = !{ptr @stm32_usart_set_termios.__UNIQUE_ID_ddebug238, !97, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!99 = !{ptr @.str.37, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/tty/serial/stm32-usart.c", i32 1271, i32 2}
!101 = !{ptr @.str.38, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @stm32_usart_get_ftcfg.__UNIQUE_ID_ddebug239, !100, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!103 = !{ptr @stm32h7_usart_fifo_thresh_cfg, !104, !"stm32h7_usart_fifo_thresh_cfg", i1 false, i1 false}
!104 = !{!"../drivers/tty/serial/stm32-usart.c", i32 1254, i32 18}
!105 = !{ptr @.str.39, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/tty/serial/stm32-usart.c", i32 1448, i32 3}
!107 = !{ptr @.str.40, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @stm32_usart_of_dma_rx_probe._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @stm32_usart_of_dma_rx_probe._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.41, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/tty/serial/stm32-usart.c", i32 1486, i32 3}
!112 = !{ptr @.str.42, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @stm32_usart_of_dma_tx_probe._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @stm32_usart_of_dma_tx_probe._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @stm32_match, !116, !"stm32_match", i1 false, i1 false}
!116 = !{!"../drivers/tty/serial/stm32-usart.c", i32 1401, i32 34}
!117 = !{ptr @stm32_serial_pm_ops, !118, !"stm32_serial_pm_ops", i1 false, i1 false}
!118 = !{!"../drivers/tty/serial/stm32-usart.c", i32 1858, i32 32}
!119 = !{ptr @.str.43, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/tty/serial/stm32-usart.c", i32 1732, i32 14}
!121 = !{ptr @stm32_usart_driver, !122, !"stm32_usart_driver", i1 false, i1 false}
!122 = !{!"../drivers/tty/serial/stm32-usart.c", i32 1730, i32 27}
!123 = !{ptr @stm32_console, !124, !"stm32_console", i1 false, i1 false}
!124 = !{!"../drivers/tty/serial/stm32-usart.c", i32 1714, i32 23}
!125 = !{ptr @stm32_usart_init.banner, !126, !"banner", i1 false, i1 false}
!126 = !{!"../drivers/tty/serial/stm32-usart.c", i32 1877, i32 14}
!127 = !{ptr @.str.44, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/tty/serial/stm32-usart.c", i32 1880, i32 2}
!129 = !{ptr @.str.45, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @stm32_usart_init._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @stm32_usart_init._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{i32 1, !"wchar_size", i32 2}
!133 = !{i32 1, !"min_enum_size", i32 4}
!134 = !{i32 8, !"branch-target-enforcement", i32 0}
!135 = !{i32 8, !"sign-return-address", i32 0}
!136 = !{i32 8, !"sign-return-address-all", i32 0}
!137 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!138 = !{i32 7, !"uwtable", i32 1}
!139 = !{i32 7, !"frame-pointer", i32 2}
!140 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!141 = !{!"branch_weights", i32 1, i32 2000}
!142 = !{i8 0, i8 2}
!143 = !{i64 2148291398, i64 2148291424, i64 2148291453, i64 2148291487, i64 2148291518, i64 2148291541}
!144 = !{i64 2148290817}
!145 = !{i64 775640, i64 775665, i64 775687, i64 775703, i64 775715, i64 775735, i64 775759, i64 775775, i64 775787}
!146 = !{i64 2148291005}
!147 = !{i64 6366116}
!148 = !{i64 6365698}
!149 = !{!"auto-init"}
!150 = !{i64 2148773213, i64 2148773218, i64 2148773231, i64 2148773275, i64 2148773309, i64 2148773330}
!151 = !{i64 683879, i64 683940}
!152 = !{i64 686611}
!153 = !{i64 686896}
!154 = !{i64 2154841444}
!155 = !{i64 2154841286}
