; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/xilinx_uartps.c_pt.bc'
source_filename = "../drivers/tty/serial/xilinx_uartps.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.cdns_platform_data = type { i32 }
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
%struct.cdns_uart = type { ptr, ptr, ptr, ptr, i32, %struct.notifier_block, i32, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.clk_notifier_data = type { ptr, i32, i32 }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.35, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.35 = type { ptr }
%struct.llist_head = type { ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.36, %struct.anon.37, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.36 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.37 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }

@__param_str_rx_trigger_level = internal constant [31 x i8] c"xilinx_uartps.rx_trigger_level\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@rx_trigger_level = internal global { i32, [28 x i8] } { i32 56, [28 x i8] zeroinitializer }, align 32
@__param_rx_trigger_level = internal constant %struct.kernel_param { ptr @__param_str_rx_trigger_level, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @rx_trigger_level } }, section "__param", align 4
@__UNIQUE_ID_rx_trigger_leveltype228 = internal constant [45 x i8] c"xilinx_uartps.parmtype=rx_trigger_level:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_rx_trigger_level229 = internal constant [65 x i8] c"xilinx_uartps.parm=rx_trigger_level:Rx trigger level, 1-63 bytes\00", section ".modinfo", align 1
@__param_str_rx_timeout = internal constant [25 x i8] c"xilinx_uartps.rx_timeout\00", align 1
@rx_timeout = internal global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@__param_rx_timeout = internal constant %struct.kernel_param { ptr @__param_str_rx_timeout, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @rx_timeout } }, section "__param", align 4
@__UNIQUE_ID_rx_timeouttype230 = internal constant [39 x i8] c"xilinx_uartps.parmtype=rx_timeout:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_rx_timeout231 = internal constant [48 x i8] c"xilinx_uartps.parm=rx_timeout:Rx timeout, 1-255\00", section ".modinfo", align 1
@__UNIQUE_ID___earlycon_cdns232 = internal constant %struct.earlycon_id { [15 x i8] c"cdns\00\00\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"xlnx,xuartps\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cdns_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_cdns233 = internal constant %struct.earlycon_id { [15 x i8] c"cdns\00\00\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"cdns,uart-r1p8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cdns_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_cdns234 = internal constant %struct.earlycon_id { [15 x i8] c"cdns\00\00\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"cdns,uart-r1p12\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cdns_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_cdns235 = internal constant %struct.earlycon_id { [15 x i8] c"cdns\00\00\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"xlnx,zynqmp-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cdns_early_console_setup }, section "__earlycon_table", align 4
@cdns_uart_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cdns_uart_probe, ptr @cdns_uart_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @cdns_uart_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cdns_uart_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_xilinx_uartps__237_1690_cdns_uart_init3 = internal global ptr @cdns_uart_init, section ".initcall3.init", align 4
@__exitcall_cdns_uart_exit = internal global ptr @cdns_uart_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description238 = internal constant [50 x i8] c"xilinx_uartps.description=Driver for Cadence UART\00", section ".modinfo", align 1
@__UNIQUE_ID_author239 = internal constant [33 x i8] c"xilinx_uartps.author=Xilinx Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [52 x i8] c"xilinx_uartps.file=drivers/tty/serial/xilinx_uartps\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [26 x i8] c"xilinx_uartps.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"xuartps\00", [24 x i8] zeroinitializer }, align 32
@cdns_uart_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,xuartps\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,uart-r1p8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,uart-r1p12\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @zynqmp_uart_def }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,zynqmp-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @zynqmp_uart_def }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@cdns_uart_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @cdns_uart_suspend, ptr @cdns_uart_resume, ptr @cdns_uart_suspend, ptr @cdns_uart_resume, ptr @cdns_uart_suspend, ptr @cdns_uart_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cdns_runtime_suspend, ptr @cdns_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@cdns_uart_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1456, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Cannot get uart_port structure\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cdns_uart_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/tty/serial/xilinx_uartps.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cdns_uart_probe._entry_ptr = internal global ptr @cdns_uart_probe._entry, section ".printk_index", align 4
@cdns_uart_uart_driver = internal global { %struct.uart_driver, [60 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ttyPS\00", [26 x i8] zeroinitializer }, align 32
@cdns_uart_console = internal global { %struct.console, [60 x i8] } { %struct.console { [16 x i8] c"ttyPS\00\00\00\00\00\00\00\00\00\00\00", ptr @cdns_uart_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @cdns_uart_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @cdns_uart_uart_driver, ptr null }, [60 x i8] zeroinitializer }, align 32
@cdns_uart_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1473, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to register driver\0A\00", [37 x i8] zeroinitializer }, align 32
@cdns_uart_probe._entry_ptr.10 = internal global ptr @cdns_uart_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aper_clk\00", [23 x i8] zeroinitializer }, align 32
@cdns_uart_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 1499, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"clock name 'aper_clk' is deprecated.\0A\00", [58 x i8] zeroinitializer }, align 32
@cdns_uart_probe._entry_ptr.15 = internal global ptr @cdns_uart_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ref_clk\00", [24 x i8] zeroinitializer }, align 32
@cdns_uart_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 1514, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"clock name 'ref_clk' is deprecated.\0A\00", [59 x i8] zeroinitializer }, align 32
@cdns_uart_probe._entry_ptr.20 = internal global ptr @cdns_uart_probe._entry.18, section ".printk_index", align 4
@cdns_uart_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 1519, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to enable pclk clock.\0A\00", [34 x i8] zeroinitializer }, align 32
@cdns_uart_probe._entry_ptr.23 = internal global ptr @cdns_uart_probe._entry.21, section ".printk_index", align 4
@cdns_uart_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 1524, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to enable device clock.\0A\00", [32 x i8] zeroinitializer }, align 32
@cdns_uart_probe._entry_ptr.26 = internal global ptr @cdns_uart_probe._entry.24, section ".printk_index", align 4
@cdns_uart_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.4, i32 1545, ptr @.str.29, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unable to register clock notifier.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cdns_uart_probe._entry_ptr.30 = internal global ptr @cdns_uart_probe._entry.27, section ".printk_index", align 4
@cdns_uart_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&port->lock\00", [20 x i8] zeroinitializer }, align 32
@cdns_uart_ops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @cdns_uart_tx_empty, ptr @cdns_uart_set_mctrl, ptr @cdns_uart_get_mctrl, ptr @cdns_uart_stop_tx, ptr @cdns_uart_start_tx, ptr null, ptr null, ptr null, ptr @cdns_uart_stop_rx, ptr null, ptr @cdns_uart_break_ctl, ptr @cdns_uart_startup, ptr @cdns_uart_shutdown, ptr null, ptr @cdns_uart_set_termios, ptr null, ptr @cdns_uart_pm, ptr @cdns_uart_type, ptr @cdns_uart_release_port, ptr @cdns_uart_request_port, ptr @cdns_uart_config_port, ptr @cdns_uart_verify_port, ptr null, ptr null, ptr @cdns_uart_poll_put_char, ptr @cdns_uart_poll_get_char }, [56 x i8] zeroinitializer }, align 32
@console_port = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@cdns_uart_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.3, ptr @.str.4, i32 1593, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"uart_add_one_port() failed; err=%i\0A\00", [60 x i8] zeroinitializer }, align 32
@cdns_uart_probe._entry_ptr.34 = internal global ptr @cdns_uart_probe._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cts-override\00", [19 x i8] zeroinitializer }, align 32
@instances = internal global { i32, [28 x i8] } zeroinitializer, align 32
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@cdns_uart_console_setup.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.37, ptr @.str.4, ptr @.str.38, i8 1, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xilinx_uartps\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cdns_uart_console_setup\00", [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"console on ttyPS%i not present\0A\00", [32 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cdns_uart_clk_notifier_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 519, ptr @.str.29, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"clock rate change rejected\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cdns_uart_clk_notifier_cb\00", [38 x i8] zeroinitializer }, align 32
@cdns_uart_clk_notifier_cb._entry_ptr = internal global ptr @cdns_uart_clk_notifier_cb._entry, section ".printk_index", align 4
@cdns_uart_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.4, i32 882, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"request_irq '%d' failed with %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cdns_uart_startup\00", [46 x i8] zeroinitializer }, align 32
@cdns_uart_startup._entry_ptr = internal global ptr @cdns_uart_startup._entry, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@cdns_uart_request_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 972, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to map registers\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cdns_uart_request_port\00", [41 x i8] zeroinitializer }, align 32
@cdns_uart_request_port._entry_ptr = internal global ptr @cdns_uart_request_port._entry, section ".printk_index", align 4
@zynqmp_uart_def = internal constant { %struct.cdns_platform_data, [28 x i8] } { %struct.cdns_platform_data { i32 2 }, [28 x i8] zeroinitializer }, align 32
@console_suspend_enabled = external dso_local local_unnamed_addr global i8, align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 98]
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"rx_trigger_level\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 37, i32 12 }
@___asan_gen_.50 = private unnamed_addr constant [11 x i8] c"rx_timeout\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 42, i32 12 }
@___asan_gen_.53 = private unnamed_addr constant [26 x i8] c"cdns_uart_platform_driver\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1667, i32 31 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1671, i32 11 }
@___asan_gen_.59 = private unnamed_addr constant [19 x i8] c"cdns_uart_of_match\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1416, i32 34 }
@___asan_gen_.62 = private unnamed_addr constant [21 x i8] c"cdns_uart_dev_pm_ops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1406, i32 32 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1451, i32 42 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1456, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [22 x i8] c"cdns_uart_uart_driver\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1137, i32 27 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1463, i32 36 }
@___asan_gen_.92 = private unnamed_addr constant [18 x i8] c"cdns_uart_console\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1285, i32 23 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1473, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1487, i32 50 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1494, i32 51 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1499, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1502, i32 53 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1509, i32 54 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1514, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1519, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1524, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1545, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1549, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [14 x i8] c"cdns_uart_ops\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1114, i32 30 }
@___asan_gen_.155 = private unnamed_addr constant [13 x i8] c"console_port\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1202, i32 26 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1592, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1607, i32 13 }
@___asan_gen_.167 = private unnamed_addr constant [10 x i8] c"instances\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1426, i32 12 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1267, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 519, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 881, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 972, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant [16 x i8] c"zynqmp_uart_def\00", align 1
@___asan_gen_.207 = private constant [38 x i8] c"../drivers/tty/serial/xilinx_uartps.c\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1412, i32 40 }
@llvm.compiler.used = appending global [82 x ptr] [ptr @__UNIQUE_ID___earlycon_cdns232, ptr @__UNIQUE_ID___earlycon_cdns233, ptr @__UNIQUE_ID___earlycon_cdns234, ptr @__UNIQUE_ID___earlycon_cdns235, ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__UNIQUE_ID_rx_timeout231, ptr @__UNIQUE_ID_rx_timeouttype230, ptr @__UNIQUE_ID_rx_trigger_level229, ptr @__UNIQUE_ID_rx_trigger_leveltype228, ptr @__exitcall_cdns_uart_exit, ptr @__initcall__kmod_xilinx_uartps__237_1690_cdns_uart_init3, ptr @__param_rx_timeout, ptr @__param_rx_trigger_level, ptr @cdns_uart_clk_notifier_cb._entry, ptr @cdns_uart_clk_notifier_cb._entry_ptr, ptr @cdns_uart_exit, ptr @cdns_uart_probe._entry, ptr @cdns_uart_probe._entry.13, ptr @cdns_uart_probe._entry.18, ptr @cdns_uart_probe._entry.21, ptr @cdns_uart_probe._entry.24, ptr @cdns_uart_probe._entry.27, ptr @cdns_uart_probe._entry.32, ptr @cdns_uart_probe._entry.8, ptr @cdns_uart_probe._entry_ptr, ptr @cdns_uart_probe._entry_ptr.10, ptr @cdns_uart_probe._entry_ptr.15, ptr @cdns_uart_probe._entry_ptr.20, ptr @cdns_uart_probe._entry_ptr.23, ptr @cdns_uart_probe._entry_ptr.26, ptr @cdns_uart_probe._entry_ptr.30, ptr @cdns_uart_probe._entry_ptr.34, ptr @cdns_uart_request_port._entry, ptr @cdns_uart_request_port._entry_ptr, ptr @cdns_uart_startup._entry, ptr @cdns_uart_startup._entry_ptr, ptr @rx_trigger_level, ptr @rx_timeout, ptr @cdns_uart_platform_driver, ptr @.str, ptr @cdns_uart_of_match, ptr @cdns_uart_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @cdns_uart_uart_driver, ptr @.str.7, ptr @cdns_uart_console, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.29, ptr @cdns_uart_probe.__key, ptr @.str.31, ptr @cdns_uart_ops, ptr @console_port, ptr @.str.33, ptr @.str.35, ptr @instances, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @zynqmp_uart_def], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_trigger_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_uart_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_uart_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_uart_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_uart_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_uart_uart_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_uart_console to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_uart_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_uart_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_uart_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_uart_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_uart_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_uart_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_uart_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_uart_ops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @console_port to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_uart_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @instances to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_uart_clk_notifier_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_uart_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_uart_request_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_uart_def to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_early_console_setup(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %opt) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 318767104) #7, !srcloc !139
  %uartclk = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 22
  %4 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %uartclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %do.body.if.end26_crit_edge, label %land.lhs.true

do.body.if.end26_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

land.lhs.true:                                    ; preds = %do.body
  %baud = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 3
  %6 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %baud, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end26_crit_edge, label %if.then5

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then5:                                         ; preds = %land.lhs.true
  %div.i = udiv i32 %5, 16776960
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %7)
  %cmp.i = icmp ugt i32 %div.i, %7
  %div150.i = lshr i32 %5, 3
  %spec.select38 = select i1 %cmp.i, i32 %div150.i, i32 %5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then5
  %cd.0 = phi i32 [ 0, %if.then5 ], [ %cd.1, %for.inc.i.for.body.i_crit_edge ]
  %bdiv.0 = phi i32 [ 0, %if.then5 ], [ %bdiv.1, %for.inc.i.for.body.i_crit_edge ]
  %bdiv.053.i = phi i32 [ 4, %if.then5 ], [ %add.i, %for.inc.i.for.body.i_crit_edge ]
  %besterror.052.i = phi i32 [ -1, %if.then5 ], [ %besterror.1.i, %for.inc.i.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %bdiv.053.i, 1
  %mul.i = mul i32 %add.i, %7
  %div349.i = lshr i32 %mul.i, 1
  %add4.i = add i32 %div349.i, %spec.select38
  %div5.i = udiv i32 %add4.i, %mul.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %add4.i)
  %cmp6.i = icmp ugt i32 %mul.i, %add4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %div5.i)
  %cmp7.i = icmp ugt i32 %div5.i, 65535
  %or.cond.i = or i1 %cmp7.i, %cmp6.i
  br i1 %or.cond.i, label %for.body.i.for.inc.i_crit_edge, label %if.end9.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end9.i:                                        ; preds = %for.body.i
  %mul11.i = mul nuw nsw i32 %div5.i, %add.i
  %div12.i = udiv i32 %spec.select38, %mul11.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div12.i, i32 %7)
  %cmp13.i = icmp ult i32 %div12.i, %7
  %sub.i = sub i32 %7, %div12.i
  %sub16.i = sub i32 %div12.i, %7
  %bauderror.0.i = select i1 %cmp13.i, i32 %sub.i, i32 %sub16.i
  call void @__sanitizer_cov_trace_cmp4(i32 %besterror.052.i, i32 %bauderror.0.i)
  %cmp18.i = icmp ugt i32 %besterror.052.i, %bauderror.0.i
  br i1 %cmp18.i, label %if.then19.i, label %if.end9.i.for.inc.i_crit_edge

if.end9.i.for.inc.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then19.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then19.i, %if.end9.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cd.1 = phi i32 [ %cd.0, %for.body.i.for.inc.i_crit_edge ], [ %div5.i, %if.then19.i ], [ %cd.0, %if.end9.i.for.inc.i_crit_edge ]
  %bdiv.1 = phi i32 [ %bdiv.0, %for.body.i.for.inc.i_crit_edge ], [ %bdiv.053.i, %if.then19.i ], [ %bdiv.0, %if.end9.i.for.inc.i_crit_edge ]
  %besterror.1.i = phi i32 [ %besterror.052.i, %for.body.i.for.inc.i_crit_edge ], [ %bauderror.0.i, %if.then19.i ], [ %besterror.052.i, %if.end9.i.for.inc.i_crit_edge ]
  %exitcond.not.i = icmp eq i32 %add.i, 256
  br i1 %exitcond.not.i, label %cdns_uart_calc_baud_divs.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

