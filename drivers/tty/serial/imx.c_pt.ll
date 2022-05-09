; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/imx.c_pt.bc'
source_filename = "../drivers/tty/serial/imx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.imx_uart_data = type { i32, i32 }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
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
%struct.imx_port = type { %struct.uart_port, %struct.timer_list, i32, i8, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i8, ptr, ptr, %struct.scatterlist, [2 x %struct.scatterlist], ptr, %struct.circ_buf, i32, i32, i32, i32, i32, i32, [10 x i32], i8, i32, %struct.hrtimer, %struct.hrtimer }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.69, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.69 = type { %struct.atomic_t }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }

@imx_uart_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx_uart_probe, ptr @imx_uart_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_uart_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_uart_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@imx_uart_uart_driver = internal global { %struct.uart_driver, [60 x i8] } { %struct.uart_driver { ptr null, ptr @.str.77, ptr @.str.78, i32 207, i32 16, i32 8, ptr @imx_uart_console, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_imx__241_2623_imx_uart_init6 = internal global ptr @imx_uart_init, section ".initcall6.init", align 4
@__exitcall_imx_uart_exit = internal global ptr @imx_uart_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author242 = internal constant [24 x i8] c"imx.author=Sascha Hauer\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [47 x i8] c"imx.description=IMX generic serial port driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [32 x i8] c"imx.file=drivers/tty/serial/imx\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [16 x i8] c"imx.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias246 = internal constant [28 x i8] c"imx.alias=platform:imx-uart\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"imx-uart\00", [23 x i8] zeroinitializer }, align 32
@imx_uart_dt_ids = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @imx_uart_devdata, i64 24) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx53-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @imx_uart_devdata, i64 16) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx1-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx_uart_devdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx21-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @imx_uart_devdata, i64 8) }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@imx_uart_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @imx_uart_suspend, ptr @imx_uart_resume, ptr @imx_uart_freeze, ptr @imx_uart_thaw, ptr null, ptr @imx_uart_thaw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_uart_suspend_noirq, ptr @imx_uart_resume_noirq, ptr @imx_uart_suspend_noirq, ptr null, ptr null, ptr @imx_uart_resume_noirq, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@imx_uart_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 2218, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get alias id, errno %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"imx_uart_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/tty/serial/imx.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx_uart_probe._entry_ptr = internal global ptr @imx_uart_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"uart-has-rtscts\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fsl,uart-has-rtscts\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fsl,dte-mode\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rts-gpios\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsl,inverted-tx\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsl,inverted-rx\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fsl,dma-info\00", [19 x i8] zeroinitializer }, align 32
@imx_uart_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 2249, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"serial%d out of range\0A\00", [41 x i8] zeroinitializer }, align 32
@imx_uart_probe._entry_ptr.16 = internal global ptr @imx_uart_probe._entry.14, section ".printk_index", align 4
@imx_uart_pops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @imx_uart_tx_empty, ptr @imx_uart_set_mctrl, ptr @imx_uart_get_mctrl, ptr @imx_uart_stop_tx, ptr @imx_uart_start_tx, ptr null, ptr null, ptr null, ptr @imx_uart_stop_rx, ptr @imx_uart_enable_ms, ptr @imx_uart_break_ctl, ptr @imx_uart_startup, ptr @imx_uart_shutdown, ptr @imx_uart_flush_buffer, ptr @imx_uart_set_termios, ptr null, ptr null, ptr @imx_uart_type, ptr null, ptr null, ptr @imx_uart_config_port, ptr @imx_uart_verify_port, ptr null, ptr @imx_uart_poll_init, ptr @imx_uart_poll_put_char, ptr @imx_uart_poll_get_char }, [56 x i8] zeroinitializer }, align 32
@imx_uart_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"(&sport->timer)\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@imx_uart_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 2284, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get ipg clk: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@imx_uart_probe._entry_ptr.21 = internal global ptr @imx_uart_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"per\00", [28 x i8] zeroinitializer }, align 32
@imx_uart_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 2291, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get per clk: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@imx_uart_probe._entry_ptr.25 = internal global ptr @imx_uart_probe._entry.23, section ".printk_index", align 4
@imx_uart_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.3, ptr @.str.4, i32 2300, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to enable per clk: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@imx_uart_probe._entry_ptr.28 = internal global ptr @imx_uart_probe._entry.26, section ".printk_index", align 4
@imx_uart_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.3, ptr @.str.4, i32 2319, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"no RTS control, disabling rs485\0A\00", [63 x i8] zeroinitializer }, align 32
@imx_uart_probe._entry_ptr.31 = internal global ptr @imx_uart_probe._entry.29, section ".printk_index", align 4
@imx_uart_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.3, ptr @.str.4, i32 2331, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"low-active RTS not possible when receiver is off, enabling receiver\0A\00", [59 x i8] zeroinitializer }, align 32
@imx_uart_probe._entry_ptr.34 = internal global ptr @imx_uart_probe._entry.32, section ".printk_index", align 4
@imx_uart_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.3, ptr @.str.4, i32 2387, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to request rx irq: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@imx_uart_probe._entry_ptr.37 = internal global ptr @imx_uart_probe._entry.35, section ".printk_index", align 4
@imx_uart_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.3, ptr @.str.4, i32 2395, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to request tx irq: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@imx_uart_probe._entry_ptr.40 = internal global ptr @imx_uart_probe._entry.38, section ".printk_index", align 4
@imx_uart_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.3, ptr @.str.4, i32 2403, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to request rts irq: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@imx_uart_probe._entry_ptr.43 = internal global ptr @imx_uart_probe._entry.41, section ".printk_index", align 4
@imx_uart_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.3, ptr @.str.4, i32 2410, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to request irq: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@imx_uart_probe._entry_ptr.46 = internal global ptr @imx_uart_probe._entry.44, section ".printk_index", align 4
@imx_uart_ports = internal global { [8 x ptr], [32 x i8] } zeroinitializer, align 32
@imx_uart_dma_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.4, i32 645, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DMA mapping error for TX.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imx_uart_dma_tx\00", [16 x i8] zeroinitializer }, align 32
@imx_uart_dma_tx._entry_ptr = internal global ptr @imx_uart_dma_tx._entry, section ".printk_index", align 4
@imx_uart_dma_tx._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.4, i32 653, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"We cannot prepare for the TX slave dma!\0A\00", [55 x i8] zeroinitializer }, align 32
@imx_uart_dma_tx._entry_ptr.51 = internal global ptr @imx_uart_dma_tx._entry.49, section ".printk_index", align 4
@imx_uart_dma_tx.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.48, ptr @.str.4, ptr @.str.53, i8 0, i8 -91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"imx\00", [28 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"TX: prepare to send %lu bytes by DMA.\0A\00", [57 x i8] zeroinitializer }, align 32
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@imx_uart_dma_tx_callback.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.54, ptr @.str.4, ptr @.str.55, i8 0, i8 -108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"imx_uart_dma_tx_callback\00", [39 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"we finish the TX DMA.\0A\00", [41 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@imx_uart_dma_init.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.57, ptr @.str.4, ptr @.str.58, i8 1, i8 69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"imx_uart_dma_init\00", [46 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot get the DMA channel.\0A\00", [35 x i8] zeroinitializer }, align 32
@imx_uart_dma_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.4, i32 1315, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error in RX dma configuration.\0A\00", [32 x i8] zeroinitializer }, align 32
@imx_uart_dma_init._entry_ptr = internal global ptr @imx_uart_dma_init._entry, section ".printk_index", align 4
@.str.60 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@imx_uart_dma_init._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.4, i32 1330, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cannot get the TX DMA channel!\0A\00", [32 x i8] zeroinitializer }, align 32
@imx_uart_dma_init._entry_ptr.63 = internal global ptr @imx_uart_dma_init._entry.61, section ".printk_index", align 4
@imx_uart_dma_init._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.57, ptr @.str.4, i32 1341, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error in TX dma configuration.\00", [33 x i8] zeroinitializer }, align 32
@imx_uart_dma_init._entry_ptr.66 = internal global ptr @imx_uart_dma_init._entry.64, section ".printk_index", align 4
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@imx_uart_start_rx_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.4, i32 1205, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DMA mapping error for RX.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"imx_uart_start_rx_dma\00", [42 x i8] zeroinitializer }, align 32
@imx_uart_start_rx_dma._entry_ptr = internal global ptr @imx_uart_start_rx_dma._entry, section ".printk_index", align 4
@imx_uart_start_rx_dma._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.4, i32 1215, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"We cannot prepare for the RX slave dma!\0A\00", [55 x i8] zeroinitializer }, align 32
@imx_uart_start_rx_dma._entry_ptr.72 = internal global ptr @imx_uart_start_rx_dma._entry.70, section ".printk_index", align 4
@imx_uart_start_rx_dma.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.69, ptr @.str.4, ptr @.str.73, i8 1, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RX: prepare for the DMA.\0A\00", [38 x i8] zeroinitializer }, align 32
@imx_uart_dma_rx_callback.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.74, ptr @.str.4, ptr @.str.75, i8 1, i8 40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"imx_uart_dma_rx_callback\00", [39 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"We get %d bytes.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IMX\00", [28 x i8] zeroinitializer }, align 32
@imx_uart_devdata = internal global { [4 x %struct.imx_uart_data], [32 x i8] } { [4 x %struct.imx_uart_data] [%struct.imx_uart_data { i32 208, i32 0 }, %struct.imx_uart_data { i32 180, i32 1 }, %struct.imx_uart_data { i32 180, i32 2 }, %struct.imx_uart_data { i32 180, i32 3 }], [32 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IMX-uart\00", [23 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ttymxc\00", [25 x i8] zeroinitializer }, align 32
@imx_uart_console = internal global { %struct.console, [60 x i8] } { %struct.console { [16 x i8] c"ttymxc\00\00\00\00\00\00\00\00\00\00", ptr @imx_uart_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @imx_uart_console_setup, ptr @imx_uart_console_exit, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @imx_uart_uart_driver, ptr null }, [60 x i8] zeroinitializer }, align 32
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@imx_uart_console_get_options._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.4, i32 2078, ptr @.str.81, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Console IMX rounded baud rate from %d to %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"imx_uart_console_get_options\00", [35 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@imx_uart_console_get_options._entry_ptr = internal global ptr @imx_uart_console_get_options._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.82 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 48]
@__sancov_gen_cov_switch_values.86 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.87 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.88 = private unnamed_addr constant [25 x i8] c"imx_uart_platform_driver\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2592, i32 31 }
@___asan_gen_.91 = private unnamed_addr constant [21 x i8] c"imx_uart_uart_driver\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2159, i32 27 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2597, i32 11 }
@___asan_gen_.97 = private unnamed_addr constant [16 x i8] c"imx_uart_dt_ids\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 267, i32 34 }
@___asan_gen_.100 = private unnamed_addr constant [16 x i8] c"imx_uart_pm_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2580, i32 32 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2216, i32 28 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2218, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2223, i32 26 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2224, i32 26 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2227, i32 26 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2230, i32 26 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2233, i32 26 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2236, i32 26 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2239, i32 38 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2248, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [14 x i8] c"imx_uart_pops\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1935, i32 30 }
@___asan_gen_.154 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2275, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2281, i32 44 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2284, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2288, i32 44 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2291, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2300, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2319, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2330, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2386, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2394, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2402, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2410, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant [15 x i8] c"imx_uart_ports\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1958, i32 25 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 645, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 653, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 659, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 594, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1301, i32 54 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1303, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1315, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1328, i32 54 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1330, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1341, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1169, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1205, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1215, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1221, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1187, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1777, i32 40 }
@___asan_gen_.310 = private unnamed_addr constant [17 x i8] c"imx_uart_devdata\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 248, i32 29 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2161, i32 20 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2162, i32 20 }
@___asan_gen_.319 = private unnamed_addr constant [17 x i8] c"imx_uart_console\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2142, i32 23 }
@___asan_gen_.322 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.331 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.332 = private constant [28 x i8] c"../drivers/tty/serial/imx.c\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2077, i32 4 }
@llvm.compiler.used = appending global [109 x ptr] [ptr @__UNIQUE_ID_alias246, ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__exitcall_imx_uart_exit, ptr @__initcall__kmod_imx__241_2623_imx_uart_init6, ptr @imx_uart_console_get_options._entry, ptr @imx_uart_console_get_options._entry_ptr, ptr @imx_uart_dma_init._entry, ptr @imx_uart_dma_init._entry.61, ptr @imx_uart_dma_init._entry.64, ptr @imx_uart_dma_init._entry_ptr, ptr @imx_uart_dma_init._entry_ptr.63, ptr @imx_uart_dma_init._entry_ptr.66, ptr @imx_uart_dma_tx._entry, ptr @imx_uart_dma_tx._entry.49, ptr @imx_uart_dma_tx._entry_ptr, ptr @imx_uart_dma_tx._entry_ptr.51, ptr @imx_uart_exit, ptr @imx_uart_probe._entry, ptr @imx_uart_probe._entry.14, ptr @imx_uart_probe._entry.19, ptr @imx_uart_probe._entry.23, ptr @imx_uart_probe._entry.26, ptr @imx_uart_probe._entry.29, ptr @imx_uart_probe._entry.32, ptr @imx_uart_probe._entry.35, ptr @imx_uart_probe._entry.38, ptr @imx_uart_probe._entry.41, ptr @imx_uart_probe._entry.44, ptr @imx_uart_probe._entry_ptr, ptr @imx_uart_probe._entry_ptr.16, ptr @imx_uart_probe._entry_ptr.21, ptr @imx_uart_probe._entry_ptr.25, ptr @imx_uart_probe._entry_ptr.28, ptr @imx_uart_probe._entry_ptr.31, ptr @imx_uart_probe._entry_ptr.34, ptr @imx_uart_probe._entry_ptr.37, ptr @imx_uart_probe._entry_ptr.40, ptr @imx_uart_probe._entry_ptr.43, ptr @imx_uart_probe._entry_ptr.46, ptr @imx_uart_start_rx_dma._entry, ptr @imx_uart_start_rx_dma._entry.70, ptr @imx_uart_start_rx_dma._entry_ptr, ptr @imx_uart_start_rx_dma._entry_ptr.72, ptr @imx_uart_platform_driver, ptr @imx_uart_uart_driver, ptr @.str, ptr @imx_uart_dt_ids, ptr @imx_uart_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @imx_uart_pops, ptr @imx_uart_probe.__key, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @imx_uart_ports, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @imx_uart_devdata, ptr @.str.77, ptr @.str.78, ptr @imx_uart_console, ptr @.str.79, ptr @.str.80, ptr @.str.81], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_uart_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_uart_uart_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_uart_dt_ids to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_uart_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_uart_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_uart_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_uart_pops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_uart_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_uart_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_uart_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_uart_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_uart_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_uart_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_uart_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_uart_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_uart_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_uart_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_uart_ports to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_uart_dma_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_uart_dma_tx._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_uart_dma_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_uart_dma_init._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_uart_dma_init._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_uart_start_rx_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_uart_start_rx_dma._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_uart_devdata to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_uart_console to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_uart_console_get_options._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx_uart_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx_uart_platform_driver) #10
  tail call void @uart_unregister_driver(ptr noundef nonnull @imx_uart_uart_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_uart_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @uart_register_driver(ptr noundef nonnull @imx_uart_uart_driver) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_uart_platform_driver, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @uart_unregister_driver(ptr noundef nonnull @imx_uart_uart_driver) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then2 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_uart_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %dma_buf_conf = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dma_buf_conf) #10
  %2 = ptrtoint ptr %dma_buf_conf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %dma_buf_conf, align 4, !annotation !178
  %3 = getelementptr inbounds [2 x i32], ptr %dma_buf_conf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !178
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 712, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #10
  %devdata = getelementptr inbounds %struct.imx_port, ptr %call.i, i32 0, i32 6
  %5 = ptrtoint ptr %devdata to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %devdata, align 8
  %call4 = tail call i32 @of_alias_get_id(ptr noundef %1, ptr noundef nonnull @.str.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %call4) #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %line = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 41
  %6 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call4, ptr %line, align 8
  %call8 = tail call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef null) #10
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %lor.lhs.false, label %if.end7.if.then12_crit_edge

if.end7.if.then12_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

lor.lhs.false:                                    ; preds = %if.end7
  %call10 = tail call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef null) #10
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %lor.lhs.false.if.end13_crit_edge, label %lor.lhs.false.if.then12_crit_edge

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

lor.lhs.false.if.end13_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %if.end7.if.then12_crit_edge
  %have_rtscts = getelementptr inbounds %struct.imx_port, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %have_rtscts to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %have_rtscts, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %have_rtscts, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %lor.lhs.false.if.end13_crit_edge
  %call14 = tail call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef null) #10
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end13.if.end20_crit_edge, label %if.then16

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %dte_mode = getelementptr inbounds %struct.imx_port, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %dte_mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load17 = load i8, ptr %dte_mode, align 4
  %bf.set19 = or i8 %bf.load17, 32
  store i8 %bf.set19, ptr %dte_mode, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end13.if.end20_crit_edge
  %call21 = tail call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef null) #10
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end20.if.end27_crit_edge, label %if.then23

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %have_rtsgpio = getelementptr inbounds %struct.imx_port, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %have_rtsgpio to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load24 = load i8, ptr %have_rtsgpio, align 4
  %bf.set26 = or i8 %bf.load24, 64
  store i8 %bf.set26, ptr %have_rtsgpio, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.end20.if.end27_crit_edge
  %call28 = tail call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef null) #10
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.end27.if.end34_crit_edge, label %if.then30

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %inverted_tx = getelementptr inbounds %struct.imx_port, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %inverted_tx to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load31 = load i8, ptr %inverted_tx, align 4
  %bf.set33 = or i8 %bf.load31, 16
  store i8 %bf.set33, ptr %inverted_tx, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.end27.if.end34_crit_edge
  %call35 = tail call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef null) #10
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.end34.if.end41_crit_edge, label %if.then37

if.end34.if.end41_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %inverted_rx = getelementptr inbounds %struct.imx_port, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %inverted_rx to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load38 = load i8, ptr %inverted_rx, align 4
  %bf.set40 = or i8 %bf.load38, 8
  store i8 %bf.set40, ptr %inverted_rx, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %if.end34.if.end41_crit_edge
  %call.i494 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.13, ptr noundef nonnull %dma_buf_conf, i32 noundef 2, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i494)
  %tobool43.not = icmp sgt i32 %call.i494, -1
  br i1 %tobool43.not, label %if.then44, label %if.end41.if.end48_crit_edge

if.end41.if.end48_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %dma_buf_conf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_buf_conf, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %3, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %if.end41.if.end48_crit_edge
  %.sink545 = phi i32 [ %13, %if.then44 ], [ 1024, %if.end41.if.end48_crit_edge ]
  %.sink = phi i32 [ %15, %if.then44 ], [ 16, %if.end41.if.end48_crit_edge ]
  %16 = getelementptr inbounds %struct.imx_port, ptr %call.i, i32 0, i32 21
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink545, ptr %16, align 8
  %18 = getelementptr inbounds %struct.imx_port, ptr %call.i, i32 0, i32 22
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink, ptr %18, align 4
  %20 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %line, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %21)
  %cmp51 = icmp ugt i32 %21, 7
  br i1 %cmp51, label %do.end55, label %if.end59

do.end55:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %21) #13
  br label %cleanup

if.end59:                                         ; preds = %if.end48
  %call60 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %call62 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call60) #10
  %cmp.i = icmp ugt ptr %call62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then64, label %if.end66

if.then64:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %call62 to i32
  br label %cleanup

if.end66:                                         ; preds = %if.end59
  %call67 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %if.end66.cleanup_crit_edge, label %if.end70

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end70:                                         ; preds = %if.end66
  %call71 = call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 1) #10
  %call72 = call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 2) #10
  %dev75 = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 45
  %23 = ptrtoint ptr %dev75 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev, ptr %dev75, align 8
  %24 = ptrtoint ptr %call60 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %call60, align 4
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 43
  %26 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %mapbase, align 8
  %membase = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 2
  %27 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call62, ptr %membase, align 8
  %type = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 38
  %28 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 62, ptr %type, align 4
  %iotype = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 26
  %29 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %iotype, align 2
  %irq = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 20
  %30 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call67, ptr %irq, align 8
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 23
  %31 = ptrtoint ptr %fifosize to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 32, ptr %fifosize, align 4
  %has_sysrq = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 48
  %32 = ptrtoint ptr %has_sysrq to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %has_sysrq, align 4
  %ops = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 39
  %33 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @imx_uart_pops, ptr %ops, align 8
  %rs485_config = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 18
  %34 = ptrtoint ptr %rs485_config to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @imx_uart_rs485_config, ptr %rs485_config, align 8
  %flags = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 33
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 268435456, ptr %flags, align 8
  %timer = getelementptr inbounds %struct.imx_port, ptr %call.i, i32 0, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @imx_uart_timeout, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef nonnull @imx_uart_probe.__key) #10
  %call90 = call ptr @mctrl_gpio_init(ptr noundef nonnull %call.i, i32 noundef 0) #10
  %gpios = getelementptr inbounds %struct.imx_port, ptr %call.i, i32 0, i32 7
  %36 = ptrtoint ptr %gpios to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call90, ptr %gpios, align 4
  %cmp.i495 = icmp ugt ptr %call90, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i495, label %if.then93, label %if.end96

if.then93:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %call90 to i32
  br label %cleanup

if.end96:                                         ; preds = %if.end70
  %call98 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.18) #10
  %clk_ipg = getelementptr inbounds %struct.imx_port, ptr %call.i, i32 0, i32 4
  %38 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call98, ptr %clk_ipg, align 8
  %cmp.i496 = icmp ugt ptr %call98, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i496, label %if.then101, label %if.end108

if.then101:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %call98 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %39) #13
  br label %cleanup

if.end108:                                        ; preds = %if.end96
  %call110 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.22) #10
  %clk_per = getelementptr inbounds %struct.imx_port, ptr %call.i, i32 0, i32 5
  %40 = ptrtoint ptr %clk_per to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call110, ptr %clk_per, align 4
  %cmp.i497 = icmp ugt ptr %call110, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i497, label %if.then113, label %if.end120

if.then113:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %call110 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %41) #13
  br label %cleanup

if.end120:                                        ; preds = %if.end108
  %call122 = call i32 @clk_get_rate(ptr noundef %call110) #10
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 22
  %42 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call122, ptr %uartclk, align 8
  %43 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %clk_ipg, align 8
  %call.i498 = call i32 @clk_prepare(ptr noundef %44) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i498)
  %tobool.not.i = icmp eq i32 %call.i498, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end120.do.end130_crit_edge

if.end120.do.end130_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end130

if.end.i:                                         ; preds = %if.end120
  %call1.i = call i32 @clk_enable(ptr noundef %44) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end132, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @clk_unprepare(ptr noundef %44) #10
  br label %do.end130

do.end130:                                        ; preds = %if.then3.i, %if.end120.do.end130_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i498, %if.end120.do.end130_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %retval.0.i.ph) #13
  br label %cleanup

if.end132:                                        ; preds = %if.end.i
  %45 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %membase, align 8
  %add.ptr = getelementptr i8, ptr %46, i32 128
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !179
  %48 = call i32 @llvm.bswap.i32(i32 %47)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %ucr1137 = getelementptr inbounds %struct.imx_port, ptr %call.i, i32 0, i32 8
  %49 = ptrtoint ptr %ucr1137 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %ucr1137, align 8
  %50 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %membase, align 8
  %add.ptr142 = getelementptr i8, ptr %51, i32 132
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr142) #10, !srcloc !179
  %53 = call i32 @llvm.bswap.i32(i32 %52)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  %ucr2 = getelementptr inbounds %struct.imx_port, ptr %call.i, i32 0, i32 9
  %54 = ptrtoint ptr %ucr2 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %ucr2, align 4
  %55 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %membase, align 8
  %add.ptr150 = getelementptr i8, ptr %56, i32 136
  %57 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr150) #10, !srcloc !179
  %58 = call i32 @llvm.bswap.i32(i32 %57)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !182
  %ucr3 = getelementptr inbounds %struct.imx_port, ptr %call.i, i32 0, i32 10
  %59 = ptrtoint ptr %ucr3 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %ucr3, align 8
  %60 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %membase, align 8
  %add.ptr158 = getelementptr i8, ptr %61, i32 140
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr158) #10, !srcloc !179
  %63 = call i32 @llvm.bswap.i32(i32 %62)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !183
  %ucr4 = getelementptr inbounds %struct.imx_port, ptr %call.i, i32 0, i32 11
  %64 = ptrtoint ptr %ucr4 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %ucr4, align 4
  %65 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %membase, align 8
  %add.ptr166 = getelementptr i8, ptr %66, i32 144
  %67 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr166) #10, !srcloc !179
  %68 = call i32 @llvm.bswap.i32(i32 %67)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !184
  %ufcr = getelementptr inbounds %struct.imx_port, ptr %call.i, i32 0, i32 12
  %69 = ptrtoint ptr %ufcr to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %ufcr, align 8
  %call171 = call i32 @uart_get_rs485_mode(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171)
  %tobool172.not = icmp eq i32 %call171, 0
  br i1 %tobool172.not, label %if.end175, label %if.then173

if.then173:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %clk_ipg, align 8
  call void @clk_disable(ptr noundef %71) #10
  call void @clk_unprepare(ptr noundef %71) #10
  br label %cleanup

if.end175:                                        ; preds = %if.end132
  %rs485 = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 56
  %72 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rs485, align 8
  %and = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool178.not = icmp eq i32 %and, 0
  br i1 %tobool178.not, label %if.end175.if.end194_crit_edge, label %land.lhs.true

if.end175.if.end194_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end194

land.lhs.true:                                    ; preds = %if.end175
  %have_rtscts179 = getelementptr inbounds %struct.imx_port, ptr %call.i, i32 0, i32 3
  %74 = ptrtoint ptr %have_rtscts179 to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load180 = load i8, ptr %have_rtscts179, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load180)
  %75 = icmp ult i8 %bf.load180, 64
  br i1 %75, label %do.end192, label %land.lhs.true.if.end194_crit_edge

land.lhs.true.if.end194_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end194

do.end192:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #13
  br label %if.end194

if.end194:                                        ; preds = %do.end192, %land.lhs.true.if.end194_crit_edge, %if.end175.if.end194_crit_edge
  %76 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rs485, align 8
  %and198 = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and198)
  %tobool199.not = icmp eq i32 %and198, 0
  br i1 %tobool199.not, label %if.end194.if.end230_crit_edge, label %land.lhs.true200

if.end194.if.end230_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end230

land.lhs.true200:                                 ; preds = %if.end194
  %have_rtscts201 = getelementptr inbounds %struct.imx_port, ptr %call.i, i32 0, i32 3
  %78 = ptrtoint ptr %have_rtscts201 to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load202 = load i8, ptr %have_rtscts201, align 4
  %79 = and i8 %bf.load202, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %79)
  %80 = icmp eq i8 %79, -128
  %and217 = and i32 %77, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and217)
  %tobool218.not = icmp eq i32 %and217, 0
  %or.cond492 = select i1 %80, i1 %tobool218.not, i1 false
  %and223 = and i32 %77, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and223)
  %tobool224.not = icmp eq i32 %and223, 0
  %or.cond493 = select i1 %or.cond492, i1 %tobool224.not, i1 false
  br i1 %or.cond493, label %do.end228, label %land.lhs.true200.if.end230_crit_edge

land.lhs.true200.if.end230_crit_edge:             ; preds = %land.lhs.true200
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end230

do.end228:                                        ; preds = %land.lhs.true200
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #13
  br label %if.end230

if.end230:                                        ; preds = %do.end228, %land.lhs.true200.if.end230_crit_edge, %if.end194.if.end230_crit_edge
  %call234 = call i32 @imx_uart_rs485_config(ptr noundef nonnull %call.i, ptr noundef %rs485)
  %81 = ptrtoint ptr %ucr1137 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ucr1137, align 8
  %and236 = and i32 %82, -45601
  store i32 %and236, ptr %ucr1137, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  call void @arm_heavy_mb() #10
  %83 = call i32 @llvm.bswap.i32(i32 %and236) #10
  %84 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %membase, align 8
  %add.ptr.i = getelementptr i8, ptr %85, i32 128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %83) #10, !srcloc !186
  %86 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %devdata, align 8
  %devtype.i = getelementptr inbounds %struct.imx_uart_data, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %devtype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp.i501.not = icmp eq i32 %89, 0
  br i1 %cmp.i501.not, label %if.end230.if.else253_crit_edge, label %land.lhs.true239

if.end230.if.else253_crit_edge:                   ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else253

land.lhs.true239:                                 ; preds = %if.end230
  %dte_mode240 = getelementptr inbounds %struct.imx_port, ptr %call.i, i32 0, i32 3
  %90 = ptrtoint ptr %dte_mode240 to i32
  call void @__asan_load1_noabort(i32 %90)
  %bf.load241 = load i8, ptr %dte_mode240, align 4
  %91 = and i8 %bf.load241, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool245.not = icmp eq i8 %91, 0
  br i1 %tobool245.not, label %land.lhs.true239.if.else253_crit_edge, label %if.then246

land.lhs.true239.if.else253_crit_edge:            ; preds = %land.lhs.true239
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else253

if.then246:                                       ; preds = %land.lhs.true239
  %92 = ptrtoint ptr %ufcr to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ufcr, align 8
  %and249 = and i32 %93, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and249)
  %tobool250.not = icmp eq i32 %and249, 0
  br i1 %tobool250.not, label %if.then251, label %if.then246.if.end252_crit_edge

if.then246.if.end252_crit_edge:                   ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end252

if.then251:                                       ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %93, 64
  %94 = ptrtoint ptr %ufcr to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %or, ptr %ufcr, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  call void @arm_heavy_mb() #10
  %95 = call i32 @llvm.bswap.i32(i32 %or) #10
  %96 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %membase, align 8
  %add.ptr.i505 = getelementptr i8, ptr %97, i32 144
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i505, i32 %95) #10, !srcloc !186
  br label %if.end252

if.end252:                                        ; preds = %if.then251, %if.then246.if.end252_crit_edge
  %98 = ptrtoint ptr %ucr3 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1156, ptr %ucr3, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  call void @arm_heavy_mb() #10
  %99 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %membase, align 8
  %add.ptr.i507 = getelementptr i8, ptr %100, i32 136
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i507, i32 -2080112640) #10, !srcloc !186
  br label %if.end267

if.else253:                                       ; preds = %land.lhs.true239.if.else253_crit_edge, %if.end230.if.else253_crit_edge
  %101 = ptrtoint ptr %ufcr to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %ufcr, align 8
  %and257 = and i32 %102, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and257)
  %tobool258.not = icmp eq i32 %and257, 0
  br i1 %tobool258.not, label %if.else253.if.end261_crit_edge, label %if.then259

if.else253.if.end261_crit_edge:                   ; preds = %if.else253
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end261

