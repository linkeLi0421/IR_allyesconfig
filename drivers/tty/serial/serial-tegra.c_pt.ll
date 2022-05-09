; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/serial-tegra.c_pt.bc'
source_filename = "../drivers/tty/serial/serial-tegra.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.tegra_uart_chip_data = type { i8, i8, i8, i8, i32, i32, i32, i32 }
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
%struct.tegra_uart_port = type { %struct.uart_port, ptr, ptr, ptr, i32, i32, i32, i32, i32, i8, i32, i32, i8, i8, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8 }
%struct.tegra_baud_tolerance = type { i32, i32, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.69, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.69 = type { %struct.atomic_t }

@tegra_uart_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1707, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016Unloading tegra uart driver\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tegra_uart_exit\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/tty/serial/serial-tegra.c\00", [62 x i8] zeroinitializer }, align 32
@tegra_uart_exit._entry_ptr = internal global ptr @tegra_uart_exit._entry, section ".printk_index", align 4
@tegra_uart_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_uart_probe, ptr @tegra_uart_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_uart_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_uart_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@tegra_uart_driver = internal global { %struct.uart_driver, [60 x i8] } { %struct.uart_driver { ptr null, ptr @.str.92, ptr @.str.93, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_serial_tegra__257_1712_tegra_uart_init6 = internal global ptr @tegra_uart_init, section ".initcall6.init", align 4
@__exitcall_tegra_uart_exit = internal global ptr @tegra_uart_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias258 = internal constant [41 x i8] c"serial_tegra.alias=platform:serial-tegra\00", section ".modinfo", align 1
@__UNIQUE_ID_description259 = internal constant [66 x i8] c"serial_tegra.description=High speed UART driver for tegra chipset\00", section ".modinfo", align 1
@__UNIQUE_ID_author260 = internal constant [59 x i8] c"serial_tegra.author=Laxman Dewangan <ldewangan@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file261 = internal constant [50 x i8] c"serial_tegra.file=drivers/tty/serial/serial-tegra\00", section ".modinfo", align 1
@__UNIQUE_ID_license262 = internal constant [28 x i8] c"serial_tegra.license=GPL v2\00", section ".modinfo", align 1
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"serial-tegra\00", [19 x i8] zeroinitializer }, align 32
@tegra_uart_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-hsuart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_uart_chip_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-hsuart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_uart_chip_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-hsuart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra186_uart_chip_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-hsuart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra194_uart_chip_data }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@tegra_uart_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tegra_uart_suspend, ptr @tegra_uart_resume, ptr @tegra_uart_suspend, ptr @tegra_uart_resume, ptr @tegra_uart_suspend, ptr @tegra_uart_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra_uart_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 1574, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error: No device match found\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tegra_uart_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_uart_probe._entry_ptr = internal global ptr @tegra_uart_probe._entry, section ".printk_index", align 4
@tegra_uart_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.2, i32 1580, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to allocate memory for tup\0A\00", [61 x i8] zeroinitializer }, align 32
@tegra_uart_probe._entry_ptr.10 = internal global ptr @tegra_uart_probe._entry.8, section ".printk_index", align 4
@tegra_uart_ops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @tegra_uart_tx_empty, ptr @tegra_uart_set_mctrl, ptr @tegra_uart_get_mctrl, ptr @tegra_uart_stop_tx, ptr @tegra_uart_start_tx, ptr null, ptr null, ptr null, ptr @tegra_uart_stop_rx, ptr @tegra_uart_enable_ms, ptr @tegra_uart_break_ctl, ptr @tegra_uart_startup, ptr @tegra_uart_shutdown, ptr @tegra_uart_flush_buffer, ptr @tegra_uart_set_termios, ptr null, ptr null, ptr @tegra_uart_type, ptr @tegra_uart_release_port, ptr @tegra_uart_request_port, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@tegra_uart_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.5, ptr @.str.2, i32 1598, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"No IO memory resource\0A\00", [41 x i8] zeroinitializer }, align 32
@tegra_uart_probe._entry_ptr.13 = internal global ptr @tegra_uart_probe._entry.11, section ".printk_index", align 4
@tegra_uart_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.2, i32 1609, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Couldn't get the clock\0A\00", [40 x i8] zeroinitializer }, align 32
@tegra_uart_probe._entry_ptr.16 = internal global ptr @tegra_uart_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@tegra_uart_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.2, i32 1615, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Couldn't get the reset\0A\00", [40 x i8] zeroinitializer }, align 32
@tegra_uart_probe._entry_ptr.20 = internal global ptr @tegra_uart_probe._entry.18, section ".printk_index", align 4
@tegra_uart_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.5, ptr @.str.2, i32 1627, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to add uart port, err %d\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra_uart_probe._entry_ptr.23 = internal global ptr @tegra_uart_probe._entry.21, section ".printk_index", align 4
@tegra_uart_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 1444, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get alias id, errno %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tegra_uart_parse_dt\00", [44 x i8] zeroinitializer }, align 32
@tegra_uart_parse_dt._entry_ptr = internal global ptr @tegra_uart_parse_dt._entry, section ".printk_index", align 4
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nvidia,enable-modem-interrupt\00", [34 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dma-names\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@tegra_uart_parse_dt._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.2, i32 1455, ptr @.str.31, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX in PIO mode\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tegra_uart_parse_dt._entry_ptr.32 = internal global ptr @tegra_uart_parse_dt._entry.29, section ".printk_index", align 4
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@tegra_uart_parse_dt._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.25, ptr @.str.2, i32 1460, ptr @.str.31, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TX in PIO mode\0A\00", [16 x i8] zeroinitializer }, align 32
@tegra_uart_parse_dt._entry_ptr.36 = internal global ptr @tegra_uart_parse_dt._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nvidia,adjust-baud-rates\00", [39 x i8] zeroinitializer }, align 32
@tegra_uart_start_tx_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 552, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Not able to get desc for Tx\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tegra_uart_start_tx_dma\00", [40 x i8] zeroinitializer }, align 32
@tegra_uart_start_tx_dma._entry_ptr = internal global ptr @tegra_uart_start_tx_dma._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tegra_uart_copy_rx_to_tty._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 692, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"RxData copy to tty layer failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tegra_uart_copy_rx_to_tty\00", [38 x i8] zeroinitializer }, align 32
@tegra_uart_copy_rx_to_tty._entry_ptr = internal global ptr @tegra_uart_copy_rx_to_tty._entry, section ".printk_index", align 4
@tegra_uart_decode_rx_error.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 0, i8 111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"serial_tegra\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tegra_uart_decode_rx_error\00", [37 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Got overrun errors\0A\00", [44 x i8] zeroinitializer }, align 32
@tegra_uart_decode_rx_error.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.43, ptr @.str.2, ptr @.str.45, i8 0, i8 113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Got Parity errors\0A\00", [45 x i8] zeroinitializer }, align 32
@tegra_uart_decode_rx_error.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.43, ptr @.str.2, ptr @.str.46, i8 0, i8 114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Got frame errors\0A\00", [46 x i8] zeroinitializer }, align 32
@tegra_uart_decode_rx_error.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.43, ptr @.str.2, ptr @.str.47, i8 0, i8 117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Got Break\0A\00", [21 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tegra_uart_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 1205, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Tx Dma allocation failed, err = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tegra_uart_startup\00", [45 x i8] zeroinitializer }, align 32
@tegra_uart_startup._entry_ptr = internal global ptr @tegra_uart_startup._entry, section ".printk_index", align 4
@tegra_uart_startup._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.2, i32 1214, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Rx Dma allocation failed, err = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@tegra_uart_startup._entry_ptr.52 = internal global ptr @tegra_uart_startup._entry.50, section ".printk_index", align 4
@tegra_uart_startup._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.49, ptr @.str.2, i32 1221, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Uart HW init failed, err = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_uart_startup._entry_ptr.55 = internal global ptr @tegra_uart_startup._entry.53, section ".printk_index", align 4
@tegra_uart_startup._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.49, ptr @.str.2, i32 1228, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register ISR for IRQ %d\0A\00", [61 x i8] zeroinitializer }, align 32
@tegra_uart_startup._entry_ptr.58 = internal global ptr @tegra_uart_startup._entry.56, section ".printk_index", align 4
@tegra_uart_dma_channel_allocate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 1144, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DMA channel alloc failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tegra_uart_dma_channel_allocate\00", [32 x i8] zeroinitializer }, align 32
@tegra_uart_dma_channel_allocate._entry_ptr = internal global ptr @tegra_uart_dma_channel_allocate._entry, section ".printk_index", align 4
@tegra_uart_dma_channel_allocate._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.2, i32 1154, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Not able to allocate the dma buffer\0A\00", [59 x i8] zeroinitializer }, align 32
@tegra_uart_dma_channel_allocate._entry_ptr.63 = internal global ptr @tegra_uart_dma_channel_allocate._entry.61, section ".printk_index", align 4
@tegra_uart_dma_channel_allocate._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.60, ptr @.str.2, i32 1172, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dma_map_single tx failed\0A\00", [38 x i8] zeroinitializer }, align 32
@tegra_uart_dma_channel_allocate._entry_ptr.66 = internal global ptr @tegra_uart_dma_channel_allocate._entry.64, section ".printk_index", align 4
@tegra_uart_dma_channel_allocate._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.60, ptr @.str.2, i32 1188, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Dma slave config failed, err = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@tegra_uart_dma_channel_allocate._entry_ptr.69 = internal global ptr @tegra_uart_dma_channel_allocate._entry.67, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.70 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@tegra_uart_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 1050, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to enable FIFO mode: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tegra_uart_hw_init\00", [45 x i8] zeroinitializer }, align 32
@tegra_uart_hw_init._entry_ptr = internal global ptr @tegra_uart_hw_init._entry, section ".printk_index", align 4
@tegra_uart_hw_init._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.2, i32 1070, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to set baud rate\0A\00", [39 x i8] zeroinitializer }, align 32
@tegra_uart_hw_init._entry_ptr.76 = internal global ptr @tegra_uart_hw_init._entry.74, section ".printk_index", align 4
@tegra_set_baudrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 402, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"clk_set_rate() failed for rate %lu\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tegra_set_baudrate\00", [45 x i8] zeroinitializer }, align 32
@tegra_set_baudrate._entry_ptr = internal global ptr @tegra_set_baudrate._entry, section ".printk_index", align 4
@tegra_check_rate_in_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 374, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"configured baud rate is out of range by %ld\00", [52 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tegra_check_rate_in_range\00", [38 x i8] zeroinitializer }, align 32
@tegra_check_rate_in_range._entry_ptr = internal global ptr @tegra_check_rate_in_range._entry, section ".printk_index", align 4
@tegra_uart_start_rx_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 797, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Not able to get desc for Rx\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tegra_uart_start_rx_dma\00", [40 x i8] zeroinitializer }, align 32
@tegra_uart_start_rx_dma._entry_ptr = internal global ptr @tegra_uart_start_rx_dma._entry, section ".printk_index", align 4
@tegra_uart_rx_dma_complete.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.83, ptr @.str.2, ptr @.str.84, i8 0, i8 -72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tegra_uart_rx_dma_complete\00", [37 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RX DMA is in progress\0A\00", [41 x i8] zeroinitializer }, align 32
@tegra_uart_hw_deinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 954, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Tx Fifo not empty, CTS disabled, waiting\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tegra_uart_hw_deinit\00", [43 x i8] zeroinitializer }, align 32
@tegra_uart_hw_deinit._entry_ptr = internal global ptr @tegra_uart_hw_deinit._entry, section ".printk_index", align 4
@tegra_uart_hw_deinit._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.2, i32 967, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Slave not ready\0A\00", [47 x i8] zeroinitializer }, align 32
@tegra_uart_hw_deinit._entry_ptr.89 = internal global ptr @tegra_uart_hw_deinit._entry.87, section ".printk_index", align 4
@tegra_uart_set_termios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.90, ptr @.str.2, i32 1359, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tegra_uart_set_termios\00", [41 x i8] zeroinitializer }, align 32
@tegra_uart_set_termios._entry_ptr = internal global ptr @tegra_uart_set_termios._entry, section ".printk_index", align 4
@.str.91 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TEGRA_UART\00", [21 x i8] zeroinitializer }, align 32
@tegra30_uart_chip_data = internal global { %struct.tegra_uart_chip_data, [44 x i8] } { %struct.tegra_uart_chip_data { i8 1, i8 0, i8 1, i8 0, i32 5, i32 4, i32 -4, i32 4 }, [44 x i8] zeroinitializer }, align 32
@tegra20_uart_chip_data = internal global { %struct.tegra_uart_chip_data, [44 x i8] } { %struct.tegra_uart_chip_data { i8 0, i8 1, i8 0, i8 0, i32 5, i32 4, i32 -4, i32 4 }, [44 x i8] zeroinitializer }, align 32
@tegra186_uart_chip_data = internal global { %struct.tegra_uart_chip_data, [44 x i8] } { %struct.tegra_uart_chip_data { i8 1, i8 0, i8 1, i8 1, i32 8, i32 8, i32 0, i32 4 }, [44 x i8] zeroinitializer }, align 32
@tegra194_uart_chip_data = internal global { %struct.tegra_uart_chip_data, [44 x i8] } { %struct.tegra_uart_chip_data { i8 1, i8 0, i8 1, i8 1, i32 8, i32 8, i32 -2, i32 2 }, [44 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tegra_hsuart\00", [19 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ttyTHS\00", [25 x i8] zeroinitializer }, align 32
@tegra_uart_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.2, i32 1692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Could not register %s driver\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tegra_uart_init\00", [16 x i8] zeroinitializer }, align 32
@tegra_uart_init._entry_ptr = internal global ptr @tegra_uart_init._entry, section ".printk_index", align 4
@tegra_uart_init._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.2, i32 1698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013Uart platform driver register failed, e = %d\0A\00", [48 x i8] zeroinitializer }, align 32
@tegra_uart_init._entry_ptr.98 = internal global ptr @tegra_uart_init._entry.96, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 16, i64 32]
@__sancov_gen_cov_switch_values.99 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1707, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [27 x i8] c"tegra_uart_platform_driver\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1664, i32 31 }
@___asan_gen_.115 = private unnamed_addr constant [18 x i8] c"tegra_uart_driver\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1423, i32 27 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1668, i32 11 }
@___asan_gen_.121 = private unnamed_addr constant [20 x i8] c"tegra_uart_of_match\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1546, i32 34 }
@___asan_gen_.124 = private unnamed_addr constant [18 x i8] c"tegra_uart_pm_ops\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1660, i32 32 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1574, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1580, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [15 x i8] c"tegra_uart_ops\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1405, i32 30 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1598, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1609, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1613, i32 58 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1615, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1627, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1444, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1450, i32 6 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1452, i32 39 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1452, i32 52 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1455, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1457, i32 52 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1460, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1463, i32 46 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 552, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 692, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 447, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 452, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 456, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 468, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1204, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1213, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1221, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1228, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1143, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1153, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1172, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1187, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 326, i32 6 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1049, i32 4 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1070, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 401, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 373, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 797, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 738, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 953, i32 4 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 966, i32 6 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1359, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1402, i32 9 }
@___asan_gen_.385 = private unnamed_addr constant [23 x i8] c"tegra30_uart_chip_data\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1513, i32 36 }
@___asan_gen_.388 = private unnamed_addr constant [23 x i8] c"tegra20_uart_chip_data\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1502, i32 36 }
@___asan_gen_.391 = private unnamed_addr constant [24 x i8] c"tegra186_uart_chip_data\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1524, i32 36 }
@___asan_gen_.394 = private unnamed_addr constant [24 x i8] c"tegra194_uart_chip_data\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1535, i32 36 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1425, i32 17 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1426, i32 14 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1691, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.415 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.416 = private constant [37 x i8] c"../drivers/tty/serial/serial-tegra.c\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1698, i32 3 }
@llvm.compiler.used = appending global [144 x ptr] [ptr @__UNIQUE_ID_alias258, ptr @__UNIQUE_ID_author260, ptr @__UNIQUE_ID_description259, ptr @__UNIQUE_ID_file261, ptr @__UNIQUE_ID_license262, ptr @__exitcall_tegra_uart_exit, ptr @__initcall__kmod_serial_tegra__257_1712_tegra_uart_init6, ptr @tegra_check_rate_in_range._entry, ptr @tegra_check_rate_in_range._entry_ptr, ptr @tegra_set_baudrate._entry, ptr @tegra_set_baudrate._entry_ptr, ptr @tegra_uart_copy_rx_to_tty._entry, ptr @tegra_uart_copy_rx_to_tty._entry_ptr, ptr @tegra_uart_dma_channel_allocate._entry, ptr @tegra_uart_dma_channel_allocate._entry.61, ptr @tegra_uart_dma_channel_allocate._entry.64, ptr @tegra_uart_dma_channel_allocate._entry.67, ptr @tegra_uart_dma_channel_allocate._entry_ptr, ptr @tegra_uart_dma_channel_allocate._entry_ptr.63, ptr @tegra_uart_dma_channel_allocate._entry_ptr.66, ptr @tegra_uart_dma_channel_allocate._entry_ptr.69, ptr @tegra_uart_exit, ptr @tegra_uart_exit._entry, ptr @tegra_uart_exit._entry_ptr, ptr @tegra_uart_hw_deinit._entry, ptr @tegra_uart_hw_deinit._entry.87, ptr @tegra_uart_hw_deinit._entry_ptr, ptr @tegra_uart_hw_deinit._entry_ptr.89, ptr @tegra_uart_hw_init._entry, ptr @tegra_uart_hw_init._entry.74, ptr @tegra_uart_hw_init._entry_ptr, ptr @tegra_uart_hw_init._entry_ptr.76, ptr @tegra_uart_init._entry, ptr @tegra_uart_init._entry.96, ptr @tegra_uart_init._entry_ptr, ptr @tegra_uart_init._entry_ptr.98, ptr @tegra_uart_parse_dt._entry, ptr @tegra_uart_parse_dt._entry.29, ptr @tegra_uart_parse_dt._entry.34, ptr @tegra_uart_parse_dt._entry_ptr, ptr @tegra_uart_parse_dt._entry_ptr.32, ptr @tegra_uart_parse_dt._entry_ptr.36, ptr @tegra_uart_probe._entry, ptr @tegra_uart_probe._entry.11, ptr @tegra_uart_probe._entry.14, ptr @tegra_uart_probe._entry.18, ptr @tegra_uart_probe._entry.21, ptr @tegra_uart_probe._entry.8, ptr @tegra_uart_probe._entry_ptr, ptr @tegra_uart_probe._entry_ptr.10, ptr @tegra_uart_probe._entry_ptr.13, ptr @tegra_uart_probe._entry_ptr.16, ptr @tegra_uart_probe._entry_ptr.20, ptr @tegra_uart_probe._entry_ptr.23, ptr @tegra_uart_set_termios._entry, ptr @tegra_uart_set_termios._entry_ptr, ptr @tegra_uart_start_rx_dma._entry, ptr @tegra_uart_start_rx_dma._entry_ptr, ptr @tegra_uart_start_tx_dma._entry, ptr @tegra_uart_start_tx_dma._entry_ptr, ptr @tegra_uart_startup._entry, ptr @tegra_uart_startup._entry.50, ptr @tegra_uart_startup._entry.53, ptr @tegra_uart_startup._entry.56, ptr @tegra_uart_startup._entry_ptr, ptr @tegra_uart_startup._entry_ptr.52, ptr @tegra_uart_startup._entry_ptr.55, ptr @tegra_uart_startup._entry_ptr.58, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @tegra_uart_platform_driver, ptr @tegra_uart_driver, ptr @.str.3, ptr @tegra_uart_of_match, ptr @tegra_uart_pm_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @tegra_uart_ops, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @tegra30_uart_chip_data, ptr @tegra20_uart_chip_data, ptr @tegra186_uart_chip_data, ptr @tegra194_uart_chip_data, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.97], section "llvm.metadata"
@0 = internal global [106 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_uart_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_uart_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_uart_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_uart_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_uart_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_uart_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_uart_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_uart_ops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_uart_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_uart_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_uart_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_uart_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_uart_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_uart_parse_dt._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_uart_parse_dt._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_uart_start_tx_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_uart_copy_rx_to_tty._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_uart_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_uart_startup._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_uart_startup._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_uart_startup._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_uart_dma_channel_allocate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_uart_dma_channel_allocate._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_uart_dma_channel_allocate._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_uart_dma_channel_allocate._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_uart_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_uart_hw_init._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_set_baudrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_check_rate_in_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_uart_start_rx_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_uart_hw_deinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_uart_hw_deinit._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_uart_set_termios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_uart_chip_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_uart_chip_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_uart_chip_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_uart_chip_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_uart_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_uart_init._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra_uart_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_uart_platform_driver) #8
  tail call void @uart_unregister_driver(ptr noundef nonnull @tegra_uart_driver) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_uart_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @tegra_uart_of_match, ptr noundef null) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.end

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_match_node(ptr noundef nonnull @tegra_uart_of_match, ptr noundef nonnull %call.i) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.end4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end4:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call1, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %if.end4.if.end7_crit_edge, label %if.then6

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %uart_max_port = getelementptr inbounds %struct.tegra_uart_chip_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %uart_max_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %uart_max_port, align 4
  store i32 %3, ptr getelementptr inbounds (%struct.uart_driver, ptr @tegra_uart_driver, i32 0, i32 5), align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.if.end7_crit_edge, %if.end.if.end7_crit_edge, %entry.if.end7_crit_edge
  %call8 = tail call i32 @uart_register_driver(ptr noundef nonnull @tegra_uart_driver) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %4 = load ptr, ptr getelementptr inbounds (%struct.uart_driver, ptr @tegra_uart_driver, i32 0, i32 1), align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef %4) #11
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call12 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_uart_platform_driver, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end17, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, i32 noundef %call12) #11
  tail call void @uart_unregister_driver(ptr noundef nonnull @tegra_uart_driver) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.end11.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call8, %do.end ], [ %call12, %do.end17 ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_uart_probe(ptr noundef %pdev) #3 align 64 {
entry:
  %pval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 484, i32 noundef 3520) #8
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pval.i) #8
  %2 = ptrtoint ptr %pval.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %pval.i, align 4, !annotation !219
  %call.i120 = tail call i32 @of_alias_get_id(ptr noundef %1, ptr noundef nonnull @.str.17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %cmp.i = icmp slt i32 %call.i120, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %call.i120) #11
  br label %tegra_uart_parse_dt.exit.thread