cdns_uart_calc_baud_divs.exit:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %spec.select = select i1 %cmp.i, i32 553648128, i32 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase, align 4
  %add.ptr15 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %spec.select) #7, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  tail call void @arm_heavy_mb() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %cd.1)
  %11 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase, align 4
  %add.ptr20 = getelementptr i8, ptr %12, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %10) #7, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  tail call void @arm_heavy_mb() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %bdiv.1)
  %14 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase, align 4
  %add.ptr25 = getelementptr i8, ptr %15, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %13) #7, !srcloc !139
  br label %if.end26

if.end26:                                         ; preds = %cdns_uart_calc_baud_divs.exit, %land.lhs.true.if.end26_crit_edge, %do.body.if.end26_crit_edge
  %16 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device, align 4
  %write = getelementptr inbounds %struct.console, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @cdns_early_write, ptr %write, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end26 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cdns_uart_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @cdns_uart_platform_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_uart_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cdns_uart_platform_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_early_write(ptr nocapture noundef readonly %con, ptr noundef %s, i32 noundef %n) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.console, ptr %con, i32 0, i32 13
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %port = getelementptr inbounds %struct.earlycon_device, ptr %1, i32 0, i32 1
  tail call void @uart_console_write(ptr noundef %port, ptr noundef %s, i32 noundef %n, ptr noundef nonnull @cdns_uart_console_putchar) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_uart_console_putchar(ptr nocapture noundef readonly %port, i32 noundef %ch) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr11 = getelementptr i8, ptr %1, i32 44
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  %3 = and i32 %2, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not12 = icmp eq i32 %3, 0
  br i1 %tobool.not12, label %entry.do.body6_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !145
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !146
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 44
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  %7 = and i32 %6, 268435456
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.end.do.body6_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end.do.body6_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6

do.body6:                                         ; preds = %do.end.do.body6_crit_edge, %entry.do.body6_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %ch)
  %9 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase, align 4
  %add.ptr9 = getelementptr i8, ptr %10, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %8) #7, !srcloc !139
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_uart_probe(ptr noundef %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i272 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 360, i32 noundef 3520) #7
  %tobool3.not = icmp eq ptr %call.i272, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call7 = tail call i32 @of_alias_get_id(ptr noundef %1, ptr noundef nonnull @.str.1) #7
  %2 = tail call i32 @llvm.smax.i32(i32 %call7, i32 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %2)
  %cmp10 = icmp ugt i32 %2, 15
  br i1 %cmp10, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %3 = load ptr, ptr getelementptr inbounds (%struct.uart_driver, ptr @cdns_uart_uart_driver, i32 0, i32 7), align 4
  %tobool14.not = icmp eq ptr %3, null
  br i1 %tobool14.not, label %if.then15, label %if.end13.if.end24_crit_edge

if.end13.if.end24_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then15:                                        ; preds = %if.end13
  store ptr null, ptr @cdns_uart_uart_driver, align 4
  store ptr @.str, ptr getelementptr inbounds (%struct.uart_driver, ptr @cdns_uart_uart_driver, i32 0, i32 1), align 4
  store ptr @.str.7, ptr getelementptr inbounds (%struct.uart_driver, ptr @cdns_uart_uart_driver, i32 0, i32 2), align 4
  store i32 0, ptr getelementptr inbounds (%struct.uart_driver, ptr @cdns_uart_uart_driver, i32 0, i32 3), align 4
  store i32 0, ptr getelementptr inbounds (%struct.uart_driver, ptr @cdns_uart_uart_driver, i32 0, i32 4), align 4
  store i32 16, ptr getelementptr inbounds (%struct.uart_driver, ptr @cdns_uart_uart_driver, i32 0, i32 5), align 4
  store ptr @cdns_uart_console, ptr getelementptr inbounds (%struct.uart_driver, ptr @cdns_uart_uart_driver, i32 0, i32 6), align 4
  %call16 = tail call i32 @uart_register_driver(ptr noundef nonnull @cdns_uart_uart_driver) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %do.end21, label %if.then15.if.end24_crit_edge

if.then15.if.end24_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

do.end21:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #10
  br label %cleanup

if.end24:                                         ; preds = %if.then15.if.end24_crit_edge, %if.end13.if.end24_crit_edge
  %cdns_uart_driver = getelementptr inbounds %struct.cdns_uart, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %cdns_uart_driver to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @cdns_uart_uart_driver, ptr %cdns_uart_driver, align 4
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call27 = tail call ptr @of_match_node(ptr noundef nonnull @cdns_uart_of_match, ptr noundef %6) #7
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.end24.if.end34_crit_edge, label %land.lhs.true

if.end24.if.end34_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end24
  %data = getelementptr inbounds %struct.of_device_id, ptr %call27, i32 0, i32 3
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %tobool29.not = icmp eq ptr %8, null
  br i1 %tobool29.not, label %land.lhs.true.if.end34_crit_edge, label %if.then30

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %quirks33 = getelementptr inbounds %struct.cdns_uart, ptr %call.i, i32 0, i32 6
  %11 = ptrtoint ptr %quirks33 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %quirks33, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %land.lhs.true.if.end34_crit_edge, %if.end24.if.end34_crit_edge
  %call36 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.11) #7
  %pclk = getelementptr inbounds %struct.cdns_uart, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call36, ptr %pclk, align 4
  %cmp39 = icmp eq ptr %call36, inttoptr (i32 -517 to ptr)
  br i1 %cmp39, label %if.end34.err_out_unregister_driver_crit_edge, label %if.end43

if.end34.err_out_unregister_driver_crit_edge:     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out_unregister_driver

if.end43:                                         ; preds = %if.end34
  %cmp.i = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then46, label %if.end43.if.end60_crit_edge

if.end43.if.end60_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.then46:                                        ; preds = %if.end43
  %call48 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.12) #7
  %13 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call48, ptr %pclk, align 4
  %cmp.i273 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i273, label %if.then52, label %do.end58

if.then52:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %call48 to i32
  br label %err_out_unregister_driver

do.end58:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #10
  br label %if.end60

if.end60:                                         ; preds = %do.end58, %if.end43.if.end60_crit_edge
  %call62 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.16) #7
  %uartclk = getelementptr inbounds %struct.cdns_uart, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call62, ptr %uartclk, align 4
  %cmp65 = icmp eq ptr %call62, inttoptr (i32 -517 to ptr)
  br i1 %cmp65, label %if.end60.err_out_unregister_driver_crit_edge, label %if.end69

if.end60.err_out_unregister_driver_crit_edge:     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out_unregister_driver

if.end69:                                         ; preds = %if.end60
  %cmp.i274 = icmp ugt ptr %call62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i274, label %if.then72, label %if.end69.if.end86_crit_edge

if.end69.if.end86_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

if.then72:                                        ; preds = %if.end69
  %call74 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.17) #7
  %16 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call74, ptr %uartclk, align 4
  %cmp.i275 = icmp ugt ptr %call74, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i275, label %if.then78, label %do.end84

if.then78:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %call74 to i32
  br label %err_out_unregister_driver

do.end84:                                         ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #10
  br label %if.end86

if.end86:                                         ; preds = %do.end84, %if.end69.if.end86_crit_edge
  %18 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pclk, align 4
  %call.i276 = tail call i32 @clk_prepare(ptr noundef %19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i276)
  %tobool.not.i = icmp eq i32 %call.i276, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end86.do.end93_crit_edge

if.end86.do.end93_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end93

if.end.i:                                         ; preds = %if.end86
  %call1.i = tail call i32 @clk_enable(ptr noundef %19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end95, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %19) #7
  br label %do.end93

do.end93:                                         ; preds = %if.then3.i, %if.end86.do.end93_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i276, %if.end86.do.end93_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #10
  br label %err_out_unregister_driver

if.end95:                                         ; preds = %if.end.i
  %20 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %uartclk, align 4
  %call.i277 = tail call i32 @clk_prepare(ptr noundef %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i277)
  %tobool.not.i278 = icmp eq i32 %call.i277, 0
  br i1 %tobool.not.i278, label %if.end.i281, label %if.end95.do.end102_crit_edge

if.end95.do.end102_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end102

if.end.i281:                                      ; preds = %if.end95
  %call1.i279 = tail call i32 @clk_enable(ptr noundef %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i279)
  %tobool2.not.i280 = icmp eq i32 %call1.i279, 0
  br i1 %tobool2.not.i280, label %if.end104, label %if.then3.i282

if.then3.i282:                                    ; preds = %if.end.i281
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %21) #7
  br label %do.end102

do.end102:                                        ; preds = %if.then3.i282, %if.end95.do.end102_crit_edge
  %retval.0.i283.ph = phi i32 [ %call1.i279, %if.then3.i282 ], [ %call.i277, %if.end95.do.end102_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #10
  br label %err_out_clk_dis_pclk

if.end104:                                        ; preds = %if.end.i281
  %call105 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %tobool106.not = icmp eq ptr %call105, null
  br i1 %tobool106.not, label %if.end104.err_out_clk_disable_crit_edge, label %if.end108

if.end104.err_out_clk_disable_crit_edge:          ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out_clk_disable

if.end108:                                        ; preds = %if.end104
  %call109 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call109)
  %cmp110 = icmp slt i32 %call109, 1
  br i1 %cmp110, label %if.end108.err_out_clk_disable_crit_edge, label %if.end112

if.end108.err_out_clk_disable_crit_edge:          ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out_clk_disable

if.end112:                                        ; preds = %if.end108
  %clk_rate_change_nb = getelementptr inbounds %struct.cdns_uart, ptr %call.i, i32 0, i32 5
  %22 = ptrtoint ptr %clk_rate_change_nb to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @cdns_uart_clk_notifier_cb, ptr %clk_rate_change_nb, align 4
  %23 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %uartclk, align 4
  %call115 = tail call i32 @clk_notifier_register(ptr noundef %24, ptr noundef %clk_rate_change_nb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end112.do.body123_crit_edge, label %do.end120

if.end112.do.body123_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body123

do.end120:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.28) #10
  br label %do.body123

do.body123:                                       ; preds = %do.end120, %if.end112.do.body123_crit_edge
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i272, ptr noundef nonnull @.str.31, ptr noundef nonnull @cdns_uart_probe.__key, i16 noundef signext 3) #7
  %type = getelementptr inbounds %struct.uart_port, ptr %call.i272, i32 0, i32 38
  %25 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %type, align 4
  %iotype = getelementptr inbounds %struct.uart_port, ptr %call.i272, i32 0, i32 26
  %26 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 3, ptr %iotype, align 2
  %flags = getelementptr inbounds %struct.uart_port, ptr %call.i272, i32 0, i32 33
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 268435456, ptr %flags, align 4
  %ops = getelementptr inbounds %struct.uart_port, ptr %call.i272, i32 0, i32 39
  %28 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @cdns_uart_ops, ptr %ops, align 4
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %call.i272, i32 0, i32 23
  %29 = ptrtoint ptr %fifosize to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 64, ptr %fifosize, align 4
  %has_sysrq = getelementptr inbounds %struct.uart_port, ptr %call.i272, i32 0, i32 48
  %30 = ptrtoint ptr %has_sysrq to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %has_sysrq, align 4
  %line = getelementptr inbounds %struct.uart_port, ptr %call.i272, i32 0, i32 41
  %31 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %2, ptr %line, align 4
  %32 = ptrtoint ptr %call105 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %call105, align 4
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %call.i272, i32 0, i32 43
  %34 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %mapbase, align 4
  %irq127 = getelementptr inbounds %struct.uart_port, ptr %call.i272, i32 0, i32 20
  %35 = ptrtoint ptr %irq127 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call109, ptr %irq127, align 4
  %dev129 = getelementptr inbounds %struct.uart_port, ptr %call.i272, i32 0, i32 45
  %36 = ptrtoint ptr %dev129 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %dev, ptr %dev129, align 4
  %37 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %uartclk, align 4
  %call131 = tail call i32 @clk_get_rate(ptr noundef %38) #7
  %uartclk132 = getelementptr inbounds %struct.uart_port, ptr %call.i272, i32 0, i32 22
  %39 = ptrtoint ptr %uartclk132 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call131, ptr %uartclk132, align 4
  %private_data = getelementptr inbounds %struct.uart_port, ptr %call.i272, i32 0, i32 59
  %40 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i, ptr %private_data, align 4
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i272, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %42 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i272, ptr %driver_data.i.i, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #7
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 3000) #7
  %call.i285 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #7
  tail call void @pm_runtime_enable(ptr noundef %dev) #7
  %43 = ptrtoint ptr %dev129 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev129, align 4
  %call140 = tail call i32 @device_init_wakeup(ptr noundef %44, i1 noundef zeroext true) #7
  %45 = load ptr, ptr @console_port, align 4
  %tobool141.not = icmp eq ptr %45, null
  br i1 %tobool141.not, label %if.then142, label %do.body123.if.end143_crit_edge

do.body123.if.end143_crit_edge:                   ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end143

if.then142:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %2 to i16
  store i16 %conv, ptr getelementptr inbounds (%struct.console, ptr @cdns_uart_console, i32 0, i32 9), align 2
  store ptr %call.i272, ptr @console_port, align 4
  br label %if.end143

if.end143:                                        ; preds = %if.then142, %do.body123.if.end143_crit_edge
  %call144 = tail call i32 @uart_add_one_port(ptr noundef nonnull @cdns_uart_uart_driver, ptr noundef nonnull %call.i272) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.end151, label %do.end149

do.end149:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %call144) #10
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %call.i286 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #7
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #7
  %46 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %uartclk, align 4
  %call169 = tail call i32 @clk_notifier_unregister(ptr noundef %47, ptr noundef %clk_rate_change_nb) #7
  br label %err_out_clk_disable

if.end151:                                        ; preds = %if.end143
  %48 = load ptr, ptr @console_port, align 4
  %cmp152 = icmp eq ptr %48, %call.i272
  br i1 %cmp152, label %land.lhs.true154, label %if.end151.if.end159_crit_edge

if.end151.if.end159_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end159

land.lhs.true154:                                 ; preds = %if.end151
  %49 = load ptr, ptr getelementptr inbounds (%struct.uart_driver, ptr @cdns_uart_uart_driver, i32 0, i32 6), align 4
  %flags155 = getelementptr inbounds %struct.console, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %flags155 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %flags155, align 4
  %52 = and i16 %51, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool157.not = icmp eq i16 %52, 0
  br i1 %tobool157.not, label %if.then158, label %land.lhs.true154.if.end159_crit_edge

land.lhs.true154.if.end159_crit_edge:             ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end159

if.then158:                                       ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #9
  store ptr null, ptr @console_port, align 4
  store i16 -1, ptr getelementptr inbounds (%struct.console, ptr @cdns_uart_console, i32 0, i32 9), align 2
  br label %if.end159

if.end159:                                        ; preds = %if.then158, %land.lhs.true154.if.end159_crit_edge, %if.end151.if.end159_crit_edge
  %53 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %of_node, align 8
  %call.i287 = tail call ptr @of_find_property(ptr noundef %54, ptr noundef nonnull @.str.35, ptr noundef null) #7
  %tobool.i = icmp ne ptr %call.i287, null
  %cts_override = getelementptr inbounds %struct.cdns_uart, ptr %call.i, i32 0, i32 7
  %frombool = zext i1 %tobool.i to i8
  %55 = ptrtoint ptr %cts_override to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %frombool, ptr %cts_override, align 4
  %56 = load i32, ptr @instances, align 4
  %inc = add i32 %56, 1
  store i32 %inc, ptr @instances, align 4
  br label %cleanup

err_out_clk_disable:                              ; preds = %do.end149, %if.end108.err_out_clk_disable_crit_edge, %if.end104.err_out_clk_disable_crit_edge
  %rc.0 = phi i32 [ %call144, %do.end149 ], [ -19, %if.end104.err_out_clk_disable_crit_edge ], [ -6, %if.end108.err_out_clk_disable_crit_edge ]
  %57 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %uartclk, align 4
  tail call void @clk_disable(ptr noundef %58) #7
  tail call void @clk_unprepare(ptr noundef %58) #7
  br label %err_out_clk_dis_pclk

err_out_clk_dis_pclk:                             ; preds = %err_out_clk_disable, %do.end102
  %rc.1 = phi i32 [ %retval.0.i283.ph, %do.end102 ], [ %rc.0, %err_out_clk_disable ]
  %59 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %60) #7
  tail call void @clk_unprepare(ptr noundef %60) #7
  br label %err_out_unregister_driver