if.then259:                                       ; preds = %if.else253
  call void @__sanitizer_cov_trace_pc() #12
  %and260 = and i32 %102, -65
  %103 = ptrtoint ptr %ufcr to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %and260, ptr %ufcr, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  call void @arm_heavy_mb() #10
  %104 = call i32 @llvm.bswap.i32(i32 %and260) #10
  %105 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %membase, align 8
  %add.ptr.i512 = getelementptr i8, ptr %106, i32 144
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i512, i32 %104) #10, !srcloc !186
  br label %if.end261

if.end261:                                        ; preds = %if.then259, %if.else253.if.end261_crit_edge
  %107 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %devdata, align 8
  %devtype.i514 = getelementptr inbounds %struct.imx_uart_data, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %devtype.i514 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %devtype.i514, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp.i515.not = icmp eq i32 %110, 0
  %spec.select = select i1 %cmp.i515.not, i32 1024, i32 1156
  %111 = ptrtoint ptr %ucr3 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %spec.select, ptr %ucr3, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  call void @arm_heavy_mb() #10
  %112 = call i32 @llvm.bswap.i32(i32 %spec.select) #10
  %113 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %membase, align 8
  %add.ptr.i519 = getelementptr i8, ptr %114, i32 136
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i519, i32 %112) #10, !srcloc !186
  br label %if.end267

if.end267:                                        ; preds = %if.end261, %if.end252
  %115 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %clk_ipg, align 8
  call void @clk_disable(ptr noundef %116) #10
  call void @clk_unprepare(ptr noundef %116) #10
  %trigger_start_tx = getelementptr inbounds %struct.imx_port, ptr %call.i, i32 0, i32 29
  call void @hrtimer_init(ptr noundef %trigger_start_tx, i32 noundef 1, i32 noundef 1) #10
  %trigger_stop_tx = getelementptr inbounds %struct.imx_port, ptr %call.i, i32 0, i32 30
  call void @hrtimer_init(ptr noundef %trigger_stop_tx, i32 noundef 1, i32 noundef 1) #10
  %function = getelementptr inbounds %struct.imx_port, ptr %call.i, i32 0, i32 29, i32 2
  %117 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @imx_trigger_start_tx, ptr %function, align 8
  %function271 = getelementptr inbounds %struct.imx_port, ptr %call.i, i32 0, i32 30, i32 2
  %118 = ptrtoint ptr %function271 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @imx_trigger_stop_tx, ptr %function271, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp272 = icmp sgt i32 %call71, 0
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %119 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i520 = icmp eq ptr %120, null
  br i1 %cmp272, label %if.then273, label %if.else307

if.then273:                                       ; preds = %if.end267
  br i1 %tobool.not.i520, label %if.end.i521, label %if.then273.dev_name.exit_crit_edge

if.then273.dev_name.exit_crit_edge:               ; preds = %if.then273
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i521:                                      ; preds = %if.then273
  call void @__sanitizer_cov_trace_pc() #12
  %121 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i521, %if.then273.dev_name.exit_crit_edge
  %retval.0.i522 = phi ptr [ %122, %if.end.i521 ], [ %120, %if.then273.dev_name.exit_crit_edge ]
  %call.i523 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call67, ptr noundef nonnull @imx_uart_rxint, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i522, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i523)
  %tobool278.not = icmp eq i32 %call.i523, 0
  br i1 %tobool278.not, label %if.end284, label %do.end282

do.end282:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %call.i523) #13
  br label %cleanup

if.end284:                                        ; preds = %dev_name.exit
  %123 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i525 = icmp eq ptr %124, null
  br i1 %tobool.not.i525, label %if.end.i526, label %if.end284.dev_name.exit528_crit_edge

if.end284.dev_name.exit528_crit_edge:             ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit528

if.end.i526:                                      ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #12
  %125 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev, align 4
  br label %dev_name.exit528

dev_name.exit528:                                 ; preds = %if.end.i526, %if.end284.dev_name.exit528_crit_edge
  %retval.0.i527 = phi ptr [ %126, %if.end.i526 ], [ %124, %if.end284.dev_name.exit528_crit_edge ]
  %call.i529 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call71, ptr noundef nonnull @imx_uart_txint, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i527, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i529)
  %tobool289.not = icmp eq i32 %call.i529, 0
  br i1 %tobool289.not, label %if.end295, label %do.end293

do.end293:                                        ; preds = %dev_name.exit528
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef %call.i529) #13
  br label %cleanup

if.end295:                                        ; preds = %dev_name.exit528
  %127 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i531 = icmp eq ptr %128, null
  br i1 %tobool.not.i531, label %if.end.i532, label %if.end295.dev_name.exit534_crit_edge

if.end295.dev_name.exit534_crit_edge:             ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit534

if.end.i532:                                      ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #12
  %129 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev, align 4
  br label %dev_name.exit534

dev_name.exit534:                                 ; preds = %if.end.i532, %if.end295.dev_name.exit534_crit_edge
  %retval.0.i533 = phi ptr [ %130, %if.end.i532 ], [ %128, %if.end295.dev_name.exit534_crit_edge ]
  %call.i535 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call72, ptr noundef nonnull @imx_uart_rtsint, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i533, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i535)
  %tobool300.not = icmp eq i32 %call.i535, 0
  br i1 %tobool300.not, label %dev_name.exit534.if.end319_crit_edge, label %do.end304

dev_name.exit534.if.end319_crit_edge:             ; preds = %dev_name.exit534
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end319

do.end304:                                        ; preds = %dev_name.exit534
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42, i32 noundef %call.i535) #13
  br label %cleanup

if.else307:                                       ; preds = %if.end267
  br i1 %tobool.not.i520, label %if.end.i538, label %if.else307.dev_name.exit540_crit_edge

if.else307.dev_name.exit540_crit_edge:            ; preds = %if.else307
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit540

if.end.i538:                                      ; preds = %if.else307
  call void @__sanitizer_cov_trace_pc() #12
  %131 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev, align 4
  br label %dev_name.exit540

dev_name.exit540:                                 ; preds = %if.end.i538, %if.else307.dev_name.exit540_crit_edge
  %retval.0.i539 = phi ptr [ %132, %if.end.i538 ], [ %120, %if.else307.dev_name.exit540_crit_edge ]
  %call.i541 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call67, ptr noundef nonnull @imx_uart_int, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i539, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i541)
  %tobool312.not = icmp eq i32 %call.i541, 0
  br i1 %tobool312.not, label %dev_name.exit540.if.end319_crit_edge, label %do.end316

dev_name.exit540.if.end319_crit_edge:             ; preds = %dev_name.exit540
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end319

do.end316:                                        ; preds = %dev_name.exit540
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45, i32 noundef %call.i541) #13
  br label %cleanup

if.end319:                                        ; preds = %dev_name.exit540.if.end319_crit_edge, %dev_name.exit534.if.end319_crit_edge
  %133 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %line, align 8
  %arrayidx322 = getelementptr [8 x ptr], ptr @imx_uart_ports, i32 0, i32 %134
  %135 = ptrtoint ptr %arrayidx322 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call.i, ptr %arrayidx322, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %136 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call324 = call i32 @uart_add_one_port(ptr noundef nonnull @imx_uart_uart_driver, ptr noundef nonnull %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end319, %do.end316, %do.end304, %do.end293, %do.end282, %if.then173, %do.end130, %if.then113, %if.then101, %if.then93, %if.end66.cleanup_crit_edge, %if.then64, %do.end55, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end ], [ -22, %do.end55 ], [ %22, %if.then64 ], [ %37, %if.then93 ], [ %39, %if.then101 ], [ %41, %if.then113 ], [ %retval.0.i.ph, %do.end130 ], [ %call171, %if.then173 ], [ %call.i523, %do.end282 ], [ %call.i529, %do.end293 ], [ %call.i535, %do.end304 ], [ %call324, %if.end319 ], [ %call.i541, %do.end316 ], [ -12, %entry.cleanup_crit_edge ], [ %call67, %if.end66.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dma_buf_conf) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_uart_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @imx_uart_uart_driver, ptr noundef %1) #10
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_uart_rs485_config(ptr nocapture noundef %port, ptr nocapture noundef %rs485conf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %have_rtscts = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 3
  %0 = ptrtoint ptr %have_rtscts to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %have_rtscts, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %1 = icmp ult i8 %bf.load, 64
  br i1 %1, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %rs485conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rs485conf, align 4
  %and = and i32 %3, -2
  store i32 %and, ptr %rs485conf, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %rs485conf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rs485conf, align 4
  %and6 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end33_crit_edge, label %if.then8

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then8:                                         ; preds = %if.end
  %6 = ptrtoint ptr %have_rtscts to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load10 = load i8, ptr %have_rtscts, align 4
  %7 = and i8 %bf.load10, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %7)
  %8 = icmp eq i8 %7, -128
  %and23 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %or.cond59 = select i1 %8, i1 %tobool24.not, i1 false
  br i1 %or.cond59, label %if.then25, label %if.then8.if.end27_crit_edge

if.then8.if.end27_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then25:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %5, 16
  %9 = ptrtoint ptr %rs485conf to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %rs485conf, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.then8.if.end27_crit_edge
  %ucr2.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 9
  %10 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ucr2.i, align 4
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end27.imx_uart_readl.exit_crit_edge

if.end27.imx_uart_readl.exit_crit_edge:           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %imx_uart_readl.exit

if.then.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %12 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i, align 8
  %add.ptr.i = getelementptr i8, ptr %13, i32 132
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !179
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !187
  %16 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %ucr2.i, align 4
  br label %imx_uart_readl.exit

imx_uart_readl.exit:                              ; preds = %if.then.i, %if.end27.imx_uart_readl.exit_crit_edge
  %17 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ucr2.i, align 4
  %19 = ptrtoint ptr %rs485conf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rs485conf, align 4
  %and29 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %and.i62 = and i32 %18, -12289
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %imx_uart_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  %mctrl.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 36
  %21 = ptrtoint ptr %mctrl.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mctrl.i, align 4
  %or.i = or i32 %22, 4
  store i32 %or.i, ptr %mctrl.i, align 4
  br label %if.end32

if.else:                                          ; preds = %imx_uart_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  %or.i63 = or i32 %and.i62, 4096
  %mctrl.i64 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 36
  %23 = ptrtoint ptr %mctrl.i64 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mctrl.i64, align 4
  %and1.i = and i32 %24, -5
  store i32 %and1.i, ptr %mctrl.i64, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then31
  %and1.i.sink = phi i32 [ %and1.i, %if.else ], [ %or.i, %if.then31 ]
  %ucr2.0 = phi i32 [ %or.i63, %if.else ], [ %and.i62, %if.then31 ]
  %gpios.i65 = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 7
  %25 = ptrtoint ptr %gpios.i65 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %gpios.i65, align 4
  tail call void @mctrl_gpio_set(ptr noundef %26, i32 noundef %and1.i.sink) #10
  %27 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %ucr2.0, ptr %ucr2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %28 = tail call i32 @llvm.bswap.i32(i32 %ucr2.0) #10
  %membase.i67 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %29 = ptrtoint ptr %membase.i67 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase.i67, align 8
  %add.ptr.i68 = getelementptr i8, ptr %30, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 %28) #10, !srcloc !186
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end.if.end33_crit_edge
  %31 = ptrtoint ptr %rs485conf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rs485conf, align 4
  %33 = and i32 %32, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %if.end33.if.end41_crit_edge, label %if.then40

if.end33.if.end41_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then40:                                        ; preds = %if.end33
  %ucr1.i.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 8
  %35 = ptrtoint ptr %ucr1.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ucr1.i.i, align 8
  %ucr2.i.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 9
  %37 = ptrtoint ptr %ucr2.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ucr2.i.i, align 4
  %and.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then40.imx_uart_start_rx.exit_crit_edge

if.then40.imx_uart_start_rx.exit_crit_edge:       ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %imx_uart_start_rx.exit

if.then.i.i:                                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %39 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %40, i32 132
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !179
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !187
  %43 = ptrtoint ptr %ucr2.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %ucr2.i.i, align 4
  br label %imx_uart_start_rx.exit

imx_uart_start_rx.exit:                           ; preds = %if.then.i.i, %if.then40.imx_uart_start_rx.exit_crit_edge
  %44 = ptrtoint ptr %ucr2.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ucr2.i.i, align 4
  %dma_is_enabled.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 13
  %46 = ptrtoint ptr %dma_is_enabled.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load.i = load i8, ptr %dma_is_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i69 = icmp sgt i8 %bf.load.i, -1
  %ucr1.0.v.i = select i1 %tobool.not.i69, i32 512, i32 260
  %ucr1.0.i = or i32 %ucr1.0.v.i, %36
  %ucr2.0.v.i = select i1 %tobool.not.i69, i32 10, i32 2
  %ucr2.0.i = or i32 %ucr2.0.v.i, %45
  %47 = ptrtoint ptr %ucr2.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %ucr2.0.i, ptr %ucr2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %48 = tail call i32 @llvm.bswap.i32(i32 %ucr2.0.i) #10
  %membase.i14.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %49 = ptrtoint ptr %membase.i14.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %membase.i14.i, align 8
  %add.ptr.i15.i = getelementptr i8, ptr %50, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 %48) #10, !srcloc !186
  %51 = ptrtoint ptr %ucr1.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %ucr1.0.i, ptr %ucr1.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %52 = tail call i32 @llvm.bswap.i32(i32 %ucr1.0.i) #10
  %53 = ptrtoint ptr %membase.i14.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %membase.i14.i, align 8
  %add.ptr.i18.i = getelementptr i8, ptr %54, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %52) #10, !srcloc !186
  br label %if.end41

if.end41:                                         ; preds = %imx_uart_start_rx.exit, %if.end33.if.end41_crit_edge
  %rs485 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56
  %55 = call ptr @memcpy(ptr %rs485, ptr %rs485conf, i32 32)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_uart_timeout(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr i8, ptr %t, i32 -212
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %t, i32 -360
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #10
  tail call fastcc void @imx_uart_mctrl_check(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call4) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %2, 25
  %call9 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #10
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mctrl_gpio_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_rs485_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_trigger_start_tx(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -616
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #10
  %tx_state = getelementptr i8, ptr %t, i32 -8
  %0 = ptrtoint ptr %tx_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp6 = icmp eq i32 %1, 1
  br i1 %cmp6, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @imx_uart_start_tx(ptr noundef %add.ptr)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_trigger_stop_tx(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -664
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #10
  %tx_state = getelementptr i8, ptr %t, i32 -56
  %0 = ptrtoint ptr %tx_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp6 = icmp eq i32 %1, 3
  br i1 %cmp6, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @imx_uart_stop_tx(ptr noundef %add.ptr)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_uart_rxint(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %dev_id) #10
  tail call fastcc void @__imx_uart_rxint(ptr noundef %dev_id)
  tail call void @_raw_spin_unlock(ptr noundef %dev_id) #10
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_uart_txint(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %dev_id) #10
  tail call fastcc void @imx_uart_transmit_buffer(ptr noundef %dev_id)
  tail call void @_raw_spin_unlock(ptr noundef %dev_id) #10
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_uart_rtsint(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %dev_id) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1048576) #10, !srcloc !186
  %2 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i.i, align 8
  %add.ptr12.i.i = getelementptr i8, ptr %3, i32 148
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i.i) #10, !srcloc !179
  %5 = lshr i32 %4, 22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %and.lobit.i = and i32 %5, 1
  tail call void @uart_handle_cts_change(ptr noundef %dev_id, i32 noundef %and.lobit.i) #10
  %state.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 30
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state.i, align 4
  %delta_msr_wait.i = getelementptr inbounds %struct.tty_port, ptr %7, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %delta_msr_wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  tail call void @_raw_spin_unlock(ptr noundef %dev_id) #10
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_uart_int(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %dev_id) #10
  %membase11.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %membase11.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase11.i, align 8
  %add.ptr12.i = getelementptr i8, ptr %1, i32 148
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #10, !srcloc !179
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %4 = ptrtoint ptr %membase11.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase11.i, align 8
  %add.ptr12.i107 = getelementptr i8, ptr %5, i32 152
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i107) #10, !srcloc !179
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %ucr1.i = getelementptr inbounds %struct.imx_port, ptr %dev_id, i32 0, i32 8
  %8 = ptrtoint ptr %ucr1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ucr1.i, align 8
  %ucr2.i = getelementptr inbounds %struct.imx_port, ptr %dev_id, i32 0, i32 9
  %10 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ucr2.i, align 4
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.imx_uart_readl.exit_crit_edge

entry.imx_uart_readl.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %imx_uart_readl.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %membase11.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase11.i, align 8
  %add.ptr.i = getelementptr i8, ptr %13, i32 132
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !179
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !187
  %16 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %ucr2.i, align 4
  br label %imx_uart_readl.exit

imx_uart_readl.exit:                              ; preds = %if.then.i, %entry.imx_uart_readl.exit_crit_edge
  %17 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ucr2.i, align 4
  %ucr3.i = getelementptr inbounds %struct.imx_port, ptr %dev_id, i32 0, i32 10
  %19 = ptrtoint ptr %ucr3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ucr3.i, align 8
  %ucr4.i = getelementptr inbounds %struct.imx_port, ptr %dev_id, i32 0, i32 11
  %21 = ptrtoint ptr %ucr4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ucr4.i, align 4
  %and = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  %and6 = and i32 %3, -513
  %spec.select = select i1 %cmp, i32 %and6, i32 %3
  %and7 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %cmp8 = icmp eq i32 %and7, 0
  %and10 = and i32 %spec.select, -257
  %usr1.1 = select i1 %cmp8, i32 %and10, i32 %spec.select
  %and12 = and i32 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %cmp13 = icmp eq i32 %and12, 0
  %and15 = and i32 %usr1.1, -8193
  %usr1.2 = select i1 %cmp13, i32 %and15, i32 %usr1.1
  %and17 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %cmp18 = icmp eq i32 %and17, 0
  %and20 = and i32 %7, -9
  %usr2.0 = select i1 %cmp18, i32 %and20, i32 %7
  %and22 = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %cmp23 = icmp eq i32 %and22, 0
  %and25 = and i32 %usr1.2, -129
  %usr1.3 = select i1 %cmp23, i32 %and25, i32 %usr1.2
  %and27 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %cmp28 = icmp eq i32 %and27, 0
  %and30 = and i32 %usr1.3, -4097
  %usr1.4 = select i1 %cmp28, i32 %and30, i32 %usr1.3
  %and32 = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %cmp33 = icmp eq i32 %and32, 0
  %and35 = and i32 %usr1.4, -17
  %usr1.5 = select i1 %cmp33, i32 %and35, i32 %usr1.4
  %and37 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %cmp38 = icmp eq i32 %and37, 0
  %and40 = and i32 %usr2.0, -3
  %usr2.1 = select i1 %cmp38, i32 %and40, i32 %usr2.0
  %and42 = and i32 %usr1.5, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool.not = icmp eq i32 %and42, 0
  br i1 %tobool.not, label %imx_uart_readl.exit.if.end45_crit_edge, label %if.then43

imx_uart_readl.exit.if.end45_crit_edge:           ; preds = %imx_uart_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then43:                                        ; preds = %imx_uart_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %23 = ptrtoint ptr %membase11.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase11.i, align 8
  %add.ptr.i109 = getelementptr i8, ptr %24, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109, i32 65536) #10, !srcloc !186
  tail call fastcc void @__imx_uart_rxint(ptr noundef %dev_id)
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %imx_uart_readl.exit.if.end45_crit_edge
  %ret.0 = phi i32 [ 1, %if.then43 ], [ 0, %imx_uart_readl.exit.if.end45_crit_edge ]
  %and46 = and i32 %usr1.5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  %and48 = and i32 %usr2.1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  %or.cond = select i1 %tobool47.not, i1 %tobool49.not, i1 false
  br i1 %or.cond, label %if.end45.if.end51_crit_edge, label %if.then50

if.end45.if.end51_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then50:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @imx_uart_transmit_buffer(ptr noundef %dev_id)
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end45.if.end51_crit_edge
  %ret.1 = phi i32 [ 1, %if.then50 ], [ %ret.0, %if.end45.if.end51_crit_edge ]
  %and52 = and i32 %usr1.5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end51.if.end55_crit_edge, label %if.then54

if.end51.if.end55_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %25 = ptrtoint ptr %membase11.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase11.i, align 8
  %add.ptr.i111 = getelementptr i8, ptr %26, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111, i32 -2147483648) #10, !srcloc !186
  tail call fastcc void @imx_uart_mctrl_check(ptr noundef %dev_id)
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end51.if.end55_crit_edge
  %ret.2 = phi i32 [ 1, %if.then54 ], [ %ret.1, %if.end51.if.end55_crit_edge ]
  %and56 = and i32 %usr1.5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end55.if.end60_crit_edge, label %if.then58

if.end55.if.end60_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %27 = ptrtoint ptr %membase11.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase11.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1048576) #10, !srcloc !186
  %29 = ptrtoint ptr %membase11.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase11.i, align 8
  %add.ptr12.i.i = getelementptr i8, ptr %30, i32 148
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i.i) #10, !srcloc !179
  %32 = lshr i32 %31, 22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %and.lobit.i = and i32 %32, 1
  tail call void @uart_handle_cts_change(ptr noundef %dev_id, i32 noundef %and.lobit.i) #10
  %state.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 30
  %33 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %state.i, align 4
  %delta_msr_wait.i = getelementptr inbounds %struct.tty_port, ptr %34, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %delta_msr_wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end55.if.end60_crit_edge
  %ret.3 = phi i32 [ 1, %if.then58 ], [ %ret.2, %if.end55.if.end60_crit_edge ]
  %and61 = and i32 %usr1.5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end60.if.end64_crit_edge, label %if.then63

if.end60.if.end64_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %35 = ptrtoint ptr %membase11.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase11.i, align 8
  %add.ptr.i113 = getelementptr i8, ptr %36, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113, i32 268435456) #10, !srcloc !186
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.end60.if.end64_crit_edge
  %ret.4 = phi i32 [ 1, %if.then63 ], [ %ret.3, %if.end60.if.end64_crit_edge ]
  %and65 = and i32 %usr2.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end64.if.end69_crit_edge, label %if.then67

if.end64.if.end69_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  %overrun = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 7
  %37 = ptrtoint ptr %overrun to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %overrun, align 4
  %inc = add i32 %38, 1
  store i32 %inc, ptr %overrun, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %39 = ptrtoint ptr %membase11.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase11.i, align 8
  %add.ptr.i115 = getelementptr i8, ptr %40, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115, i32 33554432) #10, !srcloc !186
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.end64.if.end69_crit_edge
  %ret.5 = phi i32 [ 1, %if.then67 ], [ %ret.4, %if.end64.if.end69_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %dev_id) #10
  ret i32 %ret.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_uart_tx_empty(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase11.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase11.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase11.i, align 8
  %add.ptr12.i = getelementptr i8, ptr %1, i32 152
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #10, !srcloc !179
  %3 = lshr i32 %2, 27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %and.lobit = and i32 %3, 1
  %dma_is_txing = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 13
  %4 = ptrtoint ptr %dma_is_txing to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %dma_is_txing, align 4
  %5 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  %spec.store.select = select i1 %tobool1.not, i32 %and.lobit, i32 0
  ret i32 %spec.store.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_uart_set_mctrl(ptr noundef %port, i32 noundef %mctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rs485 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56
  %0 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rs485, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then:                                          ; preds = %entry
  %ucr2.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 9
  %2 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ucr2.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.imx_uart_readl.exit_crit_edge

if.then.imx_uart_readl.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %imx_uart_readl.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 132
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !179
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !187
  %8 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %ucr2.i, align 4
  br label %imx_uart_readl.exit

imx_uart_readl.exit:                              ; preds = %if.then.i, %if.then.imx_uart_readl.exit_crit_edge
  %9 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ucr2.i, align 4
  %and1 = and i32 %10, -12289
  %and2 = and i32 %mctrl, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %imx_uart_readl.exit.if.end9_crit_edge, label %if.then4

imx_uart_readl.exit.if.end9_crit_edge:            ; preds = %imx_uart_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then4:                                         ; preds = %imx_uart_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %and1, 4096
  %and5 = and i32 %10, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %or8 = or i32 %10, 12288
  %spec.select = select i1 %tobool6.not, i32 %or8, i32 %or
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %imx_uart_readl.exit.if.end9_crit_edge
  %ucr2.0 = phi i32 [ %and1, %imx_uart_readl.exit.if.end9_crit_edge ], [ %spec.select, %if.then4 ]
  %11 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %ucr2.0, ptr %ucr2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %12 = tail call i32 @llvm.bswap.i32(i32 %ucr2.0) #10
  %membase.i47 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %13 = ptrtoint ptr %membase.i47 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i47, align 8
  %add.ptr.i48 = getelementptr i8, ptr %14, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %12) #10, !srcloc !186
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %entry.if.end10_crit_edge
  %ucr3.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 10
  %15 = ptrtoint ptr %ucr3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ucr3.i, align 8
  %and12 = and i32 %16, -1025
  %and13 = shl i32 %mctrl, 9
  %17 = and i32 %and13, 1024
  %18 = or i32 %and12, %17
  %spec.select45 = xor i32 %18, 1024
  store i32 %spec.select45, ptr %ucr3.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %19 = tail call i32 @llvm.bswap.i32(i32 %spec.select45) #10
  %membase.i50 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %20 = ptrtoint ptr %membase.i50 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase.i50, align 8
  %add.ptr.i51 = getelementptr i8, ptr %21, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %19) #10, !srcloc !186
  %devdata.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 6
  %22 = ptrtoint ptr %devdata.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %devdata.i, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %26 = add i32 %25, -128
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 30) #10
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %27, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb5.i
    i32 3, label %sw.bb6.i
    i32 4, label %sw.bb7.i
  ]

sw.bb.i:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %ucr1.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 8
  %29 = ptrtoint ptr %ucr1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ucr1.i, align 8
  br label %imx_uart_readl.exit59

sw.bb1.i:                                         ; preds = %if.end10
  %ucr2.i52 = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 9
  %31 = ptrtoint ptr %ucr2.i52 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ucr2.i52, align 4
  %and.i53 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i53)
  %tobool.not.i54 = icmp eq i32 %and.i53, 0
  br i1 %tobool.not.i54, label %if.then.i57, label %sw.bb1.i.if.end.i_crit_edge

sw.bb1.i.if.end.i_crit_edge:                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i57:                                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %membase.i50 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase.i50, align 8
  %add.ptr.i56 = getelementptr i8, ptr %34, i32 %25
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i56) #10, !srcloc !179
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !187
  %37 = ptrtoint ptr %ucr2.i52 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %ucr2.i52, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i57, %sw.bb1.i.if.end.i_crit_edge
  %38 = ptrtoint ptr %ucr2.i52 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ucr2.i52, align 4
  br label %imx_uart_readl.exit59

sw.bb5.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %ucr3.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ucr3.i, align 8
  br label %imx_uart_readl.exit59

sw.bb6.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %ucr4.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 11
  %42 = ptrtoint ptr %ucr4.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ucr4.i, align 4
  br label %imx_uart_readl.exit59

sw.bb7.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %ufcr.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 12
  %44 = ptrtoint ptr %ufcr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ufcr.i, align 8
  br label %imx_uart_readl.exit59

sw.default.i:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %membase.i50 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %membase.i50, align 8
  %add.ptr12.i = getelementptr i8, ptr %47, i32 %25
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #10, !srcloc !179
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  br label %imx_uart_readl.exit59

imx_uart_readl.exit59:                            ; preds = %sw.default.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %if.end.i, %sw.bb.i
  %retval.0.i = phi i32 [ %49, %sw.default.i ], [ %45, %sw.bb7.i ], [ %43, %sw.bb6.i ], [ %41, %sw.bb5.i ], [ %39, %if.end.i ], [ %30, %sw.bb.i ]
  %and20 = and i32 %retval.0.i, -4097
  %and21 = lshr i32 %mctrl, 3
  %50 = and i32 %and21, 4096
  %uts.0 = or i32 %and20, %50
  %51 = ptrtoint ptr %devdata.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %devdata.i, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  %55 = add i32 %54, -128
  %56 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 30) #10
  %57 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %56, label %imx_uart_readl.exit59.imx_uart_writel.exit_crit_edge [
    i32 0, label %sw.bb.i62
    i32 1, label %sw.bb1.i64
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb3.i
    i32 4, label %sw.bb4.i
  ]

imx_uart_readl.exit59.imx_uart_writel.exit_crit_edge: ; preds = %imx_uart_readl.exit59
  call void @__sanitizer_cov_trace_pc() #12
  br label %imx_uart_writel.exit

sw.bb.i62:                                        ; preds = %imx_uart_readl.exit59
  call void @__sanitizer_cov_trace_pc() #12
  %ucr1.i61 = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 8
  %58 = ptrtoint ptr %ucr1.i61 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %uts.0, ptr %ucr1.i61, align 8
  br label %imx_uart_writel.exit

sw.bb1.i64:                                       ; preds = %imx_uart_readl.exit59
  call void @__sanitizer_cov_trace_pc() #12
  %ucr2.i63 = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 9
  %59 = ptrtoint ptr %ucr2.i63 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %uts.0, ptr %ucr2.i63, align 4
  br label %imx_uart_writel.exit

sw.bb2.i:                                         ; preds = %imx_uart_readl.exit59
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %ucr3.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %uts.0, ptr %ucr3.i, align 8
  br label %imx_uart_writel.exit

sw.bb3.i:                                         ; preds = %imx_uart_readl.exit59
  call void @__sanitizer_cov_trace_pc() #12
  %ucr4.i66 = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 11
  %61 = ptrtoint ptr %ucr4.i66 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %uts.0, ptr %ucr4.i66, align 4
  br label %imx_uart_writel.exit

sw.bb4.i:                                         ; preds = %imx_uart_readl.exit59
  call void @__sanitizer_cov_trace_pc() #12
  %ufcr.i67 = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 12
  %62 = ptrtoint ptr %ufcr.i67 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %uts.0, ptr %ufcr.i67, align 8
  br label %imx_uart_writel.exit

