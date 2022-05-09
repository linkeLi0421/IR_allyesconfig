; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/mxs-auart.c_pt.bc'
source_filename = "../drivers/tty/serial/mxs-auart.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.vendor_data = type { ptr }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.mxs_auart_port = type { %struct.uart_port, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.scatterlist, ptr, ptr, %struct.scatterlist, ptr, ptr, ptr, [6 x i32], i8 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@mxs_auart_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mxs_auart_probe, ptr @mxs_auart_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mxs_auart_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@auart_driver = internal global { %struct.uart_driver, [60 x i8] } { %struct.uart_driver { ptr null, ptr @.str.60, ptr @.str.60, i32 0, i32 0, i32 5, ptr @auart_console, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_mxs_auart__239_1756_mxs_auart_init6 = internal global ptr @mxs_auart_init, section ".initcall6.init", align 4
@__exitcall_mxs_auart_exit = internal global ptr @mxs_auart_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file240 = internal constant [44 x i8] c"mxs_auart.file=drivers/tty/serial/mxs-auart\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [22 x i8] c"mxs_auart.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [60 x i8] c"mxs_auart.description=Freescale MXS application uart driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias243 = internal constant [35 x i8] c"mxs_auart.alias=platform:mxs-auart\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mxs-auart\00", [22 x i8] zeroinitializer }, align 32
@mxs_auart_dt_ids = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx28-auart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx23-auart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"alphascale,asm9260-auart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@mxs_auart_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1601, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get alias id: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mxs_auart_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/tty/serial/mxs-auart.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mxs_auart_probe._entry_ptr = internal global ptr @mxs_auart_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"uart-has-rtscts\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fsl,uart-has-rtscts\00", [44 x i8] zeroinitializer }, align 32
@mxs_auart_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 1611, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"serial%d out of range\0A\00", [41 x i8] zeroinitializer }, align 32
@mxs_auart_probe._entry_ptr.11 = internal global ptr @mxs_auart_probe._entry.9, section ".printk_index", align 4
@mxs_auart_ops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @mxs_auart_tx_empty, ptr @mxs_auart_set_mctrl, ptr @mxs_auart_get_mctrl, ptr @mxs_auart_stop_tx, ptr @mxs_auart_start_tx, ptr null, ptr null, ptr null, ptr @mxs_auart_stop_rx, ptr @mxs_auart_enable_ms, ptr @mxs_auart_break_ctl, ptr @mxs_auart_startup, ptr @mxs_auart_shutdown, ptr null, ptr @mxs_auart_settermios, ptr @mxs_auart_set_ldisc, ptr null, ptr @mxs_auart_type, ptr @mxs_auart_release_port, ptr @mxs_auart_request_port, ptr @mxs_auart_config_port, ptr @mxs_auart_verify_port, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@mxs_auart_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 1660, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to initialize GPIOs.\0A\00", [35 x i8] zeroinitializer }, align 32
@mxs_auart_probe._entry_ptr.14 = internal global ptr @mxs_auart_probe._entry.12, section ".printk_index", align 4
@auart_port = internal global { [5 x ptr], [44 x i8] } zeroinitializer, align 32
@mxs_auart_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 1681, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Found APPUART ASM9260\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mxs_auart_probe._entry_ptr.18 = internal global ptr @mxs_auart_probe._entry.15, section ".printk_index", align 4
@mxs_auart_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 1686, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Found APPUART %d.%d.%d\0A\00", [40 x i8] zeroinitializer }, align 32
@mxs_auart_probe._entry_ptr.21 = internal global ptr @mxs_auart_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mod\00", [28 x i8] zeroinitializer }, align 32
@mxs_get_clks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 1483, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get \22mod\22 clk\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mxs_get_clks\00", [19 x i8] zeroinitializer }, align 32
@mxs_get_clks._entry_ptr = internal global ptr @mxs_get_clks._entry, section ".printk_index", align 4
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@mxs_get_clks._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.24, ptr @.str.4, i32 1489, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get \22ahb\22 clk\0A\00", [39 x i8] zeroinitializer }, align 32
@mxs_get_clks._entry_ptr.28 = internal global ptr @mxs_get_clks._entry.26, section ".printk_index", align 4
@mxs_get_clks._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.24, ptr @.str.4, i32 1495, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to enable ahb_clk!\0A\00", [37 x i8] zeroinitializer }, align 32
@mxs_get_clks._entry_ptr.31 = internal global ptr @mxs_get_clks._entry.29, section ".printk_index", align 4
@mxs_get_clks._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.24, ptr @.str.4, i32 1501, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to set rate!\0A\00", [43 x i8] zeroinitializer }, align 32
@mxs_get_clks._entry_ptr.34 = internal global ptr @mxs_get_clks._entry.32, section ".printk_index", align 4
@mxs_get_clks._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.24, ptr @.str.4, i32 1507, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to enable clk!\0A\00", [41 x i8] zeroinitializer }, align 32
@mxs_get_clks._entry_ptr.37 = internal global ptr @mxs_get_clks._entry.35, section ".printk_index", align 4
@mxs_auart_dma_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 547, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"step 1 error\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mxs_auart_dma_tx\00", [47 x i8] zeroinitializer }, align 32
@mxs_auart_dma_tx._entry_ptr = internal global ptr @mxs_auart_dma_tx._entry, section ".printk_index", align 4
@mxs_auart_dma_tx._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.4, i32 557, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"step 2 error\0A\00", [18 x i8] zeroinitializer }, align 32
@mxs_auart_dma_tx._entry_ptr.42 = internal global ptr @mxs_auart_dma_tx._entry.40, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mxs_auart_reset_assert._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 1177, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to reset the unit.\00", [38 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxs_auart_reset_assert\00", [41 x i8] zeroinitializer }, align 32
@mxs_auart_reset_assert._entry_ptr = internal global ptr @mxs_auart_reset_assert._entry, section ".printk_index", align 4
@mxs_auart_settermios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.4, i32 1073, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"We can not start up the DMA.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mxs_auart_settermios\00", [43 x i8] zeroinitializer }, align 32
@mxs_auart_settermios._entry_ptr = internal global ptr @mxs_auart_settermios._entry, section ".printk_index", align 4
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@mxs_auart_dma_init.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.49, ptr @.str.50, ptr @.str.4, ptr @.str.51, i8 0, i8 -20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mxs_auart\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mxs_auart_dma_init\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"enabled the DMA support.\00", [39 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mxs_auart_dma_prep_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.52, ptr @.str.4, i32 871, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mxs_auart_dma_prep_rx\00", [42 x i8] zeroinitializer }, align 32
@mxs_auart_dma_prep_rx._entry_ptr = internal global ptr @mxs_auart_dma_prep_rx._entry, section ".printk_index", align 4
@mxs_auart_dma_prep_rx._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.52, ptr @.str.4, i32 881, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@mxs_auart_dma_prep_rx._entry_ptr.54 = internal global ptr @mxs_auart_dma_prep_rx._entry.53, section ".printk_index", align 4
@vendor_alphascale_asm9260 = internal constant { %struct.vendor_data, [28 x i8] } { %struct.vendor_data { ptr @mxs_asm9260_offsets }, [28 x i8] zeroinitializer }, align 32
@vendor_freescale_stmp37xx = internal constant { %struct.vendor_data, [28 x i8] } { %struct.vendor_data { ptr @mxs_stmp37xx_offsets }, [28 x i8] zeroinitializer }, align 32
@mxs_asm9260_offsets = internal constant { [11 x i16], [42 x i8] } { [11 x i16] [i16 0, i16 16, i16 32, i16 48, i16 0, i16 64, i16 80, i16 96, i16 112, i16 0, i16 192], [42 x i8] zeroinitializer }, align 32
@mxs_stmp37xx_offsets = internal constant { [11 x i16], [42 x i8] } { [11 x i16] [i16 0, i16 16, i16 32, i16 48, i16 64, i16 80, i16 96, i16 112, i16 128, i16 144, i16 160], [42 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mxs_auart_init_gpios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.4, i32 1531, ptr @.str.57, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"DMA and flow control via gpio may cause some problems. DMA disabled!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mxs_auart_init_gpios\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mxs_auart_init_gpios._entry_ptr = internal global ptr @mxs_auart_init_gpios._entry, section ".printk_index", align 4
@mxs_auart_request_gpio_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.4, i32 1570, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s - Can't get %d irq\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mxs_auart_request_gpio_irq\00", [37 x i8] zeroinitializer }, align 32
@mxs_auart_request_gpio_irq._entry_ptr = internal global ptr @mxs_auart_request_gpio_irq._entry, section ".printk_index", align 4
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ttyAPP\00", [25 x i8] zeroinitializer }, align 32
@auart_console = internal global { %struct.console, [60 x i8] } { %struct.console { [16 x i8] c"ttyAPP\00\00\00\00\00\00\00\00\00\00", ptr @auart_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @auart_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @auart_driver, ptr null }, [60 x i8] zeroinitializer }, align 32
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"mxs_auart_driver\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1722, i32 31 }
@___asan_gen_.64 = private unnamed_addr constant [13 x i8] c"auart_driver\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1451, i32 27 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1726, i32 11 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"mxs_auart_dt_ids\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 444, i32 34 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1599, i32 28 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1601, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1606, i32 26 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1607, i32 26 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1611, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [14 x i8] c"mxs_auart_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1285, i32 30 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1660, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [11 x i8] c"auart_port\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1305, i32 31 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1681, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1684, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1481, i32 32 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1483, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1487, i32 36 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1489, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1495, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1501, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1507, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 547, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 557, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1177, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1073, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 928, i32 53 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 936, i32 53 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 945, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 871, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 881, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant [26 x i8] c"vendor_alphascale_asm9260\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 406, i32 33 }
@___asan_gen_.232 = private unnamed_addr constant [26 x i8] c"vendor_freescale_stmp37xx\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 410, i32 33 }
@___asan_gen_.235 = private unnamed_addr constant [20 x i8] c"mxs_asm9260_offsets\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 380, i32 18 }
@___asan_gen_.238 = private unnamed_addr constant [21 x i8] c"mxs_stmp37xx_offsets\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 392, i32 18 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1530, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1569, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1453, i32 17 }
@___asan_gen_.265 = private unnamed_addr constant [14 x i8] c"auart_console\00", align 1
@___asan_gen_.266 = private constant [34 x i8] c"../drivers/tty/serial/mxs-auart.c\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1440, i32 23 }
@llvm.compiler.used = appending global [94 x ptr] [ptr @__UNIQUE_ID_alias243, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_mxs_auart_exit, ptr @__initcall__kmod_mxs_auart__239_1756_mxs_auart_init6, ptr @mxs_auart_dma_prep_rx._entry, ptr @mxs_auart_dma_prep_rx._entry.53, ptr @mxs_auart_dma_prep_rx._entry_ptr, ptr @mxs_auart_dma_prep_rx._entry_ptr.54, ptr @mxs_auart_dma_tx._entry, ptr @mxs_auart_dma_tx._entry.40, ptr @mxs_auart_dma_tx._entry_ptr, ptr @mxs_auart_dma_tx._entry_ptr.42, ptr @mxs_auart_exit, ptr @mxs_auart_init_gpios._entry, ptr @mxs_auart_init_gpios._entry_ptr, ptr @mxs_auart_probe._entry, ptr @mxs_auart_probe._entry.12, ptr @mxs_auart_probe._entry.15, ptr @mxs_auart_probe._entry.19, ptr @mxs_auart_probe._entry.9, ptr @mxs_auart_probe._entry_ptr, ptr @mxs_auart_probe._entry_ptr.11, ptr @mxs_auart_probe._entry_ptr.14, ptr @mxs_auart_probe._entry_ptr.18, ptr @mxs_auart_probe._entry_ptr.21, ptr @mxs_auart_request_gpio_irq._entry, ptr @mxs_auart_request_gpio_irq._entry_ptr, ptr @mxs_auart_reset_assert._entry, ptr @mxs_auart_reset_assert._entry_ptr, ptr @mxs_auart_settermios._entry, ptr @mxs_auart_settermios._entry_ptr, ptr @mxs_get_clks._entry, ptr @mxs_get_clks._entry.26, ptr @mxs_get_clks._entry.29, ptr @mxs_get_clks._entry.32, ptr @mxs_get_clks._entry.35, ptr @mxs_get_clks._entry_ptr, ptr @mxs_get_clks._entry_ptr.28, ptr @mxs_get_clks._entry_ptr.31, ptr @mxs_get_clks._entry_ptr.34, ptr @mxs_get_clks._entry_ptr.37, ptr @mxs_auart_driver, ptr @auart_driver, ptr @.str, ptr @mxs_auart_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @mxs_auart_ops, ptr @.str.13, ptr @auart_port, ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @vendor_alphascale_asm9260, ptr @vendor_freescale_stmp37xx, ptr @mxs_asm9260_offsets, ptr @mxs_stmp37xx_offsets, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @auart_console], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_auart_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auart_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_auart_dt_ids to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_auart_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_auart_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_auart_ops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_auart_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auart_port to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_auart_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_auart_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_get_clks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_get_clks._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_get_clks._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_get_clks._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_get_clks._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_auart_dma_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_auart_dma_tx._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_auart_reset_assert._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_auart_settermios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_auart_dma_prep_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_auart_dma_prep_rx._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vendor_alphascale_asm9260 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vendor_freescale_stmp37xx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_asm9260_offsets to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_stmp37xx_offsets to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_auart_init_gpios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_auart_request_gpio_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auart_console to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mxs_auart_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @mxs_auart_driver) #10
  tail call void @uart_unregister_driver(ptr noundef nonnull @auart_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_auart_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @uart_register_driver(ptr noundef nonnull @auart_driver) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @mxs_auart_driver, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %out_err

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

out_err:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @uart_unregister_driver(ptr noundef nonnull @auart_driver) #10
  br label %cleanup

cleanup:                                          ; preds = %out_err, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %out_err ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_auart_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 476, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev3 = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 45
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev3, align 4
  %dev5 = getelementptr inbounds %struct.mxs_auart_port, ptr %call.i, i32 0, i32 7
  %3 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev5, align 4
  %call6 = tail call i32 @of_alias_get_id(ptr noundef %1, ptr noundef nonnull @.str.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %call6) #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %line = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 41
  %4 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call6, ptr %line, align 4
  %call11 = tail call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef null) #10
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %lor.lhs.false, label %if.end9.if.then15_crit_edge

if.end9.if.then15_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

lor.lhs.false:                                    ; preds = %if.end9
  %call13 = tail call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef null) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %lor.lhs.false.if.end16_crit_edge, label %lor.lhs.false.if.then15_crit_edge

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

lor.lhs.false.if.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %if.end9.if.then15_crit_edge
  %flags = getelementptr inbounds %struct.mxs_auart_port, ptr %call.i, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags) #10
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %lor.lhs.false.if.end16_crit_edge
  %5 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp19 = icmp ugt i32 %6, 4
  br i1 %cmp19, label %do.end23, label %if.end27

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %6) #13
  br label %cleanup

if.end27:                                         ; preds = %if.end16
  %call29 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #10
  %7 = ptrtoint ptr %call29 to i32
  %devtype = getelementptr inbounds %struct.mxs_auart_port, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %devtype to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %devtype, align 4
  %cmp.i.not.i = icmp eq ptr %call29, inttoptr (i32 2 to ptr)
  br i1 %cmp.i.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end27
  %call1.i = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #10
  %clk.i = getelementptr inbounds %struct.mxs_auart_port, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call1.i, ptr %clk.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then.i.mxs_get_clks.exit_crit_edge, label %if.then.i.if.end33_crit_edge

if.then.i.if.end33_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then.i.mxs_get_clks.exit_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxs_get_clks.exit

if.end.i:                                         ; preds = %if.end27
  %10 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev5, align 4
  %call5.i = tail call ptr @devm_clk_get(ptr noundef %11, ptr noundef nonnull @.str.22) #10
  %clk6.i = getelementptr inbounds %struct.mxs_auart_port, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %clk6.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5.i, ptr %clk6.i, align 4
  %cmp.i80.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  %13 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev5, align 4
  br i1 %cmp.i80.i, label %do.end.i, label %if.end13.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.23) #13
  br label %mxs_get_clks.exit.sink.split

if.end13.i:                                       ; preds = %if.end.i
  %call15.i = tail call ptr @devm_clk_get(ptr noundef %14, ptr noundef nonnull @.str.25) #10
  %clk_ahb.i = getelementptr inbounds %struct.mxs_auart_port, ptr %call.i, i32 0, i32 6
  %15 = ptrtoint ptr %clk_ahb.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call15.i, ptr %clk_ahb.i, align 4
  %cmp.i81.i = icmp ugt ptr %call15.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i81.i, label %do.end21.i, label %if.end25.i

do.end21.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.27) #13
  br label %mxs_get_clks.exit.sink.split

if.end25.i:                                       ; preds = %if.end13.i
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %call15.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end25.i.do.end32.i_crit_edge

if.end25.i.do.end32.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32.i

if.end.i.i:                                       ; preds = %if.end25.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %call15.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end34.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %call15.i) #10
  br label %do.end32.i

do.end32.i:                                       ; preds = %if.then3.i.i, %if.end25.i.do.end32.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.end25.i.do.end32.i_crit_edge ]
  %18 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.30) #13
  br label %cleanup

if.end34.i:                                       ; preds = %if.end.i.i
  %20 = ptrtoint ptr %clk6.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk6.i, align 4
  %22 = ptrtoint ptr %clk_ahb.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk_ahb.i, align 4
  %call37.i = tail call i32 @clk_get_rate(ptr noundef %23) #10
  %call38.i = tail call i32 @clk_set_rate(ptr noundef %21, i32 noundef %call37.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %if.end45.i, label %if.end34.i.disable_clk_ahb.i_crit_edge

if.end34.i.disable_clk_ahb.i_crit_edge:           ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_clk_ahb.i

if.end45.i:                                       ; preds = %if.end34.i
  %24 = ptrtoint ptr %clk6.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk6.i, align 4
  %call.i82.i = tail call i32 @clk_prepare(ptr noundef %25) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82.i)
  %tobool.not.i83.i = icmp eq i32 %call.i82.i, 0
  br i1 %tobool.not.i83.i, label %if.end.i86.i, label %if.end45.i.disable_clk_ahb.i_crit_edge

if.end45.i.disable_clk_ahb.i_crit_edge:           ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_clk_ahb.i

if.end.i86.i:                                     ; preds = %if.end45.i
  %call1.i84.i = tail call i32 @clk_enable(ptr noundef %25) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i84.i)
  %tobool2.not.i85.i = icmp eq i32 %call1.i84.i, 0
  br i1 %tobool2.not.i85.i, label %if.end.i86.i.if.end33_crit_edge, label %if.then3.i87.i

if.end.i86.i.if.end33_crit_edge:                  ; preds = %if.end.i86.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then3.i87.i:                                   ; preds = %if.end.i86.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %25) #10
  br label %disable_clk_ahb.i

disable_clk_ahb.i:                                ; preds = %if.then3.i87.i, %if.end45.i.disable_clk_ahb.i_crit_edge, %if.end34.i.disable_clk_ahb.i_crit_edge
  %.str.36.sink.i = phi ptr [ @.str.33, %if.end34.i.disable_clk_ahb.i_crit_edge ], [ @.str.36, %if.end45.i.disable_clk_ahb.i_crit_edge ], [ @.str.36, %if.then3.i87.i ]
  %err.0.i = phi i32 [ %call38.i, %if.end34.i.disable_clk_ahb.i_crit_edge ], [ %call.i82.i, %if.end45.i.disable_clk_ahb.i_crit_edge ], [ %call1.i84.i, %if.then3.i87.i ]
  %26 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull %.str.36.sink.i) #13
  %28 = ptrtoint ptr %clk_ahb.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk_ahb.i, align 4
  tail call void @clk_disable(ptr noundef %29) #10
  tail call void @clk_unprepare(ptr noundef %29) #10
  br label %cleanup

mxs_get_clks.exit.sink.split:                     ; preds = %do.end21.i, %do.end.i
  %clk6.i.sink = phi ptr [ %clk6.i, %do.end.i ], [ %clk_ahb.i, %do.end21.i ]
  %30 = ptrtoint ptr %clk6.i.sink to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk6.i.sink, align 4
  br label %mxs_get_clks.exit

mxs_get_clks.exit:                                ; preds = %mxs_get_clks.exit.sink.split, %if.then.i.mxs_get_clks.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call1.i, %if.then.i.mxs_get_clks.exit_crit_edge ], [ %31, %mxs_get_clks.exit.sink.split ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %tobool31.not = icmp eq ptr %retval.0.i.in, null
  br i1 %tobool31.not, label %mxs_get_clks.exit.if.end33_crit_edge, label %mxs_get_clks.exit.cleanup_crit_edge

mxs_get_clks.exit.cleanup_crit_edge:              ; preds = %mxs_get_clks.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

mxs_get_clks.exit.if.end33_crit_edge:             ; preds = %mxs_get_clks.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.end33:                                         ; preds = %mxs_get_clks.exit.if.end33_crit_edge, %if.end.i86.i.if.end33_crit_edge, %if.then.i.if.end33_crit_edge
  %call34 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.end33.out_disable_clks_crit_edge, label %if.end37

if.end33.out_disable_clks_crit_edge:              ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_disable_clks

if.end37:                                         ; preds = %if.end33
  %32 = ptrtoint ptr %call34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %call34, align 4
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 43
  %34 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %mapbase, align 4
  %35 = load i32, ptr %call34, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call34, i32 0, i32 1
  %36 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %35
  %add.i = add i32 %sub.i, %37
  %call41 = tail call ptr @ioremap(i32 noundef %35, i32 noundef %add.i) #10
  %membase = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 2
  %38 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call41, ptr %membase, align 4
  %tobool45.not = icmp eq ptr %call41, null
  br i1 %tobool45.not, label %if.end37.out_disable_clks_crit_edge, label %if.end47

if.end37.out_disable_clks_crit_edge:              ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_disable_clks

if.end47:                                         ; preds = %if.end37
  %ops = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 39
  %39 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @mxs_auart_ops, ptr %ops, align 4
  %iotype = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 26
  %40 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 2, ptr %iotype, align 2
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 23
  %41 = ptrtoint ptr %fifosize to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 16, ptr %fifosize, align 4
  %clk = getelementptr inbounds %struct.mxs_auart_port, ptr %call.i, i32 0, i32 5
  %42 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clk, align 4
  %call51 = tail call i32 @clk_get_rate(ptr noundef %43) #10
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 22
  %44 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call51, ptr %uartclk, align 4
  %type = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 38
  %45 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 62, ptr %type, align 4
  %has_sysrq = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 48
  %46 = ptrtoint ptr %has_sysrq to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %has_sysrq, align 4
  %47 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %devtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %48)
  %cmp.i.not.i191 = icmp eq i32 %48, 2
  %spec.select.i = select i1 %cmp.i.not.i191, ptr @vendor_alphascale_asm9260, ptr @vendor_freescale_stmp37xx
  %49 = getelementptr inbounds %struct.mxs_auart_port, ptr %call.i, i32 0, i32 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %spec.select.i, ptr %49, align 4
  %mctrl_prev = getelementptr inbounds %struct.mxs_auart_port, ptr %call.i, i32 0, i32 2
  %51 = ptrtoint ptr %mctrl_prev to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %mctrl_prev, align 4
  %call55 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.end47.out_iounmap_crit_edge, label %if.end58