err_out_unregister_driver:                        ; preds = %err_out_clk_dis_pclk, %do.end93, %if.then78, %if.end60.err_out_unregister_driver_crit_edge, %if.then52, %if.end34.err_out_unregister_driver_crit_edge
  %rc.2 = phi i32 [ %14, %if.then52 ], [ %17, %if.then78 ], [ %retval.0.i.ph, %do.end93 ], [ %rc.1, %err_out_clk_dis_pclk ], [ -517, %if.end34.err_out_unregister_driver_crit_edge ], [ -517, %if.end60.err_out_unregister_driver_crit_edge ]
  %61 = load i32, ptr @instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool172.not = icmp eq i32 %61, 0
  br i1 %tobool172.not, label %if.then173, label %err_out_unregister_driver.cleanup_crit_edge

err_out_unregister_driver.cleanup_crit_edge:      ; preds = %err_out_unregister_driver
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then173:                                       ; preds = %err_out_unregister_driver
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %cdns_uart_driver to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cdns_uart_driver, align 4
  tail call void @uart_unregister_driver(ptr noundef %63) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then173, %err_out_unregister_driver.cleanup_crit_edge, %if.end159, %do.end21, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.end159 ], [ %call16, %do.end21 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %rc.2, %if.then173 ], [ %rc.2, %err_out_unregister_driver.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_uart_remove(ptr noundef %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %private_data = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 59
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %uartclk = getelementptr inbounds %struct.cdns_uart, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uartclk, align 4
  %clk_rate_change_nb = getelementptr inbounds %struct.cdns_uart, ptr %3, i32 0, i32 5
  %call1 = tail call i32 @clk_notifier_unregister(ptr noundef %5, ptr noundef %clk_rate_change_nb) #7
  %cdns_uart_driver = getelementptr inbounds %struct.cdns_uart, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %cdns_uart_driver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cdns_uart_driver, align 4
  %call2 = tail call i32 @uart_remove_one_port(ptr noundef %7, ptr noundef %1) #7
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 43
  %8 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %mapbase, align 4
  %9 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %uartclk, align 4
  tail call void @clk_disable(ptr noundef %10) #7
  tail call void @clk_unprepare(ptr noundef %10) #7
  %pclk = getelementptr inbounds %struct.cdns_uart, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %12) #7
  tail call void @clk_unprepare(ptr noundef %12) #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #7
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #7
  %call8 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext false) #7
  %13 = load ptr, ptr @console_port, align 4
  %cmp = icmp eq ptr %13, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  store ptr null, ptr @console_port, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %14 = load i32, ptr @instances, align 4
  %dec = add i32 %14, -1
  store i32 %dec, ptr @instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then9, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %cdns_uart_driver to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cdns_uart_driver, align 4
  tail call void @uart_unregister_driver(ptr noundef %16) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_uart_clk_notifier_cb(ptr nocapture noundef %nb, i32 noundef %event, ptr nocapture noundef readonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -20
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %suspended = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 51
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %suspended, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup119_crit_edge

entry.cleanup119_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup119

if.end:                                           ; preds = %entry
  %4 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %if.end.cleanup119_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb49
    i32 4, label %do.body53
  ]

if.end.cleanup119_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup119

sw.bb:                                            ; preds = %if.end
  %new_rate = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 2
  %5 = ptrtoint ptr %new_rate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %new_rate, align 4
  %baud = getelementptr i8, ptr %nb, i32 -4
  %7 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %baud, align 4
  %div.i = udiv i32 %6, 16776960
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %8)
  %cmp.i = icmp ugt i32 %div.i, %8
  %div150.i = lshr i32 %6, 3
  %spec.select = select i1 %cmp.i, i32 %div150.i, i32 %6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb
  %bdiv.053.i = phi i32 [ 4, %sw.bb ], [ %add.i, %for.inc.i.for.body.i_crit_edge ]
  %besterror.052.i = phi i32 [ -1, %sw.bb ], [ %besterror.1.i, %for.inc.i.for.body.i_crit_edge ]
  %bestbaud.051.i = phi i32 [ 0, %sw.bb ], [ %bestbaud.1.i, %for.inc.i.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %bdiv.053.i, 1
  %mul.i = mul i32 %add.i, %8
  %div349.i = lshr i32 %mul.i, 1
  %add4.i = add i32 %div349.i, %spec.select
  %div5.i = udiv i32 %add4.i, %mul.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %add4.i)
  %cmp6.i = icmp ugt i32 %mul.i, %add4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %div5.i)
  %cmp7.i = icmp ugt i32 %div5.i, 65535
  %or.cond.i = or i1 %cmp7.i, %cmp6.i
  br i1 %or.cond.i, label %for.body.i.for.inc.i_crit_edge, label %if.end9.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end9.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul11.i = mul nuw nsw i32 %div5.i, %add.i
  %div12.i = udiv i32 %spec.select, %mul11.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div12.i, i32 %8)
  %cmp13.i = icmp ult i32 %div12.i, %8
  %sub.i = sub i32 %8, %div12.i
  %sub16.i = sub i32 %div12.i, %8
  %bauderror.0.i = select i1 %cmp13.i, i32 %sub.i, i32 %sub16.i
  call void @__sanitizer_cov_trace_cmp4(i32 %besterror.052.i, i32 %bauderror.0.i)
  %cmp18.i = icmp ugt i32 %besterror.052.i, %bauderror.0.i
  %spec.select154 = select i1 %cmp18.i, i32 %div12.i, i32 %bestbaud.051.i
  %9 = tail call i32 @llvm.umin.i32(i32 %besterror.052.i, i32 %bauderror.0.i)
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end9.i, %for.body.i.for.inc.i_crit_edge
  %bestbaud.1.i = phi i32 [ %bestbaud.051.i, %for.body.i.for.inc.i_crit_edge ], [ %spec.select154, %if.end9.i ]
  %besterror.1.i = phi i32 [ %besterror.052.i, %for.body.i.for.inc.i_crit_edge ], [ %9, %if.end9.i ]
  %exitcond.not.i = icmp eq i32 %add.i, 256
  br i1 %exitcond.not.i, label %cdns_uart_calc_baud_divs.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

cdns_uart_calc_baud_divs.exit:                    ; preds = %for.inc.i
  %mul21.i = mul i32 %besterror.1.i, 100
  %div22.i = udiv i32 %mul21.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %div22.i)
  %cmp23.i = icmp ult i32 %div22.i, 3
  %spec.select.i = select i1 %cmp23.i, i32 %8, i32 %bestbaud.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool2.not = icmp eq i32 %spec.select.i, 0
  br i1 %tobool2.not, label %do.end, label %do.body6

do.end:                                           ; preds = %cdns_uart_calc_baud_divs.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 45
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.39) #10
  br label %cleanup119

do.body6:                                         ; preds = %cdns_uart_calc_baud_divs.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #7
  %membase = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !148
  %15 = or i32 %14, 671088640
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #7, !srcloc !139
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %call10) #7
  br label %cleanup119

sw.bb49:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #7
  %new_rate44 = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 2
  %20 = ptrtoint ptr %new_rate44 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %new_rate44, align 4
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 22
  %22 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %uartclk, align 4
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr, align 4
  %baud46 = getelementptr i8, ptr %nb, i32 -4
  %25 = ptrtoint ptr %baud46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %baud46, align 4
  %call47 = tail call fastcc i32 @cdns_uart_set_baud_rate(ptr noundef %24, i32 noundef %26)
  %27 = ptrtoint ptr %baud46 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call47, ptr %baud46, align 4
  br label %if.end67

do.body53:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr, align 4
  %call62 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %29) #7
  br label %if.end67

if.end67:                                         ; preds = %do.body53, %sw.bb49
  %flags.1 = phi i32 [ %call39, %sw.bb49 ], [ %call62, %do.body53 ]
  %membase70 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %membase70 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase70, align 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  %33 = or i32 %32, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  %34 = ptrtoint ptr %membase70 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase70, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #7, !srcloc !139
  %36 = ptrtoint ptr %membase70 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase70, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  %39 = and i32 %38, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool88.not156 = icmp eq i32 %39, 0
  br i1 %tobool88.not156, label %if.end67.do.body98_crit_edge, label %if.end67.do.end93_crit_edge

if.end67.do.end93_crit_edge:                      ; preds = %if.end67
  br label %do.end93

if.end67.do.body98_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body98

do.end93:                                         ; preds = %do.end93.do.end93_crit_edge, %if.end67.do.end93_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !153
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !154
  %40 = ptrtoint ptr %membase70 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %membase70, align 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  %43 = and i32 %42, 50331648
  %tobool88.not = icmp eq i32 %43, 0
  br i1 %tobool88.not, label %do.end93.do.body98_crit_edge, label %do.end93.do.end93_crit_edge

do.end93.do.end93_crit_edge:                      ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end93

do.end93.do.body98_crit_edge:                     ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body98

do.body98:                                        ; preds = %do.end93.do.body98_crit_edge, %if.end67.do.body98_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  tail call void @arm_heavy_mb() #7
  %44 = load i32, ptr @rx_timeout, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %46 = ptrtoint ptr %membase70 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %membase70, align 4
  %add.ptr102 = getelementptr i8, ptr %47, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr102, i32 %45) #7, !srcloc !139
  %48 = ptrtoint ptr %membase70 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %membase70, align 4
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !156
  %51 = and i32 %50, -1006632961
  %52 = or i32 %51, 335544320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !157
  tail call void @arm_heavy_mb() #7
  %53 = ptrtoint ptr %membase70 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %membase70, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #7, !srcloc !139
  %55 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %56, i32 noundef %flags.1) #7
  br label %cleanup119

cleanup119:                                       ; preds = %do.body98, %do.body6, %do.end, %if.end.cleanup119_crit_edge, %entry.cleanup119_crit_edge
  %retval.1 = phi i32 [ 1, %do.body98 ], [ 1, %entry.cleanup119_crit_edge ], [ 0, %if.end.cleanup119_crit_edge ], [ 1, %do.body6 ], [ 32770, %do.end ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_uart_console_write(ptr nocapture noundef readnone %co, ptr noundef %s, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @console_port, align 4
  %sysrq = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 46
  %1 = ptrtoint ptr %sysrq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sysrq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end68_crit_edge

entry.if.end68_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.else:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %3 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %do.body54, label %do.body3

do.body3:                                         ; preds = %if.else
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !158
  %and.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not = icmp eq i32 %and.i, 0
  br i1 %tobool12.not, label %do.end15, label %do.end15.thread

do.end15:                                         ; preds = %do.body3
  tail call void @trace_hardirqs_off() #7
  %call18 = tail call i32 @_raw_spin_trylock(ptr noundef %0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then29, label %do.end15.if.end68_crit_edge

do.end15.if.end68_crit_edge:                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

do.end15.thread:                                  ; preds = %do.body3
  %call18127 = tail call i32 @_raw_spin_trylock(ptr noundef %0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18127)
  %tobool19.not128 = icmp eq i32 %call18127, 0
  br i1 %tobool19.not128, label %do.end15.thread.do.body31_crit_edge, label %do.end15.thread.if.end68_crit_edge

do.end15.thread.if.end68_crit_edge:               ; preds = %do.end15.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

do.end15.thread.do.body31_crit_edge:              ; preds = %do.end15.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body31

if.then29:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_on() #7
  br label %do.body31

do.body31:                                        ; preds = %if.then29, %do.end15.thread.do.body31_crit_edge
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !159
  %and.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool39.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool39.not, label %if.then43, label %do.body31.do.end46_crit_edge, !prof !160

do.body31.do.end46_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end46

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end46

do.end46:                                         ; preds = %if.then43, %do.body31.do.end46_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #7, !srcloc !161
  br label %if.end68

do.body54:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call62 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #7
  br label %if.end68

if.end68:                                         ; preds = %do.body54, %do.end46, %do.end15.thread.if.end68_crit_edge, %do.end15.if.end68_crit_edge, %entry.if.end68_crit_edge
  %tobool106.not = phi i1 [ false, %do.end15.thread.if.end68_crit_edge ], [ true, %do.end46 ], [ false, %do.end15.if.end68_crit_edge ], [ true, %entry.if.end68_crit_edge ], [ false, %do.body54 ]
  %flags.0 = phi i32 [ %4, %do.end15.thread.if.end68_crit_edge ], [ %4, %do.end46 ], [ %4, %do.end15.if.end68_crit_edge ], [ -1, %entry.if.end68_crit_edge ], [ %call62, %do.body54 ]
  %membase = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase, align 4
  %add.ptr76 = getelementptr i8, ptr %10, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 %8) #7, !srcloc !139
  %11 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  %14 = and i32 %13, -805306369
  %15 = or i32 %14, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !165
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #7, !srcloc !139
  tail call void @uart_console_write(ptr noundef %0, ptr noundef %s, i32 noundef %count, ptr noundef nonnull @cdns_uart_console_putchar) #7
  %18 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase, align 4
  %add.ptr.i129 = getelementptr i8, ptr %19, i32 44
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i129) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !166
  %21 = and i32 %20, 134742016
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %21)
  %cmp.i130 = icmp eq i32 %21, 134217728
  br i1 %cmp.i130, label %if.end68.do.body101_crit_edge, label %if.end68.do.end96_crit_edge

if.end68.do.end96_crit_edge:                      ; preds = %if.end68
  br label %do.end96

if.end68.do.body101_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body101

do.end96:                                         ; preds = %do.end96.do.end96_crit_edge, %if.end68.do.end96_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !167
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !168
  %22 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 44
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !166
  %25 = and i32 %24, 134742016
  %cmp.i = icmp eq i32 %25, 134217728
  br i1 %cmp.i, label %do.end96.do.body101_crit_edge, label %do.end96.do.end96_crit_edge

do.end96.do.end96_crit_edge:                      ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end96

do.end96.do.body101_crit_edge:                    ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body101

do.body101:                                       ; preds = %do.end96.do.body101_crit_edge, %if.end68.do.body101_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase, align 4
  %add.ptr105 = getelementptr i8, ptr %27, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr105, i32 %8) #7, !srcloc !139
  br i1 %tobool106.not, label %do.body101.if.end109_crit_edge, label %if.then107

do.body101.if.end109_crit_edge:                   ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

if.then107:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %flags.0) #7
  br label %if.end109

if.end109:                                        ; preds = %if.then107, %do.body101.if.end109_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_uart_console_setup(ptr noundef %co, ptr noundef %options) #4 align 64 {
entry:
  %baud = alloca i32, align 4
  %bits = alloca i32, align 4
  %parity = alloca i32, align 4
  %flow = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @console_port, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %baud) #7
  %1 = ptrtoint ptr %baud to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 9600, ptr %baud, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits) #7
  %2 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8, ptr %bits, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parity) #7
  %3 = ptrtoint ptr %parity to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 110, ptr %parity, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flow) #7
  %4 = ptrtoint ptr %flow to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 110, ptr %flow, align 4
  %membase = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %5 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_uart_console_setup.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_uart_console_setup, %if.then4)) #7
          to label %cleanup [label %if.then4], !srcloc !170

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %index, align 2
  %conv = sext i16 %8 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cdns_uart_console_setup.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.38, i32 noundef %conv) #7
  br label %cleanup

if.end5:                                          ; preds = %entry
  %tobool6.not = icmp eq ptr %options, null
  br i1 %tobool6.not, label %if.end5.if.end8_crit_edge, label %if.then7

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  call void @uart_parse_options(ptr noundef nonnull %options, ptr noundef nonnull %baud, ptr noundef nonnull %parity, ptr noundef nonnull %bits, ptr noundef nonnull %flow) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5.if.end8_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %call.i = call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 500000
  %spec.select.i.neg37 = select i1 %cmp.i, i32 -1073741822, i32 -50
  %add.neg = sub i32 %spec.select.i.neg37, %9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub35 = add i32 %add.neg, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub35)
  %cmp36 = icmp slt i32 %sub35, 0
  br i1 %cmp36, label %if.end8.land.rhs_crit_edge, label %if.end8.while.end_crit_edge

if.end8.while.end_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end8.land.rhs_crit_edge:                       ; preds = %if.end8
  br label %land.rhs

land.rhs:                                         ; preds = %do.end18.land.rhs_crit_edge, %if.end8.land.rhs_crit_edge
  %11 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 44
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !143
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !166
  %14 = and i32 %13, 134742016
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %14)
  %cmp.i33 = icmp eq i32 %14, 134217728
  br i1 %cmp.i33, label %land.rhs.while.end_crit_edge, label %do.end18

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.end18:                                         ; preds = %land.rhs
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !171
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %15
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.end18.land.rhs_crit_edge, label %do.end18.while.end_crit_edge

do.end18.while.end_crit_edge:                     ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.end18.land.rhs_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