imx_uart_writel.exit:                             ; preds = %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i64, %sw.bb.i62, %imx_uart_readl.exit59.imx_uart_writel.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %63 = tail call i32 @llvm.bswap.i32(i32 %uts.0) #10
  %64 = ptrtoint ptr %membase.i50 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %membase.i50, align 8
  %add.ptr.i69 = getelementptr i8, ptr %65, i32 %54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 %63) #10, !srcloc !186
  %gpios = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 7
  %66 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %gpios, align 4
  tail call void @mctrl_gpio_set(ptr noundef %67, i32 noundef %mctrl) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_uart_get_mctrl(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #10
  %membase11.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase11.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase11.i.i, align 8
  %add.ptr12.i.i = getelementptr i8, ptr %1, i32 148
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %3 = ptrtoint ptr %membase11.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase11.i.i, align 8
  %add.ptr12.i24.i = getelementptr i8, ptr %4, i32 152
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i24.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %6 = and i32 %2, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  %spec.select.i = select i1 %tobool.not.i, i32 256, i32 288
  %7 = lshr i32 %5, 23
  %8 = and i32 %7, 64
  %9 = or i32 %8, %spec.select.i
  %10 = xor i32 %9, 64
  %dte_mode.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 3
  %11 = ptrtoint ptr %dte_mode.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %dte_mode.i, align 4
  %12 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool7.not.i = icmp eq i8 %12, 0
  br i1 %tobool7.not.i, label %entry.imx_uart_get_hwmctrl.exit_crit_edge, label %if.then8.i

entry.imx_uart_get_hwmctrl.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %imx_uart_get_hwmctrl.exit

if.then8.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %membase11.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase11.i.i, align 8
  %add.ptr12.i26.i = getelementptr i8, ptr %14, i32 152
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i26.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %16 = lshr i32 %15, 10
  %17 = and i32 %16, 128
  %18 = or i32 %17, %10
  %19 = xor i32 %18, 128
  br label %imx_uart_get_hwmctrl.exit

imx_uart_get_hwmctrl.exit:                        ; preds = %if.then8.i, %entry.imx_uart_get_hwmctrl.exit_crit_edge
  %tmp.2.i = phi i32 [ %10, %entry.imx_uart_get_hwmctrl.exit_crit_edge ], [ %19, %if.then8.i ]
  %20 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %tmp.2.i, ptr %ret, align 4
  %gpios = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 7
  %21 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %gpios, align 4
  %call1 = call i32 @mctrl_gpio_get(ptr noundef %22, ptr noundef nonnull %ret) #10
  %23 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ret, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #10
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_uart_stop_tx(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_state = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 28
  %0 = ptrtoint ptr %tx_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dma_is_txing = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 13
  %2 = ptrtoint ptr %dma_is_txing to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %dma_is_txing, align 4
  %3 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %ucr1.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 8
  %4 = ptrtoint ptr %ucr1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ucr1.i, align 8
  %and = and i32 %5, -8193
  store i32 %and, ptr %ucr1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %6 = tail call i32 @llvm.bswap.i32(i32 %and) #10
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %7 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i, align 8
  %add.ptr.i = getelementptr i8, ptr %8, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #10, !srcloc !186
  %9 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i, align 8
  %add.ptr12.i = getelementptr i8, ptr %10, i32 152
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %12 = and i32 %11, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool5.not = icmp eq i32 %12, 0
  br i1 %tobool5.not, label %if.end2.cleanup_crit_edge, label %if.end7

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %ucr4.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 11
  %13 = ptrtoint ptr %ucr4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ucr4.i, align 4
  %and9 = and i32 %14, -9
  store i32 %and9, ptr %ucr4.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %15 = tail call i32 @llvm.bswap.i32(i32 %and9) #10
  %16 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i, align 8
  %add.ptr.i66 = getelementptr i8, ptr %17, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66, i32 %15) #10, !srcloc !186
  %rs485 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56
  %18 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rs485, align 4
  %and10 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else34, label %if.then12

if.then12:                                        ; preds = %if.end7
  %20 = ptrtoint ptr %tx_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_state, align 8
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %21, label %if.then12.cleanup_crit_edge [
    i32 2, label %if.then15
    i32 1, label %if.then12.if.then23_crit_edge
    i32 3, label %if.then12.if.then23_crit_edge80
  ]

if.then12.if.then23_crit_edge80:                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23

if.then12.if.then23_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %tx_state to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %tx_state, align 8
  %trigger_stop_tx = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 30
  %delay_rts_after_send = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56, i32 2
  %24 = ptrtoint ptr %delay_rts_after_send to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %delay_rts_after_send, align 4
  %conv.i = zext i32 %25 to i64
  %mul.i.i = mul nuw nsw i64 %conv.i, 1000000
  tail call void @hrtimer_start_range_ns(ptr noundef %trigger_stop_tx, i64 noundef %mul.i.i, i64 noundef 0, i32 noundef 1) #10
  br label %cleanup

if.then23:                                        ; preds = %if.then12.if.then23_crit_edge, %if.then12.if.then23_crit_edge80
  %trigger_start_tx = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 29
  %call24 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %trigger_start_tx) #10
  %ucr2.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 9
  %26 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ucr2.i, align 4
  %and.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then23.imx_uart_readl.exit_crit_edge

if.then23.imx_uart_readl.exit_crit_edge:          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %imx_uart_readl.exit

if.then.i:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase.i, align 8
  %add.ptr.i68 = getelementptr i8, ptr %29, i32 132
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i68) #10, !srcloc !179
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !187
  %32 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %ucr2.i, align 4
  br label %imx_uart_readl.exit

imx_uart_readl.exit:                              ; preds = %if.then.i, %if.then23.imx_uart_readl.exit_crit_edge
  %33 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ucr2.i, align 4
  %35 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rs485, align 4
  %and28 = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %and.i70 = and i32 %34, -12289
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %imx_uart_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  %mctrl.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 36
  %37 = ptrtoint ptr %mctrl.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mctrl.i, align 4
  %or.i = or i32 %38, 4
  store i32 %or.i, ptr %mctrl.i, align 4
  br label %if.end31

if.else:                                          ; preds = %imx_uart_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  %or.i71 = or i32 %and.i70, 4096
  %mctrl.i72 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 36
  %39 = ptrtoint ptr %mctrl.i72 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mctrl.i72, align 4
  %and1.i = and i32 %40, -5
  store i32 %and1.i, ptr %mctrl.i72, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then30
  %and1.i.sink = phi i32 [ %and1.i, %if.else ], [ %or.i, %if.then30 ]
  %ucr2.0 = phi i32 [ %or.i71, %if.else ], [ %and.i70, %if.then30 ]
  %gpios.i73 = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 7
  %41 = ptrtoint ptr %gpios.i73 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %gpios.i73, align 4
  tail call void @mctrl_gpio_set(ptr noundef %42, i32 noundef %and1.i.sink) #10
  %43 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %ucr2.0, ptr %ucr2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %44 = tail call i32 @llvm.bswap.i32(i32 %ucr2.0) #10
  %45 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %membase.i, align 8
  %add.ptr.i76 = getelementptr i8, ptr %46, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76, i32 %44) #10, !srcloc !186
  %47 = ptrtoint ptr %ucr1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ucr1.i, align 8
  %49 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ucr2.i, align 4
  %and.i.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end31.imx_uart_start_rx.exit_crit_edge

if.end31.imx_uart_start_rx.exit_crit_edge:        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %imx_uart_start_rx.exit

if.then.i.i:                                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %membase.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %52, i32 132
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !179
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !187
  %55 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %ucr2.i, align 4
  br label %imx_uart_start_rx.exit

imx_uart_start_rx.exit:                           ; preds = %if.then.i.i, %if.end31.imx_uart_start_rx.exit_crit_edge
  %56 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ucr2.i, align 4
  %58 = ptrtoint ptr %dma_is_txing to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load.i = load i8, ptr %dma_is_txing, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i77 = icmp sgt i8 %bf.load.i, -1
  %ucr1.0.v.i = select i1 %tobool.not.i77, i32 512, i32 260
  %ucr1.0.i = or i32 %ucr1.0.v.i, %48
  %ucr2.0.v.i = select i1 %tobool.not.i77, i32 10, i32 2
  %ucr2.0.i = or i32 %ucr2.0.v.i, %57
  %59 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %ucr2.0.i, ptr %ucr2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %60 = tail call i32 @llvm.bswap.i32(i32 %ucr2.0.i) #10
  %61 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %membase.i, align 8
  %add.ptr.i15.i = getelementptr i8, ptr %62, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 %60) #10, !srcloc !186
  %63 = ptrtoint ptr %ucr1.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %ucr1.0.i, ptr %ucr1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %64 = tail call i32 @llvm.bswap.i32(i32 %ucr1.0.i) #10
  %65 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %membase.i, align 8
  %add.ptr.i18.i = getelementptr i8, ptr %66, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %64) #10, !srcloc !186
  %67 = ptrtoint ptr %tx_state to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %tx_state, align 8
  br label %cleanup

if.else34:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %tx_state to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %tx_state, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else34, %imx_uart_start_rx.exit, %if.then15, %if.then12.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_uart_start_tx(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %x_char = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 24
  %0 = ptrtoint ptr %x_char to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %x_char, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %head = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp eq i32 %5, %7
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %rs485 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56
  %8 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rs485, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %tx_state36 = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 28
  br i1 %tobool4.not, label %if.end.if.end37.sink.split_crit_edge, label %if.then5

if.end.if.end37.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.sink.split

if.then5:                                         ; preds = %if.end
  %10 = ptrtoint ptr %tx_state36 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_state36, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %11, label %if.then5.if.end37_crit_edge [
    i32 0, label %if.then7
    i32 3, label %if.then5.if.then27_crit_edge
    i32 1, label %if.then5.if.then27_crit_edge137
  ]

if.then5.if.then27_crit_edge137:                  ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

if.then5.if.then27_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

if.then5.if.end37_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then7:                                         ; preds = %if.then5
  %ucr2.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 9
  %13 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ucr2.i, align 4
  %and.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then7.imx_uart_readl.exit_crit_edge

if.then7.imx_uart_readl.exit_crit_edge:           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %imx_uart_readl.exit

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %15 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i, align 8
  %add.ptr.i = getelementptr i8, ptr %16, i32 132
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !179
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !187
  %19 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %ucr2.i, align 4
  br label %imx_uart_readl.exit

imx_uart_readl.exit:                              ; preds = %if.then.i, %if.then7.imx_uart_readl.exit_crit_edge
  %20 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ucr2.i, align 4
  %22 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rs485, align 4
  %and10 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %and.i113 = and i32 %21, -12289
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %imx_uart_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  %mctrl.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 36
  %24 = ptrtoint ptr %mctrl.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mctrl.i, align 4
  %or.i = or i32 %25, 4
  store i32 %or.i, ptr %mctrl.i, align 4
  br label %if.end13

if.else:                                          ; preds = %imx_uart_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  %or.i114 = or i32 %and.i113, 4096
  %mctrl.i115 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 36
  %26 = ptrtoint ptr %mctrl.i115 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mctrl.i115, align 4
  %and1.i = and i32 %27, -5
  store i32 %and1.i, ptr %mctrl.i115, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then12
  %and1.i.sink = phi i32 [ %and1.i, %if.else ], [ %or.i, %if.then12 ]
  %ucr2.0 = phi i32 [ %or.i114, %if.else ], [ %and.i113, %if.then12 ]
  %gpios.i116 = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 7
  %28 = ptrtoint ptr %gpios.i116 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %gpios.i116, align 4
  tail call void @mctrl_gpio_set(ptr noundef %29, i32 noundef %and1.i.sink) #10
  %30 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %ucr2.0, ptr %ucr2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %31 = tail call i32 @llvm.bswap.i32(i32 %ucr2.0) #10
  %membase.i118 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %32 = ptrtoint ptr %membase.i118 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase.i118, align 8
  %add.ptr.i119 = getelementptr i8, ptr %33, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 %31) #10, !srcloc !186
  %34 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rs485, align 4
  %and16 = and i32 %35, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.then18, label %if.end13.if.end19_crit_edge

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @imx_uart_stop_rx(ptr noundef %port)
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end13.if.end19_crit_edge
  %36 = ptrtoint ptr %tx_state36 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %tx_state36, align 8
  %trigger_start_tx = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 29
  %delay_rts_before_send = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56, i32 1
  %37 = ptrtoint ptr %delay_rts_before_send to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %delay_rts_before_send, align 4
  %conv.i = zext i32 %38 to i64
  %mul.i.i = mul nuw nsw i64 %conv.i, 1000000
  tail call void @hrtimer_start_range_ns(ptr noundef %trigger_start_tx, i64 noundef %mul.i.i, i64 noundef 0, i32 noundef 1) #10
  br label %cleanup

if.then27:                                        ; preds = %if.then5.if.then27_crit_edge, %if.then5.if.then27_crit_edge137
  %trigger_stop_tx = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 30
  %call28 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %trigger_stop_tx) #10
  %dma_is_enabled = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 13
  %39 = ptrtoint ptr %dma_is_enabled to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load = load i8, ptr %dma_is_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool29.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool29.not, label %if.then30, label %if.then27.if.end37.sink.split_crit_edge

if.then27.if.end37.sink.split_crit_edge:          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.sink.split

if.then30:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  %ucr4.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 11
  %40 = ptrtoint ptr %ucr4.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ucr4.i, align 4
  %or = or i32 %41, 8
  store i32 %or, ptr %ucr4.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %42 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  %membase.i121 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %43 = ptrtoint ptr %membase.i121 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase.i121, align 8
  %add.ptr.i122 = getelementptr i8, ptr %44, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122, i32 %42) #10, !srcloc !186
  br label %if.end37.sink.split

if.end37.sink.split:                              ; preds = %if.then30, %if.then27.if.end37.sink.split_crit_edge, %if.end.if.end37.sink.split_crit_edge
  %45 = ptrtoint ptr %tx_state36 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %tx_state36, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.end37.sink.split, %if.then5.if.end37_crit_edge
  %dma_is_enabled38 = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 13
  %46 = ptrtoint ptr %dma_is_enabled38 to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load39 = load i8, ptr %dma_is_enabled38, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load39)
  %tobool42.not = icmp sgt i8 %bf.load39, -1
  br i1 %tobool42.not, label %if.end46, label %if.end37.if.then52_crit_edge

if.end37.if.then52_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then52

if.end46:                                         ; preds = %if.end37
  %ucr1.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 8
  %47 = ptrtoint ptr %ucr1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ucr1.i, align 8
  %or45 = or i32 %48, 8192
  store i32 %or45, ptr %ucr1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %49 = tail call i32 @llvm.bswap.i32(i32 %or45) #10
  %membase.i124 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %50 = ptrtoint ptr %membase.i124 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %membase.i124, align 8
  %add.ptr.i125 = getelementptr i8, ptr %51, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i125, i32 %49) #10, !srcloc !186
  %52 = ptrtoint ptr %dma_is_enabled38 to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load48.pr = load i8, ptr %dma_is_enabled38, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load48.pr)
  %tobool51.not = icmp sgt i8 %bf.load48.pr, -1
  br i1 %tobool51.not, label %if.end46.cleanup_crit_edge, label %if.end46.if.then52_crit_edge

if.end46.if.then52_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then52

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then52:                                        ; preds = %if.end46.if.then52_crit_edge, %if.end37.if.then52_crit_edge
  %53 = ptrtoint ptr %x_char to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %x_char, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool55.not = icmp eq i8 %54, 0
  br i1 %tobool55.not, label %if.end60, label %if.then56

if.then56:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  %ucr1.i126 = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 8
  %55 = ptrtoint ptr %ucr1.i126 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ucr1.i126, align 8
  %and58 = and i32 %56, -8201
  %or59 = or i32 %and58, 8192
  store i32 %or59, ptr %ucr1.i126, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %57 = tail call i32 @llvm.bswap.i32(i32 %or59) #10
  %membase.i128 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %58 = ptrtoint ptr %membase.i128 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %membase.i128, align 8
  %add.ptr.i129 = getelementptr i8, ptr %59, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i129, i32 %57) #10, !srcloc !186
  br label %cleanup

if.end60:                                         ; preds = %if.then52
  %state61 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %60 = ptrtoint ptr %state61 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %state61, align 4
  %head63 = getelementptr inbounds %struct.uart_state, ptr %61, i32 0, i32 2, i32 1
  %62 = ptrtoint ptr %head63 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %head63, align 4
  %tail66 = getelementptr inbounds %struct.uart_state, ptr %61, i32 0, i32 2, i32 2
  %64 = ptrtoint ptr %tail66 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tail66, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %65)
  %cmp67 = icmp eq i32 %63, %65
  br i1 %cmp67, label %if.end60.cleanup_crit_edge, label %land.lhs.true68

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true68:                                  ; preds = %if.end60
  %tty2.i = getelementptr inbounds %struct.tty_port, ptr %61, i32 0, i32 1
  %66 = ptrtoint ptr %tty2.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tty2.i, align 4
  %tobool.not.i130 = icmp eq ptr %67, null
  br i1 %tobool.not.i130, label %land.lhs.true68.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i

land.lhs.true68.uart_tx_stopped.exit_crit_edge:   ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_tx_stopped.exit

land.lhs.true.i:                                  ; preds = %land.lhs.true68
  %stopped.i = getelementptr inbounds %struct.tty_struct, ptr %67, i32 0, i32 19, i32 1
  %68 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %stopped.i, align 4, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool3.not.i = icmp eq i8 %69, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i.uart_tx_stopped.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_tx_stopped.exit

uart_tx_stopped.exit:                             ; preds = %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, %land.lhs.true68.uart_tx_stopped.exit_crit_edge
  %hw_stopped.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 35
  %70 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %hw_stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool4.not.i.not = icmp eq i32 %71, 0
  br i1 %tobool4.not.i.not, label %if.then71, label %uart_tx_stopped.exit.cleanup_crit_edge

uart_tx_stopped.exit.cleanup_crit_edge:           ; preds = %uart_tx_stopped.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then71:                                        ; preds = %uart_tx_stopped.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @imx_uart_dma_tx(ptr noundef %port)
  br label %cleanup

cleanup:                                          ; preds = %if.then71, %uart_tx_stopped.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %if.then56, %if.end46.cleanup_crit_edge, %if.end19, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_uart_stop_rx(ptr nocapture noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ucr1.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 8
  %0 = ptrtoint ptr %ucr1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ucr1.i, align 8
  %ucr2.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 9
  %2 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ucr2.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.imx_uart_readl.exit_crit_edge

entry.imx_uart_readl.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %imx_uart_readl.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 132
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !179
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !187
  %8 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %ucr2.i, align 4
  br label %imx_uart_readl.exit

imx_uart_readl.exit:                              ; preds = %if.then.i, %entry.imx_uart_readl.exit_crit_edge
  %9 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ucr2.i, align 4
  %ucr4.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 11
  %11 = ptrtoint ptr %ucr4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ucr4.i, align 4
  %dma_is_enabled = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 13
  %13 = ptrtoint ptr %dma_is_enabled to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %dma_is_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %and4 = and i32 %10, -11
  %and5 = and i32 %12, -3
  %ucr1.0.v = select i1 %tobool.not, i32 -513, i32 -261
  %ucr1.0 = and i32 %ucr1.0.v, %1
  %ucr2.0 = select i1 %tobool.not, i32 %and4, i32 %10
  %ucr4.0 = select i1 %tobool.not, i32 %and5, i32 %12
  %14 = ptrtoint ptr %ucr1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %ucr1.0, ptr %ucr1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %15 = tail call i32 @llvm.bswap.i32(i32 %ucr1.0) #10
  %membase.i19 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %16 = ptrtoint ptr %membase.i19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i19, align 8
  %add.ptr.i20 = getelementptr i8, ptr %17, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %15) #10, !srcloc !186
  %18 = ptrtoint ptr %ucr4.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %ucr4.0, ptr %ucr4.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %19 = tail call i32 @llvm.bswap.i32(i32 %ucr4.0) #10
  %20 = ptrtoint ptr %membase.i19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase.i19, align 8
  %add.ptr.i23 = getelementptr i8, ptr %21, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 %19) #10, !srcloc !186
  %and6 = and i32 %ucr2.0, -3
  %22 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and6, ptr %ucr2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %23 = tail call i32 @llvm.bswap.i32(i32 %and6) #10
  %24 = ptrtoint ptr %membase.i19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase.i19, align 8
  %add.ptr.i26 = getelementptr i8, ptr %25, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 %23) #10, !srcloc !186
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_uart_enable_ms(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %timer = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %call = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %0) #10
  %gpios = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 7
  %1 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %gpios, align 4
  tail call void @mctrl_gpio_enable_ms(ptr noundef %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_uart_break_ctl(ptr noundef %port, i32 noundef %break_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #10
  %ucr1.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 8
  %0 = ptrtoint ptr %ucr1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ucr1.i, align 8
  %and = and i32 %1, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %break_state)
  %cmp7.not = icmp eq i32 %break_state, 0
  %masksel = select i1 %cmp7.not, i32 0, i32 16
  %spec.select = or i32 %and, %masksel
  %2 = ptrtoint ptr %ucr1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %spec.select, ptr %ucr1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %3 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #10
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #10, !srcloc !186
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_uart_startup(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_per = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 5
  %0 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_per, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %1) #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %clk_ipg = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 4
  %2 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_ipg, align 8
  %call.i178 = tail call i32 @clk_prepare(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i178)
  %tobool.not.i179 = icmp eq i32 %call.i178, 0
  br i1 %tobool.not.i179, label %if.end.i182, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

if.end.i182:                                      ; preds = %if.end
  %call1.i180 = tail call i32 @clk_enable(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i180)
  %tobool2.not.i181 = icmp eq i32 %call1.i180, 0
  br i1 %tobool2.not.i181, label %if.end6, label %if.then3.i183

if.then3.i183:                                    ; preds = %if.end.i182
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %3) #10
  br label %if.then4

if.then4:                                         ; preds = %if.then3.i183, %if.end.if.then4_crit_edge
  %retval.0.i184.ph = phi i32 [ %call1.i180, %if.then3.i183 ], [ %call.i178, %if.end.if.then4_crit_edge ]
  %4 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_per, align 4
  tail call void @clk_disable(ptr noundef %5) #10
  tail call void @clk_unprepare(ptr noundef %5) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end.i182
  %ufcr.i.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 12
  %6 = ptrtoint ptr %ufcr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ufcr.i.i, align 8
  %and.i = and i32 %7, 960
  %or2.i = or i32 %and.i, 2049
  store i32 %or2.i, ptr %ufcr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %8 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #10
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %9 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %8) #10, !srcloc !186
  %ucr4.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 11
  %11 = ptrtoint ptr %ucr4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ucr4.i, align 4
  %and = and i32 %12, -64514
  %or = or i32 %and, 16384
  store i32 %or, ptr %ucr4.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %13 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  %14 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %15, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #10, !srcloc !186
  %cons = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 32
  %16 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cons, align 4
  %tobool9.not = icmp eq ptr %17, null
  br i1 %tobool9.not, label %if.end6.land.lhs.true12_crit_edge, label %land.lhs.true

if.end6.land.lhs.true12_crit_edge:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true12

land.lhs.true:                                    ; preds = %if.end6
  %index = getelementptr inbounds %struct.console, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %index, align 2
  %conv = sext i16 %19 to i32
  %line = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %20 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv)
  %cmp = icmp eq i32 %21, %conv
  br i1 %cmp, label %land.lhs.true.do.body18_crit_edge, label %land.lhs.true.land.lhs.true12_crit_edge

land.lhs.true.land.lhs.true12_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true12

land.lhs.true.do.body18_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body18

land.lhs.true12:                                  ; preds = %land.lhs.true.land.lhs.true12_crit_edge, %if.end6.land.lhs.true12_crit_edge
  %call13 = tail call fastcc i32 @imx_uart_dma_init(ptr noundef %port)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp ne i32 %call13, 0
  br label %do.body18

do.body18:                                        ; preds = %land.lhs.true12, %land.lhs.true.do.body18_crit_edge
  %tobool96.not = phi i1 [ true, %land.lhs.true.do.body18_crit_edge ], [ %cmp14, %land.lhs.true12 ]
  %call23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #10
  %ucr2.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 9
  %22 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ucr2.i, align 4
  %and.i188 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i188)
  %tobool.not.i189 = icmp eq i32 %and.i188, 0
  br i1 %tobool.not.i189, label %if.then.i, label %do.body18.imx_uart_readl.exit_crit_edge

do.body18.imx_uart_readl.exit_crit_edge:          ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  br label %imx_uart_readl.exit

if.then.i:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i191 = getelementptr i8, ptr %25, i32 132
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i191) #10, !srcloc !179
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !187
  %28 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %ucr2.i, align 4
  br label %imx_uart_readl.exit

imx_uart_readl.exit:                              ; preds = %if.then.i, %do.body18.imx_uart_readl.exit_crit_edge
  %29 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ucr2.i, align 4
  %and27 = and i32 %30, -2
  store i32 %and27, ptr %ucr2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %31 = tail call i32 @llvm.bswap.i32(i32 %and27) #10
  %32 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i196 = getelementptr i8, ptr %33, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i196, i32 %31) #10, !srcloc !186
  br label %while.cond

while.cond:                                       ; preds = %while.body, %imx_uart_readl.exit
  %i.0 = phi i32 [ 100, %imx_uart_readl.exit ], [ %dec, %while.body ]
  %34 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ucr2.i, align 4
  %and.i198 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i198)
  %tobool.not.i199 = icmp eq i32 %and.i198, 0
  br i1 %tobool.not.i199, label %if.then.i202, label %while.cond.imx_uart_readl.exit205_crit_edge

while.cond.imx_uart_readl.exit205_crit_edge:      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %imx_uart_readl.exit205

if.then.i202:                                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i201 = getelementptr i8, ptr %37, i32 132
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i201) #10, !srcloc !179
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !187
  %40 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %ucr2.i, align 4
  br label %imx_uart_readl.exit205

imx_uart_readl.exit205:                           ; preds = %if.then.i202, %while.cond.imx_uart_readl.exit205_crit_edge
  %41 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ucr2.i, align 4
  %and29 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %land.rhs, label %imx_uart_readl.exit205.while.end_crit_edge

imx_uart_readl.exit205.while.end_crit_edge:       ; preds = %imx_uart_readl.exit205
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs:                                         ; preds = %imx_uart_readl.exit205
  %dec = add nsw i32 %i.0, -1
  %cmp31.not = icmp eq i32 %dec, 0
  br i1 %cmp31.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748) #10
  br label %while.cond

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %imx_uart_readl.exit205.while.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %44 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i207 = getelementptr i8, ptr %45, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i207, i32 -2146435072) #10, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %46 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i209 = getelementptr i8, ptr %47, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i209, i32 33554432) #10, !srcloc !186
  %ucr1.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 8
  %48 = ptrtoint ptr %ucr1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ucr1.i, align 8
  %and34 = and i32 %49, -514
  %have_rtscts = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 3
  %50 = ptrtoint ptr %have_rtscts to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load = load i8, ptr %have_rtscts, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool36.not263 = icmp slt i8 %bf.load, 0
  %spec.select175.v = select i1 %tobool36.not263, i32 33, i32 1
  %spec.select175 = or i32 %spec.select175.v, %and34
  %51 = ptrtoint ptr %ucr1.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %spec.select175, ptr %ucr1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %52 = tail call i32 @llvm.bswap.i32(i32 %spec.select175) #10
  %53 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i213 = getelementptr i8, ptr %54, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i213, i32 %52) #10, !srcloc !186
  %55 = ptrtoint ptr %ucr4.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ucr4.i, align 4
  %and41 = and i32 %56, -515
  %dma_is_enabled = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 13
  %57 = ptrtoint ptr %dma_is_enabled to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load42 = load i8, ptr %dma_is_enabled, align 4
  %or47 = or i32 %and41, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load42)
  %tobool45.not264 = icmp slt i8 %bf.load42, 0
  %ucr4.0 = select i1 %tobool45.not264, i32 %and41, i32 %or47
  %58 = ptrtoint ptr %have_rtscts to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load49 = load i8, ptr %have_rtscts, align 4
  %59 = and i8 %bf.load49, 8
  %60 = zext i8 %59 to i32
  %61 = shl nuw nsw i32 %60, 6
  %62 = or i32 %61, %ucr4.0
  %63 = ptrtoint ptr %ucr4.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %ucr4.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %64 = tail call i32 @llvm.bswap.i32(i32 %62) #10
  %65 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i218 = getelementptr i8, ptr %66, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i218, i32 %64) #10, !srcloc !186
  %ucr3.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 10
  %67 = ptrtoint ptr %ucr3.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ucr3.i, align 8
  %and57 = and i32 %68, -3
  %69 = ptrtoint ptr %have_rtscts to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load58 = load i8, ptr %have_rtscts, align 4
  %70 = lshr i8 %bf.load58, 3
  %71 = and i8 %70, 2
  %72 = zext i8 %71 to i32
  %ucr3.0 = or i32 %and57, %72
  %devdata.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 6
  %73 = ptrtoint ptr %devdata.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %devdata.i, align 8
  %devtype.i = getelementptr inbounds %struct.imx_uart_data, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %devtype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp.i.not = icmp eq i32 %76, 0
  br i1 %cmp.i.not, label %while.end.if.end78_crit_edge, label %if.then68

while.end.if.end78_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.then68:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %or69 = or i32 %ucr3.0, 776
  %77 = and i8 %bf.load58, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool74.not = icmp eq i8 %77, 0
  %and76 = and i32 %or69, -769
  %spec.select176 = select i1 %tobool74.not, i32 %or69, i32 %and76
  br label %if.end78

if.end78:                                         ; preds = %if.then68, %while.end.if.end78_crit_edge
  %ucr3.1 = phi i32 [ %ucr3.0, %while.end.if.end78_crit_edge ], [ %spec.select176, %if.then68 ]
  %78 = ptrtoint ptr %ucr3.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %ucr3.1, ptr %ucr3.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %79 = tail call i32 @llvm.bswap.i32(i32 %ucr3.1) #10
  %80 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i222 = getelementptr i8, ptr %81, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i222, i32 %79) #10, !srcloc !186
  %82 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %ucr2.i, align 4
  %and.i224 = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i224)
  %tobool.not.i225 = icmp eq i32 %and.i224, 0
  br i1 %tobool.not.i225, label %if.then.i228, label %if.end78.imx_uart_readl.exit231_crit_edge

if.end78.imx_uart_readl.exit231_crit_edge:        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %imx_uart_readl.exit231

if.then.i228:                                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  %84 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i227 = getelementptr i8, ptr %85, i32 132
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i227) #10, !srcloc !179
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !187
  %88 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %ucr2.i, align 4
  br label %imx_uart_readl.exit231

imx_uart_readl.exit231:                           ; preds = %if.then.i228, %if.end78.imx_uart_readl.exit231_crit_edge
  %89 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %ucr2.i, align 4
  %and80 = and i32 %90, -15
  %91 = ptrtoint ptr %have_rtscts to i32
  call void @__asan_load1_noabort(i32 %91)
  %bf.load83 = load i8, ptr %have_rtscts, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load83)
  %tobool86.not265 = icmp slt i8 %bf.load83, 0
  %spec.select177.v = select i1 %tobool86.not265, i32 6, i32 16390
  %spec.select177 = or i32 %spec.select177.v, %and80
  %92 = ptrtoint ptr %devdata.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %devdata.i, align 8
  %devtype.i233 = getelementptr inbounds %struct.imx_uart_data, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %devtype.i233 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %devtype.i233, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp.i234.not = icmp eq i32 %95, 0
  %and93 = and i32 %spec.select177, -25
  %ucr2.1 = select i1 %cmp.i234.not, i32 %spec.select177, i32 %and93
  %96 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %ucr2.1, ptr %ucr2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %97 = tail call i32 @llvm.bswap.i32(i32 %ucr2.1) #10
  %98 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i238 = getelementptr i8, ptr %99, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i238, i32 %97) #10, !srcloc !186
  %timer.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %100 = load volatile i32, ptr @jiffies, align 128
  %call.i239 = tail call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %100) #10
  %gpios.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 7
  %101 = ptrtoint ptr %gpios.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %gpios.i, align 4
  tail call void @mctrl_gpio_enable_ms(ptr noundef %102) #10
  br i1 %tobool96.not, label %if.else, label %if.then97