if.end47.out_iounmap_crit_edge:                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_iounmap

if.end58:                                         ; preds = %if.end47
  %irq60 = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 20
  %52 = ptrtoint ptr %irq60 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call55, ptr %irq60, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %53 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %54, null
  br i1 %tobool.not.i, label %if.end.i192, label %if.end58.dev_name.exit_crit_edge

if.end58.dev_name.exit_crit_edge:                 ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i192:                                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i192, %if.end58.dev_name.exit_crit_edge
  %retval.0.i193 = phi ptr [ %56, %if.end.i192 ], [ %54, %if.end58.dev_name.exit_crit_edge ]
  %call.i194 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call55, ptr noundef nonnull @mxs_auart_irq_handle, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i193, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194)
  %tobool65.not = icmp eq i32 %call.i194, 0
  br i1 %tobool65.not, label %if.end67, label %dev_name.exit.out_iounmap_crit_edge

dev_name.exit.out_iounmap_crit_edge:              ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_iounmap

if.end67:                                         ; preds = %dev_name.exit
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %57 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call69 = tail call fastcc i32 @mxs_auart_init_gpios(ptr noundef nonnull %call.i, ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end76, label %do.end74

do.end74:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #13
  br label %out_iounmap

if.end76:                                         ; preds = %if.end67
  %call77 = tail call fastcc i32 @mxs_auart_request_gpio_irq(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.end76.out_iounmap_crit_edge

if.end76.out_iounmap_crit_edge:                   ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_iounmap

if.end80:                                         ; preds = %if.end76
  %58 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %line, align 4
  %arrayidx = getelementptr [5 x ptr], ptr @auart_port, i32 0, i32 %59
  %60 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i, ptr %arrayidx, align 4
  tail call fastcc void @mxs_auart_reset_deassert(ptr noundef nonnull %call.i)
  %call84 = tail call i32 @uart_add_one_port(ptr noundef nonnull @auart_driver, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end87, label %out_free_qpio_irq

if.end87:                                         ; preds = %if.end80
  %61 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %devtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %62)
  %cmp.i.not = icmp eq i32 %62, 2
  br i1 %cmp.i.not, label %do.end93, label %if.else

do.end93:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.16) #13
  br label %cleanup

if.else:                                          ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %membase, align 4
  %65 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %49, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %arrayidx.i.i = getelementptr i16, ptr %68, i32 9
  %69 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %70 to i32
  %add.ptr.i = getelementptr i8, ptr %64, i32 %conv.i.i
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !146
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #10
  %shr = lshr i32 %72, 24
  %shr100 = lshr i32 %72, 16
  %and101 = and i32 %shr100, 255
  %and102 = and i32 %72, 65535
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %shr, i32 noundef %and101, i32 noundef %and102) #13
  br label %cleanup

out_free_qpio_irq:                                ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mxs_auart_free_gpio_irq(ptr noundef nonnull %call.i)
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %73 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %id, align 4
  %arrayidx104 = getelementptr [5 x ptr], ptr @auart_port, i32 0, i32 %74
  %75 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %arrayidx104, align 4
  br label %out_iounmap

out_iounmap:                                      ; preds = %out_free_qpio_irq, %if.end76.out_iounmap_crit_edge, %do.end74, %dev_name.exit.out_iounmap_crit_edge, %if.end47.out_iounmap_crit_edge
  %ret.0 = phi i32 [ %call.i194, %dev_name.exit.out_iounmap_crit_edge ], [ %call69, %do.end74 ], [ %call77, %if.end76.out_iounmap_crit_edge ], [ %call84, %out_free_qpio_irq ], [ %call55, %if.end47.out_iounmap_crit_edge ]
  %76 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %membase, align 4
  tail call void @iounmap(ptr noundef %77) #10
  br label %out_disable_clks

out_disable_clks:                                 ; preds = %out_iounmap, %if.end37.out_disable_clks_crit_edge, %if.end33.out_disable_clks_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out_iounmap ], [ -6, %if.end33.out_disable_clks_crit_edge ], [ -12, %if.end37.out_disable_clks_crit_edge ]
  %78 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %devtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %79)
  %cmp.i196.not = icmp eq i32 %79, 2
  br i1 %cmp.i196.not, label %if.then109, label %out_disable_clks.cleanup_crit_edge

out_disable_clks.cleanup_crit_edge:               ; preds = %out_disable_clks
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then109:                                       ; preds = %out_disable_clks
  call void @__sanitizer_cov_trace_pc() #12
  %clk110 = getelementptr inbounds %struct.mxs_auart_port, ptr %call.i, i32 0, i32 5
  %80 = ptrtoint ptr %clk110 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %clk110, align 4
  tail call void @clk_disable(ptr noundef %81) #10
  tail call void @clk_unprepare(ptr noundef %81) #10
  %clk_ahb = getelementptr inbounds %struct.mxs_auart_port, ptr %call.i, i32 0, i32 6
  %82 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %clk_ahb, align 4
  tail call void @clk_disable(ptr noundef %83) #10
  tail call void @clk_unprepare(ptr noundef %83) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then109, %out_disable_clks.cleanup_crit_edge, %if.else, %do.end93, %mxs_get_clks.exit.cleanup_crit_edge, %disable_clk_ahb.i, %do.end32.i, %do.end23, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %do.end ], [ -22, %do.end23 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %mxs_get_clks.exit.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %do.end93 ], [ %ret.1, %if.then109 ], [ %ret.1, %out_disable_clks.cleanup_crit_edge ], [ %err.0.i, %disable_clk_ahb.i ], [ %retval.0.i.ph.i, %do.end32.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_auart_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @auart_driver, ptr noundef %1) #10
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %arrayidx = getelementptr [5 x ptr], ptr @auart_port, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  tail call fastcc void @mxs_auart_free_gpio_irq(ptr noundef %1)
  %membase = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase, align 4
  tail call void @iounmap(ptr noundef %6) #10
  %devtype.i = getelementptr inbounds %struct.mxs_auart_port, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %devtype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp.i.not = icmp eq i32 %8, 2
  br i1 %cmp.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %clk = getelementptr inbounds %struct.mxs_auart_port, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %10) #10
  tail call void @clk_unprepare(ptr noundef %10) #10
  %clk_ahb = getelementptr inbounds %struct.mxs_auart_port, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk_ahb, align 4
  tail call void @clk_disable(ptr noundef %12) #10
  tail call void @clk_unprepare(ptr noundef %12) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_auart_irq_handle(i32 noundef %irq, ptr noundef %context) #2 align 64 {
entry:
  %mctrl_temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mctrl_temp) #10
  %mctrl_prev = getelementptr inbounds %struct.mxs_auart_port, ptr %context, i32 0, i32 2
  %0 = ptrtoint ptr %mctrl_prev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mctrl_prev, align 4
  %2 = ptrtoint ptr %mctrl_temp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %mctrl_temp, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %context, i32 0, i32 2
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %vendor.i.i = getelementptr inbounds %struct.mxs_auart_port, ptr %context, i32 0, i32 4
  %5 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vendor.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %arrayidx.i.i = getelementptr i16, ptr %8, i32 7
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %10 to i32
  %add.ptr.i = getelementptr i8, ptr %4, i32 %conv.i.i
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !146
  %12 = shl i32 %11, 24
  %13 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i, align 4
  %15 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vendor.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %arrayidx.i.i66 = getelementptr i16, ptr %18, i32 5
  %19 = ptrtoint ptr %arrayidx.i.i66 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx.i.i66, align 2
  %conv.i.i67 = zext i16 %20 to i32
  %add.ptr.i68 = getelementptr i8, ptr %14, i32 %conv.i.i67
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i68) #10, !srcloc !146
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #10
  %23 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase.i, align 4
  %25 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vendor.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %arrayidx.i.i71 = getelementptr i16, ptr %28, i32 5
  %29 = ptrtoint ptr %arrayidx.i.i71 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx.i.i71, align 2
  %conv.i.i72 = zext i16 %30 to i32
  %add.ptr.i73 = getelementptr i8, ptr %24, i32 %conv.i.i72
  %and = shl i32 %22, 24
  %31 = and i32 %and, 1912602624
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i73, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %31) #10, !srcloc !147
  %gpio_irq = getelementptr inbounds %struct.mxs_auart_port, ptr %context, i32 0, i32 15
  %32 = ptrtoint ptr %gpio_irq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %gpio_irq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %irq)
  %cmp = icmp eq i32 %33, %irq
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %arrayidx3 = getelementptr %struct.mxs_auart_port, ptr %context, i32 0, i32 15, i32 2
  %34 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %irq)
  %cmp4 = icmp eq i32 %35, %irq
  br i1 %cmp4, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false5

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %arrayidx7 = getelementptr %struct.mxs_auart_port, ptr %context, i32 0, i32 15, i32 1
  %36 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %irq)
  %cmp8 = icmp eq i32 %37, %irq
  br i1 %cmp8, label %lor.lhs.false5.if.then_crit_edge, label %lor.lhs.false9

lor.lhs.false5.if.then_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %arrayidx11 = getelementptr %struct.mxs_auart_port, ptr %context, i32 0, i32 15, i32 3
  %38 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %irq)
  %cmp12 = icmp eq i32 %39, %irq
  br i1 %cmp12, label %lor.lhs.false9.if.then_crit_edge, label %lor.lhs.false9.if.end_crit_edge

lor.lhs.false9.if.end_crit_edge:                  ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

lor.lhs.false9.if.then_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false9.if.then_crit_edge, %lor.lhs.false5.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %gpios = getelementptr inbounds %struct.mxs_auart_port, ptr %context, i32 0, i32 14
  %40 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %gpios, align 4
  %call13 = call i32 @mctrl_gpio_get(ptr noundef %41, ptr noundef nonnull %mctrl_temp) #10
  %42 = ptrtoint ptr %mctrl_prev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mctrl_prev, align 4
  %xor.i = xor i32 %43, %call13
  store i32 %call13, ptr %mctrl_prev, align 4
  %and.i = and i32 %xor.i, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %land.lhs.true.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.then
  %ms_irq_enabled.i = getelementptr inbounds %struct.mxs_auart_port, ptr %context, i32 0, i32 16
  %44 = ptrtoint ptr %ms_irq_enabled.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ms_irq_enabled.i, align 4, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool2.not.i = icmp eq i8 %45, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %state.i = getelementptr inbounds %struct.uart_port, ptr %context, i32 0, i32 30
  %46 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %state.i, align 4
  %cmp.not.i = icmp eq ptr %47, null
  br i1 %cmp.not.i, label %land.lhs.true3.i.if.end_crit_edge, label %if.then.i

land.lhs.true3.i.if.end_crit_edge:                ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %land.lhs.true3.i
  %and4.i = and i32 %xor.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then6.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %rng.i = getelementptr inbounds %struct.uart_port, ptr %context, i32 0, i32 31, i32 2
  %48 = ptrtoint ptr %rng.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rng.i, align 4
  %inc.i = add i32 %49, 1
  store i32 %inc.i, ptr %rng.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then6.i, %if.then.i.if.end.i_crit_edge
  %and8.i = and i32 %xor.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.end.i.if.end14.i_crit_edge, label %if.then10.i

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dsr.i = getelementptr inbounds %struct.uart_port, ptr %context, i32 0, i32 31, i32 1
  %50 = ptrtoint ptr %dsr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dsr.i, align 4
  %inc13.i = add i32 %51, 1
  store i32 %inc13.i, ptr %dsr.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then10.i, %if.end.i.if.end14.i_crit_edge
  %and15.i = and i32 %xor.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end14.i.if.end20.i_crit_edge, label %if.then17.i

if.end14.i.if.end20.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %and19.i = and i32 %call13, 64
  call void @uart_handle_dcd_change(ptr noundef %context, i32 noundef %and19.i) #10
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end20.i_crit_edge
  %and21.i = and i32 %xor.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.end20.i.if.end26.i_crit_edge, label %if.then23.i

if.end20.i.if.end26.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

if.then23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  %and25.i = and i32 %call13, 32
  call void @uart_handle_cts_change(ptr noundef %context, i32 noundef %and25.i) #10
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then23.i, %if.end20.i.if.end26.i_crit_edge
  %52 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %state.i, align 4
  %delta_msr_wait.i = getelementptr inbounds %struct.tty_port, ptr %53, i32 0, i32 9
  call void @__wake_up(ptr noundef %delta_msr_wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %if.end26.i, %land.lhs.true3.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %if.then.if.end_crit_edge, %lor.lhs.false9.if.end_crit_edge
  %and15 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool.not = icmp eq i32 %and15, 0
  br i1 %tobool.not, label %if.end.if.end25_crit_edge, label %if.then16

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then16:                                        ; preds = %if.end
  %gpios17 = getelementptr inbounds %struct.mxs_auart_port, ptr %context, i32 0, i32 14
  %54 = ptrtoint ptr %gpios17 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %gpios17, align 4
  %call18 = call ptr @mctrl_gpio_to_gpiod(ptr noundef %55, i32 noundef 0) #10
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %land.lhs.true, label %if.then16.if.end23_crit_edge

if.then16.if.end23_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

land.lhs.true:                                    ; preds = %if.then16
  %ms_irq_enabled = getelementptr inbounds %struct.mxs_auart_port, ptr %context, i32 0, i32 16
  %56 = ptrtoint ptr %ms_irq_enabled to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ms_irq_enabled, align 4, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool20.not = icmp eq i8 %57, 0
  br i1 %tobool20.not, label %land.lhs.true.if.end23_crit_edge, label %if.then21

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %and22 = and i32 %12, 268435456
  call void @uart_handle_cts_change(ptr noundef %context, i32 noundef %and22) #10
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %land.lhs.true.if.end23_crit_edge, %if.then16.if.end23_crit_edge
  %58 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %membase.i, align 4
  %60 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %vendor.i.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %arrayidx.i.i76 = getelementptr i16, ptr %63, i32 5
  %64 = ptrtoint ptr %arrayidx.i.i76 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx.i.i76, align 2
  %conv.i.i77 = zext i16 %65 to i32
  %add.ptr.i78 = getelementptr i8, ptr %59, i32 %conv.i.i77
  %add.ptr1.i79 = getelementptr i8, ptr %add.ptr.i78, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i79, i32 33554432) #10, !srcloc !147
  %and24 = and i32 %22, -3
  br label %if.end25

if.end25:                                         ; preds = %if.end23, %if.end.if.end25_crit_edge
  %istat.0 = phi i32 [ %and24, %if.end23 ], [ %22, %if.end.if.end25_crit_edge ]
  %and26 = and i32 %istat.0, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end33_crit_edge, label %if.then28

if.end25.if.end33_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then28:                                        ; preds = %if.end25
  %flags.i = getelementptr inbounds %struct.mxs_auart_port, ptr %context, i32 0, i32 1
  %66 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags.i, align 4
  %and.i80 = and i32 %67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i80)
  %tobool.i.not = icmp eq i32 %and.i80, 0
  br i1 %tobool.i.not, label %if.then30, label %if.then28.if.end31_crit_edge

if.then28.if.end31_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then30:                                        ; preds = %if.then28
  %68 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %membase.i, align 4
  %70 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %vendor.i.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %arrayidx.i.i11.i = getelementptr i16, ptr %73, i32 7
  %74 = ptrtoint ptr %arrayidx.i.i11.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx.i.i11.i, align 2
  %conv.i.i12.i = zext i16 %75 to i32
  %add.ptr.i13.i = getelementptr i8, ptr %69, i32 %conv.i.i12.i
  %76 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.i) #10, !srcloc !146
  %77 = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not14.i = icmp eq i32 %77, 0
  br i1 %tobool.not14.i, label %if.end.lr.ph.i, label %if.then30.mxs_auart_rx_chars.exit_crit_edge

if.then30.mxs_auart_rx_chars.exit_crit_edge:      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxs_auart_rx_chars.exit

if.end.lr.ph.i:                                   ; preds = %if.then30
  %rx.i.i = getelementptr inbounds %struct.uart_port, ptr %context, i32 0, i32 31, i32 4
  %brk.i.i = getelementptr inbounds %struct.uart_port, ptr %context, i32 0, i32 31, i32 9
  %state1.i.i.i = getelementptr inbounds %struct.uart_port, ptr %context, i32 0, i32 30
  %handle_break.i.i.i = getelementptr inbounds %struct.uart_port, ptr %context, i32 0, i32 17
  %has_sysrq.i.i.i = getelementptr inbounds %struct.uart_port, ptr %context, i32 0, i32 48
  %cons.i.i.i = getelementptr inbounds %struct.uart_port, ptr %context, i32 0, i32 32
  %line.i.i.i = getelementptr inbounds %struct.uart_port, ptr %context, i32 0, i32 41
  %sysrq.i.i.i = getelementptr inbounds %struct.uart_port, ptr %context, i32 0, i32 46
  %flags.i.i.i = getelementptr inbounds %struct.uart_port, ptr %context, i32 0, i32 33
  %parity.i.i = getelementptr inbounds %struct.uart_port, ptr %context, i32 0, i32 31, i32 8
  %frame.i.i = getelementptr inbounds %struct.uart_port, ptr %context, i32 0, i32 31, i32 6
  %read_status_mask.i.i = getelementptr inbounds %struct.uart_port, ptr %context, i32 0, i32 28
  %overrun.i.i = getelementptr inbounds %struct.uart_port, ptr %context, i32 0, i32 31, i32 7
  br label %if.end.i81

if.end.i81:                                       ; preds = %mxs_auart_rx_char.exit.i.if.end.i81_crit_edge, %if.end.lr.ph.i
  %78 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %membase.i, align 4
  %80 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %vendor.i.i, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %arrayidx.i.i.i.i = getelementptr i16, ptr %83, i32 6
  %84 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %arrayidx.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %85 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %79, i32 %conv.i.i.i.i
  %86 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !146
  %87 = lshr i32 %86, 24
  %88 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %membase.i, align 4
  %90 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %vendor.i.i, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  %arrayidx.i.i79.i.i = getelementptr i16, ptr %93, i32 7
  %94 = ptrtoint ptr %arrayidx.i.i79.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %arrayidx.i.i79.i.i, align 2
  %conv.i.i80.i.i = zext i16 %95 to i32
  %add.ptr.i81.i.i = getelementptr i8, ptr %89, i32 %conv.i.i80.i.i
  %96 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i81.i.i) #10, !srcloc !146
  %97 = call i32 @llvm.bswap.i32(i32 %96) #10
  %98 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %rx.i.i, align 4
  %inc.i.i = add i32 %99, 1
  store i32 %inc.i.i, ptr %rx.i.i, align 4
  %and.i.i = and i32 %97, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i81
  %100 = ptrtoint ptr %brk.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %brk.i.i, align 4
  %inc4.i.i = add i32 %101, 1
  store i32 %inc4.i.i, ptr %brk.i.i, align 4
  %102 = ptrtoint ptr %state1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %state1.i.i.i, align 4
  %104 = ptrtoint ptr %handle_break.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %handle_break.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %105, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

if.then.i.i.if.end.i.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void %105(ptr noundef %context) #10
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.then.i.i.if.end.i.i.i_crit_edge
  %106 = ptrtoint ptr %has_sysrq.i.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %has_sysrq.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool3.not.i.i.i = icmp eq i8 %107, 0
  br i1 %tobool3.not.i.i.i, label %if.end.i.i.i.if.end15.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i.i.if.end15.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i.i
  %108 = ptrtoint ptr %cons.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %cons.i.i.i, align 4
  %tobool4.not.i.i.i = icmp eq ptr %109, null
  br i1 %tobool4.not.i.i.i, label %land.lhs.true.i.i.i.if.end15.i.i.i_crit_edge, label %land.lhs.true5.i.i.i

land.lhs.true.i.i.i.if.end15.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i.i.i

land.lhs.true5.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %index.i.i.i = getelementptr inbounds %struct.console, ptr %109, i32 0, i32 9
  %110 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %index.i.i.i, align 2
  %conv7.i.i.i = sext i16 %111 to i32
  %112 = ptrtoint ptr %line.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %line.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %113, i32 %conv7.i.i.i)
  %cmp.i.i.i = icmp eq i32 %113, %conv7.i.i.i
  br i1 %cmp.i.i.i, label %if.then9.i.i.i, label %land.lhs.true5.i.i.i.if.end15.i.i.i_crit_edge

land.lhs.true5.i.i.i.if.end15.i.i.i_crit_edge:    ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i.i.i

if.then9.i.i.i:                                   ; preds = %land.lhs.true5.i.i.i
  %114 = ptrtoint ptr %sysrq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %sysrq.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool10.not.i.i.i = icmp eq i32 %115, 0
  br i1 %tobool10.not.i.i.i, label %uart_handle_break.exit.i.i, label %if.end13.i.i.i

if.end13.i.i.i:                                   ; preds = %if.then9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %116 = ptrtoint ptr %sysrq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %sysrq.i.i.i, align 4
  br label %if.end15.i.i.i

if.end15.i.i.i:                                   ; preds = %if.end13.i.i.i, %land.lhs.true5.i.i.i.if.end15.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.end15.i.i.i_crit_edge, %if.end.i.i.i.if.end15.i.i.i_crit_edge
  %117 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %118, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool16.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool16.not.i.i.i, label %if.end15.i.i.i.if.end24.i.i_crit_edge, label %if.then17.i.i.i

if.end15.i.i.i.if.end24.i.i_crit_edge:            ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i.i

if.then17.i.i.i:                                  ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %tty.i.i.i = getelementptr inbounds %struct.tty_port, ptr %103, i32 0, i32 1
  %119 = ptrtoint ptr %tty.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %tty.i.i.i, align 4
  call void @do_SAK(ptr noundef %120) #10
  br label %if.end24.i.i

uart_handle_break.exit.i.i:                       ; preds = %if.then9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %121 = load volatile i32, ptr @jiffies, align 128
  %add.i.i.i = add i32 %121, 500
  %122 = ptrtoint ptr %sysrq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %add.i.i.i, ptr %sysrq.i.i.i, align 4
  br label %mxs_auart_rx_char.exit.i

if.else.i.i:                                      ; preds = %if.end.i81
  %and9.i.i = and i32 %97, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool10.not.i.i = icmp eq i32 %and9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.else15.i.i, label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %123 = ptrtoint ptr %parity.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %parity.i.i, align 4
  %inc14.i.i = add i32 %124, 1
  store i32 %inc14.i.i, ptr %parity.i.i, align 4
  br label %if.end24.i.i

if.else15.i.i:                                    ; preds = %if.else.i.i
  %and16.i.i = and i32 %97, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i.i)
  %tobool17.not.i.i = icmp eq i32 %and16.i.i, 0
  br i1 %tobool17.not.i.i, label %if.else15.i.i.if.end24.i.i_crit_edge, label %if.then18.i.i

if.else15.i.i.if.end24.i.i_crit_edge:             ; preds = %if.else15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i.i