while.end:                                        ; preds = %do.end18.while.end_crit_edge, %land.rhs.while.end_crit_edge, %if.end8.while.end_crit_edge
  %16 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %baud, align 4
  %18 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %parity, align 4
  %20 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bits, align 4
  %22 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flow, align 4
  %call23 = call i32 @uart_set_options(ptr noundef %0, ptr noundef %co, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23) #7
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then4, %do.body
  %retval.0 = phi i32 [ %call23, %while.end ], [ -19, %if.then4 ], [ -19, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flow) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parity) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %baud) #7
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
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_uart_tx_empty(ptr nocapture noundef readonly %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 44
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !166
  %3 = and i32 %2, 134742016
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %3)
  %cmp = icmp eq i32 %3, 134217728
  %cond = zext i1 %cmp to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_uart_set_baud_rate(ptr nocapture noundef readonly %port, i32 noundef %baud) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %2 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %uartclk, align 4
  %div.i = udiv i32 %3, 16776960
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %baud)
  %cmp.i = icmp ugt i32 %div.i, %baud
  %div150.i = lshr i32 %3, 3
  %spec.select24 = select i1 %cmp.i, i32 %div150.i, i32 %3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %cd.0 = phi i32 [ 0, %entry ], [ %cd.1, %for.inc.i.for.body.i_crit_edge ]
  %bdiv.0 = phi i32 [ 0, %entry ], [ %bdiv.1, %for.inc.i.for.body.i_crit_edge ]
  %bdiv.053.i = phi i32 [ 4, %entry ], [ %add.i, %for.inc.i.for.body.i_crit_edge ]
  %besterror.052.i = phi i32 [ -1, %entry ], [ %besterror.1.i, %for.inc.i.for.body.i_crit_edge ]
  %bestbaud.051.i = phi i32 [ 0, %entry ], [ %bestbaud.1.i, %for.inc.i.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %bdiv.053.i, 1
  %mul.i = mul i32 %add.i, %baud
  %div349.i = lshr i32 %mul.i, 1
  %add4.i = add i32 %div349.i, %spec.select24
  %div5.i = udiv i32 %add4.i, %mul.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %add4.i)
  %cmp6.i = icmp ugt i32 %mul.i, %add4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %div5.i)
  %cmp7.i = icmp ugt i32 %div5.i, 65535
  %or.cond.i = or i1 %cmp7.i, %cmp6.i
  br i1 %or.cond.i, label %for.body.i.for.inc.i_crit_edge, label %if.end9.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end9.i:                                        ; preds = %for.body.i
  %mul11.i = mul nuw nsw i32 %div5.i, %add.i
  %div12.i = udiv i32 %spec.select24, %mul11.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div12.i, i32 %baud)
  %cmp13.i = icmp ult i32 %div12.i, %baud
  %sub.i = sub i32 %baud, %div12.i
  %sub16.i = sub i32 %div12.i, %baud
  %bauderror.0.i = select i1 %cmp13.i, i32 %sub.i, i32 %sub16.i
  call void @__sanitizer_cov_trace_cmp4(i32 %besterror.052.i, i32 %bauderror.0.i)
  %cmp18.i = icmp ugt i32 %besterror.052.i, %bauderror.0.i
  br i1 %cmp18.i, label %if.then19.i, label %if.end9.i.for.inc.i_crit_edge

if.end9.i.for.inc.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then19.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then19.i, %if.end9.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cd.1 = phi i32 [ %cd.0, %for.body.i.for.inc.i_crit_edge ], [ %div5.i, %if.then19.i ], [ %cd.0, %if.end9.i.for.inc.i_crit_edge ]
  %bdiv.1 = phi i32 [ %bdiv.0, %for.body.i.for.inc.i_crit_edge ], [ %bdiv.053.i, %if.then19.i ], [ %bdiv.0, %if.end9.i.for.inc.i_crit_edge ]
  %bestbaud.1.i = phi i32 [ %bestbaud.051.i, %for.body.i.for.inc.i_crit_edge ], [ %div12.i, %if.then19.i ], [ %bestbaud.051.i, %if.end9.i.for.inc.i_crit_edge ]
  %besterror.1.i = phi i32 [ %besterror.052.i, %for.body.i.for.inc.i_crit_edge ], [ %bauderror.0.i, %if.then19.i ], [ %besterror.052.i, %if.end9.i.for.inc.i_crit_edge ]
  %exitcond.not.i = icmp eq i32 %add.i, 256
  br i1 %exitcond.not.i, label %cdns_uart_calc_baud_divs.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

cdns_uart_calc_baud_divs.exit:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul21.i = mul i32 %besterror.1.i, 100
  %div22.i = udiv i32 %mul21.i, %baud
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %div22.i)
  %cmp23.i = icmp ult i32 %div22.i, 3
  %spec.select.i = select i1 %cmp23.i, i32 %baud, i32 %bestbaud.1.i
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  %7 = and i32 %6, -16777217
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %masksel = zext i1 %cmp.i to i32
  %mreg.0 = or i32 %8, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !174
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %mreg.0)
  %10 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase, align 4
  %add.ptr4 = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %9) #7, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !175
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %cd.1)
  %13 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase, align 4
  %add.ptr9 = getelementptr i8, ptr %14, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %12) #7, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  tail call void @arm_heavy_mb() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %bdiv.1)
  %16 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase, align 4
  %add.ptr14 = getelementptr i8, ptr %17, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %15) #7, !srcloc !139
  %baud15 = getelementptr inbounds %struct.cdns_uart, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %baud15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %baud, ptr %baud15, align 4
  ret i32 %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_uart_set_mctrl(ptr nocapture noundef readonly %port, i32 noundef %mctrl) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cts_override = getelementptr inbounds %struct.cdns_uart, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %cts_override to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cts_override, align 4, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 36
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !178
  %7 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase, align 4
  %add.ptr5 = getelementptr i8, ptr %8, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !179
  %10 = and i32 %6, -50331649
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = and i32 %9, -196609
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %and10 = lshr i32 %mctrl, 1
  %14 = and i32 %and10, 3
  %15 = or i32 %14, %11
  %and19 = lshr i32 %mctrl, 6
  %16 = and i32 %and19, 512
  %17 = or i32 %13, %16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !180
  tail call void @arm_heavy_mb() #7
  %18 = tail call i32 @llvm.bswap.i32(i32 %15)
  %19 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase, align 4
  %add.ptr26 = getelementptr i8, ptr %20, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %18) #7, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !181
  tail call void @arm_heavy_mb() #7
  %21 = tail call i32 @llvm.bswap.i32(i32 %17)
  %22 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase, align 4
  %add.ptr31 = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %21) #7, !srcloc !139
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_uart_get_mctrl(ptr nocapture noundef readonly %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cts_override = getelementptr inbounds %struct.cdns_uart, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %cts_override to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cts_override, align 4, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 40
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !143
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !182
  %and = shl i32 %7, 1
  %8 = and i32 %and, 32
  %and5 = shl i32 %7, 3
  %9 = and i32 %and5, 256
  %10 = or i32 %9, %8
  %11 = and i32 %and, 128
  %12 = or i32 %10, %11
  %and15 = lshr i32 %7, 1
  %13 = and i32 %and15, 64
  %14 = or i32 %12, %13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.end ], [ 352, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_uart_stop_tx(ptr nocapture noundef readonly %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !183
  %3 = or i32 %2, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !184
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #7, !srcloc !139
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_uart_start_tx(ptr noundef %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state.i, align 4
  %tty2.i = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %tty2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tty2.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i

entry.uart_tx_stopped.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %uart_tx_stopped.exit

land.lhs.true.i:                                  ; preds = %entry
  %stopped.i = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 19, i32 1
  %4 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %stopped.i, align 4, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not.i = icmp eq i8 %5, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i.uart_tx_stopped.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %uart_tx_stopped.exit

uart_tx_stopped.exit:                             ; preds = %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, %entry.uart_tx_stopped.exit_crit_edge
  %hw_stopped.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 35
  %6 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw_stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not.i.not = icmp eq i32 %7, 0
  br i1 %tobool4.not.i.not, label %if.end, label %uart_tx_stopped.exit.cleanup_crit_edge

uart_tx_stopped.exit.cleanup_crit_edge:           ; preds = %uart_tx_stopped.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %uart_tx_stopped.exit
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %8 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !185
  %11 = and i32 %10, -805306369
  %12 = or i32 %11, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #7, !srcloc !139
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %state.i, align 4
  %head = getelementptr inbounds %struct.uart_state, ptr %16, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %16, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp = icmp eq i32 %18, %20
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %do.body9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !187
  tail call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase, align 4
  %add.ptr13 = getelementptr i8, ptr %22, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 134217728) #7, !srcloc !139
  tail call fastcc void @cdns_uart_handle_tx(ptr noundef %port)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !188
  tail call void @arm_heavy_mb() #7
  %23 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase, align 4
  %add.ptr18 = getelementptr i8, ptr %24, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 134217728) #7, !srcloc !139
  br label %cleanup

cleanup:                                          ; preds = %do.body9, %if.end.cleanup_crit_edge, %uart_tx_stopped.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_uart_stop_rx(ptr nocapture noundef readonly %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  tail call void @arm_heavy_mb() #7
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1627455488) #7, !srcloc !139
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  %5 = or i32 %4, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !191
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #7, !srcloc !139
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_uart_break_ctl(ptr noundef %port, i32 noundef %ctl) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #7
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !143
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ctl)
  %cmp8 = icmp eq i32 %ctl, -1
  br i1 %cmp8, label %do.body10, label %if.else

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  %or = or i32 %3, 128
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %5 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #7, !srcloc !139
  br label %if.end24

if.else:                                          ; preds = %entry
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp15 = icmp eq i32 %and, 0
  br i1 %cmp15, label %do.body18, label %if.else.if.end24_crit_edge

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

do.body18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  tail call void @arm_heavy_mb() #7
  %or21 = or i32 %3, 256
  %7 = tail call i32 @llvm.bswap.i32(i32 %or21)
  %8 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #7, !srcloc !139
  br label %if.end24

if.end24:                                         ; preds = %do.body18, %if.else.if.end24_crit_edge, %do.body10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_uart_startup(ptr noundef %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %quirks = getelementptr inbounds %struct.cdns_uart, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !195
  tail call void @arm_heavy_mb() #7
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 671088640) #7, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !196
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 50331648) #7, !srcloc !139
  %8 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  %11 = and i32 %10, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool19.not115 = icmp eq i32 %11, 0
  br i1 %tobool19.not115, label %entry.while.end_crit_edge, label %entry.do.end24_crit_edge

entry.do.end24_crit_edge:                         ; preds = %entry
  br label %do.end24

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.end24:                                         ; preds = %do.end24.do.end24_crit_edge, %entry.do.end24_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !198
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !199
  %12 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  %15 = and i32 %14, 50331648
  %tobool19.not = icmp eq i32 %15, 0
  br i1 %tobool19.not, label %do.end24.while.end_crit_edge, label %do.end24.do.end24_crit_edge

do.end24.do.end24_crit_edge:                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end24

do.end24.while.end_crit_edge:                     ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %do.end24.while.end_crit_edge, %entry.while.end_crit_edge
  %16 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !200
  %19 = and i32 %18, -201326593
  %20 = or i32 %19, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #7, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !202
  tail call void @arm_heavy_mb() #7
  %23 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase, align 4
  %add.ptr46 = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 536870912) #7, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  tail call void @arm_heavy_mb() #7
  %25 = load i32, ptr @rx_trigger_level, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %27 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase, align 4
  %add.ptr51 = getelementptr i8, ptr %28, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %26) #7, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !204
  tail call void @arm_heavy_mb() #7
  %29 = load i32, ptr @rx_timeout, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %31 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %membase, align 4
  %add.ptr56 = getelementptr i8, ptr %32, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %30) #7, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !205
  tail call void @arm_heavy_mb() #7
  %33 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase, align 4
  %add.ptr63 = getelementptr i8, ptr %34, i32 20
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  %36 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase, align 4
  %add.ptr68 = getelementptr i8, ptr %37, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 %35) #7, !srcloc !139
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call2) #7
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %38 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %39, ptr noundef nonnull @cdns_uart_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %port) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool71.not = icmp eq i32 %call.i, 0
  br i1 %tobool71.not, label %if.end, label %do.end74

do.end74:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  %42 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.41, i32 noundef %43, i32 noundef %call.i) #10
  br label %cleanup

if.end:                                           ; preds = %while.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %44 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %membase, align 4
  %add.ptr87 = getelementptr i8, ptr %45, i32 8
  br i1 %tobool.not, label %do.body83, label %do.body78

do.body78:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 1629552640) #7, !srcloc !139
  br label %cleanup

do.body83:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 1627455488) #7, !srcloc !139
  br label %cleanup

cleanup:                                          ; preds = %do.body83, %do.body78, %do.end74
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_uart_shutdown(ptr noundef %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #7
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %3 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase, align 4
  %add.ptr12 = getelementptr i8, ptr %4, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %2) #7, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %5 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase, align 4
  %add.ptr17 = getelementptr i8, ptr %6, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 -1) #7, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 671088640) #7, !srcloc !139
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call2) #7
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  %call24 = tail call ptr @free_irq(i32 noundef %10, ptr noundef %port) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_uart_set_termios(ptr noundef %port, ptr noundef %termios, ptr noundef %old) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #7
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  %3 = or i32 %2, 671088640
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !212
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #7, !srcloc !139
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %6 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %uartclk, align 4
  %div = udiv i32 %7, 134215680
  %div14 = udiv i32 %7, 5
  %call15 = tail call i32 @uart_get_baud_rate(ptr noundef %port, ptr noundef %termios, ptr noundef %old, i32 noundef %div, i32 noundef %div14) #7
  %call16 = tail call fastcc i32 @cdns_uart_set_baud_rate(ptr noundef %port, i32 noundef %call15)
  %call17 = tail call i32 @tty_termios_baud_rate(ptr noundef %termios) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @tty_termios_encode_baud_rate(ptr noundef %termios, i32 noundef %call16, i32 noundef %call16) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %8 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %c_cflag, align 4
  tail call void @uart_update_timeout(ptr noundef %port, i32 noundef %9, i32 noundef %call16) #7
  %10 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !213
  %13 = or i32 %12, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !214
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #7, !srcloc !139
  %16 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !215
  %19 = and i32 %18, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool38.not232 = icmp eq i32 %19, 0
  br i1 %tobool38.not232, label %if.end.while.end_crit_edge, label %if.end.do.end43_crit_edge

if.end.do.end43_crit_edge:                        ; preds = %if.end
  br label %do.end43

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.end43:                                         ; preds = %do.end43.do.end43_crit_edge, %if.end.do.end43_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !216
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !217
  %20 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !215
  %23 = and i32 %22, 50331648
  %tobool38.not = icmp eq i32 %23, 0
  br i1 %tobool38.not, label %do.end43.while.end_crit_edge, label %do.end43.do.end43_crit_edge

do.end43.do.end43_crit_edge:                      ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end43

do.end43.while.end_crit_edge:                     ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %do.end43.while.end_crit_edge, %if.end.while.end_crit_edge
  %24 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  %27 = and i32 %26, -1006632961
  %28 = or i32 %27, 335544320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !219
  tail call void @arm_heavy_mb() #7
  %29 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #7, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !220
  tail call void @arm_heavy_mb() #7
  %31 = load i32, ptr @rx_timeout, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %33 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase, align 4
  %add.ptr66 = getelementptr i8, ptr %34, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 %32) #7, !srcloc !139
  %read_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 28
  %35 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 297, ptr %read_status_mask, align 4
  %ignore_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 29
  %36 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %ignore_status_mask, align 4
  %37 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %termios, align 4
  %and67 = and i32 %38, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %while.end.if.end72_crit_edge, label %if.then69

while.end.if.end72_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then69:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 489, ptr %read_status_mask, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %while.end.if.end72_crit_edge
  %40 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %termios, align 4
  %and74 = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.end72.if.end79_crit_edge, label %if.then76

if.end72.if.end79_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

if.then76:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 224, ptr %ignore_status_mask, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then76, %if.end72.if.end79_crit_edge
  %43 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %c_cflag, align 4
  %and81 = and i32 %44, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %cmp82 = icmp eq i32 %and81, 0
  br i1 %cmp82, label %if.then84, label %if.end79.if.end87_crit_edge

if.end79.if.end87_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