if.end.i:                                         ; preds = %if.end10
  %line.i = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 41
  %3 = ptrtoint ptr %line.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call.i120, ptr %line.i, align 4
  %call.i.i = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.26, ptr noundef null) #8
  %tobool.i.i = icmp ne ptr %call.i.i, null
  %enable_modem_interrupt.i = getelementptr inbounds %struct.tegra_uart_port, ptr %call.i, i32 0, i32 12
  %frombool.i = zext i1 %tobool.i.i to i8
  %4 = ptrtoint ptr %enable_modem_interrupt.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool.i, ptr %enable_modem_interrupt.i, align 4
  %call3.i = tail call i32 @of_property_match_string(ptr noundef %1, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.then5.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %use_rx_pio.i = getelementptr inbounds %struct.tegra_uart_port, ptr %call.i, i32 0, i32 32
  %5 = ptrtoint ptr %use_rx_pio.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %use_rx_pio.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.30) #11
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then5.i, %if.end.i.if.end10.i_crit_edge
  %call11.i = tail call i32 @of_property_match_string(ptr noundef %1, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %if.then13.i, label %if.end10.i.if.end18.i_crit_edge

if.end10.i.if.end18.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %use_tx_pio.i = getelementptr inbounds %struct.tegra_uart_port, ptr %call.i, i32 0, i32 33
  %6 = ptrtoint ptr %use_tx_pio.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %use_tx_pio.i, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.35) #11
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then13.i, %if.end10.i.if.end18.i_crit_edge
  %call.i94.i = tail call i32 @of_property_count_elems_of_size(ptr noundef %1, ptr noundef nonnull @.str.37, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94.i)
  %cmp20.i = icmp sgt i32 %call.i94.i, 0
  br i1 %cmp20.i, label %if.then21.i, label %if.else.i

if.then21.i:                                      ; preds = %if.end18.i
  %div96.i = udiv i32 %call.i94.i, 3
  %n_adjustable_baud_rates.i = getelementptr inbounds %struct.tegra_uart_port, ptr %call.i, i32 0, i32 29
  %7 = ptrtoint ptr %n_adjustable_baud_rates.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div96.i, ptr %n_adjustable_baud_rates.i, align 4
  %mul.i = mul i32 %div96.i, 12
  %call.i95.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %mul.i, i32 noundef 3520) #8
  %baud_tolerance.i = getelementptr inbounds %struct.tegra_uart_port, ptr %call.i, i32 0, i32 28
  %8 = ptrtoint ptr %baud_tolerance.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i95.i, ptr %baud_tolerance.i, align 4
  %tobool.not.i = icmp eq ptr %call.i95.i, null
  br i1 %tobool.not.i, label %if.then21.i.tegra_uart_parse_dt.exit.thread_crit_edge, label %if.then21.i.for.body.i_crit_edge

if.then21.i.for.body.i_crit_edge:                 ; preds = %if.then21.i
  br label %for.body.i

if.then21.i.tegra_uart_parse_dt.exit.thread_crit_edge: ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_uart_parse_dt.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then21.i.for.body.i_crit_edge
  %count.0100.i = phi i32 [ %add47.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then21.i.for.body.i_crit_edge ]
  %index.098.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then21.i.for.body.i_crit_edge ]
  %call29.i = call i32 @of_property_read_u32_index(ptr noundef %1, ptr noundef nonnull @.str.37, i32 noundef %count.0100.i, ptr noundef nonnull %pval.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.then31.i, label %for.body.i.if.end33.i_crit_edge

for.body.i.if.end33.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

if.then31.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %pval.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pval.i, align 4
  %11 = ptrtoint ptr %baud_tolerance.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %baud_tolerance.i, align 4
  %arrayidx.i = getelementptr %struct.tegra_baud_tolerance, ptr %12, i32 %index.098.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %10, ptr %arrayidx.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then31.i, %for.body.i.if.end33.i_crit_edge
  %add.i = add nsw i32 %count.0100.i, 1
  %call34.i = call i32 @of_property_read_u32_index(ptr noundef %1, ptr noundef nonnull @.str.37, i32 noundef %add.i, ptr noundef nonnull %pval.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.then36.i, label %if.end33.i.if.end39.i_crit_edge

if.end33.i.if.end39.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39.i

if.then36.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %pval.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pval.i, align 4
  %16 = ptrtoint ptr %baud_tolerance.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %baud_tolerance.i, align 4
  %upper_range_baud.i = getelementptr %struct.tegra_baud_tolerance, ptr %17, i32 %index.098.i, i32 1
  %18 = ptrtoint ptr %upper_range_baud.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %15, ptr %upper_range_baud.i, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then36.i, %if.end33.i.if.end39.i_crit_edge
  %add40.i = add i32 %count.0100.i, 2
  %call41.i = call i32 @of_property_read_u32_index(ptr noundef %1, ptr noundef nonnull @.str.37, i32 noundef %add40.i, ptr noundef nonnull %pval.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.then43.i, label %if.end39.i.for.inc.i_crit_edge

if.end39.i.for.inc.i_crit_edge:                   ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then43.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %pval.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pval.i, align 4
  %21 = ptrtoint ptr %baud_tolerance.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %baud_tolerance.i, align 4
  %tolerance.i = getelementptr %struct.tegra_baud_tolerance, ptr %22, i32 %index.098.i, i32 2
  %23 = ptrtoint ptr %tolerance.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %20, ptr %tolerance.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then43.i, %if.end39.i.for.inc.i_crit_edge
  %add47.i = add i32 %count.0100.i, 3
  %inc.i = add i32 %index.098.i, 1
  %cmp28.i = icmp slt i32 %add47.i, %call.i94.i
  br i1 %cmp28.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end13_crit_edge

for.inc.i.if.end13_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.else.i:                                        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  %n_adjustable_baud_rates48.i = getelementptr inbounds %struct.tegra_uart_port, ptr %call.i, i32 0, i32 29
  %24 = ptrtoint ptr %n_adjustable_baud_rates48.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %n_adjustable_baud_rates48.i, align 4
  br label %if.end13

tegra_uart_parse_dt.exit.thread:                  ; preds = %if.then21.i.tegra_uart_parse_dt.exit.thread_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ -12, %if.then21.i.tegra_uart_parse_dt.exit.thread_crit_edge ], [ %call.i120, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pval.i) #8
  br label %cleanup

if.end13:                                         ; preds = %if.else.i, %for.inc.i.if.end13_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pval.i) #8
  %dev15 = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 45
  %25 = ptrtoint ptr %dev15 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev, ptr %dev15, align 4
  %ops = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 39
  %26 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @tegra_uart_ops, ptr %ops, align 4
  %type = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 38
  %27 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 20, ptr %type, align 4
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 23
  %28 = ptrtoint ptr %fifosize to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 32, ptr %fifosize, align 4
  %cdata16 = getelementptr inbounds %struct.tegra_uart_port, ptr %call.i, i32 0, i32 1
  %29 = ptrtoint ptr %cdata16 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call, ptr %cdata16, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call17 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %do.end22, label %if.end24

do.end22:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #11
  br label %cleanup

if.end24:                                         ; preds = %if.end13
  %31 = ptrtoint ptr %call17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %call17, align 4
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 43
  %33 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %mapbase, align 4
  %call26 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call17) #8
  %membase = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 2
  %34 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call26, ptr %membase, align 4
  %cmp.i121 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i121, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %call26 to i32
  br label %cleanup

if.end32:                                         ; preds = %if.end24
  %call34 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #8
  %uart_clk = getelementptr inbounds %struct.tegra_uart_port, ptr %call.i, i32 0, i32 2
  %36 = ptrtoint ptr %uart_clk to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call34, ptr %uart_clk, align 4
  %cmp.i122 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i122, label %do.end40, label %if.end44

do.end40:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #11
  %37 = ptrtoint ptr %uart_clk to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %uart_clk, align 4
  %39 = ptrtoint ptr %38 to i32
  br label %cleanup

if.end44:                                         ; preds = %if.end32
  %call.i123 = call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %rst = getelementptr inbounds %struct.tegra_uart_port, ptr %call.i, i32 0, i32 3
  %40 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i123, ptr %rst, align 4
  %cmp.i124 = icmp ugt ptr %call.i123, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i124, label %do.end52, label %if.end56

do.end52:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #11
  %41 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rst, align 4
  %43 = ptrtoint ptr %42 to i32
  br label %cleanup

if.end56:                                         ; preds = %if.end44
  %iotype = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 26
  %44 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 3, ptr %iotype, align 2
  %call57 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.end56.cleanup_crit_edge, label %if.end60

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end60:                                         ; preds = %if.end56
  %irq = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 20
  %45 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call57, ptr %irq, align 4
  %regshift = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 25
  %46 = ptrtoint ptr %regshift to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 2, ptr %regshift, align 1
  %call61 = call i32 @uart_add_one_port(ptr noundef nonnull @tegra_uart_driver, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %do.end66, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end66:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %call61) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end66, %if.end60.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %do.end52, %do.end40, %if.then29, %do.end22, %tegra_uart_parse_dt.exit.thread, %do.end8, %do.end
  %retval.0 = phi i32 [ %35, %if.then29 ], [ %39, %do.end40 ], [ %43, %do.end52 ], [ %call61, %do.end66 ], [ -19, %do.end22 ], [ -12, %do.end8 ], [ -19, %do.end ], [ %call57, %if.end56.cleanup_crit_edge ], [ %call61, %if.end60.cleanup_crit_edge ], [ %retval.0.i.ph, %tegra_uart_parse_dt.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_uart_remove(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @tegra_uart_driver, ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_uart_tx_empty(ptr noundef %u) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %u) #8
  %tx_in_progress = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 10
  %0 = ptrtoint ptr %tx_in_progress to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 2
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 4
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 25
  %4 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %5 to i32
  %shl.i = shl i32 5, %conv.i
  %add.ptr.i = getelementptr i8, ptr %3, i32 %shl.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  %7 = and i32 %6, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %7)
  %cmp7 = icmp eq i32 %7, 1610612736
  %spec.select = zext i1 %cmp7 to i32
  br label %if.end10

if.end10:                                         ; preds = %if.then, %entry.if.end10_crit_edge
  %ret.1 = phi i32 [ 0, %entry.if.end10_crit_edge ], [ %spec.select, %if.then ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %u, i32 noundef %call3) #8
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_uart_set_mctrl(ptr nocapture noundef %u, i32 noundef %mctrl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %mctrl, 4
  %rts_active = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 9
  %and.lobit = lshr exact i32 %and, 2
  %0 = trunc i32 %and.lobit to i8
  %1 = ptrtoint ptr %rts_active to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %0, ptr %rts_active, align 4
  %mcr_shadow.i = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 6
  %2 = ptrtoint ptr %mcr_shadow.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mcr_shadow.i, align 4
  %and.i = and i32 %3, -65
  %4 = shl nuw nsw i32 %and, 4
  %mcr.0.i = or i32 %and.i, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %mcr.0.i, i32 %3)
  %cmp.not.i = icmp eq i32 %mcr.0.i, %3
  br i1 %cmp.not.i, label %entry.set_rts.exit_crit_edge, label %if.then2.i

entry.set_rts.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_rts.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %5 = tail call i32 @llvm.bswap.i32(i32 %mcr.0.i) #8
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 2
  %6 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i.i, align 4
  %regshift.i.i = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 25
  %8 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %regshift.i.i, align 1
  %conv.i.i = zext i8 %9 to i32
  %shl.i.i = shl i32 4, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %shl.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %5) #8, !srcloc !223
  %10 = ptrtoint ptr %mcr_shadow.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mcr.0.i, ptr %mcr_shadow.i, align 4
  br label %set_rts.exit

set_rts.exit:                                     ; preds = %if.then2.i, %entry.set_rts.exit_crit_edge
  %11 = ptrtoint ptr %mcr_shadow.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mcr_shadow.i, align 4
  %and.i24 = and i32 %12, -2
  %and4 = lshr i32 %mctrl, 1
  %and4.lobit = and i32 %and4, 1
  %mcr.0.i26 = or i32 %and.i24, %and4.lobit
  call void @__sanitizer_cov_trace_cmp4(i32 %mcr.0.i26, i32 %12)
  %cmp.not.i27 = icmp eq i32 %mcr.0.i26, %12
  br i1 %cmp.not.i27, label %set_rts.exit.set_dtr.exit_crit_edge, label %if.then2.i33

set_rts.exit.set_dtr.exit_crit_edge:              ; preds = %set_rts.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_dtr.exit

if.then2.i33:                                     ; preds = %set_rts.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %13 = tail call i32 @llvm.bswap.i32(i32 %mcr.0.i26) #8
  %membase.i.i28 = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 2
  %14 = ptrtoint ptr %membase.i.i28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i.i28, align 4
  %regshift.i.i29 = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 25
  %16 = ptrtoint ptr %regshift.i.i29 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %regshift.i.i29, align 1
  %conv.i.i30 = zext i8 %17 to i32
  %shl.i.i31 = shl i32 4, %conv.i.i30
  %add.ptr.i.i32 = getelementptr i8, ptr %15, i32 %shl.i.i31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i32, i32 %13) #8, !srcloc !223
  %18 = ptrtoint ptr %mcr_shadow.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mcr.0.i26, ptr %mcr_shadow.i, align 4
  br label %set_dtr.exit

set_dtr.exit:                                     ; preds = %if.then2.i33, %set_rts.exit.set_dtr.exit_crit_edge
  %19 = ptrtoint ptr %mcr_shadow.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mcr_shadow.i, align 4
  %and.i35 = and i32 %20, -17
  %and9 = lshr i32 %mctrl, 11
  %21 = and i32 %and9, 16
  %mcr.0.i37 = or i32 %and.i35, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %mcr.0.i37, i32 %20)
  %cmp.not.i38 = icmp eq i32 %mcr.0.i37, %20
  br i1 %cmp.not.i38, label %set_dtr.exit.set_loopbk.exit_crit_edge, label %if.then2.i44

set_dtr.exit.set_loopbk.exit_crit_edge:           ; preds = %set_dtr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_loopbk.exit

if.then2.i44:                                     ; preds = %set_dtr.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %22 = tail call i32 @llvm.bswap.i32(i32 %mcr.0.i37) #8
  %membase.i.i39 = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 2
  %23 = ptrtoint ptr %membase.i.i39 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase.i.i39, align 4
  %regshift.i.i40 = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 25
  %25 = ptrtoint ptr %regshift.i.i40 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %regshift.i.i40, align 1
  %conv.i.i41 = zext i8 %26 to i32
  %shl.i.i42 = shl i32 4, %conv.i.i41
  %add.ptr.i.i43 = getelementptr i8, ptr %24, i32 %shl.i.i42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i43, i32 %22) #8, !srcloc !223
  %27 = ptrtoint ptr %mcr_shadow.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mcr.0.i37, ptr %mcr_shadow.i, align 4
  br label %set_loopbk.exit

set_loopbk.exit:                                  ; preds = %if.then2.i44, %set_dtr.exit.set_loopbk.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra_uart_get_mctrl(ptr nocapture noundef readonly %u) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_modem_interrupt = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 12
  %0 = ptrtoint ptr %enable_modem_interrupt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enable_modem_interrupt, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %. = select i1 %tobool.not, i32 32, i32 480
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_uart_stop_tx(ptr nocapture noundef %u) #3 align 64 {
entry:
  %state2 = alloca %struct.dma_tx_state, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state2) #8
  %2 = getelementptr inbounds %struct.dma_tx_state, ptr %state2, i32 0, i32 2
  %tx_in_progress = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 10
  %3 = call ptr @memset(ptr %state2, i32 255, i32 16)
  %4 = ptrtoint ptr %tx_in_progress to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_dma_chan = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 17
  %6 = ptrtoint ptr %tx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_dma_chan, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 47
  %10 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.dmaengine_terminate_all.exit_crit_edge, label %if.then.i

if.end.dmaengine_terminate_all.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_all.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 %11(ptr noundef %7) #8
  br label %dmaengine_terminate_all.exit

dmaengine_terminate_all.exit:                     ; preds = %if.then.i, %if.end.dmaengine_terminate_all.exit_crit_edge
  %12 = ptrtoint ptr %tx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_dma_chan, align 4
  %tx_cookie = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 24
  %14 = ptrtoint ptr %tx_cookie to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_cookie, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 49
  %18 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device_tx_status.i, align 4
  %call.i19 = call i32 %19(ptr noundef %13, i32 noundef %15, ptr noundef nonnull %state2) #8
  %tx_bytes_requested = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 26
  %20 = ptrtoint ptr %tx_bytes_requested to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_bytes_requested, align 4
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %2, align 4
  %sub = sub i32 %21, %23
  %tx_dma_desc = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 22
  %24 = ptrtoint ptr %tx_dma_desc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_dma_desc, align 4
  %flags.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %27, 2
  store i32 %or.i, ptr %flags.i, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tail, align 4
  %add = add i32 %sub, %29
  %and = and i32 %add, 4095
  store i32 %and, ptr %tail, align 4
  %30 = ptrtoint ptr %tx_in_progress to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %tx_in_progress, align 4
  br label %cleanup

cleanup:                                          ; preds = %dmaengine_terminate_all.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_uart_start_tx(ptr noundef %u) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 30
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
  br i1 %cmp, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %tx_in_progress = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 10
  %6 = ptrtoint ptr %tx_in_progress to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @tegra_uart_start_next_tx(ptr noundef %u)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_uart_stop_rx(ptr noundef %u) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %rts_active = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 9
  %2 = ptrtoint ptr %rts_active to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rts_active, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %mcr_shadow.i = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 6
  %4 = ptrtoint ptr %mcr_shadow.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mcr_shadow.i, align 4
  %and.i = and i32 %5, -65
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %5)
  %cmp.not.i = icmp eq i32 %and.i, %5
  br i1 %cmp.not.i, label %if.then.if.end_crit_edge, label %if.then2.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then2.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %6 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 2
  %7 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i.i, align 4
  %regshift.i.i = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 25
  %9 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %regshift.i.i, align 1
  %conv.i.i = zext i8 %10 to i32
  %shl.i.i = shl i32 4, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %shl.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %6) #8, !srcloc !223
  %11 = ptrtoint ptr %mcr_shadow.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and.i, ptr %mcr_shadow.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %rx_in_progress = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 14
  %12 = ptrtoint ptr %rx_in_progress to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool2.not = icmp eq i32 %13, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %current_baud.i = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 4
  %14 = ptrtoint ptr %current_baud.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %current_baud.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.end4.tegra_uart_wait_sym_time.exit_crit_edge, label %cond.false22.i

if.end4.tegra_uart_wait_sym_time.exit_crit_edge:  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_uart_wait_sym_time.exit

cond.false22.i:                                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add i32 %15, -1
  %symb_bit.i = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 15
  %16 = ptrtoint ptr %symb_bit.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %symb_bit.i, align 4
  %mul1.i = mul i32 %17, 1000000
  %sub.i = add i32 %add.i, %mul1.i
  %div.i = udiv i32 %sub.i, %15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %18(i32 noundef %div.i) #8
  br label %tegra_uart_wait_sym_time.exit

tegra_uart_wait_sym_time.exit:                    ; preds = %cond.false22.i, %if.end4.tegra_uart_wait_sym_time.exit_crit_edge
  %ier_shadow = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 8
  %19 = ptrtoint ptr %ier_shadow to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ier_shadow, align 4
  %and = and i32 %20, -54
  store i32 %and, ptr %ier_shadow, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %21 = tail call i32 @llvm.bswap.i32(i32 %and) #8
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 2
  %22 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i, align 4
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 25
  %24 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %25 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %add.ptr.i = getelementptr i8, ptr %23, i32 %shl.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %21) #8, !srcloc !223
  %26 = ptrtoint ptr %rx_in_progress to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %rx_in_progress, align 4
  %use_rx_pio = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 32
  %27 = ptrtoint ptr %use_rx_pio to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %use_rx_pio, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool7.not = icmp eq i8 %28, 0
  br i1 %tobool7.not, label %if.then8, label %if.else

if.then8:                                         ; preds = %tegra_uart_wait_sym_time.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @tegra_uart_terminate_rx_dma(ptr noundef %u)
  br label %cleanup