if.then18.i.i:                                    ; preds = %if.else15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %125 = ptrtoint ptr %frame.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %frame.i.i, align 4
  %inc21.i.i = add i32 %126, 1
  store i32 %inc21.i.i, ptr %frame.i.i, align 4
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then18.i.i, %if.else15.i.i.if.end24.i.i_crit_edge, %if.then11.i.i, %if.then17.i.i.i, %if.end15.i.i.i.if.end24.i.i_crit_edge
  %127 = ptrtoint ptr %read_status_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %read_status_mask.i.i, align 4
  %and26.i.i = and i32 %128, %97
  %and27.i.i = and i32 %and26.i.i, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i.i)
  %tobool28.not.i.i = icmp eq i32 %and27.i.i, 0
  br i1 %tobool28.not.i.i, label %if.else30.i.i, label %if.end24.i.i.if.end40.i.i_crit_edge

if.end24.i.i.if.end40.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.i.i

if.else30.i.i:                                    ; preds = %if.end24.i.i
  %and31.i.i = and i32 %and26.i.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i.i)
  %tobool32.not.i.i = icmp eq i32 %and31.i.i, 0
  br i1 %tobool32.not.i.i, label %if.else34.i.i, label %if.else30.i.i.if.end40.i.i_crit_edge

if.else30.i.i.if.end40.i.i_crit_edge:             ; preds = %if.else30.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.i.i

if.else34.i.i:                                    ; preds = %if.else30.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and35.i.i = lshr i32 %and26.i.i, 15
  %129 = and i32 %and35.i.i, 2
  br label %if.end40.i.i

if.end40.i.i:                                     ; preds = %if.else34.i.i, %if.else30.i.i.if.end40.i.i_crit_edge, %if.end24.i.i.if.end40.i.i_crit_edge
  %flag.0.i.i = phi i32 [ 1, %if.end24.i.i.if.end40.i.i_crit_edge ], [ 3, %if.else30.i.i.if.end40.i.i_crit_edge ], [ %129, %if.else34.i.i ]
  %and41.i.i = and i32 %and26.i.i, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i.i)
  %tobool42.not.i.i = icmp eq i32 %and41.i.i, 0
  br i1 %tobool42.not.i.i, label %if.end40.i.i.if.end47.i.i_crit_edge, label %if.then43.i.i

if.end40.i.i.if.end47.i.i_crit_edge:              ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47.i.i

if.then43.i.i:                                    ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %130 = ptrtoint ptr %overrun.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %overrun.i.i, align 4
  %inc46.i.i = add i32 %131, 1
  store i32 %inc46.i.i, ptr %overrun.i.i, align 4
  br label %if.end47.i.i

if.end47.i.i:                                     ; preds = %if.then43.i.i, %if.end40.i.i.if.end47.i.i_crit_edge
  %132 = ptrtoint ptr %sysrq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %sysrq.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool.not.i83.i.i = icmp eq i32 %133, 0
  br i1 %tobool.not.i83.i.i, label %if.end47.i.i.if.end53.i.i_crit_edge, label %if.end.i84.i.i

if.end47.i.i.if.end53.i.i_crit_edge:              ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53.i.i

if.end.i84.i.i:                                   ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %86)
  %tobool1.not.i.i.i = icmp ult i32 %86, 16777216
  br i1 %tobool1.not.i.i.i, label %if.end.i84.i.i.uart_handle_sysrq_char.exit.thread101.i.i_crit_edge, label %land.lhs.true.i86.i.i

if.end.i84.i.i.uart_handle_sysrq_char.exit.thread101.i.i_crit_edge: ; preds = %if.end.i84.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_handle_sysrq_char.exit.thread101.i.i

land.lhs.true.i86.i.i:                            ; preds = %if.end.i84.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %134 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i = sub i32 %134, %133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i85.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i85.i.i, label %if.then3.i.i.i, label %land.lhs.true.i86.i.i.uart_handle_sysrq_char.exit.thread101.i.i_crit_edge

land.lhs.true.i86.i.i.uart_handle_sysrq_char.exit.thread101.i.i_crit_edge: ; preds = %land.lhs.true.i86.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_handle_sysrq_char.exit.thread101.i.i

if.then3.i.i.i:                                   ; preds = %land.lhs.true.i86.i.i
  %call.i.i.i = call i32 @sysrq_mask() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool4.not.i87.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool4.not.i87.i.i, label %if.end7.i.i.i, label %uart_handle_sysrq_char.exit.i.i

if.end7.i.i.i:                                    ; preds = %if.then3.i.i.i
  %call8.i.i.i = call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %context, i32 noundef %87) #10
  br i1 %call8.i.i.i, label %if.end7.i.i.i.mxs_auart_rx_char.exit.i_crit_edge, label %if.end7.i.i.i.uart_handle_sysrq_char.exit.thread101.i.i_crit_edge

if.end7.i.i.i.uart_handle_sysrq_char.exit.thread101.i.i_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_handle_sysrq_char.exit.thread101.i.i

if.end7.i.i.i.mxs_auart_rx_char.exit.i_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxs_auart_rx_char.exit.i

uart_handle_sysrq_char.exit.thread101.i.i:        ; preds = %if.end7.i.i.i.uart_handle_sysrq_char.exit.thread101.i.i_crit_edge, %land.lhs.true.i86.i.i.uart_handle_sysrq_char.exit.thread101.i.i_crit_edge, %if.end.i84.i.i.uart_handle_sysrq_char.exit.thread101.i.i_crit_edge
  %135 = ptrtoint ptr %sysrq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %sysrq.i.i.i, align 4
  br label %if.end53.i.i

uart_handle_sysrq_char.exit.i.i:                  ; preds = %if.then3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @handle_sysrq(i32 noundef %87) #10
  %136 = ptrtoint ptr %sysrq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %sysrq.i.i.i, align 4
  br label %mxs_auart_rx_char.exit.i

if.end53.i.i:                                     ; preds = %uart_handle_sysrq_char.exit.thread101.i.i, %if.end47.i.i.if.end53.i.i_crit_edge
  call void @uart_insert_char(ptr noundef %context, i32 noundef %and26.i.i, i32 noundef 524288, i32 noundef %87, i32 noundef %flag.0.i.i) #10
  br label %mxs_auart_rx_char.exit.i

mxs_auart_rx_char.exit.i:                         ; preds = %if.end53.i.i, %uart_handle_sysrq_char.exit.i.i, %if.end7.i.i.i.mxs_auart_rx_char.exit.i_crit_edge, %uart_handle_break.exit.i.i
  %stat.0.i.i = phi i32 [ %97, %uart_handle_break.exit.i.i ], [ %and26.i.i, %uart_handle_sysrq_char.exit.i.i ], [ %and26.i.i, %if.end53.i.i ], [ %and26.i.i, %if.end7.i.i.i.mxs_auart_rx_char.exit.i_crit_edge ]
  %137 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %membase.i, align 4
  %139 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %vendor.i.i, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %140, align 4
  %arrayidx.i.i91.i.i = getelementptr i16, ptr %142, i32 7
  %143 = ptrtoint ptr %arrayidx.i.i91.i.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %arrayidx.i.i91.i.i, align 2
  %conv.i.i92.i.i = zext i16 %144 to i32
  %add.ptr.i93.i.i = getelementptr i8, ptr %138, i32 %conv.i.i92.i.i
  %145 = call i32 @llvm.bswap.i32(i32 %stat.0.i.i) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93.i.i, i32 %145) #10, !srcloc !147
  %146 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %membase.i, align 4
  %148 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %vendor.i.i, align 4
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %149, align 4
  %arrayidx.i.i.i = getelementptr i16, ptr %151, i32 7
  %152 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %arrayidx.i.i.i, align 2
  %conv.i.i.i = zext i16 %153 to i32
  %add.ptr.i.i = getelementptr i8, ptr %147, i32 %conv.i.i.i
  %154 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !146
  %155 = and i32 %154, 1
  %tobool.not.i82 = icmp eq i32 %155, 0
  br i1 %tobool.not.i82, label %mxs_auart_rx_char.exit.i.if.end.i81_crit_edge, label %mxs_auart_rx_char.exit.i.mxs_auart_rx_chars.exit_crit_edge

mxs_auart_rx_char.exit.i.mxs_auart_rx_chars.exit_crit_edge: ; preds = %mxs_auart_rx_char.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxs_auart_rx_chars.exit

mxs_auart_rx_char.exit.i.if.end.i81_crit_edge:    ; preds = %mxs_auart_rx_char.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i81

mxs_auart_rx_chars.exit:                          ; preds = %mxs_auart_rx_char.exit.i.mxs_auart_rx_chars.exit_crit_edge, %if.then30.mxs_auart_rx_chars.exit_crit_edge
  %.lcssa.i = phi i32 [ %76, %if.then30.mxs_auart_rx_chars.exit_crit_edge ], [ %154, %mxs_auart_rx_char.exit.i.mxs_auart_rx_chars.exit_crit_edge ]
  %156 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %membase.i, align 4
  %158 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %vendor.i.i, align 4
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %159, align 4
  %arrayidx.i.i8.i = getelementptr i16, ptr %161, i32 7
  %162 = ptrtoint ptr %arrayidx.i.i8.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %arrayidx.i.i8.i, align 2
  %conv.i.i9.i = zext i16 %163 to i32
  %add.ptr.i10.i = getelementptr i8, ptr %157, i32 %conv.i.i9.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %.lcssa.i) #10, !srcloc !147
  %state.i83 = getelementptr inbounds %struct.uart_port, ptr %context, i32 0, i32 30
  %164 = ptrtoint ptr %state.i83 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %state.i83, align 4
  call void @tty_flip_buffer_push(ptr noundef %165) #10
  br label %if.end31

if.end31:                                         ; preds = %mxs_auart_rx_chars.exit, %if.then28.if.end31_crit_edge
  %and32 = and i32 %istat.0, -81
  br label %if.end33

if.end33:                                         ; preds = %if.end31, %if.end25.if.end33_crit_edge
  %istat.1 = phi i32 [ %and32, %if.end31 ], [ %istat.0, %if.end25.if.end33_crit_edge ]
  %and34 = and i32 %istat.1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end33.if.end38_crit_edge, label %if.then36

if.end33.if.end38_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @mxs_auart_tx_chars(ptr noundef %context)
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end33.if.end38_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mctrl_temp) #10
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxs_auart_init_gpios(ptr noundef %s, ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mctrl_gpio_init_noauto(ptr noundef %dev, i32 noundef 0) #10
  %gpios = getelementptr inbounds %struct.mxs_auart_port, ptr %s, i32 0, i32 14
  %0 = ptrtoint ptr %gpios to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %gpios, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call ptr @mctrl_gpio_to_gpiod(ptr noundef %call, i32 noundef 4) #10
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.if.then10_crit_edge

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

lor.lhs.false:                                    ; preds = %if.end
  %2 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpios, align 4
  %call8 = tail call ptr @mctrl_gpio_to_gpiod(ptr noundef %3, i32 noundef 0) #10
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %lor.lhs.false.if.end16_crit_edge, label %lor.lhs.false.if.then10_crit_edge

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

lor.lhs.false.if.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %if.end.if.then10_crit_edge
  %flags = getelementptr inbounds %struct.mxs_auart_port, ptr %s, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool12.not = icmp eq i32 %6, 0
  br i1 %tobool12.not, label %if.then10.if.end14_crit_edge, label %do.end

if.then10.if.end14_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

do.end:                                           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.55) #13
  br label %if.end14

if.end14:                                         ; preds = %do.end, %if.then10.if.end14_crit_edge
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags) #10
  br label %if.end16

if.end16:                                         ; preds = %if.end14, %lor.lhs.false.if.end16_crit_edge
  %7 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gpios, align 4
  %call18 = tail call ptr @mctrl_gpio_to_gpiod(ptr noundef %8, i32 noundef 0) #10
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end16.for.inc_crit_edge, label %land.lhs.true

if.end16.for.inc_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end16
  %call20 = tail call i32 @gpiod_get_direction(ptr noundef nonnull %call18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call20)
  %cmp21 = icmp eq i32 %call20, 1
  br i1 %cmp21, label %if.then22, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call23 = tail call i32 @gpiod_to_irq(ptr noundef nonnull %call18) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then22, %land.lhs.true.for.inc_crit_edge, %if.end16.for.inc_crit_edge
  %call23.sink = phi i32 [ %call23, %if.then22 ], [ -22, %land.lhs.true.for.inc_crit_edge ], [ -22, %if.end16.for.inc_crit_edge ]
  %arrayidx = getelementptr %struct.mxs_auart_port, ptr %s, i32 0, i32 15, i32 0
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call23.sink, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gpios, align 4
  %call18.1 = tail call ptr @mctrl_gpio_to_gpiod(ptr noundef %11, i32 noundef 1) #10
  %tobool19.not.1 = icmp eq ptr %call18.1, null
  br i1 %tobool19.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %call20.1 = tail call i32 @gpiod_get_direction(ptr noundef nonnull %call18.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call20.1)
  %cmp21.1 = icmp eq i32 %call20.1, 1
  br i1 %cmp21.1, label %if.then22.1, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then22.1:                                      ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #12
  %call23.1 = tail call i32 @gpiod_to_irq(ptr noundef nonnull %call18.1) #10
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then22.1, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %.sink = phi i32 [ %call23.1, %if.then22.1 ], [ -22, %land.lhs.true.1.for.inc.1_crit_edge ], [ -22, %for.inc.for.inc.1_crit_edge ]
  %arrayidx25.1 = getelementptr %struct.mxs_auart_port, ptr %s, i32 0, i32 15, i32 1
  %12 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %arrayidx25.1, align 4
  %13 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpios, align 4
  %call18.2 = tail call ptr @mctrl_gpio_to_gpiod(ptr noundef %14, i32 noundef 2) #10
  %tobool19.not.2 = icmp eq ptr %call18.2, null
  br i1 %tobool19.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %call20.2 = tail call i32 @gpiod_get_direction(ptr noundef nonnull %call18.2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call20.2)
  %cmp21.2 = icmp eq i32 %call20.2, 1
  br i1 %cmp21.2, label %if.then22.2, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then22.2:                                      ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #12
  %call23.2 = tail call i32 @gpiod_to_irq(ptr noundef nonnull %call18.2) #10
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then22.2, %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %.sink47 = phi i32 [ %call23.2, %if.then22.2 ], [ -22, %land.lhs.true.2.for.inc.2_crit_edge ], [ -22, %for.inc.1.for.inc.2_crit_edge ]
  %arrayidx25.2 = getelementptr %struct.mxs_auart_port, ptr %s, i32 0, i32 15, i32 2
  %15 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink47, ptr %arrayidx25.2, align 4
  %16 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gpios, align 4
  %call18.3 = tail call ptr @mctrl_gpio_to_gpiod(ptr noundef %17, i32 noundef 3) #10
  %tobool19.not.3 = icmp eq ptr %call18.3, null
  br i1 %tobool19.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %call20.3 = tail call i32 @gpiod_get_direction(ptr noundef nonnull %call18.3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call20.3)
  %cmp21.3 = icmp eq i32 %call20.3, 1
  br i1 %cmp21.3, label %if.then22.3, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.then22.3:                                      ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #12
  %call23.3 = tail call i32 @gpiod_to_irq(ptr noundef nonnull %call18.3) #10
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then22.3, %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %.sink48 = phi i32 [ %call23.3, %if.then22.3 ], [ -22, %land.lhs.true.3.for.inc.3_crit_edge ], [ -22, %for.inc.2.for.inc.3_crit_edge ]
  %arrayidx25.3 = getelementptr %struct.mxs_auart_port, ptr %s, i32 0, i32 15, i32 3
  %18 = ptrtoint ptr %arrayidx25.3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink48, ptr %arrayidx25.3, align 4
  %19 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %gpios, align 4
  %call18.4 = tail call ptr @mctrl_gpio_to_gpiod(ptr noundef %20, i32 noundef 4) #10
  %tobool19.not.4 = icmp eq ptr %call18.4, null
  br i1 %tobool19.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %call20.4 = tail call i32 @gpiod_get_direction(ptr noundef nonnull %call18.4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call20.4)
  %cmp21.4 = icmp eq i32 %call20.4, 1
  br i1 %cmp21.4, label %if.then22.4, label %land.lhs.true.4.for.inc.4_crit_edge

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.then22.4:                                      ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #12
  %call23.4 = tail call i32 @gpiod_to_irq(ptr noundef nonnull %call18.4) #10
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then22.4, %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %.sink49 = phi i32 [ %call23.4, %if.then22.4 ], [ -22, %land.lhs.true.4.for.inc.4_crit_edge ], [ -22, %for.inc.3.for.inc.4_crit_edge ]
  %arrayidx25.4 = getelementptr %struct.mxs_auart_port, ptr %s, i32 0, i32 15, i32 4
  %21 = ptrtoint ptr %arrayidx25.4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink49, ptr %arrayidx25.4, align 4
  %22 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %gpios, align 4
  %call18.5 = tail call ptr @mctrl_gpio_to_gpiod(ptr noundef %23, i32 noundef 5) #10
  %tobool19.not.5 = icmp eq ptr %call18.5, null
  br i1 %tobool19.not.5, label %for.inc.4.if.else.5_crit_edge, label %land.lhs.true.5

for.inc.4.if.else.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %call20.5 = tail call i32 @gpiod_get_direction(ptr noundef nonnull %call18.5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call20.5)
  %cmp21.5 = icmp eq i32 %call20.5, 1
  br i1 %cmp21.5, label %if.then22.5, label %land.lhs.true.5.if.else.5_crit_edge

land.lhs.true.5.if.else.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.5

if.then22.5:                                      ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #12
  %call23.5 = tail call i32 @gpiod_to_irq(ptr noundef nonnull %call18.5) #10
  %arrayidx.5 = getelementptr %struct.mxs_auart_port, ptr %s, i32 0, i32 15, i32 5
  %24 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call23.5, ptr %arrayidx.5, align 4
  br label %cleanup

if.else.5:                                        ; preds = %land.lhs.true.5.if.else.5_crit_edge, %for.inc.4.if.else.5_crit_edge
  %arrayidx25.5 = getelementptr %struct.mxs_auart_port, ptr %s, i32 0, i32 15, i32 5
  %25 = ptrtoint ptr %arrayidx25.5 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -22, ptr %arrayidx25.5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else.5, %if.then22.5, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ 0, %if.else.5 ], [ 0, %if.then22.5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxs_auart_request_gpio_irq(ptr noundef %s) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_irq = getelementptr inbounds %struct.mxs_auart_port, ptr %s, i32 0, i32 15
  %dev = getelementptr inbounds %struct.mxs_auart_port, ptr %s, i32 0, i32 7
  %0 = ptrtoint ptr %gpio_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gpio_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %entry
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 0, i32 noundef 4096) #10
  %2 = ptrtoint ptr %gpio_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio_irq, align 4
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %if.end.dev_name.exit_crit_edge ]
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef nonnull @mxs_auart_irq_handle, ptr noundef null, i32 noundef 3, ptr noundef %retval.0.i, ptr noundef %s) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %dev_name.exit.for.inc_crit_edge, label %dev_name.exit.for.inc.thread_crit_edge

dev_name.exit.for.inc.thread_crit_edge:           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.thread

dev_name.exit.for.inc_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc.thread:                                   ; preds = %dev_name.exit.5.for.inc.thread_crit_edge, %dev_name.exit.4.for.inc.thread_crit_edge, %dev_name.exit.3.for.inc.thread_crit_edge, %dev_name.exit.2.for.inc.thread_crit_edge, %dev_name.exit.1.for.inc.thread_crit_edge, %dev_name.exit.for.inc.thread_crit_edge
  %cmp12.not = phi i1 [ false, %dev_name.exit.5.for.inc.thread_crit_edge ], [ false, %dev_name.exit.4.for.inc.thread_crit_edge ], [ false, %dev_name.exit.3.for.inc.thread_crit_edge ], [ false, %dev_name.exit.2.for.inc.thread_crit_edge ], [ false, %dev_name.exit.1.for.inc.thread_crit_edge ], [ true, %dev_name.exit.for.inc.thread_crit_edge ]
  %i.041.lcssa = phi i32 [ 5, %dev_name.exit.5.for.inc.thread_crit_edge ], [ 4, %dev_name.exit.4.for.inc.thread_crit_edge ], [ 3, %dev_name.exit.3.for.inc.thread_crit_edge ], [ 2, %dev_name.exit.2.for.inc.thread_crit_edge ], [ 1, %dev_name.exit.1.for.inc.thread_crit_edge ], [ 0, %dev_name.exit.for.inc.thread_crit_edge ]
  %arrayidx.lcssa = phi ptr [ %arrayidx.5, %dev_name.exit.5.for.inc.thread_crit_edge ], [ %arrayidx.4, %dev_name.exit.4.for.inc.thread_crit_edge ], [ %arrayidx.3, %dev_name.exit.3.for.inc.thread_crit_edge ], [ %arrayidx.2, %dev_name.exit.2.for.inc.thread_crit_edge ], [ %arrayidx.1, %dev_name.exit.1.for.inc.thread_crit_edge ], [ %gpio_irq, %dev_name.exit.for.inc.thread_crit_edge ]
  %call.i.lcssa = phi i32 [ %call.i.5, %dev_name.exit.5.for.inc.thread_crit_edge ], [ %call.i.4, %dev_name.exit.4.for.inc.thread_crit_edge ], [ %call.i.3, %dev_name.exit.3.for.inc.thread_crit_edge ], [ %call.i.2, %dev_name.exit.2.for.inc.thread_crit_edge ], [ %call.i.1, %dev_name.exit.1.for.inc.thread_crit_edge ], [ %call.i, %dev_name.exit.for.inc.thread_crit_edge ]
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %12 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.lcssa, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef %13) #13
  %arrayidx14 = getelementptr i32, ptr %gpio_irq, i32 %i.041.lcssa
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp15 = icmp sgt i32 %15, -1
  br i1 %cmp15, label %if.then16, label %for.inc.thread.land.rhs11.backedge_crit_edge

for.inc.thread.land.rhs11.backedge_crit_edge:     ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs11.backedge

for.inc:                                          ; preds = %dev_name.exit.for.inc_crit_edge, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.mxs_auart_port, ptr %s, i32 0, i32 15, i32 1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1.1 = icmp slt i32 %17, 0
  br i1 %cmp1.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  tail call void @irq_modify_status(i32 noundef %17, i32 noundef 0, i32 noundef 4096) #10
  %18 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.1, align 4
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %init_name.i.1 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %init_name.i.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i.1, align 8
  %tobool.not.i.1 = icmp eq ptr %23, null
  br i1 %tobool.not.i.1, label %if.end.i.1, label %if.end.1.dev_name.exit.1_crit_edge

if.end.1.dev_name.exit.1_crit_edge:               ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.1

if.end.i.1:                                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 4
  br label %dev_name.exit.1