if.then84:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ignore_status_mask, align 4
  %or86 = or i32 %46, 481
  store i32 %or86, ptr %ignore_status_mask, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then84, %if.end79.if.end87_crit_edge
  %47 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %membase, align 4
  %add.ptr91 = getelementptr i8, ptr %48, i32 4
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr91) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !221
  %50 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %c_cflag, align 4
  %and96 = and i32 %51, 48
  %52 = zext i32 %and96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %and96, label %sw.bb100 [
    i32 16, label %if.end87.sw.epilog_crit_edge
    i32 32, label %sw.bb98
  ]

if.end87.sw.epilog_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb98:                                          ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb100:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  %or105 = or i32 %51, 48
  %53 = ptrtoint ptr %c_cflag to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or105, ptr %c_cflag, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb100, %sw.bb98, %if.end87.sw.epilog_crit_edge
  %cval.0 = phi i32 [ 0, %sw.bb100 ], [ 4, %sw.bb98 ], [ 6, %if.end87.sw.epilog_crit_edge ]
  %54 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %c_cflag, align 4
  %and114 = and i32 %55, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %sw.epilog.if.end141_crit_edge, label %if.then116

sw.epilog.if.end141_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141

if.then116:                                       ; preds = %sw.epilog
  %and118 = and i32 %55, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.else129, label %if.then120

if.then120:                                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #9
  %and122 = and i32 %55, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  %. = select i1 %tobool123.not, i32 16, i32 24
  br label %if.end141

if.else129:                                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #9
  %and131 = lshr i32 %55, 6
  %56 = and i32 %and131, 8
  br label %if.end141

if.end141:                                        ; preds = %if.else129, %if.then120, %sw.epilog.if.end141_crit_edge
  %.sink = phi i32 [ %56, %if.else129 ], [ %., %if.then120 ], [ 32, %sw.epilog.if.end141_crit_edge ]
  %and107 = shl i32 %55, 1
  %57 = and i32 %and107, 128
  %58 = or i32 %57, %cval.0
  %59 = or i32 %58, %.sink
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !222
  tail call void @arm_heavy_mb() #7
  %or143233 = shl nuw i32 %59, 24
  %.mask = and i32 %49, 16777216
  %60 = or i32 %.mask, %or143233
  %61 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %membase, align 4
  %add.ptr148 = getelementptr i8, ptr %62, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr148, i32 %60) #7, !srcloc !139
  %63 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %membase, align 4
  %add.ptr152 = getelementptr i8, ptr %64, i32 36
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr152) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !223
  %66 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %c_cflag, align 4
  %68 = and i32 %65, -536870913
  %69 = tail call i32 @llvm.bswap.i32(i32 %68)
  %70 = lshr i32 %67, 26
  %71 = and i32 %70, 32
  %cval.3 = or i32 %71, %69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !224
  tail call void @arm_heavy_mb() #7
  %72 = tail call i32 @llvm.bswap.i32(i32 %cval.3)
  %73 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %membase, align 4
  %add.ptr168 = getelementptr i8, ptr %74, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr168, i32 %72) #7, !srcloc !139
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_uart_pm(ptr nocapture noundef readonly %port, i32 noundef %state, i32 noundef %oldstate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state)
  %cond = icmp eq i32 %state, 3
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 22
  %2 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %call.i6 = tail call i32 @__pm_runtime_suspend(ptr noundef %4, i32 noundef 13) #7
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i7 = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @cdns_uart_type(ptr nocapture noundef readonly %port) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 98, i32 %1)
  %cmp = icmp eq i32 %1, 98
  %cond = select i1 %cmp, ptr @.str, ptr null
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_uart_release_port(ptr nocapture noundef %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %0 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mapbase, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %1, i32 noundef 4096) #7
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 4
  tail call void @iounmap(ptr noundef %3) #7
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %membase, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_uart_request_port(ptr nocapture noundef %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %0 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mapbase, align 4
  %call = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %1, i32 noundef 4096, ptr noundef nonnull @.str, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mapbase, align 4
  %call2 = tail call ptr @ioremap(i32 noundef %3, i32 noundef 4096) #7
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %membase, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %do.end, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.43) #10
  %7 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mapbase, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %8, i32 noundef 4096) #7
  br label %return

return:                                           ; preds = %do.end, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ -12, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_uart_config_port(ptr nocapture noundef %port, i32 noundef %flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %mapbase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %0 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mapbase.i, align 4
  %call.i = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %1, i32 noundef 4096, ptr noundef nonnull @.str, i32 noundef 0) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %land.lhs.true.if.end_crit_edge, label %if.end.i

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %land.lhs.true
  %2 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mapbase.i, align 4
  %call2.i = tail call ptr @ioremap(i32 noundef %3, i32 noundef 4096) #7
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2.i, ptr %membase.i, align 4
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %do.end.i, label %if.then

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.43) #10
  %7 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mapbase.i, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %8, i32 noundef 4096) #7
  br label %if.end

if.then:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 98, ptr %type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end.i, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cdns_uart_verify_port(ptr nocapture noundef readonly %port, ptr nocapture noundef readonly %ser) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ser to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ser, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %1, label %entry.return_crit_edge [
    i32 0, label %entry.if.end_crit_edge
    i32 98, label %entry.if.end_crit_edge26
  ]

entry.if.end_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge26
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  %irq3 = getelementptr inbounds %struct.serial_struct, ptr %ser, i32 0, i32 3
  %5 = ptrtoint ptr %irq3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp4.not = icmp eq i32 %4, %6
  br i1 %cmp4.not, label %if.end6, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end6:                                          ; preds = %if.end
  %io_type = getelementptr inbounds %struct.serial_struct, ptr %ser, i32 0, i32 9
  %7 = ptrtoint ptr %io_type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %io_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp7.not = icmp eq i8 %8, 2
  br i1 %cmp7.not, label %if.end10, label %if.end6.return_crit_edge

if.end6.return_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end10:                                         ; preds = %if.end6
  %iobase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %9 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase, align 4
  %port11 = getelementptr inbounds %struct.serial_struct, ptr %ser, i32 0, i32 2
  %11 = ptrtoint ptr %port11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp12.not = icmp eq i32 %10, %12
  br i1 %cmp12.not, label %if.end15, label %if.end10.return_crit_edge

if.end10.return_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %hub6 = getelementptr inbounds %struct.serial_struct, ptr %ser, i32 0, i32 11
  %13 = ptrtoint ptr %hub6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hub6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp16.not = icmp eq i32 %14, 0
  %. = select i1 %cmp16.not, i32 0, i32 -22
  br label %return

return:                                           ; preds = %if.end15, %if.end10.return_crit_edge, %if.end6.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ -22, %if.end6.return_crit_edge ], [ -22, %if.end10.return_crit_edge ], [ %., %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_uart_poll_put_char(ptr noundef %port, i8 noundef zeroext %c) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #7
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr50 = getelementptr i8, ptr %1, i32 44
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !225
  %3 = and i32 %2, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not51 = icmp eq i32 %3, 0
  br i1 %tobool.not51, label %entry.do.end12_crit_edge, label %entry.do.body17_crit_edge

entry.do.body17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

entry.do.end12_crit_edge:                         ; preds = %entry
  br label %do.end12

do.end12:                                         ; preds = %do.end12.do.end12_crit_edge, %entry.do.end12_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !226
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !227
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 44
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !225
  %7 = and i32 %6, 134217728
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.end12.do.end12_crit_edge, label %do.end12.do.body17_crit_edge

do.end12.do.body17_crit_edge:                     ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

do.end12.do.end12_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.body17:                                        ; preds = %do.end12.do.body17_crit_edge, %entry.do.body17_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %conv20 = zext i8 %c to i32
  %8 = shl nuw i32 %conv20, 24
  %9 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase, align 4
  %add.ptr22 = getelementptr i8, ptr %10, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %8) #7, !srcloc !139
  %11 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase, align 4
  %add.ptr2752 = getelementptr i8, ptr %12, i32 44
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2752) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  %14 = and i32 %13, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool32.not53 = icmp eq i32 %14, 0
  br i1 %tobool32.not53, label %do.body17.do.end39_crit_edge, label %do.body17.while.end44_crit_edge

do.body17.while.end44_crit_edge:                  ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end44

do.body17.do.end39_crit_edge:                     ; preds = %do.body17
  br label %do.end39

do.end39:                                         ; preds = %do.end39.do.end39_crit_edge, %do.body17.do.end39_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !230
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !231
  %15 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase, align 4
  %add.ptr27 = getelementptr i8, ptr %16, i32 44
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  %18 = and i32 %17, 134217728
  %tobool32.not = icmp eq i32 %18, 0
  br i1 %tobool32.not, label %do.end39.do.end39_crit_edge, label %do.end39.while.end44_crit_edge

do.end39.while.end44_crit_edge:                   ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end44

do.end39.do.end39_crit_edge:                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39

while.end44:                                      ; preds = %do.end39.while.end44_crit_edge, %do.body17.while.end44_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_uart_poll_get_char(ptr noundef %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #7
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 44
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  %3 = and i32 %2, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr11 = getelementptr i8, ptr %5, i32 48
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #7, !srcloc !143
  %7 = lshr i32 %6, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %c.0 = phi i32 [ %7, %if.else ], [ 16711680, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call2) #7
  ret i32 %c.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cdns_uart_handle_tx(ptr noundef %dev_id) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 30
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
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !234
  tail call void @arm_heavy_mb() #7
  %membase = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 2
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 134217728) #7, !srcloc !139
  br label %if.end41

if.else:                                          ; preds = %entry
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 23
  %8 = ptrtoint ptr %fifosize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fifosize, align 4
  %membase10 = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not59 = icmp eq i32 %9, 0
  br i1 %tobool.not59, label %if.else.while.end_crit_edge, label %land.lhs.true.lr.ph

if.else.while.end_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

land.lhs.true.lr.ph:                              ; preds = %if.else
  %tx = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 5
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body14.land.lhs.true_crit_edge, %land.lhs.true.lr.ph
  %numbytes.060 = phi i32 [ %9, %land.lhs.true.lr.ph ], [ %dec, %do.body14.land.lhs.true_crit_edge ]
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state, align 4
  %head5 = getelementptr inbounds %struct.uart_state, ptr %11, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %head5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %head5, align 4
  %tail8 = getelementptr inbounds %struct.uart_state, ptr %11, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %tail8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tail8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp9 = icmp eq i32 %13, %15
  br i1 %cmp9, label %land.lhs.true.while.end_crit_edge, label %land.rhs

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

land.rhs:                                         ; preds = %land.lhs.true
  %16 = ptrtoint ptr %membase10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase10, align 4
  %add.ptr11 = getelementptr i8, ptr %17, i32 44
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !235
  %19 = and i32 %18, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool13.not = icmp eq i32 %19, 0
  br i1 %tobool13.not, label %do.body14, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.body14:                                        ; preds = %land.rhs
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !236
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %state, align 4
  %xmit18 = getelementptr inbounds %struct.uart_state, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %xmit18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xmit18, align 4
  %tail21 = getelementptr inbounds %struct.uart_state, ptr %21, i32 0, i32 2, i32 2
  %24 = ptrtoint ptr %tail21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tail21, align 4
  %arrayidx = getelementptr i8, ptr %23, i32 %25
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %27 to i32
  %28 = shl nuw i32 %conv, 24
  %29 = ptrtoint ptr %membase10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase10, align 4
  %add.ptr23 = getelementptr i8, ptr %30, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %28) #7, !srcloc !139
  %31 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx, align 4
  %inc = add i32 %32, 1
  store i32 %inc, ptr %tx, align 4
  %33 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %state, align 4
  %tail26 = getelementptr inbounds %struct.uart_state, ptr %34, i32 0, i32 2, i32 2
  %35 = ptrtoint ptr %tail26 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tail26, align 4
  %add = add i32 %36, 1
  %and27 = and i32 %add, 4095
  store i32 %and27, ptr %tail26, align 4
  %dec = add i32 %numbytes.060, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.body14.while.end_crit_edge, label %do.body14.land.lhs.true_crit_edge

do.body14.land.lhs.true_crit_edge:                ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

do.body14.while.end_crit_edge:                    ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %do.body14.while.end_crit_edge, %land.rhs.while.end_crit_edge, %land.lhs.true.while.end_crit_edge, %if.else.while.end_crit_edge
  %37 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %state, align 4
  %head33 = getelementptr inbounds %struct.uart_state, ptr %38, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %head33 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %head33, align 4
  %tail36 = getelementptr inbounds %struct.uart_state, ptr %38, i32 0, i32 2, i32 2
  %41 = ptrtoint ptr %tail36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tail36, align 4
  %sub = sub i32 %40, %42
  %and37 = and i32 %sub, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %cmp38 = icmp eq i32 %and37, 0
  br i1 %cmp38, label %if.then40, label %while.end.if.end41_crit_edge

while.end.if.end41_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then40:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @uart_write_wakeup(ptr noundef %dev_id) #7
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %while.end.if.end41_crit_edge, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_uart_isr(i32 noundef %irq, ptr noundef %dev_id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %dev_id) #7
  %membase = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !143
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !238
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %2) #7, !srcloc !139
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @cdns_uart_handle_tx(ptr noundef %dev_id)
  %and4 = and i32 %3, -9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %isrstatus.0 = phi i32 [ %and4, %if.then ], [ %3, %entry.if.end_crit_edge ]
  %and5 = and i32 %isrstatus.0, 8679
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end17_crit_edge, label %land.lhs.true

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !239
  %9 = and i32 %8, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool15.not = icmp eq i32 %9, 0
  br i1 %tobool15.not, label %if.then16, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then16:                                        ; preds = %land.lhs.true
  %private_data.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 59
  %10 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data.i, align 4
  %quirks.i = getelementptr inbounds %struct.cdns_uart, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %14 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase, align 4
  %add.ptr261267272.i = getelementptr i8, ptr %15, i32 44
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr261267272.i) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !240
  %17 = and i32 %16, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not.not262268273.i = icmp eq i32 %17, 0
  br i1 %cmp.not.not262268273.i, label %while.body.lr.ph.lr.ph.lr.ph.i, label %if.then16.cdns_uart_handle_rx.exit_crit_edge

if.then16.cdns_uart_handle_rx.exit_crit_edge:     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_uart_handle_rx.exit

while.body.lr.ph.lr.ph.lr.ph.i:                   ; preds = %if.then16
  %rx.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 4
  %read_status_mask.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 28
  %brk.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 9
  %state1.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 30
  %handle_break.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 17
  %has_sysrq.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 48
  %cons.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 32
  %line.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 41
  %sysrq.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 46
  %flags.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 33
  %ignore_status_mask.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 29
  %parity.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 8
  %frame.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 6
  %overrun.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 7
  br label %while.body.lr.ph.lr.ph.i

while.body.lr.ph.lr.ph.i:                         ; preds = %while.cond.outer.outer.backedge.i.while.body.lr.ph.lr.ph.i_crit_edge, %while.body.lr.ph.lr.ph.lr.ph.i
  %isrstatus.addr.0.ph.ph277.i = phi i32 [ %isrstatus.0, %while.body.lr.ph.lr.ph.lr.ph.i ], [ %isrstatus.addr.0.ph.ph.be.i, %while.cond.outer.outer.backedge.i.while.body.lr.ph.lr.ph.i_crit_edge ]
  %rxbs_status.0.ph.ph276.i = phi i32 [ 0, %while.body.lr.ph.lr.ph.lr.ph.i ], [ %rxbs_status.1.i, %while.cond.outer.outer.backedge.i.while.body.lr.ph.lr.ph.i_crit_edge ]
  %framerrprocessed.0.ph.ph275.i = phi i32 [ 0, %while.body.lr.ph.lr.ph.lr.ph.i ], [ %framerrprocessed.0263281.i, %while.cond.outer.outer.backedge.i.while.body.lr.ph.lr.ph.i_crit_edge ]
  %status.0.ph.ph274.i = phi i8 [ 0, %while.body.lr.ph.lr.ph.lr.ph.i ], [ %status.0.ph.ph.be.i, %while.cond.outer.outer.backedge.i.while.body.lr.ph.lr.ph.i_crit_edge ]
  %and19.i = and i32 %isrstatus.addr.0.ph.ph277.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp ne i32 %and19.i, 0
  %or.cond.not.i = select i1 %tobool.not.i, i1 %tobool20.not.i, i1 false
  br label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %uart_handle_break.exit.i.while.body.lr.ph.i_crit_edge, %while.body.lr.ph.lr.ph.i
  %rxbs_status.0.ph271.i = phi i32 [ %rxbs_status.0.ph.ph276.i, %while.body.lr.ph.lr.ph.i ], [ %rxbs_status.1.i, %uart_handle_break.exit.i.while.body.lr.ph.i_crit_edge ]
  %framerrprocessed.0.ph270.i = phi i32 [ %framerrprocessed.0.ph.ph275.i, %while.body.lr.ph.lr.ph.i ], [ %framerrprocessed.0263.i, %uart_handle_break.exit.i.while.body.lr.ph.i_crit_edge ]
  %status.0.ph269.i = phi i8 [ %status.0.ph.ph274.i, %while.body.lr.ph.lr.ph.i ], [ 1, %uart_handle_break.exit.i.while.body.lr.ph.i_crit_edge ]
  br label %while.body.i