if.then97:                                        ; preds = %imx_uart_readl.exit231
  call void @__sanitizer_cov_trace_pc() #12
  %103 = ptrtoint ptr %ufcr.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %ufcr.i.i, align 8
  %and.i.i = and i32 %104, 960
  %or2.i.i = or i32 %and.i.i, 8201
  store i32 %or2.i.i, ptr %ufcr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %105 = tail call i32 @llvm.bswap.i32(i32 %or2.i.i) #10
  %106 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %107, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %105) #10, !srcloc !186
  %108 = ptrtoint ptr %ucr1.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %ucr1.i, align 8
  %or.i = or i32 %109, 268
  store i32 %or.i, ptr %ucr1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %110 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %111 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i.i240 = getelementptr i8, ptr %112, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i240, i32 %110) #10, !srcloc !186
  %113 = ptrtoint ptr %dma_is_enabled to i32
  call void @__asan_load1_noabort(i32 %113)
  %bf.load.i = load i8, ptr %dma_is_enabled, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %dma_is_enabled, align 4
  tail call fastcc void @imx_uart_start_rx_dma(ptr noundef %port)
  br label %if.end103

if.else:                                          ; preds = %imx_uart_readl.exit231
  %114 = ptrtoint ptr %ucr1.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %ucr1.i, align 8
  %or100 = or i32 %115, 512
  store i32 %or100, ptr %ucr1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %116 = tail call i32 @llvm.bswap.i32(i32 %or100) #10
  %117 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i245 = getelementptr i8, ptr %118, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i245, i32 %116) #10, !srcloc !186
  %119 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %ucr2.i, align 4
  %and.i247 = and i32 %120, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i247)
  %tobool.not.i248 = icmp eq i32 %and.i247, 0
  br i1 %tobool.not.i248, label %if.then.i251, label %if.else.imx_uart_readl.exit254_crit_edge

if.else.imx_uart_readl.exit254_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %imx_uart_readl.exit254

if.then.i251:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %121 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i250 = getelementptr i8, ptr %122, i32 132
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i250) #10, !srcloc !179
  %124 = tail call i32 @llvm.bswap.i32(i32 %123) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !187
  %125 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %ucr2.i, align 4
  br label %imx_uart_readl.exit254

imx_uart_readl.exit254:                           ; preds = %if.then.i251, %if.else.imx_uart_readl.exit254_crit_edge
  %126 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %ucr2.i, align 4
  %or102 = or i32 %127, 8
  store i32 %or102, ptr %ucr2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %128 = tail call i32 @llvm.bswap.i32(i32 %or102) #10
  %129 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i257 = getelementptr i8, ptr %130, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i257, i32 %128) #10, !srcloc !186
  br label %if.end103

if.end103:                                        ; preds = %imx_uart_readl.exit254, %if.then97
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call23) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end103, %if.then4, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i184.ph, %if.then4 ], [ 0, %if.end103 ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_uart_shutdown(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_is_enabled = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 13
  %0 = ptrtoint ptr %dma_is_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dma_is_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end32_crit_edge, label %if.then

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then:                                          ; preds = %entry
  %dma_chan_tx = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 15
  %1 = ptrtoint ptr %dma_chan_tx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dma_chan_tx, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 47
  %5 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.then.dmaengine_terminate_sync.exit_crit_edge, label %dmaengine_terminate_async.exit.i

if.then.dmaengine_terminate_sync.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_async.exit.i:                 ; preds = %if.then
  %call.i.i = tail call i32 %6(ptr noundef %2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge

dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_terminate_sync.exit

if.end.i:                                         ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.67, i32 noundef 1169) #10
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %8, i32 0, i32 48
  %9 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %10, null
  br i1 %tobool.not.i1.i, label %if.end.i.dmaengine_terminate_sync.exit_crit_edge, label %if.then.i2.i

if.end.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_terminate_sync.exit

if.then.i2.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %10(ptr noundef %2) #10
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_sync.exit:                    ; preds = %if.then.i2.i, %if.end.i.dmaengine_terminate_sync.exit_crit_edge, %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge, %if.then.dmaengine_terminate_sync.exit_crit_edge
  %11 = ptrtoint ptr %dma_is_enabled to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load1 = load i8, ptr %dma_is_enabled, align 4
  %12 = and i8 %bf.load1, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool4.not = icmp eq i8 %12, 0
  br i1 %tobool4.not, label %dmaengine_terminate_sync.exit.if.end_crit_edge, label %if.then5

dmaengine_terminate_sync.exit.if.end_crit_edge:   ; preds = %dmaengine_terminate_sync.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then5:                                         ; preds = %dmaengine_terminate_sync.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  %tx_sgl = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 17
  %dma_tx_nents = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 25
  %15 = ptrtoint ptr %dma_tx_nents to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_tx_nents, align 8
  tail call void @dma_unmap_sg_attrs(ptr noundef %14, ptr noundef %tx_sgl, i32 noundef %16, i32 noundef 1, i32 noundef 0) #10
  %17 = ptrtoint ptr %dma_is_enabled to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load8 = load i8, ptr %dma_is_enabled, align 4
  %bf.clear9 = and i8 %bf.load8, -33
  store i8 %bf.clear9, ptr %dma_is_enabled, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %dmaengine_terminate_sync.exit.if.end_crit_edge
  %dma_chan_rx = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 14
  %18 = ptrtoint ptr %dma_chan_rx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dma_chan_rx, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %device_terminate_all.i.i109 = getelementptr inbounds %struct.dma_device, ptr %21, i32 0, i32 47
  %22 = ptrtoint ptr %device_terminate_all.i.i109 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device_terminate_all.i.i109, align 4
  %tobool.not.i.i110 = icmp eq ptr %23, null
  br i1 %tobool.not.i.i110, label %if.end.dmaengine_terminate_sync.exit118_crit_edge, label %dmaengine_terminate_async.exit.i113

if.end.dmaengine_terminate_sync.exit118_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_terminate_sync.exit118

dmaengine_terminate_async.exit.i113:              ; preds = %if.end
  %call.i.i111 = tail call i32 %23(ptr noundef %19) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i111)
  %tobool.not.i112 = icmp eq i32 %call.i.i111, 0
  br i1 %tobool.not.i112, label %if.end.i116, label %dmaengine_terminate_async.exit.i113.dmaengine_terminate_sync.exit118_crit_edge

dmaengine_terminate_async.exit.i113.dmaengine_terminate_sync.exit118_crit_edge: ; preds = %dmaengine_terminate_async.exit.i113
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_terminate_sync.exit118

if.end.i116:                                      ; preds = %dmaengine_terminate_async.exit.i113
  tail call void @__might_sleep(ptr noundef nonnull @.str.67, i32 noundef 1169) #10
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %19, align 4
  %device_synchronize.i.i114 = getelementptr inbounds %struct.dma_device, ptr %25, i32 0, i32 48
  %26 = ptrtoint ptr %device_synchronize.i.i114 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device_synchronize.i.i114, align 4
  %tobool.not.i1.i115 = icmp eq ptr %27, null
  br i1 %tobool.not.i1.i115, label %if.end.i116.dmaengine_terminate_sync.exit118_crit_edge, label %if.then.i2.i117

if.end.i116.dmaengine_terminate_sync.exit118_crit_edge: ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_terminate_sync.exit118

if.then.i2.i117:                                  ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %27(ptr noundef %19) #10
  br label %dmaengine_terminate_sync.exit118

dmaengine_terminate_sync.exit118:                 ; preds = %if.then.i2.i117, %if.end.i116.dmaengine_terminate_sync.exit118_crit_edge, %dmaengine_terminate_async.exit.i113.dmaengine_terminate_sync.exit118_crit_edge, %if.end.dmaengine_terminate_sync.exit118_crit_edge
  %28 = ptrtoint ptr %dma_is_enabled to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load11 = load i8, ptr %dma_is_enabled, align 4
  %29 = and i8 %bf.load11, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool15.not = icmp eq i8 %29, 0
  br i1 %tobool15.not, label %dmaengine_terminate_sync.exit118.do.body24_crit_edge, label %if.then16

dmaengine_terminate_sync.exit118.do.body24_crit_edge: ; preds = %dmaengine_terminate_sync.exit118
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body24

if.then16:                                        ; preds = %dmaengine_terminate_sync.exit118
  call void @__sanitizer_cov_trace_pc() #12
  %dev18 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %30 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev18, align 8
  %rx_sgl = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 16
  tail call void @dma_unmap_sg_attrs(ptr noundef %31, ptr noundef %rx_sgl, i32 noundef 1, i32 noundef 2, i32 noundef 0) #10
  %32 = ptrtoint ptr %dma_is_enabled to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load20 = load i8, ptr %dma_is_enabled, align 4
  %bf.clear21 = and i8 %bf.load20, -65
  store i8 %bf.clear21, ptr %dma_is_enabled, align 4
  br label %do.body24

do.body24:                                        ; preds = %if.then16, %dmaengine_terminate_sync.exit118.do.body24_crit_edge
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #10
  tail call void @imx_uart_stop_tx(ptr noundef %port)
  tail call void @imx_uart_stop_rx(ptr noundef %port)
  %ucr1.i.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 8
  %33 = ptrtoint ptr %ucr1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ucr1.i.i, align 8
  %and.i = and i32 %34, -269
  store i32 %and.i, ptr %ucr1.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %35 = tail call i32 @llvm.bswap.i32(i32 %and.i) #10
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %36 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %35) #10, !srcloc !186
  %ufcr.i.i.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 12
  %38 = ptrtoint ptr %ufcr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ufcr.i.i.i, align 8
  %and.i.i = and i32 %39, 960
  %or2.i.i = or i32 %and.i.i, 2049
  store i32 %or2.i.i, ptr %ufcr.i.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %40 = tail call i32 @llvm.bswap.i32(i32 %or2.i.i) #10
  %41 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %42, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %40) #10, !srcloc !186
  %43 = ptrtoint ptr %dma_is_enabled to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load.i = load i8, ptr %dma_is_enabled, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %dma_is_enabled, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call27) #10
  tail call fastcc void @imx_uart_dma_exit(ptr noundef %port)
  br label %if.end32

if.end32:                                         ; preds = %do.body24, %entry.if.end32_crit_edge
  %gpios = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 7
  %44 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %gpios, align 4
  tail call void @mctrl_gpio_disable_ms(ptr noundef %45) #10
  %call43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #10
  %ucr2.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 9
  %46 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ucr2.i, align 4
  %and.i119 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i119)
  %tobool.not.i120 = icmp eq i32 %and.i119, 0
  br i1 %tobool.not.i120, label %if.then.i, label %if.end32.imx_uart_readl.exit_crit_edge

if.end32.imx_uart_readl.exit_crit_edge:           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %imx_uart_readl.exit

if.then.i:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %48 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %membase.i, align 8
  %add.ptr.i = getelementptr i8, ptr %49, i32 132
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !179
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !187
  %52 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %ucr2.i, align 4
  br label %imx_uart_readl.exit

imx_uart_readl.exit:                              ; preds = %if.then.i, %if.end32.imx_uart_readl.exit_crit_edge
  %53 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ucr2.i, align 4
  %and = and i32 %54, -13
  store i32 %and, ptr %ucr2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %55 = tail call i32 @llvm.bswap.i32(i32 %and) #10
  %membase.i123 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %56 = ptrtoint ptr %membase.i123 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %membase.i123, align 8
  %add.ptr.i124 = getelementptr i8, ptr %57, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i124, i32 %55) #10, !srcloc !186
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call43) #10
  %timer = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 1
  %call51 = tail call i32 @del_timer_sync(ptr noundef %timer) #10
  %call62 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #10
  %ucr1.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 8
  %58 = ptrtoint ptr %ucr1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ucr1.i, align 8
  %and68 = and i32 %59, -8998
  store i32 %and68, ptr %ucr1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %60 = tail call i32 @llvm.bswap.i32(i32 %and68) #10
  %61 = ptrtoint ptr %membase.i123 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %membase.i123, align 8
  %add.ptr.i127 = getelementptr i8, ptr %62, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127, i32 %60) #10, !srcloc !186
  %ucr4.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 11
  %63 = ptrtoint ptr %ucr4.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ucr4.i, align 4
  %and70 = and i32 %64, -9
  store i32 %and70, ptr %ucr4.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %65 = tail call i32 @llvm.bswap.i32(i32 %and70) #10
  %66 = ptrtoint ptr %membase.i123 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %membase.i123, align 8
  %add.ptr.i130 = getelementptr i8, ptr %67, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 %65) #10, !srcloc !186
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call62) #10
  %clk_per = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 5
  %68 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %clk_per, align 4
  tail call void @clk_disable(ptr noundef %69) #10
  tail call void @clk_unprepare(ptr noundef %69) #10
  %clk_ipg = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 4
  %70 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %clk_ipg, align 8
  tail call void @clk_disable(ptr noundef %71) #10
  tail call void @clk_unprepare(ptr noundef %71) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_uart_flush_buffer(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_sgl = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 17
  %dma_chan_tx = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 15
  %0 = ptrtoint ptr %dma_chan_tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_chan_tx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_bytes = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 24
  %2 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %tx_bytes, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 47
  %5 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.dmaengine_terminate_all.exit_crit_edge, label %if.then.i

if.end.dmaengine_terminate_all.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_terminate_all.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 %6(ptr noundef nonnull %1) #10
  br label %dmaengine_terminate_all.exit

dmaengine_terminate_all.exit:                     ; preds = %if.then.i, %if.end.dmaengine_terminate_all.exit_crit_edge
  %dma_is_txing = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 13
  %7 = ptrtoint ptr %dma_is_txing to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %dma_is_txing, align 4
  %8 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool2.not = icmp eq i8 %8, 0
  br i1 %tobool2.not, label %dmaengine_terminate_all.exit.if.end9_crit_edge, label %if.then3

dmaengine_terminate_all.exit.if.end9_crit_edge:   ; preds = %dmaengine_terminate_all.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then3:                                         ; preds = %dmaengine_terminate_all.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %dma_tx_nents = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 25
  %11 = ptrtoint ptr %dma_tx_nents to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_tx_nents, align 8
  tail call void @dma_unmap_sg_attrs(ptr noundef %10, ptr noundef %tx_sgl, i32 noundef %12, i32 noundef 1, i32 noundef 0) #10
  %ucr1.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 8
  %13 = ptrtoint ptr %ucr1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ucr1.i, align 8
  %and = and i32 %14, -9
  store i32 %and, ptr %ucr1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %15 = tail call i32 @llvm.bswap.i32(i32 %and) #10
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %16 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i, align 8
  %add.ptr.i = getelementptr i8, ptr %17, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %15) #10, !srcloc !186
  %18 = ptrtoint ptr %dma_is_txing to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load7 = load i8, ptr %dma_is_txing, align 4
  %bf.clear8 = and i8 %bf.load7, -33
  store i8 %bf.clear8, ptr %dma_is_txing, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then3, %dmaengine_terminate_all.exit.if.end9_crit_edge
  %membase11.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %19 = ptrtoint ptr %membase11.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase11.i, align 8
  %add.ptr12.i = getelementptr i8, ptr %20, i32 164
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %22 = ptrtoint ptr %membase11.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase11.i, align 8
  %add.ptr12.i46 = getelementptr i8, ptr %23, i32 168
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i46) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %25 = ptrtoint ptr %membase11.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase11.i, align 8
  %add.ptr12.i48 = getelementptr i8, ptr %26, i32 180
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i48) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %ucr2.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 9
  %28 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ucr2.i, align 4
  %and.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i49 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i49, label %if.then.i52, label %if.end9.imx_uart_readl.exit_crit_edge

if.end9.imx_uart_readl.exit_crit_edge:            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %imx_uart_readl.exit

if.then.i52:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %membase11.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase11.i, align 8
  %add.ptr.i51 = getelementptr i8, ptr %31, i32 132
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #10, !srcloc !179
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !187
  %34 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %ucr2.i, align 4
  br label %imx_uart_readl.exit

imx_uart_readl.exit:                              ; preds = %if.then.i52, %if.end9.imx_uart_readl.exit_crit_edge
  %35 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ucr2.i, align 4
  %and14 = and i32 %36, -2
  store i32 %and14, ptr %ucr2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %37 = tail call i32 @llvm.bswap.i32(i32 %and14) #10
  %38 = ptrtoint ptr %membase11.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %membase11.i, align 8
  %add.ptr.i55 = getelementptr i8, ptr %39, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 %37) #10, !srcloc !186
  br label %while.cond

while.cond:                                       ; preds = %while.body, %imx_uart_readl.exit
  %i.0 = phi i32 [ 100, %imx_uart_readl.exit ], [ %dec, %while.body ]
  %40 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ucr2.i, align 4
  %and.i57 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i57)
  %tobool.not.i58 = icmp eq i32 %and.i57, 0
  br i1 %tobool.not.i58, label %if.then.i61, label %while.cond.imx_uart_readl.exit62_crit_edge

while.cond.imx_uart_readl.exit62_crit_edge:       ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %imx_uart_readl.exit62

if.then.i61:                                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %membase11.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %membase11.i, align 8
  %add.ptr.i60 = getelementptr i8, ptr %43, i32 132
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60) #10, !srcloc !179
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !187
  %46 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %ucr2.i, align 4
  br label %imx_uart_readl.exit62

imx_uart_readl.exit62:                            ; preds = %if.then.i61, %while.cond.imx_uart_readl.exit62_crit_edge
  %47 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ucr2.i, align 4
  %and16 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %land.rhs, label %imx_uart_readl.exit62.while.end_crit_edge

imx_uart_readl.exit62.while.end_crit_edge:        ; preds = %imx_uart_readl.exit62
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs:                                         ; preds = %imx_uart_readl.exit62
  %dec = add nsw i32 %i.0, -1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748) #10
  br label %while.cond

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %imx_uart_readl.exit62.while.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %50 = ptrtoint ptr %membase11.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %membase11.i, align 8
  %add.ptr.i64 = getelementptr i8, ptr %51, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 %21) #10, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %52 = ptrtoint ptr %membase11.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %membase11.i, align 8
  %add.ptr.i66 = getelementptr i8, ptr %53, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66, i32 %24) #10, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %54 = ptrtoint ptr %membase11.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %membase11.i, align 8
  %add.ptr.i68 = getelementptr i8, ptr %55, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 %27) #10, !srcloc !186
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_uart_set_termios(ptr noundef %port, ptr noundef %termios, ptr noundef %old) #2 align 64 {
entry:
  %num = alloca i32, align 4
  %denom = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %old, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %old, i32 0, i32 2
  %0 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_cflag, align 4
  %and = and i32 %1, 48
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %and, %cond.true ], [ 48, %entry.cond.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #10
  %2 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %num, align 4, !annotation !178
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %denom) #10
  %3 = ptrtoint ptr %denom to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %denom, align 4, !annotation !178
  %c_cflag1 = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %4 = ptrtoint ptr %c_cflag1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %c_cflag1.promoted = load i32, ptr %c_cflag1, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %or629 = phi i32 [ %c_cflag1.promoted, %cond.end ], [ %or, %while.body ]
  %old_csize.0 = phi i32 [ %cond, %cond.end ], [ 48, %while.body ]
  %and2 = and i32 %or629, 48
  %5 = zext i32 %and2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %and2, label %while.body [
    i32 32, label %while.cond.while.end_crit_edge
    i32 48, label %while.cond.while.end_crit_edge630
  ]

while.cond.while.end_crit_edge630:                ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  %and7 = and i32 %or629, -49
  %or = or i32 %and7, %old_csize.0
  %6 = ptrtoint ptr %c_cflag1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %c_cflag1, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %while.cond.while.end_crit_edge630
  %timer = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 1
  %call = tail call i32 @del_timer_sync(ptr noundef %timer) #10
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %7 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %uartclk, align 4
  %div9563 = lshr i32 %8, 4
  %call10 = tail call i32 @uart_get_baud_rate(ptr noundef %port, ptr noundef %termios, ptr noundef %old, i32 noundef 50, i32 noundef %div9563) #10
  %call11 = tail call i32 @uart_get_divisor(ptr noundef %port, i32 noundef %call10) #10
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #10
  %ucr2.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 9
  %9 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ucr2.i, align 4
  %and.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %while.end.imx_uart_readl.exit_crit_edge

while.end.imx_uart_readl.exit_crit_edge:          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %imx_uart_readl.exit

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %11 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i, align 8
  %add.ptr.i = getelementptr i8, ptr %12, i32 132
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !179
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !187
  %15 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %ucr2.i, align 4
  br label %imx_uart_readl.exit

imx_uart_readl.exit:                              ; preds = %if.then.i, %while.end.imx_uart_readl.exit_crit_edge
  %16 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ucr2.i, align 4
  %and20 = and i32 %17, 4110
  %18 = ptrtoint ptr %c_cflag1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %c_cflag1, align 4
  %and23 = and i32 %19, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %and23)
  %cmp24 = icmp eq i32 %and23, 48
  %spec.select.v = select i1 %cmp24, i32 16417, i32 16385
  %spec.select = or i32 %spec.select.v, %and20
  %have_rtscts = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 3
  %20 = ptrtoint ptr %have_rtscts to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %have_rtscts, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool27.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool27.not, label %if.then28, label %imx_uart_readl.exit.if.end31_crit_edge

imx_uart_readl.exit.if.end31_crit_edge:           ; preds = %imx_uart_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then28:                                        ; preds = %imx_uart_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  %and30 = and i32 %19, 2147483647
  %21 = ptrtoint ptr %c_cflag1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and30, ptr %c_cflag1, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %imx_uart_readl.exit.if.end31_crit_edge
  %rs485 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56
  %22 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rs485, align 4
  %and33 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.else42, label %if.then35

if.then35:                                        ; preds = %if.end31
  %and38 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.else, label %if.then40

if.then40:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  %and.i566 = and i32 %spec.select, 16431
  %mctrl.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 36
  %24 = ptrtoint ptr %mctrl.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mctrl.i, align 4
  %or.i = or i32 %25, 4
  store i32 %or.i, ptr %mctrl.i, align 4
  %gpios.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 7
  %26 = ptrtoint ptr %gpios.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %gpios.i, align 4
  tail call void @mctrl_gpio_set(ptr noundef %27, i32 noundef %or.i) #10
  br label %if.end53

if.else:                                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  %or.i568 = or i32 %spec.select, 4096
  %mctrl.i569 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 36
  %28 = ptrtoint ptr %mctrl.i569 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mctrl.i569, align 4
  %and1.i = and i32 %29, -5
  store i32 %and1.i, ptr %mctrl.i569, align 4
  %gpios.i570 = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 7
  %30 = ptrtoint ptr %gpios.i570 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %gpios.i570, align 4
  tail call void @mctrl_gpio_set(ptr noundef %31, i32 noundef %and1.i) #10
  br label %if.end53

if.else42:                                        ; preds = %if.end31
  %32 = ptrtoint ptr %c_cflag1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %c_cflag1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %tobool45.not = icmp sgt i32 %33, -1
  br i1 %tobool45.not, label %if.else42.if.end59_crit_edge, label %if.then46

if.else42.if.end59_crit_edge:                     ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then46:                                        ; preds = %if.else42
  %and47 = and i32 %17, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.then46.if.then57_crit_edge, label %if.then49

if.then46.if.then57_crit_edge:                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then57

if.then49:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  %or50 = or i32 %spec.select, 8192
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %if.else, %if.then40
  %ucr2.1.ph = phi i32 [ %and.i566, %if.then40 ], [ %or.i568, %if.else ], [ %or50, %if.then49 ]
  %34 = ptrtoint ptr %c_cflag1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr = load i32, ptr %c_cflag1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr)
  %tobool56.not = icmp sgt i32 %.pr, -1
  br i1 %tobool56.not, label %if.end53.if.end59_crit_edge, label %if.end53.if.then57_crit_edge

if.end53.if.then57_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then57

if.end53.if.end59_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then57:                                        ; preds = %if.end53.if.then57_crit_edge, %if.then46.if.then57_crit_edge
  %ucr2.1603 = phi i32 [ %ucr2.1.ph, %if.end53.if.then57_crit_edge ], [ %spec.select, %if.then46.if.then57_crit_edge ]
  %35 = phi i32 [ %.pr, %if.end53.if.then57_crit_edge ], [ %33, %if.then46.if.then57_crit_edge ]
  %and58 = and i32 %ucr2.1603, -16385
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.end53.if.end59_crit_edge, %if.else42.if.end59_crit_edge
  %36 = phi i32 [ %.pr, %if.end53.if.end59_crit_edge ], [ %35, %if.then57 ], [ %33, %if.else42.if.end59_crit_edge ]
  %ucr2.2 = phi i32 [ %ucr2.1.ph, %if.end53.if.end59_crit_edge ], [ %and58, %if.then57 ], [ %spec.select, %if.else42.if.end59_crit_edge ]
  %and61 = and i32 %36, 64
  %37 = or i32 %and61, %ucr2.2
  %and67 = and i32 %36, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  %and72 = and i32 %36, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  %spec.select623.v = select i1 %tobool73.not, i32 256, i32 384
  %spec.select623 = select i1 %tobool68.not, i32 0, i32 %spec.select623.v
  %ucr2.4 = or i32 %37, %spec.select623
  %read_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 28
  %38 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %read_status_mask, align 4
  %39 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %termios, align 4
  %and79 = and i32 %40, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  %spec.store.select = select i1 %tobool80.not, i32 0, i32 5120
  %41 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %spec.store.select, ptr %read_status_mask, align 4
  %42 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %termios, align 4
  %and87 = and i32 %43, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.end59.if.end93_crit_edge, label %if.then89

if.end59.if.end93_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

if.then89:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  %or92 = or i32 %spec.store.select, 2048
  %44 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or92, ptr %read_status_mask, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then89, %if.end59.if.end93_crit_edge
  %ignore_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 29
  %45 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %ignore_status_mask, align 8
  %46 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %termios, align 4
  %and96 = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  %spec.store.select565 = select i1 %tobool97.not, i32 0, i32 5120
  %48 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %spec.store.select565, ptr %ignore_status_mask, align 8
  %49 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %termios, align 4
  %and104 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.end93.if.end118_crit_edge, label %if.then106

if.end93.if.end118_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end118

if.then106:                                       ; preds = %if.end93
  %or109 = or i32 %spec.store.select565, 2048
  %51 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or109, ptr %ignore_status_mask, align 8
  %52 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %termios, align 4
  %and111 = and i32 %53, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %if.then106.if.end118_crit_edge, label %if.then113

if.then106.if.end118_crit_edge:                   ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end118

if.then113:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #12
  %or116 = or i32 %spec.store.select565, 10240
  %54 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or116, ptr %ignore_status_mask, align 8
  br label %if.end118

if.end118:                                        ; preds = %if.then113, %if.then106.if.end118_crit_edge, %if.end93.if.end118_crit_edge
  %55 = ptrtoint ptr %c_cflag1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %c_cflag1, align 4
  %and120 = and i32 %56, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %cmp121 = icmp eq i32 %and120, 0
  br i1 %cmp121, label %if.then123, label %if.end118.if.end127_crit_edge

if.end118.if.end127_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

if.then123:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ignore_status_mask, align 8
  %or126 = or i32 %58, 65536
  store i32 %or126, ptr %ignore_status_mask, align 8
  br label %if.end127

if.end127:                                        ; preds = %if.then123, %if.end118.if.end127_crit_edge
  %59 = ptrtoint ptr %c_cflag1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %c_cflag1, align 4
  tail call void @uart_update_timeout(ptr noundef %port, i32 noundef %60, i32 noundef %call10) #10
  %61 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %uartclk, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 38400, i32 %call10)
  %cmp132 = icmp eq i32 %call10, 38400
  br i1 %cmp132, label %land.lhs.true, label %if.end127.if.end141_crit_edge

if.end127.if.end141_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

land.lhs.true:                                    ; preds = %if.end127
  %div131 = udiv i32 %62, 614400
  call void @__sanitizer_cov_trace_cmp4(i32 %call11, i32 %div131)
  %cmp134.not = icmp eq i32 %call11, %div131
  br i1 %cmp134.not, label %land.lhs.true.if.end141_crit_edge, label %if.then136

land.lhs.true.if.end141_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

if.then136:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %mul139 = shl i32 %call11, 4
  %div140 = udiv i32 %62, %mul139
  br label %if.end141

if.end141:                                        ; preds = %if.then136, %land.lhs.true.if.end141_crit_edge, %if.end127.if.end141_crit_edge
  %baud.0 = phi i32 [ %div140, %if.then136 ], [ 38400, %land.lhs.true.if.end141_crit_edge ], [ %call10, %if.end127.if.end141_crit_edge ]
  %mul144 = shl i32 %baud.0, 4
  %div145 = udiv i32 %62, %mul144
  %63 = tail call i32 @llvm.umin.i32(i32 %div145, i32 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool150.not = icmp eq i32 %63, 0
  %spec.store.select409 = select i1 %tobool150.not, i32 1, i32 %63
  %mul154 = mul i32 %mul144, %spec.store.select409
  call void @rational_best_approximation(i32 noundef %mul154, i32 noundef %62, i32 noundef 65536, i32 noundef 65536, ptr noundef nonnull %num, ptr noundef nonnull %denom) #10
  %64 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %uartclk, align 8
  %conv159 = zext i32 %65 to i64
  %66 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num, align 4
  %conv160 = zext i32 %67 to i64
  %mul161 = mul nuw i64 %conv160, %conv159
  %68 = ptrtoint ptr %denom to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %denom, align 4
  %mul162 = shl i32 %69, 4
  %mul163 = mul i32 %mul162, %spec.store.select409
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul161)
  %cmp345 = icmp ult i64 %mul161, 4294967296
  br i1 %cmp345, label %if.then349, label %if.else355, !prof !190

if.then349:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #12
  %conv350 = trunc i64 %mul161 to i32
  %div353 = udiv i32 %conv350, %mul163
  br label %if.end359

if.else355:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #12
  %70 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul163, i64 %mul161) #14, !srcloc !191
  %asmresult1.i = extractvalue { i64, i64 } %70, 1
  %extract.t626 = trunc i64 %asmresult1.i to i32
  br label %if.end359