dev_name.exit.1:                                  ; preds = %if.end.i.1, %if.end.1.dev_name.exit.1_crit_edge
  %retval.0.i.1 = phi ptr [ %25, %if.end.i.1 ], [ %23, %if.end.1.dev_name.exit.1_crit_edge ]
  %call.i.1 = tail call i32 @request_threaded_irq(i32 noundef %19, ptr noundef nonnull @mxs_auart_irq_handle, ptr noundef null, i32 noundef 3, ptr noundef %retval.0.i.1, ptr noundef %s) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool5.not.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool5.not.1, label %dev_name.exit.1.for.inc.1_crit_edge, label %dev_name.exit.1.for.inc.thread_crit_edge

dev_name.exit.1.for.inc.thread_crit_edge:         ; preds = %dev_name.exit.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.thread

dev_name.exit.1.for.inc.1_crit_edge:              ; preds = %dev_name.exit.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

for.inc.1:                                        ; preds = %dev_name.exit.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.mxs_auart_port, ptr %s, i32 0, i32 15, i32 2
  %26 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp1.2 = icmp slt i32 %27, 0
  br i1 %cmp1.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  tail call void @irq_modify_status(i32 noundef %27, i32 noundef 0, i32 noundef 4096) #10
  %28 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.2, align 4
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %init_name.i.2 = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %init_name.i.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i.2, align 8
  %tobool.not.i.2 = icmp eq ptr %33, null
  br i1 %tobool.not.i.2, label %if.end.i.2, label %if.end.2.dev_name.exit.2_crit_edge

if.end.2.dev_name.exit.2_crit_edge:               ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.2

if.end.i.2:                                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %31, align 4
  br label %dev_name.exit.2

dev_name.exit.2:                                  ; preds = %if.end.i.2, %if.end.2.dev_name.exit.2_crit_edge
  %retval.0.i.2 = phi ptr [ %35, %if.end.i.2 ], [ %33, %if.end.2.dev_name.exit.2_crit_edge ]
  %call.i.2 = tail call i32 @request_threaded_irq(i32 noundef %29, ptr noundef nonnull @mxs_auart_irq_handle, ptr noundef null, i32 noundef 3, ptr noundef %retval.0.i.2, ptr noundef %s) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool5.not.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool5.not.2, label %dev_name.exit.2.for.inc.2_crit_edge, label %dev_name.exit.2.for.inc.thread_crit_edge

dev_name.exit.2.for.inc.thread_crit_edge:         ; preds = %dev_name.exit.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.thread

dev_name.exit.2.for.inc.2_crit_edge:              ; preds = %dev_name.exit.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

for.inc.2:                                        ; preds = %dev_name.exit.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.mxs_auart_port, ptr %s, i32 0, i32 15, i32 3
  %36 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp1.3 = icmp slt i32 %37, 0
  br i1 %cmp1.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  tail call void @irq_modify_status(i32 noundef %37, i32 noundef 0, i32 noundef 4096) #10
  %38 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.3, align 4
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  %init_name.i.3 = getelementptr inbounds %struct.device, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %init_name.i.3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %init_name.i.3, align 8
  %tobool.not.i.3 = icmp eq ptr %43, null
  br i1 %tobool.not.i.3, label %if.end.i.3, label %if.end.3.dev_name.exit.3_crit_edge

if.end.3.dev_name.exit.3_crit_edge:               ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.3

if.end.i.3:                                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %41, align 4
  br label %dev_name.exit.3

dev_name.exit.3:                                  ; preds = %if.end.i.3, %if.end.3.dev_name.exit.3_crit_edge
  %retval.0.i.3 = phi ptr [ %45, %if.end.i.3 ], [ %43, %if.end.3.dev_name.exit.3_crit_edge ]
  %call.i.3 = tail call i32 @request_threaded_irq(i32 noundef %39, ptr noundef nonnull @mxs_auart_irq_handle, ptr noundef null, i32 noundef 3, ptr noundef %retval.0.i.3, ptr noundef %s) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %tobool5.not.3 = icmp eq i32 %call.i.3, 0
  br i1 %tobool5.not.3, label %dev_name.exit.3.for.inc.3_crit_edge, label %dev_name.exit.3.for.inc.thread_crit_edge

dev_name.exit.3.for.inc.thread_crit_edge:         ; preds = %dev_name.exit.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.thread

dev_name.exit.3.for.inc.3_crit_edge:              ; preds = %dev_name.exit.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

for.inc.3:                                        ; preds = %dev_name.exit.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.mxs_auart_port, ptr %s, i32 0, i32 15, i32 4
  %46 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp1.4 = icmp slt i32 %47, 0
  br i1 %cmp1.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.end.4:                                         ; preds = %for.inc.3
  tail call void @irq_modify_status(i32 noundef %47, i32 noundef 0, i32 noundef 4096) #10
  %48 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.4, align 4
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 4
  %init_name.i.4 = getelementptr inbounds %struct.device, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %init_name.i.4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %init_name.i.4, align 8
  %tobool.not.i.4 = icmp eq ptr %53, null
  br i1 %tobool.not.i.4, label %if.end.i.4, label %if.end.4.dev_name.exit.4_crit_edge

if.end.4.dev_name.exit.4_crit_edge:               ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.4

if.end.i.4:                                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %51, align 4
  br label %dev_name.exit.4

dev_name.exit.4:                                  ; preds = %if.end.i.4, %if.end.4.dev_name.exit.4_crit_edge
  %retval.0.i.4 = phi ptr [ %55, %if.end.i.4 ], [ %53, %if.end.4.dev_name.exit.4_crit_edge ]
  %call.i.4 = tail call i32 @request_threaded_irq(i32 noundef %49, ptr noundef nonnull @mxs_auart_irq_handle, ptr noundef null, i32 noundef 3, ptr noundef %retval.0.i.4, ptr noundef %s) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4)
  %tobool5.not.4 = icmp eq i32 %call.i.4, 0
  br i1 %tobool5.not.4, label %dev_name.exit.4.for.inc.4_crit_edge, label %dev_name.exit.4.for.inc.thread_crit_edge

dev_name.exit.4.for.inc.thread_crit_edge:         ; preds = %dev_name.exit.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.thread

dev_name.exit.4.for.inc.4_crit_edge:              ; preds = %dev_name.exit.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

for.inc.4:                                        ; preds = %dev_name.exit.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.mxs_auart_port, ptr %s, i32 0, i32 15, i32 5
  %56 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp1.5 = icmp slt i32 %57, 0
  br i1 %cmp1.5, label %for.inc.4.while.end_crit_edge, label %if.end.5

for.inc.4.while.end_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end.5:                                         ; preds = %for.inc.4
  tail call void @irq_modify_status(i32 noundef %57, i32 noundef 0, i32 noundef 4096) #10
  %58 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.5, align 4
  %60 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev, align 4
  %init_name.i.5 = getelementptr inbounds %struct.device, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %init_name.i.5 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %init_name.i.5, align 8
  %tobool.not.i.5 = icmp eq ptr %63, null
  br i1 %tobool.not.i.5, label %if.end.i.5, label %if.end.5.dev_name.exit.5_crit_edge

if.end.5.dev_name.exit.5_crit_edge:               ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.5

if.end.i.5:                                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %61, align 4
  br label %dev_name.exit.5

dev_name.exit.5:                                  ; preds = %if.end.i.5, %if.end.5.dev_name.exit.5_crit_edge
  %retval.0.i.5 = phi ptr [ %65, %if.end.i.5 ], [ %63, %if.end.5.dev_name.exit.5_crit_edge ]
  %call.i.5 = tail call i32 @request_threaded_irq(i32 noundef %59, ptr noundef nonnull @mxs_auart_irq_handle, ptr noundef null, i32 noundef 3, ptr noundef %retval.0.i.5, ptr noundef %s) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.5)
  %tobool5.not.5 = icmp eq i32 %call.i.5, 0
  br i1 %tobool5.not.5, label %dev_name.exit.5.while.end_crit_edge, label %dev_name.exit.5.for.inc.thread_crit_edge

dev_name.exit.5.for.inc.thread_crit_edge:         ; preds = %dev_name.exit.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.thread

dev_name.exit.5.while.end_crit_edge:              ; preds = %dev_name.exit.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.then16:                                        ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #12
  %call18 = tail call ptr @free_irq(i32 noundef %15, ptr noundef %s) #10
  br label %land.rhs11.backedge

land.rhs11.backedge:                              ; preds = %if.then16, %for.inc.thread.land.rhs11.backedge_crit_edge
  %dec = add nsw i32 %i.041.lcssa, -1
  br i1 %cmp12.not, label %land.rhs11.backedge.while.end_crit_edge, label %while.body.1

land.rhs11.backedge.while.end_crit_edge:          ; preds = %land.rhs11.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.1:                                     ; preds = %land.rhs11.backedge
  %arrayidx14.1 = getelementptr i32, ptr %gpio_irq, i32 %dec
  %66 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx14.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %67)
  %cmp15.1 = icmp sgt i32 %67, -1
  br i1 %cmp15.1, label %if.then16.1, label %while.body.1.land.rhs11.backedge.1_crit_edge

while.body.1.land.rhs11.backedge.1_crit_edge:     ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs11.backedge.1

if.then16.1:                                      ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #12
  %call18.1 = tail call ptr @free_irq(i32 noundef %67, ptr noundef %s) #10
  br label %land.rhs11.backedge.1

land.rhs11.backedge.1:                            ; preds = %if.then16.1, %while.body.1.land.rhs11.backedge.1_crit_edge
  %dec.1 = add nsw i32 %i.041.lcssa, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp12.not.1 = icmp eq i32 %dec, 0
  br i1 %cmp12.not.1, label %land.rhs11.backedge.1.while.end_crit_edge, label %while.body.2

land.rhs11.backedge.1.while.end_crit_edge:        ; preds = %land.rhs11.backedge.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.2:                                     ; preds = %land.rhs11.backedge.1
  %arrayidx14.2 = getelementptr i32, ptr %gpio_irq, i32 %dec.1
  %68 = ptrtoint ptr %arrayidx14.2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx14.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %69)
  %cmp15.2 = icmp sgt i32 %69, -1
  br i1 %cmp15.2, label %if.then16.2, label %while.body.2.land.rhs11.backedge.2_crit_edge

while.body.2.land.rhs11.backedge.2_crit_edge:     ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs11.backedge.2

if.then16.2:                                      ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #12
  %call18.2 = tail call ptr @free_irq(i32 noundef %69, ptr noundef %s) #10
  br label %land.rhs11.backedge.2

land.rhs11.backedge.2:                            ; preds = %if.then16.2, %while.body.2.land.rhs11.backedge.2_crit_edge
  %dec.2 = add nsw i32 %i.041.lcssa, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.1)
  %cmp12.not.2 = icmp eq i32 %dec.1, 0
  br i1 %cmp12.not.2, label %land.rhs11.backedge.2.while.end_crit_edge, label %while.body.3

land.rhs11.backedge.2.while.end_crit_edge:        ; preds = %land.rhs11.backedge.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.3:                                     ; preds = %land.rhs11.backedge.2
  %arrayidx14.3 = getelementptr i32, ptr %gpio_irq, i32 %dec.2
  %70 = ptrtoint ptr %arrayidx14.3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx14.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %71)
  %cmp15.3 = icmp sgt i32 %71, -1
  br i1 %cmp15.3, label %if.then16.3, label %while.body.3.land.rhs11.backedge.3_crit_edge

while.body.3.land.rhs11.backedge.3_crit_edge:     ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs11.backedge.3

if.then16.3:                                      ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #12
  %call18.3 = tail call ptr @free_irq(i32 noundef %71, ptr noundef %s) #10
  br label %land.rhs11.backedge.3

land.rhs11.backedge.3:                            ; preds = %if.then16.3, %while.body.3.land.rhs11.backedge.3_crit_edge
  %dec.3 = add nsw i32 %i.041.lcssa, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.2)
  %cmp12.not.3 = icmp eq i32 %dec.2, 0
  br i1 %cmp12.not.3, label %land.rhs11.backedge.3.while.end_crit_edge, label %while.body.4

land.rhs11.backedge.3.while.end_crit_edge:        ; preds = %land.rhs11.backedge.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.4:                                     ; preds = %land.rhs11.backedge.3
  %arrayidx14.4 = getelementptr i32, ptr %gpio_irq, i32 %dec.3
  %72 = ptrtoint ptr %arrayidx14.4 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx14.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %73)
  %cmp15.4 = icmp sgt i32 %73, -1
  br i1 %cmp15.4, label %if.then16.4, label %while.body.4.land.rhs11.backedge.4_crit_edge

while.body.4.land.rhs11.backedge.4_crit_edge:     ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs11.backedge.4

if.then16.4:                                      ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #12
  %call18.4 = tail call ptr @free_irq(i32 noundef %73, ptr noundef %s) #10
  br label %land.rhs11.backedge.4

land.rhs11.backedge.4:                            ; preds = %if.then16.4, %while.body.4.land.rhs11.backedge.4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.3)
  %cmp12.not.4 = icmp eq i32 %dec.3, 0
  br i1 %cmp12.not.4, label %land.rhs11.backedge.4.while.end_crit_edge, label %while.body.5

land.rhs11.backedge.4.while.end_crit_edge:        ; preds = %land.rhs11.backedge.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.5:                                     ; preds = %land.rhs11.backedge.4
  %dec.4 = add nsw i32 %i.041.lcssa, -5
  %arrayidx14.5 = getelementptr i32, ptr %gpio_irq, i32 %dec.4
  %74 = ptrtoint ptr %arrayidx14.5 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx14.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %75)
  %cmp15.5 = icmp sgt i32 %75, -1
  br i1 %cmp15.5, label %if.then16.5, label %while.body.5.while.end_crit_edge

while.body.5.while.end_crit_edge:                 ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.then16.5:                                      ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #12
  %call18.5 = tail call ptr @free_irq(i32 noundef %75, ptr noundef %s) #10
  br label %while.end

while.end:                                        ; preds = %if.then16.5, %while.body.5.while.end_crit_edge, %land.rhs11.backedge.4.while.end_crit_edge, %land.rhs11.backedge.3.while.end_crit_edge, %land.rhs11.backedge.2.while.end_crit_edge, %land.rhs11.backedge.1.while.end_crit_edge, %land.rhs11.backedge.while.end_crit_edge, %dev_name.exit.5.while.end_crit_edge, %for.inc.4.while.end_crit_edge
  %err.14853 = phi i32 [ 0, %dev_name.exit.5.while.end_crit_edge ], [ 0, %for.inc.4.while.end_crit_edge ], [ %call.i.lcssa, %while.body.5.while.end_crit_edge ], [ %call.i.lcssa, %if.then16.5 ], [ %call.i.lcssa, %land.rhs11.backedge.4.while.end_crit_edge ], [ %call.i.lcssa, %land.rhs11.backedge.3.while.end_crit_edge ], [ %call.i.lcssa, %land.rhs11.backedge.2.while.end_crit_edge ], [ %call.i.lcssa, %land.rhs11.backedge.1.while.end_crit_edge ], [ %call.i.lcssa, %land.rhs11.backedge.while.end_crit_edge ]
  ret i32 %err.14853
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxs_auart_reset_deassert(ptr nocapture noundef readonly %s) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %s, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %vendor.i.i = getelementptr inbounds %struct.mxs_auart_port, ptr %s, i32 0, i32 4
  %2 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vendor.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 2
  %conv.i.i = zext i16 %7 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 128) #10, !srcloc !147
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %8 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i, align 4
  %10 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vendor.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %13, align 2
  %conv.i.i6 = zext i16 %15 to i32
  %add.ptr.i7 = getelementptr i8, ptr %9, i32 %conv.i.i6
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7) #10, !srcloc !146
  %.mask = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool.not = icmp eq i32 %.mask, 0
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 644244) #10
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, 10000
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge
  %18 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i, align 4
  %20 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vendor.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %23, align 2
  %conv.i.i10 = zext i16 %25 to i32
  %add.ptr.i11 = getelementptr i8, ptr %19, i32 %conv.i.i10
  %add.ptr1.i12 = getelementptr i8, ptr %add.ptr.i11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i12, i32 64) #10, !srcloc !147
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxs_auart_free_gpio_irq(ptr noundef %s) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.mxs_auart_port, ptr %s, i32 0, i32 15, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp1 = icmp sgt i32 %1, -1
  br i1 %cmp1, label %if.then, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call ptr @free_irq(i32 noundef %1, ptr noundef %s) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.mxs_auart_port, ptr %s, i32 0, i32 15, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp1.1 = icmp sgt i32 %3, -1
  br i1 %cmp1.1, label %if.then.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %call.1 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %s) #10
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.mxs_auart_port, ptr %s, i32 0, i32 15, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp1.2 = icmp sgt i32 %5, -1
  br i1 %cmp1.2, label %if.then.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  %call.2 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %s) #10
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.mxs_auart_port, ptr %s, i32 0, i32 15, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp1.3 = icmp sgt i32 %7, -1
  br i1 %cmp1.3, label %if.then.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  %call.3 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %s) #10
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.mxs_auart_port, ptr %s, i32 0, i32 15, i32 4
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp1.4 = icmp sgt i32 %9, -1
  br i1 %cmp1.4, label %if.then.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  %call.4 = tail call ptr @free_irq(i32 noundef %9, ptr noundef %s) #10
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.mxs_auart_port, ptr %s, i32 0, i32 15, i32 5
  %10 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp1.5 = icmp sgt i32 %11, -1
  br i1 %cmp1.5, label %if.then.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  %call.5 = tail call ptr @free_irq(i32 noundef %11, ptr noundef %s) #10
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_auart_tx_empty(ptr nocapture noundef readonly %u) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %vendor.i.i = getelementptr inbounds %struct.mxs_auart_port, ptr %u, i32 0, i32 4
  %2 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vendor.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx.i.i = getelementptr i16, ptr %5, i32 7
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %7 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !146
  %9 = and i32 %8, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %9)
  %cmp = icmp eq i32 %9, 8
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxs_auart_set_mctrl(ptr nocapture noundef readonly %u, i32 noundef %mctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %vendor.i.i = getelementptr inbounds %struct.mxs_auart_port, ptr %u, i32 0, i32 4
  %2 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vendor.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx.i.i = getelementptr i16, ptr %5, i32 2
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %7 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !146
  %9 = and i32 %8, -4718593
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %and1 = and i32 %mctrl, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then:                                          ; preds = %entry
  %status.i = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 34
  %11 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status.i, align 4
  %and.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %10, 16384
  br label %if.end5

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %or4 = or i32 %10, 2048
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3, %entry.if.end5_crit_edge
  %ctrl.0 = phi i32 [ %or, %if.then3 ], [ %or4, %if.else ], [ %10, %entry.if.end5_crit_edge ]
  %13 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i, align 4
  %15 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vendor.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %arrayidx.i.i15 = getelementptr i16, ptr %18, i32 2
  %19 = ptrtoint ptr %arrayidx.i.i15 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx.i.i15, align 2
  %conv.i.i16 = zext i16 %20 to i32
  %add.ptr.i17 = getelementptr i8, ptr %14, i32 %conv.i.i16
  %21 = tail call i32 @llvm.bswap.i32(i32 %ctrl.0) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %21) #10, !srcloc !147
  %gpios = getelementptr inbounds %struct.mxs_auart_port, ptr %u, i32 0, i32 14
  %22 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %gpios, align 4
  tail call void @mctrl_gpio_set(ptr noundef %23, i32 noundef %mctrl) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_auart_get_mctrl(ptr nocapture noundef readonly %u) #2 align 64 {
entry:
  %mctrl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %vendor.i.i = getelementptr inbounds %struct.mxs_auart_port, ptr %u, i32 0, i32 4
  %2 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vendor.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx.i.i = getelementptr i16, ptr %5, i32 7
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %7 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !146
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mctrl) #10
  %9 = shl i32 %8, 1
  %10 = and i32 %9, 32
  %11 = ptrtoint ptr %mctrl to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %mctrl, align 4
  %gpios = getelementptr inbounds %struct.mxs_auart_port, ptr %u, i32 0, i32 14
  %12 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gpios, align 4
  %call1 = call i32 @mctrl_gpio_get(ptr noundef %13, ptr noundef nonnull %mctrl) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mctrl) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxs_auart_stop_tx(ptr nocapture noundef readonly %u) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %vendor.i.i = getelementptr inbounds %struct.mxs_auart_port, ptr %u, i32 0, i32 4
  %2 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vendor.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx.i.i = getelementptr i16, ptr %5, i32 2
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %7 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 65536) #10, !srcloc !147
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxs_auart_start_tx(ptr noundef %u) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %vendor.i.i = getelementptr inbounds %struct.mxs_auart_port, ptr %u, i32 0, i32 4
  %2 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vendor.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx.i.i = getelementptr i16, ptr %5, i32 2
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %7 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 65536) #10, !srcloc !147
  tail call fastcc void @mxs_auart_tx_chars(ptr noundef %u)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxs_auart_stop_rx(ptr nocapture noundef readonly %u) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %vendor.i.i = getelementptr inbounds %struct.mxs_auart_port, ptr %u, i32 0, i32 4
  %2 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vendor.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx.i.i = getelementptr i16, ptr %5, i32 2
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %7 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 131072) #10, !srcloc !147
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxs_auart_enable_ms(ptr nocapture noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ms_irq_enabled = getelementptr inbounds %struct.mxs_auart_port, ptr %port, i32 0, i32 16
  %0 = ptrtoint ptr %ms_irq_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ms_irq_enabled, align 4, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %ms_irq_enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %ms_irq_enabled, align 4
  %gpio_irq = getelementptr inbounds %struct.mxs_auart_port, ptr %port, i32 0, i32 15
  %3 = ptrtoint ptr %gpio_irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %gpio_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp = icmp sgt i32 %4, -1
  br i1 %cmp, label %if.then2, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @enable_irq(i32 noundef %4) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %arrayidx7 = getelementptr %struct.mxs_auart_port, ptr %port, i32 0, i32 15, i32 1
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp8 = icmp sgt i32 %6, -1
  br i1 %cmp8, label %if.then9, label %if.end5.if.end12_crit_edge

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @enable_irq(i32 noundef %6) #10
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end5.if.end12_crit_edge
  %arrayidx14 = getelementptr %struct.mxs_auart_port, ptr %port, i32 0, i32 15, i32 3
  %7 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp15 = icmp sgt i32 %8, -1
  br i1 %cmp15, label %if.then16, label %if.end12.if.end19_crit_edge

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @enable_irq(i32 noundef %8) #10
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end12.if.end19_crit_edge
  %arrayidx21 = getelementptr %struct.mxs_auart_port, ptr %port, i32 0, i32 15, i32 2
  %9 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp22 = icmp sgt i32 %10, -1
  br i1 %cmp22, label %if.then23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @enable_irq(i32 noundef %10) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxs_auart_break_ctl(ptr nocapture noundef readonly %u, i32 noundef %ctl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ctl)
  %tobool.not = icmp eq i32 %ctl, 0
  %membase.i2 = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i2, align 4
  %vendor.i.i3 = getelementptr inbounds %struct.mxs_auart_port, ptr %u, i32 0, i32 4
  %2 = ptrtoint ptr %vendor.i.i3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vendor.i.i3, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx.i.i4 = getelementptr i16, ptr %5, i32 3
  %6 = ptrtoint ptr %arrayidx.i.i4 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i.i4, align 2
  %conv.i.i5 = zext i16 %7 to i32
  %add.ptr.i6 = getelementptr i8, ptr %1, i32 %conv.i.i5
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 16777216) #10, !srcloc !147
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr1.i7 = getelementptr i8, ptr %add.ptr.i6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i7, i32 16777216) #10, !srcloc !147
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_auart_startup(ptr noundef %u) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.mxs_auart_port, ptr %u, i32 0, i32 5
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
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
  %cons = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 32
  %2 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cons, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %index = getelementptr inbounds %struct.console, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %index, align 2
  %conv = sext i16 %5 to i32
  %line = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 41
  %6 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp = icmp eq i32 %7, %conv
  br i1 %cmp, label %if.then4, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 2
  %8 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i, align 4
  %vendor.i.i = getelementptr inbounds %struct.mxs_auart_port, ptr %u, i32 0, i32 4
  %10 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vendor.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %13, align 2
  %conv.i.i = zext i16 %15 to i32
  %add.ptr.i = getelementptr i8, ptr %9, i32 %conv.i.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 64) #10, !srcloc !147
  br label %if.end5

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 2
  %16 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i.i, align 4
  %vendor.i.i.i = getelementptr inbounds %struct.mxs_auart_port, ptr %u, i32 0, i32 4
  %18 = ptrtoint ptr %vendor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vendor.i.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %21, align 2
  %conv.i.i.i = zext i16 %23 to i32
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %conv.i.i.i
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !146
  %.mask.i = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool.not.i22 = icmp eq i32 %.mask.i, 0
  br i1 %tobool.not.i22, label %if.end.i23, label %if.else.mxs_auart_reset_assert.exit_crit_edge