while.body.i:                                     ; preds = %if.then23.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %rxbs_status.0264.i = phi i32 [ %rxbs_status.0.ph271.i, %while.body.lr.ph.i ], [ %rxbs_status.1.i, %if.then23.i.while.body.i_crit_edge ]
  %framerrprocessed.0263.i = phi i32 [ %framerrprocessed.0.ph270.i, %while.body.lr.ph.i ], [ 1, %if.then23.i.while.body.i_crit_edge ]
  br i1 %tobool.not.i, label %while.body.i.if.end.i_crit_edge, label %if.then.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase, align 4
  %add.ptr7.i = getelementptr i8, ptr %19, i32 72
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #7, !srcloc !143
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !241
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i.if.end.i_crit_edge
  %rxbs_status.1.i = phi i32 [ %21, %if.then.i ], [ %rxbs_status.0264.i, %while.body.i.if.end.i_crit_edge ]
  %22 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase, align 4
  %add.ptr14.i = getelementptr i8, ptr %23, i32 48
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !242
  %25 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx.i, align 4
  %inc.i = add i32 %26, 1
  store i32 %inc.i, ptr %rx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool22.not.i = icmp eq i32 %24, 0
  %or.cond154.i = select i1 %or.cond.not.i, i1 %tobool22.not.i, i1 false
  br i1 %or.cond154.i, label %if.then23.i, label %if.end25.i

if.then23.i:                                      ; preds = %if.end.i
  %27 = ptrtoint ptr %read_status_mask.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %read_status_mask.i, align 4
  %or.i = or i32 %28, 8192
  store i32 %or.i, ptr %read_status_mask.i, align 4
  %29 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 44
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !240
  %32 = and i32 %31, 33554432
  %cmp.not.not.i = icmp eq i32 %32, 0
  br i1 %cmp.not.not.i, label %if.then23.i.while.body.i_crit_edge, label %if.then23.i.cdns_uart_handle_rx.exit_crit_edge

if.then23.i.cdns_uart_handle_rx.exit_crit_edge:   ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_uart_handle_rx.exit

if.then23.i.while.body.i_crit_edge:               ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end25.i:                                       ; preds = %if.end.i
  %and28.i = and i32 %rxbs_status.1.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  %or.cond155.i = select i1 %tobool.not.i, i1 true, i1 %tobool29.not.i
  br i1 %or.cond155.i, label %if.end37.loopexit.i, label %if.then30.i

if.then30.i:                                      ; preds = %if.end25.i
  %33 = ptrtoint ptr %brk.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %brk.i, align 4
  %inc32.i = add i32 %34, 1
  store i32 %inc32.i, ptr %brk.i, align 4
  %35 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %state1.i.i, align 4
  %37 = ptrtoint ptr %handle_break.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %handle_break.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i, label %if.then30.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then30.i.if.end.i.i_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %38(ptr noundef %dev_id) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then30.i.if.end.i.i_crit_edge
  %39 = ptrtoint ptr %has_sysrq.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %has_sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool3.not.i.i = icmp eq i8 %40, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end15.i.loopexit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.if.end15.i.loopexit.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i.loopexit.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %41 = ptrtoint ptr %cons.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cons.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %42, null
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.if.end15.i.loopexit.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.if.end15.i.loopexit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i.loopexit.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %index.i.i = getelementptr inbounds %struct.console, ptr %42, i32 0, i32 9
  %43 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %index.i.i, align 2
  %conv7.i.i = sext i16 %44 to i32
  %45 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %line.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %conv7.i.i)
  %cmp.i.i = icmp eq i32 %46, %conv7.i.i
  br i1 %cmp.i.i, label %if.then9.i.i, label %land.lhs.true5.i.i.if.end15.i.loopexit.i_crit_edge

land.lhs.true5.i.i.if.end15.i.loopexit.i_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i.loopexit.i

if.then9.i.i:                                     ; preds = %land.lhs.true5.i.i
  %47 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool10.not.i.i = icmp eq i32 %48, 0
  br i1 %tobool10.not.i.i, label %uart_handle_break.exit.i, label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  %50 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %if.end15.i.i

if.end15.i.loopexit.i:                            ; preds = %land.lhs.true5.i.i.if.end15.i.loopexit.i_crit_edge, %land.lhs.true.i.i.if.end15.i.loopexit.i_crit_edge, %if.end.i.i.if.end15.i.loopexit.i_crit_edge
  %51 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.end15.i.loopexit.i, %if.end13.i.i
  %.lcssa243.i = phi i32 [ %51, %if.end15.i.loopexit.i ], [ %49, %if.end13.i.i ]
  %52 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %53, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool16.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end15.i.i.if.end37.i_crit_edge, label %if.then17.i.i

if.end15.i.i.if.end37.i_crit_edge:                ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i

if.then17.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %tty.i.i = getelementptr inbounds %struct.tty_port, ptr %36, i32 0, i32 1
  %54 = ptrtoint ptr %tty.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tty.i.i, align 4
  tail call void @do_SAK(ptr noundef %55) #7
  br label %if.end37.i

uart_handle_break.exit.i:                         ; preds = %if.then9.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %56 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %56, 500
  %57 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add.i.i, ptr %sysrq.i.i, align 4
  %58 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %membase, align 4
  %add.ptr261.i = getelementptr i8, ptr %59, i32 44
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr261.i) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !240
  %61 = and i32 %60, 33554432
  %cmp.not.not262.i = icmp eq i32 %61, 0
  br i1 %cmp.not.not262.i, label %uart_handle_break.exit.i.while.body.lr.ph.i_crit_edge, label %uart_handle_break.exit.i.cdns_uart_handle_rx.exit_crit_edge

uart_handle_break.exit.i.cdns_uart_handle_rx.exit_crit_edge: ; preds = %uart_handle_break.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_uart_handle_rx.exit

uart_handle_break.exit.i.while.body.lr.ph.i_crit_edge: ; preds = %uart_handle_break.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph.i

if.end37.loopexit.i:                              ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  %62 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.end37.loopexit.i, %if.then17.i.i, %if.end15.i.i.if.end37.i_crit_edge
  %.lcssa242.i = phi i32 [ %.lcssa243.i, %if.then17.i.i ], [ %.lcssa243.i, %if.end15.i.i.if.end37.i_crit_edge ], [ %62, %if.end37.loopexit.i ]
  %status.1.i = phi i8 [ 1, %if.then17.i.i ], [ 1, %if.end15.i.i.if.end37.i_crit_edge ], [ %status.0.ph269.i, %if.end37.loopexit.i ]
  %63 = ptrtoint ptr %read_status_mask.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %read_status_mask.i, align 4
  %65 = ptrtoint ptr %ignore_status_mask.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ignore_status_mask.i, align 4
  %neg.i = xor i32 %66, -1
  %and39.i = and i32 %64, %neg.i
  %and40.i = and i32 %and39.i, %isrstatus.addr.0.ph.ph277.i
  %and48.i = and i32 %64, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  %or.cond156.i = select i1 %tobool22.not.i, i1 true, i1 %tobool49.not.i
  br i1 %or.cond156.i, label %if.end37.i.if.end60.i_crit_edge, label %if.then50.i

if.end37.i.if.end60.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60.i

if.then50.i:                                      ; preds = %if.end37.i
  %and52.i = and i32 %64, -8193
  %67 = ptrtoint ptr %read_status_mask.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %and52.i, ptr %read_status_mask.i, align 4
  %68 = ptrtoint ptr %brk.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %brk.i, align 4
  %inc55.i = add i32 %69, 1
  store i32 %inc55.i, ptr %brk.i, align 4
  %70 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %state1.i.i, align 4
  %72 = ptrtoint ptr %handle_break.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %handle_break.i.i, align 4
  %tobool.not.i162.i = icmp eq ptr %73, null
  br i1 %tobool.not.i162.i, label %if.then50.i.if.end.i166.i_crit_edge, label %if.then.i163.i

if.then50.i.if.end.i166.i_crit_edge:              ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i166.i

if.then.i163.i:                                   ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %73(ptr noundef %dev_id) #7
  br label %if.end.i166.i

if.end.i166.i:                                    ; preds = %if.then.i163.i, %if.then50.i.if.end.i166.i_crit_edge
  %74 = ptrtoint ptr %has_sysrq.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %has_sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool3.not.i165.i = icmp eq i8 %75, 0
  br i1 %tobool3.not.i165.i, label %if.end.i166.i.if.end15.i184.i_crit_edge, label %land.lhs.true.i169.i

if.end.i166.i.if.end15.i184.i_crit_edge:          ; preds = %if.end.i166.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i184.i

land.lhs.true.i169.i:                             ; preds = %if.end.i166.i
  %76 = ptrtoint ptr %cons.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cons.i.i, align 4
  %tobool4.not.i168.i = icmp eq ptr %77, null
  br i1 %tobool4.not.i168.i, label %land.lhs.true.i169.i.if.end15.i184.i_crit_edge, label %land.lhs.true5.i174.i

land.lhs.true.i169.i.if.end15.i184.i_crit_edge:   ; preds = %land.lhs.true.i169.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i184.i

land.lhs.true5.i174.i:                            ; preds = %land.lhs.true.i169.i
  %index.i170.i = getelementptr inbounds %struct.console, ptr %77, i32 0, i32 9
  %78 = ptrtoint ptr %index.i170.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %index.i170.i, align 2
  %conv7.i171.i = sext i16 %79 to i32
  %80 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %line.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %conv7.i171.i)
  %cmp.i173.i = icmp eq i32 %81, %conv7.i171.i
  br i1 %cmp.i173.i, label %if.then9.i177.i, label %land.lhs.true5.i174.i.if.end15.i184.i_crit_edge

land.lhs.true5.i174.i.if.end15.i184.i_crit_edge:  ; preds = %land.lhs.true5.i174.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i184.i

if.then9.i177.i:                                  ; preds = %land.lhs.true5.i174.i
  %82 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool10.not.i176.i = icmp eq i32 %83, 0
  br i1 %tobool10.not.i176.i, label %uart_handle_break.exit188.i, label %if.end13.i180.i

if.end13.i180.i:                                  ; preds = %if.then9.i177.i
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %if.end15.i184.i

if.end15.i184.i:                                  ; preds = %if.end13.i180.i, %land.lhs.true5.i174.i.if.end15.i184.i_crit_edge, %land.lhs.true.i169.i.if.end15.i184.i_crit_edge, %if.end.i166.i.if.end15.i184.i_crit_edge
  %85 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags.i.i, align 4
  %and.i182.i = and i32 %86, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i182.i)
  %tobool16.not.i183.i = icmp eq i32 %and.i182.i, 0
  br i1 %tobool16.not.i183.i, label %if.end15.i184.i.if.end60.i_crit_edge, label %if.then17.i186.i

if.end15.i184.i.if.end60.i_crit_edge:             ; preds = %if.end15.i184.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60.i

if.then17.i186.i:                                 ; preds = %if.end15.i184.i
  call void @__sanitizer_cov_trace_pc() #9
  %tty.i185.i = getelementptr inbounds %struct.tty_port, ptr %71, i32 0, i32 1
  %87 = ptrtoint ptr %tty.i185.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %tty.i185.i, align 4
  tail call void @do_SAK(ptr noundef %88) #7
  br label %if.end60.i

uart_handle_break.exit188.i:                      ; preds = %if.then9.i177.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %89 = load volatile i32, ptr @jiffies, align 128
  %add.i178.i = add i32 %89, 500
  %90 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %add.i178.i, ptr %sysrq.i.i, align 4
  br label %while.cond.outer.outer.backedge.i

if.end60.i:                                       ; preds = %if.then17.i186.i, %if.end15.i184.i.if.end60.i_crit_edge, %if.end37.i.if.end60.i_crit_edge
  %91 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.not.i190.i = icmp eq i32 %92, 0
  br i1 %tobool.not.i190.i, label %if.end60.i.if.end64.i_crit_edge, label %if.end.i191.i

if.end60.i.if.end64.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64.i

if.end.i191.i:                                    ; preds = %if.end60.i
  br i1 %tobool22.not.i, label %if.end.i191.i.uart_handle_sysrq_char.exit.thread317.i_crit_edge, label %land.lhs.true.i193.i

if.end.i191.i.uart_handle_sysrq_char.exit.thread317.i_crit_edge: ; preds = %if.end.i191.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %uart_handle_sysrq_char.exit.thread317.i

land.lhs.true.i193.i:                             ; preds = %if.end.i191.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %93 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %93, %92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i192.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i192.i, label %if.then3.i.i, label %land.lhs.true.i193.i.uart_handle_sysrq_char.exit.thread317.i_crit_edge

land.lhs.true.i193.i.uart_handle_sysrq_char.exit.thread317.i_crit_edge: ; preds = %land.lhs.true.i193.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %uart_handle_sysrq_char.exit.thread317.i

if.then3.i.i:                                     ; preds = %land.lhs.true.i193.i
  %call.i.i = tail call i32 @sysrq_mask() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i194.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i194.i, label %if.end7.i.i, label %uart_handle_sysrq_char.exit.i

if.end7.i.i:                                      ; preds = %if.then3.i.i
  %call8.i.i = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %dev_id, i32 noundef %.lcssa242.i) #7
  br i1 %call8.i.i, label %if.end7.i.i.while.cond.outer.outer.backedge.i_crit_edge, label %if.end7.i.i.uart_handle_sysrq_char.exit.thread317.i_crit_edge

if.end7.i.i.uart_handle_sysrq_char.exit.thread317.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %uart_handle_sysrq_char.exit.thread317.i

if.end7.i.i.while.cond.outer.outer.backedge.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.outer.outer.backedge.i

uart_handle_sysrq_char.exit.thread317.i:          ; preds = %if.end7.i.i.uart_handle_sysrq_char.exit.thread317.i_crit_edge, %land.lhs.true.i193.i.uart_handle_sysrq_char.exit.thread317.i_crit_edge, %if.end.i191.i.uart_handle_sysrq_char.exit.thread317.i_crit_edge
  %94 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %if.end64.i

uart_handle_sysrq_char.exit.i:                    ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @handle_sysrq(i32 noundef %.lcssa242.i) #7
  %95 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %while.cond.outer.outer.backedge.i

if.end64.i:                                       ; preds = %uart_handle_sysrq_char.exit.thread317.i, %if.end60.i.if.end64.i_crit_edge
  br i1 %tobool.not.i, label %if.else.i, label %if.then66.i

if.then66.i:                                      ; preds = %if.end64.i
  %and67.i = and i32 %rxbs_status.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.i)
  %tobool68.not.i = icmp eq i32 %and67.i, 0
  %and70.i = and i32 %and39.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.i)
  %tobool71.not.i = icmp eq i32 %and70.i, 0
  %or.cond157.i = select i1 %tobool68.not.i, i1 true, i1 %tobool71.not.i
  br i1 %or.cond157.i, label %if.then66.i.if.end75.i_crit_edge, label %if.then72.i

if.then66.i.if.end75.i_crit_edge:                 ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75.i

if.then72.i:                                      ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #9
  %96 = ptrtoint ptr %parity.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %parity.i, align 4
  %inc74.i = add i32 %97, 1
  store i32 %inc74.i, ptr %parity.i, align 4
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then72.i, %if.then66.i.if.end75.i_crit_edge
  %status.2.i = phi i8 [ 3, %if.then72.i ], [ %status.1.i, %if.then66.i.if.end75.i_crit_edge ]
  %and76.i = and i32 %rxbs_status.1.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.i)
  %tobool77.not.i = icmp eq i32 %and76.i, 0
  %or.cond158.i = select i1 %tobool77.not.i, i1 true, i1 %tobool71.not.i
  br i1 %or.cond158.i, label %if.end75.i.if.end101.i_crit_edge, label %if.end75.i.if.end101.sink.split.i_crit_edge

if.end75.i.if.end101.sink.split.i_crit_edge:      ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101.sink.split.i

if.end75.i.if.end101.i_crit_edge:                 ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101.i

if.else.i:                                        ; preds = %if.end64.i
  %and85.i = and i32 %and40.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85.i)
  %tobool86.not.i = icmp eq i32 %and85.i, 0
  br i1 %tobool86.not.i, label %if.else.i.if.end91.i_crit_edge, label %if.then87.i