if.else:                                          ; preds = %tegra_uart_wait_sym_time.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @tegra_uart_handle_rx_pio(ptr noundef %u, ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then8, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_uart_enable_ms(ptr nocapture noundef %u) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_modem_interrupt = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 12
  %0 = ptrtoint ptr %enable_modem_interrupt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enable_modem_interrupt, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ier_shadow = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 8
  %2 = ptrtoint ptr %ier_shadow to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ier_shadow, align 4
  %or = or i32 %3, 8
  store i32 %or, ptr %ier_shadow, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 2
  %5 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i, align 4
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 25
  %7 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %8 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %add.ptr.i = getelementptr i8, ptr %6, i32 %shl.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #8, !srcloc !223
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_uart_break_ctl(ptr nocapture noundef %u, i32 noundef %break_ctl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lcr_shadow = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 7
  %0 = ptrtoint ptr %lcr_shadow to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lcr_shadow, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %break_ctl)
  %tobool.not = icmp eq i32 %break_ctl, 0
  %and = and i32 %1, -65
  %masksel = select i1 %tobool.not, i32 0, i32 64
  %lcr.0 = or i32 %and, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %2 = tail call i32 @llvm.bswap.i32(i32 %lcr.0) #8
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 2
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 25
  %5 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %6 to i32
  %shl.i = shl i32 3, %conv.i
  %add.ptr.i = getelementptr i8, ptr %4, i32 %shl.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #8, !srcloc !223
  %7 = ptrtoint ptr %lcr_shadow to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %lcr.0, ptr %lcr_shadow, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_uart_startup(ptr noundef %u) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %use_tx_pio = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 33
  %0 = ptrtoint ptr %use_tx_pio to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_tx_pio, align 1, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @tegra_uart_dma_channel_allocate(ptr noundef %u, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 45
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.48, i32 noundef %call1) #11
  br label %cleanup

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %use_rx_pio = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 32
  %4 = ptrtoint ptr %use_rx_pio to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %use_rx_pio, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.then5, label %if.end3.if.end14_crit_edge

if.end3.if.end14_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then5:                                         ; preds = %if.end3
  %call6 = tail call fastcc i32 @tegra_uart_dma_channel_allocate(ptr noundef %u, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.end11, label %if.then5.if.end14_crit_edge

if.then5.if.end14_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

do.end11:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %dev12 = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 45
  %6 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.51, i32 noundef %call6) #11
  br label %fail_rx_dma

if.end14:                                         ; preds = %if.then5.if.end14_crit_edge, %if.end3.if.end14_crit_edge
  %fcr_shadow.i = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 5
  %lcr_shadow.i = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 7
  %ier_shadow.i = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 8
  %current_baud.i = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 4
  %uart_clk.i = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 2
  %8 = call ptr @memset(ptr %current_baud.i, i32 0, i32 20)
  %9 = ptrtoint ptr %uart_clk.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %uart_clk.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end14.clk_prepare_enable.exit.i_crit_edge

if.end14.clk_prepare_enable.exit.i_crit_edge:     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit.i

if.end.i.i:                                       ; preds = %if.end14
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.clk_prepare_enable.exit.i_crit_edge, label %if.then3.i.i

if.end.i.i.clk_prepare_enable.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %10) #8
  br label %clk_prepare_enable.exit.i

clk_prepare_enable.exit.i:                        ; preds = %if.then3.i.i, %if.end.i.i.clk_prepare_enable.exit.i_crit_edge, %if.end14.clk_prepare_enable.exit.i_crit_edge
  %rst.i = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 3
  %11 = ptrtoint ptr %rst.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rst.i, align 4
  %call1.i = tail call i32 @reset_control_assert(ptr noundef %12) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 2147480) #8
  %14 = ptrtoint ptr %rst.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rst.i, align 4
  %call3.i = tail call i32 @reset_control_deassert(ptr noundef %15) #8
  %rx_in_progress.i = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 14
  %16 = ptrtoint ptr %rx_in_progress.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %rx_in_progress.i, align 4
  %tx_in_progress.i = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 10
  %17 = ptrtoint ptr %tx_in_progress.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %tx_in_progress.i, align 4
  %18 = ptrtoint ptr %fcr_shadow.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %fcr_shadow.i, align 4
  %19 = ptrtoint ptr %use_rx_pio to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %use_rx_pio, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %if.else.i, label %clk_prepare_enable.exit.i.if.end12.i_crit_edge

clk_prepare_enable.exit.i.if.end12.i_crit_edge:   ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.else.i:                                        ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %cdata.i = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 1
  %21 = ptrtoint ptr %cdata.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cdata.i, align 4
  %max_dma_burst_bytes.i = getelementptr inbounds %struct.tegra_uart_chip_data, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %max_dma_burst_bytes.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_dma_burst_bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %24)
  %cmp.i = icmp eq i32 %24, 8
  %..i = select i1 %cmp.i, i32 129, i32 65
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else.i, %clk_prepare_enable.exit.i.if.end12.i_crit_edge
  %.sink.i = phi i32 [ 193, %clk_prepare_enable.exit.i.if.end12.i_crit_edge ], [ %..i, %if.else.i ]
  %25 = ptrtoint ptr %fcr_shadow.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink.i, ptr %fcr_shadow.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %26 = shl nuw i32 %.sink.i, 24
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 2
  %27 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase.i.i, align 4
  %regshift.i.i = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 25
  %29 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %regshift.i.i, align 1
  %conv.i.i = zext i8 %30 to i32
  %shl.i.i = shl i32 2, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 %shl.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %26) #8, !srcloc !223
  %31 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %membase.i.i, align 4
  %33 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %regshift.i.i, align 1
  %conv.i98.i = zext i8 %34 to i32
  %shl.i99.i = shl i32 7, %conv.i98.i
  %add.ptr.i100.i = getelementptr i8, ptr %32, i32 %shl.i99.i
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i100.i) #8, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  %cdata17.i = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 1
  %36 = ptrtoint ptr %cdata17.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cdata17.i, align 4
  %fifo_mode_enable_status.i = getelementptr inbounds %struct.tegra_uart_chip_data, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %fifo_mode_enable_status.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %fifo_mode_enable_status.i, align 1, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool18.not.i = icmp eq i8 %39, 0
  br i1 %tobool18.not.i, label %if.else24.i, label %if.end12.i.do.body.i.i_crit_edge

if.end12.i.do.body.i.i_crit_edge:                 ; preds = %if.end12.i
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i102.i.do.body.i.i_crit_edge, %if.end12.i.do.body.i.i_crit_edge
  %tmout.0.i.i = phi i32 [ %dec.i.i, %if.end.i102.i.do.body.i.i_crit_edge ], [ 100, %if.end12.i.do.body.i.i_crit_edge ]
  %40 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %membase.i.i, align 4
  %42 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %regshift.i.i, align 1
  %conv.i.i.i = zext i8 %43 to i32
  %shl.i.i.i = shl i32 2, %conv.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %41, i32 %shl.i.i.i
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  %45 = and i32 %44, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i101.i = icmp eq i32 %45, 0
  br i1 %tobool.not.i101.i, label %if.end.i102.i, label %do.body.i.i.if.end25.i_crit_edge

do.body.i.i.if.end25.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

if.end.i102.i:                                    ; preds = %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748) #8
  %dec.i.i = add nsw i32 %tmout.0.i.i, -1
  %tobool1.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool1.not.i.i, label %do.end.i, label %if.end.i102.i.do.body.i.i_crit_edge

if.end.i102.i.do.body.i.i_crit_edge:              ; preds = %if.end.i102.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

do.end.i:                                         ; preds = %if.end.i102.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 45
  %47 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.72, i32 noundef -110) #11
  br label %do.end20

if.else24.i:                                      ; preds = %if.end12.i
  %49 = ptrtoint ptr %current_baud.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %current_baud.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i103.i = icmp eq i32 %50, 0
  br i1 %tobool.not.i103.i, label %if.else24.i.if.end25.i_crit_edge, label %cond.false23.i.i

if.else24.i.if.end25.i_crit_edge:                 ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

cond.false23.i.i:                                 ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul2.i.i = shl i32 %50, 4
  %sub.i.i = add i32 %mul2.i.i, 2999999
  %div.i.i = udiv i32 %sub.i.i, %mul2.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %51(i32 noundef %div.i.i) #8
  br label %if.end25.i

if.end25.i:                                       ; preds = %cond.false23.i.i, %if.else24.i.if.end25.i_crit_edge, %do.body.i.i.if.end25.i_crit_edge
  %call26.i = tail call fastcc i32 @tegra_set_baudrate(ptr noundef %u, i32 noundef 115200) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp27.i = icmp slt i32 %call26.i, 0
  br i1 %cmp27.i, label %do.end31.i, label %if.end34.i

do.end31.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev33.i = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 45
  %52 = ptrtoint ptr %dev33.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev33.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.75) #11
  br label %do.end20

if.end34.i:                                       ; preds = %if.end25.i
  %54 = ptrtoint ptr %use_rx_pio to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %use_rx_pio, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool36.not.i = icmp eq i8 %55, 0
  br i1 %tobool36.not.i, label %if.then37.i, label %if.else42.i

if.then37.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %lcr_shadow.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 3, ptr %lcr_shadow.i, align 4
  %57 = ptrtoint ptr %fcr_shadow.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %fcr_shadow.i, align 4
  %or40.i = or i32 %58, 8
  store i32 %or40.i, ptr %fcr_shadow.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %59 = tail call i32 @llvm.bswap.i32(i32 %or40.i) #8
  %60 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %membase.i.i, align 4
  %62 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %regshift.i.i, align 1
  %conv.i107.i = zext i8 %63 to i32
  %shl.i108.i = shl i32 2, %conv.i107.i
  %add.ptr.i109.i = getelementptr i8, ptr %61, i32 %shl.i108.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109.i, i32 %59) #8, !srcloc !223
  br label %if.end22

if.else42.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %fcr_shadow.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %fcr_shadow.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #8
  %67 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %membase.i.i, align 4
  %69 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %regshift.i.i, align 1
  %conv.i112.i = zext i8 %70 to i32
  %shl.i113.i = shl i32 2, %conv.i112.i
  %add.ptr.i114.i = getelementptr i8, ptr %68, i32 %shl.i113.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114.i, i32 %66) #8, !srcloc !223
  br label %if.end22

do.end20:                                         ; preds = %do.end31.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call26.i, %do.end31.i ], [ -110, %do.end.i ]
  %dev21 = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 45
  %71 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.54, i32 noundef %retval.0.i.ph) #11
  br label %fail_hw_init

if.end22:                                         ; preds = %if.else42.i, %if.then37.i
  %73 = ptrtoint ptr %rx_in_progress.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %rx_in_progress.i, align 4
  %74 = ptrtoint ptr %use_rx_pio to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %use_rx_pio, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool48.not.i = icmp eq i8 %75, 0
  %spec.store.select.i = select i1 %tobool48.not.i, i32 53, i32 21
  %76 = ptrtoint ptr %ier_shadow.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %spec.store.select.i, ptr %ier_shadow.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %77 = shl nuw nsw i32 %spec.store.select.i, 24
  %78 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %membase.i.i, align 4
  %80 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %regshift.i.i, align 1
  %conv.i117.i = zext i8 %81 to i32
  %shl.i118.i = shl nuw i32 1, %conv.i117.i
  %add.ptr.i119.i = getelementptr i8, ptr %79, i32 %shl.i118.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119.i, i32 %77) #8, !srcloc !223
  %irq = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 20
  %82 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %irq, align 4
  %dev23 = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 45
  %84 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev23, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i67 = icmp eq ptr %87, null
  br i1 %tobool.not.i67, label %if.end.i, label %if.end22.dev_name.exit_crit_edge

if.end22.dev_name.exit_crit_edge:                 ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %88 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %85, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end22.dev_name.exit_crit_edge
  %retval.0.i68 = phi ptr [ %89, %if.end.i ], [ %87, %if.end22.dev_name.exit_crit_edge ]
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %83, ptr noundef nonnull @tegra_uart_isr, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i68, ptr noundef %u) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp26 = icmp slt i32 %call.i, 0
  br i1 %cmp26, label %do.end30, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end30:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev23, align 4
  %92 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.57, i32 noundef %93) #11
  br label %fail_hw_init

fail_hw_init:                                     ; preds = %do.end30, %do.end20
  %ret.0 = phi i32 [ %retval.0.i.ph, %do.end20 ], [ %call.i, %do.end30 ]
  %94 = ptrtoint ptr %use_rx_pio to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %use_rx_pio, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool35.not = icmp eq i8 %95, 0
  br i1 %tobool35.not, label %if.then36, label %fail_hw_init.fail_rx_dma_crit_edge

fail_hw_init.fail_rx_dma_crit_edge:               ; preds = %fail_hw_init
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_rx_dma

if.then36:                                        ; preds = %fail_hw_init
  %rx_dma_chan.i = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 16
  %96 = ptrtoint ptr %rx_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rx_dma_chan.i, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %99, i32 0, i32 47
  %100 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i69 = icmp eq ptr %101, null
  br i1 %tobool.not.i.i69, label %if.then36.tegra_uart_dma_channel_free.exit_crit_edge, label %if.then.i.i71

if.then36.tegra_uart_dma_channel_free.exit_crit_edge: ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_uart_dma_channel_free.exit

if.then.i.i71:                                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i70 = tail call i32 %101(ptr noundef %97) #8
  br label %tegra_uart_dma_channel_free.exit

tegra_uart_dma_channel_free.exit:                 ; preds = %if.then.i.i71, %if.then36.tegra_uart_dma_channel_free.exit_crit_edge
  %102 = ptrtoint ptr %rx_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %rx_dma_chan.i, align 4
  tail call void @dma_release_channel(ptr noundef %103) #8
  %dev.i72 = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 45
  %104 = ptrtoint ptr %dev.i72 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev.i72, align 4
  %rx_dma_buf_virt.i = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 20
  %106 = ptrtoint ptr %rx_dma_buf_virt.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %rx_dma_buf_virt.i, align 4
  %rx_dma_buf_phys.i = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 18
  %108 = ptrtoint ptr %rx_dma_buf_phys.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %rx_dma_buf_phys.i, align 4
  tail call void @dma_free_attrs(ptr noundef %105, i32 noundef 4096, ptr noundef %107, i32 noundef %109, i32 noundef 0) #8
  %110 = ptrtoint ptr %rx_dma_chan.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %rx_dma_chan.i, align 4
  %111 = ptrtoint ptr %rx_dma_buf_phys.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %rx_dma_buf_phys.i, align 4
  %112 = ptrtoint ptr %rx_dma_buf_virt.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %rx_dma_buf_virt.i, align 4
  br label %fail_rx_dma

fail_rx_dma:                                      ; preds = %tegra_uart_dma_channel_free.exit, %fail_hw_init.fail_rx_dma_crit_edge, %do.end11
  %ret.1 = phi i32 [ %ret.0, %fail_hw_init.fail_rx_dma_crit_edge ], [ %ret.0, %tegra_uart_dma_channel_free.exit ], [ %call6, %do.end11 ]
  %113 = ptrtoint ptr %use_tx_pio to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %use_tx_pio, align 1, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool39.not = icmp eq i8 %114, 0
  br i1 %tobool39.not, label %if.then40, label %fail_rx_dma.cleanup_crit_edge

fail_rx_dma.cleanup_crit_edge:                    ; preds = %fail_rx_dma
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then40:                                        ; preds = %fail_rx_dma
  %tx_dma_chan.i = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 17
  %115 = ptrtoint ptr %tx_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %tx_dma_chan.i, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 4
  %device_terminate_all.i25.i = getelementptr inbounds %struct.dma_device, ptr %118, i32 0, i32 47
  %119 = ptrtoint ptr %device_terminate_all.i25.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %device_terminate_all.i25.i, align 4
  %tobool.not.i26.i = icmp eq ptr %120, null
  br i1 %tobool.not.i26.i, label %if.then40.tegra_uart_dma_channel_free.exit76_crit_edge, label %if.then.i28.i

if.then40.tegra_uart_dma_channel_free.exit76_crit_edge: ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_uart_dma_channel_free.exit76

if.then.i28.i:                                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  %call.i27.i = tail call i32 %120(ptr noundef %116) #8
  br label %tegra_uart_dma_channel_free.exit76

tegra_uart_dma_channel_free.exit76:               ; preds = %if.then.i28.i, %if.then40.tegra_uart_dma_channel_free.exit76_crit_edge
  %121 = ptrtoint ptr %tx_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %tx_dma_chan.i, align 4
  tail call void @dma_release_channel(ptr noundef %122) #8
  %dev8.i = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 45
  %123 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev8.i, align 4
  %tx_dma_buf_phys.i = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 19
  %125 = ptrtoint ptr %tx_dma_buf_phys.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %tx_dma_buf_phys.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %124, i32 noundef %126, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #8
  %127 = ptrtoint ptr %tx_dma_chan.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr null, ptr %tx_dma_chan.i, align 4
  %128 = ptrtoint ptr %tx_dma_buf_phys.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %tx_dma_buf_phys.i, align 4
  %tx_dma_buf_virt.i = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 21
  %129 = ptrtoint ptr %tx_dma_buf_virt.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr null, ptr %tx_dma_buf_virt.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %tegra_uart_dma_channel_free.exit76, %fail_rx_dma.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ 0, %dev_name.exit.cleanup_crit_edge ], [ %ret.1, %tegra_uart_dma_channel_free.exit76 ], [ %ret.1, %fail_rx_dma.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_uart_shutdown(ptr noundef %u) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %current_baud.i = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 4
  %0 = ptrtoint ptr %current_baud.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_baud.i, align 4
  %sub.i = add i32 %1, 9999999
  %div.i = udiv i32 %sub.i, %1
  %fifosize.i = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 23
  %2 = ptrtoint ptr %fifosize.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fifosize.i, align 4
  %mul.i = mul i32 %3, %div.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 2
  %4 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i.i, align 4
  %regshift.i.i = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 25
  %6 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %regshift.i.i, align 1
  %conv.i.i = zext i8 %7 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %shl.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !223
  %8 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i.i, align 4
  %10 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %regshift.i.i, align 1
  %conv.i96.i = zext i8 %11 to i32
  %shl.i97.i = shl i32 5, %conv.i96.i
  %add.ptr.i98.i = getelementptr i8, ptr %9, i32 %shl.i97.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i98.i) #8, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  %13 = and i32 %12, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not.not.i = icmp eq i32 %13, 0
  br i1 %cmp.not.not.i, label %if.then.i, label %entry.do.body41.i_crit_edge

entry.do.body41.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body41.i

if.then.i:                                        ; preds = %entry
  %14 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i.i, align 4
  %16 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %regshift.i.i, align 1
  %conv.i101.i = zext i8 %17 to i32
  %shl.i102.i = shl i32 6, %conv.i101.i
  %add.ptr.i103.i = getelementptr i8, ptr %15, i32 %shl.i102.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i103.i) #8, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  %19 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase.i.i, align 4
  %21 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %regshift.i.i, align 1
  %conv.i106.i = zext i8 %22 to i32
  %shl.i107.i = shl i32 4, %conv.i106.i
  %add.ptr.i108.i = getelementptr i8, ptr %20, i32 %shl.i107.i
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i108.i) #8, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  %24 = and i32 %23, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  %25 = and i32 %18, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool6.not.i = icmp eq i32 %25, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool6.not.i
  br i1 %or.cond.i, label %if.then.i.while.body.i.preheader_crit_edge, label %do.end.i

if.then.i.while.body.i.preheader_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.preheader

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 45
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.85) #11
  br label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %do.end.i, %if.then.i.while.body.i.preheader_crit_edge
  br label %while.body.i

while.body.i:                                     ; preds = %if.end37.i.while.body.i_crit_edge, %while.body.i.preheader
  %fifo_empty_time.0127.i = phi i32 [ %sub20.i, %if.end37.i.while.body.i_crit_edge ], [ %mul.i, %while.body.i.preheader ]
  %28 = tail call i32 @llvm.umin.i32(i32 %fifo_empty_time.0127.i, i32 100) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %29(i32 noundef %28) #8
  %sub20.i = sub i32 %fifo_empty_time.0127.i, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub20.i)
  %tobool21.not.i = icmp eq i32 %sub20.i, 0
  %30 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase.i.i, align 4
  %32 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %regshift.i.i, align 1
  %conv.i111.i.le = zext i8 %33 to i32
  br i1 %tobool21.not.i, label %if.then22.i, label %if.end37.i

if.then22.i:                                      ; preds = %while.body.i
  %conv.i111.i.le.le = zext i8 %33 to i32
  %shl.i112.i = shl i32 6, %conv.i111.i.le.le
  %add.ptr.i113.i = getelementptr i8, ptr %31, i32 %shl.i112.i
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113.i) #8, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  %35 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase.i.i, align 4
  %37 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %regshift.i.i, align 1
  %conv.i116.i = zext i8 %38 to i32
  %shl.i117.i = shl i32 4, %conv.i116.i
  %add.ptr.i118.i = getelementptr i8, ptr %36, i32 %shl.i117.i
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i118.i) #8, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  %40 = and i32 %39, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool26.not.i = icmp eq i32 %40, 0
  %41 = and i32 %34, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool29.not.i = icmp eq i32 %41, 0
  %or.cond93.i = select i1 %tobool26.not.i, i1 true, i1 %tobool29.not.i
  br i1 %or.cond93.i, label %if.then22.i.do.body41.i_crit_edge, label %do.end33.i

if.then22.i.do.body41.i_crit_edge:                ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body41.i

do.end33.i:                                       ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev35.i = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 45
  %42 = ptrtoint ptr %dev35.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev35.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.88) #11
  br label %do.body41.i

if.end37.i:                                       ; preds = %while.body.i
  %shl.i122.i = shl i32 5, %conv.i111.i.le
  %add.ptr.i123.i = getelementptr i8, ptr %31, i32 %shl.i122.i
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i123.i) #8, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  %45 = and i32 %44, 1073741824
  %cmp10.not.not.i = icmp eq i32 %45, 0
  br i1 %cmp10.not.not.i, label %if.end37.i.while.body.i_crit_edge, label %if.end37.i.do.body41.i_crit_edge

if.end37.i.do.body41.i_crit_edge:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body41.i

if.end37.i.while.body.i_crit_edge:                ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

do.body41.i:                                      ; preds = %if.end37.i.do.body41.i_crit_edge, %do.end33.i, %if.then22.i.do.body41.i_crit_edge, %entry.do.body41.i_crit_edge
  %call46.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %u) #8
  tail call fastcc void @tegra_uart_fifo_reset(ptr noundef %u, i8 noundef zeroext 6) #8
  %46 = ptrtoint ptr %current_baud.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %current_baud.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %u, i32 noundef %call46.i) #8
  %rx_in_progress.i = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 14
  %47 = ptrtoint ptr %rx_in_progress.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %rx_in_progress.i, align 4
  %tx_in_progress.i = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 10
  %48 = ptrtoint ptr %tx_in_progress.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %tx_in_progress.i, align 4
  %use_rx_pio.i = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 32
  %49 = ptrtoint ptr %use_rx_pio.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %use_rx_pio.i, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool54.not.i = icmp eq i8 %50, 0
  br i1 %tobool54.not.i, label %if.then55.i, label %do.body41.i.if.end56.i_crit_edge