if.else.mxs_auart_reset_assert.exit_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxs_auart_reset_assert.exit

if.end.i23:                                       ; preds = %if.else
  %25 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase.i.i, align 4
  %27 = ptrtoint ptr %vendor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vendor.i.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %30, align 2
  %conv.i.i15.i = zext i16 %32 to i32
  %add.ptr.i16.i = getelementptr i8, ptr %26, i32 %conv.i.i15.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i16.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 64) #10, !srcloc !147
  %33 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase.i.i, align 4
  %35 = ptrtoint ptr %vendor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vendor.i.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %38, align 2
  %conv.i.i19.i = zext i16 %40 to i32
  %add.ptr.i20.i = getelementptr i8, ptr %34, i32 %conv.i.i19.i
  %add.ptr1.i21.i = getelementptr i8, ptr %add.ptr.i20.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i21.i, i32 128) #10, !srcloc !147
  br label %for.body.i

for.body.i:                                       ; preds = %if.end5.i.for.body.i_crit_edge, %if.end.i23
  %i.026.i = phi i32 [ 0, %if.end.i23 ], [ %inc.i, %if.end5.i.for.body.i_crit_edge ]
  %41 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %membase.i.i, align 4
  %43 = ptrtoint ptr %vendor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vendor.i.i.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %46, align 2
  %conv.i.i24.i = zext i16 %48 to i32
  %add.ptr.i25.i = getelementptr i8, ptr %42, i32 %conv.i.i24.i
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25.i) #10, !srcloc !146
  %50 = and i32 %49, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool3.not.i = icmp eq i32 %50, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %for.body.i.mxs_auart_reset_assert.exit_crit_edge

for.body.i.mxs_auart_reset_assert.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxs_auart_reset_assert.exit

if.end5.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 2147480) #10
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %do.end.i, label %if.end5.i.for.body.i_crit_edge

if.end5.i.for.body.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.mxs_auart_port, ptr %u, i32 0, i32 7
  %52 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.43) #13
  br label %mxs_auart_reset_assert.exit

mxs_auart_reset_assert.exit:                      ; preds = %do.end.i, %for.body.i.mxs_auart_reset_assert.exit_crit_edge, %if.else.mxs_auart_reset_assert.exit_crit_edge
  %54 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %membase.i.i, align 4
  %56 = ptrtoint ptr %vendor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %vendor.i.i.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %59, align 2
  %conv.i.i.i26 = zext i16 %61 to i32
  %add.ptr.i.i27 = getelementptr i8, ptr %55, i32 %conv.i.i.i26
  %add.ptr1.i.i28 = getelementptr i8, ptr %add.ptr.i.i27, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i28, i32 128) #10, !srcloc !147
  br label %for.body.i31

for.body.i31:                                     ; preds = %if.end.i34.for.body.i31_crit_edge, %mxs_auart_reset_assert.exit
  %i.013.i = phi i32 [ 0, %mxs_auart_reset_assert.exit ], [ %inc.i32, %if.end.i34.for.body.i31_crit_edge ]
  %62 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %membase.i.i, align 4
  %64 = ptrtoint ptr %vendor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %vendor.i.i.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %67, align 2
  %conv.i.i6.i = zext i16 %69 to i32
  %add.ptr.i7.i = getelementptr i8, ptr %63, i32 %conv.i.i6.i
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7.i) #10, !srcloc !146
  %.mask.i29 = and i32 %70, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i29)
  %tobool.not.i30 = icmp eq i32 %.mask.i29, 0
  br i1 %tobool.not.i30, label %for.body.i31.mxs_auart_reset_deassert.exit_crit_edge, label %if.end.i34

for.body.i31.mxs_auart_reset_deassert.exit_crit_edge: ; preds = %for.body.i31
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxs_auart_reset_deassert.exit

if.end.i34:                                       ; preds = %for.body.i31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 644244) #10
  %inc.i32 = add nuw nsw i32 %i.013.i, 1
  %exitcond.not.i33 = icmp eq i32 %inc.i32, 10000
  br i1 %exitcond.not.i33, label %if.end.i34.mxs_auart_reset_deassert.exit_crit_edge, label %if.end.i34.for.body.i31_crit_edge

if.end.i34.for.body.i31_crit_edge:                ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i31

if.end.i34.mxs_auart_reset_deassert.exit_crit_edge: ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxs_auart_reset_deassert.exit

mxs_auart_reset_deassert.exit:                    ; preds = %if.end.i34.mxs_auart_reset_deassert.exit_crit_edge, %for.body.i31.mxs_auart_reset_deassert.exit_crit_edge
  %72 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %membase.i.i, align 4
  %74 = ptrtoint ptr %vendor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %vendor.i.i.i, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %77, align 2
  %conv.i.i10.i = zext i16 %79 to i32
  %add.ptr.i11.i = getelementptr i8, ptr %73, i32 %conv.i.i10.i
  %add.ptr1.i12.i = getelementptr i8, ptr %add.ptr.i11.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i12.i, i32 64) #10, !srcloc !147
  br label %if.end5

if.end5:                                          ; preds = %mxs_auart_reset_deassert.exit, %if.then4
  %membase.i35 = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 2
  %80 = ptrtoint ptr %membase.i35 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %membase.i35, align 4
  %vendor.i.i36 = getelementptr inbounds %struct.mxs_auart_port, ptr %u, i32 0, i32 4
  %82 = ptrtoint ptr %vendor.i.i36 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %vendor.i.i36, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %arrayidx.i.i = getelementptr i16, ptr %85, i32 2
  %86 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i37 = zext i16 %87 to i32
  %add.ptr.i38 = getelementptr i8, ptr %81, i32 %conv.i.i37
  %add.ptr1.i39 = getelementptr i8, ptr %add.ptr.i38, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i39, i32 16777216) #10, !srcloc !147
  %88 = ptrtoint ptr %membase.i35 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %membase.i35, align 4
  %90 = ptrtoint ptr %vendor.i.i36 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %vendor.i.i36, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  %arrayidx.i.i42 = getelementptr i16, ptr %93, i32 5
  %94 = ptrtoint ptr %arrayidx.i.i42 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %arrayidx.i.i42, align 2
  %conv.i.i43 = zext i16 %95 to i32
  %add.ptr.i44 = getelementptr i8, ptr %89, i32 %conv.i.i43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 20992) #10, !srcloc !147
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 23
  %96 = ptrtoint ptr %fifosize to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 16, ptr %fifosize, align 4
  %97 = ptrtoint ptr %membase.i35 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %membase.i35, align 4
  %99 = ptrtoint ptr %vendor.i.i36 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %vendor.i.i36, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 4
  %arrayidx.i.i47 = getelementptr i16, ptr %102, i32 3
  %103 = ptrtoint ptr %arrayidx.i.i47 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %arrayidx.i.i47, align 2
  %conv.i.i48 = zext i16 %104 to i32
  %add.ptr.i49 = getelementptr i8, ptr %98, i32 %conv.i.i48
  %add.ptr1.i50 = getelementptr i8, ptr %add.ptr.i49, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i50, i32 268435456) #10, !srcloc !147
  %gpios = getelementptr inbounds %struct.mxs_auart_port, ptr %u, i32 0, i32 14
  %105 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %gpios, align 4
  %mctrl_prev = getelementptr inbounds %struct.mxs_auart_port, ptr %u, i32 0, i32 2
  %call6 = tail call i32 @mctrl_gpio_get(ptr noundef %106, ptr noundef %mctrl_prev) #10
  %ms_irq_enabled = getelementptr inbounds %struct.mxs_auart_port, ptr %u, i32 0, i32 16
  %107 = ptrtoint ptr %ms_irq_enabled to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %ms_irq_enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxs_auart_shutdown(ptr noundef %u) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ms_irq_enabled.i = getelementptr inbounds %struct.mxs_auart_port, ptr %u, i32 0, i32 16
  %0 = ptrtoint ptr %ms_irq_enabled.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ms_irq_enabled.i, align 4, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.mxs_auart_disable_ms.exit_crit_edge, label %if.end.i

entry.mxs_auart_disable_ms.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxs_auart_disable_ms.exit

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %ms_irq_enabled.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %ms_irq_enabled.i, align 4
  %gpio_irq.i = getelementptr inbounds %struct.mxs_auart_port, ptr %u, i32 0, i32 15
  %3 = ptrtoint ptr %gpio_irq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %gpio_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp.i = icmp sgt i32 %4, -1
  br i1 %cmp.i, label %if.then2.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @disable_irq(i32 noundef %4) #10
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then2.i, %if.end.i.if.end5.i_crit_edge
  %arrayidx7.i = getelementptr %struct.mxs_auart_port, ptr %u, i32 0, i32 15, i32 1
  %5 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp8.i = icmp sgt i32 %6, -1
  br i1 %cmp8.i, label %if.then9.i, label %if.end5.i.if.end12.i_crit_edge

if.end5.i.if.end12.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.then9.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @disable_irq(i32 noundef %6) #10
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then9.i, %if.end5.i.if.end12.i_crit_edge
  %arrayidx14.i = getelementptr %struct.mxs_auart_port, ptr %u, i32 0, i32 15, i32 3
  %7 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp15.i = icmp sgt i32 %8, -1
  br i1 %cmp15.i, label %if.then16.i, label %if.end12.i.if.end19.i_crit_edge

if.end12.i.if.end19.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

if.then16.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @disable_irq(i32 noundef %8) #10
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then16.i, %if.end12.i.if.end19.i_crit_edge
  %arrayidx21.i = getelementptr %struct.mxs_auart_port, ptr %u, i32 0, i32 15, i32 2
  %9 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp22.i = icmp sgt i32 %10, -1
  br i1 %cmp22.i, label %if.then23.i, label %if.end19.i.mxs_auart_disable_ms.exit_crit_edge

if.end19.i.mxs_auart_disable_ms.exit_crit_edge:   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxs_auart_disable_ms.exit

if.then23.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @disable_irq(i32 noundef %10) #10
  br label %mxs_auart_disable_ms.exit

mxs_auart_disable_ms.exit:                        ; preds = %if.then23.i, %if.end19.i.mxs_auart_disable_ms.exit_crit_edge, %entry.mxs_auart_disable_ms.exit_crit_edge
  %flags.i = getelementptr inbounds %struct.mxs_auart_port, ptr %u, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %mxs_auart_disable_ms.exit.if.end_crit_edge, label %if.then

mxs_auart_disable_ms.exit.if.end_crit_edge:       ; preds = %mxs_auart_disable_ms.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %mxs_auart_disable_ms.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mxs_auart_dma_exit(ptr noundef %u)
  br label %if.end

if.end:                                           ; preds = %if.then, %mxs_auart_disable_ms.exit.if.end_crit_edge
  %cons = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 32
  %13 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cons, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %index = getelementptr inbounds %struct.console, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %index, align 2
  %conv = sext i16 %16 to i32
  %line = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 41
  %17 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv)
  %cmp = icmp eq i32 %18, %conv
  br i1 %cmp, label %if.then3, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 2
  %19 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase.i, align 4
  %vendor.i.i = getelementptr inbounds %struct.mxs_auart_port, ptr %u, i32 0, i32 4
  %21 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vendor.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %arrayidx.i.i = getelementptr i16, ptr %24, i32 2
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %26 to i32
  %add.ptr.i = getelementptr i8, ptr %20, i32 %conv.i.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 16777216) #10, !srcloc !147
  %27 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase.i, align 4
  %29 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vendor.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %arrayidx.i.i17 = getelementptr i16, ptr %32, i32 5
  %33 = ptrtoint ptr %arrayidx.i.i17 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx.i.i17, align 2
  %conv.i.i18 = zext i16 %34 to i32
  %add.ptr.i19 = getelementptr i8, ptr %28, i32 %conv.i.i18
  %add.ptr1.i20 = getelementptr i8, ptr %add.ptr.i19, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i20, i32 20992) #10, !srcloc !147
  %35 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase.i, align 4
  %37 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vendor.i.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %40, align 2
  %conv.i.i23 = zext i16 %42 to i32
  %add.ptr.i24 = getelementptr i8, ptr %36, i32 %conv.i.i23
  %add.ptr1.i25 = getelementptr i8, ptr %add.ptr.i24, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i25, i32 64) #10, !srcloc !147
  br label %if.end4

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 2
  %43 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase.i.i, align 4
  %vendor.i.i.i = getelementptr inbounds %struct.mxs_auart_port, ptr %u, i32 0, i32 4
  %45 = ptrtoint ptr %vendor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vendor.i.i.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %48, align 2
  %conv.i.i.i = zext i16 %50 to i32
  %add.ptr.i.i = getelementptr i8, ptr %44, i32 %conv.i.i.i
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !146
  %.mask.i = and i32 %51, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool.not.i26 = icmp eq i32 %.mask.i, 0
  br i1 %tobool.not.i26, label %if.end.i27, label %if.else.if.end4_crit_edge

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end.i27:                                       ; preds = %if.else
  %52 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %membase.i.i, align 4
  %54 = ptrtoint ptr %vendor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %vendor.i.i.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %57, align 2
  %conv.i.i15.i = zext i16 %59 to i32
  %add.ptr.i16.i = getelementptr i8, ptr %53, i32 %conv.i.i15.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i16.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 64) #10, !srcloc !147
  %60 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %membase.i.i, align 4
  %62 = ptrtoint ptr %vendor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %vendor.i.i.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %65, align 2
  %conv.i.i19.i = zext i16 %67 to i32
  %add.ptr.i20.i = getelementptr i8, ptr %61, i32 %conv.i.i19.i
  %add.ptr1.i21.i = getelementptr i8, ptr %add.ptr.i20.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i21.i, i32 128) #10, !srcloc !147
  br label %for.body.i

for.body.i:                                       ; preds = %if.end5.i28.for.body.i_crit_edge, %if.end.i27
  %i.026.i = phi i32 [ 0, %if.end.i27 ], [ %inc.i, %if.end5.i28.for.body.i_crit_edge ]
  %68 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %membase.i.i, align 4
  %70 = ptrtoint ptr %vendor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %vendor.i.i.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %73, align 2
  %conv.i.i24.i = zext i16 %75 to i32
  %add.ptr.i25.i = getelementptr i8, ptr %69, i32 %conv.i.i24.i
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25.i) #10, !srcloc !146
  %77 = and i32 %76, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool3.not.i = icmp eq i32 %77, 0
  br i1 %tobool3.not.i, label %if.end5.i28, label %for.body.i.if.end4_crit_edge

for.body.i.if.end4_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end5.i28:                                      ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 2147480) #10
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %do.end.i, label %if.end5.i28.for.body.i_crit_edge

if.end5.i28.for.body.i_crit_edge:                 ; preds = %if.end5.i28
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

do.end.i:                                         ; preds = %if.end5.i28
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.mxs_auart_port, ptr %u, i32 0, i32 7
  %79 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.43) #13
  br label %if.end4

if.end4:                                          ; preds = %do.end.i, %for.body.i.if.end4_crit_edge, %if.else.if.end4_crit_edge, %if.then3
  %clk = getelementptr inbounds %struct.mxs_auart_port, ptr %u, i32 0, i32 5
  %81 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %82) #10
  tail call void @clk_unprepare(ptr noundef %82) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxs_auart_settermios(ptr noundef %u, ptr noundef %termios, ptr noundef %old) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %0 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_cflag, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 2
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 4
  %vendor.i.i = getelementptr inbounds %struct.mxs_auart_port, ptr %u, i32 0, i32 4
  %4 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vendor.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %arrayidx.i.i = getelementptr i16, ptr %7, i32 2
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %9 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !146
  %call1 = tail call zeroext i8 @tty_get_char_size(i32 noundef %1) #10
  %11 = shl i8 %call1, 5
  %12 = add i8 %11, 96
  %13 = and i8 %12, 96
  %14 = or i8 %13, 16
  %or = zext i8 %14 to i32
  %and2 = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and4 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %cmp = icmp eq i32 %and4, 0
  %spec.select.v = select i1 %cmp, i32 6, i32 2
  %and8 = lshr i32 %1, 23
  %15 = and i32 %and8, 128
  %spec.select = or i32 %spec.select.v, %15
  %16 = or i32 %spec.select, %or
  br label %if.end13

if.end13:                                         ; preds = %if.then, %entry.if.end13_crit_edge
  %ctrl.1 = phi i32 [ %or, %entry.if.end13_crit_edge ], [ %16, %if.then ]
  %read_status_mask = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 28
  %17 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 524288, ptr %read_status_mask, align 4
  %18 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %termios, align 4
  %and14 = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %spec.store.select = select i1 %tobool15.not, i32 524288, i32 655360
  %20 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %spec.store.select, ptr %read_status_mask, align 4
  %21 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %termios, align 4
  %and21 = and i32 %22, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end13.if.end26_crit_edge, label %if.then23

if.end13.if.end26_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then23:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %or25 = or i32 %spec.store.select, 262144
  %23 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or25, ptr %read_status_mask, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end13.if.end26_crit_edge
  %ignore_status_mask = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 29
  %24 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %ignore_status_mask, align 4
  %25 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %termios, align 4
  %and28 = shl i32 %26, 15
  %27 = and i32 %and28, 131072
  store i32 %27, ptr %ignore_status_mask, align 4
  %28 = load i32, ptr %termios, align 4
  %and35 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end26.if.end47_crit_edge, label %if.then37

if.end26.if.end47_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then37:                                        ; preds = %if.end26
  %or39 = or i32 %27, 262144
  %29 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or39, ptr %ignore_status_mask, align 4
  %30 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %termios, align 4
  %and41 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.then37.if.end47_crit_edge, label %if.then43

if.then37.if.end47_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then43:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  %or45 = or i32 %27, 786432
  %32 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or45, ptr %ignore_status_mask, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %if.then37.if.end47_crit_edge, %if.end26.if.end47_crit_edge
  %and48 = shl i32 %1, 2
  %33 = and i32 %and48, 512
  %and54 = lshr i32 %1, 3
  %34 = and i32 %and54, 8
  %35 = or i32 %ctrl.1, %34
  %36 = and i32 %10, -12713985
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %and59 = or i32 %37, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %tobool61.not = icmp sgt i32 %1, -1
  br i1 %tobool61.not, label %if.end47.if.end80_crit_edge, label %if.then62

if.end47.if.end80_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then62:                                        ; preds = %if.end47
  %devtype.i = getelementptr inbounds %struct.mxs_auart_port, ptr %u, i32 0, i32 3
  %38 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %devtype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp.i.not = icmp eq i32 %39, 1
  br i1 %cmp.i.not, label %land.lhs.true, label %if.then62.if.end73_crit_edge

if.then62.if.end73_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

land.lhs.true:                                    ; preds = %if.then62
  %flags = getelementptr inbounds %struct.mxs_auart_port, ptr %u, i32 0, i32 1
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %flags, align 4
  %42 = and i32 %41, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool66.not = icmp eq i32 %42, 0
  br i1 %tobool66.not, label %land.lhs.true.if.end73_crit_edge, label %if.then67

land.lhs.true.if.end73_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.then67:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call68 = tail call fastcc i32 @mxs_auart_dma_init(ptr noundef %u)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  %or71 = or i32 %and59, 117440512
  %spec.select210 = select i1 %tobool69.not, i32 %or71, i32 %and59
  br label %if.end73

if.end73:                                         ; preds = %if.then67, %land.lhs.true.if.end73_crit_edge, %if.then62.if.end73_crit_edge
  %ctrl2.1 = phi i32 [ %and59, %land.lhs.true.if.end73_crit_edge ], [ %and59, %if.then62.if.end73_crit_edge ], [ %spec.select210, %if.then67 ]
  %gpios = getelementptr inbounds %struct.mxs_auart_port, ptr %u, i32 0, i32 14
  %43 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %gpios, align 4
  %call75 = tail call ptr @mctrl_gpio_to_gpiod(ptr noundef %44, i32 noundef 0) #10
  %tobool76.not = icmp eq ptr %call75, null
  %spec.select211.v = select i1 %tobool76.not, i32 49152, i32 16384
  %spec.select211 = or i32 %spec.select211.v, %ctrl2.1
  br label %if.end80

if.end80:                                         ; preds = %if.end73, %if.end47.if.end80_crit_edge
  %ctrl2.2 = phi i32 [ %and59, %if.end47.if.end80_crit_edge ], [ %spec.select211, %if.end73 ]
  %devtype.i213 = getelementptr inbounds %struct.mxs_auart_port, ptr %u, i32 0, i32 3
  %45 = ptrtoint ptr %devtype.i213 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %devtype.i213, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %cmp.i214.not = icmp eq i32 %46, 2
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 22
  %47 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %uartclk, align 4
  br i1 %cmp.i214.not, label %if.then83, label %if.else91

if.then83:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  %mul = shl i32 %48, 2
  %div84 = udiv i32 %mul, 4194303
  %div86208 = lshr i32 %48, 4
  %call87 = tail call i32 @uart_get_baud_rate(ptr noundef %u, ptr noundef %termios, ptr noundef %old, i32 noundef %div84, i32 noundef %div86208) #10
  %49 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %uartclk, align 4
  %mul89 = shl i32 %50, 2
  %div90 = udiv i32 %mul89, %call87
  br label %if.end106

if.else91:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  %mul93 = shl i32 %48, 5
  %sub94 = add i32 %mul93, 4194239
  %div95 = udiv i32 %sub94, 4194240
  %div98 = udiv i32 %mul93, 236
  %call99 = tail call i32 @uart_get_baud_rate(ptr noundef %u, ptr noundef %termios, ptr noundef %old, i32 noundef %div95, i32 noundef %div98) #10
  %51 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %uartclk, align 4
  %mul101 = shl i32 %52, 5
  %div103207 = lshr i32 %call99, 1
  %add104 = add i32 %mul101, %div103207
  %div105 = udiv i32 %add104, %call99
  br label %if.end106