if.else.i.if.end91.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91.i

if.then87.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %parity.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %parity.i, align 4
  %inc90.i = add i32 %99, 1
  store i32 %inc90.i, ptr %parity.i, align 4
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.then87.i, %if.else.i.if.end91.i_crit_edge
  %status.3.i = phi i8 [ 3, %if.then87.i ], [ %status.1.i, %if.else.i.if.end91.i_crit_edge ]
  %and92.i = and i32 %and40.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92.i)
  %tobool93.not.i = icmp ne i32 %and92.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %framerrprocessed.0263.i)
  %tobool95.not.i = icmp eq i32 %framerrprocessed.0263.i, 0
  %or.cond159.i = select i1 %tobool93.not.i, i1 %tobool95.not.i, i1 false
  br i1 %or.cond159.i, label %if.end91.i.if.end101.sink.split.i_crit_edge, label %if.end91.i.if.end101.i_crit_edge

if.end91.i.if.end101.i_crit_edge:                 ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101.i

if.end91.i.if.end101.sink.split.i_crit_edge:      ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101.sink.split.i

if.end101.sink.split.i:                           ; preds = %if.end91.i.if.end101.sink.split.i_crit_edge, %if.end75.i.if.end101.sink.split.i_crit_edge
  %framerrprocessed.0263282.ph.i = phi i32 [ %framerrprocessed.0263.i, %if.end75.i.if.end101.sink.split.i_crit_edge ], [ 0, %if.end91.i.if.end101.sink.split.i_crit_edge ]
  %100 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %frame.i, align 4
  %inc99.i = add i32 %101, 1
  store i32 %inc99.i, ptr %frame.i, align 4
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.end101.sink.split.i, %if.end91.i.if.end101.i_crit_edge, %if.end75.i.if.end101.i_crit_edge
  %framerrprocessed.0263282.i = phi i32 [ %framerrprocessed.0263.i, %if.end75.i.if.end101.i_crit_edge ], [ %framerrprocessed.0263.i, %if.end91.i.if.end101.i_crit_edge ], [ %framerrprocessed.0263282.ph.i, %if.end101.sink.split.i ]
  %status.4.i = phi i8 [ %status.2.i, %if.end75.i.if.end101.i_crit_edge ], [ %status.3.i, %if.end91.i.if.end101.i_crit_edge ], [ 2, %if.end101.sink.split.i ]
  %and102.i = and i32 %and40.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102.i)
  %tobool103.not.i = icmp eq i32 %and102.i, 0
  br i1 %tobool103.not.i, label %if.end101.i.if.end109.i_crit_edge, label %if.then104.i

if.end101.i.if.end109.i_crit_edge:                ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109.i

if.then104.i:                                     ; preds = %if.end101.i
  %102 = ptrtoint ptr %overrun.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %overrun.i, align 4
  %inc106.i = add i32 %103, 1
  store i32 %inc106.i, ptr %overrun.i, align 4
  %104 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %state1.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.tty_bufhead, ptr %105, i32 0, i32 8
  %106 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %tail.i.i, align 4
  %flags.i196.i = getelementptr inbounds %struct.tty_buffer, ptr %107, i32 0, i32 5
  %108 = ptrtoint ptr %flags.i196.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %flags.i196.i, align 4
  %and.i197.i = and i32 %109, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i197.i)
  %tobool.not.i198.i = icmp eq i32 %and.i197.i, 0
  br i1 %tobool.not.i198.i, label %land.lhs.true.i199.i, label %if.then104.i.if.end12.i.i_crit_edge

if.then104.i.if.end12.i.i_crit_edge:              ; preds = %if.then104.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i.i

land.lhs.true.i199.i:                             ; preds = %if.then104.i
  %used.i.i = getelementptr inbounds %struct.tty_buffer, ptr %107, i32 0, i32 1
  %110 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %used.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.tty_buffer, ptr %107, i32 0, i32 2
  %112 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %111, i32 %113)
  %cmp3.i.i = icmp slt i32 %111, %113
  br i1 %cmp3.i.i, label %if.end.i201.i, label %land.lhs.true.i199.i.if.end12.i.i_crit_edge

land.lhs.true.i199.i.if.end12.i.i_crit_edge:      ; preds = %land.lhs.true.i199.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i.i

if.end.i201.i:                                    ; preds = %land.lhs.true.i199.i
  call void @__sanitizer_cov_trace_pc() #9
  %data.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %107, i32 0, i32 6
  %add.ptr.i.i.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %111
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %113
  %114 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 4, ptr %add.ptr.i.i.i, align 1
  %115 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %used.i.i, align 4
  %inc.i.i = add i32 %116, 1
  store i32 %inc.i.i, ptr %used.i.i, align 4
  %add.ptr.i1.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %116
  %117 = ptrtoint ptr %add.ptr.i1.i.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %add.ptr.i1.i.i, align 1
  br label %if.end109.i

if.end12.i.i:                                     ; preds = %land.lhs.true.i199.i.if.end12.i.i_crit_edge, %if.then104.i.if.end12.i.i_crit_edge
  %call13.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %105, i8 noundef zeroext 0, i8 noundef zeroext 4) #7
  br label %if.end109.i

if.end109.i:                                      ; preds = %if.end12.i.i, %if.end.i201.i, %if.end101.i.if.end109.i_crit_edge
  %118 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %state1.i.i, align 4
  %conv.i = trunc i32 %.lcssa242.i to i8
  %tail.i202.i = getelementptr inbounds %struct.tty_bufhead, ptr %119, i32 0, i32 8
  %120 = ptrtoint ptr %tail.i202.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %tail.i202.i, align 4
  %flags.i203.i = getelementptr inbounds %struct.tty_buffer, ptr %121, i32 0, i32 5
  %122 = ptrtoint ptr %flags.i203.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %flags.i203.i, align 4
  %and.i204.i = and i32 %123, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i204.i)
  %tobool.not.i205.i = icmp eq i32 %and.i204.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %status.4.i)
  %cmp.i206.i = icmp eq i8 %status.4.i, 0
  %124 = or i1 %cmp.i206.i, %tobool.not.i205.i
  br i1 %124, label %land.lhs.true.i210.i, label %if.end109.i.if.end12.i221.i_crit_edge

if.end109.i.if.end12.i221.i_crit_edge:            ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i221.i

land.lhs.true.i210.i:                             ; preds = %if.end109.i
  %used.i207.i = getelementptr inbounds %struct.tty_buffer, ptr %121, i32 0, i32 1
  %125 = ptrtoint ptr %used.i207.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %used.i207.i, align 4
  %size.i208.i = getelementptr inbounds %struct.tty_buffer, ptr %121, i32 0, i32 2
  %127 = ptrtoint ptr %size.i208.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %size.i208.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %128)
  %cmp3.i209.i = icmp slt i32 %126, %128
  br i1 %cmp3.i209.i, label %if.then.i211.i, label %land.lhs.true.i210.i.if.end12.i221.i_crit_edge

land.lhs.true.i210.i.if.end12.i221.i_crit_edge:   ; preds = %land.lhs.true.i210.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i221.i

if.then.i211.i:                                   ; preds = %land.lhs.true.i210.i
  br i1 %tobool.not.i205.i, label %if.then8.i215.i, label %if.then.i211.i.if.end.i219.i_crit_edge

if.then.i211.i.if.end.i219.i_crit_edge:           ; preds = %if.then.i211.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i219.i

if.then8.i215.i:                                  ; preds = %if.then.i211.i
  call void @__sanitizer_cov_trace_pc() #9
  %data.i.i.i212.i = getelementptr inbounds %struct.tty_buffer, ptr %121, i32 0, i32 6
  %add.ptr.i.i.i213.i = getelementptr i8, ptr %data.i.i.i212.i, i32 %126
  %add.ptr.i.i214.i = getelementptr i8, ptr %add.ptr.i.i.i213.i, i32 %128
  %129 = ptrtoint ptr %add.ptr.i.i214.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %status.4.i, ptr %add.ptr.i.i214.i, align 1
  br label %if.end.i219.i

if.end.i219.i:                                    ; preds = %if.then8.i215.i, %if.then.i211.i.if.end.i219.i_crit_edge
  %130 = ptrtoint ptr %used.i207.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %used.i207.i, align 4
  %inc.i216.i = add i32 %131, 1
  store i32 %inc.i216.i, ptr %used.i207.i, align 4
  %data.i.i217.i = getelementptr inbounds %struct.tty_buffer, ptr %121, i32 0, i32 6
  %add.ptr.i1.i218.i = getelementptr i8, ptr %data.i.i217.i, i32 %131
  %132 = ptrtoint ptr %add.ptr.i1.i218.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %conv.i, ptr %add.ptr.i1.i218.i, align 1
  br label %while.cond.outer.outer.backedge.i

if.end12.i221.i:                                  ; preds = %land.lhs.true.i210.i.if.end12.i221.i_crit_edge, %if.end109.i.if.end12.i221.i_crit_edge
  %call13.i220.i = tail call i32 @__tty_insert_flip_char(ptr noundef %119, i8 noundef zeroext %conv.i, i8 noundef zeroext %status.4.i) #7
  br label %while.cond.outer.outer.backedge.i

while.cond.outer.outer.backedge.i:                ; preds = %if.end12.i221.i, %if.end.i219.i, %uart_handle_sysrq_char.exit.i, %if.end7.i.i.while.cond.outer.outer.backedge.i_crit_edge, %uart_handle_break.exit188.i
  %framerrprocessed.0263281.i = phi i32 [ %framerrprocessed.0263.i, %uart_handle_break.exit188.i ], [ %framerrprocessed.0263.i, %uart_handle_sysrq_char.exit.i ], [ %framerrprocessed.0263282.i, %if.end.i219.i ], [ %framerrprocessed.0263282.i, %if.end12.i221.i ], [ %framerrprocessed.0263.i, %if.end7.i.i.while.cond.outer.outer.backedge.i_crit_edge ]
  %status.0.ph.ph.be.i = phi i8 [ %status.1.i, %uart_handle_break.exit188.i ], [ %status.1.i, %uart_handle_sysrq_char.exit.i ], [ %status.4.i, %if.end.i219.i ], [ %status.4.i, %if.end12.i221.i ], [ %status.1.i, %if.end7.i.i.while.cond.outer.outer.backedge.i_crit_edge ]
  %isrstatus.addr.0.ph.ph.be.i = phi i32 [ %and40.i, %uart_handle_break.exit188.i ], [ %and40.i, %uart_handle_sysrq_char.exit.i ], [ 0, %if.end.i219.i ], [ 0, %if.end12.i221.i ], [ %and40.i, %if.end7.i.i.while.cond.outer.outer.backedge.i_crit_edge ]
  %133 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %membase, align 4
  %add.ptr261267.i = getelementptr i8, ptr %134, i32 44
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr261267.i) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !240
  %136 = and i32 %135, 33554432
  %cmp.not.not262268.i = icmp eq i32 %136, 0
  br i1 %cmp.not.not262268.i, label %while.cond.outer.outer.backedge.i.while.body.lr.ph.lr.ph.i_crit_edge, label %while.cond.outer.outer.backedge.i.cdns_uart_handle_rx.exit_crit_edge

while.cond.outer.outer.backedge.i.cdns_uart_handle_rx.exit_crit_edge: ; preds = %while.cond.outer.outer.backedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_uart_handle_rx.exit

while.cond.outer.outer.backedge.i.while.body.lr.ph.lr.ph.i_crit_edge: ; preds = %while.cond.outer.outer.backedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph.lr.ph.i

cdns_uart_handle_rx.exit:                         ; preds = %while.cond.outer.outer.backedge.i.cdns_uart_handle_rx.exit_crit_edge, %uart_handle_break.exit.i.cdns_uart_handle_rx.exit_crit_edge, %if.then23.i.cdns_uart_handle_rx.exit_crit_edge, %if.then16.cdns_uart_handle_rx.exit_crit_edge
  %state113.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 30
  %137 = ptrtoint ptr %state113.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %state113.i, align 4
  tail call void @tty_flip_buffer_push(ptr noundef %138) #7
  br label %if.end17

if.end17:                                         ; preds = %cdns_uart_handle_rx.exit, %land.lhs.true.if.end17_crit_edge, %if.end.if.end17_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %dev_id) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

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
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_uart_suspend(ptr nocapture noundef readonly %device) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 59
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.device_may_wakeup.exit_crit_edge, label %land.rhs.i

entry.device_may_wakeup.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %device_may_wakeup.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %wakeup.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i = icmp eq ptr %6, null
  br label %device_may_wakeup.exit

device_may_wakeup.exit:                           ; preds = %land.rhs.i, %entry.device_may_wakeup.exit_crit_edge
  %7 = phi i1 [ true, %entry.device_may_wakeup.exit_crit_edge ], [ %tobool2.i, %land.rhs.i ]
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @console_suspend_enabled to i32))
  %8 = load i8, ptr @console_suspend_enabled, align 1, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %device_may_wakeup.exit.if.end_crit_edge, label %land.lhs.true

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %device_may_wakeup.exit
  %cons = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 32
  %9 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cons, align 4
  %tobool3.not = icmp eq ptr %10, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true4

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %index = getelementptr inbounds %struct.console, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %index, align 2
  %conv6 = sext i16 %12 to i32
  %line = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 41
  %13 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv6)
  %cmp = icmp ne i32 %14, %conv6
  %brmerge = select i1 %cmp, i1 true, i1 %7
  br i1 %brmerge, label %land.lhs.true4.if.end_crit_edge, label %if.then

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true4
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #7
  %membase = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase, align 4
  %add.ptr51 = getelementptr i8, ptr %16, i32 44
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !243
  %18 = and i32 %17, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool20.not52 = icmp eq i32 %18, 0
  br i1 %tobool20.not52, label %if.then.while.body_crit_edge, label %if.then.do.body28_crit_edge

if.then.do.body28_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body28

if.then.while.body_crit_edge:                     ; preds = %if.then
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then.while.body_crit_edge
  %19 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase, align 4
  %add.ptr24 = getelementptr i8, ptr %20, i32 48
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !244
  %22 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 44
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !243
  %25 = and i32 %24, 33554432
  %tobool20.not = icmp eq i32 %25, 0
  br i1 %tobool20.not, label %while.body.while.body_crit_edge, label %while.body.do.body28_crit_edge

while.body.do.body28_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body28

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

do.body28:                                        ; preds = %while.body.do.body28_crit_edge, %if.then.do.body28_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase, align 4
  %add.ptr32 = getelementptr i8, ptr %27, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 16777216) #7, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !246
  tail call void @arm_heavy_mb() #7
  %28 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase, align 4
  %add.ptr37 = getelementptr i8, ptr %29, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 65536) #7, !srcloc !139
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call14) #7
  br label %if.end

if.end:                                           ; preds = %do.body28, %land.lhs.true4.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %device_may_wakeup.exit.if.end_crit_edge
  %cdns_uart_driver = getelementptr inbounds %struct.cdns_uart, ptr %3, i32 0, i32 3
  %30 = ptrtoint ptr %cdns_uart_driver to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cdns_uart_driver, align 4
  %call39 = tail call i32 @uart_suspend_port(ptr noundef %31, ptr noundef %1) #7
  ret i32 %call39
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_uart_resume(ptr nocapture noundef readonly %device) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 59
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.device_may_wakeup.exit_crit_edge, label %land.rhs.i

entry.device_may_wakeup.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %device_may_wakeup.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %wakeup.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i = icmp ne ptr %6, null
  br label %device_may_wakeup.exit

device_may_wakeup.exit:                           ; preds = %land.rhs.i, %entry.device_may_wakeup.exit_crit_edge
  %7 = phi i1 [ false, %entry.device_may_wakeup.exit_crit_edge ], [ %tobool2.i, %land.rhs.i ]
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @console_suspend_enabled to i32))
  %8 = load i8, ptr @console_suspend_enabled, align 1, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %device_may_wakeup.exit.do.body67_crit_edge, label %land.lhs.true

device_may_wakeup.exit.do.body67_crit_edge:       ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body67

land.lhs.true:                                    ; preds = %device_may_wakeup.exit
  %cons = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 32
  %9 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cons, align 4
  %tobool3.not = icmp eq ptr %10, null
  br i1 %tobool3.not, label %land.lhs.true.do.body67_crit_edge, label %land.lhs.true4

land.lhs.true.do.body67_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body67