do.body41.i.if.end56.i_crit_edge:                 ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56.i

if.then55.i:                                      ; preds = %do.body41.i
  %rx_dma_chan.i.i = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 16
  %51 = ptrtoint ptr %rx_dma_chan.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rx_dma_chan.i.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %device_terminate_all.i.i.i = getelementptr inbounds %struct.dma_device, ptr %54, i32 0, i32 47
  %55 = ptrtoint ptr %device_terminate_all.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %device_terminate_all.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %56, null
  br i1 %tobool.not.i.i.i, label %if.then55.i.tegra_uart_dma_channel_free.exit.i_crit_edge, label %if.then.i.i.i

if.then55.i.tegra_uart_dma_channel_free.exit.i_crit_edge: ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_uart_dma_channel_free.exit.i

if.then.i.i.i:                                    ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call i32 %56(ptr noundef %52) #8
  br label %tegra_uart_dma_channel_free.exit.i

tegra_uart_dma_channel_free.exit.i:               ; preds = %if.then.i.i.i, %if.then55.i.tegra_uart_dma_channel_free.exit.i_crit_edge
  %57 = ptrtoint ptr %rx_dma_chan.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rx_dma_chan.i.i, align 4
  tail call void @dma_release_channel(ptr noundef %58) #8
  %dev.i.i = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 45
  %59 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i.i, align 4
  %rx_dma_buf_virt.i.i = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 20
  %61 = ptrtoint ptr %rx_dma_buf_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rx_dma_buf_virt.i.i, align 4
  %rx_dma_buf_phys.i.i = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 18
  %63 = ptrtoint ptr %rx_dma_buf_phys.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rx_dma_buf_phys.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %60, i32 noundef 4096, ptr noundef %62, i32 noundef %64, i32 noundef 0) #8
  %65 = ptrtoint ptr %rx_dma_chan.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %rx_dma_chan.i.i, align 4
  %66 = ptrtoint ptr %rx_dma_buf_phys.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %rx_dma_buf_phys.i.i, align 4
  %67 = ptrtoint ptr %rx_dma_buf_virt.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %rx_dma_buf_virt.i.i, align 4
  br label %if.end56.i

if.end56.i:                                       ; preds = %tegra_uart_dma_channel_free.exit.i, %do.body41.i.if.end56.i_crit_edge
  %use_tx_pio.i = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 33
  %68 = ptrtoint ptr %use_tx_pio.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %use_tx_pio.i, align 1, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool57.not.i = icmp eq i8 %69, 0
  br i1 %tobool57.not.i, label %if.then58.i, label %if.end56.i.tegra_uart_hw_deinit.exit_crit_edge

if.end56.i.tegra_uart_hw_deinit.exit_crit_edge:   ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_uart_hw_deinit.exit

if.then58.i:                                      ; preds = %if.end56.i
  %tx_dma_chan.i.i = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 17
  %70 = ptrtoint ptr %tx_dma_chan.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %tx_dma_chan.i.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %device_terminate_all.i25.i.i = getelementptr inbounds %struct.dma_device, ptr %73, i32 0, i32 47
  %74 = ptrtoint ptr %device_terminate_all.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %device_terminate_all.i25.i.i, align 4
  %tobool.not.i26.i.i = icmp eq ptr %75, null
  br i1 %tobool.not.i26.i.i, label %if.then58.i.tegra_uart_dma_channel_free.exit124.i_crit_edge, label %if.then.i28.i.i

if.then58.i.tegra_uart_dma_channel_free.exit124.i_crit_edge: ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_uart_dma_channel_free.exit124.i

if.then.i28.i.i:                                  ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i27.i.i = tail call i32 %75(ptr noundef %71) #8
  br label %tegra_uart_dma_channel_free.exit124.i

tegra_uart_dma_channel_free.exit124.i:            ; preds = %if.then.i28.i.i, %if.then58.i.tegra_uart_dma_channel_free.exit124.i_crit_edge
  %76 = ptrtoint ptr %tx_dma_chan.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tx_dma_chan.i.i, align 4
  tail call void @dma_release_channel(ptr noundef %77) #8
  %dev8.i.i = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 45
  %78 = ptrtoint ptr %dev8.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev8.i.i, align 4
  %tx_dma_buf_phys.i.i = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 19
  %80 = ptrtoint ptr %tx_dma_buf_phys.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %tx_dma_buf_phys.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %79, i32 noundef %81, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #8
  %82 = ptrtoint ptr %tx_dma_chan.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %tx_dma_chan.i.i, align 4
  %83 = ptrtoint ptr %tx_dma_buf_phys.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %tx_dma_buf_phys.i.i, align 4
  %tx_dma_buf_virt.i.i = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 21
  %84 = ptrtoint ptr %tx_dma_buf_virt.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %tx_dma_buf_virt.i.i, align 4
  br label %tegra_uart_hw_deinit.exit

tegra_uart_hw_deinit.exit:                        ; preds = %tegra_uart_dma_channel_free.exit124.i, %if.end56.i.tegra_uart_hw_deinit.exit_crit_edge
  %uart_clk.i = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 2
  %85 = ptrtoint ptr %uart_clk.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %uart_clk.i, align 4
  tail call void @clk_disable(ptr noundef %86) #8
  tail call void @clk_unprepare(ptr noundef %86) #8
  %irq = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 20
  %87 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %88, ptr noundef %u) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_uart_flush_buffer(ptr nocapture noundef %u) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_bytes = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 11
  %0 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tx_bytes, align 4
  %tx_dma_chan = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 17
  %1 = ptrtoint ptr %tx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tx_dma_chan, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 47
  %5 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 %6(ptr noundef nonnull %2) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_uart_set_termios(ptr noundef %u, ptr noundef %termios, ptr noundef %oldtermios) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %uart_clk = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 2
  %0 = ptrtoint ptr %uart_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uart_clk, align 4
  %call1 = tail call ptr @clk_get_parent(ptr noundef %1) #8
  %call2 = tail call i32 @clk_get_rate(ptr noundef %call1) #8
  %cdata = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 1
  %2 = ptrtoint ptr %cdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdata, align 4
  %support_clk_src_div = getelementptr inbounds %struct.tegra_uart_chip_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %support_clk_src_div to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %support_clk_src_div, align 2, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %mul = select i1 %tobool.not, i32 1048560, i32 524272
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %u) #8
  %rts_active = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 9
  %6 = ptrtoint ptr %rts_active to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rts_active, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool8.not = icmp eq i8 %7, 0
  br i1 %tobool8.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %mcr_shadow.i = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 6
  %8 = ptrtoint ptr %mcr_shadow.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mcr_shadow.i, align 4
  %and.i = and i32 %9, -65
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %9)
  %cmp.not.i = icmp eq i32 %and.i, %9
  br i1 %cmp.not.i, label %if.then.if.end_crit_edge, label %if.then2.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then2.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %10 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 2
  %11 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i.i, align 4
  %regshift.i.i = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 25
  %13 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %regshift.i.i, align 1
  %conv.i.i = zext i8 %14 to i32
  %shl.i.i = shl i32 4, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %shl.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %10) #8, !srcloc !223
  %15 = ptrtoint ptr %mcr_shadow.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and.i, ptr %mcr_shadow.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %ier_shadow = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 8
  %16 = ptrtoint ptr %ier_shadow to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ier_shadow, align 4
  %or = or i32 %17, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %18 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 2
  %19 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase.i, align 4
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 25
  %21 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %22 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %add.ptr.i = getelementptr i8, ptr %20, i32 %shl.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #8, !srcloc !223
  %23 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase.i, align 4
  %25 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %regshift.i, align 1
  %conv.i210 = zext i8 %26 to i32
  %shl.i211 = shl nuw i32 1, %conv.i210
  %add.ptr.i212 = getelementptr i8, ptr %24, i32 %shl.i211
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i212) #8, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %28 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase.i, align 4
  %30 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %regshift.i, align 1
  %conv.i215 = zext i8 %31 to i32
  %shl.i216 = shl nuw i32 1, %conv.i215
  %add.ptr.i217 = getelementptr i8, ptr %29, i32 %shl.i216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i217, i32 0) #8, !srcloc !223
  %32 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase.i, align 4
  %34 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %regshift.i, align 1
  %conv.i220 = zext i8 %35 to i32
  %shl.i221 = shl nuw i32 1, %conv.i220
  %add.ptr.i222 = getelementptr i8, ptr %33, i32 %shl.i221
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i222) #8, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  %lcr_shadow = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 7
  %37 = ptrtoint ptr %lcr_shadow to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %lcr_shadow, align 4
  %and = and i32 %38, -9
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %39 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %c_cflag, align 4
  %and11 = and i32 %40, -1073741825
  store i32 %and11, ptr %c_cflag, align 4
  %and13 = and i32 %40, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %cmp14.not = icmp eq i32 %and13, 0
  br i1 %cmp14.not, label %if.end.if.end28_crit_edge, label %if.then16

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then16:                                        ; preds = %if.end
  %and18 = and i32 %40, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %or25 = and i32 %38, -57
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %and22 = or i32 %or25, 8
  br label %if.end28

if.else:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %and26 = or i32 %or25, 24
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then20, %if.end.if.end28_crit_edge
  %lcr.0 = phi i32 [ %and22, %if.then20 ], [ %and26, %if.else ], [ %and, %if.end.if.end28_crit_edge ]
  %symb_bit.0 = phi i32 [ 2, %if.then20 ], [ 2, %if.else ], [ 1, %if.end.if.end28_crit_edge ]
  %and29 = and i32 %lcr.0, -4
  %and31 = and i32 %40, 48
  %41 = zext i32 %and31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and31, label %sw.default [
    i32 0, label %sw.bb
    i32 16, label %sw.bb33
    i32 32, label %sw.bb36
  ]

sw.bb:                                            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %add = add nuw nsw i32 %symb_bit.0, 5
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %or34 = or i32 %and29, 1
  %add35 = add nuw nsw i32 %symb_bit.0, 6
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %or37 = or i32 %and29, 2
  %add38 = add nuw nsw i32 %symb_bit.0, 7
  br label %sw.epilog

sw.default:                                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %or39 = or i32 %lcr.0, 3
  %add40 = or i32 %symb_bit.0, 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb36, %sw.bb33, %sw.bb
  %lcr.1 = phi i32 [ %or39, %sw.default ], [ %or37, %sw.bb36 ], [ %or34, %sw.bb33 ], [ %and29, %sw.bb ]
  %symb_bit.1 = phi i32 [ %add40, %sw.default ], [ %add38, %sw.bb36 ], [ %add35, %sw.bb33 ], [ %add, %sw.bb ]
  %and42 = and i32 %40, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  %and48 = and i32 %lcr.1, -5
  %42 = lshr exact i32 %and42, 4
  %lcr.2 = or i32 %and48, %42
  %symb_bit.2.v = select i1 %tobool43.not, i32 1, i32 2
  %symb_bit.2 = add nsw i32 %symb_bit.1, %symb_bit.2.v
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %43 = tail call i32 @llvm.bswap.i32(i32 %lcr.2) #8
  %44 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %membase.i, align 4
  %46 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %regshift.i, align 1
  %conv.i225 = zext i8 %47 to i32
  %shl.i226 = shl i32 3, %conv.i225
  %add.ptr.i227 = getelementptr i8, ptr %45, i32 %shl.i226
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i227, i32 %43) #8, !srcloc !223
  %48 = ptrtoint ptr %lcr_shadow to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %lcr.2, ptr %lcr_shadow, align 4
  %symb_bit52 = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 15
  %49 = ptrtoint ptr %symb_bit52 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %symb_bit.2, ptr %symb_bit52, align 4
  %div = udiv i32 %call2, %mul
  %div53207 = lshr i32 %call2, 4
  %call54 = tail call i32 @uart_get_baud_rate(ptr noundef %u, ptr noundef %termios, ptr noundef %oldtermios, i32 noundef %div, i32 noundef %div53207) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %u, i32 noundef %call5) #8
  %call56 = tail call fastcc i32 @tegra_set_baudrate(ptr noundef %u, i32 noundef %call54)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %do.end62, label %if.end63

do.end62:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 45
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.75) #11
  br label %cleanup

if.end63:                                         ; preds = %sw.epilog
  %call64 = tail call i32 @tty_termios_baud_rate(ptr noundef %termios) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end63.do.body69_crit_edge, label %if.then66

if.end63.do.body69_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body69

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @tty_termios_encode_baud_rate(ptr noundef %termios, i32 noundef %call54, i32 noundef %call54) #8
  br label %do.body69

do.body69:                                        ; preds = %if.then66, %if.end63.do.body69_crit_edge
  %call77 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %u) #8
  %52 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %tobool84.not = icmp sgt i32 %53, -1
  %mcr_shadow95 = getelementptr inbounds %struct.tegra_uart_port, ptr %u, i32 0, i32 6
  %54 = ptrtoint ptr %mcr_shadow95 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mcr_shadow95, align 4
  %and98 = and i32 %55, -97
  br i1 %tobool84.not, label %if.else94, label %if.then85

if.then85:                                        ; preds = %do.body69
  %and88 = or i32 %and98, 32
  %56 = ptrtoint ptr %mcr_shadow95 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and88, ptr %mcr_shadow95, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %57 = tail call i32 @llvm.bswap.i32(i32 %and88) #8
  %58 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %membase.i, align 4
  %60 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %regshift.i, align 1
  %conv.i230 = zext i8 %61 to i32
  %shl.i231 = shl i32 4, %conv.i230
  %add.ptr.i232 = getelementptr i8, ptr %59, i32 %shl.i231
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i232, i32 %57) #8, !srcloc !223
  %62 = ptrtoint ptr %rts_active to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %rts_active, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool91.not = icmp eq i8 %63, 0
  br i1 %tobool91.not, label %if.then85.if.end100_crit_edge, label %if.then92

if.then85.if.end100_crit_edge:                    ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.then92:                                        ; preds = %if.then85
  %64 = ptrtoint ptr %mcr_shadow95 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mcr_shadow95, align 4
  %mcr.0.i = or i32 %65, 64
  call void @__sanitizer_cov_trace_cmp4(i32 %mcr.0.i, i32 %65)
  %cmp.not.i235 = icmp eq i32 %mcr.0.i, %65
  br i1 %cmp.not.i235, label %if.then92.if.end100_crit_edge, label %if.then2.i241

if.then92.if.end100_crit_edge:                    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.then2.i241:                                    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %66 = tail call i32 @llvm.bswap.i32(i32 %mcr.0.i) #8
  %67 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %membase.i, align 4
  %69 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %regshift.i, align 1
  %conv.i.i238 = zext i8 %70 to i32
  %shl.i.i239 = shl i32 4, %conv.i.i238
  %add.ptr.i.i240 = getelementptr i8, ptr %68, i32 %shl.i.i239
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i240, i32 %66) #8, !srcloc !223
  %71 = ptrtoint ptr %mcr_shadow95 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %mcr.0.i, ptr %mcr_shadow95, align 4
  br label %if.end100

if.else94:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %mcr_shadow95 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %and98, ptr %mcr_shadow95, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %73 = tail call i32 @llvm.bswap.i32(i32 %and98) #8
  %74 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %membase.i, align 4
  %76 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %regshift.i, align 1
  %conv.i245 = zext i8 %77 to i32
  %shl.i246 = shl i32 4, %conv.i245
  %add.ptr.i247 = getelementptr i8, ptr %75, i32 %shl.i246
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i247, i32 %73) #8, !srcloc !223
  br label %if.end100

if.end100:                                        ; preds = %if.else94, %if.then2.i241, %if.then92.if.end100_crit_edge, %if.then85.if.end100_crit_edge
  %78 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %c_cflag, align 4
  tail call void @uart_update_timeout(ptr noundef %u, i32 noundef %79, i32 noundef %call54) #8
  %80 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %membase.i, align 4
  %82 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %regshift.i, align 1
  %conv.i250 = zext i8 %83 to i32
  %shl.i251 = shl nuw i32 1, %conv.i250
  %add.ptr.i252 = getelementptr i8, ptr %81, i32 %shl.i251
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i252) #8, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  %85 = ptrtoint ptr %ier_shadow to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %ier_shadow, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #8
  %88 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %membase.i, align 4
  %90 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %regshift.i, align 1
  %conv.i255 = zext i8 %91 to i32
  %shl.i256 = shl nuw i32 1, %conv.i255
  %add.ptr.i257 = getelementptr i8, ptr %89, i32 %shl.i256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i257, i32 %87) #8, !srcloc !223
  %92 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %membase.i, align 4
  %94 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %regshift.i, align 1
  %conv.i260 = zext i8 %95 to i32
  %shl.i261 = shl nuw i32 1, %conv.i260
  %add.ptr.i262 = getelementptr i8, ptr %93, i32 %shl.i261
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i262) #8, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  %ignore_status_mask = getelementptr inbounds %struct.uart_port, ptr %u, i32 0, i32 29
  %97 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %ignore_status_mask, align 4
  %98 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %c_cflag, align 4
  %and107 = lshr i32 %99, 7
  %and107.lobit = and i32 %and107, 1
  %100 = xor i32 %and107.lobit, 1
  store i32 %100, ptr %ignore_status_mask, align 4
  %101 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %termios, align 4
  %and115 = and i32 %102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %if.end100.if.end121_crit_edge, label %if.then117

if.end100.if.end121_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end121

if.then117:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  %or120 = or i32 %100, 16
  %103 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %or120, ptr %ignore_status_mask, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.then117, %if.end100.if.end121_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %u, i32 noundef %call77) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end121, %do.end62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @tegra_uart_type(ptr nocapture noundef readnone %u) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.91
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tegra_uart_release_port(ptr nocapture noundef %u) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra_uart_request_port(ptr nocapture noundef readnone %u) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_uart_start_next_tx(ptr noundef %tup) unnamed_addr #3 align 64 {
entry:
  %sg.i.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %current_baud = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 4
  %0 = ptrtoint ptr %current_baud to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_baud, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 30
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %xmit1 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %xmit1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xmit1, align 4
  %tail2 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %tail2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tail2, align 4
  %arrayidx = getelementptr i8, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  %sub = sub i32 4096, %7
  %head = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %head, align 4
  %add = add i32 %10, %sub
  %and = and i32 %add, 4095
  %11 = tail call i32 @llvm.smin.i32(i32 %and, i32 %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not = icmp eq i32 %11, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %use_tx_pio = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 33
  %12 = ptrtoint ptr %use_tx_pio to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %use_tx_pio, align 1, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool7.not = icmp ne i8 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %11)
  %cmp8 = icmp ult i32 %11, 16
  %or.cond = select i1 %tobool7.not, i1 true, i1 %cmp8
  br i1 %or.cond, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %14 = tail call i32 @llvm.umin.i32(i32 %11, i32 16) #8
  %tx_in_progress.i = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 10
  %15 = ptrtoint ptr %tx_in_progress.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %tx_in_progress.i, align 4
  %tx_bytes.i = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 11
  %16 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %14, ptr %tx_bytes.i, align 4
  %ier_shadow.i = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 8
  %17 = ptrtoint ptr %ier_shadow.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ier_shadow.i, align 4
  %or.i = or i32 %18, 2
  store i32 %or.i, ptr %ier_shadow.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %19 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 2
  %20 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase.i.i, align 4
  %regshift.i.i = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 25
  %22 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %regshift.i.i, align 1
  %conv.i.i = zext i8 %23 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 %shl.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %19) #8, !srcloc !223
  br label %cleanup

if.else:                                          ; preds = %if.end6
  %and10 = and i32 %8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp11.not = icmp eq i32 %and10, 0
  br i1 %cmp11.not, label %if.else14, label %if.then12

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %tx_in_progress.i34 = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 10
  %24 = ptrtoint ptr %tx_in_progress.i34 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %tx_in_progress.i34, align 4
  %tx_bytes.i35 = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 11
  %25 = ptrtoint ptr %tx_bytes.i35 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and10, ptr %tx_bytes.i35, align 4
  %ier_shadow.i36 = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 8
  %26 = ptrtoint ptr %ier_shadow.i36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ier_shadow.i36, align 4
  %or.i37 = or i32 %27, 2
  store i32 %or.i37, ptr %ier_shadow.i36, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %28 = tail call i32 @llvm.bswap.i32(i32 %or.i37) #8
  %membase.i.i38 = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 2
  %29 = ptrtoint ptr %membase.i.i38 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase.i.i38, align 4
  %regshift.i.i39 = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 25
  %31 = ptrtoint ptr %regshift.i.i39 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %regshift.i.i39, align 1
  %conv.i.i40 = zext i8 %32 to i32
  %shl.i.i41 = shl nuw i32 1, %conv.i.i40
  %add.ptr.i.i42 = getelementptr i8, ptr %30, i32 %shl.i.i41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i42, i32 %28) #8, !srcloc !223
  br label %cleanup

if.else14:                                        ; preds = %if.else
  %and.i = and i32 %11, -16
  %tx_bytes.i43 = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 11
  %33 = ptrtoint ptr %tx_bytes.i43 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and.i, ptr %tx_bytes.i43, align 4
  %tx_dma_buf_phys.i = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 19
  %34 = ptrtoint ptr %tx_dma_buf_phys.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_dma_buf_phys.i, align 4
  %36 = ptrtoint ptr %tail2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tail2, align 4
  %add.i = add i32 %37, %35
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 45
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %39, i32 noundef %add.i, i32 noundef %and.i, i32 noundef 1) #8
  %tx_dma_chan.i = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 17
  %40 = ptrtoint ptr %tx_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tx_dma_chan.i, align 4
  %42 = ptrtoint ptr %tx_bytes.i43 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tx_bytes.i43, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i) #8
  %44 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i, i32 0, i32 3
  %45 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i, i32 0, i32 4
  %46 = call ptr @memset(ptr %sg.i.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i.i, i32 noundef 1) #8
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %add.i, ptr %44, align 4
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %43, ptr %45, align 4
  %tobool.not.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i, label %if.else14.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %lor.lhs.false.i.i