if.end106:                                        ; preds = %if.else91, %if.then83
  %div.0 = phi i32 [ %div90, %if.then83 ], [ %div105, %if.else91 ]
  %baud.0 = phi i32 [ %call87, %if.then83 ], [ %call99, %if.else91 ]
  %and107 = shl i32 %div.0, 8
  %shl109 = and i32 %and107, 16128
  %or110 = or i32 %35, %shl109
  %53 = shl i32 %div.0, 10
  %shl112 = and i32 %53, -65536
  %or113 = or i32 %or110, %shl112
  %54 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %membase.i, align 4
  %56 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %vendor.i.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %arrayidx.i.i218 = getelementptr i16, ptr %59, i32 3
  %60 = ptrtoint ptr %arrayidx.i.i218 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx.i.i218, align 2
  %conv.i.i219 = zext i16 %61 to i32
  %add.ptr.i220 = getelementptr i8, ptr %55, i32 %conv.i.i219
  %62 = tail call i32 @llvm.bswap.i32(i32 %or113) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i220, i32 %62) #10, !srcloc !147
  %63 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %membase.i, align 4
  %65 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %vendor.i.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %arrayidx.i.i223 = getelementptr i16, ptr %68, i32 2
  %69 = ptrtoint ptr %arrayidx.i.i223 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx.i.i223, align 2
  %conv.i.i224 = zext i16 %70 to i32
  %add.ptr.i225 = getelementptr i8, ptr %64, i32 %conv.i.i224
  %71 = tail call i32 @llvm.bswap.i32(i32 %ctrl2.2) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i225, i32 %71) #10, !srcloc !147
  %72 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %c_cflag, align 4
  tail call void @uart_update_timeout(ptr noundef %u, i32 noundef %73, i32 noundef %baud.0) #10
  %flags.i = getelementptr inbounds %struct.mxs_auart_port, ptr %u, i32 0, i32 1
  %74 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %75, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end106.if.end127_crit_edge, label %land.lhs.true117

if.end106.if.end127_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

land.lhs.true117:                                 ; preds = %if.end106
  %call119 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %flags.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.then121, label %land.lhs.true117.if.end127_crit_edge

land.lhs.true117.if.end127_crit_edge:             ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

if.then121:                                       ; preds = %land.lhs.true117
  %call122 = tail call fastcc i32 @mxs_auart_dma_prep_rx(ptr noundef %u)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.then124, label %if.else125

if.then124:                                       ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %membase.i, align 4
  %78 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %vendor.i.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %arrayidx.i.i228 = getelementptr i16, ptr %81, i32 5
  %82 = ptrtoint ptr %arrayidx.i.i228 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %arrayidx.i.i228, align 2
  %conv.i.i229 = zext i16 %83 to i32
  %add.ptr.i230 = getelementptr i8, ptr %77, i32 %conv.i.i229
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i230, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 20480) #10, !srcloc !147
  br label %if.end127

if.else125:                                       ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mxs_auart_dma_exit(ptr noundef %u)
  %dev = getelementptr inbounds %struct.mxs_auart_port, ptr %u, i32 0, i32 7
  %84 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.45) #13
  br label %if.end127

if.end127:                                        ; preds = %if.else125, %if.then124, %land.lhs.true117.if.end127_crit_edge, %if.end106.if.end127_crit_edge
  %flags128 = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 33
  %86 = ptrtoint ptr %flags128 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %flags128, align 4
  %and129 = and i32 %87, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %lor.lhs.false, label %if.end127.if.then138_crit_edge

if.end127.if.then138_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then138

lor.lhs.false:                                    ; preds = %if.end127
  %88 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %c_cflag, align 4
  %90 = and i32 %89, -2147481600
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %90)
  %.not = icmp eq i32 %90, 2048
  br i1 %.not, label %if.else139, label %lor.lhs.false.if.then138_crit_edge

lor.lhs.false.if.then138_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then138

if.then138:                                       ; preds = %lor.lhs.false.if.then138_crit_edge, %if.end127.if.then138_crit_edge
  %ms_irq_enabled.i = getelementptr inbounds %struct.mxs_auart_port, ptr %u, i32 0, i32 16
  %91 = ptrtoint ptr %ms_irq_enabled.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %ms_irq_enabled.i, align 4, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.not.i = icmp eq i8 %92, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then138.if.end140_crit_edge

if.then138.if.end140_crit_edge:                   ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end140

if.end.i:                                         ; preds = %if.then138
  %93 = ptrtoint ptr %ms_irq_enabled.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %ms_irq_enabled.i, align 4
  %gpio_irq.i = getelementptr inbounds %struct.mxs_auart_port, ptr %u, i32 0, i32 15
  %94 = ptrtoint ptr %gpio_irq.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %gpio_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %95)
  %cmp.i231 = icmp sgt i32 %95, -1
  br i1 %cmp.i231, label %if.then2.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @enable_irq(i32 noundef %95) #10
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then2.i, %if.end.i.if.end5.i_crit_edge
  %arrayidx7.i = getelementptr %struct.mxs_auart_port, ptr %u, i32 0, i32 15, i32 1
  %96 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %97)
  %cmp8.i = icmp sgt i32 %97, -1
  br i1 %cmp8.i, label %if.then9.i, label %if.end5.i.if.end12.i_crit_edge

if.end5.i.if.end12.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.then9.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @enable_irq(i32 noundef %97) #10
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then9.i, %if.end5.i.if.end12.i_crit_edge
  %arrayidx14.i = getelementptr %struct.mxs_auart_port, ptr %u, i32 0, i32 15, i32 3
  %98 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %99)
  %cmp15.i = icmp sgt i32 %99, -1
  br i1 %cmp15.i, label %if.then16.i, label %if.end12.i.if.end19.i_crit_edge

if.end12.i.if.end19.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

if.then16.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @enable_irq(i32 noundef %99) #10
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then16.i, %if.end12.i.if.end19.i_crit_edge
  %arrayidx21.i = getelementptr %struct.mxs_auart_port, ptr %u, i32 0, i32 15, i32 2
  %100 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %101)
  %cmp22.i = icmp sgt i32 %101, -1
  br i1 %cmp22.i, label %if.then23.i, label %if.end19.i.if.end140_crit_edge

if.end19.i.if.end140_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end140

if.then23.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @enable_irq(i32 noundef %101) #10
  br label %if.end140

if.else139:                                       ; preds = %lor.lhs.false
  %ms_irq_enabled.i232 = getelementptr inbounds %struct.mxs_auart_port, ptr %u, i32 0, i32 16
  %102 = ptrtoint ptr %ms_irq_enabled.i232 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %ms_irq_enabled.i232, align 4, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool.not.i233 = icmp eq i8 %103, 0
  br i1 %tobool.not.i233, label %if.else139.if.end140_crit_edge, label %if.end.i236

if.else139.if.end140_crit_edge:                   ; preds = %if.else139
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end140

if.end.i236:                                      ; preds = %if.else139
  %104 = ptrtoint ptr %ms_irq_enabled.i232 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %ms_irq_enabled.i232, align 4
  %gpio_irq.i234 = getelementptr inbounds %struct.mxs_auart_port, ptr %u, i32 0, i32 15
  %105 = ptrtoint ptr %gpio_irq.i234 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %gpio_irq.i234, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %106)
  %cmp.i235 = icmp sgt i32 %106, -1
  br i1 %cmp.i235, label %if.then2.i237, label %if.end.i236.if.end5.i240_crit_edge

if.end.i236.if.end5.i240_crit_edge:               ; preds = %if.end.i236
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i240

if.then2.i237:                                    ; preds = %if.end.i236
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @disable_irq(i32 noundef %106) #10
  br label %if.end5.i240

if.end5.i240:                                     ; preds = %if.then2.i237, %if.end.i236.if.end5.i240_crit_edge
  %arrayidx7.i238 = getelementptr %struct.mxs_auart_port, ptr %u, i32 0, i32 15, i32 1
  %107 = ptrtoint ptr %arrayidx7.i238 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx7.i238, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %108)
  %cmp8.i239 = icmp sgt i32 %108, -1
  br i1 %cmp8.i239, label %if.then9.i241, label %if.end5.i240.if.end12.i244_crit_edge

if.end5.i240.if.end12.i244_crit_edge:             ; preds = %if.end5.i240
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i244

if.then9.i241:                                    ; preds = %if.end5.i240
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @disable_irq(i32 noundef %108) #10
  br label %if.end12.i244

if.end12.i244:                                    ; preds = %if.then9.i241, %if.end5.i240.if.end12.i244_crit_edge
  %arrayidx14.i242 = getelementptr %struct.mxs_auart_port, ptr %u, i32 0, i32 15, i32 3
  %109 = ptrtoint ptr %arrayidx14.i242 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx14.i242, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %110)
  %cmp15.i243 = icmp sgt i32 %110, -1
  br i1 %cmp15.i243, label %if.then16.i245, label %if.end12.i244.if.end19.i248_crit_edge

if.end12.i244.if.end19.i248_crit_edge:            ; preds = %if.end12.i244
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i248

if.then16.i245:                                   ; preds = %if.end12.i244
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @disable_irq(i32 noundef %110) #10
  br label %if.end19.i248

if.end19.i248:                                    ; preds = %if.then16.i245, %if.end12.i244.if.end19.i248_crit_edge
  %arrayidx21.i246 = getelementptr %struct.mxs_auart_port, ptr %u, i32 0, i32 15, i32 2
  %111 = ptrtoint ptr %arrayidx21.i246 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx21.i246, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %112)
  %cmp22.i247 = icmp sgt i32 %112, -1
  br i1 %cmp22.i247, label %if.then23.i249, label %if.end19.i248.if.end140_crit_edge

if.end19.i248.if.end140_crit_edge:                ; preds = %if.end19.i248
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end140

if.then23.i249:                                   ; preds = %if.end19.i248
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @disable_irq(i32 noundef %112) #10
  br label %if.end140

if.end140:                                        ; preds = %if.then23.i249, %if.end19.i248.if.end140_crit_edge, %if.else139.if.end140_crit_edge, %if.then23.i, %if.end19.i.if.end140_crit_edge, %if.then138.if.end140_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxs_auart_set_ldisc(ptr nocapture noundef %port, ptr nocapture noundef readonly %termios) #2 align 64 {
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
  %or = or i32 %3, 2048
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %flags, align 4
  %ms_irq_enabled.i = getelementptr inbounds %struct.mxs_auart_port, ptr %port, i32 0, i32 16
  %5 = ptrtoint ptr %ms_irq_enabled.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ms_irq_enabled.i, align 4, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %7 = ptrtoint ptr %ms_irq_enabled.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %ms_irq_enabled.i, align 4
  %gpio_irq.i = getelementptr inbounds %struct.mxs_auart_port, ptr %port, i32 0, i32 15
  %8 = ptrtoint ptr %gpio_irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpio_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i = icmp sgt i32 %9, -1
  br i1 %cmp.i, label %if.then2.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @enable_irq(i32 noundef %9) #10
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then2.i, %if.end.i.if.end5.i_crit_edge
  %arrayidx7.i = getelementptr %struct.mxs_auart_port, ptr %port, i32 0, i32 15, i32 1
  %10 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp8.i = icmp sgt i32 %11, -1
  br i1 %cmp8.i, label %if.then9.i, label %if.end5.i.if.end12.i_crit_edge

if.end5.i.if.end12.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.then9.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @enable_irq(i32 noundef %11) #10
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then9.i, %if.end5.i.if.end12.i_crit_edge
  %arrayidx14.i = getelementptr %struct.mxs_auart_port, ptr %port, i32 0, i32 15, i32 3
  %12 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp15.i = icmp sgt i32 %13, -1
  br i1 %cmp15.i, label %if.then16.i, label %if.end12.i.if.end19.i_crit_edge

if.end12.i.if.end19.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

if.then16.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @enable_irq(i32 noundef %13) #10
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then16.i, %if.end12.i.if.end19.i_crit_edge
  %arrayidx21.i = getelementptr %struct.mxs_auart_port, ptr %port, i32 0, i32 15, i32 2
  %14 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp22.i = icmp sgt i32 %15, -1
  br i1 %cmp22.i, label %if.then23.i, label %if.end19.i.if.end_crit_edge

if.end19.i.if.end_crit_edge:                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then23.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @enable_irq(i32 noundef %15) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and = and i32 %3, -2049
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then23.i, %if.end19.i.if.end_crit_edge, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @mxs_auart_type(ptr nocapture noundef readonly %u) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mxs_auart_port, ptr %u, i32 0, i32 7
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mxs_auart_release_port(ptr nocapture noundef %u) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mxs_auart_request_port(ptr nocapture noundef readnone %u) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mxs_auart_config_port(ptr nocapture noundef %u, i32 noundef %flags) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mxs_auart_verify_port(ptr nocapture noundef readonly %u, ptr nocapture noundef readnone %ser) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %switch.selectcmp.case1 = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %1)
  %switch.selectcmp.case2 = icmp eq i32 %1, 62
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %2 = select i1 %switch.selectcmp, i32 0, i32 -22
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctrl_gpio_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mctrl_gpio_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxs_auart_tx_chars(ptr noundef %s) unnamed_addr #2 align 64 {
entry:
  %pio.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %s, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %xmit1 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2
  %flags.i = getelementptr inbounds %struct.mxs_auart_port, ptr %s, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %while.cond44.preheader, label %if.then

while.cond44.preheader:                           ; preds = %entry
  %head59 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %s, i32 0, i32 2
  %vendor.i.i = getelementptr inbounds %struct.mxs_auart_port, ptr %s, i32 0, i32 4
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  %6 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vendor.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %arrayidx.i.i235 = getelementptr i16, ptr %9, i32 7
  %10 = ptrtoint ptr %arrayidx.i.i235 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.i.i235, align 2
  %conv.i.i236 = zext i16 %11 to i32
  %add.ptr.i237 = getelementptr i8, ptr %5, i32 %conv.i.i236
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i237) #10, !srcloc !146
  %13 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool47.not238 = icmp eq i32 %13, 0
  br i1 %tobool47.not238, label %while.body49.lr.ph, label %while.cond44.preheader.while.end80_crit_edge

while.cond44.preheader.while.end80_crit_edge:     ; preds = %while.cond44.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end80

while.body49.lr.ph:                               ; preds = %while.cond44.preheader
  %x_char = getelementptr inbounds %struct.uart_port, ptr %s, i32 0, i32 24
  %tx = getelementptr inbounds %struct.uart_port, ptr %s, i32 0, i32 31, i32 5
  %tail60 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %hw_stopped.i187 = getelementptr inbounds %struct.uart_port, ptr %s, i32 0, i32 35
  br label %while.body49

if.then:                                          ; preds = %entry
  %tx_dma_buf = getelementptr inbounds %struct.mxs_auart_port, ptr %s, i32 0, i32 10
  %14 = ptrtoint ptr %tx_dma_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_dma_buf, align 4
  %call2 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %while.cond.preheader, label %if.then.cleanup109_crit_edge

if.then.cleanup109_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup109

while.cond.preheader:                             ; preds = %if.then
  %head = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %hw_stopped.i = getelementptr inbounds %struct.uart_port, ptr %s, i32 0, i32 35
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.preheader
  %i.0 = phi i32 [ %add23, %while.body.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  %16 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %head, align 4
  %18 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp = icmp eq i32 %17, %19
  br i1 %cmp, label %while.cond.while.end_crit_edge, label %land.rhs

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs:                                         ; preds = %while.cond
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %state, align 4
  %tty2.i = getelementptr inbounds %struct.tty_port, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %tty2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tty2.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %land.rhs.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i

land.rhs.uart_tx_stopped.exit_crit_edge:          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_tx_stopped.exit

land.lhs.true.i:                                  ; preds = %land.rhs
  %stopped.i = getelementptr inbounds %struct.tty_struct, ptr %23, i32 0, i32 19, i32 1
  %24 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %stopped.i, align 4, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool3.not.i = icmp eq i8 %25, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i.while.end_crit_edge

land.lhs.true.i.while.end_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.lhs.true.i.uart_tx_stopped.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_tx_stopped.exit

uart_tx_stopped.exit:                             ; preds = %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, %land.rhs.uart_tx_stopped.exit_crit_edge
  %26 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hw_stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool4.not.i.not = icmp eq i32 %27, 0
  br i1 %tobool4.not.i.not, label %while.body, label %uart_tx_stopped.exit.while.end_crit_edge

uart_tx_stopped.exit.while.end_crit_edge:         ; preds = %uart_tx_stopped.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %uart_tx_stopped.exit
  %sub = sub i32 4096, %i.0
  %sub8 = sub i32 4096, %19
  %add = add i32 %sub8, %17
  %and = and i32 %add, 4095
  %28 = tail call i32 @llvm.smin.i32(i32 %and, i32 %sub8)
  %29 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %28)
  %add.ptr = getelementptr i8, ptr %15, i32 %i.0
  %30 = ptrtoint ptr %xmit1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %xmit1, align 4
  %add.ptr18 = getelementptr i8, ptr %31, i32 %19
  %32 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr18, i32 %29)
  %33 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tail, align 4
  %add20 = add i32 %34, %29
  %and21 = and i32 %add20, 4095
  store i32 %and21, ptr %tail, align 4
  %add23 = add i32 %29, %i.0
  %cmp24 = icmp ugt i32 %add23, 4095
  br i1 %cmp24, label %while.body.while.end_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %uart_tx_stopped.exit.while.end_crit_edge, %land.lhs.true.i.while.end_crit_edge, %while.cond.while.end_crit_edge
  %i.1 = phi i32 [ %i.0, %while.cond.while.end_crit_edge ], [ %add23, %while.body.while.end_crit_edge ], [ %i.0, %uart_tx_stopped.exit.while.end_crit_edge ], [ %i.0, %land.lhs.true.i.while.end_crit_edge ]
  %35 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %state, align 4
  %tty2.i162 = getelementptr inbounds %struct.tty_port, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %tty2.i162 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tty2.i162, align 4
  %tobool.not.i163 = icmp eq ptr %38, null
  br i1 %tobool.not.i163, label %while.end.uart_tx_stopped.exit172_crit_edge, label %land.lhs.true.i166

while.end.uart_tx_stopped.exit172_crit_edge:      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_tx_stopped.exit172

land.lhs.true.i166:                               ; preds = %while.end
  %stopped.i164 = getelementptr inbounds %struct.tty_struct, ptr %38, i32 0, i32 19, i32 1
  %39 = ptrtoint ptr %stopped.i164 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %stopped.i164, align 4, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool3.not.i165 = icmp eq i8 %40, 0
  br i1 %tobool3.not.i165, label %land.lhs.true.i166.uart_tx_stopped.exit172_crit_edge, label %land.lhs.true.i166.if.then30_crit_edge

land.lhs.true.i166.if.then30_crit_edge:           ; preds = %land.lhs.true.i166
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

land.lhs.true.i166.uart_tx_stopped.exit172_crit_edge: ; preds = %land.lhs.true.i166
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_tx_stopped.exit172

uart_tx_stopped.exit172:                          ; preds = %land.lhs.true.i166.uart_tx_stopped.exit172_crit_edge, %while.end.uart_tx_stopped.exit172_crit_edge
  %41 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hw_stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool4.not.i168.not = icmp eq i32 %42, 0
  br i1 %tobool4.not.i168.not, label %uart_tx_stopped.exit172.if.end32_crit_edge, label %uart_tx_stopped.exit172.if.then30_crit_edge

uart_tx_stopped.exit172.if.then30_crit_edge:      ; preds = %uart_tx_stopped.exit172
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

uart_tx_stopped.exit172.if.end32_crit_edge:       ; preds = %uart_tx_stopped.exit172
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then30:                                        ; preds = %uart_tx_stopped.exit172.if.then30_crit_edge, %land.lhs.true.i166.if.then30_crit_edge
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %s, i32 0, i32 2
  %43 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase.i.i, align 4
  %vendor.i.i.i = getelementptr inbounds %struct.mxs_auart_port, ptr %s, i32 0, i32 4
  %45 = ptrtoint ptr %vendor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vendor.i.i.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %arrayidx.i.i.i = getelementptr i16, ptr %48, i32 2
  %49 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx.i.i.i, align 2
  %conv.i.i.i = zext i16 %50 to i32
  %add.ptr.i.i = getelementptr i8, ptr %44, i32 %conv.i.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 65536) #10, !srcloc !147
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %uart_tx_stopped.exit172.if.end32_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1)
  %tobool33.not = icmp eq i32 %i.1, 0
  br i1 %tobool33.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %if.end32
  %tx_dma_chan.i = getelementptr inbounds %struct.mxs_auart_port, ptr %s, i32 0, i32 9
  %51 = ptrtoint ptr %tx_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tx_dma_chan.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pio.i) #10
  %and.i173 = and i32 %i.1, 65535
  %53 = ptrtoint ptr %pio.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %and.i173, ptr %pio.i, align 4
  %tobool.not.i.i = icmp eq ptr %52, null
  br i1 %tobool.not.i.i, label %if.then34.do.end.i_crit_edge, label %lor.lhs.false.i.i

if.then34.do.end.i_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

lor.lhs.false.i.i:                                ; preds = %if.then34
  %54 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %52, align 4
  %tobool1.not.i.i = icmp eq ptr %55, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.do.end.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.do.end.i_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %55, i32 0, i32 39
  %56 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %57, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.do.end.i_crit_edge, label %dmaengine_prep_slave_sg.exit.i

lor.lhs.false2.i.i.do.end.i_crit_edge:            ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

dmaengine_prep_slave_sg.exit.i:                   ; preds = %lor.lhs.false2.i.i
  %call.i.i = call ptr %57(ptr noundef nonnull %52, ptr noundef nonnull %pio.i, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef null) #10
  %tobool.not.i174 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i174, label %dmaengine_prep_slave_sg.exit.i.do.end.i_crit_edge, label %lor.lhs.false.i3.i

dmaengine_prep_slave_sg.exit.i.do.end.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i:                                         ; preds = %dmaengine_prep_slave_sg.exit.i.do.end.i_crit_edge, %lor.lhs.false2.i.i.do.end.i_crit_edge, %lor.lhs.false.i.i.do.end.i_crit_edge, %if.then34.do.end.i_crit_edge
  %dev.i = getelementptr inbounds %struct.mxs_auart_port, ptr %s, i32 0, i32 7
  %58 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.38) #13
  br label %mxs_auart_dma_tx.exit

lor.lhs.false.i3.i:                               ; preds = %dmaengine_prep_slave_sg.exit.i
  %tx_sgl.i = getelementptr inbounds %struct.mxs_auart_port, ptr %s, i32 0, i32 8
  %60 = ptrtoint ptr %tx_dma_buf to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tx_dma_buf, align 4
  call void @sg_init_one(ptr noundef %tx_sgl.i, ptr noundef %61, i32 noundef %i.1) #10
  %dev1.i = getelementptr inbounds %struct.mxs_auart_port, ptr %s, i32 0, i32 7
  %62 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev1.i, align 4
  %call2.i = call i32 @dma_map_sg_attrs(ptr noundef %63, ptr noundef %tx_sgl.i, i32 noundef 1, i32 noundef 1, i32 noundef 0) #10
  %64 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %52, align 4
  %tobool1.not.i2.i = icmp eq ptr %65, null
  br i1 %tobool1.not.i2.i, label %lor.lhs.false.i3.i.do.end8.i_crit_edge, label %lor.lhs.false2.i6.i