if.end359:                                        ; preds = %if.else355, %if.then349
  %tdiv64.0.off0 = phi i32 [ %div353, %if.then349 ], [ %extract.t626, %if.else355 ]
  call void @tty_termios_encode_baud_rate(ptr noundef %termios, i32 noundef %tdiv64.0.off0, i32 noundef %tdiv64.0.off0) #10
  %71 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num, align 4
  %sub363 = add i32 %72, -1
  store i32 %sub363, ptr %num, align 4
  %73 = ptrtoint ptr %denom to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %denom, align 4
  %sub364 = add i32 %74, -1
  store i32 %sub364, ptr %denom, align 4
  %ufcr.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 12
  %75 = ptrtoint ptr %ufcr.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ufcr.i, align 8
  %and366 = and i32 %76, -897
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %spec.store.select409)
  %cmp367.not = icmp eq i32 %spec.store.select409, 7
  %.neg = mul nsw i32 %spec.store.select409, -128
  %phi.bo = add nsw i32 %.neg, 768
  %cond373 = select i1 %cmp367.not, i32 768, i32 %phi.bo
  %or375 = or i32 %and366, %cond373
  %77 = ptrtoint ptr %ufcr.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %or375, ptr %ufcr.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  call void @arm_heavy_mb() #10
  %78 = call i32 @llvm.bswap.i32(i32 %or375) #10
  %membase.i574 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %79 = ptrtoint ptr %membase.i574 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %membase.i574, align 8
  %add.ptr.i575 = getelementptr i8, ptr %80, i32 144
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i575, i32 %78) #10, !srcloc !186
  %81 = ptrtoint ptr %membase.i574 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %membase.i574, align 8
  %add.ptr12.i = getelementptr i8, ptr %82, i32 164
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #10, !srcloc !179
  %84 = call i32 @llvm.bswap.i32(i32 %83) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %85 = ptrtoint ptr %membase.i574 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %membase.i574, align 8
  %add.ptr12.i577 = getelementptr i8, ptr %86, i32 168
  %87 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i577) #10, !srcloc !179
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %88 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %89)
  %cmp378.not = icmp eq i32 %84, %89
  br i1 %cmp378.not, label %lor.lhs.false, label %if.end359.if.then382_crit_edge

if.end359.if.then382_crit_edge:                   ; preds = %if.end359
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then382

lor.lhs.false:                                    ; preds = %if.end359
  %90 = call i32 @llvm.bswap.i32(i32 %87) #10
  %91 = ptrtoint ptr %denom to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %denom, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %92)
  %cmp380.not = icmp eq i32 %90, %92
  br i1 %cmp380.not, label %lor.lhs.false.if.end383_crit_edge, label %lor.lhs.false.if.then382_crit_edge

lor.lhs.false.if.then382_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then382

lor.lhs.false.if.end383_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end383

if.then382:                                       ; preds = %lor.lhs.false.if.then382_crit_edge, %if.end359.if.then382_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  call void @arm_heavy_mb() #10
  %93 = call i32 @llvm.bswap.i32(i32 %89) #10
  %94 = ptrtoint ptr %membase.i574 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %membase.i574, align 8
  %add.ptr.i579 = getelementptr i8, ptr %95, i32 164
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i579, i32 %93) #10, !srcloc !186
  %96 = ptrtoint ptr %denom to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %denom, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  call void @arm_heavy_mb() #10
  %98 = call i32 @llvm.bswap.i32(i32 %97) #10
  %99 = ptrtoint ptr %membase.i574 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %membase.i574, align 8
  %add.ptr.i581 = getelementptr i8, ptr %100, i32 168
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i581, i32 %98) #10, !srcloc !186
  br label %if.end383

if.end383:                                        ; preds = %if.then382, %lor.lhs.false.if.end383_crit_edge
  %devdata.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 6
  %101 = ptrtoint ptr %devdata.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %devdata.i, align 8
  %devtype.i = getelementptr inbounds %struct.imx_uart_data, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %devtype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp.i.not = icmp eq i32 %104, 0
  br i1 %cmp.i.not, label %if.end383.if.end391_crit_edge, label %if.then386

if.end383.if.end391_crit_edge:                    ; preds = %if.end383
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end391

if.then386:                                       ; preds = %if.end383
  call void @__sanitizer_cov_trace_pc() #12
  %105 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %uartclk, align 8
  %div389 = udiv i32 %106, %spec.store.select409
  %div390 = udiv i32 %div389, 1000
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  call void @arm_heavy_mb() #10
  %107 = call i32 @llvm.bswap.i32(i32 %div390) #10
  %108 = ptrtoint ptr %membase.i574 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %membase.i574, align 8
  %add.ptr.i583 = getelementptr i8, ptr %109, i32 176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i583, i32 %107) #10, !srcloc !186
  br label %if.end391

if.end391:                                        ; preds = %if.then386, %if.end383.if.end391_crit_edge
  %110 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %ucr2.4, ptr %ucr2.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  call void @arm_heavy_mb() #10
  %111 = call i32 @llvm.bswap.i32(i32 %ucr2.4) #10
  %112 = ptrtoint ptr %membase.i574 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %membase.i574, align 8
  %add.ptr.i586 = getelementptr i8, ptr %113, i32 132
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i586, i32 %111) #10, !srcloc !186
  %flags393 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %114 = ptrtoint ptr %flags393 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %flags393, align 8
  %and394 = and i32 %115, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and394)
  %tobool395.not = icmp eq i32 %and394, 0
  br i1 %tobool395.not, label %lor.lhs.false396, label %if.end391.if.then404_crit_edge

if.end391.if.then404_crit_edge:                   ; preds = %if.end391
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then404

lor.lhs.false396:                                 ; preds = %if.end391
  %116 = ptrtoint ptr %c_cflag1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %c_cflag1, align 4
  %118 = and i32 %117, -2147481600
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %118)
  %.not628 = icmp eq i32 %118, 2048
  br i1 %.not628, label %lor.lhs.false396.if.end406_crit_edge, label %lor.lhs.false396.if.then404_crit_edge

lor.lhs.false396.if.then404_crit_edge:            ; preds = %lor.lhs.false396
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then404

lor.lhs.false396.if.end406_crit_edge:             ; preds = %lor.lhs.false396
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end406

if.then404:                                       ; preds = %lor.lhs.false396.if.then404_crit_edge, %if.end391.if.then404_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %119 = load volatile i32, ptr @jiffies, align 128
  %call.i = call i32 @mod_timer(ptr noundef %timer, i32 noundef %119) #10
  %gpios.i587 = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 7
  %120 = ptrtoint ptr %gpios.i587 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %gpios.i587, align 4
  call void @mctrl_gpio_enable_ms(ptr noundef %121) #10
  br label %if.end406

if.end406:                                        ; preds = %if.then404, %lor.lhs.false396.if.end406_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call16) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %denom) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @imx_uart_type(ptr nocapture noundef readonly %port) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %1)
  %cmp = icmp eq i32 %1, 62
  %cond = select i1 %cmp, ptr @.str.76, ptr null
  ret ptr %cond
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @imx_uart_config_port(ptr nocapture noundef writeonly %port, i32 noundef %flags) #7 align 64 {
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
  store i32 62, ptr %type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @imx_uart_verify_port(ptr nocapture noundef readonly %port, ptr nocapture noundef readonly %ser) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ser to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ser, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %switch.selectcmp.case1 = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %1)
  %switch.selectcmp.case2 = icmp eq i32 %1, 62
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 8
  %irq4 = getelementptr inbounds %struct.serial_struct, ptr %ser, i32 0, i32 3
  %4 = ptrtoint ptr %irq4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp5.not = icmp eq i32 %3, %5
  %io_type = getelementptr inbounds %struct.serial_struct, ptr %ser, i32 0, i32 9
  %6 = ptrtoint ptr %io_type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %io_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp8.not = icmp eq i8 %7, 2
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %8 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %uartclk, align 8
  %div42 = lshr i32 %9, 4
  %baud_base = getelementptr inbounds %struct.serial_struct, ptr %ser, i32 0, i32 7
  %10 = ptrtoint ptr %baud_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %baud_base, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div42, i32 %11)
  %cmp13.not = icmp eq i32 %div42, %11
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %12 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mapbase, align 8
  %iomem_base = getelementptr inbounds %struct.serial_struct, ptr %ser, i32 0, i32 14
  %14 = ptrtoint ptr %iomem_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iomem_base, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %16)
  %cmp18.not = icmp eq i32 %13, %16
  %iobase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %17 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iobase, align 4
  %port23 = getelementptr inbounds %struct.serial_struct, ptr %ser, i32 0, i32 2
  %19 = ptrtoint ptr %port23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp24.not = icmp eq i32 %18, %20
  %hub6 = getelementptr inbounds %struct.serial_struct, ptr %ser, i32 0, i32 11
  %21 = ptrtoint ptr %hub6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hub6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp28.not = icmp eq i32 %22, 0
  %23 = select i1 %cmp28.not, i1 %cmp24.not, i1 false
  %24 = select i1 %23, i1 %cmp18.not, i1 false
  %25 = select i1 %24, i1 %cmp13.not, i1 false
  %26 = select i1 %25, i1 %cmp8.not, i1 false
  %27 = select i1 %26, i1 %cmp5.not, i1 false
  %28 = select i1 %27, i1 %switch.selectcmp, i1 false
  %ret.6 = select i1 %28, i32 0, i32 -22
  ret i32 %ret.6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_uart_poll_init(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_ipg = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 4
  %0 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_ipg, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %1) #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %clk_per = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 5
  %2 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_per, align 4
  %call.i51 = tail call i32 @clk_prepare(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %tobool.not.i52 = icmp eq i32 %call.i51, 0
  br i1 %tobool.not.i52, label %if.end.i55, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

if.end.i55:                                       ; preds = %if.end
  %call1.i53 = tail call i32 @clk_enable(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53)
  %tobool2.not.i54 = icmp eq i32 %call1.i53, 0
  br i1 %tobool2.not.i54, label %if.end.i55.if.end6_crit_edge, label %if.then3.i56

if.end.i55.if.end6_crit_edge:                     ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then3.i56:                                     ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %3) #10
  br label %if.then4

if.then4:                                         ; preds = %if.then3.i56, %if.end.if.then4_crit_edge
  %4 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_ipg, align 8
  tail call void @clk_disable(ptr noundef %5) #10
  tail call void @clk_unprepare(ptr noundef %5) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.i55.if.end6_crit_edge
  %ufcr.i.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 12
  %6 = ptrtoint ptr %ufcr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ufcr.i.i, align 8
  %and.i = and i32 %7, 960
  %or2.i = or i32 %and.i, 2049
  store i32 %or2.i, ptr %ufcr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %8 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #10
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %9 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %8) #10, !srcloc !186
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #10
  %ucr1.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 8
  %11 = ptrtoint ptr %ucr1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ucr1.i, align 8
  %ucr2.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 9
  %13 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ucr2.i, align 4
  %and.i60 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i60)
  %tobool.not.i61 = icmp eq i32 %and.i60, 0
  br i1 %tobool.not.i61, label %if.then.i, label %if.end6.imx_uart_readl.exit_crit_edge

if.end6.imx_uart_readl.exit_crit_edge:            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %imx_uart_readl.exit

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %16, i32 132
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !179
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !187
  %19 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %ucr2.i, align 4
  br label %imx_uart_readl.exit

imx_uart_readl.exit:                              ; preds = %if.then.i, %if.end6.imx_uart_readl.exit_crit_edge
  %20 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ucr2.i, align 4
  %devdata.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 6
  %22 = ptrtoint ptr %devdata.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %devdata.i, align 8
  %devtype.i = getelementptr inbounds %struct.imx_uart_data, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %devtype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i.not = icmp eq i32 %25, 0
  %or = or i32 %12, 4
  %spec.select = select i1 %cmp.i.not, i32 %or, i32 %12
  %or19 = and i32 %spec.select, -8738
  %and = or i32 %or19, 1
  %or20 = and i32 %21, -15
  %and21 = or i32 %or20, 6
  %26 = ptrtoint ptr %ucr1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and, ptr %ucr1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %27 = tail call i32 @llvm.bswap.i32(i32 %and) #10
  %28 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i66 = getelementptr i8, ptr %29, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66, i32 %27) #10, !srcloc !186
  %30 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and21, ptr %ucr2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %31 = tail call i32 @llvm.bswap.i32(i32 %and21) #10
  %32 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i69 = getelementptr i8, ptr %33, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 %31) #10, !srcloc !186
  %or22 = or i32 %or19, 513
  %34 = ptrtoint ptr %ucr1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or22, ptr %ucr1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %35 = tail call i32 @llvm.bswap.i32(i32 %or22) #10
  %36 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i72 = getelementptr i8, ptr %37, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72, i32 %35) #10, !srcloc !186
  %or23 = or i32 %21, 14
  %38 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or23, ptr %ucr2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %39 = tail call i32 @llvm.bswap.i32(i32 %or23) #10
  %40 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i75 = getelementptr i8, ptr %41, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75, i32 %39) #10, !srcloc !186
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call10) #10
  br label %cleanup

cleanup:                                          ; preds = %imx_uart_readl.exit, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %imx_uart_readl.exit ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_uart_poll_put_char(ptr nocapture noundef readonly %port, i8 noundef zeroext %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase11.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %0 = ptrtoint ptr %membase11.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase11.i, align 8
  %add.ptr12.i = getelementptr i8, ptr %1, i32 148
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %3 = and i32 %2, 2097152
  %tobool.not.not = icmp eq i32 %3, 0
  br i1 %tobool.not.not, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end:                                           ; preds = %do.body
  %conv = zext i8 %c to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %4 = shl nuw i32 %conv, 24
  %5 = ptrtoint ptr %membase11.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase11.i, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #10, !srcloc !186
  br label %do.body1

do.body1:                                         ; preds = %do.body1.do.body1_crit_edge, %do.end
  %7 = ptrtoint ptr %membase11.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase11.i, align 8
  %add.ptr12.i12 = getelementptr i8, ptr %8, i32 152
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i12) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %10 = and i32 %9, 134217728
  %tobool6.not.not = icmp eq i32 %10, 0
  br i1 %tobool6.not.not, label %do.body1.do.body1_crit_edge, label %do.end7

do.body1.do.body1_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1

do.end7:                                          ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_uart_poll_get_char(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase11.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase11.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase11.i, align 8
  %add.ptr12.i = getelementptr i8, ptr %1, i32 152
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %membase11.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase11.i, align 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #10, !srcloc !179
  %7 = lshr i32 %6, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.end ], [ 16711680, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctrl_gpio_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mctrl_gpio_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_try_to_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @imx_uart_dma_tx(ptr noundef %sport) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %xmit1 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2
  %tx_sgl = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 17
  %dma_chan_tx = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 15
  %2 = ptrtoint ptr %dma_chan_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_chan_tx, align 4
  %dev3 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 45
  %4 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev3, align 8
  %dma_is_txing = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 13
  %6 = ptrtoint ptr %dma_is_txing to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %dma_is_txing, align 4
  %7 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ucr4.i = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 11
  %8 = ptrtoint ptr %ucr4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ucr4.i, align 4
  %and = and i32 %9, -9
  store i32 %and, ptr %ucr4.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %10 = tail call i32 @llvm.bswap.i32(i32 %and) #10
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %11 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i, align 8
  %add.ptr.i = getelementptr i8, ptr %12, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #10, !srcloc !186
  %head = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tail, align 4
  %sub = sub i32 %14, %16
  %and4 = and i32 %sub, 4095
  %tx_bytes = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 24
  %17 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and4, ptr %tx_bytes, align 4
  %18 = load i32, ptr %tail, align 4
  %19 = load i32, ptr %head, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %19)
  %cmp = icmp slt i32 %18, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp8 = icmp eq i32 %19, 0
  %or.cond = or i1 %cmp, %cmp8
  %dma_tx_nents = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 25
  br i1 %or.cond, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %dma_tx_nents to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %dma_tx_nents, align 8
  %21 = ptrtoint ptr %xmit1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xmit1, align 4
  %23 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tail, align 4
  %add.ptr = getelementptr i8, ptr %22, i32 %24
  tail call void @sg_init_one(ptr noundef %tx_sgl, ptr noundef %add.ptr, i32 noundef %and4) #10
  br label %if.end21

if.else:                                          ; preds = %if.end
  %25 = ptrtoint ptr %dma_tx_nents to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %dma_tx_nents, align 8
  tail call void @sg_init_table(ptr noundef %tx_sgl, i32 noundef 2) #10
  %26 = ptrtoint ptr %xmit1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %xmit1, align 4
  %28 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tail, align 4
  %add.ptr15 = getelementptr i8, ptr %27, i32 %29
  %sub17 = sub i32 4096, %29
  %30 = ptrtoint ptr %add.ptr15 to i32
  %cmp.i = icmp ugt ptr %add.ptr15, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i, label %land.lhs.true.i, label %if.else.do.body5.i_crit_edge, !prof !190

if.else.do.body5.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %31 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %31, %add.ptr15
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !190

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i = add i32 %30, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %32 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %32, %shr.i
  %call.i = tail call i32 @pfn_valid(i32 noundef %add.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !192

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %if.else.do.body5.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !193
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %33 = load ptr, ptr @mem_map, align 4
  %add.ptr.i108 = getelementptr %struct.page, ptr %33, i32 %shr.i
  %34 = ptrtoint ptr %tx_sgl to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_sgl, align 4
  %36 = ptrtoint ptr %add.ptr.i108 to i32
  %and2.i.i.i = and i32 %36, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !190

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !194
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !190

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !195
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  %and.i = and i32 %30, 4095
  %and.i.i.i = and i32 %35, 3
  %or.i.i.i = or i32 %and.i.i.i, %36
  %37 = ptrtoint ptr %tx_sgl to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or.i.i.i, ptr %tx_sgl, align 4
  %offset1.i.i = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 17, i32 0, i32 1
  %38 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and.i, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 17, i32 0, i32 2
  %39 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub17, ptr %length.i.i, align 4
  %add.ptr18 = getelementptr %struct.imx_port, ptr %sport, i32 0, i32 17, i32 1
  %40 = ptrtoint ptr %xmit1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %xmit1, align 4
  %42 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %head, align 4
  %44 = ptrtoint ptr %41 to i32
  %cmp.i109 = icmp ugt ptr %41, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i109, label %land.lhs.true.i111, label %sg_set_buf.exit.do.body5.i118_crit_edge, !prof !190

sg_set_buf.exit.do.body5.i118_crit_edge:          ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i118

land.lhs.true.i111:                               ; preds = %sg_set_buf.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %45 = load ptr, ptr @high_memory, align 4
  %cmp1.i110 = icmp ugt ptr %45, %41
  br i1 %cmp1.i110, label %land.rhs.i117, label %land.lhs.true.i111.do.body5.i118_crit_edge, !prof !190

land.lhs.true.i111.do.body5.i118_crit_edge:       ; preds = %land.lhs.true.i111
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i118

land.rhs.i117:                                    ; preds = %land.lhs.true.i111
  %sub.i112 = add i32 %44, 1073741824
  %shr.i113 = lshr i32 %sub.i112, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %46 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i114 = add i32 %46, %shr.i113
  %call.i115 = tail call i32 @pfn_valid(i32 noundef %add.i114) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115)
  %tobool.i116 = icmp eq i32 %call.i115, 0
  br i1 %tobool.i116, label %land.rhs.i117.do.body5.i118_crit_edge, label %do.end8.i122, !prof !192

land.rhs.i117.do.body5.i118_crit_edge:            ; preds = %land.rhs.i117
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i118

do.body5.i118:                                    ; preds = %land.rhs.i117.do.body5.i118_crit_edge, %land.lhs.true.i111.do.body5.i118_crit_edge, %sg_set_buf.exit.do.body5.i118_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !193
  unreachable

do.end8.i122:                                     ; preds = %land.rhs.i117
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %47 = load ptr, ptr @mem_map, align 4
  %add.ptr.i119 = getelementptr %struct.page, ptr %47, i32 %shr.i113
  %48 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr18, align 4
  %50 = ptrtoint ptr %add.ptr.i119 to i32
  %and2.i.i.i120 = and i32 %50, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i120)
  %tobool.not.i.i.i121 = icmp eq i32 %and2.i.i.i120, 0
  br i1 %tobool.not.i.i.i121, label %do.body11.i.i.i126, label %do.body5.i.i.i123, !prof !190

do.body5.i.i.i123:                                ; preds = %do.end8.i122
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !194
  unreachable

do.body11.i.i.i126:                               ; preds = %do.end8.i122
  %and.i.i.i.i124 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i124)
  %tobool.i.not.i.i.i125 = icmp eq i32 %and.i.i.i.i124, 0
  br i1 %tobool.i.not.i.i.i125, label %sg_set_buf.exit133, label %do.body19.i.i.i127, !prof !190

do.body19.i.i.i127:                               ; preds = %do.body11.i.i.i126
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !195
  unreachable

sg_set_buf.exit133:                               ; preds = %do.body11.i.i.i126
  call void @__sanitizer_cov_trace_pc() #12
  %and.i128 = and i32 %44, 4095
  %and.i.i.i129 = and i32 %49, 3
  %or.i.i.i130 = or i32 %and.i.i.i129, %50
  %51 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or.i.i.i130, ptr %add.ptr18, align 4
  %offset1.i.i131 = getelementptr %struct.imx_port, ptr %sport, i32 0, i32 17, i32 1, i32 1
  %52 = ptrtoint ptr %offset1.i.i131 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %and.i128, ptr %offset1.i.i131, align 4
  %length.i.i132 = getelementptr %struct.imx_port, ptr %sport, i32 0, i32 17, i32 1, i32 2
  %53 = ptrtoint ptr %length.i.i132 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %43, ptr %length.i.i132, align 4
  br label %if.end21

if.end21:                                         ; preds = %sg_set_buf.exit133, %if.then9
  %dma_tx_nents22 = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 25
  %54 = ptrtoint ptr %dma_tx_nents22 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dma_tx_nents22, align 8
  %call23 = tail call i32 @dma_map_sg_attrs(ptr noundef %5, ptr noundef %tx_sgl, i32 noundef %55, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %do.end, label %if.end26

do.end:                                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.47) #13
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end26.if.then29_crit_edge, label %lor.lhs.false.i

if.end26.if.then29_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

lor.lhs.false.i:                                  ; preds = %if.end26
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %3, align 4
  %tobool1.not.i = icmp eq ptr %57, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.then29_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.if.then29_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %57, i32 0, i32 39
  %58 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %59, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.if.then29_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.if.then29_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i134 = tail call ptr %59(ptr noundef nonnull %3, ptr noundef %tx_sgl, i32 noundef %call23, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  %tobool28.not = icmp eq ptr %call.i134, null
  br i1 %tobool28.not, label %dmaengine_prep_slave_sg.exit.if.then29_crit_edge, label %if.end34

dmaengine_prep_slave_sg.exit.if.then29_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

if.then29:                                        ; preds = %dmaengine_prep_slave_sg.exit.if.then29_crit_edge, %lor.lhs.false2.i.if.then29_crit_edge, %lor.lhs.false.i.if.then29_crit_edge, %if.end26.if.then29_crit_edge
  %60 = ptrtoint ptr %dma_tx_nents22 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dma_tx_nents22, align 8
  tail call void @dma_unmap_sg_attrs(ptr noundef %5, ptr noundef %tx_sgl, i32 noundef %61, i32 noundef 1, i32 noundef 0) #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.50) #13
  br label %cleanup

if.end34:                                         ; preds = %dmaengine_prep_slave_sg.exit
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i134, i32 0, i32 6
  %62 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @imx_uart_dma_tx_callback, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i134, i32 0, i32 8
  %63 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %sport, ptr %callback_param, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_uart_dma_tx.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_uart_dma_tx, %if.then40)) #10
          to label %do.end47 [label %if.then40], !srcloc !196

if.then40:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %head, align 4
  %66 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tail, align 4
  %sub43 = sub i32 %65, %67
  %and44 = and i32 %sub43, 4095
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_uart_dma_tx.__UNIQUE_ID_ddebug237, ptr noundef %5, ptr noundef nonnull @.str.53, i32 noundef %and44) #10
  br label %do.end47

do.end47:                                         ; preds = %if.then40, %if.end34
  %ucr1.i = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 8
  %68 = ptrtoint ptr %ucr1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ucr1.i, align 8
  %or = or i32 %69, 8
  store i32 %or, ptr %ucr1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %70 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  %71 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %membase.i, align 8
  %add.ptr.i139 = getelementptr i8, ptr %72, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139, i32 %70) #10, !srcloc !186
  %73 = ptrtoint ptr %dma_is_txing to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load50 = load i8, ptr %dma_is_txing, align 4
  %bf.set = or i8 %bf.load50, 32
  store i8 %bf.set, ptr %dma_is_txing, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i134, i32 0, i32 4
  %74 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tx_submit.i, align 4
  %call.i140 = tail call i32 %75(ptr noundef nonnull %call.i134) #10
  %76 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %3, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %77, i32 0, i32 50
  %78 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %79(ptr noundef nonnull %3) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end47, %if.then29, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_uart_dma_tx_callback(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_sgl = getelementptr inbounds %struct.imx_port, ptr %data, i32 0, i32 17
  %state = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %data) #10
  %dev = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 45
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %dma_tx_nents = getelementptr inbounds %struct.imx_port, ptr %data, i32 0, i32 25
  %4 = ptrtoint ptr %dma_tx_nents to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_tx_nents, align 8
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %tx_sgl, i32 noundef %5, i32 noundef 1, i32 noundef 0) #10
  %ucr1.i = getelementptr inbounds %struct.imx_port, ptr %data, i32 0, i32 8
  %6 = ptrtoint ptr %ucr1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ucr1.i, align 8
  %and = and i32 %7, -9
  store i32 %and, ptr %ucr1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %8 = tail call i32 @llvm.bswap.i32(i32 %and) #10
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 2
  %9 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i, align 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #10, !srcloc !186
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tail, align 4
  %tx_bytes = getelementptr inbounds %struct.imx_port, ptr %data, i32 0, i32 24
  %13 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %14, %12
  %and9 = and i32 %add, 4095
  store i32 %and9, ptr %tail, align 4
  %15 = load i32, ptr %tx_bytes, align 4
  %tx = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 31, i32 5
  %16 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx, align 4
  %add13 = add i32 %17, %15
  store i32 %add13, ptr %tx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_uart_dma_tx_callback.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_uart_dma_tx_callback, %if.then)) #10
          to label %do.end22 [label %if.then], !srcloc !196

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_uart_dma_tx_callback.__UNIQUE_ID_ddebug236, ptr noundef %19, ptr noundef nonnull @.str.55) #10
  br label %do.end22

do.end22:                                         ; preds = %if.then, %entry
  %dma_is_txing = getelementptr inbounds %struct.imx_port, ptr %data, i32 0, i32 13
  %20 = ptrtoint ptr %dma_is_txing to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %dma_is_txing, align 4
  %bf.clear = and i8 %bf.load, -33
  store i8 %bf.clear, ptr %dma_is_txing, align 4
  %head = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %head, align 4
  %23 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tail, align 4
  %sub = sub i32 %22, %24
  %and24 = and i32 %sub, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %cmp25 = icmp eq i32 %and24, 0
  br i1 %cmp25, label %if.then27, label %do.end22.if.end29_crit_edge

do.end22.if.end29_crit_edge:                      ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then27:                                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @uart_write_wakeup(ptr noundef %data) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %do.end22.if.end29_crit_edge
  %25 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %head, align 4
  %27 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp32 = icmp eq i32 %26, %28
  br i1 %cmp32, label %if.end29.if.else_crit_edge, label %land.lhs.true

if.end29.if.else_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.end29
  %29 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %state, align 4
  %tty2.i = getelementptr inbounds %struct.tty_port, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %tty2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tty2.i, align 4
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %land.lhs.true.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i

land.lhs.true.uart_tx_stopped.exit_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_tx_stopped.exit

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %stopped.i = getelementptr inbounds %struct.tty_struct, ptr %32, i32 0, i32 19, i32 1
  %33 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %stopped.i, align 4, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool3.not.i = icmp eq i8 %34, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i.if.else_crit_edge

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true.i.uart_tx_stopped.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_tx_stopped.exit

uart_tx_stopped.exit:                             ; preds = %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, %land.lhs.true.uart_tx_stopped.exit_crit_edge
  %hw_stopped.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 35
  %35 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hw_stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool4.not.i.not = icmp eq i32 %36, 0
  br i1 %tobool4.not.i.not, label %if.then37, label %uart_tx_stopped.exit.if.else_crit_edge

uart_tx_stopped.exit.if.else_crit_edge:           ; preds = %uart_tx_stopped.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then37:                                        ; preds = %uart_tx_stopped.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @imx_uart_dma_tx(ptr noundef %data)
  br label %if.end45

if.else:                                          ; preds = %uart_tx_stopped.exit.if.else_crit_edge, %land.lhs.true.i.if.else_crit_edge, %if.end29.if.else_crit_edge
  %rs485 = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 56
  %37 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rs485, align 8
  %and40 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.else.if.end45_crit_edge, label %if.then42

if.else.if.end45_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then42:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %ucr4.i = getelementptr inbounds %struct.imx_port, ptr %data, i32 0, i32 11
  %39 = ptrtoint ptr %ucr4.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ucr4.i, align 4
  %or = or i32 %40, 8
  store i32 %or, ptr %ucr4.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %41 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  %42 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %membase.i, align 8
  %add.ptr.i79 = getelementptr i8, ptr %43, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79, i32 %41) #10, !srcloc !186
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.else.if.end45_crit_edge, %if.then37
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %data, i32 noundef %call4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctrl_gpio_enable_ms(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx_uart_dma_init(ptr nocapture noundef %sport) unnamed_addr #2 align 64 {
entry:
  %slave_config = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %slave_config) #10
  %0 = call ptr @memset(ptr %slave_config, i32 0, i32 48)
  %dev1 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 45
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1, align 8
  %call.i = tail call ptr @dma_request_chan(ptr noundef %2, ptr noundef nonnull @.str.56) #10
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i = select i1 %cmp.i.i, ptr null, ptr %call.i
  %dma_chan_rx = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 14
  %3 = ptrtoint ptr %dma_chan_rx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %spec.select.i, ptr %dma_chan_rx, align 8
  %tobool.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool.not, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_uart_dma_init.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_uart_dma_init, %if.then7)) #10
          to label %err [label %if.then7], !srcloc !196

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_uart_dma_init.__UNIQUE_ID_ddebug240, ptr noundef %2, ptr noundef nonnull @.str.58) #10
  br label %err

if.end8:                                          ; preds = %entry
  %4 = ptrtoint ptr %slave_config to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %slave_config, align 4
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 43
  %5 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mapbase, align 8
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config, i32 0, i32 1
  %7 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %src_addr, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config, i32 0, i32 3
  %8 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %src_addr_width, align 4
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config, i32 0, i32 5
  %9 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8, ptr %src_maxburst, align 4
  %10 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spec.select.i, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end8.do.end16_crit_edge, label %dmaengine_slave_config.exit

if.end8.do.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16