land.lhs.true4:                                   ; preds = %land.lhs.true
  %index = getelementptr inbounds %struct.console, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %index, align 2
  %conv6 = sext i16 %12 to i32
  %line = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 41
  %13 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv6)
  %cmp = icmp ne i32 %14, %conv6
  %brmerge = select i1 %cmp, i1 true, i1 %7
  br i1 %brmerge, label %land.lhs.true4.do.body67_crit_edge, label %if.then

land.lhs.true4.do.body67_crit_edge:               ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body67

if.then:                                          ; preds = %land.lhs.true4
  %pclk = getelementptr inbounds %struct.cdns_uart, ptr %3, i32 0, i32 2
  %15 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pclk, align 4
  %call10 = tail call i32 @clk_enable(ptr noundef %16) #7
  %uartclk = getelementptr inbounds %struct.cdns_uart, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %uartclk, align 4
  %call11 = tail call i32 @clk_enable(ptr noundef %18) #7
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #7
  %membase = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !247
  %22 = or i32 %21, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !248
  tail call void @arm_heavy_mb() #7
  %23 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #7, !srcloc !139
  %25 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !249
  %28 = and i32 %27, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool34.not118 = icmp eq i32 %28, 0
  br i1 %tobool34.not118, label %if.then.do.body44_crit_edge, label %if.then.do.end39_crit_edge

if.then.do.end39_crit_edge:                       ; preds = %if.then
  br label %do.end39

if.then.do.body44_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body44

do.end39:                                         ; preds = %do.end39.do.end39_crit_edge, %if.then.do.end39_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !250
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !251
  %29 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !249
  %32 = and i32 %31, 50331648
  %tobool34.not = icmp eq i32 %32, 0
  br i1 %tobool34.not, label %do.end39.do.body44_crit_edge, label %do.end39.do.end39_crit_edge

do.end39.do.end39_crit_edge:                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39

do.end39.do.body44_crit_edge:                     ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body44

do.body44:                                        ; preds = %do.end39.do.body44_crit_edge, %if.then.do.body44_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !252
  tail call void @arm_heavy_mb() #7
  %33 = load i32, ptr @rx_timeout, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase, align 4
  %add.ptr48 = getelementptr i8, ptr %36, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %34) #7, !srcloc !139
  %37 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %membase, align 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #7, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !253
  %40 = and i32 %39, -1006632961
  %41 = or i32 %40, 335544320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !254
  tail call void @arm_heavy_mb() #7
  %42 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #7, !srcloc !139
  %44 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %uartclk, align 4
  tail call void @clk_disable(ptr noundef %45) #7
  %46 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %47) #7
  br label %if.end

do.body67:                                        ; preds = %land.lhs.true4.do.body67_crit_edge, %land.lhs.true.do.body67_crit_edge, %device_may_wakeup.exit.do.body67_crit_edge
  %call75 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !255
  tail call void @arm_heavy_mb() #7
  %48 = load i32, ptr @rx_trigger_level, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %membase83 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %50 = ptrtoint ptr %membase83 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %membase83, align 4
  %add.ptr84 = getelementptr i8, ptr %51, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84, i32 %49) #7, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !256
  tail call void @arm_heavy_mb() #7
  %52 = ptrtoint ptr %membase83 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %membase83, align 4
  %add.ptr89 = getelementptr i8, ptr %53, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89, i32 65536) #7, !srcloc !139
  br label %if.end

if.end:                                           ; preds = %do.body67, %do.body44
  %call75.sink = phi i32 [ %call75, %do.body67 ], [ %call16, %do.body44 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call75.sink) #7
  %cdns_uart_driver = getelementptr inbounds %struct.cdns_uart, ptr %3, i32 0, i32 3
  %54 = ptrtoint ptr %cdns_uart_driver to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cdns_uart_driver, align 4
  %call91 = tail call i32 @uart_resume_port(ptr noundef %55, ptr noundef %1) #7
  ret i32 %call91
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_runtime_suspend(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 59
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %uartclk = getelementptr inbounds %struct.cdns_uart, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uartclk, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  %pclk = getelementptr inbounds %struct.cdns_uart, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_runtime_resume(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 59
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %pclk = getelementptr inbounds %struct.cdns_uart, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pclk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %5) #7
  %uartclk = getelementptr inbounds %struct.cdns_uart, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %uartclk, align 4
  %call2 = tail call i32 @clk_enable(ptr noundef %7) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_suspend_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_resume_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !32, !33, !35, !37, !39, !41, !43, !44, !45, !46, !47, !48, !49, !51, !53, !54, !55, !57, !59, !61, !62, !63, !65, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86, !87, !89, !90, !91, !93, !95, !97, !99, !100, !101, !102, !104, !105, !106, !107, !109, !111, !112, !113, !114, !116, !117, !118, !119, !121, !123, !125, !127}
!llvm.module.flags = !{!129, !130, !131, !132, !133, !134, !135, !136}
!llvm.ident = !{!137}

!0 = !{ptr @__param_rx_trigger_level, !1, !"__param_rx_trigger_level", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 38, i32 1}
!2 = !{ptr @__UNIQUE_ID_rx_trigger_leveltype228, !1, !"__UNIQUE_ID_rx_trigger_leveltype228", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_rx_trigger_level229, !4, !"__UNIQUE_ID_rx_trigger_level229", i1 false, i1 false}
!4 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 39, i32 1}
!5 = !{ptr @__param_rx_timeout, !6, !"__param_rx_timeout", i1 false, i1 false}
!6 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 43, i32 1}
!7 = !{ptr @__UNIQUE_ID_rx_timeouttype230, !6, !"__UNIQUE_ID_rx_timeouttype230", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_rx_timeout231, !9, !"__UNIQUE_ID_rx_timeout231", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 44, i32 1}
!10 = !{ptr @__UNIQUE_ID___earlycon_cdns232, !11, !"__UNIQUE_ID___earlycon_cdns232", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 1195, i32 1}
!12 = !{ptr @__UNIQUE_ID___earlycon_cdns233, !13, !"__UNIQUE_ID___earlycon_cdns233", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 1196, i32 1}
!14 = !{ptr @__UNIQUE_ID___earlycon_cdns234, !15, !"__UNIQUE_ID___earlycon_cdns234", i1 false, i1 false}
!15 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 1197, i32 1}
!16 = !{ptr @__UNIQUE_ID___earlycon_cdns235, !17, !"__UNIQUE_ID___earlycon_cdns235", i1 false, i1 false}
!17 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 1198, i32 1}
!18 = !{ptr @__initcall__kmod_xilinx_uartps__237_1690_cdns_uart_init3, !19, !"__initcall__kmod_xilinx_uartps__237_1690_cdns_uart_init3", i1 false, i1 false}
!19 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 1690, i32 1}
!20 = !{ptr @__exitcall_cdns_uart_exit, !21, !"__exitcall_cdns_uart_exit", i1 false, i1 false}
!21 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 1691, i32 1}
!22 = !{ptr @__UNIQUE_ID_description238, !23, !"__UNIQUE_ID_description238", i1 false, i1 false}
!23 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 1693, i32 1}
!24 = !{ptr @__UNIQUE_ID_author239, !25, !"__UNIQUE_ID_author239", i1 false, i1 false}
!25 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 1694, i32 1}
!26 = !{ptr @__UNIQUE_ID_file240, !27, !"__UNIQUE_ID_file240", i1 false, i1 false}
!27 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 1695, i32 1}
!28 = !{ptr @__UNIQUE_ID_license241, !27, !"__UNIQUE_ID_license241", i1 false, i1 false}
!29 = !{ptr @__param_str_rx_trigger_level, !1, !"__param_str_rx_trigger_level", i1 false, i1 false}
!30 = !{ptr @rx_trigger_level, !31, !"rx_trigger_level", i1 false, i1 false}
!31 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 37, i32 12}
!32 = !{ptr @__param_str_rx_timeout, !6, !"__param_str_rx_timeout", i1 false, i1 false}
!33 = !{ptr @rx_timeout, !34, !"rx_timeout", i1 false, i1 false}
!34 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 42, i32 12}
!35 = !{ptr @.str, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 1671, i32 11}
!37 = !{ptr @cdns_uart_platform_driver, !38, !"cdns_uart_platform_driver", i1 false, i1 false}
!38 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 1667, i32 31}
!39 = !{ptr @.str.1, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 1451, i32 42}
!41 = !{ptr @.str.2, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 1456, i32 3}
!43 = !{ptr @.str.3, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.4, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.5, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.6, !42, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @cdns_uart_probe._entry, !42, !"_entry", i1 false, i1 false}
!48 = !{ptr @cdns_uart_probe._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.7, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 1463, i32 36}
!51 = !{ptr @.str.9, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 1473, i32 4}
!53 = !{ptr @cdns_uart_probe._entry.8, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @cdns_uart_probe._entry_ptr.10, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.11, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 1487, i32 50}
!57 = !{ptr @.str.12, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 1494, i32 51}
!59 = !{ptr @.str.14, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 1499, i32 3}
!61 = !{ptr @cdns_uart_probe._entry.13, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @cdns_uart_probe._entry_ptr.15, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.16, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 1502, i32 53}
!65 = !{ptr @.str.17, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 1509, i32 54}
!67 = !{ptr @.str.19, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 1514, i32 3}
!69 = !{ptr @cdns_uart_probe._entry.18, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @cdns_uart_probe._entry_ptr.20, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 1519, i32 3}
!73 = !{ptr @cdns_uart_probe._entry.21, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @cdns_uart_probe._entry_ptr.23, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 1524, i32 3}
!77 = !{ptr @cdns_uart_probe._entry.24, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @cdns_uart_probe._entry_ptr.26, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 1545, i32 3}
!81 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @cdns_uart_probe._entry.27, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @cdns_uart_probe._entry_ptr.30, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @cdns_uart_probe.__key, !85, !"__key", i1 false, i1 false}
!85 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 1549, i32 2}
!86 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 1592, i32 3}
!89 = !{ptr @cdns_uart_probe._entry.32, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @cdns_uart_probe._entry_ptr.34, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 1607, i32 13}
!93 = !{ptr @cdns_uart_uart_driver, !94, !"cdns_uart_uart_driver", i1 false, i1 false}
!94 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 1137, i32 27}
!95 = !{ptr @cdns_uart_console, !96, !"cdns_uart_console", i1 false, i1 false}
!96 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 1285, i32 23}
!97 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 1267, i32 3}
!99 = !{ptr @.str.37, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.38, !98, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @cdns_uart_console_setup.__UNIQUE_ID_ddebug236, !98, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!102 = !{ptr @.str.39, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 519, i32 4}
!104 = !{ptr @.str.40, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @cdns_uart_clk_notifier_cb._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @cdns_uart_clk_notifier_cb._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @cdns_uart_ops, !108, !"cdns_uart_ops", i1 false, i1 false}
!108 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 1114, i32 30}
!109 = !{ptr @.str.41, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 881, i32 3}
!111 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @cdns_uart_startup._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @cdns_uart_startup._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.43, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 972, i32 3}
!116 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @cdns_uart_request_port._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @cdns_uart_request_port._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @console_port, !120, !"console_port", i1 false, i1 false}
!120 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 1202, i32 26}
!121 = !{ptr @instances, !122, !"instances", i1 false, i1 false}
!122 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 1426, i32 12}
!123 = !{ptr @cdns_uart_of_match, !124, !"cdns_uart_of_match", i1 false, i1 false}
!124 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 1416, i32 34}
!125 = !{ptr @zynqmp_uart_def, !126, !"zynqmp_uart_def", i1 false, i1 false}
!126 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 1412, i32 40}
!127 = !{ptr @cdns_uart_dev_pm_ops, !128, !"cdns_uart_dev_pm_ops", i1 false, i1 false}
!128 = !{!"../drivers/tty/serial/xilinx_uartps.c", i32 1406, i32 32}
!129 = !{i32 1, !"wchar_size", i32 2}
!130 = !{i32 1, !"min_enum_size", i32 4}
!131 = !{i32 8, !"branch-target-enforcement", i32 0}
!132 = !{i32 8, !"sign-return-address", i32 0}
!133 = !{i32 8, !"sign-return-address-all", i32 0}
!134 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!135 = !{i32 7, !"uwtable", i32 1}
!136 = !{i32 7, !"frame-pointer", i32 2}
!137 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!138 = !{i64 2154256243}
!139 = !{i64 4954150}
!140 = !{i64 2154256763}
!141 = !{i64 2154257159}
!142 = !{i64 2154257557}
!143 = !{i64 4954568}
!144 = !{i64 2154255078}
!145 = !{i64 2154255364}
!146 = !{i64 2154255206}
!147 = !{i64 2154255585}
!148 = !{i64 2154215929}
!149 = !{i64 2154216178}
!150 = !{i64 2154217830}
!151 = !{i64 2154218079}
!152 = !{i64 2154218775}
!153 = !{i64 2154219072}
!154 = !{i64 2154218914}
!155 = !{i64 2154219301}
!156 = !{i64 2154220003}
!157 = !{i64 2154220274}
!158 = !{i64 918312, i64 918373}
!159 = !{i64 921044}
!160 = !{!"branch_weights", i32 1, i32 2000}
!161 = !{i64 921329}
!162 = !{i64 2154263641}
!163 = !{i64 2154263863}
!164 = !{i64 2154264544}
!165 = !{i64 2154264789}
!166 = !{i64 2154225478}
!167 = !{i64 2154265250}
!168 = !{i64 2154265092}
!169 = !{i64 2154265472}
!170 = !{i64 2148337447, i64 2148337452, i64 2148337465, i64 2148337509, i64 2148337543, i64 2148337564}
!171 = !{i64 2154268731}
!172 = !{i64 2154268573}
!173 = !{i64 2154210759}
!174 = !{i64 2154211004}
!175 = !{i64 2154211406}
!176 = !{i64 2154211804}
!177 = !{i8 0, i8 2}
!178 = !{i64 2154249450}
!179 = !{i64 2154249953}
!180 = !{i64 2154250271}
!181 = !{i64 2154250676}
!182 = !{i64 2154248595}
!183 = !{i64 2154222868}
!184 = !{i64 2154223104}
!185 = !{i64 2154220984}
!186 = !{i64 2154221231}
!187 = !{i64 2154221727}
!188 = !{i64 2154222166}
!189 = !{i64 2154223721}
!190 = !{i64 2154224552}
!191 = !{i64 2154224788}
!192 = !{i64 2154226373}
!193 = !{i64 2154226622}
!194 = !{i64 2154227108}
!195 = !{i64 2154234715}
!196 = !{i64 2154235217}
!197 = !{i64 2154235958}
!198 = !{i64 2154236255}
!199 = !{i64 2154236097}
!200 = !{i64 2154236758}
!201 = !{i64 2154237005}
!202 = !{i64 2154237504}
!203 = !{i64 2154238055}
!204 = !{i64 2154238501}
!205 = !{i64 2154239672}
!206 = !{i64 2154240579}
!207 = !{i64 2154244748}
!208 = !{i64 2154244973}
!209 = !{i64 2154245389}
!210 = !{i64 2154245852}
!211 = !{i64 2154228191}
!212 = !{i64 2154228440}
!213 = !{i64 2154229148}
!214 = !{i64 2154229397}
!215 = !{i64 2154230093}
!216 = !{i64 2154230390}
!217 = !{i64 2154230232}
!218 = !{i64 2154230893}
!219 = !{i64 2154231164}
!220 = !{i64 2154231586}
!221 = !{i64 2154232466}
!222 = !{i64 2154232892}
!223 = !{i64 2154233576}
!224 = !{i64 2154233834}
!225 = !{i64 2154253108}
!226 = !{i64 2154253394}
!227 = !{i64 2154253236}
!228 = !{i64 2154253614}
!229 = !{i64 2154254289}
!230 = !{i64 2154254575}
!231 = !{i64 2154254417}
!232 = !{i64 2154251726}
!233 = !{i64 2154252251}
!234 = !{i64 2154206732}
!235 = !{i64 2154207503}
!236 = !{i64 2154207778}
!237 = !{i64 2154208931}
!238 = !{i64 2154209159}
!239 = !{i64 2154209891}
!240 = !{i64 2154205251}
!241 = !{i64 2154205776}
!242 = !{i64 2154206279}
!243 = !{i64 2154269669}
!244 = !{i64 2154270183}
!245 = !{i64 2154270403}
!246 = !{i64 2154270815}
!247 = !{i64 2154271940}
!248 = !{i64 2154272189}
!249 = !{i64 2154272885}
!250 = !{i64 2154273182}
!251 = !{i64 2154273024}
!252 = !{i64 2154273411}
!253 = !{i64 2154274113}
!254 = !{i64 2154274384}
!255 = !{i64 2154275166}
!256 = !{i64 2154275623}