if.else14.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_slave_single.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %if.else14
  %49 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %41, align 4
  %tobool1.not.i.i = icmp eq ptr %50, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_slave_single.exit.thread.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %50, i32 0, i32 39
  %51 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %52, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %dmaengine_prep_slave_single.exit.i

lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_slave_single.exit.thread.i

dmaengine_prep_slave_single.exit.thread.i:        ; preds = %lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, %lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, %if.else14.dmaengine_prep_slave_single.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #8
  %tx_dma_desc3.i = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 22
  %53 = ptrtoint ptr %tx_dma_desc3.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %tx_dma_desc3.i, align 4
  br label %do.end.i

dmaengine_prep_slave_single.exit.i:               ; preds = %lor.lhs.false2.i.i
  %call.i.i = call ptr %52(ptr noundef nonnull %41, ptr noundef nonnull %sg.i.i, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #8
  %tx_dma_desc.i = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 22
  %54 = ptrtoint ptr %tx_dma_desc.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i.i, ptr %tx_dma_desc.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %dmaengine_prep_slave_single.exit.i.do.end.i_crit_edge, label %if.end.i

dmaengine_prep_slave_single.exit.i.do.end.i_crit_edge: ; preds = %dmaengine_prep_slave_single.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %dmaengine_prep_slave_single.exit.i.do.end.i_crit_edge, %dmaengine_prep_slave_single.exit.thread.i
  %55 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.38) #11
  br label %cleanup

if.end.i:                                         ; preds = %dmaengine_prep_slave_single.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 6
  %57 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @tegra_uart_tx_dma_complete, ptr %callback.i, align 4
  %58 = ptrtoint ptr %tx_dma_desc.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tx_dma_desc.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %59, i32 0, i32 8
  %60 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %tup, ptr %callback_param.i, align 4
  %tx_in_progress.i44 = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 10
  %61 = ptrtoint ptr %tx_in_progress.i44 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 2, ptr %tx_in_progress.i44, align 4
  %62 = ptrtoint ptr %tx_bytes.i43 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tx_bytes.i43, align 4
  %tx_bytes_requested.i = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 26
  %64 = ptrtoint ptr %tx_bytes_requested.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %tx_bytes_requested.i, align 4
  %65 = load ptr, ptr %tx_dma_desc.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i1.i = call i32 %67(ptr noundef %65) #8
  %tx_cookie.i = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 24
  %68 = ptrtoint ptr %tx_cookie.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %call.i1.i, ptr %tx_cookie.i, align 4
  %69 = ptrtoint ptr %tx_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tx_dma_chan.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %72, i32 0, i32 50
  %73 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %device_issue_pending.i.i, align 4
  call void %74(ptr noundef %70) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %do.end.i, %if.then12, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_uart_tx_dma_complete(ptr noundef %args) #3 align 64 {
entry:
  %state2 = alloca %struct.dma_tx_state, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %args, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state2) #8
  %2 = getelementptr inbounds %struct.dma_tx_state, ptr %state2, i32 0, i32 2
  %tx_dma_chan = getelementptr inbounds %struct.tegra_uart_port, ptr %args, i32 0, i32 17
  %3 = call ptr @memset(ptr %state2, i32 255, i32 16)
  %4 = ptrtoint ptr %tx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_dma_chan, align 4
  %tx_cookie = getelementptr inbounds %struct.tegra_uart_port, ptr %args, i32 0, i32 24
  %6 = ptrtoint ptr %tx_cookie to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_cookie, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 49
  %10 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device_tx_status.i, align 4
  %call.i = call i32 %11(ptr noundef %5, i32 noundef %7, ptr noundef nonnull %state2) #8
  %tx_bytes_requested = getelementptr inbounds %struct.tegra_uart_port, ptr %args, i32 0, i32 26
  %12 = ptrtoint ptr %tx_bytes_requested to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_bytes_requested, align 4
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %2, align 4
  %sub = sub i32 %13, %15
  %tx_dma_desc = getelementptr inbounds %struct.tegra_uart_port, ptr %args, i32 0, i32 22
  %16 = ptrtoint ptr %tx_dma_desc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_dma_desc, align 4
  %flags.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %19, 2
  store i32 %or.i, ptr %flags.i, align 4
  %call6 = call i32 @_raw_spin_lock_irqsave(ptr noundef %args) #8
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tail, align 4
  %add = add i32 %sub, %21
  %and = and i32 %add, 4095
  store i32 %and, ptr %tail, align 4
  %tx_in_progress = getelementptr inbounds %struct.tegra_uart_port, ptr %args, i32 0, i32 10
  %22 = ptrtoint ptr %tx_in_progress to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %tx_in_progress, align 4
  %head = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %head, align 4
  %25 = load i32, ptr %tail, align 4
  %sub11 = sub i32 %24, %25
  %and12 = and i32 %sub11, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %cmp13 = icmp eq i32 %and12, 0
  br i1 %cmp13, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @uart_write_wakeup(ptr noundef %args) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call fastcc void @tegra_uart_start_next_tx(ptr noundef %args)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %args, i32 noundef %call6) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_uart_terminate_rx_dma(ptr noundef %tup) unnamed_addr #3 align 64 {
entry:
  %state = alloca %struct.dma_tx_state, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state) #8
  %0 = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 2
  %rx_dma_active = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 34
  %1 = call ptr @memset(ptr %state, i32 255, i32 16)
  %2 = ptrtoint ptr %rx_dma_active to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rx_dma_active, align 2, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %state.i = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 30
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state.i, align 4
  %call.i = tail call ptr @tty_port_tty_get(ptr noundef %5) #8
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state.i, align 4
  tail call fastcc void @tegra_uart_handle_rx_pio(ptr noundef %tup, ptr noundef %7) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.then.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @tty_flip_buffer_push(ptr noundef %7) #8
  tail call void @tty_kref_put(ptr noundef nonnull %call.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_dma_chan = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 16
  %8 = ptrtoint ptr %rx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_dma_chan, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 47
  %12 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i10 = icmp eq ptr %13, null
  br i1 %tobool.not.i10, label %if.end.dmaengine_terminate_all.exit_crit_edge, label %if.then.i12

if.end.dmaengine_terminate_all.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_all.exit

if.then.i12:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i11 = tail call i32 %13(ptr noundef %9) #8
  br label %dmaengine_terminate_all.exit

dmaengine_terminate_all.exit:                     ; preds = %if.then.i12, %if.end.dmaengine_terminate_all.exit_crit_edge
  %14 = ptrtoint ptr %rx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_dma_chan, align 4
  %rx_cookie = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 25
  %16 = ptrtoint ptr %rx_cookie to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_cookie, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 49
  %20 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device_tx_status.i, align 4
  %call.i13 = call i32 %21(ptr noundef %15, i32 noundef %17, ptr noundef nonnull %state) #8
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %0, align 4
  call fastcc void @tegra_uart_rx_buffer_push(ptr noundef %tup, i32 noundef %23)
  %24 = ptrtoint ptr %rx_dma_active to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %rx_dma_active, align 2
  br label %cleanup

cleanup:                                          ; preds = %dmaengine_terminate_all.exit, %if.then.i, %if.then.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_uart_handle_rx_pio(ptr noundef %tup, ptr noundef %port) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 2
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 25
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %2 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %regshift.i, align 1
  %conv.i47 = zext i8 %3 to i32
  %shl.i48 = shl i32 5, %conv.i47
  %add.ptr.i49 = getelementptr i8, ptr %1, i32 %shl.i48
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #8, !srcloc !220
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  %and50 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool.not51 = icmp eq i32 %and50, 0
  br i1 %tobool.not51, label %entry.do.end_crit_edge, label %if.end.lr.ph

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.lr.ph:                                     ; preds = %entry
  %rx = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 31, i32 4
  %sysrq.i = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 46
  %ignore_status_mask = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 29
  %tail.i = getelementptr inbounds %struct.tty_bufhead, ptr %port, i32 0, i32 8
  br label %if.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.end.lr.ph
  %6 = phi i32 [ %5, %if.end.lr.ph ], [ %37, %cleanup.if.end_crit_edge ]
  %call1 = tail call fastcc zeroext i8 @tegra_uart_decode_rx_error(ptr noundef %tup, i32 noundef %6)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call1)
  %cmp.not = icmp eq i8 %call1, 0
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !220
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  %conv6 = trunc i32 %10 to i8
  %11 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %rx, align 4
  %conv8 = and i32 %10, 255
  %13 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sysrq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.end4.if.end12_crit_edge, label %if.end.i

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv8)
  %tobool1.not.i = icmp eq i32 %conv8, 0
  br i1 %tobool1.not.i, label %if.end.i.uart_handle_sysrq_char.exit.thread41_crit_edge, label %land.lhs.true.i

if.end.i.uart_handle_sysrq_char.exit.thread41_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uart_handle_sysrq_char.exit.thread41

land.lhs.true.i:                                  ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %15, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then3.i, label %land.lhs.true.i.uart_handle_sysrq_char.exit.thread41_crit_edge

land.lhs.true.i.uart_handle_sysrq_char.exit.thread41_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uart_handle_sysrq_char.exit.thread41

if.then3.i:                                       ; preds = %land.lhs.true.i
  %call.i = tail call i32 @sysrq_mask() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end7.i, label %uart_handle_sysrq_char.exit

if.end7.i:                                        ; preds = %if.then3.i
  %call8.i = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %tup, i32 noundef %conv8) #8
  br i1 %call8.i, label %if.end7.i.cleanup_crit_edge, label %if.end7.i.uart_handle_sysrq_char.exit.thread41_crit_edge

if.end7.i.uart_handle_sysrq_char.exit.thread41_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uart_handle_sysrq_char.exit.thread41

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

uart_handle_sysrq_char.exit.thread41:             ; preds = %if.end7.i.uart_handle_sysrq_char.exit.thread41_crit_edge, %land.lhs.true.i.uart_handle_sysrq_char.exit.thread41_crit_edge, %if.end.i.uart_handle_sysrq_char.exit.thread41_crit_edge
  %16 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %sysrq.i, align 4
  br label %if.end12

uart_handle_sysrq_char.exit:                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @handle_sysrq(i32 noundef %conv8) #8
  %17 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %sysrq.i, align 4
  br label %cleanup

if.end12:                                         ; preds = %uart_handle_sysrq_char.exit.thread41, %if.end4.if.end12_crit_edge
  %18 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ignore_status_mask, align 4
  %and14 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %land.lhs.true.i34, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i34:                                ; preds = %if.end12
  %20 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i, align 4
  %used.i = getelementptr inbounds %struct.tty_buffer, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %used.i, align 4
  %size.i = getelementptr inbounds %struct.tty_buffer, ptr %21, i32 0, i32 2
  %24 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp3.i = icmp slt i32 %23, %25
  br i1 %cmp3.i, label %if.then.i, label %if.end12.i

if.then.i:                                        ; preds = %land.lhs.true.i34
  %flags.i = getelementptr inbounds %struct.tty_buffer, ptr %21, i32 0, i32 5
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i32 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i32, label %if.then8.i, label %if.then.i.if.end.i35_crit_edge

if.then.i.if.end.i35_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i35

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %21, i32 0, i32 6
  %add.ptr.i.i.i = getelementptr i8, ptr %data.i.i.i, i32 %23
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %25
  %28 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %add.ptr.i.i, align 1
  br label %if.end.i35

if.end.i35:                                       ; preds = %if.then8.i, %if.then.i.if.end.i35_crit_edge
  %29 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %used.i, align 4
  %inc.i = add i32 %30, 1
  store i32 %inc.i, ptr %used.i, align 4
  %data.i.i = getelementptr inbounds %struct.tty_buffer, ptr %21, i32 0, i32 6
  %add.ptr.i1.i = getelementptr i8, ptr %data.i.i, i32 %30
  %31 = ptrtoint ptr %add.ptr.i1.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv6, ptr %add.ptr.i1.i, align 1
  br label %cleanup

if.end12.i:                                       ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i = tail call i32 @__tty_insert_flip_char(ptr noundef %port, i8 noundef zeroext %conv6, i8 noundef zeroext 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end12.i, %if.end.i35, %if.end12.cleanup_crit_edge, %uart_handle_sysrq_char.exit, %if.end7.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %32 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase.i, align 4
  %34 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %35 to i32
  %shl.i = shl i32 5, %conv.i
  %add.ptr.i = getelementptr i8, ptr %33, i32 %shl.i
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !220
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  %and = and i32 %37, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup.do.end_crit_edge, label %cleanup.if.end_crit_edge

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

cleanup.do.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %cleanup.do.end_crit_edge, %entry.do.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_uart_rx_buffer_push(ptr noundef %tup, i32 noundef %residue) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %rx_dma_desc = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 23
  %2 = ptrtoint ptr %rx_dma_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_dma_desc, align 4
  %flags.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %5, 2
  store i32 %or.i, ptr %flags.i, align 4
  %rx_bytes_requested = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 27
  %6 = ptrtoint ptr %rx_bytes_requested to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_bytes_requested, align 4
  %sub = sub i32 %7, %residue
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %residue)
  %tobool.not.i = icmp eq i32 %7, %residue
  br i1 %tobool.not.i, label %entry.tegra_uart_copy_rx_to_tty.exit_crit_edge, label %if.end.i

entry.tegra_uart_copy_rx_to_tty.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_uart_copy_rx_to_tty.exit

if.end.i:                                         ; preds = %entry
  %rx.i = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 31, i32 4
  %8 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx.i, align 4
  %add.i = add i32 %9, %sub
  store i32 %add.i, ptr %rx.i, align 4
  %ignore_status_mask.i = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 29
  %10 = ptrtoint ptr %ignore_status_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ignore_status_mask.i, align 4
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.tegra_uart_copy_rx_to_tty.exit_crit_edge

if.end.i.tegra_uart_copy_rx_to_tty.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_uart_copy_rx_to_tty.exit

if.end4.i:                                        ; preds = %if.end.i
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 45
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %rx_dma_buf_phys.i = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 18
  %14 = ptrtoint ptr %rx_dma_buf_phys.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_dma_buf_phys.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %13, i32 noundef %15, i32 noundef %sub, i32 noundef 2) #8
  %rx_dma_buf_virt.i = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 20
  %16 = ptrtoint ptr %rx_dma_buf_virt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_dma_buf_virt.i, align 4
  %call.i.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %1, ptr noundef %17, i8 noundef zeroext 0, i32 noundef %sub) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %sub)
  %cmp.not.i = icmp eq i32 %call.i.i, %sub
  br i1 %cmp.not.i, label %if.end4.i.if.end29.i_crit_edge, label %do.end.i

if.end4.i.if.end29.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 691, i32 noundef 9, ptr noundef null) #8
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.40) #11
  br label %if.end29.i

if.end29.i:                                       ; preds = %do.end.i, %if.end4.i.if.end29.i_crit_edge
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %22 = ptrtoint ptr %rx_dma_buf_phys.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_dma_buf_phys.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %21, i32 noundef %23, i32 noundef %sub, i32 noundef 1) #8
  br label %tegra_uart_copy_rx_to_tty.exit

tegra_uart_copy_rx_to_tty.exit:                   ; preds = %if.end29.i, %if.end.i.tegra_uart_copy_rx_to_tty.exit_crit_edge, %entry.tegra_uart_copy_rx_to_tty.exit_crit_edge
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %state, align 4
  %call.i = tail call ptr @tty_port_tty_get(ptr noundef %25) #8
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %state, align 4
  tail call fastcc void @tegra_uart_handle_rx_pio(ptr noundef %tup, ptr noundef %27) #8
  %tobool.not.i6 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i6, label %tegra_uart_copy_rx_to_tty.exit.do_handle_rx_pio.exit_crit_edge, label %if.then.i

tegra_uart_copy_rx_to_tty.exit.do_handle_rx_pio.exit_crit_edge: ; preds = %tegra_uart_copy_rx_to_tty.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_handle_rx_pio.exit

if.then.i:                                        ; preds = %tegra_uart_copy_rx_to_tty.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @tty_flip_buffer_push(ptr noundef %27) #8
  tail call void @tty_kref_put(ptr noundef nonnull %call.i) #8
  br label %do_handle_rx_pio.exit

do_handle_rx_pio.exit:                            ; preds = %if.then.i, %tegra_uart_copy_rx_to_tty.exit.do_handle_rx_pio.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_tty_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @tegra_uart_decode_rx_error(ptr noundef %tup, i32 noundef %lsr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %lsr, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then, !prof !225

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %and3 = and i32 %lsr, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %overrun = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 31, i32 7
  %0 = ptrtoint ptr %overrun to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %overrun, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %overrun, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_uart_decode_rx_error.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra_uart_decode_rx_error, %if.then13)) #8
          to label %if.end103 [label %if.then13], !srcloc !226

if.then13:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 45
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_uart_decode_rx_error.__UNIQUE_ID_ddebug250, ptr noundef %3, ptr noundef nonnull @.str.44) #8
  br label %if.end103

if.else:                                          ; preds = %if.then
  %and15 = and i32 %lsr, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else39, label %if.then17

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %parity = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 31, i32 8
  %4 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %parity, align 4
  %inc20 = add i32 %5, 1
  store i32 %inc20, ptr %parity, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_uart_decode_rx_error.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra_uart_decode_rx_error, %if.then33)) #8
          to label %if.end103 [label %if.then33], !srcloc !226

if.then33:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %dev35 = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 45
  %6 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev35, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_uart_decode_rx_error.__UNIQUE_ID_ddebug251, ptr noundef %7, ptr noundef nonnull @.str.45) #8
  br label %if.end103

if.else39:                                        ; preds = %if.else
  %and40 = and i32 %lsr, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.else64, label %if.then42

if.then42:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #10
  %frame = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 31, i32 6
  %8 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frame, align 4
  %inc45 = add i32 %9, 1
  store i32 %inc45, ptr %frame, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_uart_decode_rx_error.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra_uart_decode_rx_error, %if.then58)) #8
          to label %if.end103 [label %if.then58], !srcloc !226

if.then58:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  %dev60 = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 45
  %10 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev60, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_uart_decode_rx_error.__UNIQUE_ID_ddebug252, ptr noundef %11, ptr noundef nonnull @.str.46) #8
  br label %if.end103

if.else64:                                        ; preds = %if.else39
  %and65 = and i32 %lsr, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.else64.if.end103_crit_edge, label %if.then67

if.else64.if.end103_crit_edge:                    ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

if.then67:                                        ; preds = %if.else64
  %12 = and i32 %lsr, 129
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %12)
  %.not = icmp eq i32 %12, 128
  br i1 %.not, label %if.then72, label %if.then67.if.end73_crit_edge

if.then67.if.end73_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.then72:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @tegra_uart_fifo_reset(ptr noundef %tup, i8 noundef zeroext 2)
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %if.then67.if.end73_crit_edge
  %ignore_status_mask = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 29
  %13 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ignore_status_mask, align 4
  %and75 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end78, label %if.end73.cleanup_crit_edge

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end78:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  %brk = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 31, i32 9
  %15 = ptrtoint ptr %brk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %brk, align 4
  %inc81 = add i32 %16, 1
  store i32 %inc81, ptr %brk, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_uart_decode_rx_error.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra_uart_decode_rx_error, %if.then94)) #8
          to label %if.end103 [label %if.then94], !srcloc !226

if.then94:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  %dev96 = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 45
  %17 = ptrtoint ptr %dev96 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev96, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_uart_decode_rx_error.__UNIQUE_ID_ddebug253, ptr noundef %18, ptr noundef nonnull @.str.47) #8
  br label %if.end103

if.end103:                                        ; preds = %if.then94, %if.end78, %if.else64.if.end103_crit_edge, %if.then58, %if.then42, %if.then33, %if.then17, %if.then13, %if.then5
  %flag.0 = phi i8 [ 4, %if.then13 ], [ 3, %if.then33 ], [ 2, %if.then58 ], [ 1, %if.then94 ], [ 0, %if.else64.if.end103_crit_edge ], [ 4, %if.then5 ], [ 3, %if.then17 ], [ 2, %if.then42 ], [ 1, %if.end78 ]
  %conv = zext i8 %flag.0 to i32
  tail call void @uart_insert_char(ptr noundef %tup, i32 noundef %lsr, i32 noundef 2, i32 noundef 0, i32 noundef %conv) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end103, %if.end73.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 1, %if.end73.cleanup_crit_edge ], [ %flag.0, %if.end103 ], [ 0, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_uart_fifo_reset(ptr noundef %tup, i8 noundef zeroext %fcr_bits) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fcr_shadow = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 5
  %0 = ptrtoint ptr %fcr_shadow to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fcr_shadow, align 4
  %rts_active = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 9
  %2 = ptrtoint ptr %rts_active to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rts_active, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %mcr_shadow.i = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 6
  %4 = ptrtoint ptr %mcr_shadow.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mcr_shadow.i, align 4
  %and.i = and i32 %5, -65
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %5)
  %cmp.not.i = icmp eq i32 %and.i, %5
  br i1 %cmp.not.i, label %if.then.if.end_crit_edge, label %if.then2.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then2.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %6 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 2
  %7 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i.i, align 4
  %regshift.i.i = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 25
  %9 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %regshift.i.i, align 1
  %conv.i.i = zext i8 %10 to i32
  %shl.i.i = shl i32 4, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %shl.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %6) #8, !srcloc !223
  %11 = ptrtoint ptr %mcr_shadow.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and.i, ptr %mcr_shadow.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %cdata = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 1
  %12 = ptrtoint ptr %cdata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cdata, align 4
  %allow_txfifo_reset_fifo_mode = getelementptr inbounds %struct.tegra_uart_chip_data, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %allow_txfifo_reset_fifo_mode to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %allow_txfifo_reset_fifo_mode, align 1, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool1.not = icmp eq i8 %15, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = and i8 %fcr_bits, 6
  %and = zext i8 %16 to i32
  %or = or i32 %1, %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %17 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 2
  %18 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i, align 4
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 25
  %20 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %21 to i32
  %shl.i = shl i32 2, %conv.i
  %add.ptr.i = getelementptr i8, ptr %19, i32 %shl.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %17) #8, !srcloc !223
  br label %if.end12