dmaengine_slave_config.exit:                      ; preds = %if.end8
  %call.i71 = call i32 %13(ptr noundef nonnull %spec.select.i, ptr noundef nonnull %slave_config) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %tobool12.not = icmp eq i32 %call.i71, 0
  br i1 %tobool12.not, label %if.end17, label %dmaengine_slave_config.exit.do.end16_crit_edge

dmaengine_slave_config.exit.do.end16_crit_edge:   ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16

do.end16:                                         ; preds = %dmaengine_slave_config.exit.do.end16_crit_edge, %if.end8.do.end16_crit_edge
  %retval.0.i7286 = phi i32 [ %call.i71, %dmaengine_slave_config.exit.do.end16_crit_edge ], [ -38, %if.end8.do.end16_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.59) #13
  br label %err

if.end17:                                         ; preds = %dmaengine_slave_config.exit
  %rx_period_length = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 21
  %14 = ptrtoint ptr %rx_period_length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_period_length, align 8
  %rx_periods = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 22
  %16 = ptrtoint ptr %rx_periods to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_periods, align 4
  %mul = mul i32 %17, %15
  %rx_buf_size = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 20
  %18 = ptrtoint ptr %rx_buf_size to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul, ptr %rx_buf_size, align 4
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #15
  %rx_buf = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 18
  %19 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call9.i.i, ptr %rx_buf, align 4
  %tobool21.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool21.not, label %if.end17.err_crit_edge, label %if.end23

if.end17.err_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end23:                                         ; preds = %if.end17
  %rx_ring = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 19
  %20 = ptrtoint ptr %rx_ring to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call9.i.i, ptr %rx_ring, align 8
  %call.i74 = call ptr @dma_request_chan(ptr noundef %2, ptr noundef nonnull @.str.60) #10
  %cmp.i.i75 = icmp ugt ptr %call.i74, inttoptr (i32 -4096 to ptr)
  %spec.select.i76 = select i1 %cmp.i.i75, ptr null, ptr %call.i74
  %dma_chan_tx = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 15
  %21 = ptrtoint ptr %dma_chan_tx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %spec.select.i76, ptr %dma_chan_tx, align 4
  %tobool27.not = icmp eq ptr %spec.select.i76, null
  br i1 %tobool27.not, label %do.end31, label %if.end32

do.end31:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.62) #13
  br label %err

if.end32:                                         ; preds = %if.end23
  %22 = ptrtoint ptr %slave_config to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %slave_config, align 4
  %23 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mapbase, align 8
  %add36 = add i32 %24, 64
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config, i32 0, i32 2
  %25 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add36, ptr %dst_addr, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config, i32 0, i32 4
  %26 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %dst_addr_width, align 4
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config, i32 0, i32 6
  %27 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 8, ptr %dst_maxburst, align 4
  %28 = ptrtoint ptr %spec.select.i76 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %spec.select.i76, align 4
  %device_config.i77 = getelementptr inbounds %struct.dma_device, ptr %29, i32 0, i32 44
  %30 = ptrtoint ptr %device_config.i77 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device_config.i77, align 4
  %tobool.not.i78 = icmp eq ptr %31, null
  br i1 %tobool.not.i78, label %if.end32.do.end43_crit_edge, label %dmaengine_slave_config.exit82

if.end32.do.end43_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end43

dmaengine_slave_config.exit82:                    ; preds = %if.end32
  %call.i79 = call i32 %31(ptr noundef nonnull %spec.select.i76, ptr noundef nonnull %slave_config) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool39.not = icmp eq i32 %call.i79, 0
  br i1 %tobool39.not, label %dmaengine_slave_config.exit82.cleanup_crit_edge, label %dmaengine_slave_config.exit82.do.end43_crit_edge

dmaengine_slave_config.exit82.do.end43_crit_edge: ; preds = %dmaengine_slave_config.exit82
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end43

dmaengine_slave_config.exit82.cleanup_crit_edge:  ; preds = %dmaengine_slave_config.exit82
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end43:                                         ; preds = %dmaengine_slave_config.exit82.do.end43_crit_edge, %if.end32.do.end43_crit_edge
  %retval.0.i8193 = phi i32 [ %call.i79, %dmaengine_slave_config.exit82.do.end43_crit_edge ], [ -38, %if.end32.do.end43_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.65) #13
  br label %err

err:                                              ; preds = %do.end43, %do.end31, %if.end17.err_crit_edge, %do.end16, %if.then7, %do.body
  %ret.0 = phi i32 [ %retval.0.i7286, %do.end16 ], [ %retval.0.i8193, %do.end43 ], [ -22, %do.end31 ], [ -22, %if.then7 ], [ -12, %if.end17.err_crit_edge ], [ -22, %do.body ]
  call fastcc void @imx_uart_dma_exit(ptr noundef %sport)
  br label %cleanup

cleanup:                                          ; preds = %err, %dmaengine_slave_config.exit82.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %dmaengine_slave_config.exit82.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %slave_config) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @imx_uart_start_rx_dma(ptr noundef %sport) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_sgl = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 16
  %dma_chan_rx = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 14
  %0 = ptrtoint ptr %dma_chan_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_chan_rx, align 8
  %dev1 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 45
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %head = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 19, i32 1
  %4 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %head, align 4
  %tail = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 19, i32 2
  %5 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %tail, align 8
  %rx_buf = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 18
  %6 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_buf, align 4
  %rx_buf_size = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 20
  %8 = ptrtoint ptr %rx_buf_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_buf_size, align 4
  tail call void @sg_init_one(ptr noundef %rx_sgl, ptr noundef %7, i32 noundef %9) #10
  %call = tail call i32 @dma_map_sg_attrs(ptr noundef %3, ptr noundef %rx_sgl, i32 noundef 1, i32 noundef 2, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.68) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dma_address = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 16, i32 3
  %10 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_address, align 4
  %dma_length = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 16, i32 4
  %12 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_length, align 4
  %rx_periods = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 22
  %14 = ptrtoint ptr %rx_periods to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_periods, align 4
  %div = udiv i32 %13, %15
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.if.then5_crit_edge, label %lor.lhs.false.i

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

lor.lhs.false.i:                                  ; preds = %if.end
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %tobool1.not.i = icmp eq ptr %17, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.then5_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.if.then5_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_dma_cyclic.i = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 40
  %18 = ptrtoint ptr %device_prep_dma_cyclic.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device_prep_dma_cyclic.i, align 4
  %tobool4.not.i = icmp eq ptr %19, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.if.then5_crit_edge, label %dmaengine_prep_dma_cyclic.exit

lor.lhs.false2.i.if.then5_crit_edge:              ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

dmaengine_prep_dma_cyclic.exit:                   ; preds = %lor.lhs.false2.i
  %call.i = tail call ptr %19(ptr noundef nonnull %1, i32 noundef %11, i32 noundef %13, i32 noundef %div, i32 noundef 2, i32 noundef 1) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %dmaengine_prep_dma_cyclic.exit.if.then5_crit_edge, label %if.end9

dmaengine_prep_dma_cyclic.exit.if.then5_crit_edge: ; preds = %dmaengine_prep_dma_cyclic.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

if.then5:                                         ; preds = %dmaengine_prep_dma_cyclic.exit.if.then5_crit_edge, %lor.lhs.false2.i.if.then5_crit_edge, %lor.lhs.false.i.if.then5_crit_edge, %if.end.if.then5_crit_edge
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %rx_sgl, i32 noundef 1, i32 noundef 2, i32 noundef 0) #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.71) #13
  br label %cleanup

if.end9:                                          ; preds = %dmaengine_prep_dma_cyclic.exit
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 6
  %20 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @imx_uart_dma_rx_callback, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 8
  %21 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %sport, ptr %callback_param, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_uart_start_rx_dma.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_uart_start_rx_dma, %if.then15)) #10
          to label %do.end18 [label %if.then15], !srcloc !196

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_uart_start_rx_dma.__UNIQUE_ID_ddebug239, ptr noundef %3, ptr noundef nonnull @.str.73) #10
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %if.end9
  %dma_is_rxing = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 13
  %22 = ptrtoint ptr %dma_is_rxing to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %dma_is_rxing, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %dma_is_rxing, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %23 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx_submit.i, align 4
  %call.i2 = tail call i32 %24(ptr noundef nonnull %call.i) #10
  %rx_cookie = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 23
  %25 = ptrtoint ptr %rx_cookie to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call.i2, ptr %rx_cookie, align 8
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %27, i32 0, i32 50
  %28 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %29(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %if.then5, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @imx_uart_dma_exit(ptr nocapture noundef %sport) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_chan_rx = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 14
  %0 = ptrtoint ptr %dma_chan_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_chan_rx, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 47
  %4 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.then.dmaengine_terminate_sync.exit_crit_edge, label %dmaengine_terminate_async.exit.i

if.then.dmaengine_terminate_sync.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_async.exit.i:                 ; preds = %if.then
  %call.i.i = tail call i32 %5(ptr noundef nonnull %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge

dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_terminate_sync.exit

if.end.i:                                         ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.67, i32 noundef 1169) #10
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 48
  %8 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %9, null
  br i1 %tobool.not.i1.i, label %if.end.i.dmaengine_terminate_sync.exit_crit_edge, label %if.then.i2.i

if.end.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_terminate_sync.exit

if.then.i2.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %9(ptr noundef nonnull %1) #10
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_sync.exit:                    ; preds = %if.then.i2.i, %if.end.i.dmaengine_terminate_sync.exit_crit_edge, %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge, %if.then.dmaengine_terminate_sync.exit_crit_edge
  %10 = ptrtoint ptr %dma_chan_rx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_chan_rx, align 8
  tail call void @dma_release_channel(ptr noundef %11) #10
  %12 = ptrtoint ptr %dma_chan_rx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %dma_chan_rx, align 8
  %rx_cookie = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 23
  %13 = ptrtoint ptr %rx_cookie to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -22, ptr %rx_cookie, align 8
  %rx_buf = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 18
  %14 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_buf, align 4
  tail call void @kfree(ptr noundef %15) #10
  %16 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %rx_buf, align 4
  br label %if.end

if.end:                                           ; preds = %dmaengine_terminate_sync.exit, %entry.if.end_crit_edge
  %dma_chan_tx = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 15
  %17 = ptrtoint ptr %dma_chan_tx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dma_chan_tx, align 4
  %tobool5.not = icmp eq ptr %18, null
  br i1 %tobool5.not, label %if.end.if.end11_crit_edge, label %if.then6

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then6:                                         ; preds = %if.end
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %device_terminate_all.i.i23 = getelementptr inbounds %struct.dma_device, ptr %20, i32 0, i32 47
  %21 = ptrtoint ptr %device_terminate_all.i.i23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device_terminate_all.i.i23, align 4
  %tobool.not.i.i24 = icmp eq ptr %22, null
  br i1 %tobool.not.i.i24, label %if.then6.dmaengine_terminate_sync.exit32_crit_edge, label %dmaengine_terminate_async.exit.i27

if.then6.dmaengine_terminate_sync.exit32_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_terminate_sync.exit32

dmaengine_terminate_async.exit.i27:               ; preds = %if.then6
  %call.i.i25 = tail call i32 %22(ptr noundef nonnull %18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i25)
  %tobool.not.i26 = icmp eq i32 %call.i.i25, 0
  br i1 %tobool.not.i26, label %if.end.i30, label %dmaengine_terminate_async.exit.i27.dmaengine_terminate_sync.exit32_crit_edge

dmaengine_terminate_async.exit.i27.dmaengine_terminate_sync.exit32_crit_edge: ; preds = %dmaengine_terminate_async.exit.i27
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_terminate_sync.exit32

if.end.i30:                                       ; preds = %dmaengine_terminate_async.exit.i27
  tail call void @__might_sleep(ptr noundef nonnull @.str.67, i32 noundef 1169) #10
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %18, align 4
  %device_synchronize.i.i28 = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 48
  %25 = ptrtoint ptr %device_synchronize.i.i28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device_synchronize.i.i28, align 4
  %tobool.not.i1.i29 = icmp eq ptr %26, null
  br i1 %tobool.not.i1.i29, label %if.end.i30.dmaengine_terminate_sync.exit32_crit_edge, label %if.then.i2.i31

if.end.i30.dmaengine_terminate_sync.exit32_crit_edge: ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_terminate_sync.exit32

if.then.i2.i31:                                   ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %26(ptr noundef nonnull %18) #10
  br label %dmaengine_terminate_sync.exit32

dmaengine_terminate_sync.exit32:                  ; preds = %if.then.i2.i31, %if.end.i30.dmaengine_terminate_sync.exit32_crit_edge, %dmaengine_terminate_async.exit.i27.dmaengine_terminate_sync.exit32_crit_edge, %if.then6.dmaengine_terminate_sync.exit32_crit_edge
  %27 = ptrtoint ptr %dma_chan_tx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dma_chan_tx, align 4
  tail call void @dma_release_channel(ptr noundef %28) #10
  %29 = ptrtoint ptr %dma_chan_tx to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %dma_chan_tx, align 4
  br label %if.end11

if.end11:                                         ; preds = %dmaengine_terminate_sync.exit32, %if.end.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_uart_dma_rx_callback(ptr noundef %data) #2 align 64 {
entry:
  %state3 = alloca %struct.dma_tx_state, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_chan_rx = getelementptr inbounds %struct.imx_port, ptr %data, i32 0, i32 14
  %0 = ptrtoint ptr %dma_chan_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_chan_rx, align 8
  %rx_sgl = getelementptr inbounds %struct.imx_port, ptr %data, i32 0, i32 16
  %state = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 30
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state3) #10
  %4 = getelementptr inbounds %struct.dma_tx_state, ptr %state3, i32 0, i32 2
  %rx_cookie = getelementptr inbounds %struct.imx_port, ptr %data, i32 0, i32 23
  %5 = call ptr @memset(ptr %state3, i32 255, i32 16)
  %6 = ptrtoint ptr %rx_cookie to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_cookie, align 8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 49
  %10 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device_tx_status.i, align 4
  %call.i = call i32 %11(ptr noundef %1, i32 noundef %7, ptr noundef nonnull %state3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state, align 4
  %membase11.i.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 2
  %14 = ptrtoint ptr %membase11.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase11.i.i, align 8
  %add.ptr12.i.i = getelementptr i8, ptr %15, i32 148
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i.i) #10, !srcloc !179
  %17 = call i32 @llvm.bswap.i32(i32 %16) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %18 = ptrtoint ptr %membase11.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase11.i.i, align 8
  %add.ptr12.i51.i = getelementptr i8, ptr %19, i32 152
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i51.i) #10, !srcloc !179
  %21 = call i32 @llvm.bswap.i32(i32 %20) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %and.i = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %brk.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 31, i32 9
  %22 = ptrtoint ptr %brk.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %brk.i, align 4
  %inc.i = add i32 %23, 1
  store i32 %inc.i, ptr %brk.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  call void @arm_heavy_mb() #10
  %24 = ptrtoint ptr %membase11.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase11.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 152
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 67108864) #10, !srcloc !186
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %state, align 4
  %handle_break.i.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 17
  %28 = ptrtoint ptr %handle_break.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %handle_break.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void %29(ptr noundef %data) #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %has_sysrq.i.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 48
  %30 = ptrtoint ptr %has_sysrq.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %has_sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool3.not.i.i = icmp eq i8 %31, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end15.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.if.end15.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %cons.i.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 32
  %32 = ptrtoint ptr %cons.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cons.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %33, null
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.if.end15.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.if.end15.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %index.i.i = getelementptr inbounds %struct.console, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %index.i.i, align 2
  %conv7.i.i = sext i16 %35 to i32
  %line.i.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 41
  %36 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %line.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %conv7.i.i)
  %cmp.i.i = icmp eq i32 %37, %conv7.i.i
  br i1 %cmp.i.i, label %if.then9.i.i, label %land.lhs.true5.i.i.if.end15.i.i_crit_edge

land.lhs.true5.i.i.if.end15.i.i_crit_edge:        ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i.i

if.then9.i.i:                                     ; preds = %land.lhs.true5.i.i
  %sysrq.i.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 46
  %38 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool10.not.i.i = icmp eq i32 %39, 0
  br i1 %tobool10.not.i.i, label %if.then11.i.i, label %if.end13.i.i

if.then11.i.i:                                    ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %40, 500
  %41 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add.i.i, ptr %sysrq.i.i, align 4
  br label %uart_handle_break.exit.i

if.end13.i.i:                                     ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.end13.i.i, %land.lhs.true5.i.i.if.end15.i.i_crit_edge, %land.lhs.true.i.i.if.end15.i.i_crit_edge, %if.end.i.i.if.end15.i.i_crit_edge
  %flags.i.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 33
  %43 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool16.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end15.i.i.uart_handle_break.exit.i_crit_edge, label %if.then17.i.i

if.end15.i.i.uart_handle_break.exit.i_crit_edge:  ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_handle_break.exit.i

if.then17.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %tty.i.i = getelementptr inbounds %struct.tty_port, ptr %27, i32 0, i32 1
  %45 = ptrtoint ptr %tty.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tty.i.i, align 4
  call void @do_SAK(ptr noundef %46) #10
  br label %uart_handle_break.exit.i

uart_handle_break.exit.i:                         ; preds = %if.then17.i.i, %if.end15.i.i.uart_handle_break.exit.i_crit_edge, %if.then11.i.i
  %tail.i.i = getelementptr inbounds %struct.tty_bufhead, ptr %13, i32 0, i32 8
  %47 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tail.i.i, align 4
  %flags.i52.i = getelementptr inbounds %struct.tty_buffer, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %flags.i52.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags.i52.i, align 4
  %and.i53.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i53.i)
  %tobool.not.i54.i = icmp eq i32 %and.i53.i, 0
  br i1 %tobool.not.i54.i, label %land.lhs.true.i55.i, label %uart_handle_break.exit.i.tty_insert_flip_char.exit.i_crit_edge

uart_handle_break.exit.i.tty_insert_flip_char.exit.i_crit_edge: ; preds = %uart_handle_break.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tty_insert_flip_char.exit.i

land.lhs.true.i55.i:                              ; preds = %uart_handle_break.exit.i
  %used.i.i = getelementptr inbounds %struct.tty_buffer, ptr %48, i32 0, i32 1
  %51 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %used.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.tty_buffer, ptr %48, i32 0, i32 2
  %53 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp3.i.i = icmp slt i32 %52, %54
  br i1 %cmp3.i.i, label %tty_insert_flip_char.exit.thread.i, label %land.lhs.true.i55.i.tty_insert_flip_char.exit.i_crit_edge

land.lhs.true.i55.i.tty_insert_flip_char.exit.i_crit_edge: ; preds = %land.lhs.true.i55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tty_insert_flip_char.exit.i

tty_insert_flip_char.exit.thread.i:               ; preds = %land.lhs.true.i55.i
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %48, i32 0, i32 6
  %add.ptr.i.i.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %52
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %54
  %55 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %add.ptr.i.i.i, align 1
  %56 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %used.i.i, align 4
  %inc.i.i = add i32 %57, 1
  store i32 %inc.i.i, ptr %used.i.i, align 4
  %add.ptr.i26.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %57
  %58 = ptrtoint ptr %add.ptr.i26.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %add.ptr.i26.i.i, align 1
  br label %if.end.i

tty_insert_flip_char.exit.i:                      ; preds = %land.lhs.true.i55.i.tty_insert_flip_char.exit.i_crit_edge, %uart_handle_break.exit.i.tty_insert_flip_char.exit.i_crit_edge
  %call13.i.i = call i32 @__tty_insert_flip_char(ptr noundef %13, i8 noundef zeroext 0, i8 noundef zeroext 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %cmp.i = icmp eq i32 %call13.i.i, 0
  br i1 %cmp.i, label %if.then8.i, label %tty_insert_flip_char.exit.i.if.end.i_crit_edge

tty_insert_flip_char.exit.i.if.end.i_crit_edge:   ; preds = %tty_insert_flip_char.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then8.i:                                       ; preds = %tty_insert_flip_char.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %buf_overrun.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 31, i32 10
  %59 = ptrtoint ptr %buf_overrun.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %buf_overrun.i, align 8
  %inc11.i = add i32 %60, 1
  store i32 %inc11.i, ptr %buf_overrun.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then8.i, %tty_insert_flip_char.exit.i.if.end.i_crit_edge, %tty_insert_flip_char.exit.thread.i
  call void @tty_flip_buffer_push(ptr noundef %13) #10
  br label %if.end27.i

if.else.i:                                        ; preds = %if.then
  %and12.i = and i32 %17, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.else18.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %frame.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 31, i32 6
  %61 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %frame.i, align 8
  %inc17.i = add i32 %62, 1
  store i32 %inc17.i, ptr %frame.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  call void @arm_heavy_mb() #10
  %63 = ptrtoint ptr %membase11.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %membase11.i.i, align 8
  %add.ptr.i60.i = getelementptr i8, ptr %64, i32 148
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60.i, i32 262144) #10, !srcloc !186
  br label %if.end27.i

if.else18.i:                                      ; preds = %if.else.i
  %and19.i = and i32 %17, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.else18.i.if.end27.i_crit_edge, label %if.then21.i

if.else18.i.if.end27.i_crit_edge:                 ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i

if.then21.i:                                      ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #12
  %parity.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 31, i32 8
  %65 = ptrtoint ptr %parity.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %parity.i, align 8
  %inc24.i = add i32 %66, 1
  store i32 %inc24.i, ptr %parity.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  call void @arm_heavy_mb() #10
  %67 = ptrtoint ptr %membase11.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %membase11.i.i, align 8
  %add.ptr.i62.i = getelementptr i8, ptr %68, i32 148
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62.i, i32 8388608) #10, !srcloc !186
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then21.i, %if.else18.i.if.end27.i_crit_edge, %if.then14.i, %if.end.i
  %and28.i = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.end27.i.cleanup_crit_edge, label %if.then30.i

if.end27.i.cleanup_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then30.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  %overrun.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 31, i32 7
  %69 = ptrtoint ptr %overrun.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %overrun.i, align 4
  %inc33.i = add i32 %70, 1
  store i32 %inc33.i, ptr %overrun.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  call void @arm_heavy_mb() #10
  %71 = ptrtoint ptr %membase11.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %membase11.i.i, align 8
  %add.ptr.i64.i = getelementptr i8, ptr %72, i32 152
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64.i, i32 33554432) #10, !srcloc !186
  br label %cleanup

if.end:                                           ; preds = %entry
  %ignore_status_mask = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 29
  %73 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ignore_status_mask, align 8
  %and = and i32 %74, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6:                                         ; preds = %if.end
  %dma_length = getelementptr inbounds %struct.imx_port, ptr %data, i32 0, i32 16, i32 4
  %75 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %dma_length, align 4
  %77 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %4, align 4
  %sub = sub i32 %76, %78
  %head = getelementptr inbounds %struct.imx_port, ptr %data, i32 0, i32 19, i32 1
  %79 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %sub, ptr %head, align 4
  %rx_periods = getelementptr inbounds %struct.imx_port, ptr %data, i32 0, i32 22
  %80 = ptrtoint ptr %rx_periods to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rx_periods, align 4
  %div = udiv i32 %76, %81
  %sub9 = add i32 %sub, -1
  %82 = urem i32 %sub9, %div
  %mul = sub i32 %sub9, %82
  %tail = getelementptr inbounds %struct.imx_port, ptr %data, i32 0, i32 19, i32 2
  %83 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %mul, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %78)
  %cmp13.not = icmp uge i32 %76, %78
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %mul)
  %cmp16 = icmp sgt i32 %sub, %mul
  %or.cond = select i1 %cmp13.not, i1 %cmp16, i1 false
  br i1 %or.cond, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then6
  %sub20 = sub i32 %sub, %mul
  %dev = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 45
  %84 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev, align 8
  call void @dma_sync_sg_for_cpu(ptr noundef %85, ptr noundef %rx_sgl, i32 noundef 1, i32 noundef 2) #10
  %rx_buf = getelementptr inbounds %struct.imx_port, ptr %data, i32 0, i32 18
  %86 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rx_buf, align 4
  %88 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tail, align 4
  %add.ptr = getelementptr i8, ptr %87, i32 %89
  %call.i156 = call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %3, ptr noundef %add.ptr, i8 noundef zeroext 0, i32 noundef %sub20) #10
  %90 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev, align 8
  call void @dma_sync_sg_for_device(ptr noundef %91, ptr noundef %rx_sgl, i32 noundef 1, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i156, i32 %sub20)
  %cmp26.not = icmp eq i32 %call.i156, %sub20
  br i1 %cmp26.not, label %if.then17.if.end90_crit_edge, label %if.then27

if.then17.if.end90_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then27:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %buf_overrun = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 31, i32 10
  %92 = ptrtoint ptr %buf_overrun to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %buf_overrun, align 8
  %inc = add i32 %93, 1
  store i32 %inc, ptr %buf_overrun, align 8
  br label %if.end90

if.else:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %78)
  %cmp34 = icmp ult i32 %76, %78
  br i1 %cmp34, label %do.end, label %if.else.if.end49_crit_edge, !prof !192

if.else.if.end49_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1180, i32 noundef 9, ptr noundef null) #10
  br label %if.end49

if.end49:                                         ; preds = %do.end, %if.else.if.end49_crit_edge
  %94 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %head, align 4
  %96 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %97)
  %cmp59.not = icmp sgt i32 %95, %97
  br i1 %cmp59.not, label %if.end49.cleanup_crit_edge, label %do.end75, !prof !190

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end75:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1181, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end90:                                         ; preds = %if.then27, %if.then17.if.end90_crit_edge
  %rx = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 31, i32 4
  %98 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %rx, align 8
  %add = add i32 %99, %call.i156
  store i32 %add, ptr %rx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %tobool91.not = icmp eq i32 %call.i156, 0
  br i1 %tobool91.not, label %if.end90.cleanup_crit_edge, label %if.then92

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then92:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  call void @tty_flip_buffer_push(ptr noundef %3) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_uart_dma_rx_callback.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_uart_dma_rx_callback, %if.then103)) #10
          to label %cleanup [label %if.then103], !srcloc !196