lor.lhs.false.i3.i.do.end8.i_crit_edge:           ; preds = %lor.lhs.false.i3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i

lor.lhs.false2.i6.i:                              ; preds = %lor.lhs.false.i3.i
  %device_prep_slave_sg.i4.i = getelementptr inbounds %struct.dma_device, ptr %65, i32 0, i32 39
  %66 = ptrtoint ptr %device_prep_slave_sg.i4.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %device_prep_slave_sg.i4.i, align 4
  %tobool4.not.i5.i = icmp eq ptr %67, null
  br i1 %tobool4.not.i5.i, label %lor.lhs.false2.i6.i.do.end8.i_crit_edge, label %dmaengine_prep_slave_sg.exit10.i

lor.lhs.false2.i6.i.do.end8.i_crit_edge:          ; preds = %lor.lhs.false2.i6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i

dmaengine_prep_slave_sg.exit10.i:                 ; preds = %lor.lhs.false2.i6.i
  %call.i7.i = call ptr %67(ptr noundef nonnull %52, ptr noundef %tx_sgl.i, i32 noundef 1, i32 noundef 1, i32 noundef 3, ptr noundef null) #10
  %tobool4.not.i175 = icmp eq ptr %call.i7.i, null
  br i1 %tobool4.not.i175, label %dmaengine_prep_slave_sg.exit10.i.do.end8.i_crit_edge, label %if.end10.i

dmaengine_prep_slave_sg.exit10.i.do.end8.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i

do.end8.i:                                        ; preds = %dmaengine_prep_slave_sg.exit10.i.do.end8.i_crit_edge, %lor.lhs.false2.i6.i.do.end8.i_crit_edge, %lor.lhs.false.i3.i.do.end8.i_crit_edge
  %68 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev1.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.41) #13
  br label %mxs_auart_dma_tx.exit

if.end10.i:                                       ; preds = %dmaengine_prep_slave_sg.exit10.i
  call void @__sanitizer_cov_trace_pc() #12
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i7.i, i32 0, i32 6
  %70 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @dma_tx_callback, ptr %callback.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i7.i, i32 0, i32 8
  %71 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %s, ptr %callback_param.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i7.i, i32 0, i32 4
  %72 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i11.i = call i32 %73(ptr noundef nonnull %call.i7.i) #10
  %74 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %52, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %75, i32 0, i32 50
  %76 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %device_issue_pending.i.i, align 4
  call void %77(ptr noundef nonnull %52) #10
  br label %mxs_auart_dma_tx.exit

mxs_auart_dma_tx.exit:                            ; preds = %if.end10.i, %do.end8.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pio.i) #10
  br label %cleanup109

if.else:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !149
  br label %cleanup109

while.body49:                                     ; preds = %while.cond44.backedge.while.body49_crit_edge, %while.body49.lr.ph
  %78 = ptrtoint ptr %x_char to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %x_char, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool51.not = icmp eq i8 %79, 0
  br i1 %tobool51.not, label %if.end58, label %if.then52

if.then52:                                        ; preds = %while.body49
  call void @__sanitizer_cov_trace_pc() #12
  %80 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %tx, align 4
  %inc = add i32 %81, 1
  store i32 %inc, ptr %tx, align 4
  %conv = zext i8 %79 to i32
  %82 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %membase.i, align 4
  %84 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %vendor.i.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %arrayidx.i.i178 = getelementptr i16, ptr %87, i32 6
  %88 = ptrtoint ptr %arrayidx.i.i178 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %arrayidx.i.i178, align 2
  %conv.i.i179 = zext i16 %89 to i32
  %add.ptr.i180 = getelementptr i8, ptr %83, i32 %conv.i.i179
  %90 = shl nuw i32 %conv, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i180, i32 %90) #10, !srcloc !147
  %91 = ptrtoint ptr %x_char to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %x_char, align 4
  br label %while.cond44.backedge

while.cond44.backedge:                            ; preds = %if.then66, %if.then52
  %92 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %membase.i, align 4
  %94 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %vendor.i.i, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 4
  %arrayidx.i.i = getelementptr i16, ptr %97, i32 7
  %98 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %99 to i32
  %add.ptr.i = getelementptr i8, ptr %93, i32 %conv.i.i
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !146
  %101 = and i32 %100, 2
  %tobool47.not = icmp eq i32 %101, 0
  br i1 %tobool47.not, label %while.cond44.backedge.while.body49_crit_edge, label %while.cond44.backedge.while.end80_crit_edge

while.cond44.backedge.while.end80_crit_edge:      ; preds = %while.cond44.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end80

while.cond44.backedge.while.body49_crit_edge:     ; preds = %while.cond44.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body49

if.end58:                                         ; preds = %while.body49
  %102 = ptrtoint ptr %head59 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %head59, align 4
  %104 = ptrtoint ptr %tail60 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %tail60, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %105)
  %cmp61 = icmp eq i32 %103, %105
  br i1 %cmp61, label %if.end58.while.end80_crit_edge, label %land.lhs.true

if.end58.while.end80_crit_edge:                   ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end80

land.lhs.true:                                    ; preds = %if.end58
  %106 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %state, align 4
  %tty2.i182 = getelementptr inbounds %struct.tty_port, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %tty2.i182 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %tty2.i182, align 4
  %tobool.not.i183 = icmp eq ptr %109, null
  br i1 %tobool.not.i183, label %land.lhs.true.uart_tx_stopped.exit192_crit_edge, label %land.lhs.true.i186

land.lhs.true.uart_tx_stopped.exit192_crit_edge:  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_tx_stopped.exit192

land.lhs.true.i186:                               ; preds = %land.lhs.true
  %stopped.i184 = getelementptr inbounds %struct.tty_struct, ptr %109, i32 0, i32 19, i32 1
  %110 = ptrtoint ptr %stopped.i184 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %stopped.i184, align 4, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool3.not.i185 = icmp eq i8 %111, 0
  br i1 %tobool3.not.i185, label %land.lhs.true.i186.uart_tx_stopped.exit192_crit_edge, label %land.lhs.true.i186.while.end80_crit_edge

land.lhs.true.i186.while.end80_crit_edge:         ; preds = %land.lhs.true.i186
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end80

land.lhs.true.i186.uart_tx_stopped.exit192_crit_edge: ; preds = %land.lhs.true.i186
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_tx_stopped.exit192

uart_tx_stopped.exit192:                          ; preds = %land.lhs.true.i186.uart_tx_stopped.exit192_crit_edge, %land.lhs.true.uart_tx_stopped.exit192_crit_edge
  %112 = ptrtoint ptr %hw_stopped.i187 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %hw_stopped.i187, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool4.not.i188.not = icmp eq i32 %113, 0
  br i1 %tobool4.not.i188.not, label %if.then66, label %uart_tx_stopped.exit192.while.end80_crit_edge

uart_tx_stopped.exit192.while.end80_crit_edge:    ; preds = %uart_tx_stopped.exit192
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end80

if.then66:                                        ; preds = %uart_tx_stopped.exit192
  call void @__sanitizer_cov_trace_pc() #12
  %114 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %tx, align 4
  %inc70 = add i32 %115, 1
  store i32 %inc70, ptr %tx, align 4
  %116 = ptrtoint ptr %xmit1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %xmit1, align 4
  %118 = ptrtoint ptr %tail60 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %tail60, align 4
  %arrayidx = getelementptr i8, ptr %117, i32 %119
  %120 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx, align 1
  %conv73 = zext i8 %121 to i32
  %122 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %membase.i, align 4
  %124 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %vendor.i.i, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %125, align 4
  %arrayidx.i.i195 = getelementptr i16, ptr %127, i32 6
  %128 = ptrtoint ptr %arrayidx.i.i195 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %arrayidx.i.i195, align 2
  %conv.i.i196 = zext i16 %129 to i32
  %add.ptr.i197 = getelementptr i8, ptr %123, i32 %conv.i.i196
  %130 = shl nuw i32 %conv73, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i197, i32 %130) #10, !srcloc !147
  %131 = ptrtoint ptr %tail60 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %tail60, align 4
  %add75 = add i32 %132, 1
  %and76 = and i32 %add75, 4095
  store i32 %and76, ptr %tail60, align 4
  br label %while.cond44.backedge

while.end80:                                      ; preds = %uart_tx_stopped.exit192.while.end80_crit_edge, %land.lhs.true.i186.while.end80_crit_edge, %if.end58.while.end80_crit_edge, %while.cond44.backedge.while.end80_crit_edge, %while.cond44.preheader.while.end80_crit_edge
  %133 = ptrtoint ptr %head59 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %head59, align 4
  %tail82 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %135 = ptrtoint ptr %tail82 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %tail82, align 4
  %sub83 = sub i32 %134, %136
  %and84 = and i32 %sub83, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %cmp85 = icmp eq i32 %and84, 0
  br i1 %cmp85, label %if.then87, label %while.end80.if.end89_crit_edge

while.end80.if.end89_crit_edge:                   ; preds = %while.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

if.then87:                                        ; preds = %while.end80
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @uart_write_wakeup(ptr noundef %s) #10
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %while.end80.if.end89_crit_edge
  %137 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %state, align 4
  %head93 = getelementptr inbounds %struct.uart_state, ptr %138, i32 0, i32 2, i32 1
  %139 = ptrtoint ptr %head93 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %head93, align 4
  %tail97 = getelementptr inbounds %struct.uart_state, ptr %138, i32 0, i32 2, i32 2
  %141 = ptrtoint ptr %tail97 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %tail97, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %140, i32 %142)
  %cmp98 = icmp eq i32 %140, %142
  %143 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %membase.i, align 4
  %145 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %vendor.i.i, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %146, align 4
  %arrayidx.i.i200 = getelementptr i16, ptr %148, i32 5
  %149 = ptrtoint ptr %arrayidx.i.i200 to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %arrayidx.i.i200, align 2
  %conv.i.i201 = zext i16 %150 to i32
  %add.ptr.i202 = getelementptr i8, ptr %144, i32 %conv.i.i201
  br i1 %cmp98, label %if.then100, label %if.else101

if.then100:                                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i202, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 8192) #10, !srcloc !147
  br label %if.end102

if.else101:                                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr1.i208 = getelementptr i8, ptr %add.ptr.i202, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i208, i32 8192) #10, !srcloc !147
  br label %if.end102

if.end102:                                        ; preds = %if.else101, %if.then100
  %151 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %state, align 4
  %tty2.i210 = getelementptr inbounds %struct.tty_port, ptr %152, i32 0, i32 1
  %153 = ptrtoint ptr %tty2.i210 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %tty2.i210, align 4
  %tobool.not.i211 = icmp eq ptr %154, null
  br i1 %tobool.not.i211, label %if.end102.uart_tx_stopped.exit220_crit_edge, label %land.lhs.true.i214

if.end102.uart_tx_stopped.exit220_crit_edge:      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_tx_stopped.exit220

land.lhs.true.i214:                               ; preds = %if.end102
  %stopped.i212 = getelementptr inbounds %struct.tty_struct, ptr %154, i32 0, i32 19, i32 1
  %155 = ptrtoint ptr %stopped.i212 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %stopped.i212, align 4, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool3.not.i213 = icmp eq i8 %156, 0
  br i1 %tobool3.not.i213, label %land.lhs.true.i214.uart_tx_stopped.exit220_crit_edge, label %land.lhs.true.i214.if.then106_crit_edge

land.lhs.true.i214.if.then106_crit_edge:          ; preds = %land.lhs.true.i214
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then106

land.lhs.true.i214.uart_tx_stopped.exit220_crit_edge: ; preds = %land.lhs.true.i214
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_tx_stopped.exit220

uart_tx_stopped.exit220:                          ; preds = %land.lhs.true.i214.uart_tx_stopped.exit220_crit_edge, %if.end102.uart_tx_stopped.exit220_crit_edge
  %hw_stopped.i215 = getelementptr inbounds %struct.uart_port, ptr %s, i32 0, i32 35
  %157 = ptrtoint ptr %hw_stopped.i215 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %hw_stopped.i215, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool4.not.i216.not = icmp eq i32 %158, 0
  br i1 %tobool4.not.i216.not, label %uart_tx_stopped.exit220.cleanup109_crit_edge, label %uart_tx_stopped.exit220.if.then106_crit_edge

uart_tx_stopped.exit220.if.then106_crit_edge:     ; preds = %uart_tx_stopped.exit220
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then106

uart_tx_stopped.exit220.cleanup109_crit_edge:     ; preds = %uart_tx_stopped.exit220
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup109

if.then106:                                       ; preds = %uart_tx_stopped.exit220.if.then106_crit_edge, %land.lhs.true.i214.if.then106_crit_edge
  %159 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %membase.i, align 4
  %161 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %vendor.i.i, align 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %162, align 4
  %arrayidx.i.i.i223 = getelementptr i16, ptr %164, i32 2
  %165 = ptrtoint ptr %arrayidx.i.i.i223 to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %arrayidx.i.i.i223, align 2
  %conv.i.i.i224 = zext i16 %166 to i32
  %add.ptr.i.i225 = getelementptr i8, ptr %160, i32 %conv.i.i.i224
  %add.ptr1.i.i226 = getelementptr i8, ptr %add.ptr.i.i225, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i226, i32 65536) #10, !srcloc !147
  br label %cleanup109

cleanup109:                                       ; preds = %if.then106, %uart_tx_stopped.exit220.cleanup109_crit_edge, %if.else, %mxs_auart_dma_tx.exit, %if.then.cleanup109_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dma_tx_callback(ptr noundef %param) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %param, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %dev = getelementptr inbounds %struct.mxs_auart_port, ptr %param, i32 0, i32 7
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tx_sgl = getelementptr inbounds %struct.mxs_auart_port, ptr %param, i32 0, i32 8
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %tx_sgl, i32 noundef 1, i32 noundef 1, i32 noundef 0) #10
  %flags = getelementptr inbounds %struct.mxs_auart_port, ptr %param, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !150
  %head = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tail, align 4
  %sub = sub i32 %5, %7
  %and = and i32 %sub, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @uart_write_wakeup(ptr noundef %param) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @mxs_auart_tx_chars(ptr noundef %param)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxs_auart_dma_exit(ptr noundef %s) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %s, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %vendor.i.i = getelementptr inbounds %struct.mxs_auart_port, ptr %s, i32 0, i32 4
  %2 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vendor.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx.i.i = getelementptr i16, ptr %5, i32 2
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %7 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 7) #10, !srcloc !147
  %tx_dma_chan.i = getelementptr inbounds %struct.mxs_auart_port, ptr %s, i32 0, i32 9
  %8 = ptrtoint ptr %tx_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_dma_chan.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dma_release_channel(ptr noundef nonnull %9) #10
  %10 = ptrtoint ptr %tx_dma_chan.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %tx_dma_chan.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %rx_dma_chan.i = getelementptr inbounds %struct.mxs_auart_port, ptr %s, i32 0, i32 12
  %11 = ptrtoint ptr %rx_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_dma_chan.i, align 4
  %tobool3.not.i = icmp eq ptr %12, null
  br i1 %tobool3.not.i, label %if.end.i.mxs_auart_dma_exit_channel.exit_crit_edge, label %if.then4.i

if.end.i.mxs_auart_dma_exit_channel.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxs_auart_dma_exit_channel.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dma_release_channel(ptr noundef nonnull %12) #10
  %13 = ptrtoint ptr %rx_dma_chan.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %rx_dma_chan.i, align 4
  br label %mxs_auart_dma_exit_channel.exit

mxs_auart_dma_exit_channel.exit:                  ; preds = %if.then4.i, %if.end.i.mxs_auart_dma_exit_channel.exit_crit_edge
  %tx_dma_buf.i = getelementptr inbounds %struct.mxs_auart_port, ptr %s, i32 0, i32 10
  %14 = ptrtoint ptr %tx_dma_buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_dma_buf.i, align 4
  tail call void @kfree(ptr noundef %15) #10
  %rx_dma_buf.i = getelementptr inbounds %struct.mxs_auart_port, ptr %s, i32 0, i32 13
  %16 = ptrtoint ptr %rx_dma_buf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_dma_buf.i, align 4
  tail call void @kfree(ptr noundef %17) #10
  %18 = ptrtoint ptr %tx_dma_buf.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %tx_dma_buf.i, align 4
  %19 = ptrtoint ptr %rx_dma_buf.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %rx_dma_buf.i, align 4
  %flags = getelementptr inbounds %struct.mxs_auart_port, ptr %s, i32 0, i32 1
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %and = and i32 %21, -3
  store i32 %and, ptr %flags, align 4
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tty_get_char_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxs_auart_dma_init(ptr nocapture noundef %s) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.mxs_auart_port, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.mxs_auart_port, ptr %s, i32 0, i32 7
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call ptr @dma_request_chan(ptr noundef %3, ptr noundef nonnull @.str.47) #10
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i = select i1 %cmp.i.i, ptr null, ptr %call.i
  %rx_dma_chan = getelementptr inbounds %struct.mxs_auart_port, ptr %s, i32 0, i32 12
  %4 = ptrtoint ptr %rx_dma_chan to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %spec.select.i, ptr %rx_dma_chan, align 4
  %tobool.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool.not, label %if.end.err_out_crit_edge, label %if.end4

if.end.err_out_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 12) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3521, i32 noundef 4096) #14
  %rx_dma_buf = getelementptr inbounds %struct.mxs_auart_port, ptr %s, i32 0, i32 13
  %6 = ptrtoint ptr %rx_dma_buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %rx_dma_buf, align 4
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end4.err_out_crit_edge, label %if.end9

if.end4.err_out_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

if.end9:                                          ; preds = %if.end4
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %call.i42 = tail call ptr @dma_request_chan(ptr noundef %8, ptr noundef nonnull @.str.48) #10
  %cmp.i.i43 = icmp ugt ptr %call.i42, inttoptr (i32 -4096 to ptr)
  %spec.select.i44 = select i1 %cmp.i.i43, ptr null, ptr %call.i42
  %tx_dma_chan = getelementptr inbounds %struct.mxs_auart_port, ptr %s, i32 0, i32 9
  %9 = ptrtoint ptr %tx_dma_chan to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %spec.select.i44, ptr %tx_dma_chan, align 4
  %tobool13.not = icmp eq ptr %spec.select.i44, null
  br i1 %tobool13.not, label %if.end9.err_out_crit_edge, label %if.end15

if.end9.err_out_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

if.end15:                                         ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 12) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 12), align 4
  %call7.i.i45 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3521, i32 noundef 4096) #14
  %tx_dma_buf = getelementptr inbounds %struct.mxs_auart_port, ptr %s, i32 0, i32 10
  %11 = ptrtoint ptr %tx_dma_buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i45, ptr %tx_dma_buf, align 4
  %tobool18.not = icmp eq ptr %call7.i.i45, null
  br i1 %tobool18.not, label %if.end15.err_out_crit_edge, label %if.end20

if.end15.err_out_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

if.end20:                                         ; preds = %if.end15
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %or = or i32 %13, 2
  store i32 %or, ptr %flags.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxs_auart_dma_init.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxs_auart_dma_init, %if.then25)) #10
          to label %do.end [label %if.then25], !srcloc !151

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxs_auart_dma_init.__UNIQUE_ID_ddebug238, ptr noundef %15, ptr noundef nonnull @.str.51) #10
  br label %do.end

do.end:                                           ; preds = %if.then25, %if.end20
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %s, i32 0, i32 23
  %16 = ptrtoint ptr %fifosize to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4096, ptr %fifosize, align 4
  br label %return

err_out:                                          ; preds = %if.end15.err_out_crit_edge, %if.end9.err_out_crit_edge, %if.end4.err_out_crit_edge, %if.end.err_out_crit_edge
  %tx_dma_chan.i = getelementptr inbounds %struct.mxs_auart_port, ptr %s, i32 0, i32 9
  %17 = ptrtoint ptr %tx_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx_dma_chan.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %err_out.if.end.i_crit_edge, label %if.then.i

err_out.if.end.i_crit_edge:                       ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dma_release_channel(ptr noundef nonnull %18) #10
  %19 = ptrtoint ptr %tx_dma_chan.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %tx_dma_chan.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %err_out.if.end.i_crit_edge
  %20 = ptrtoint ptr %rx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx_dma_chan, align 4
  %tobool3.not.i = icmp eq ptr %21, null
  br i1 %tobool3.not.i, label %if.end.i.mxs_auart_dma_exit_channel.exit_crit_edge, label %if.then4.i

if.end.i.mxs_auart_dma_exit_channel.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxs_auart_dma_exit_channel.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dma_release_channel(ptr noundef nonnull %21) #10
  %22 = ptrtoint ptr %rx_dma_chan to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %rx_dma_chan, align 4
  br label %mxs_auart_dma_exit_channel.exit

mxs_auart_dma_exit_channel.exit:                  ; preds = %if.then4.i, %if.end.i.mxs_auart_dma_exit_channel.exit_crit_edge
  %tx_dma_buf.i = getelementptr inbounds %struct.mxs_auart_port, ptr %s, i32 0, i32 10
  %23 = ptrtoint ptr %tx_dma_buf.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx_dma_buf.i, align 4
  tail call void @kfree(ptr noundef %24) #10
  %rx_dma_buf.i = getelementptr inbounds %struct.mxs_auart_port, ptr %s, i32 0, i32 13
  %25 = ptrtoint ptr %rx_dma_buf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx_dma_buf.i, align 4
  tail call void @kfree(ptr noundef %26) #10
  %27 = ptrtoint ptr %tx_dma_buf.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %tx_dma_buf.i, align 4
  %28 = ptrtoint ptr %rx_dma_buf.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %rx_dma_buf.i, align 4
  br label %return

return:                                           ; preds = %mxs_auart_dma_exit_channel.exit, %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %mxs_auart_dma_exit_channel.exit ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mctrl_gpio_to_gpiod(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxs_auart_dma_prep_rx(ptr noundef %s) unnamed_addr #2 align 64 {
entry:
  %pio = alloca [1 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_dma_chan = getelementptr inbounds %struct.mxs_auart_port, ptr %s, i32 0, i32 12
  %0 = ptrtoint ptr %rx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_dma_chan, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pio) #10
  %2 = ptrtoint ptr %pio to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 142610432, ptr %pio, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %lor.lhs.false.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false.i:                                  ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %tobool1.not.i = icmp eq ptr %4, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.end_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 39
  %5 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %6, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.do.end_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.do.end_crit_edge:                ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i = call ptr %6(ptr noundef nonnull %1, ptr noundef nonnull %pio, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef null) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %dmaengine_prep_slave_sg.exit.do.end_crit_edge, label %lor.lhs.false.i31

dmaengine_prep_slave_sg.exit.do.end_crit_edge:    ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %dmaengine_prep_slave_sg.exit.do.end_crit_edge, %lor.lhs.false2.i.do.end_crit_edge, %lor.lhs.false.i.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.mxs_auart_port, ptr %s, i32 0, i32 7
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.38) #13
  br label %cleanup