if.else:                                          ; preds = %if.end
  %and3 = and i32 %1, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %22 = tail call i32 @llvm.bswap.i32(i32 %and3) #8
  %membase.i49 = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 2
  %23 = ptrtoint ptr %membase.i49 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase.i49, align 4
  %regshift.i50 = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 25
  %25 = ptrtoint ptr %regshift.i50 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %regshift.i50, align 1
  %conv.i51 = zext i8 %26 to i32
  %shl.i52 = shl i32 2, %conv.i51
  %add.ptr.i53 = getelementptr i8, ptr %24, i32 %shl.i52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 %22) #8, !srcloc !223
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 12884880) #8
  %28 = and i8 %fcr_bits, 6
  %and5 = zext i8 %28 to i32
  %or6 = or i32 %and3, %and5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %29 = tail call i32 @llvm.bswap.i32(i32 %or6) #8
  %30 = ptrtoint ptr %membase.i49 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase.i49, align 4
  %32 = ptrtoint ptr %regshift.i50 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %regshift.i50, align 1
  %conv.i56 = zext i8 %33 to i32
  %shl.i57 = shl i32 2, %conv.i56
  %add.ptr.i58 = getelementptr i8, ptr %31, i32 %shl.i57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 %29) #8, !srcloc !223
  %or7 = or i32 %or6, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %34 = tail call i32 @llvm.bswap.i32(i32 %or7) #8
  %35 = ptrtoint ptr %membase.i49 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase.i49, align 4
  %37 = ptrtoint ptr %regshift.i50 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %regshift.i50, align 1
  %conv.i61 = zext i8 %38 to i32
  %shl.i62 = shl i32 2, %conv.i61
  %add.ptr.i63 = getelementptr i8, ptr %36, i32 %shl.i62
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 %34) #8, !srcloc !223
  %39 = ptrtoint ptr %cdata to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cdata, align 4
  %fifo_mode_enable_status = getelementptr inbounds %struct.tegra_uart_chip_data, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %fifo_mode_enable_status to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %fifo_mode_enable_status, align 1, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool9.not = icmp eq i8 %42, 0
  br i1 %tobool9.not, label %if.else.if.end12_crit_edge, label %if.else.do.body.i_crit_edge

if.else.do.body.i_crit_edge:                      ; preds = %if.else
  br label %do.body.i

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.else.do.body.i_crit_edge
  %tmout.0.i = phi i32 [ %dec.i, %if.end.i.do.body.i_crit_edge ], [ 100, %if.else.do.body.i_crit_edge ]
  %43 = ptrtoint ptr %membase.i49 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase.i49, align 4
  %45 = ptrtoint ptr %regshift.i50 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %regshift.i50, align 1
  %conv.i.i66 = zext i8 %46 to i32
  %shl.i.i67 = shl i32 2, %conv.i.i66
  %add.ptr.i.i68 = getelementptr i8, ptr %44, i32 %shl.i.i67
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i68) #8, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  %48 = and i32 %47, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i = icmp eq i32 %48, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.i.if.end12_crit_edge

do.body.i.if.end12_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.end.i:                                         ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748) #8
  %dec.i = add nsw i32 %tmout.0.i, -1
  %tobool1.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end12_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.end.i.if.end12_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.end12:                                         ; preds = %if.end.i.if.end12_crit_edge, %do.body.i.if.end12_crit_edge, %if.else.if.end12_crit_edge, %if.then2
  %membase.i69 = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 2
  %50 = ptrtoint ptr %membase.i69 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %membase.i69, align 4
  %regshift.i70 = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 25
  %52 = ptrtoint ptr %regshift.i70 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %regshift.i70, align 1
  %conv.i71 = zext i8 %53 to i32
  %shl.i72 = shl i32 7, %conv.i71
  %add.ptr.i73 = getelementptr i8, ptr %51, i32 %shl.i72
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i73) #8, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  %current_baud.i = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 4
  %55 = ptrtoint ptr %current_baud.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %current_baud.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i74 = icmp eq i32 %56, 0
  br i1 %tobool.not.i74, label %if.end12.do.body.preheader_crit_edge, label %cond.false23.i

if.end12.do.body.preheader_crit_edge:             ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.preheader

cond.false23.i:                                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %mul2.i = shl i32 %56, 4
  %sub.i = add i32 %mul2.i, 31999999
  %div.i = udiv i32 %sub.i, %mul2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %57(i32 noundef %div.i) #8
  br label %do.body.preheader

do.body.preheader:                                ; preds = %cond.false23.i, %if.end12.do.body.preheader_crit_edge
  br label %do.body

do.body:                                          ; preds = %if.end20.do.body_crit_edge, %do.body.preheader
  %tmout.0 = phi i32 [ %dec, %if.end20.do.body_crit_edge ], [ 10000, %do.body.preheader ]
  %58 = ptrtoint ptr %membase.i69 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %membase.i69, align 4
  %60 = ptrtoint ptr %regshift.i70 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %regshift.i70, align 1
  %conv.i78 = zext i8 %61 to i32
  %shl.i79 = shl i32 5, %conv.i78
  %add.ptr.i80 = getelementptr i8, ptr %59, i32 %shl.i79
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i80) #8, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  %63 = and i32 %62, 1090519040
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %63)
  %64 = icmp eq i32 %63, 1073741824
  br i1 %64, label %do.body.do.end_crit_edge, label %if.end20

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end20:                                         ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 214748) #8
  %dec = add nsw i32 %tmout.0, -1
  %tobool21.not = icmp eq i32 %dec, 0
  br i1 %tobool21.not, label %if.end20.do.end_crit_edge, label %if.end20.do.body_crit_edge

if.end20.do.body_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end20.do.end_crit_edge:                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %if.end20.do.end_crit_edge, %do.body.do.end_crit_edge
  %66 = ptrtoint ptr %rts_active to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %rts_active, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool23.not = icmp eq i8 %67, 0
  br i1 %tobool23.not, label %do.end.if.end25_crit_edge, label %if.then24

do.end.if.end25_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then24:                                        ; preds = %do.end
  %mcr_shadow.i81 = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 6
  %68 = ptrtoint ptr %mcr_shadow.i81 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %mcr_shadow.i81, align 4
  %mcr.0.i = or i32 %69, 64
  call void @__sanitizer_cov_trace_cmp4(i32 %mcr.0.i, i32 %69)
  %cmp.not.i83 = icmp eq i32 %mcr.0.i, %69
  br i1 %cmp.not.i83, label %if.then24.if.end25_crit_edge, label %if.then2.i89

if.then24.if.end25_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then2.i89:                                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %70 = tail call i32 @llvm.bswap.i32(i32 %mcr.0.i) #8
  %71 = ptrtoint ptr %membase.i69 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %membase.i69, align 4
  %73 = ptrtoint ptr %regshift.i70 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %regshift.i70, align 1
  %conv.i.i86 = zext i8 %74 to i32
  %shl.i.i87 = shl i32 4, %conv.i.i86
  %add.ptr.i.i88 = getelementptr i8, ptr %72, i32 %shl.i.i87
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i88, i32 %70) #8, !srcloc !223
  %75 = ptrtoint ptr %mcr_shadow.i81 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %mcr.0.i, ptr %mcr_shadow.i81, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then2.i89, %if.then24.if.end25_crit_edge, %do.end.if.end25_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_insert_char(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_uart_dma_channel_allocate(ptr nocapture noundef %tup, i1 noundef zeroext %dma_to_memory) unnamed_addr #3 align 64 {
entry:
  %dma_phys = alloca i32, align 4
  %dma_sconfig = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_phys) #8
  %0 = ptrtoint ptr %dma_phys to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dma_phys, align 4, !annotation !219
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %dma_sconfig) #8
  %1 = call ptr @memset(ptr %dma_sconfig, i32 255, i32 48)
  %dev = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 45
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %cond = select i1 %dma_to_memory, ptr @.str.28, ptr @.str.33
  %call = tail call ptr @dma_request_chan(ptr noundef %3, ptr noundef nonnull %cond) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call to i32
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.59, i32 noundef %4) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  br i1 %dma_to_memory, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %8, i32 noundef 4096, ptr noundef nonnull %dma_phys, i32 noundef 3264, i32 noundef 0) #8
  %tobool10.not = icmp eq ptr %call.i, null
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  br i1 %tobool10.not, label %do.end14, label %if.end17

do.end14:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.62) #11
  call void @dma_release_channel(ptr noundef %call) #8
  br label %cleanup

if.end17:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %dma_phys to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_phys, align 4
  call void @dma_sync_single_for_device(ptr noundef %10, i32 noundef %12, i32 noundef 4096, i32 noundef 1) #8
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 43
  %13 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mapbase, align 4
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %dma_sconfig, i32 0, i32 1
  %15 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %src_addr, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %dma_sconfig, i32 0, i32 3
  %16 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %src_addr_width, align 4
  %cdata = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 1
  %17 = ptrtoint ptr %cdata to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cdata, align 4
  %max_dma_burst_bytes = getelementptr inbounds %struct.tegra_uart_chip_data, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %max_dma_burst_bytes to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_dma_burst_bytes, align 4
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %dma_sconfig, i32 0, i32 5
  %21 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %src_maxburst, align 4
  %rx_dma_chan = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 16
  %22 = ptrtoint ptr %rx_dma_chan to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call, ptr %rx_dma_chan, align 4
  %rx_dma_buf_virt = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 20
  %23 = ptrtoint ptr %rx_dma_buf_virt to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %rx_dma_buf_virt, align 4
  %24 = ptrtoint ptr %dma_phys to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_phys, align 4
  %rx_dma_buf_phys = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 18
  %26 = ptrtoint ptr %rx_dma_buf_phys to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %rx_dma_buf_phys, align 4
  br label %if.end42

if.else:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 30
  %27 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %state, align 4
  %xmit = getelementptr inbounds %struct.uart_state, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %xmit to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %xmit, align 4
  %call.i90 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %30) #8
  br i1 %call.i90, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.else
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !225

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %8) #8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 3
  %31 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %8, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %34, %if.end.i.i ], [ %32, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.70, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.71, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #8
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @debug_dma_map_single(ptr noundef %8, ptr noundef %30, i32 noundef 4096) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %35 = load ptr, ptr @mem_map, align 4
  %36 = ptrtoint ptr %30 to i32
  %sub.i = add i32 %36, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %35, i32 %shr.i
  %and.i = and i32 %36, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %8, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #8
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %37 = ptrtoint ptr %dma_phys to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %retval.0.i, ptr %dma_phys, align 4
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %39, i32 noundef %retval.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i91 = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i91, label %do.end32, label %if.end35

do.end32:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.65) #11
  tail call void @dma_release_channel(ptr noundef %call) #8
  br label %cleanup

if.end35:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %state, align 4
  %xmit38 = getelementptr inbounds %struct.uart_state, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %xmit38 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %xmit38, align 4
  %mapbase41 = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 43
  %46 = ptrtoint ptr %mapbase41 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mapbase41, align 4
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %dma_sconfig, i32 0, i32 2
  %48 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %dst_addr, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %dma_sconfig, i32 0, i32 4
  %49 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %dst_addr_width, align 4
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %dma_sconfig, i32 0, i32 6
  %50 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 16, ptr %dst_maxburst, align 4
  %tx_dma_chan = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 17
  %51 = ptrtoint ptr %tx_dma_chan to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call, ptr %tx_dma_chan, align 4
  %tx_dma_buf_virt = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 21
  %52 = ptrtoint ptr %tx_dma_buf_virt to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %45, ptr %tx_dma_buf_virt, align 4
  %53 = ptrtoint ptr %dma_phys to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dma_phys, align 4
  %tx_dma_buf_phys = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 19
  %55 = ptrtoint ptr %tx_dma_buf_phys to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %tx_dma_buf_phys, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.end35, %if.end17
  %56 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %57, i32 0, i32 44
  %58 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %59, null
  br i1 %tobool.not.i, label %if.end42.do.end47_crit_edge, label %dmaengine_slave_config.exit

if.end42.do.end47_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end47

dmaengine_slave_config.exit:                      ; preds = %if.end42
  %call.i92 = call i32 %59(ptr noundef %call, ptr noundef nonnull %dma_sconfig) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %cmp = icmp slt i32 %call.i92, 0
  br i1 %cmp, label %dmaengine_slave_config.exit.do.end47_crit_edge, label %dmaengine_slave_config.exit.cleanup_crit_edge

dmaengine_slave_config.exit.cleanup_crit_edge:    ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

dmaengine_slave_config.exit.do.end47_crit_edge:   ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end47

do.end47:                                         ; preds = %dmaengine_slave_config.exit.do.end47_crit_edge, %if.end42.do.end47_crit_edge
  %retval.0.i9498 = phi i32 [ %call.i92, %dmaengine_slave_config.exit.do.end47_crit_edge ], [ -38, %if.end42.do.end47_crit_edge ]
  %60 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.68, i32 noundef %retval.0.i9498) #11
  call fastcc void @tegra_uart_dma_channel_free(ptr noundef %tup, i1 noundef zeroext %dma_to_memory)
  br label %cleanup

cleanup:                                          ; preds = %do.end47, %dmaengine_slave_config.exit.cleanup_crit_edge, %do.end32, %do.end14, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %retval.0.i9498, %do.end47 ], [ -12, %do.end14 ], [ -12, %do.end32 ], [ 0, %dmaengine_slave_config.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dma_sconfig) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_phys) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_uart_isr(i32 noundef %irq, ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %data) #8
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 2
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 25
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %2 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %regshift.i, align 1
  %conv.i150 = zext i8 %3 to i32
  %shl.i151 = shl i32 2, %conv.i150
  %add.ptr.i152 = getelementptr i8, ptr %1, i32 %shl.i151
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i152) #8, !srcloc !220
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  %and153 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool.not154 = icmp eq i32 %and153, 0
  br i1 %tobool.not154, label %if.end19.lr.ph, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.end19.lr.ph:                                   ; preds = %entry
  %use_rx_pio26 = getelementptr inbounds %struct.tegra_uart_port, ptr %data, i32 0, i32 32
  %state.i129 = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 30
  %rx_in_progress39 = getelementptr inbounds %struct.tegra_uart_port, ptr %data, i32 0, i32 14
  %ier_shadow42 = getelementptr inbounds %struct.tegra_uart_port, ptr %data, i32 0, i32 8
  %tx_bytes.i = getelementptr inbounds %struct.tegra_uart_port, ptr %data, i32 0, i32 11
  %cdata.i.i = getelementptr inbounds %struct.tegra_uart_port, ptr %data, i32 0, i32 1
  %tx.i.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 31, i32 5
  %tx_in_progress.i = getelementptr inbounds %struct.tegra_uart_port, ptr %data, i32 0, i32 10
  %rng.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 31, i32 2
  %dsr.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 31, i32 1
  br label %if.end19

if.then:                                          ; preds = %sw.epilog
  %use_rx_pio = getelementptr inbounds %struct.tegra_uart_port, ptr %data, i32 0, i32 32
  %6 = ptrtoint ptr %use_rx_pio to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %use_rx_pio, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp ne i8 %7, 0
  %is_rx_int.0.off0.not = xor i1 %is_rx_int.1.off0, true
  %brmerge = select i1 %tobool6.not, i1 true, i1 %is_rx_int.0.off0.not
  br i1 %brmerge, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then
  %rts_active.i = getelementptr inbounds %struct.tegra_uart_port, ptr %data, i32 0, i32 9
  %8 = ptrtoint ptr %rts_active.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rts_active.i, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.then9.if.end.i_crit_edge, label %if.then.i

if.then9.if.end.i_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.then9
  %mcr_shadow.i.i = getelementptr inbounds %struct.tegra_uart_port, ptr %data, i32 0, i32 6
  %10 = ptrtoint ptr %mcr_shadow.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mcr_shadow.i.i, align 4
  %and.i.i = and i32 %11, -65
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %11)
  %cmp.not.i.i = icmp eq i32 %and.i.i, %11
  br i1 %cmp.not.i.i, label %if.then.i.if.end.i_crit_edge, label %if.then2.i.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then2.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #8
  %13 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i, align 4
  %15 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %regshift.i, align 1
  %conv.i.i.i = zext i8 %16 to i32
  %shl.i.i.i = shl i32 4, %conv.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 %shl.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %12) #8, !srcloc !223
  %17 = ptrtoint ptr %mcr_shadow.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and.i.i, ptr %mcr_shadow.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i.i, %if.then.i.if.end.i_crit_edge, %if.then9.if.end.i_crit_edge
  tail call fastcc void @tegra_uart_terminate_rx_dma(ptr noundef %data) #8
  %18 = ptrtoint ptr %rts_active.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rts_active.i, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool2.not.i = icmp eq i8 %19, 0
  br i1 %tobool2.not.i, label %if.end.i.tegra_uart_handle_rx_dma.exit_crit_edge, label %if.then3.i

if.end.i.tegra_uart_handle_rx_dma.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_uart_handle_rx_dma.exit

if.then3.i:                                       ; preds = %if.end.i
  %mcr_shadow.i9.i = getelementptr inbounds %struct.tegra_uart_port, ptr %data, i32 0, i32 6
  %20 = ptrtoint ptr %mcr_shadow.i9.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mcr_shadow.i9.i, align 4
  %mcr.0.i.i = or i32 %21, 64
  call void @__sanitizer_cov_trace_cmp4(i32 %mcr.0.i.i, i32 %21)
  %cmp.not.i11.i = icmp eq i32 %mcr.0.i.i, %21
  br i1 %cmp.not.i11.i, label %if.then3.i.tegra_uart_handle_rx_dma.exit_crit_edge, label %if.then2.i17.i

if.then3.i.tegra_uart_handle_rx_dma.exit_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_uart_handle_rx_dma.exit

if.then2.i17.i:                                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %22 = tail call i32 @llvm.bswap.i32(i32 %mcr.0.i.i) #8
  %23 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase.i, align 4
  %25 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %regshift.i, align 1
  %conv.i.i14.i = zext i8 %26 to i32
  %shl.i.i15.i = shl i32 4, %conv.i.i14.i
  %add.ptr.i.i16.i = getelementptr i8, ptr %24, i32 %shl.i.i15.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i16.i, i32 %22) #8, !srcloc !223
  %27 = ptrtoint ptr %mcr_shadow.i9.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mcr.0.i.i, ptr %mcr_shadow.i9.i, align 4
  br label %tegra_uart_handle_rx_dma.exit

tegra_uart_handle_rx_dma.exit:                    ; preds = %if.then2.i17.i, %if.then3.i.tegra_uart_handle_rx_dma.exit_crit_edge, %if.end.i.tegra_uart_handle_rx_dma.exit_crit_edge
  %rx_in_progress = getelementptr inbounds %struct.tegra_uart_port, ptr %data, i32 0, i32 14
  %28 = ptrtoint ptr %rx_in_progress to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool10.not = icmp eq i32 %29, 0
  br i1 %tobool10.not, label %tegra_uart_handle_rx_dma.exit.if.end17_crit_edge, label %if.then11

tegra_uart_handle_rx_dma.exit.if.end17_crit_edge: ; preds = %tegra_uart_handle_rx_dma.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then11:                                        ; preds = %tegra_uart_handle_rx_dma.exit
  call void @__sanitizer_cov_trace_pc() #10
  %ier_shadow = getelementptr inbounds %struct.tegra_uart_port, ptr %data, i32 0, i32 8
  %30 = ptrtoint ptr %ier_shadow to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ier_shadow, align 4
  %or = or i32 %31, 53
  store i32 %or, ptr %ier_shadow, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %32 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %33 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase.i, align 4
  %35 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %regshift.i, align 1
  %conv.i100 = zext i8 %36 to i32
  %shl.i101 = shl nuw i32 1, %conv.i100
  %add.ptr.i102 = getelementptr i8, ptr %34, i32 %shl.i101
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102, i32 %32) #8, !srcloc !223
  br label %if.end17

if.else:                                          ; preds = %if.then
  br i1 %is_rx_start.1.off0, label %if.then14, label %if.else.if.end17_crit_edge

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @tegra_uart_start_rx_dma(ptr noundef %data)
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.else.if.end17_crit_edge, %if.then11, %tegra_uart_handle_rx_dma.exit.if.end17_crit_edge, %entry.if.end17_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %data, i32 noundef %call2) #8
  ret i32 1

if.end19:                                         ; preds = %sw.epilog.if.end19_crit_edge, %if.end19.lr.ph
  %37 = phi i32 [ %5, %if.end19.lr.ph ], [ %128, %sw.epilog.if.end19_crit_edge ]
  %is_rx_int.0.off0156 = phi i1 [ false, %if.end19.lr.ph ], [ %is_rx_int.1.off0, %sw.epilog.if.end19_crit_edge ]
  %is_rx_start.0.off0155 = phi i1 [ false, %if.end19.lr.ph ], [ %is_rx_start.1.off0, %sw.epilog.if.end19_crit_edge ]
  %shr = lshr i32 %37, 1
  %and20 = and i32 %shr, 7
  %38 = zext i32 %and20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %and20, label %if.end19.unreachabledefault [
    i32 0, label %sw.bb
    i32 1, label %sw.bb21
    i32 4, label %if.end19.sw.bb25_crit_edge
    i32 6, label %if.end19.sw.bb25_crit_edge169
    i32 2, label %sw.bb35
    i32 3, label %sw.bb47
    i32 5, label %if.end19.sw.epilog_crit_edge
    i32 7, label %if.end19.sw.epilog_crit_edge170
  ]