if.then103:                                       ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #12
  %100 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_uart_dma_rx_callback.__UNIQUE_ID_ddebug238, ptr noundef %101, ptr noundef nonnull @.str.75, i32 noundef %call.i156) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then103, %if.then92, %if.end90.cleanup_crit_edge, %do.end75, %if.end49.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then30.i, %if.end27.i.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_cpu(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_device(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_SAK(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctrl_gpio_disable_ms(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_divisor(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rational_best_approximation(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @imx_uart_mctrl_check(ptr noundef %sport) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase11.i.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %0 = ptrtoint ptr %membase11.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase11.i.i, align 8
  %add.ptr12.i.i = getelementptr i8, ptr %1, i32 148
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %3 = ptrtoint ptr %membase11.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase11.i.i, align 8
  %add.ptr12.i24.i = getelementptr i8, ptr %4, i32 152
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i24.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %6 = and i32 %2, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  %spec.select.i = select i1 %tobool.not.i, i32 256, i32 288
  %7 = lshr i32 %5, 23
  %8 = and i32 %7, 64
  %9 = or i32 %8, %spec.select.i
  %10 = xor i32 %9, 64
  %dte_mode.i = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 3
  %11 = ptrtoint ptr %dte_mode.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %dte_mode.i, align 4
  %12 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool7.not.i = icmp eq i8 %12, 0
  br i1 %tobool7.not.i, label %entry.imx_uart_get_hwmctrl.exit_crit_edge, label %if.then8.i

entry.imx_uart_get_hwmctrl.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %imx_uart_get_hwmctrl.exit

if.then8.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %membase11.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase11.i.i, align 8
  %add.ptr12.i26.i = getelementptr i8, ptr %14, i32 152
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i26.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %16 = lshr i32 %15, 10
  %17 = and i32 %16, 128
  %18 = or i32 %17, %10
  %19 = xor i32 %18, 128
  br label %imx_uart_get_hwmctrl.exit

imx_uart_get_hwmctrl.exit:                        ; preds = %if.then8.i, %entry.imx_uart_get_hwmctrl.exit_crit_edge
  %tmp.2.i = phi i32 [ %10, %entry.imx_uart_get_hwmctrl.exit_crit_edge ], [ %19, %if.then8.i ]
  %old_status = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 2
  %20 = ptrtoint ptr %old_status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %old_status, align 8
  %xor = xor i32 %21, %tmp.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor)
  %cmp = icmp eq i32 %xor, 0
  br i1 %cmp, label %imx_uart_get_hwmctrl.exit.cleanup_crit_edge, label %if.end

imx_uart_get_hwmctrl.exit.cleanup_crit_edge:      ; preds = %imx_uart_get_hwmctrl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %imx_uart_get_hwmctrl.exit
  %22 = ptrtoint ptr %old_status to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %tmp.2.i, ptr %old_status, align 8
  %and = and i32 %xor, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and2 = and i32 %tmp.2.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %rng = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 31, i32 2
  %23 = ptrtoint ptr %rng to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rng, align 8
  %inc = add i32 %24, 1
  store i32 %inc, ptr %rng, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %and6 = and i32 %xor, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end5.if.end12_crit_edge, label %if.then8

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %dsr = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 31, i32 1
  %25 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dsr, align 4
  %inc11 = add i32 %26, 1
  store i32 %inc11, ptr %dsr, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end5.if.end12_crit_edge
  %and13 = and i32 %xor, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end18_crit_edge, label %if.then15

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %and17 = and i32 %tmp.2.i, 64
  tail call void @uart_handle_dcd_change(ptr noundef %sport, i32 noundef %and17) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end12.if.end18_crit_edge
  %and19 = and i32 %xor, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end24_crit_edge, label %if.then21

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %and23 = and i32 %tmp.2.i, 32
  tail call void @uart_handle_cts_change(ptr noundef %sport, i32 noundef %and23) #10
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end18.if.end24_crit_edge
  %state = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 30
  %27 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %state, align 4
  %delta_msr_wait = getelementptr inbounds %struct.tty_port, ptr %28, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %delta_msr_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %imx_uart_get_hwmctrl.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_handle_dcd_change(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_handle_cts_change(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__imx_uart_rxint(ptr noundef %dev_id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %membase11.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 2
  %2 = ptrtoint ptr %membase11.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase11.i, align 8
  %add.ptr12.i34 = getelementptr i8, ptr %3, i32 152
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i34) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not35 = icmp eq i32 %5, 0
  br i1 %tobool.not35, label %entry.cleanup101_crit_edge, label %while.body.lr.ph

entry.cleanup101_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup101

while.body.lr.ph:                                 ; preds = %entry
  %rx4 = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 4
  %handle_break.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 17
  %has_sysrq.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 48
  %cons.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 32
  %line.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 41
  %sysrq.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 46
  %flags.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 33
  %brk = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 9
  %parity = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 8
  %frame = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 6
  %overrun = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 7
  %ignore_status_mask = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 29
  %read_status_mask = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 28
  %tail.i = getelementptr inbounds %struct.tty_bufhead, ptr %1, i32 0, i32 8
  %buf_overrun = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 10
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %ignored.036 = phi i32 [ 0, %while.body.lr.ph ], [ %ignored.1, %cleanup.while.body_crit_edge ]
  %6 = ptrtoint ptr %rx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx4, align 8
  %inc = add i32 %7, 1
  store i32 %inc, ptr %rx4, align 8
  %8 = ptrtoint ptr %membase11.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase11.i, align 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #10, !srcloc !179
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %12 = ptrtoint ptr %membase11.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase11.i, align 8
  %add.ptr12.i4 = getelementptr i8, ptr %13, i32 152
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i4) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %15 = and i32 %14, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool8.not = icmp eq i32 %15, 0
  br i1 %tobool8.not, label %while.body.if.end13_crit_edge, label %if.then

while.body.if.end13_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then:                                          ; preds = %while.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %16 = ptrtoint ptr %membase11.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase11.i, align 8
  %add.ptr.i = getelementptr i8, ptr %17, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 67108864) #10, !srcloc !186
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state, align 4
  %20 = ptrtoint ptr %handle_break.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %handle_break.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %21(ptr noundef %dev_id) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %22 = ptrtoint ptr %has_sysrq.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %has_sysrq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool3.not.i = icmp eq i8 %23, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end15.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %24 = ptrtoint ptr %cons.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cons.i, align 4
  %tobool4.not.i = icmp eq ptr %25, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end15.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.if.end15.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %index.i = getelementptr inbounds %struct.console, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %index.i, align 2
  %conv7.i = sext i16 %27 to i32
  %28 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %line.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv7.i)
  %cmp.i = icmp eq i32 %29, %conv7.i
  br i1 %cmp.i, label %if.then9.i, label %land.lhs.true5.i.if.end15.i_crit_edge

land.lhs.true5.i.if.end15.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then9.i:                                       ; preds = %land.lhs.true5.i
  %30 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sysrq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool10.not.i = icmp eq i32 %31, 0
  br i1 %tobool10.not.i, label %uart_handle_break.exit, label %if.end13.i

if.end13.i:                                       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %sysrq.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end13.i, %land.lhs.true5.i.if.end15.i_crit_edge, %land.lhs.true.i.if.end15.i_crit_edge, %if.end.i.if.end15.i_crit_edge
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool16.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool16.not.i, label %if.end15.i.if.end13_crit_edge, label %if.then17.i

if.end15.i.if.end13_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  %tty.i = getelementptr inbounds %struct.tty_port, ptr %19, i32 0, i32 1
  %35 = ptrtoint ptr %tty.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tty.i, align 4
  tail call void @do_SAK(ptr noundef %36) #10
  br label %if.end13

uart_handle_break.exit:                           ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %37, 500
  %38 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add.i, ptr %sysrq.i, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.then17.i, %if.end15.i.if.end13_crit_edge, %while.body.if.end13_crit_edge
  %conv15 = and i32 %11, 255
  %39 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sysrq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i6 = icmp eq i32 %40, 0
  br i1 %tobool.not.i6, label %if.end13.if.end19_crit_edge, label %if.end.i7

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.end.i7:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv15)
  %tobool1.not.i = icmp eq i32 %conv15, 0
  br i1 %tobool1.not.i, label %if.end.i7.uart_handle_sysrq_char.exit.thread27_crit_edge, label %land.lhs.true.i9

if.end.i7.uart_handle_sysrq_char.exit.thread27_crit_edge: ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_handle_sysrq_char.exit.thread27

land.lhs.true.i9:                                 ; preds = %if.end.i7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %41, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i8 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i8, label %if.then3.i, label %land.lhs.true.i9.uart_handle_sysrq_char.exit.thread27_crit_edge

land.lhs.true.i9.uart_handle_sysrq_char.exit.thread27_crit_edge: ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_handle_sysrq_char.exit.thread27

if.then3.i:                                       ; preds = %land.lhs.true.i9
  %call.i = tail call i32 @sysrq_mask() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i10 = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i10, label %if.end7.i, label %uart_handle_sysrq_char.exit

if.end7.i:                                        ; preds = %if.then3.i
  %call8.i = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %dev_id, i32 noundef %conv15) #10
  br i1 %call8.i, label %if.end7.i.cleanup_crit_edge, label %if.end7.i.uart_handle_sysrq_char.exit.thread27_crit_edge

if.end7.i.uart_handle_sysrq_char.exit.thread27_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_handle_sysrq_char.exit.thread27

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

uart_handle_sysrq_char.exit.thread27:             ; preds = %if.end7.i.uart_handle_sysrq_char.exit.thread27_crit_edge, %land.lhs.true.i9.uart_handle_sysrq_char.exit.thread27_crit_edge, %if.end.i7.uart_handle_sysrq_char.exit.thread27_crit_edge
  %42 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %sysrq.i, align 4
  br label %if.end19

uart_handle_sysrq_char.exit:                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @handle_sysrq(i32 noundef %conv15) #10
  %43 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %sysrq.i, align 4
  br label %cleanup

if.end19:                                         ; preds = %uart_handle_sysrq_char.exit.thread27, %if.end13.if.end19_crit_edge
  %and20 = and i32 %11, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end84_crit_edge, label %if.then24, !prof !190

if.end19.if.end84_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.then24:                                        ; preds = %if.end19
  %and25 = and i32 %11, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %brk to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %brk, align 4
  %inc30 = add i32 %45, 1
  store i32 %inc30, ptr %brk, align 4
  br label %if.end46

if.else:                                          ; preds = %if.then24
  %and31 = and i32 %11, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.else37, label %if.then33

if.then33:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %parity, align 8
  %inc36 = add i32 %47, 1
  store i32 %inc36, ptr %parity, align 8
  br label %if.end46

if.else37:                                        ; preds = %if.else
  %and38 = and i32 %11, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.else37.if.end46_crit_edge, label %if.then40

if.else37.if.end46_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then40:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %frame, align 8
  %inc43 = add i32 %49, 1
  store i32 %inc43, ptr %frame, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then40, %if.else37.if.end46_crit_edge, %if.then33, %if.then27
  %and47 = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end46.if.end53_crit_edge, label %if.then49

if.end46.if.end53_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %overrun to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %overrun, align 4
  %inc52 = add i32 %51, 1
  store i32 %inc52, ptr %overrun, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %if.end46.if.end53_crit_edge
  %52 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ignore_status_mask, align 8
  %and55 = and i32 %53, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end62, label %if.then57

if.then57:                                        ; preds = %if.end53
  %inc58 = add i32 %ignored.036, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %inc58)
  %cmp = icmp ugt i32 %inc58, 100
  br i1 %cmp, label %if.then57.cleanup101_crit_edge, label %if.then57.cleanup_crit_edge

if.then57.cleanup_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then57.cleanup101_crit_edge:                   ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup101

if.end62:                                         ; preds = %if.end53
  %54 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %read_status_mask, align 4
  %or = or i32 %55, 255
  %and64 = and i32 %or, %11
  %and65 = and i32 %and64, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.else68, label %if.end62.if.end78_crit_edge

if.end62.if.end78_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.else68:                                        ; preds = %if.end62
  %and69 = and i32 %and64, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.else72, label %if.else68.if.end78_crit_edge

if.else68.if.end78_crit_edge:                     ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.else72:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #12
  %and73 = lshr i32 %and64, 11
  %56 = trunc i32 %and73 to i8
  %57 = and i8 %56, 2
  br label %if.end78

if.end78:                                         ; preds = %if.else72, %if.else68.if.end78_crit_edge, %if.end62.if.end78_crit_edge
  %flg.0 = phi i8 [ 1, %if.end62.if.end78_crit_edge ], [ 3, %if.else68.if.end78_crit_edge ], [ %57, %if.else72 ]
  %and79 = and i32 %and64, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  %spec.select1 = select i1 %tobool80.not, i8 %flg.0, i8 4
  %58 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %sysrq.i, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.end78, %if.end19.if.end84_crit_edge
  %rx.0 = phi i32 [ %and64, %if.end78 ], [ %11, %if.end19.if.end84_crit_edge ]
  %flg.2 = phi i8 [ %spec.select1, %if.end78 ], [ 0, %if.end19.if.end84_crit_edge ]
  %59 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ignore_status_mask, align 8
  %and87 = and i32 %60, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.end90, label %if.end84.cleanup101_crit_edge

if.end84.cleanup101_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup101

if.end90:                                         ; preds = %if.end84
  %conv91 = trunc i32 %rx.0 to i8
  %61 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tail.i, align 4
  %flags.i12 = getelementptr inbounds %struct.tty_buffer, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %flags.i12 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags.i12, align 4
  %and.i13 = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13)
  %tobool.not.i14 = icmp eq i32 %and.i13, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %flg.2)
  %cmp.i15 = icmp eq i8 %flg.2, 0
  %65 = or i1 %cmp.i15, %tobool.not.i14
  br i1 %65, label %land.lhs.true.i16, label %if.end90.tty_insert_flip_char.exit_crit_edge

if.end90.tty_insert_flip_char.exit_crit_edge:     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %tty_insert_flip_char.exit

land.lhs.true.i16:                                ; preds = %if.end90
  %used.i = getelementptr inbounds %struct.tty_buffer, ptr %62, i32 0, i32 1
  %66 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %used.i, align 4
  %size.i = getelementptr inbounds %struct.tty_buffer, ptr %62, i32 0, i32 2
  %68 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp3.i = icmp slt i32 %67, %69
  br i1 %cmp3.i, label %if.then.i17, label %land.lhs.true.i16.tty_insert_flip_char.exit_crit_edge

land.lhs.true.i16.tty_insert_flip_char.exit_crit_edge: ; preds = %land.lhs.true.i16
  call void @__sanitizer_cov_trace_pc() #12
  br label %tty_insert_flip_char.exit

if.then.i17:                                      ; preds = %land.lhs.true.i16
  br i1 %tobool.not.i14, label %if.then8.i, label %if.then.i17.tty_insert_flip_char.exit.thread_crit_edge

if.then.i17.tty_insert_flip_char.exit.thread_crit_edge: ; preds = %if.then.i17
  call void @__sanitizer_cov_trace_pc() #12
  br label %tty_insert_flip_char.exit.thread

if.then8.i:                                       ; preds = %if.then.i17
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %62, i32 0, i32 6
  %add.ptr.i.i.i = getelementptr i8, ptr %data.i.i.i, i32 %67
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %69
  %70 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %flg.2, ptr %add.ptr.i.i, align 1
  br label %tty_insert_flip_char.exit.thread

tty_insert_flip_char.exit.thread:                 ; preds = %if.then8.i, %if.then.i17.tty_insert_flip_char.exit.thread_crit_edge
  %71 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %used.i, align 4
  %inc.i = add i32 %72, 1
  store i32 %inc.i, ptr %used.i, align 4
  %data.i.i = getelementptr inbounds %struct.tty_buffer, ptr %62, i32 0, i32 6
  %add.ptr.i26.i = getelementptr i8, ptr %data.i.i, i32 %72
  %73 = ptrtoint ptr %add.ptr.i26.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv91, ptr %add.ptr.i26.i, align 1
  br label %cleanup

tty_insert_flip_char.exit:                        ; preds = %land.lhs.true.i16.tty_insert_flip_char.exit_crit_edge, %if.end90.tty_insert_flip_char.exit_crit_edge
  %call13.i = tail call i32 @__tty_insert_flip_char(ptr noundef %1, i8 noundef zeroext %conv91, i8 noundef zeroext %flg.2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp94 = icmp eq i32 %call13.i, 0
  br i1 %cmp94, label %if.then96, label %tty_insert_flip_char.exit.cleanup_crit_edge

tty_insert_flip_char.exit.cleanup_crit_edge:      ; preds = %tty_insert_flip_char.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then96:                                        ; preds = %tty_insert_flip_char.exit
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %buf_overrun to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %buf_overrun, align 8
  %inc99 = add i32 %75, 1
  store i32 %inc99, ptr %buf_overrun, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then96, %tty_insert_flip_char.exit.cleanup_crit_edge, %tty_insert_flip_char.exit.thread, %if.then57.cleanup_crit_edge, %uart_handle_sysrq_char.exit, %if.end7.i.cleanup_crit_edge, %uart_handle_break.exit
  %ignored.1 = phi i32 [ %ignored.036, %uart_handle_break.exit ], [ %ignored.036, %uart_handle_sysrq_char.exit ], [ %inc58, %if.then57.cleanup_crit_edge ], [ %ignored.036, %if.then96 ], [ %ignored.036, %tty_insert_flip_char.exit.cleanup_crit_edge ], [ %ignored.036, %tty_insert_flip_char.exit.thread ], [ %ignored.036, %if.end7.i.cleanup_crit_edge ]
  %76 = ptrtoint ptr %membase11.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %membase11.i, align 8
  %add.ptr12.i = getelementptr i8, ptr %77, i32 152
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %79 = and i32 %78, 16777216
  %tobool.not = icmp eq i32 %79, 0
  br i1 %tobool.not, label %cleanup.cleanup101_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.cleanup101_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup101

cleanup101:                                       ; preds = %cleanup.cleanup101_crit_edge, %if.end84.cleanup101_crit_edge, %if.then57.cleanup101_crit_edge, %entry.cleanup101_crit_edge
  tail call void @tty_flip_buffer_push(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @imx_uart_transmit_buffer(ptr noundef %sport) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %xmit1 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2
  %x_char = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 24
  %2 = ptrtoint ptr %x_char to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %x_char, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %3 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %4 = shl nuw i32 %conv, 24
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %5 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #10, !srcloc !186
  %tx = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 31, i32 5
  %7 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %tx, align 4
  %9 = ptrtoint ptr %x_char to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %x_char, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %head = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp = icmp eq i32 %11, %13
  br i1 %cmp, label %if.end.if.then11_crit_edge, label %lor.lhs.false

if.end.if.then11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

lor.lhs.false:                                    ; preds = %if.end
  %tty2.i = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %tty2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tty2.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %lor.lhs.false.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i

lor.lhs.false.uart_tx_stopped.exit_crit_edge:     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_tx_stopped.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false
  %stopped.i = getelementptr inbounds %struct.tty_struct, ptr %15, i32 0, i32 19, i32 1
  %16 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %stopped.i, align 4, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool3.not.i = icmp eq i8 %17, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i.if.then11_crit_edge

land.lhs.true.i.if.then11_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

land.lhs.true.i.uart_tx_stopped.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_tx_stopped.exit

uart_tx_stopped.exit:                             ; preds = %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, %lor.lhs.false.uart_tx_stopped.exit_crit_edge
  %hw_stopped.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 35
  %18 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hw_stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool4.not.i.not = icmp eq i32 %19, 0
  br i1 %tobool4.not.i.not, label %if.end13, label %uart_tx_stopped.exit.if.then11_crit_edge

uart_tx_stopped.exit.if.then11_crit_edge:         ; preds = %uart_tx_stopped.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

if.then11:                                        ; preds = %uart_tx_stopped.exit.if.then11_crit_edge, %land.lhs.true.i.if.then11_crit_edge, %if.end.if.then11_crit_edge
  tail call void @imx_uart_stop_tx(ptr noundef %sport)
  br label %cleanup

if.end13:                                         ; preds = %uart_tx_stopped.exit
  %dma_is_enabled = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 13
  %20 = ptrtoint ptr %dma_is_enabled to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %dma_is_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool14.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool14.not, label %while.cond.preheader, label %if.then15

while.cond.preheader:                             ; preds = %if.end13
  %21 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %head, align 4
  %23 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp26105 = icmp eq i32 %22, %24
  br i1 %cmp26105, label %while.cond.preheader.while.end_crit_edge, label %land.rhs.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %devdata.i = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 6
  %ufcr.i = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 12
  %ucr4.i = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 11
  %ucr3.i = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 10
  %ucr2.i = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 9
  %membase.i98 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %ucr1.i96 = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 8
  %tx39 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 31, i32 5
  br label %land.rhs

if.then15:                                        ; preds = %if.end13
  %ucr1.i = getelementptr inbounds %struct.imx_port, ptr %sport, i32 0, i32 8
  %25 = ptrtoint ptr %ucr1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ucr1.i, align 8
  %and = and i32 %26, -8193
  %27 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool20.not = icmp eq i8 %27, 0
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %and, 8
  %28 = ptrtoint ptr %ucr1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or, ptr %ucr1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %29 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  %membase.i91 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %30 = ptrtoint ptr %membase.i91 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase.i91, align 8
  %add.ptr.i92 = getelementptr i8, ptr %31, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92, i32 %29) #10, !srcloc !186
  br label %cleanup

if.else:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %ucr1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and, ptr %ucr1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %33 = tail call i32 @llvm.bswap.i32(i32 %and) #10
  %membase.i94 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %34 = ptrtoint ptr %membase.i94 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase.i94, align 8
  %add.ptr.i95 = getelementptr i8, ptr %35, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95, i32 %33) #10, !srcloc !186
  tail call fastcc void @imx_uart_dma_tx(ptr noundef %sport)
  br label %cleanup

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.lr.ph
  %36 = ptrtoint ptr %devdata.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %devdata.i, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %40 = add i32 %39, -128
  %41 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 30) #10
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %41, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb5.i
    i32 3, label %sw.bb6.i
    i32 4, label %sw.bb7.i
  ]

sw.bb.i:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %ucr1.i96 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ucr1.i96, align 8
  br label %imx_uart_readl.exit

sw.bb1.i:                                         ; preds = %land.rhs
  %45 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ucr2.i, align 4
  %and.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i97 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i97, label %if.then.i, label %sw.bb1.i.if.end.i_crit_edge

sw.bb1.i.if.end.i_crit_edge:                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %membase.i98 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %membase.i98, align 8
  %add.ptr.i99 = getelementptr i8, ptr %48, i32 %39
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i99) #10, !srcloc !179
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !187
  %51 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %ucr2.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb1.i.if.end.i_crit_edge
  %52 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ucr2.i, align 4
  br label %imx_uart_readl.exit

sw.bb5.i:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %ucr3.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ucr3.i, align 8
  br label %imx_uart_readl.exit

sw.bb6.i:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %ucr4.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ucr4.i, align 4
  br label %imx_uart_readl.exit

sw.bb7.i:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %ufcr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ufcr.i, align 8
  br label %imx_uart_readl.exit

sw.default.i:                                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %membase.i98 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %membase.i98, align 8
  %add.ptr12.i = getelementptr i8, ptr %61, i32 %39
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #10, !srcloc !179
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  br label %imx_uart_readl.exit

imx_uart_readl.exit:                              ; preds = %sw.default.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %if.end.i, %sw.bb.i
  %retval.0.i100 = phi i32 [ %63, %sw.default.i ], [ %59, %sw.bb7.i ], [ %57, %sw.bb6.i ], [ %55, %sw.bb5.i ], [ %53, %if.end.i ], [ %44, %sw.bb.i ]
  %and30 = and i32 %retval.0.i100, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %while.body, label %imx_uart_readl.exit.while.end_crit_edge

imx_uart_readl.exit.while.end_crit_edge:          ; preds = %imx_uart_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %imx_uart_readl.exit
  %64 = ptrtoint ptr %xmit1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %xmit1, align 4
  %66 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tail, align 4
  %arrayidx = getelementptr i8, ptr %65, i32 %67
  %68 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx, align 1
  %conv33 = zext i8 %69 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %70 = shl nuw i32 %conv33, 24
  %71 = ptrtoint ptr %membase.i98 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %membase.i98, align 8
  %add.ptr.i102 = getelementptr i8, ptr %72, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102, i32 %70) #10, !srcloc !186
  %73 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tail, align 4
  %add = add i32 %74, 1
  %and35 = and i32 %add, 4095
  store i32 %and35, ptr %tail, align 4
  %75 = ptrtoint ptr %tx39 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tx39, align 4
  %inc40 = add i32 %76, 1
  store i32 %inc40, ptr %tx39, align 4
  %77 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %head, align 4
  %79 = load i32, ptr %tail, align 4
  %cmp26 = icmp eq i32 %78, %79
  br i1 %cmp26, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %imx_uart_readl.exit.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %80 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %head, align 4
  %82 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tail, align 4
  %sub = sub i32 %81, %83
  %and43 = and i32 %sub, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %cmp44 = icmp eq i32 %and43, 0
  br i1 %cmp44, label %if.then46, label %while.end.if.end48_crit_edge

while.end.if.end48_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then46:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @uart_write_wakeup(ptr noundef %sport) #10
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %while.end.if.end48_crit_edge
  %84 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %head, align 4
  %86 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %87)
  %cmp51 = icmp eq i32 %85, %87
  br i1 %cmp51, label %if.then53, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then53:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @imx_uart_stop_tx(ptr noundef %sport)
  br label %cleanup

cleanup:                                          ; preds = %if.then53, %if.end48.cleanup_crit_edge, %if.else, %if.then21, %if.then11, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_uart_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @uart_suspend_port(ptr noundef nonnull @imx_uart_uart_driver, ptr noundef %1) #10
  %irq = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 8
  tail call void @disable_irq(i32 noundef %3) #10
  %clk_ipg = getelementptr inbounds %struct.imx_port, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_ipg, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %5) #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %ucr3.i.i = getelementptr inbounds %struct.imx_port, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %ucr3.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ucr3.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 268435456) #10, !srcloc !186
  %or.i = or i32 %7, 16
  %10 = ptrtoint ptr %ucr3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or.i, ptr %ucr3.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %12 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i24.i = getelementptr i8, ptr %13, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 %11) #10, !srcloc !186
  %have_rtscts.i = getelementptr inbounds %struct.imx_port, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %have_rtscts.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %have_rtscts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool1.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool1.not.i, label %if.end.cleanup_crit_edge, label %if.then2.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ucr1.i.i = getelementptr inbounds %struct.imx_port, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %ucr1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ucr1.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %17 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i26.i = getelementptr i8, ptr %18, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 1048576) #10, !srcloc !186
  %or6.i = or i32 %16, 32
  %19 = ptrtoint ptr %ucr1.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or6.i, ptr %ucr1.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %20 = tail call i32 @llvm.bswap.i32(i32 %or6.i) #10
  %21 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i29.i = getelementptr i8, ptr %22, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 %20) #10, !srcloc !186
  br label %cleanup

cleanup:                                          ; preds = %if.then2.i, %if.end.cleanup_crit_edge, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then2.i ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_uart_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ucr3.i.i = getelementptr inbounds %struct.imx_port, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %ucr3.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ucr3.i.i, align 8
  %and.i = and i32 %3, -17
  store i32 %and.i, ptr %ucr3.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %4 = tail call i32 @llvm.bswap.i32(i32 %and.i) #10
  %membase.i23.i = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %membase.i23.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i23.i, align 8
  %add.ptr.i24.i = getelementptr i8, ptr %6, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 %4) #10, !srcloc !186
  %have_rtscts.i = getelementptr inbounds %struct.imx_port, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %have_rtscts.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %have_rtscts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool1.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool1.not.i, label %entry.imx_uart_enable_wakeup.exit_crit_edge, label %if.then2.i

entry.imx_uart_enable_wakeup.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %imx_uart_enable_wakeup.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ucr1.i.i = getelementptr inbounds %struct.imx_port, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %ucr1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ucr1.i.i, align 8
  %and8.i = and i32 %9, -33
  store i32 %and8.i, ptr %ucr1.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %10 = tail call i32 @llvm.bswap.i32(i32 %and8.i) #10
  %11 = ptrtoint ptr %membase.i23.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i23.i, align 8
  %add.ptr.i29.i = getelementptr i8, ptr %12, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 %10) #10, !srcloc !186
  br label %imx_uart_enable_wakeup.exit

imx_uart_enable_wakeup.exit:                      ; preds = %if.then2.i, %entry.imx_uart_enable_wakeup.exit_crit_edge
  %call1 = tail call i32 @uart_resume_port(ptr noundef nonnull @imx_uart_uart_driver, ptr noundef %1) #10
  %irq = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 20
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 8
  tail call void @enable_irq(i32 noundef %14) #10
  %clk_ipg = getelementptr inbounds %struct.imx_port, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk_ipg, align 8
  tail call void @clk_disable(ptr noundef %16) #10
  tail call void @clk_unprepare(ptr noundef %16) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_uart_freeze(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @uart_suspend_port(ptr noundef nonnull @imx_uart_uart_driver, ptr noundef %1) #10
  %clk_ipg = getelementptr inbounds %struct.imx_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_ipg, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %3) #10
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.clk_prepare_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_uart_thaw(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @uart_resume_port(ptr noundef nonnull @imx_uart_uart_driver, ptr noundef %1) #10
  %clk_ipg = getelementptr inbounds %struct.imx_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_ipg, align 8
  tail call void @clk_disable(ptr noundef %3) #10
  tail call void @clk_unprepare(ptr noundef %3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_uart_suspend_noirq(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %ucr1.i.i = getelementptr inbounds %struct.imx_port, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ucr1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ucr1.i.i, align 8
  %saved_reg.i = getelementptr inbounds %struct.imx_port, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %saved_reg.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %saved_reg.i, align 4
  %ucr2.i.i = getelementptr inbounds %struct.imx_port, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %ucr2.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ucr2.i.i, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %entry.imx_uart_save_context.exit_crit_edge

entry.imx_uart_save_context.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %imx_uart_save_context.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 132
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !179
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !187
  %11 = ptrtoint ptr %ucr2.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %ucr2.i.i, align 4
  br label %imx_uart_save_context.exit

imx_uart_save_context.exit:                       ; preds = %if.then.i.i, %entry.imx_uart_save_context.exit_crit_edge
  %12 = ptrtoint ptr %ucr2.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ucr2.i.i, align 4
  %arrayidx8.i = getelementptr %struct.imx_port, ptr %1, i32 0, i32 26, i32 1
  %14 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx8.i, align 4
  %ucr3.i.i = getelementptr inbounds %struct.imx_port, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %ucr3.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ucr3.i.i, align 8
  %arrayidx11.i = getelementptr %struct.imx_port, ptr %1, i32 0, i32 26, i32 2
  %17 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx11.i, align 4
  %ucr4.i.i = getelementptr inbounds %struct.imx_port, ptr %1, i32 0, i32 11
  %18 = ptrtoint ptr %ucr4.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ucr4.i.i, align 4
  %arrayidx14.i = getelementptr %struct.imx_port, ptr %1, i32 0, i32 26, i32 3
  %20 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx14.i, align 4
  %ufcr.i.i = getelementptr inbounds %struct.imx_port, ptr %1, i32 0, i32 12
  %21 = ptrtoint ptr %ufcr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ufcr.i.i, align 8
  %arrayidx17.i = getelementptr %struct.imx_port, ptr %1, i32 0, i32 26, i32 4
  %23 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx17.i, align 4
  %membase11.i.i = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %membase11.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase11.i.i, align 8
  %add.ptr12.i.i = getelementptr i8, ptr %25, i32 156
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i.i) #10, !srcloc !179
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %arrayidx20.i = getelementptr %struct.imx_port, ptr %1, i32 0, i32 26, i32 5
  %28 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx20.i, align 4
  %29 = ptrtoint ptr %membase11.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase11.i.i, align 8
  %add.ptr12.i58.i = getelementptr i8, ptr %30, i32 160
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i58.i) #10, !srcloc !179
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %arrayidx23.i = getelementptr %struct.imx_port, ptr %1, i32 0, i32 26, i32 6
  %33 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx23.i, align 4
  %34 = ptrtoint ptr %membase11.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase11.i.i, align 8
  %add.ptr12.i60.i = getelementptr i8, ptr %35, i32 164
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i60.i) #10, !srcloc !179
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %arrayidx26.i = getelementptr %struct.imx_port, ptr %1, i32 0, i32 26, i32 7
  %38 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx26.i, align 4
  %39 = ptrtoint ptr %membase11.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase11.i.i, align 8
  %add.ptr12.i62.i = getelementptr i8, ptr %40, i32 168
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i62.i) #10, !srcloc !179
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %arrayidx29.i = getelementptr %struct.imx_port, ptr %1, i32 0, i32 26, i32 8
  %43 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arrayidx29.i, align 4
  %44 = ptrtoint ptr %membase11.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %membase11.i.i, align 8
  %add.ptr12.i64.i = getelementptr i8, ptr %45, i32 180
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i64.i) #10, !srcloc !179
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %arrayidx32.i = getelementptr %struct.imx_port, ptr %1, i32 0, i32 26, i32 9
  %48 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx32.i, align 4
  %context_saved.i = getelementptr inbounds %struct.imx_port, ptr %1, i32 0, i32 27
  %49 = ptrtoint ptr %context_saved.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %context_saved.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call2.i) #10
  %clk_ipg = getelementptr inbounds %struct.imx_port, ptr %1, i32 0, i32 4
  %50 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %clk_ipg, align 8
  tail call void @clk_disable(ptr noundef %51) #10
  %call1 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_uart_resume_noirq(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #10
  %clk_ipg = getelementptr inbounds %struct.imx_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_ipg, align 8
  %call2 = tail call i32 @clk_enable(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %context_saved.i = getelementptr inbounds %struct.imx_port, ptr %1, i32 0, i32 27
  %4 = ptrtoint ptr %context_saved.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %context_saved.i, align 4, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end.imx_uart_restore_context.exit_crit_edge, label %if.end.i

if.end.imx_uart_restore_context.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %imx_uart_restore_context.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %saved_reg.i = getelementptr inbounds %struct.imx_port, ptr %1, i32 0, i32 26
  %arrayidx.i = getelementptr %struct.imx_port, ptr %1, i32 0, i32 26, i32 4
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %ufcr.i.i = getelementptr inbounds %struct.imx_port, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %ufcr.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %ufcr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %9 = tail call i32 @llvm.bswap.i32(i32 %7) #10
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %9) #10, !srcloc !186
  %arrayidx8.i = getelementptr %struct.imx_port, ptr %1, i32 0, i32 26, i32 5
  %12 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx8.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #10
  %15 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i54.i = getelementptr i8, ptr %16, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54.i, i32 %14) #10, !srcloc !186
  %arrayidx10.i = getelementptr %struct.imx_port, ptr %1, i32 0, i32 26, i32 6
  %17 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx10.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  %20 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i56.i = getelementptr i8, ptr %21, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56.i, i32 %19) #10, !srcloc !186
  %arrayidx12.i = getelementptr %struct.imx_port, ptr %1, i32 0, i32 26, i32 7
  %22 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx12.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #10
  %25 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i58.i = getelementptr i8, ptr %26, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58.i, i32 %24) #10, !srcloc !186
  %arrayidx14.i = getelementptr %struct.imx_port, ptr %1, i32 0, i32 26, i32 8
  %27 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx14.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #10
  %30 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i60.i = getelementptr i8, ptr %31, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60.i, i32 %29) #10, !srcloc !186
  %arrayidx16.i = getelementptr %struct.imx_port, ptr %1, i32 0, i32 26, i32 9
  %32 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx16.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #10
  %35 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i62.i = getelementptr i8, ptr %36, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62.i, i32 %34) #10, !srcloc !186
  %37 = ptrtoint ptr %saved_reg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %saved_reg.i, align 4
  %ucr1.i.i = getelementptr inbounds %struct.imx_port, ptr %1, i32 0, i32 8
  %39 = ptrtoint ptr %ucr1.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %ucr1.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %40 = tail call i32 @llvm.bswap.i32(i32 %38) #10
  %41 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i64.i = getelementptr i8, ptr %42, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64.i, i32 %40) #10, !srcloc !186
  %arrayidx20.i = getelementptr %struct.imx_port, ptr %1, i32 0, i32 26, i32 1
  %43 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx20.i, align 4
  %or.i = or i32 %44, 1
  %ucr2.i.i = getelementptr inbounds %struct.imx_port, ptr %1, i32 0, i32 9
  %45 = ptrtoint ptr %ucr2.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or.i, ptr %ucr2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %46 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %47 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i66.i = getelementptr i8, ptr %48, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66.i, i32 %46) #10, !srcloc !186
  %arrayidx22.i = getelementptr %struct.imx_port, ptr %1, i32 0, i32 26, i32 2
  %49 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx22.i, align 4
  %ucr3.i.i = getelementptr inbounds %struct.imx_port, ptr %1, i32 0, i32 10
  %51 = ptrtoint ptr %ucr3.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %ucr3.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %52 = tail call i32 @llvm.bswap.i32(i32 %50) #10
  %53 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i68.i = getelementptr i8, ptr %54, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68.i, i32 %52) #10, !srcloc !186
  %arrayidx24.i = getelementptr %struct.imx_port, ptr %1, i32 0, i32 26, i32 3
  %55 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx24.i, align 4
  %ucr4.i.i = getelementptr inbounds %struct.imx_port, ptr %1, i32 0, i32 11
  %57 = ptrtoint ptr %ucr4.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %ucr4.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %58 = tail call i32 @llvm.bswap.i32(i32 %56) #10
  %59 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i70.i = getelementptr i8, ptr %60, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70.i, i32 %58) #10, !srcloc !186
  %61 = ptrtoint ptr %context_saved.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %context_saved.i, align 4
  br label %imx_uart_restore_context.exit