lor.lhs.false.i31:                                ; preds = %dmaengine_prep_slave_sg.exit
  %rx_sgl = getelementptr inbounds %struct.mxs_auart_port, ptr %s, i32 0, i32 11
  %rx_dma_buf = getelementptr inbounds %struct.mxs_auart_port, ptr %s, i32 0, i32 13
  %9 = ptrtoint ptr %rx_dma_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_dma_buf, align 4
  call void @sg_init_one(ptr noundef %rx_sgl, ptr noundef %10, i32 noundef 4096) #10
  %dev1 = getelementptr inbounds %struct.mxs_auart_port, ptr %s, i32 0, i32 7
  %11 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev1, align 4
  %call2 = call i32 @dma_map_sg_attrs(ptr noundef %12, ptr noundef %rx_sgl, i32 noundef 1, i32 noundef 2, i32 noundef 0) #10
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %tobool1.not.i30 = icmp eq ptr %14, null
  br i1 %tobool1.not.i30, label %lor.lhs.false.i31.do.end8_crit_edge, label %lor.lhs.false2.i34

lor.lhs.false.i31.do.end8_crit_edge:              ; preds = %lor.lhs.false.i31
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

lor.lhs.false2.i34:                               ; preds = %lor.lhs.false.i31
  %device_prep_slave_sg.i32 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 39
  %15 = ptrtoint ptr %device_prep_slave_sg.i32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device_prep_slave_sg.i32, align 4
  %tobool4.not.i33 = icmp eq ptr %16, null
  br i1 %tobool4.not.i33, label %lor.lhs.false2.i34.do.end8_crit_edge, label %dmaengine_prep_slave_sg.exit38

lor.lhs.false2.i34.do.end8_crit_edge:             ; preds = %lor.lhs.false2.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

dmaengine_prep_slave_sg.exit38:                   ; preds = %lor.lhs.false2.i34
  %call.i35 = call ptr %16(ptr noundef nonnull %1, ptr noundef %rx_sgl, i32 noundef 1, i32 noundef 2, i32 noundef 3, ptr noundef null) #10
  %tobool4.not = icmp eq ptr %call.i35, null
  br i1 %tobool4.not, label %dmaengine_prep_slave_sg.exit38.do.end8_crit_edge, label %if.end10

dmaengine_prep_slave_sg.exit38.do.end8_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit38
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end8:                                          ; preds = %dmaengine_prep_slave_sg.exit38.do.end8_crit_edge, %lor.lhs.false2.i34.do.end8_crit_edge, %lor.lhs.false.i31.do.end8_crit_edge
  %17 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.41) #13
  br label %cleanup

if.end10:                                         ; preds = %dmaengine_prep_slave_sg.exit38
  call void @__sanitizer_cov_trace_pc() #12
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i35, i32 0, i32 6
  %19 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @dma_rx_callback, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i35, i32 0, i32 8
  %20 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %s, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i35, i32 0, i32 4
  %21 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx_submit.i, align 4
  %call.i39 = call i32 %22(ptr noundef nonnull %call.i35) #10
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 50
  %25 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device_issue_pending.i, align 4
  call void %26(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end8, %do.end
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -1, %do.end8 ], [ -22, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pio) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dma_rx_callback(ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %arg, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %dev = getelementptr inbounds %struct.mxs_auart_port, ptr %arg, i32 0, i32 7
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %rx_sgl = getelementptr inbounds %struct.mxs_auart_port, ptr %arg, i32 0, i32 11
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %rx_sgl, i32 noundef 1, i32 noundef 2, i32 noundef 0) #10
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %arg, i32 0, i32 2
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  %vendor.i.i = getelementptr inbounds %struct.mxs_auart_port, ptr %arg, i32 0, i32 4
  %6 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vendor.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %arrayidx.i.i = getelementptr i16, ptr %9, i32 7
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %11 to i32
  %add.ptr.i = getelementptr i8, ptr %5, i32 %conv.i.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !146
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #10
  %and = and i32 %13, -983041
  %and3 = and i32 %13, 65535
  %rx_dma_buf = getelementptr inbounds %struct.mxs_auart_port, ptr %arg, i32 0, i32 13
  %14 = ptrtoint ptr %rx_dma_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_dma_buf, align 4
  %call.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %1, ptr noundef %15, i8 noundef zeroext 0, i32 noundef %and3) #10
  %16 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i, align 4
  %18 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vendor.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %arrayidx.i.i17 = getelementptr i16, ptr %21, i32 7
  %22 = ptrtoint ptr %arrayidx.i.i17 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.i.i17, align 2
  %conv.i.i18 = zext i16 %23 to i32
  %add.ptr.i19 = getelementptr i8, ptr %17, i32 %conv.i.i18
  %24 = tail call i32 @llvm.bswap.i32(i32 %and) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %24) #10, !srcloc !147
  tail call void @tty_flip_buffer_push(ptr noundef %1) #10
  %call5 = tail call fastcc i32 @mxs_auart_dma_prep_rx(ptr noundef %arg)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_handle_cts_change(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_handle_dcd_change(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_insert_char(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_SAK(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mctrl_gpio_init_noauto(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_direction(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @auart_console_write(ptr nocapture noundef readonly %co, ptr noundef %str, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %1)
  %2 = icmp ugt i16 %1, 4
  br i1 %2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv69 = zext i16 %1 to i32
  %arrayidx = getelementptr [5 x ptr], ptr @auart_port, i32 0, i32 %conv69
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %clk = getelementptr inbounds %struct.mxs_auart_port, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_enable(ptr noundef %6) #10
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i, align 4
  %vendor.i.i = getelementptr inbounds %struct.mxs_auart_port, ptr %4, i32 0, i32 4
  %9 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vendor.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %arrayidx.i.i = getelementptr i16, ptr %12, i32 2
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %14 to i32
  %add.ptr.i = getelementptr i8, ptr %8, i32 %conv.i.i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !146
  %16 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i, align 4
  %18 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vendor.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %21, align 2
  %conv.i.i38 = zext i16 %23 to i32
  %add.ptr.i39 = getelementptr i8, ptr %17, i32 %conv.i.i38
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39) #10, !srcloc !146
  %25 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase.i, align 4
  %27 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vendor.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %30, align 2
  %conv.i.i42 = zext i16 %32 to i32
  %add.ptr.i43 = getelementptr i8, ptr %26, i32 %conv.i.i42
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i43, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 64) #10, !srcloc !147
  %33 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase.i, align 4
  %35 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vendor.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %arrayidx.i.i46 = getelementptr i16, ptr %38, i32 2
  %39 = ptrtoint ptr %arrayidx.i.i46 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx.i.i46, align 2
  %conv.i.i47 = zext i16 %40 to i32
  %add.ptr.i48 = getelementptr i8, ptr %34, i32 %conv.i.i47
  %add.ptr1.i49 = getelementptr i8, ptr %add.ptr.i48, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i49, i32 16842752) #10, !srcloc !147
  tail call void @uart_console_write(ptr noundef %4, ptr noundef %str, i32 noundef %count, ptr noundef nonnull @mxs_auart_console_putchar) #10
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end
  %to.0 = phi i32 [ 20000, %if.end ], [ %dec, %while.body.while.cond_crit_edge ]
  %41 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %membase.i, align 4
  %43 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vendor.i.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %arrayidx.i.i52 = getelementptr i16, ptr %46, i32 7
  %47 = ptrtoint ptr %arrayidx.i.i52 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx.i.i52, align 2
  %conv.i.i53 = zext i16 %48 to i32
  %add.ptr.i54 = getelementptr i8, ptr %42, i32 %conv.i.i53
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54) #10, !srcloc !146
  %50 = and i32 %49, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not = icmp eq i32 %50, 0
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748) #10
  %dec = add nsw i32 %to.0, -1
  %tobool11.not = icmp eq i32 %to.0, 0
  br i1 %tobool11.not, label %while.body.while.end_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %52 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %membase.i, align 4
  %54 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %vendor.i.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %arrayidx.i.i57 = getelementptr i16, ptr %57, i32 7
  %58 = ptrtoint ptr %arrayidx.i.i57 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx.i.i57, align 2
  %conv.i.i58 = zext i16 %59 to i32
  %add.ptr.i59 = getelementptr i8, ptr %53, i32 %conv.i.i58
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59) #10, !srcloc !146
  %61 = and i32 %60, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool16.not = icmp eq i32 %61, 0
  br i1 %tobool16.not, label %if.then17, label %while.end.if.end18_crit_edge

while.end.if.end18_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then17:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %membase.i, align 4
  %64 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %vendor.i.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %67, align 2
  %conv.i.i62 = zext i16 %69 to i32
  %add.ptr.i63 = getelementptr i8, ptr %63, i32 %conv.i.i62
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 %24) #10, !srcloc !147
  %70 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %membase.i, align 4
  %72 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %vendor.i.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %arrayidx.i.i66 = getelementptr i16, ptr %75, i32 2
  %76 = ptrtoint ptr %arrayidx.i.i66 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %arrayidx.i.i66, align 2
  %conv.i.i67 = zext i16 %77 to i32
  %add.ptr.i68 = getelementptr i8, ptr %71, i32 %conv.i.i67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 %15) #10, !srcloc !147
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %while.end.if.end18_crit_edge
  %78 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %79) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @auart_console_setup(ptr noundef %co, ptr noundef %options) #0 section ".init.text" align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %5)
  %cmp4 = icmp ugt i16 %5, 4
  br i1 %cmp4, label %if.then, label %entry.if.end_crit_edge

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
  %arrayidx = getelementptr [5 x ptr], ptr @auart_port, i32 0, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %clk = getelementptr inbounds %struct.mxs_auart_port, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end9
  %call1.i = tail call i32 @clk_enable(ptr noundef %12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end12, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %12) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end.i
  %tobool13.not = icmp eq ptr %options, null
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  call void @uart_parse_options(ptr noundef nonnull %options, ptr noundef nonnull %baud, ptr noundef nonnull %parity, ptr noundef nonnull %bits, ptr noundef nonnull %flow) #10
  br label %if.end15

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @auart_console_get_options(ptr noundef nonnull %10, ptr noundef nonnull %baud, ptr noundef nonnull %parity, ptr noundef nonnull %bits) #15
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then14
  %13 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %baud, align 4
  %15 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %parity, align 4
  %17 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bits, align 4
  %19 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flow, align 4
  %call16 = call i32 @uart_set_options(ptr noundef nonnull %10, ptr noundef %co, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20) #10
  %21 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %22) #10
  call void @clk_unprepare(ptr noundef %22) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then3.i, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end15 ], [ -19, %if.end.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flow) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parity) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %baud) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxs_auart_console_putchar(ptr nocapture noundef readonly %port, i32 noundef %ch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %vendor.i.i = getelementptr inbounds %struct.mxs_auart_port, ptr %port, i32 0, i32 4
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %2 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vendor.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx.i.i8 = getelementptr i16, ptr %5, i32 7
  %6 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i.i8, align 2
  %conv.i.i9 = zext i16 %7 to i32
  %add.ptr.i10 = getelementptr i8, ptr %1, i32 %conv.i.i9
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #10, !srcloc !146
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not11 = icmp eq i32 %9, 0
  br i1 %tobool.not11, label %entry.while.end_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end:                                           ; preds = %if.end.if.end_crit_edge, %entry.if.end_crit_edge
  %to.012 = phi i32 [ %dec, %if.end.if.end_crit_edge ], [ 1000, %entry.if.end_crit_edge ]
  %dec = add nsw i32 %to.012, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #10
  %11 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i, align 4
  %13 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vendor.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %arrayidx.i.i = getelementptr i16, ptr %16, i32 7
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %18 to i32
  %add.ptr.i = getelementptr i8, ptr %12, i32 %conv.i.i
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !146
  %20 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool1.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %if.end.while.end_crit_edge, label %if.end.if.end_crit_edge

if.end.if.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %21 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase.i, align 4
  %23 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vendor.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %arrayidx.i.i5 = getelementptr i16, ptr %26, i32 6
  %27 = ptrtoint ptr %arrayidx.i.i5 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx.i.i5, align 2
  %conv.i.i6 = zext i16 %28 to i32
  %add.ptr.i7 = getelementptr i8, ptr %22, i32 %conv.i.i6
  %29 = tail call i32 @llvm.bswap.i32(i32 %ch) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 %29) #10, !srcloc !147
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @auart_console_get_options(ptr nocapture noundef readonly %s, ptr nocapture noundef writeonly %baud, ptr nocapture noundef writeonly %parity, ptr nocapture noundef writeonly %bits) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %s, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %vendor.i.i = getelementptr inbounds %struct.mxs_auart_port, ptr %s, i32 0, i32 4
  %2 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vendor.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx.i.i = getelementptr i16, ptr %5, i32 2
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %7 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !146
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i, align 4
  %12 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vendor.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %arrayidx.i.i38 = getelementptr i16, ptr %15, i32 3
  %16 = ptrtoint ptr %arrayidx.i.i38 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.i.i38, align 2
  %conv.i.i39 = zext i16 %17 to i32
  %add.ptr.i40 = getelementptr i8, ptr %11, i32 %conv.i.i39
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40) #10, !srcloc !146
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  %and3 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %and6 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %.51 = select i1 %tobool7.not, i32 111, i32 101
  %storemerge = select i1 %tobool4.not, i32 110, i32 %.51
  %20 = ptrtoint ptr %parity to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %storemerge, ptr %parity, align 4
  %and11 = and i32 %19, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and11)
  %cmp = icmp eq i32 %and11, 64
  %. = select i1 %cmp, i32 7, i32 8
  %21 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %., ptr %bits, align 4
  %22 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i, align 4
  %24 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vendor.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %arrayidx.i.i43 = getelementptr i16, ptr %27, i32 3
  %28 = ptrtoint ptr %arrayidx.i.i43 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx.i.i43, align 2
  %conv.i.i44 = zext i16 %29 to i32
  %add.ptr.i45 = getelementptr i8, ptr %23, i32 %conv.i.i44
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #10, !srcloc !146
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #10
  %and16 = lshr i32 %31, 10
  %shr = and i32 %and16, 4194240
  %32 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase.i, align 4
  %34 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vendor.i.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %arrayidx.i.i48 = getelementptr i16, ptr %37, i32 3
  %38 = ptrtoint ptr %arrayidx.i.i48 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx.i.i48, align 2
  %conv.i.i49 = zext i16 %39 to i32
  %add.ptr.i50 = getelementptr i8, ptr %33, i32 %conv.i.i49
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50) #10, !srcloc !146
  %41 = lshr i32 %40, 16
  %shr19 = and i32 %41, 63
  %or = or i32 %shr19, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %cmp20 = icmp eq i32 %or, 0
  %spec.store.select = select i1 %cmp20, i32 1, i32 %or
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %s, i32 0, i32 22
  %42 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %uartclk, align 4
  %shl = shl i32 %43, 2
  %div = udiv i32 %shl, %spec.store.select
  %44 = ptrtoint ptr %baud to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %div, ptr %baud, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !50, !51, !52, !53, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !92, !94, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !110, !112, !114, !116, !118, !119, !120, !121, !122, !124, !125, !126, !127, !129, !131, !133, !135}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142, !143, !144}
!llvm.ident = !{!145}

!0 = !{ptr @__initcall__kmod_mxs_auart__239_1756_mxs_auart_init6, !1, !"__initcall__kmod_mxs_auart__239_1756_mxs_auart_init6", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/mxs-auart.c", i32 1756, i32 1}
!2 = !{ptr @__exitcall_mxs_auart_exit, !3, !"__exitcall_mxs_auart_exit", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/mxs-auart.c", i32 1757, i32 1}
!4 = !{ptr @__UNIQUE_ID_file240, !5, !"__UNIQUE_ID_file240", i1 false, i1 false}
!5 = !{!"../drivers/tty/serial/mxs-auart.c", i32 1758, i32 1}
!6 = !{ptr @__UNIQUE_ID_license241, !5, !"__UNIQUE_ID_license241", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description242, !8, !"__UNIQUE_ID_description242", i1 false, i1 false}
!8 = !{!"../drivers/tty/serial/mxs-auart.c", i32 1759, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias243, !10, !"__UNIQUE_ID_alias243", i1 false, i1 false}
!10 = !{!"../drivers/tty/serial/mxs-auart.c", i32 1760, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/tty/serial/mxs-auart.c", i32 1726, i32 11}
!13 = !{ptr @mxs_auart_driver, !14, !"mxs_auart_driver", i1 false, i1 false}
!14 = !{!"../drivers/tty/serial/mxs-auart.c", i32 1722, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/tty/serial/mxs-auart.c", i32 1599, i32 28}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/tty/serial/mxs-auart.c", i32 1601, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mxs_auart_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @mxs_auart_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/tty/serial/mxs-auart.c", i32 1606, i32 26}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/tty/serial/mxs-auart.c", i32 1607, i32 26}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/tty/serial/mxs-auart.c", i32 1611, i32 3}
!31 = !{ptr @mxs_auart_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @mxs_auart_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/tty/serial/mxs-auart.c", i32 1660, i32 3}
!35 = !{ptr @mxs_auart_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @mxs_auart_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/tty/serial/mxs-auart.c", i32 1681, i32 3}
!39 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @mxs_auart_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @mxs_auart_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/tty/serial/mxs-auart.c", i32 1684, i32 3}
!44 = !{ptr @mxs_auart_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @mxs_auart_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/tty/serial/mxs-auart.c", i32 1481, i32 32}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/tty/serial/mxs-auart.c", i32 1483, i32 3}
!50 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @mxs_get_clks._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @mxs_get_clks._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/tty/serial/mxs-auart.c", i32 1487, i32 36}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/tty/serial/mxs-auart.c", i32 1489, i32 3}
!57 = !{ptr @mxs_get_clks._entry.26, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @mxs_get_clks._entry_ptr.28, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/tty/serial/mxs-auart.c", i32 1495, i32 3}
!61 = !{ptr @mxs_get_clks._entry.29, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @mxs_get_clks._entry_ptr.31, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/tty/serial/mxs-auart.c", i32 1501, i32 3}
!65 = !{ptr @mxs_get_clks._entry.32, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @mxs_get_clks._entry_ptr.34, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/tty/serial/mxs-auart.c", i32 1507, i32 3}
!69 = !{ptr @mxs_get_clks._entry.35, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @mxs_get_clks._entry_ptr.37, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @mxs_auart_ops, !72, !"mxs_auart_ops", i1 false, i1 false}
!72 = !{!"../drivers/tty/serial/mxs-auart.c", i32 1285, i32 30}
!73 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/tty/serial/mxs-auart.c", i32 547, i32 3}
!75 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @mxs_auart_dma_tx._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @mxs_auart_dma_tx._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/tty/serial/mxs-auart.c", i32 557, i32 3}
!80 = !{ptr @mxs_auart_dma_tx._entry.40, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @mxs_auart_dma_tx._entry_ptr.42, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/tty/serial/mxs-auart.c", i32 1177, i32 2}
!84 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @mxs_auart_reset_assert._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @mxs_auart_reset_assert._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/tty/serial/mxs-auart.c", i32 1073, i32 4}
!89 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @mxs_auart_settermios._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @mxs_auart_settermios._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/tty/serial/mxs-auart.c", i32 928, i32 53}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/tty/serial/mxs-auart.c", i32 936, i32 53}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/tty/serial/mxs-auart.c", i32 945, i32 2}
!98 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @mxs_auart_dma_init.__UNIQUE_ID_ddebug238, !97, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!101 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/tty/serial/mxs-auart.c", i32 871, i32 3}
!103 = !{ptr @mxs_auart_dma_prep_rx._entry, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @mxs_auart_dma_prep_rx._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @mxs_auart_dma_prep_rx._entry.53, !106, !"_entry", i1 false, i1 false}
!106 = !{!"../drivers/tty/serial/mxs-auart.c", i32 881, i32 3}
!107 = !{ptr @mxs_auart_dma_prep_rx._entry_ptr.54, !106, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @vendor_alphascale_asm9260, !109, !"vendor_alphascale_asm9260", i1 false, i1 false}
!109 = !{!"../drivers/tty/serial/mxs-auart.c", i32 406, i32 33}
!110 = !{ptr @mxs_asm9260_offsets, !111, !"mxs_asm9260_offsets", i1 false, i1 false}
!111 = !{!"../drivers/tty/serial/mxs-auart.c", i32 380, i32 18}
!112 = !{ptr @vendor_freescale_stmp37xx, !113, !"vendor_freescale_stmp37xx", i1 false, i1 false}
!113 = !{!"../drivers/tty/serial/mxs-auart.c", i32 410, i32 33}
!114 = !{ptr @mxs_stmp37xx_offsets, !115, !"mxs_stmp37xx_offsets", i1 false, i1 false}
!115 = !{!"../drivers/tty/serial/mxs-auart.c", i32 392, i32 18}
!116 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/tty/serial/mxs-auart.c", i32 1530, i32 4}
!118 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @mxs_auart_init_gpios._entry, !117, !"_entry", i1 false, i1 false}
!121 = !{ptr @mxs_auart_init_gpios._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/tty/serial/mxs-auart.c", i32 1569, i32 4}
!124 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @mxs_auart_request_gpio_irq._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @mxs_auart_request_gpio_irq._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @auart_port, !128, !"auart_port", i1 false, i1 false}
!128 = !{!"../drivers/tty/serial/mxs-auart.c", i32 1305, i32 31}
!129 = !{ptr @mxs_auart_dt_ids, !130, !"mxs_auart_dt_ids", i1 false, i1 false}
!130 = !{!"../drivers/tty/serial/mxs-auart.c", i32 444, i32 34}
!131 = !{ptr @.str.60, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/tty/serial/mxs-auart.c", i32 1453, i32 17}
!133 = !{ptr @auart_driver, !134, !"auart_driver", i1 false, i1 false}
!134 = !{!"../drivers/tty/serial/mxs-auart.c", i32 1451, i32 27}
!135 = !{ptr @auart_console, !136, !"auart_console", i1 false, i1 false}
!136 = !{!"../drivers/tty/serial/mxs-auart.c", i32 1440, i32 23}
!137 = !{i32 1, !"wchar_size", i32 2}
!138 = !{i32 1, !"min_enum_size", i32 4}
!139 = !{i32 8, !"branch-target-enforcement", i32 0}
!140 = !{i32 8, !"sign-return-address", i32 0}
!141 = !{i32 8, !"sign-return-address-all", i32 0}
!142 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!143 = !{i32 7, !"uwtable", i32 1}
!144 = !{i32 7, !"frame-pointer", i32 2}
!145 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!146 = !{i64 4249293}
!147 = !{i64 4248875}
!148 = !{i8 0, i8 2}
!149 = !{i64 2154715620}
!150 = !{i64 2154707878}
!151 = !{i64 2148735063, i64 2148735068, i64 2148735081, i64 2148735125, i64 2148735159, i64 2148735180}