if.end19.sw.epilog_crit_edge170:                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end19.sw.epilog_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end19.sw.bb25_crit_edge169:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb25

if.end19.sw.bb25_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb25

sw.bb:                                            ; preds = %if.end19
  %39 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase.i, align 4
  %41 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %regshift.i, align 1
  %conv.i.i = zext i8 %42 to i32
  %shl.i.i = shl i32 6, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %40, i32 %shl.i.i
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !220
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  %and.i = and i32 %44, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i103 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i103, label %sw.bb.sw.epilog_crit_edge, label %if.end.i104

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i104:                                      ; preds = %sw.bb
  %and2.i = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i104.if.end5.i_crit_edge, label %if.then4.i

if.end.i104.if.end5.i_crit_edge:                  ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %rng.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rng.i, align 4
  %inc.i = add i32 %46, 1
  store i32 %inc.i, ptr %rng.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i104.if.end5.i_crit_edge
  %and6.i = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end5.i.if.end12.i_crit_edge, label %if.then8.i

if.end5.i.if.end12.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %dsr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dsr.i, align 4
  %inc11.i = add i32 %48, 1
  store i32 %inc11.i, ptr %dsr.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then8.i, %if.end5.i.if.end12.i_crit_edge
  %and13.i = and i32 %44, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end12.i.if.end18.i_crit_edge, label %if.then15.i

if.end12.i.if.end18.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %and17.i = and i32 %44, 128
  tail call void @uart_handle_dcd_change(ptr noundef %data, i32 noundef %and17.i) #8
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then15.i, %if.end12.i.if.end18.i_crit_edge
  %and19.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.end18.i.sw.epilog_crit_edge, label %if.then21.i

if.end18.i.sw.epilog_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  %and23.i = and i32 %44, 16
  tail call void @uart_handle_cts_change(ptr noundef %data, i32 noundef %and23.i) #8
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end19
  %49 = ptrtoint ptr %ier_shadow42 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ier_shadow42, align 4
  %and23 = and i32 %50, -3
  store i32 %and23, ptr %ier_shadow42, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %51 = tail call i32 @llvm.bswap.i32(i32 %and23) #8
  %52 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %membase.i, align 4
  %54 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %regshift.i, align 1
  %conv.i107 = zext i8 %55 to i32
  %shl.i108 = shl nuw i32 1, %conv.i107
  %add.ptr.i109 = getelementptr i8, ptr %53, i32 %shl.i108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109, i32 %51) #8, !srcloc !223
  %56 = ptrtoint ptr %state.i129 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %state.i129, align 4
  %58 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tx_bytes.i, align 4
  %xmit1.i.i = getelementptr inbounds %struct.uart_state, ptr %57, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp35.i.i = icmp sgt i32 %59, 0
  br i1 %cmp35.i.i, label %do.body.lr.ph.i.i, label %sw.bb21.tegra_uart_fill_tx_fifo.exit.i_crit_edge

sw.bb21.tegra_uart_fill_tx_fifo.exit.i_crit_edge: ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_uart_fill_tx_fifo.exit.i

do.body.lr.ph.i.i:                                ; preds = %sw.bb21
  %head.i.i = getelementptr inbounds %struct.uart_state, ptr %57, i32 0, i32 2, i32 1
  %tail.i.i = getelementptr inbounds %struct.uart_state, ptr %57, i32 0, i32 2, i32 2
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end15.i.i.do.body.i.i_crit_edge, %do.body.lr.ph.i.i
  %i.036.i.i = phi i32 [ 0, %do.body.lr.ph.i.i ], [ %inc21.i.i, %if.end15.i.i.do.body.i.i_crit_edge ]
  %60 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %head.i.i, align 4
  %62 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tail.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp2.i.i = icmp eq i32 %61, %63
  br i1 %cmp2.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !227

do.body4.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/tty/serial/serial-tegra.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 492, 0\0A.popsection", ""() #8, !srcloc !228
  unreachable

do.end9.i.i:                                      ; preds = %do.body.i.i
  %64 = ptrtoint ptr %cdata.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cdata.i.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %65, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool10.not.i.i = icmp eq i8 %67, 0
  br i1 %tobool10.not.i.i, label %do.end9.i.i.if.end15.i.i_crit_edge, label %if.then11.i.i

do.end9.i.i.if.end15.i.i_crit_edge:               ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i.i

if.then11.i.i:                                    ; preds = %do.end9.i.i
  %68 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %membase.i, align 4
  %70 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %regshift.i, align 1
  %conv.i.i.i112 = zext i8 %71 to i32
  %shl.i.i.i113 = shl i32 5, %conv.i.i.i112
  %add.ptr.i.i.i114 = getelementptr i8, ptr %69, i32 %shl.i.i.i113
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i114) #8, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  %73 = and i32 %72, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool12.not.i.i = icmp eq i32 %73, 0
  br i1 %tobool12.not.i.i, label %if.then11.i.i.if.end15.i.i_crit_edge, label %if.then11.i.i.tegra_uart_fill_tx_fifo.exit.i_crit_edge

if.then11.i.i.tegra_uart_fill_tx_fifo.exit.i_crit_edge: ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_uart_fill_tx_fifo.exit.i

if.then11.i.i.if.end15.i.i_crit_edge:             ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then11.i.i.if.end15.i.i_crit_edge, %do.end9.i.i.if.end15.i.i_crit_edge
  %74 = ptrtoint ptr %xmit1.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %xmit1.i.i, align 4
  %76 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tail.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %75, i32 %77
  %78 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i115 = zext i8 %79 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %80 = shl nuw i32 %conv.i.i115, 24
  %81 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %80) #8, !srcloc !223
  %83 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tail.i.i, align 4
  %add.i.i = add i32 %84, 1
  %and18.i.i = and i32 %add.i.i, 4095
  store i32 %and18.i.i, ptr %tail.i.i, align 4
  %85 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tx.i.i, align 4
  %inc.i.i = add i32 %86, 1
  store i32 %inc.i.i, ptr %tx.i.i, align 4
  %inc21.i.i = add nuw nsw i32 %i.036.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc21.i.i, %59
  br i1 %exitcond.not.i.i, label %if.end15.i.i.tegra_uart_fill_tx_fifo.exit.i_crit_edge, label %if.end15.i.i.do.body.i.i_crit_edge

if.end15.i.i.do.body.i.i_crit_edge:               ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

if.end15.i.i.tegra_uart_fill_tx_fifo.exit.i_crit_edge: ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_uart_fill_tx_fifo.exit.i

tegra_uart_fill_tx_fifo.exit.i:                   ; preds = %if.end15.i.i.tegra_uart_fill_tx_fifo.exit.i_crit_edge, %if.then11.i.i.tegra_uart_fill_tx_fifo.exit.i_crit_edge, %sw.bb21.tegra_uart_fill_tx_fifo.exit.i_crit_edge
  %87 = ptrtoint ptr %tx_in_progress.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %tx_in_progress.i, align 4
  %head.i = getelementptr inbounds %struct.uart_state, ptr %57, i32 0, i32 2, i32 1
  %88 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %head.i, align 4
  %tail.i = getelementptr inbounds %struct.uart_state, ptr %57, i32 0, i32 2, i32 2
  %90 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %tail.i, align 4
  %sub.i = sub i32 %89, %91
  %and.i116 = and i32 %sub.i, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i116)
  %cmp.i = icmp eq i32 %and.i116, 0
  br i1 %cmp.i, label %if.then.i117, label %tegra_uart_fill_tx_fifo.exit.i.tegra_uart_handle_tx_pio.exit_crit_edge

tegra_uart_fill_tx_fifo.exit.i.tegra_uart_handle_tx_pio.exit_crit_edge: ; preds = %tegra_uart_fill_tx_fifo.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_uart_handle_tx_pio.exit

if.then.i117:                                     ; preds = %tegra_uart_fill_tx_fifo.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @uart_write_wakeup(ptr noundef %data) #8
  br label %tegra_uart_handle_tx_pio.exit

tegra_uart_handle_tx_pio.exit:                    ; preds = %if.then.i117, %tegra_uart_fill_tx_fifo.exit.i.tegra_uart_handle_tx_pio.exit_crit_edge
  tail call fastcc void @tegra_uart_start_next_tx(ptr noundef %data) #8
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end19.sw.bb25_crit_edge, %if.end19.sw.bb25_crit_edge169
  %92 = ptrtoint ptr %use_rx_pio26 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %use_rx_pio26, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool27.not = icmp eq i8 %93, 0
  br i1 %tobool27.not, label %if.then28, label %sw.bb25.if.else45_crit_edge

sw.bb25.if.else45_crit_edge:                      ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else45

if.then28:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #10
  %94 = ptrtoint ptr %rx_in_progress39 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rx_in_progress39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool30 = icmp ne i32 %95, 0
  %96 = ptrtoint ptr %ier_shadow42 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %ier_shadow42, align 4
  %and32 = and i32 %97, -54
  store i32 %and32, ptr %ier_shadow42, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %98 = tail call i32 @llvm.bswap.i32(i32 %and32) #8
  %99 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %membase.i, align 4
  %101 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %regshift.i, align 1
  %conv.i121 = zext i8 %102 to i32
  %shl.i122 = shl nuw i32 1, %conv.i121
  %add.ptr.i123 = getelementptr i8, ptr %100, i32 %shl.i122
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123, i32 %98) #8, !srcloc !223
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end19
  %103 = ptrtoint ptr %use_rx_pio26 to i32
  call void @__asan_load1_noabort(i32 %103)
  %.pr = load i8, ptr %use_rx_pio26, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool37.not = icmp eq i8 %.pr, 0
  br i1 %tobool37.not, label %if.then38, label %sw.bb35.if.else45_crit_edge

sw.bb35.if.else45_crit_edge:                      ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else45

if.then38:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #10
  %104 = ptrtoint ptr %rx_in_progress39 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %rx_in_progress39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool40 = icmp ne i32 %105, 0
  %106 = ptrtoint ptr %ier_shadow42 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %ier_shadow42, align 4
  %and43 = and i32 %107, -2
  store i32 %and43, ptr %ier_shadow42, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %108 = tail call i32 @llvm.bswap.i32(i32 %and43) #8
  %109 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %membase.i, align 4
  %111 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %regshift.i, align 1
  %conv.i126 = zext i8 %112 to i32
  %shl.i127 = shl nuw i32 1, %conv.i126
  %add.ptr.i128 = getelementptr i8, ptr %110, i32 %shl.i127
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 %108) #8, !srcloc !223
  br label %sw.epilog

if.else45:                                        ; preds = %sw.bb35.if.else45_crit_edge, %sw.bb25.if.else45_crit_edge
  %113 = ptrtoint ptr %state.i129 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %state.i129, align 4
  %call.i = tail call ptr @tty_port_tty_get(ptr noundef %114) #8
  %115 = ptrtoint ptr %state.i129 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %state.i129, align 4
  tail call fastcc void @tegra_uart_handle_rx_pio(ptr noundef %data, ptr noundef %116) #8
  %tobool.not.i130 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i130, label %if.else45.sw.epilog_crit_edge, label %if.then.i131

if.else45.sw.epilog_crit_edge:                    ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then.i131:                                     ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @tty_flip_buffer_push(ptr noundef %116) #8
  tail call void @tty_kref_put(ptr noundef nonnull %call.i) #8
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %117 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %membase.i, align 4
  %119 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %regshift.i, align 1
  %conv.i135 = zext i8 %120 to i32
  %shl.i136 = shl i32 5, %conv.i135
  %add.ptr.i137 = getelementptr i8, ptr %118, i32 %shl.i136
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i137) #8, !srcloc !220
  %122 = tail call i32 @llvm.bswap.i32(i32 %121) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  %call49 = tail call fastcc zeroext i8 @tegra_uart_decode_rx_error(ptr noundef %data, i32 noundef %122)
  br label %sw.epilog

if.end19.unreachabledefault:                      ; preds = %if.end19
  unreachable

sw.epilog:                                        ; preds = %sw.bb47, %if.then.i131, %if.else45.sw.epilog_crit_edge, %if.then38, %if.then28, %tegra_uart_handle_tx_pio.exit, %if.then21.i, %if.end18.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end19.sw.epilog_crit_edge, %if.end19.sw.epilog_crit_edge170
  %is_rx_start.1.off0 = phi i1 [ %is_rx_start.0.off0155, %if.end19.sw.epilog_crit_edge ], [ %is_rx_start.0.off0155, %if.end19.sw.epilog_crit_edge170 ], [ %is_rx_start.0.off0155, %sw.bb47 ], [ %tobool40, %if.then38 ], [ %is_rx_start.0.off0155, %if.then28 ], [ %is_rx_start.0.off0155, %tegra_uart_handle_tx_pio.exit ], [ %is_rx_start.0.off0155, %sw.bb.sw.epilog_crit_edge ], [ %is_rx_start.0.off0155, %if.end18.i.sw.epilog_crit_edge ], [ %is_rx_start.0.off0155, %if.then21.i ], [ %is_rx_start.0.off0155, %if.else45.sw.epilog_crit_edge ], [ %is_rx_start.0.off0155, %if.then.i131 ]
  %is_rx_int.1.off0 = phi i1 [ %is_rx_int.0.off0156, %if.end19.sw.epilog_crit_edge ], [ %is_rx_int.0.off0156, %if.end19.sw.epilog_crit_edge170 ], [ %is_rx_int.0.off0156, %sw.bb47 ], [ %is_rx_int.0.off0156, %if.then38 ], [ %tobool30, %if.then28 ], [ %is_rx_int.0.off0156, %tegra_uart_handle_tx_pio.exit ], [ %is_rx_int.0.off0156, %sw.bb.sw.epilog_crit_edge ], [ %is_rx_int.0.off0156, %if.end18.i.sw.epilog_crit_edge ], [ %is_rx_int.0.off0156, %if.then21.i ], [ %is_rx_int.0.off0156, %if.else45.sw.epilog_crit_edge ], [ %is_rx_int.0.off0156, %if.then.i131 ]
  %123 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %membase.i, align 4
  %125 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %126 to i32
  %shl.i = shl i32 2, %conv.i
  %add.ptr.i = getelementptr i8, ptr %124, i32 %shl.i
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !220
  %128 = tail call i32 @llvm.bswap.i32(i32 %127) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  %and = and i32 %128, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.epilog.if.end19_crit_edge, label %if.then

sw.epilog.if.end19_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_uart_dma_channel_free(ptr nocapture noundef %tup, i1 noundef zeroext %dma_to_memory) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %dma_to_memory, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %rx_dma_chan = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 16
  %0 = ptrtoint ptr %rx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_dma_chan, align 4
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_all.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 %5(ptr noundef %1) #8
  br label %dmaengine_terminate_all.exit

dmaengine_terminate_all.exit:                     ; preds = %if.then.i, %if.then.dmaengine_terminate_all.exit_crit_edge
  %6 = ptrtoint ptr %rx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_dma_chan, align 4
  tail call void @dma_release_channel(ptr noundef %7) #8
  %dev = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 45
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %rx_dma_buf_virt = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 20
  %10 = ptrtoint ptr %rx_dma_buf_virt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_dma_buf_virt, align 4
  %rx_dma_buf_phys = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 18
  %12 = ptrtoint ptr %rx_dma_buf_phys to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_dma_buf_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %9, i32 noundef 4096, ptr noundef %11, i32 noundef %13, i32 noundef 0) #8
  %14 = ptrtoint ptr %rx_dma_chan to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %rx_dma_chan, align 4
  %15 = ptrtoint ptr %rx_dma_buf_phys to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %rx_dma_buf_phys, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %tx_dma_chan = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 17
  %16 = ptrtoint ptr %tx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_dma_chan, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %device_terminate_all.i25 = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 47
  %20 = ptrtoint ptr %device_terminate_all.i25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device_terminate_all.i25, align 4
  %tobool.not.i26 = icmp eq ptr %21, null
  br i1 %tobool.not.i26, label %if.else.dmaengine_terminate_all.exit29_crit_edge, label %if.then.i28

if.else.dmaengine_terminate_all.exit29_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_all.exit29

if.then.i28:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call.i27 = tail call i32 %21(ptr noundef %17) #8
  br label %dmaengine_terminate_all.exit29

dmaengine_terminate_all.exit29:                   ; preds = %if.then.i28, %if.else.dmaengine_terminate_all.exit29_crit_edge
  %22 = ptrtoint ptr %tx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx_dma_chan, align 4
  tail call void @dma_release_channel(ptr noundef %23) #8
  %dev8 = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 45
  %24 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev8, align 4
  %tx_dma_buf_phys = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 19
  %26 = ptrtoint ptr %tx_dma_buf_phys to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_dma_buf_phys, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %25, i32 noundef %27, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #8
  %28 = ptrtoint ptr %tx_dma_chan to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %tx_dma_chan, align 4
  %29 = ptrtoint ptr %tx_dma_buf_phys to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %tx_dma_buf_phys, align 4
  %tx_dma_buf_virt = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 21
  br label %if.end

if.end:                                           ; preds = %dmaengine_terminate_all.exit29, %dmaengine_terminate_all.exit
  %tx_dma_buf_virt.sink = phi ptr [ %tx_dma_buf_virt, %dmaengine_terminate_all.exit29 ], [ %rx_dma_buf_virt, %dmaengine_terminate_all.exit ]
  %30 = ptrtoint ptr %tx_dma_buf_virt.sink to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %tx_dma_buf_virt.sink, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_set_baudrate(ptr noundef %tup, i32 noundef %baud) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %current_baud = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 4
  %0 = ptrtoint ptr %current_baud to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_baud, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %baud)
  %cmp = icmp eq i32 %1, %baud
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cdata = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 1
  %2 = ptrtoint ptr %cdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdata, align 4
  %support_clk_src_div = getelementptr inbounds %struct.tegra_uart_chip_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %support_clk_src_div to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %support_clk_src_div, align 2, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  %mul = shl i32 %baud, 4
  %required_rate = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 30
  %6 = ptrtoint ptr %required_rate to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mul, ptr %required_rate, align 4
  %n_adjustable_baud_rates = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 29
  %7 = ptrtoint ptr %n_adjustable_baud_rates to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n_adjustable_baud_rates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp18.i = icmp sgt i32 %8, 0
  br i1 %cmp18.i, label %for.body.lr.ph.i, label %if.then1.if.end4_crit_edge

if.then1.if.end4_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

for.body.lr.ph.i:                                 ; preds = %if.then1
  %baud_tolerance.i = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 28
  %9 = ptrtoint ptr %baud_tolerance.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %baud_tolerance.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.019.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.tegra_baud_tolerance, ptr %10, i32 %i.019.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %baud)
  %cmp1.not.i = icmp ugt i32 %12, %baud
  br i1 %cmp1.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %upper_range_baud.i = getelementptr %struct.tegra_baud_tolerance, ptr %10, i32 %i.019.i, i32 1
  %13 = ptrtoint ptr %upper_range_baud.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %upper_range_baud.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %baud)
  %cmp4.not.i = icmp ult i32 %14, %baud
  br i1 %cmp4.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %tolerance.i = getelementptr %struct.tegra_baud_tolerance, ptr %10, i32 %i.019.i, i32 2
  %15 = ptrtoint ptr %tolerance.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tolerance.i, align 4
  %mul.i = mul i32 %16, %mul
  %div.i = sdiv i32 %mul.i, 10000
  %add.i = add i32 %div.i, %mul
  br label %if.end4

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %8
  br i1 %exitcond.not.i, label %for.inc.i.if.end4_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.end4_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.end4:                                          ; preds = %for.inc.i.if.end4_crit_edge, %if.then.i, %if.then1.if.end4_crit_edge
  %rate.0 = phi i32 [ %mul, %if.then1.if.end4_crit_edge ], [ %add.i, %if.then.i ], [ %mul, %for.inc.i.if.end4_crit_edge ]
  %uart_clk = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 2
  %17 = ptrtoint ptr %uart_clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %uart_clk, align 4
  %call5 = tail call i32 @clk_set_rate(ptr noundef %18, i32 noundef %rate.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 45
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.77, i32 noundef %rate.0) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %21 = ptrtoint ptr %uart_clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %uart_clk, align 4
  %call10 = tail call i32 @clk_get_rate(ptr noundef %22) #8
  %configured_rate = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 31
  %23 = ptrtoint ptr %configured_rate to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call10, ptr %configured_rate, align 4
  %24 = ptrtoint ptr %required_rate to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %required_rate, align 4
  %sub.i = sub i32 %call10, %25
  %mul.i78 = mul i32 %sub.i, 10000
  %div.i79 = sdiv i32 %mul.i78, %25
  %26 = ptrtoint ptr %cdata to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cdata, align 4
  %error_tolerance_low_range.i = getelementptr inbounds %struct.tegra_uart_chip_data, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %error_tolerance_low_range.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %error_tolerance_low_range.i, align 4
  %mul2.i = mul i32 %29, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i79, i32 %mul2.i)
  %cmp.i = icmp slt i32 %div.i79, %mul2.i
  br i1 %cmp.i, label %if.end8.tegra_check_rate_in_range.exit.thread_crit_edge, label %lor.lhs.false.i

if.end8.tegra_check_rate_in_range.exit.thread_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_check_rate_in_range.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end8
  %error_tolerance_high_range.i = getelementptr inbounds %struct.tegra_uart_chip_data, ptr %27, i32 0, i32 7
  %30 = ptrtoint ptr %error_tolerance_high_range.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %error_tolerance_high_range.i, align 4
  %mul4.i = mul i32 %31, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i79, i32 %mul4.i)
  %cmp5.i = icmp sgt i32 %div.i79, %mul4.i
  br i1 %cmp5.i, label %lor.lhs.false.i.tegra_check_rate_in_range.exit.thread_crit_edge, label %lor.lhs.false.i.do.body21_crit_edge

lor.lhs.false.i.do.body21_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body21

lor.lhs.false.i.tegra_check_rate_in_range.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_check_rate_in_range.exit.thread