imx_uart_restore_context.exit:                    ; preds = %if.end.i, %if.end.imx_uart_restore_context.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call2.i) #10
  br label %cleanup

cleanup:                                          ; preds = %imx_uart_restore_context.exit, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_suspend_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_resume_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_uart_console_write(ptr nocapture noundef readonly %co, ptr noundef %s, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index, align 2
  %idxprom = sext i16 %1 to i32
  %arrayidx = getelementptr [8 x ptr], ptr @imx_uart_ports, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %sysrq = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %sysrq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sysrq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end70_crit_edge

entry.if.end70_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.else:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %6 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not = icmp eq i32 %6, 0
  br i1 %tobool1.not, label %do.body55, label %do.body3

do.body3:                                         ; preds = %if.else
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !197
  %and.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not = icmp eq i32 %and.i, 0
  br i1 %tobool12.not, label %do.end15, label %do.end15.thread

do.end15:                                         ; preds = %do.body3
  tail call void @trace_hardirqs_off() #10
  %call19 = tail call i32 @_raw_spin_trylock(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then30, label %do.end15.if.end70_crit_edge

do.end15.if.end70_crit_edge:                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

do.end15.thread:                                  ; preds = %do.body3
  %call19119 = tail call i32 @_raw_spin_trylock(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19119)
  %tobool20.not120 = icmp eq i32 %call19119, 0
  br i1 %tobool20.not120, label %do.end15.thread.do.body32_crit_edge, label %do.end15.thread.if.end70_crit_edge

do.end15.thread.if.end70_crit_edge:               ; preds = %do.end15.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

do.end15.thread.do.body32_crit_edge:              ; preds = %do.end15.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body32

if.then30:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_on() #10
  br label %do.body32

do.body32:                                        ; preds = %if.then30, %do.end15.thread.do.body32_crit_edge
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !198
  %and.i.i = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool40.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool40.not, label %if.then44, label %do.body32.do.end47_crit_edge, !prof !192

do.body32.do.end47_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end47

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end47

do.end47:                                         ; preds = %if.then44, %do.body32.do.end47_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #10, !srcloc !199
  br label %if.end70

do.body55:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call64 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  br label %if.end70

if.end70:                                         ; preds = %do.body55, %do.end47, %do.end15.thread.if.end70_crit_edge, %do.end15.if.end70_crit_edge, %entry.if.end70_crit_edge
  %tobool84.not = phi i1 [ false, %do.end15.thread.if.end70_crit_edge ], [ true, %do.end47 ], [ false, %do.end15.if.end70_crit_edge ], [ true, %entry.if.end70_crit_edge ], [ false, %do.body55 ]
  %flags.0 = phi i32 [ %7, %do.end15.thread.if.end70_crit_edge ], [ %7, %do.end47 ], [ %7, %do.end15.if.end70_crit_edge ], [ -1, %entry.if.end70_crit_edge ], [ %call64, %do.body55 ]
  %ucr1.i.i = getelementptr inbounds %struct.imx_port, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %ucr1.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ucr1.i.i, align 8
  %ucr2.i.i = getelementptr inbounds %struct.imx_port, ptr %3, i32 0, i32 9
  %11 = ptrtoint ptr %ucr2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ucr2.i.i, align 4
  %and.i.i106 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i106)
  %tobool.not.i.i = icmp eq i32 %and.i.i106, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end70.imx_uart_ucrs_save.exit_crit_edge

if.end70.imx_uart_ucrs_save.exit_crit_edge:       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %imx_uart_ucrs_save.exit

if.then.i.i:                                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 132
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !179
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !187
  %17 = ptrtoint ptr %ucr2.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %ucr2.i.i, align 4
  br label %imx_uart_ucrs_save.exit

imx_uart_ucrs_save.exit:                          ; preds = %if.then.i.i, %if.end70.imx_uart_ucrs_save.exit_crit_edge
  %18 = ptrtoint ptr %ucr2.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ucr2.i.i, align 4
  %ucr3.i.i = getelementptr inbounds %struct.imx_port, ptr %3, i32 0, i32 10
  %20 = ptrtoint ptr %ucr3.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ucr3.i.i, align 8
  %devdata.i = getelementptr inbounds %struct.imx_port, ptr %3, i32 0, i32 6
  %22 = ptrtoint ptr %devdata.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %devdata.i, align 8
  %devtype.i = getelementptr inbounds %struct.imx_uart_data, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %devtype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i.not = icmp eq i32 %25, 0
  %or = or i32 %10, 4
  %spec.select = select i1 %cmp.i.not, i32 %or, i32 %10
  %or76 = and i32 %spec.select, -8738
  %and = or i32 %or76, 1
  %26 = ptrtoint ptr %ucr1.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and, ptr %ucr1.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %27 = tail call i32 @llvm.bswap.i32(i32 %and) #10
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %28 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase.i, align 8
  %add.ptr.i = getelementptr i8, ptr %29, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %27) #10, !srcloc !186
  %or77 = or i32 %19, 4
  %30 = ptrtoint ptr %ucr2.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or77, ptr %ucr2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %31 = tail call i32 @llvm.bswap.i32(i32 %or77) #10
  %32 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase.i, align 8
  %add.ptr.i109 = getelementptr i8, ptr %33, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109, i32 %31) #10, !srcloc !186
  tail call void @uart_console_write(ptr noundef %3, ptr noundef %s, i32 noundef %count, ptr noundef nonnull @imx_uart_console_putchar) #10
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %imx_uart_ucrs_save.exit
  %34 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase.i, align 8
  %add.ptr12.i = getelementptr i8, ptr %35, i32 152
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %37 = and i32 %36, 134217728
  %tobool81.not = icmp eq i32 %37, 0
  br i1 %tobool81.not, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %38 = ptrtoint ptr %ucr1.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %10, ptr %ucr1.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %39 = tail call i32 @llvm.bswap.i32(i32 %10) #10
  %40 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %membase.i, align 8
  %add.ptr.i.i112 = getelementptr i8, ptr %41, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i112, i32 %39) #10, !srcloc !186
  %42 = ptrtoint ptr %ucr2.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %19, ptr %ucr2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %43 = tail call i32 @llvm.bswap.i32(i32 %19) #10
  %44 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %membase.i, align 8
  %add.ptr.i6.i = getelementptr i8, ptr %45, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %43) #10, !srcloc !186
  %46 = ptrtoint ptr %ucr3.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %21, ptr %ucr3.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %47 = tail call i32 @llvm.bswap.i32(i32 %21) #10
  %48 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %membase.i, align 8
  %add.ptr.i8.i = getelementptr i8, ptr %49, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %47) #10, !srcloc !186
  br i1 %tobool84.not, label %while.end.if.end88_crit_edge, label %if.then85

while.end.if.end88_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

if.then85:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %flags.0) #10
  br label %if.end88

if.end88:                                         ; preds = %if.then85, %while.end.if.end88_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_uart_console_setup(ptr noundef %co, ptr noundef %options) #2 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %5)
  %cmp5 = icmp ugt i16 %5, 7
  br i1 %cmp5, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %index, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %index, align 2
  %idxprom = sext i16 %8 to i32
  %arrayidx = getelementptr [8 x ptr], ptr @imx_uart_ports, i32 0, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %cmp9 = icmp eq ptr %10, null
  br i1 %cmp9, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %clk_ipg = getelementptr inbounds %struct.imx_port, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk_ipg, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end12
  %call1.i = tail call i32 @clk_enable(ptr noundef %12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end14, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %12) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end.i
  %tobool15.not = icmp eq ptr %options, null
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  call void @uart_parse_options(ptr noundef nonnull %options, ptr noundef nonnull %baud, ptr noundef nonnull %parity, ptr noundef nonnull %bits, ptr noundef nonnull %flow) #10
  br label %if.end17

if.else:                                          ; preds = %if.end14
  %ucr1.i.i = getelementptr inbounds %struct.imx_port, ptr %10, i32 0, i32 8
  %13 = ptrtoint ptr %ucr1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ucr1.i.i, align 8
  %and.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i48 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i48, label %if.else.if.end17_crit_edge, label %if.then.i

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then.i:                                        ; preds = %if.else
  %ucr2.i.i = getelementptr inbounds %struct.imx_port, ptr %10, i32 0, i32 9
  %15 = ptrtoint ptr %ucr2.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ucr2.i.i, align 4
  %and.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i.imx_uart_readl.exit.i_crit_edge

if.then.i.imx_uart_readl.exit.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %imx_uart_readl.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 2
  %17 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 132
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !179
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !187
  %21 = ptrtoint ptr %ucr2.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %ucr2.i.i, align 4
  br label %imx_uart_readl.exit.i

imx_uart_readl.exit.i:                            ; preds = %if.then.i.i, %if.then.i.imx_uart_readl.exit.i_crit_edge
  %22 = ptrtoint ptr %ucr2.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ucr2.i.i, align 4
  %and2.i = and i32 %23, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %and5.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %.69.i = select i1 %tobool6.not.i, i32 101, i32 111
  %storemerge.i = select i1 %tobool3.not.i, i32 110, i32 %.69.i
  %24 = ptrtoint ptr %parity to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %storemerge.i, ptr %parity, align 4
  %and9.i = and i32 %23, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  %..i = select i1 %tobool10.not.i, i32 7, i32 8
  %25 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %..i, ptr %bits, align 4
  %membase11.i.i = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 2
  %26 = ptrtoint ptr %membase11.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase11.i.i, align 8
  %add.ptr12.i.i = getelementptr i8, ptr %27, i32 164
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %29 = and i32 %28, -65536
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #10
  %31 = ptrtoint ptr %membase11.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %membase11.i.i, align 8
  %add.ptr12.i68.i = getelementptr i8, ptr %32, i32 168
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i68.i) #10, !srcloc !179
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %ufcr.i.i = getelementptr inbounds %struct.imx_port, ptr %10, i32 0, i32 12
  %35 = ptrtoint ptr %ufcr.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ufcr.i.i, align 8
  %and19.i = lshr i32 %36, 7
  %shr.i = and i32 %and19.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %shr.i)
  %cmp.i = icmp eq i32 %shr.i, 6
  %sub.i = sub nsw i32 6, %shr.i
  %ucfr_rfdiv.0.i = select i1 %cmp.i, i32 7, i32 %sub.i
  %clk_per.i = getelementptr inbounds %struct.imx_port, ptr %10, i32 0, i32 5
  %37 = ptrtoint ptr %clk_per.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %clk_per.i, align 4
  %call23.i = tail call i32 @clk_get_rate(ptr noundef %38) #10
  %div.i = udiv i32 %call23.i, %ucfr_rfdiv.0.i
  %add.i = add nuw nsw i32 %30, 1
  %and17.i = shl i32 %34, 4
  %add25.i = and i32 %and17.i, 1048560
  %mul26.i = add nuw nsw i32 %add25.i, 16
  %div.i.frozen = freeze i32 %div.i
  %mul26.i.frozen = freeze i32 %mul26.i
  %div28.i = udiv i32 %div.i.frozen, %mul26.i.frozen
  %39 = mul i32 %div28.i, %mul26.i.frozen
  %rem27.i.decomposed = sub i32 %div.i.frozen, %39
  %mul29.i = mul i32 %div28.i, %add.i
  %mul30.i = mul i32 %rem27.i.decomposed, %add.i
  %div3166.i = lshr exact i32 %mul26.i, 1
  %add32.i = add i32 %mul30.i, %div3166.i
  %div33.i = udiv i32 %add32.i, %mul26.i
  %add34.i = add i32 %mul29.i, %div33.i
  %add35.i = add i32 %add34.i, 50
  %40 = urem i32 %add35.i, 100
  %mul37.i = sub i32 %add35.i, %40
  %41 = ptrtoint ptr %baud to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %mul37.i, ptr %baud, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul37.i, i32 %add34.i)
  %cmp38.not.i = icmp eq i32 %mul37.i, %add34.i
  br i1 %cmp38.not.i, label %imx_uart_readl.exit.i.if.end17_crit_edge, label %do.end.i

imx_uart_readl.exit.i.if.end17_crit_edge:         ; preds = %imx_uart_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

do.end.i:                                         ; preds = %imx_uart_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 45
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %43, ptr noundef nonnull @.str.79, i32 noundef %add34.i, i32 noundef %mul37.i) #13
  br label %if.end17

if.end17:                                         ; preds = %do.end.i, %imx_uart_readl.exit.i.if.end17_crit_edge, %if.else.if.end17_crit_edge, %if.then16
  %ufcr.i.i49 = getelementptr inbounds %struct.imx_port, ptr %10, i32 0, i32 12
  %44 = ptrtoint ptr %ufcr.i.i49 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ufcr.i.i49, align 8
  %and.i50 = and i32 %45, 960
  %or2.i = or i32 %and.i50, 2049
  store i32 %or2.i, ptr %ufcr.i.i49, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  call void @arm_heavy_mb() #10
  %46 = call i32 @llvm.bswap.i32(i32 %or2.i) #10
  %membase.i.i51 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 2
  %47 = ptrtoint ptr %membase.i.i51 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %membase.i.i51, align 8
  %add.ptr.i.i52 = getelementptr i8, ptr %48, i32 144
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i52, i32 %46) #10, !srcloc !186
  %49 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %baud, align 4
  %51 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %parity, align 4
  %53 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bits, align 4
  %55 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flow, align 4
  %call18 = call i32 @uart_set_options(ptr noundef nonnull %10, ptr noundef %co, i32 noundef %50, i32 noundef %52, i32 noundef %54, i32 noundef %56) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %clk_ipg, align 8
  call void @clk_disable(ptr noundef %58) #10
  call void @clk_unprepare(ptr noundef %58) #10
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %clk_per = getelementptr inbounds %struct.imx_port, ptr %10, i32 0, i32 5
  %59 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %clk_per, align 4
  %call.i53 = call i32 @clk_prepare(ptr noundef %60) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %tobool.not.i54 = icmp eq i32 %call.i53, 0
  br i1 %tobool.not.i54, label %if.end.i57, label %if.end22.if.then25_crit_edge

if.end22.if.then25_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then25

if.end.i57:                                       ; preds = %if.end22
  %call1.i55 = call i32 @clk_enable(ptr noundef %60) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i55)
  %tobool2.not.i56 = icmp eq i32 %call1.i55, 0
  br i1 %tobool2.not.i56, label %if.end.i57.cleanup_crit_edge, label %if.then3.i58

if.end.i57.cleanup_crit_edge:                     ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3.i58:                                     ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #12
  call void @clk_unprepare(ptr noundef %60) #10
  br label %if.then25

if.then25:                                        ; preds = %if.then3.i58, %if.end22.if.then25_crit_edge
  %retval.0.i59.ph = phi i32 [ %call1.i55, %if.then3.i58 ], [ %call.i53, %if.end22.if.then25_crit_edge ]
  %61 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %clk_ipg, align 8
  call void @clk_disable(ptr noundef %62) #10
  call void @clk_unprepare(ptr noundef %62) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end.i57.cleanup_crit_edge, %if.then20, %if.then3.i, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.end.cleanup_crit_edge ], [ %call18, %if.then20 ], [ %retval.0.i59.ph, %if.then25 ], [ 0, %if.end.i57.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flow) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parity) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %baud) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_uart_console_exit(ptr nocapture noundef readonly %co) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index, align 2
  %idxprom = sext i16 %1 to i32
  %arrayidx = getelementptr [8 x ptr], ptr @imx_uart_ports, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %clk_per = getelementptr inbounds %struct.imx_port, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_per, align 4
  tail call void @clk_disable(ptr noundef %5) #10
  tail call void @clk_unprepare(ptr noundef %5) #10
  %clk_ipg = getelementptr inbounds %struct.imx_port, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_ipg, align 8
  tail call void @clk_disable(ptr noundef %7) #10
  tail call void @clk_unprepare(ptr noundef %7) #10
  ret i32 0
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
define internal void @imx_uart_console_putchar(ptr nocapture noundef %port, i32 noundef %ch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 6
  %ufcr.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 12
  %ucr4.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 11
  %ucr3.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 10
  %ucr2.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 9
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %ucr1.i = getelementptr inbounds %struct.imx_port, ptr %port, i32 0, i32 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = ptrtoint ptr %devdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = add i32 %3, -128
  %5 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 30) #10
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %5, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb5.i
    i32 3, label %sw.bb6.i
    i32 4, label %sw.bb7.i
  ]

sw.bb.i:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %ucr1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ucr1.i, align 8
  br label %imx_uart_readl.exit

sw.bb1.i:                                         ; preds = %while.cond
  %9 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ucr2.i, align 4
  %and.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %sw.bb1.i.if.end.i_crit_edge

sw.bb1.i.if.end.i_crit_edge:                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i, align 8
  %add.ptr.i = getelementptr i8, ptr %12, i32 %3
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !179
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !187
  %15 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %ucr2.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb1.i.if.end.i_crit_edge
  %16 = ptrtoint ptr %ucr2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ucr2.i, align 4
  br label %imx_uart_readl.exit

sw.bb5.i:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %ucr3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ucr3.i, align 8
  br label %imx_uart_readl.exit

sw.bb6.i:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %ucr4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ucr4.i, align 4
  br label %imx_uart_readl.exit

sw.bb7.i:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %ufcr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ufcr.i, align 8
  br label %imx_uart_readl.exit

sw.default.i:                                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase.i, align 8
  %add.ptr12.i = getelementptr i8, ptr %25, i32 %3
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #10, !srcloc !179
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  br label %imx_uart_readl.exit

imx_uart_readl.exit:                              ; preds = %sw.default.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %if.end.i, %sw.bb.i
  %retval.0.i = phi i32 [ %27, %sw.default.i ], [ %23, %sw.bb7.i ], [ %21, %sw.bb6.i ], [ %19, %sw.bb5.i ], [ %17, %if.end.i ], [ %8, %sw.bb.i ]
  %and = and i32 %retval.0.i, 16
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %imx_uart_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !200
  br label %while.cond

while.end:                                        ; preds = %imx_uart_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %28 = tail call i32 @llvm.bswap.i32(i32 %ch) #10
  %29 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase.i, align 8
  %add.ptr.i5 = getelementptr i8, ptr %30, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %28) #10, !srcloc !186
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !44, !45, !47, !48, !50, !52, !53, !54, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !111, !112, !113, !115, !116, !117, !119, !121, !122, !123, !125, !126, !127, !129, !131, !132, !133, !134, !136, !137, !138, !140, !141, !143, !144, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !166, !167, !168}
!llvm.module.flags = !{!169, !170, !171, !172, !173, !174, !175, !176}
!llvm.ident = !{!177}

!0 = !{ptr @__initcall__kmod_imx__241_2623_imx_uart_init6, !1, !"__initcall__kmod_imx__241_2623_imx_uart_init6", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/imx.c", i32 2623, i32 1}
!2 = !{ptr @__exitcall_imx_uart_exit, !3, !"__exitcall_imx_uart_exit", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/imx.c", i32 2624, i32 1}
!4 = !{ptr @__UNIQUE_ID_author242, !5, !"__UNIQUE_ID_author242", i1 false, i1 false}
!5 = !{!"../drivers/tty/serial/imx.c", i32 2626, i32 1}
!6 = !{ptr @__UNIQUE_ID_description243, !7, !"__UNIQUE_ID_description243", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/imx.c", i32 2627, i32 1}
!8 = !{ptr @__UNIQUE_ID_file244, !9, !"__UNIQUE_ID_file244", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/imx.c", i32 2628, i32 1}
!10 = !{ptr @__UNIQUE_ID_license245, !9, !"__UNIQUE_ID_license245", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias246, !12, !"__UNIQUE_ID_alias246", i1 false, i1 false}
!12 = !{!"../drivers/tty/serial/imx.c", i32 2629, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/tty/serial/imx.c", i32 2597, i32 11}
!15 = !{ptr @imx_uart_platform_driver, !16, !"imx_uart_platform_driver", i1 false, i1 false}
!16 = !{!"../drivers/tty/serial/imx.c", i32 2592, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/tty/serial/imx.c", i32 2216, i32 28}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/tty/serial/imx.c", i32 2218, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @imx_uart_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @imx_uart_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/tty/serial/imx.c", i32 2223, i32 26}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/tty/serial/imx.c", i32 2224, i32 26}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/tty/serial/imx.c", i32 2227, i32 26}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/tty/serial/imx.c", i32 2230, i32 26}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/tty/serial/imx.c", i32 2233, i32 26}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/tty/serial/imx.c", i32 2236, i32 26}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/tty/serial/imx.c", i32 2239, i32 38}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/tty/serial/imx.c", i32 2248, i32 3}
!43 = !{ptr @imx_uart_probe._entry.14, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @imx_uart_probe._entry_ptr.16, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @imx_uart_probe.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/tty/serial/imx.c", i32 2275, i32 2}
!47 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/tty/serial/imx.c", i32 2281, i32 44}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/tty/serial/imx.c", i32 2284, i32 3}
!52 = !{ptr @imx_uart_probe._entry.19, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @imx_uart_probe._entry_ptr.21, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/tty/serial/imx.c", i32 2288, i32 44}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/tty/serial/imx.c", i32 2291, i32 3}
!58 = !{ptr @imx_uart_probe._entry.23, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @imx_uart_probe._entry_ptr.25, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/tty/serial/imx.c", i32 2300, i32 3}
!62 = !{ptr @imx_uart_probe._entry.26, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @imx_uart_probe._entry_ptr.28, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/tty/serial/imx.c", i32 2319, i32 3}
!66 = !{ptr @imx_uart_probe._entry.29, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @imx_uart_probe._entry_ptr.31, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/tty/serial/imx.c", i32 2330, i32 3}
!70 = !{ptr @imx_uart_probe._entry.32, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @imx_uart_probe._entry_ptr.34, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/tty/serial/imx.c", i32 2386, i32 4}
!74 = !{ptr @imx_uart_probe._entry.35, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @imx_uart_probe._entry_ptr.37, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/tty/serial/imx.c", i32 2394, i32 4}
!78 = !{ptr @imx_uart_probe._entry.38, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @imx_uart_probe._entry_ptr.40, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/tty/serial/imx.c", i32 2402, i32 4}
!82 = !{ptr @imx_uart_probe._entry.41, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @imx_uart_probe._entry_ptr.43, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/tty/serial/imx.c", i32 2410, i32 4}
!86 = !{ptr @imx_uart_probe._entry.44, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @imx_uart_probe._entry_ptr.46, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @imx_uart_pops, !89, !"imx_uart_pops", i1 false, i1 false}
!89 = !{!"../drivers/tty/serial/imx.c", i32 1935, i32 30}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/tty/serial/imx.c", i32 645, i32 3}
!92 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @imx_uart_dma_tx._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @imx_uart_dma_tx._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.50, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/tty/serial/imx.c", i32 653, i32 3}
!97 = !{ptr @imx_uart_dma_tx._entry.49, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @imx_uart_dma_tx._entry_ptr.51, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.52, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/tty/serial/imx.c", i32 659, i32 2}
!101 = !{ptr @.str.53, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @imx_uart_dma_tx.__UNIQUE_ID_ddebug237, !100, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!103 = !{ptr @.str.54, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/tty/serial/imx.c", i32 594, i32 2}
!105 = !{ptr @.str.55, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @imx_uart_dma_tx_callback.__UNIQUE_ID_ddebug236, !104, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!107 = !{ptr @.str.56, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/tty/serial/imx.c", i32 1301, i32 54}
!109 = !{ptr @.str.57, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/tty/serial/imx.c", i32 1303, i32 3}
!111 = !{ptr @.str.58, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @imx_uart_dma_init.__UNIQUE_ID_ddebug240, !110, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!113 = !{ptr @.str.59, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/tty/serial/imx.c", i32 1315, i32 3}
!115 = !{ptr @imx_uart_dma_init._entry, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @imx_uart_dma_init._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.60, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/tty/serial/imx.c", i32 1328, i32 54}
!119 = !{ptr @.str.62, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/tty/serial/imx.c", i32 1330, i32 3}
!121 = !{ptr @imx_uart_dma_init._entry.61, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @imx_uart_dma_init._entry_ptr.63, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.65, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/tty/serial/imx.c", i32 1341, i32 3}
!125 = !{ptr @imx_uart_dma_init._entry.64, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @imx_uart_dma_init._entry_ptr.66, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.67, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!129 = !{ptr @.str.68, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/tty/serial/imx.c", i32 1205, i32 3}
!131 = !{ptr @.str.69, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @imx_uart_start_rx_dma._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @imx_uart_start_rx_dma._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.71, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/tty/serial/imx.c", i32 1215, i32 3}
!136 = !{ptr @imx_uart_start_rx_dma._entry.70, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @imx_uart_start_rx_dma._entry_ptr.72, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.73, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/tty/serial/imx.c", i32 1221, i32 2}
!140 = !{ptr @imx_uart_start_rx_dma.__UNIQUE_ID_ddebug239, !139, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!141 = !{ptr @.str.74, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/tty/serial/imx.c", i32 1187, i32 3}
!143 = !{ptr @.str.75, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @imx_uart_dma_rx_callback.__UNIQUE_ID_ddebug238, !142, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!145 = !{ptr @.str.76, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/tty/serial/imx.c", i32 1777, i32 40}
!147 = !{ptr @imx_uart_ports, !148, !"imx_uart_ports", i1 false, i1 false}
!148 = !{!"../drivers/tty/serial/imx.c", i32 1958, i32 25}
!149 = !{ptr @imx_uart_dt_ids, !150, !"imx_uart_dt_ids", i1 false, i1 false}
!150 = !{!"../drivers/tty/serial/imx.c", i32 267, i32 34}
!151 = !{ptr @imx_uart_devdata, !152, !"imx_uart_devdata", i1 false, i1 false}
!152 = !{!"../drivers/tty/serial/imx.c", i32 248, i32 29}
!153 = !{ptr @imx_uart_pm_ops, !154, !"imx_uart_pm_ops", i1 false, i1 false}
!154 = !{!"../drivers/tty/serial/imx.c", i32 2580, i32 32}
!155 = !{ptr @.str.77, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/tty/serial/imx.c", i32 2161, i32 20}
!157 = !{ptr @.str.78, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/tty/serial/imx.c", i32 2162, i32 20}
!159 = !{ptr @imx_uart_uart_driver, !160, !"imx_uart_uart_driver", i1 false, i1 false}
!160 = !{!"../drivers/tty/serial/imx.c", i32 2159, i32 27}
!161 = !{ptr @imx_uart_console, !162, !"imx_uart_console", i1 false, i1 false}
!162 = !{!"../drivers/tty/serial/imx.c", i32 2142, i32 23}
!163 = !{ptr @.str.79, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/tty/serial/imx.c", i32 2077, i32 4}
!165 = !{ptr @.str.80, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.81, !164, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @imx_uart_console_get_options._entry, !164, !"_entry", i1 false, i1 false}
!168 = !{ptr @imx_uart_console_get_options._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!169 = !{i32 1, !"wchar_size", i32 2}
!170 = !{i32 1, !"min_enum_size", i32 4}
!171 = !{i32 8, !"branch-target-enforcement", i32 0}
!172 = !{i32 8, !"sign-return-address", i32 0}
!173 = !{i32 8, !"sign-return-address-all", i32 0}
!174 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!175 = !{i32 7, !"uwtable", i32 1}
!176 = !{i32 7, !"frame-pointer", i32 2}
!177 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!178 = !{!"auto-init"}
!179 = !{i64 5928944}
!180 = !{i64 2154803579}
!181 = !{i64 2154804106}
!182 = !{i64 2154804633}
!183 = !{i64 2154805160}
!184 = !{i64 2154805687}
!185 = !{i64 2154741142}
!186 = !{i64 5928526}
!187 = !{i64 2154741875}
!188 = !{i64 2154742420}
!189 = !{i8 0, i8 2}
!190 = !{!"branch_weights", i32 2000, i32 1}
!191 = !{i64 2148254681, i64 2148254961, i64 2148255295, i64 2148255629}
!192 = !{!"branch_weights", i32 1, i32 2000}
!193 = !{i64 2154605006, i64 2154605498, i64 2154605043, i64 2154605099, i64 2154605133, i64 2154605157, i64 2154605198, i64 2154605219, i64 2154605247, i64 2154605281}
!194 = !{i64 2154598687, i64 2154599179, i64 2154598724, i64 2154598780, i64 2154598814, i64 2154598838, i64 2154598879, i64 2154598900, i64 2154598928, i64 2154598962}
!195 = !{i64 2154600297, i64 2154600789, i64 2154600334, i64 2154600390, i64 2154600424, i64 2154600448, i64 2154600489, i64 2154600510, i64 2154600538, i64 2154600572}
!196 = !{i64 2149021634, i64 2149021639, i64 2149021652, i64 2149021696, i64 2149021730, i64 2149021751}
!197 = !{i64 811957, i64 812018}
!198 = !{i64 814689}
!199 = !{i64 814974}
!200 = !{i64 2154785077}