tegra_check_rate_in_range.exit.thread:            ; preds = %lor.lhs.false.i.tegra_check_rate_in_range.exit.thread_crit_edge, %if.end8.tegra_check_rate_in_range.exit.thread_crit_edge
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 45
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.79, i32 noundef %div.i79) #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %uart_clk15 = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 2
  %34 = ptrtoint ptr %uart_clk15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %uart_clk15, align 4
  %call16 = tail call i32 @clk_get_rate(ptr noundef %35) #8
  %mul17 = shl i32 %baud, 4
  %div77 = lshr exact i32 %mul17, 1
  %add = add i32 %call16, %div77
  %div18 = udiv i32 %add, %mul17
  br label %do.body21

do.body21:                                        ; preds = %if.else, %lor.lhs.false.i.do.body21_crit_edge
  %divisor.0 = phi i32 [ %div18, %if.else ], [ 1, %lor.lhs.false.i.do.body21_crit_edge ]
  %call26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tup) #8
  %lcr_shadow = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 7
  %36 = ptrtoint ptr %lcr_shadow to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %lcr_shadow, align 4
  %or = or i32 %37, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %38 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 2
  %39 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase.i, align 4
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 25
  %41 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %42 to i32
  %shl.i = shl i32 3, %conv.i
  %add.ptr.i = getelementptr i8, ptr %40, i32 %shl.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %38) #8, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %and = shl i32 %divisor.0, 24
  %43 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %and) #8, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %45 = shl i32 %divisor.0, 16
  %and31 = and i32 %45, -16777216
  %46 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %membase.i, align 4
  %48 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %regshift.i, align 1
  %conv.i86 = zext i8 %49 to i32
  %shl.i87 = shl nuw i32 1, %conv.i86
  %add.ptr.i88 = getelementptr i8, ptr %47, i32 %shl.i87
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88, i32 %and31) #8, !srcloc !223
  %and32 = and i32 %37, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %50 = tail call i32 @llvm.bswap.i32(i32 %and32) #8
  %51 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %membase.i, align 4
  %53 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %regshift.i, align 1
  %conv.i91 = zext i8 %54 to i32
  %shl.i92 = shl i32 3, %conv.i91
  %add.ptr.i93 = getelementptr i8, ptr %52, i32 %shl.i92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93, i32 %50) #8, !srcloc !223
  %55 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %membase.i, align 4
  %57 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %regshift.i, align 1
  %conv.i96 = zext i8 %58 to i32
  %shl.i97 = shl i32 7, %conv.i96
  %add.ptr.i98 = getelementptr i8, ptr %56, i32 %shl.i97
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i98) #8, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tup, i32 noundef %call26) #8
  %60 = ptrtoint ptr %current_baud to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %baud, ptr %current_baud, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %baud)
  %tobool.not.i = icmp eq i32 %baud, 0
  br i1 %tobool.not.i, label %do.body21.cleanup_crit_edge, label %cond.false22.i

do.body21.cleanup_crit_edge:                      ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.false22.i:                                   ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #10
  %add.i99 = add i32 %baud, -1
  %symb_bit.i = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 15
  %61 = ptrtoint ptr %symb_bit.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %symb_bit.i, align 4
  %mul1.i = mul i32 %62, 2000000
  %sub.i100 = add i32 %add.i99, %mul1.i
  %div.i101 = udiv i32 %sub.i100, %baud
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %63(i32 noundef %div.i101) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.false22.i, %do.body21.cleanup_crit_edge, %tegra_check_rate_in_range.exit.thread, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ -5, %tegra_check_rate_in_range.exit.thread ], [ 0, %do.body21.cleanup_crit_edge ], [ 0, %cond.false22.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_uart_start_rx_dma(ptr noundef %tup) unnamed_addr #3 align 64 {
entry:
  %sg.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_dma_active = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 34
  %0 = ptrtoint ptr %rx_dma_active to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rx_dma_active, align 2, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_dma_chan = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 16
  %2 = ptrtoint ptr %rx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_dma_chan, align 4
  %rx_dma_buf_phys = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 18
  %4 = ptrtoint ptr %rx_dma_buf_phys to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_dma_buf_phys, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #8
  %6 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 3
  %7 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 4
  %8 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i, i32 noundef 1) #8
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %5, ptr %6, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4096, ptr %7, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.dmaengine_prep_slave_single.exit.thread_crit_edge, label %lor.lhs.false.i

if.end.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_slave_single.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %tobool1.not.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_slave_single.exit.thread

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %12, i32 0, i32 39
  %13 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %14, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge, label %dmaengine_prep_slave_single.exit

lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_slave_single.exit.thread

dmaengine_prep_slave_single.exit.thread:          ; preds = %lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge, %lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge, %if.end.dmaengine_prep_slave_single.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #8
  %rx_dma_desc3 = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 23
  %15 = ptrtoint ptr %rx_dma_desc3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %rx_dma_desc3, align 4
  br label %do.end

dmaengine_prep_slave_single.exit:                 ; preds = %lor.lhs.false2.i
  %call.i = call ptr %14(ptr noundef nonnull %3, ptr noundef nonnull %sg.i, i32 noundef 1, i32 noundef 2, i32 noundef 1, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #8
  %rx_dma_desc = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 23
  %16 = ptrtoint ptr %rx_dma_desc to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %rx_dma_desc, align 4
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %dmaengine_prep_slave_single.exit.do.end_crit_edge, label %if.end4

dmaengine_prep_slave_single.exit.do.end_crit_edge: ; preds = %dmaengine_prep_slave_single.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %dmaengine_prep_slave_single.exit.do.end_crit_edge, %dmaengine_prep_slave_single.exit.thread
  %dev = getelementptr inbounds %struct.uart_port, ptr %tup, i32 0, i32 45
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.81) #11
  br label %cleanup

if.end4:                                          ; preds = %dmaengine_prep_slave_single.exit
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %rx_dma_active to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %rx_dma_active, align 2
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 6
  %20 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @tegra_uart_rx_dma_complete, ptr %callback, align 4
  %21 = ptrtoint ptr %rx_dma_desc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_dma_desc, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %tup, ptr %callback_param, align 4
  %rx_bytes_requested = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 27
  %24 = ptrtoint ptr %rx_bytes_requested to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4096, ptr %rx_bytes_requested, align 4
  %25 = load ptr, ptr %rx_dma_desc, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tx_submit.i, align 4
  %call.i1 = call i32 %27(ptr noundef %25) #8
  %rx_cookie = getelementptr inbounds %struct.tegra_uart_port, ptr %tup, i32 0, i32 25
  %28 = ptrtoint ptr %rx_cookie to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call.i1, ptr %rx_cookie, align 4
  %29 = ptrtoint ptr %rx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rx_dma_chan, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %32, i32 0, i32 50
  %33 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device_issue_pending.i, align 4
  call void %34(ptr noundef %30) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_uart_rx_dma_complete(ptr noundef %args) #3 align 64 {
entry:
  %state = alloca %struct.dma_tx_state, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state) #8
  %0 = call ptr @memset(ptr %state, i32 255, i32 16)
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %args) #8
  %rx_dma_chan = getelementptr inbounds %struct.tegra_uart_port, ptr %args, i32 0, i32 16
  %1 = ptrtoint ptr %rx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rx_dma_chan, align 4
  %rx_cookie = getelementptr inbounds %struct.tegra_uart_port, ptr %args, i32 0, i32 25
  %3 = ptrtoint ptr %rx_cookie to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_cookie, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %6, i32 0, i32 49
  %7 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device_tx_status.i, align 4
  %call.i = call i32 %8(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp6 = icmp eq i32 %call.i, 1
  br i1 %cmp6, label %do.body8, label %if.end17

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_uart_rx_dma_complete.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra_uart_rx_dma_complete, %if.then13)) #8
          to label %done [label %if.then13], !srcloc !226

if.then13:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.uart_port, ptr %args, i32 0, i32 45
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_uart_rx_dma_complete.__UNIQUE_ID_ddebug254, ptr noundef %10, ptr noundef nonnull @.str.84) #8
  br label %done

if.end17:                                         ; preds = %entry
  %rts_active = getelementptr inbounds %struct.tegra_uart_port, ptr %args, i32 0, i32 9
  %11 = ptrtoint ptr %rts_active to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rts_active, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool18.not = icmp eq i8 %12, 0
  br i1 %tobool18.not, label %if.end17.if.end20_crit_edge, label %if.then19

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then19:                                        ; preds = %if.end17
  %mcr_shadow.i = getelementptr inbounds %struct.tegra_uart_port, ptr %args, i32 0, i32 6
  %13 = ptrtoint ptr %mcr_shadow.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mcr_shadow.i, align 4
  %and.i = and i32 %14, -65
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %14)
  %cmp.not.i = icmp eq i32 %and.i, %14
  br i1 %cmp.not.i, label %if.then19.if.end20_crit_edge, label %if.then2.i

if.then19.if.end20_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then2.i:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  call void @arm_heavy_mb() #8
  %15 = call i32 @llvm.bswap.i32(i32 %and.i) #8
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %args, i32 0, i32 2
  %16 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i.i, align 4
  %regshift.i.i = getelementptr inbounds %struct.uart_port, ptr %args, i32 0, i32 25
  %18 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %regshift.i.i, align 1
  %conv.i.i = zext i8 %19 to i32
  %shl.i.i = shl i32 4, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %shl.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %15) #8, !srcloc !223
  %20 = ptrtoint ptr %mcr_shadow.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and.i, ptr %mcr_shadow.i, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then2.i, %if.then19.if.end20_crit_edge, %if.end17.if.end20_crit_edge
  %rx_dma_active = getelementptr inbounds %struct.tegra_uart_port, ptr %args, i32 0, i32 34
  %21 = ptrtoint ptr %rx_dma_active to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %rx_dma_active, align 2
  call fastcc void @tegra_uart_rx_buffer_push(ptr noundef %args, i32 noundef 0)
  call fastcc void @tegra_uart_start_rx_dma(ptr noundef %args)
  %22 = ptrtoint ptr %rts_active to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %rts_active, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool23.not = icmp eq i8 %23, 0
  br i1 %tobool23.not, label %if.end20.done_crit_edge, label %if.then24

if.end20.done_crit_edge:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.then24:                                        ; preds = %if.end20
  %mcr_shadow.i38 = getelementptr inbounds %struct.tegra_uart_port, ptr %args, i32 0, i32 6
  %24 = ptrtoint ptr %mcr_shadow.i38 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mcr_shadow.i38, align 4
  %mcr.0.i = or i32 %25, 64
  call void @__sanitizer_cov_trace_cmp4(i32 %mcr.0.i, i32 %25)
  %cmp.not.i40 = icmp eq i32 %mcr.0.i, %25
  br i1 %cmp.not.i40, label %if.then24.done_crit_edge, label %if.then2.i46

if.then24.done_crit_edge:                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.then2.i46:                                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  call void @arm_heavy_mb() #8
  %26 = call i32 @llvm.bswap.i32(i32 %mcr.0.i) #8
  %membase.i.i41 = getelementptr inbounds %struct.uart_port, ptr %args, i32 0, i32 2
  %27 = ptrtoint ptr %membase.i.i41 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase.i.i41, align 4
  %regshift.i.i42 = getelementptr inbounds %struct.uart_port, ptr %args, i32 0, i32 25
  %29 = ptrtoint ptr %regshift.i.i42 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %regshift.i.i42, align 1
  %conv.i.i43 = zext i8 %30 to i32
  %shl.i.i44 = shl i32 4, %conv.i.i43
  %add.ptr.i.i45 = getelementptr i8, ptr %28, i32 %shl.i.i44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i45, i32 %26) #8, !srcloc !223
  %31 = ptrtoint ptr %mcr_shadow.i38 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mcr.0.i, ptr %mcr_shadow.i38, align 4
  br label %done

done:                                             ; preds = %if.then2.i46, %if.then24.done_crit_edge, %if.end20.done_crit_edge, %if.then13, %do.body8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %args, i32 noundef %call2) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_handle_dcd_change(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_handle_cts_change(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_uart_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @uart_suspend_port(ptr noundef nonnull @tegra_uart_driver, ptr noundef %1) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_uart_resume(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @uart_resume_port(ptr noundef nonnull @tegra_uart_driver, ptr noundef %1) #8
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_suspend_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_resume_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !61, !63, !65, !66, !67, !68, !70, !72, !73, !74, !76, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !145, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158, !159, !161, !162, !163, !164, !166, !167, !168, !170, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !204, !205, !206, !208, !209}
!llvm.module.flags = !{!210, !211, !212, !213, !214, !215, !216, !217}
!llvm.ident = !{!218}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1707, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @tegra_uart_exit._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @tegra_uart_exit._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_serial_tegra__257_1712_tegra_uart_init6, !7, !"__initcall__kmod_serial_tegra__257_1712_tegra_uart_init6", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1712, i32 1}
!8 = !{ptr @__exitcall_tegra_uart_exit, !9, !"__exitcall_tegra_uart_exit", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1713, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias258, !11, !"__UNIQUE_ID_alias258", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1715, i32 1}
!12 = !{ptr @__UNIQUE_ID_description259, !13, !"__UNIQUE_ID_description259", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1716, i32 1}
!14 = !{ptr @__UNIQUE_ID_author260, !15, !"__UNIQUE_ID_author260", i1 false, i1 false}
!15 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1717, i32 1}
!16 = !{ptr @__UNIQUE_ID_file261, !17, !"__UNIQUE_ID_file261", i1 false, i1 false}
!17 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1718, i32 1}
!18 = !{ptr @__UNIQUE_ID_license262, !17, !"__UNIQUE_ID_license262", i1 false, i1 false}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1668, i32 11}
!21 = !{ptr @tegra_uart_platform_driver, !22, !"tegra_uart_platform_driver", i1 false, i1 false}
!22 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1664, i32 31}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1574, i32 3}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @tegra_uart_probe._entry, !24, !"_entry", i1 false, i1 false}
!29 = !{ptr @tegra_uart_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1580, i32 3}
!32 = !{ptr @tegra_uart_probe._entry.8, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @tegra_uart_probe._entry_ptr.10, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1598, i32 3}
!36 = !{ptr @tegra_uart_probe._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @tegra_uart_probe._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1609, i32 3}
!40 = !{ptr @tegra_uart_probe._entry.14, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @tegra_uart_probe._entry_ptr.16, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1613, i32 58}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1615, i32 3}
!46 = !{ptr @tegra_uart_probe._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @tegra_uart_probe._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1627, i32 3}
!50 = !{ptr @tegra_uart_probe._entry.21, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @tegra_uart_probe._entry_ptr.23, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1444, i32 3}
!54 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @tegra_uart_parse_dt._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @tegra_uart_parse_dt._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1450, i32 6}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1452, i32 39}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1452, i32 52}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1455, i32 3}
!65 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @tegra_uart_parse_dt._entry.29, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @tegra_uart_parse_dt._entry_ptr.32, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1457, i32 52}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1460, i32 3}
!72 = !{ptr @tegra_uart_parse_dt._entry.34, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @tegra_uart_parse_dt._entry_ptr.36, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1463, i32 46}
!76 = !{ptr @tegra_uart_ops, !77, !"tegra_uart_ops", i1 false, i1 false}
!77 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1405, i32 30}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/tty/serial/serial-tegra.c", i32 552, i32 3}
!80 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @tegra_uart_start_tx_dma._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @tegra_uart_start_tx_dma._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/tty/serial/serial-tegra.c", i32 692, i32 3}
!85 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @tegra_uart_copy_rx_to_tty._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @tegra_uart_copy_rx_to_tty._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/tty/serial/serial-tegra.c", i32 447, i32 4}
!90 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @tegra_uart_decode_rx_error.__UNIQUE_ID_ddebug250, !89, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/tty/serial/serial-tegra.c", i32 452, i32 4}
!95 = !{ptr @tegra_uart_decode_rx_error.__UNIQUE_ID_ddebug251, !94, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/tty/serial/serial-tegra.c", i32 456, i32 4}
!98 = !{ptr @tegra_uart_decode_rx_error.__UNIQUE_ID_ddebug252, !97, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/tty/serial/serial-tegra.c", i32 468, i32 4}
!101 = !{ptr @tegra_uart_decode_rx_error.__UNIQUE_ID_ddebug253, !100, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1204, i32 4}
!104 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @tegra_uart_startup._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @tegra_uart_startup._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1213, i32 4}
!109 = !{ptr @tegra_uart_startup._entry.50, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @tegra_uart_startup._entry_ptr.52, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1221, i32 3}
!113 = !{ptr @tegra_uart_startup._entry.53, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @tegra_uart_startup._entry_ptr.55, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1228, i32 3}
!117 = !{ptr @tegra_uart_startup._entry.56, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @tegra_uart_startup._entry_ptr.58, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1143, i32 3}
!121 = !{ptr @.str.60, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @tegra_uart_dma_channel_allocate._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @tegra_uart_dma_channel_allocate._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1153, i32 4}
!126 = !{ptr @tegra_uart_dma_channel_allocate._entry.61, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @tegra_uart_dma_channel_allocate._entry_ptr.63, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.65, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1172, i32 4}
!130 = !{ptr @tegra_uart_dma_channel_allocate._entry.64, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @tegra_uart_dma_channel_allocate._entry_ptr.66, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.68, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1187, i32 3}
!134 = !{ptr @tegra_uart_dma_channel_allocate._entry.67, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @tegra_uart_dma_channel_allocate._entry_ptr.69, !133, !"_entry_ptr", i1 false, i1 false}
!136 = distinct !{null, !137, !"__already_done", i1 false, i1 false}
!137 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!138 = !{ptr @.str.70, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.71, !137, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.72, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1049, i32 4}
!142 = !{ptr @.str.73, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @tegra_uart_hw_init._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @tegra_uart_hw_init._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.75, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1070, i32 3}
!147 = !{ptr @tegra_uart_hw_init._entry.74, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @tegra_uart_hw_init._entry_ptr.76, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.77, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/tty/serial/serial-tegra.c", i32 401, i32 4}
!151 = !{ptr @.str.78, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @tegra_set_baudrate._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @tegra_set_baudrate._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.79, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/tty/serial/serial-tegra.c", i32 373, i32 3}
!156 = !{ptr @.str.80, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @tegra_check_rate_in_range._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @tegra_check_rate_in_range._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.81, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/tty/serial/serial-tegra.c", i32 797, i32 3}
!161 = !{ptr @.str.82, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @tegra_uart_start_rx_dma._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @tegra_uart_start_rx_dma._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.83, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/tty/serial/serial-tegra.c", i32 738, i32 3}
!166 = !{ptr @.str.84, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @tegra_uart_rx_dma_complete.__UNIQUE_ID_ddebug254, !165, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!168 = !{ptr @.str.85, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/tty/serial/serial-tegra.c", i32 953, i32 4}
!170 = !{ptr @.str.86, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @tegra_uart_hw_deinit._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @tegra_uart_hw_deinit._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.88, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/tty/serial/serial-tegra.c", i32 966, i32 6}
!175 = !{ptr @tegra_uart_hw_deinit._entry.87, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @tegra_uart_hw_deinit._entry_ptr.89, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.90, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1359, i32 3}
!179 = !{ptr @tegra_uart_set_termios._entry, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @tegra_uart_set_termios._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.91, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1402, i32 9}
!183 = !{ptr @tegra_uart_of_match, !184, !"tegra_uart_of_match", i1 false, i1 false}
!184 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1546, i32 34}
!185 = !{ptr @tegra30_uart_chip_data, !186, !"tegra30_uart_chip_data", i1 false, i1 false}
!186 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1513, i32 36}
!187 = !{ptr @tegra20_uart_chip_data, !188, !"tegra20_uart_chip_data", i1 false, i1 false}
!188 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1502, i32 36}
!189 = !{ptr @tegra186_uart_chip_data, !190, !"tegra186_uart_chip_data", i1 false, i1 false}
!190 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1524, i32 36}
!191 = !{ptr @tegra194_uart_chip_data, !192, !"tegra194_uart_chip_data", i1 false, i1 false}
!192 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1535, i32 36}
!193 = !{ptr @tegra_uart_pm_ops, !194, !"tegra_uart_pm_ops", i1 false, i1 false}
!194 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1660, i32 32}
!195 = !{ptr @.str.92, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1425, i32 17}
!197 = !{ptr @.str.93, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1426, i32 14}
!199 = !{ptr @tegra_uart_driver, !200, !"tegra_uart_driver", i1 false, i1 false}
!200 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1423, i32 27}
!201 = !{ptr @.str.94, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1691, i32 3}
!203 = !{ptr @.str.95, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @tegra_uart_init._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @tegra_uart_init._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.97, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/tty/serial/serial-tegra.c", i32 1698, i32 3}
!208 = !{ptr @tegra_uart_init._entry.96, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @tegra_uart_init._entry_ptr.98, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{i32 1, !"wchar_size", i32 2}
!211 = !{i32 1, !"min_enum_size", i32 4}
!212 = !{i32 8, !"branch-target-enforcement", i32 0}
!213 = !{i32 8, !"sign-return-address", i32 0}
!214 = !{i32 8, !"sign-return-address-all", i32 0}
!215 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!216 = !{i32 7, !"uwtable", i32 1}
!217 = !{i32 7, !"frame-pointer", i32 2}
!218 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!219 = !{!"auto-init"}
!220 = !{i64 6384332}
!221 = !{i64 2154938237}
!222 = !{i64 2154938652}
!223 = !{i64 6383914}
!224 = !{i8 0, i8 2}
!225 = !{!"branch_weights", i32 2000, i32 1}
!226 = !{i64 2148764899, i64 2148764904, i64 2148764917, i64 2148764961, i64 2148764995, i64 2148765016}
!227 = !{!"branch_weights", i32 1, i32 2000}
!228 = !{i64 2154958076, i64 2154958574, i64 2154958113, i64 2154958169, i64 2154958203, i64 2154958227, i64 2154958268, i64 2154958289, i64 2154958317, i64 2154958351}
