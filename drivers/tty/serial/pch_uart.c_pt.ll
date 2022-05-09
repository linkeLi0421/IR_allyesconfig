; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/pch_uart.c_pt.bc'
source_filename = "../drivers/tty/serial/pch_uart.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.71 }
%union.anon.71 = type { ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pch_uart_driver_data = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.73, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.73 = type { ptr }
%struct.eg20t_port = type { %struct.uart_port, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.pch_uart_buffer, i32, i32, i32, i32, ptr, ptr, %struct.pch_dma_slave, %struct.pch_dma_slave, ptr, ptr, ptr, i32, i32, %struct.scatterlist, i32, ptr, i32, [17 x i8], %struct.spinlock }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.pch_uart_buffer = type { ptr, i32 }
%struct.pch_dma_slave = type { ptr, i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.69, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.69 = type { %struct.atomic_t }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__initcall__kmod_pch_uart__255_1951_pch_uart_module_init6 = internal global ptr @pch_uart_module_init, section ".initcall6.init", align 4
@pch_uart_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @pch_uart_pci_id, ptr @pch_uart_pci_probe, ptr @pch_uart_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pch_uart_pci_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@pch_uart_driver = internal global { %struct.uart_driver, [60 x i8] } { %struct.uart_driver { ptr null, ptr @.str, ptr @.str.97, i32 0, i32 0, i32 4, ptr @pch_console, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__exitcall_pch_uart_module_exit = internal global ptr @pch_uart_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file256 = internal constant [42 x i8] c"pch_uart.file=drivers/tty/serial/pch_uart\00", section ".modinfo", align 1
@__UNIQUE_ID_license257 = internal constant [24 x i8] c"pch_uart.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description258 = internal constant [53 x i8] c"pch_uart.description=Intel EG20T PCH UART PCI Driver\00", section ".modinfo", align 1
@__param_str_default_baud = internal constant [22 x i8] c"pch_uart.default_baud\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@default_baud = internal global { i32, [28 x i8] } { i32 9600, [28 x i8] zeroinitializer }, align 32
@__param_default_baud = internal constant %struct.kernel_param { ptr @__param_str_default_baud, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.71 { ptr @default_baud } }, section "__param", align 4
@__UNIQUE_ID_default_baudtype259 = internal constant [36 x i8] c"pch_uart.parmtype=default_baud:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_default_baud260 = internal constant [92 x i8] c"pch_uart.parm=default_baud:Default BAUD for initial driver state and console (default 9600)\00", section ".modinfo", align 1
@__param_str_user_uartclk = internal constant [22 x i8] c"pch_uart.user_uartclk\00", align 1
@user_uartclk = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_user_uartclk = internal constant %struct.kernel_param { ptr @__param_str_user_uartclk, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.71 { ptr @user_uartclk } }, section "__param", align 4
@__UNIQUE_ID_user_uartclktype261 = internal constant [36 x i8] c"pch_uart.parmtype=user_uartclk:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_user_uartclk262 = internal constant [78 x i8] c"pch_uart.parm=user_uartclk:Override UART default or board specific UART clock\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pch_uart\00", [23 x i8] zeroinitializer }, align 32
@pch_uart_pci_id = internal constant { [12 x %struct.pci_device_id], [96 x i8] } { [12 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 34833, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 34834, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 32902, i32 34835, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 34836, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4315, i32 32807, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4315, i32 32808, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4315, i32 32809, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4315, i32 32780, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 4315, i32 32781, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4315, i32 34833, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 4315, i32 34834, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id zeroinitializer], [96 x i8] zeroinitializer }, align 32
@pch_uart_pci_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pch_uart_pci_suspend, ptr @pch_uart_pci_resume, ptr @pch_uart_pci_suspend, ptr @pch_uart_pci_resume, ptr @pch_uart_pci_suspend, ptr @pch_uart_pci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@drv_dat = internal constant { [11 x %struct.pch_uart_driver_data], [40 x i8] } { [11 x %struct.pch_uart_driver_data] [%struct.pch_uart_driver_data { i32 44, i32 0 }, %struct.pch_uart_driver_data { i32 45, i32 1 }, %struct.pch_uart_driver_data { i32 45, i32 2 }, %struct.pch_uart_driver_data { i32 45, i32 3 }, %struct.pch_uart_driver_data { i32 44, i32 0 }, %struct.pch_uart_driver_data { i32 45, i32 1 }, %struct.pch_uart_driver_data { i32 45, i32 2 }, %struct.pch_uart_driver_data { i32 44, i32 0 }, %struct.pch_uart_driver_data { i32 45, i32 1 }, %struct.pch_uart_driver_data { i32 44, i32 0 }, %struct.pch_uart_driver_data { i32 45, i32 1 }], [40 x i8] zeroinitializer }, align 32
@pch_uart_init_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1755, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid Port Type(=%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pch_uart_init_port\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/tty/serial/pch_uart.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pch_uart_init_port._entry_ptr = internal global ptr @pch_uart_init_port._entry, section ".printk_index", align 4
@pch_uart_init_port.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@pch_uart_ops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @pch_uart_tx_empty, ptr @pch_uart_set_mctrl, ptr @pch_uart_get_mctrl, ptr @pch_uart_stop_tx, ptr @pch_uart_start_tx, ptr null, ptr null, ptr null, ptr @pch_uart_stop_rx, ptr @pch_uart_enable_ms, ptr @pch_uart_break_ctl, ptr @pch_uart_startup, ptr @pch_uart_shutdown, ptr null, ptr @pch_uart_set_termios, ptr null, ptr null, ptr @pch_uart_type, ptr @pch_uart_release_port, ptr @pch_uart_request_port, ptr @pch_uart_config_port, ptr @pch_uart_verify_port, ptr null, ptr null, ptr @pch_uart_put_poll_char, ptr @pch_uart_get_poll_char }, [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pch_uart:ttyPCH%d\00", [46 x i8] zeroinitializer }, align 32
@pch_uart_init_port.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&priv->port.lock\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@pch_uart_ports = internal global { [4 x ptr], [16 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"uart%d_regs\00", [20 x i8] zeroinitializer }, align 32
@port_regs_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @port_show_regs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pch_uart_start_tx.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.3, ptr @.str.19, i8 1, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pch_uart_start_tx\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s : Tx DMA is NOT empty.\0A\00", [37 x i8] zeroinitializer }, align 32
@pch_uart_hal_set_line._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 440, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid Baud(div=0x%x)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pch_uart_hal_set_line\00", [42 x i8] zeroinitializer }, align 32
@pch_uart_hal_set_line._entry_ptr = internal global ptr @pch_uart_hal_set_line._entry, section ".printk_index", align 4
@pch_uart_hal_set_line._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.3, i32 448, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid parity(0x%x)\0A\00", [42 x i8] zeroinitializer }, align 32
@pch_uart_hal_set_line._entry_ptr.24 = internal global ptr @pch_uart_hal_set_line._entry.22, section ".printk_index", align 4
@pch_uart_hal_set_line._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.3, i32 453, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid bits(0x%x)\0A\00", [44 x i8] zeroinitializer }, align 32
@pch_uart_hal_set_line._entry_ptr.27 = internal global ptr @pch_uart_hal_set_line._entry.25, section ".printk_index", align 4
@pch_uart_hal_set_line._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.21, ptr @.str.3, i32 458, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid STB(0x%x)\0A\00", [45 x i8] zeroinitializer }, align 32
@pch_uart_hal_set_line._entry_ptr.30 = internal global ptr @pch_uart_hal_set_line._entry.28, section ".printk_index", align 4
@pch_uart_hal_set_line.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.3, ptr @.str.31, i8 0, i8 116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s:baud = %u, div = %04x, lcr = %02x (%lu)\0A\00", [52 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@pch_uart_hal_set_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 501, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s:Invalid DMA Mode(0x%x)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pch_uart_hal_set_fifo\00", [42 x i8] zeroinitializer }, align 32
@pch_uart_hal_set_fifo._entry_ptr = internal global ptr @pch_uart_hal_set_fifo._entry, section ".printk_index", align 4
@pch_uart_hal_set_fifo._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.3, i32 507, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s:Invalid FIFO SIZE(0x%x)\0A\00", [36 x i8] zeroinitializer }, align 32
@pch_uart_hal_set_fifo._entry_ptr.36 = internal global ptr @pch_uart_hal_set_fifo._entry.34, section ".printk_index", align 4
@pch_uart_hal_set_fifo._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.3, i32 513, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s:Invalid TRIGGER(0x%x)\0A\00", [38 x i8] zeroinitializer }, align 32
@pch_uart_hal_set_fifo._entry_ptr.39 = internal global ptr @pch_uart_hal_set_fifo._entry.37, section ".printk_index", align 4
@trigger_level_256 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 64, i32 128, i32 224], [16 x i8] zeroinitializer }, align 32
@trigger_level_64 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 16, i32 32, i32 56], [16 x i8] zeroinitializer }, align 32
@trigger_level_16 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 4, i32 8, i32 14], [16 x i8] zeroinitializer }, align 32
@trigger_level_1 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 1, i32 1, i32 1], [16 x i8] zeroinitializer }, align 32
@pch_uart_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 1134, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s:iid=%02x (%lu)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pch_uart_interrupt\00", [45 x i8] zeroinitializer }, align 32
@pch_uart_interrupt._entry_ptr = internal global ptr @pch_uart_interrupt._entry, section ".printk_index", align 4
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Error data in FIFO\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"  Framing Error\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"  Parity Error\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"  Overrun Error\0A\00", [47 x i8] zeroinitializer }, align 32
@pch_uart_err_ir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.46, ptr @.str.3, i32 1065, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pch_uart_err_ir\00", [16 x i8] zeroinitializer }, align 32
@pch_uart_err_ir._entry_ptr = internal global ptr @pch_uart_err_ir._entry, section ".printk_index", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@dma_push_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 653, ptr @.str.49, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Rx overrun: dropping %u bytes\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dma_push_rx\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dma_push_rx._entry_ptr = internal global ptr @dma_push_rx._entry, section ".printk_index", align 4
@dma_handle_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 934, ptr @.str.52, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s:Tx isn't started. (%lu)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dma_handle_tx\00", [18 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@dma_handle_tx._entry_ptr = internal global ptr @dma_handle_tx._entry, section ".printk_index", align 4
@dma_handle_tx.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.3, ptr @.str.53, i8 0, i8 -21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s:Tx is not completed. (%lu)\0A\00", [33 x i8] zeroinitializer }, align 32
@dma_handle_tx.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.3, ptr @.str.54, i8 0, i8 -17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s 0 bytes return\0A\00", [45 x i8] zeroinitializer }, align 32
@dma_handle_tx.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.3, ptr @.str.55, i8 0, i8 -12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s num=%d size=%d rem=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@dma_handle_tx._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.51, ptr @.str.3, i32 982, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s:kzalloc Failed\0A\00", [45 x i8] zeroinitializer }, align 32
@dma_handle_tx._entry_ptr.58 = internal global ptr @dma_handle_tx._entry.56, section ".printk_index", align 4
@dma_handle_tx._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.51, ptr @.str.3, i32 1001, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s:dma_map_sg Failed\0A\00", [42 x i8] zeroinitializer }, align 32
@dma_handle_tx._entry_ptr.61 = internal global ptr @dma_handle_tx._entry.59, section ".printk_index", align 4
@dma_handle_tx._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.51, ptr @.str.3, i32 1023, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s:dmaengine_prep_slave_sg Failed\0A\00", [61 x i8] zeroinitializer }, align 32
@dma_handle_tx._entry_ptr.64 = internal global ptr @dma_handle_tx._entry.62, section ".printk_index", align 4
@pop_tx_x.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.3, ptr @.str.66, i8 0, i8 -98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pop_tx_x\00", [23 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s:X character send %02x (%lu)\0A\00", [32 x i8] zeroinitializer }, align 32
@handle_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.67, ptr @.str.3, i32 884, ptr @.str.52, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"handle_tx\00", [22 x i8] zeroinitializer }, align 32
@handle_tx._entry_ptr = internal global ptr @handle_tx._entry, section ".printk_index", align 4
@pop_tx.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.3, ptr @.str.69, i8 0, i8 -54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pop_tx\00", [25 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%d characters. Remained %d characters.(%lu)\0A\00", [51 x i8] zeroinitializer }, align 32
@pch_request_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.3, i32 725, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s:dma_request_channel FAILS(Tx)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pch_request_dma\00", [16 x i8] zeroinitializer }, align 32
@pch_request_dma._entry_ptr = internal global ptr @pch_request_dma._entry, section ".printk_index", align 4
@pch_request_dma._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.3, i32 739, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s:dma_request_channel FAILS(Rx)\0A\00", [62 x i8] zeroinitializer }, align 32
@pch_request_dma._entry_ptr.74 = internal global ptr @pch_request_dma._entry.72, section ".printk_index", align 4
@pch_uart_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.3, i32 1347, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"pch_uart_hal_set_fifo Failed(ret=%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pch_uart_shutdown\00", [46 x i8] zeroinitializer }, align 32
@pch_uart_shutdown._entry_ptr = internal global ptr @pch_uart_shutdown._entry, section ".printk_index", align 4
@pch_uart_hal_fifo_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.3, i32 481, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s:Invalid flag(0x%x)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pch_uart_hal_fifo_reset\00", [40 x i8] zeroinitializer }, align 32
@pch_uart_hal_fifo_reset._entry_ptr = internal global ptr @pch_uart_hal_fifo_reset._entry, section ".printk_index", align 4
@pch_uart_verify_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.3, i32 1476, ptr @.str.52, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"PCH UART : Use PIO Mode (without DMA)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pch_uart_verify_port\00", [43 x i8] zeroinitializer }, align 32
@pch_uart_verify_port._entry_ptr = internal global ptr @pch_uart_verify_port._entry, section ".printk_index", align 4
@pch_uart_verify_port._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.3, i32 1492, ptr @.str.52, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PCH UART: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@pch_uart_verify_port._entry_ptr.83 = internal global ptr @pch_uart_verify_port._entry.81, section ".printk_index", align 4
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Use DMA Mode\00", [19 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"No DMA\00", [25 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.86 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PCH EG20T port[%d] regs:\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"=================================\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IER: \090x%02x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IIR: \090x%02x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LCR: \090x%02x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MCR: \090x%02x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LSR: \090x%02x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MSR: \090x%02x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BRCSR: \090x%02x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DLL: \090x%02x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DLM: \090x%02x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ttyPCH\00", [25 x i8] zeroinitializer }, align 32
@pch_console = internal global { %struct.console, [60 x i8] } { %struct.console { [16 x i8] c"ttyPCH\00\00\00\00\00\00\00\00\00\00", ptr @pch_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @pch_console_setup, ptr null, ptr null, i16 17, i16 -1, i32 0, i32 0, i32 0, ptr @pch_uart_driver, ptr null }, [60 x i8] zeroinitializer }, align 32
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 44, i64 45]
@__sancov_gen_cov_switch_values.98 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 64, i64 256]
@__sancov_gen_cov_switch_values.99 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.100 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 64, i64 256]
@__sancov_gen_cov_switch_values.101 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 64, i64 256]
@__sancov_gen_cov_switch_values.102 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 16, i64 32]
@__sancov_gen_cov_switch_values.103 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 6]
@___asan_gen_.104 = private unnamed_addr constant [20 x i8] c"pch_uart_pci_driver\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 1927, i32 26 }
@___asan_gen_.107 = private unnamed_addr constant [16 x i8] c"pch_uart_driver\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 1713, i32 27 }
@___asan_gen_.110 = private unnamed_addr constant [13 x i8] c"default_baud\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 287, i32 21 }
@___asan_gen_.113 = private unnamed_addr constant [13 x i8] c"user_uartclk\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 288, i32 21 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 1945, i32 8 }
@___asan_gen_.119 = private unnamed_addr constant [16 x i8] c"pch_uart_pci_id\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 1871, i32 35 }
@___asan_gen_.122 = private unnamed_addr constant [20 x i8] c"pch_uart_pci_pm_ops\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 1923, i32 8 }
@___asan_gen_.125 = private unnamed_addr constant [8 x i8] c"drv_dat\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 270, i32 36 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 1755, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 1762, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [13 x i8] c"pch_uart_ops\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 1577, i32 30 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 1790, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 1793, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 1800, i32 43 }
@___asan_gen_.167 = private unnamed_addr constant [15 x i8] c"pch_uart_ports\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 285, i32 27 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 1810, i32 31 }
@___asan_gen_.173 = private unnamed_addr constant [14 x i8] c"port_regs_ops\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 347, i32 37 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 1219, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 440, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 448, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 453, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 458, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 466, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 500, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 506, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 512, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant [18 x i8] c"trigger_level_256\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 289, i32 18 }
@___asan_gen_.236 = private unnamed_addr constant [17 x i8] c"trigger_level_64\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 290, i32 18 }
@___asan_gen_.239 = private unnamed_addr constant [17 x i8] c"trigger_level_16\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 291, i32 18 }
@___asan_gen_.242 = private unnamed_addr constant [16 x i8] c"trigger_level_1\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 292, i32 18 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 1133, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 1046, i32 20 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 1050, i32 20 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 1055, i32 20 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 1060, i32 20 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 1065, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 652, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 933, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 941, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 959, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 975, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 982, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 1001, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 1022, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 633, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 883, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 807, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 724, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 738, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 1346, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 480, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 1475, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 1490, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 311, i32 4 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 314, i32 4 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 316, i32 4 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 318, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 320, i32 4 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 322, i32 4 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 324, i32 4 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 326, i32 4 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 328, i32 4 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 334, i32 4 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 336, i32 4 }
@___asan_gen_.428 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 1716, i32 14 }
@___asan_gen_.431 = private unnamed_addr constant [12 x i8] c"pch_console\00", align 1
@___asan_gen_.432 = private constant [33 x i8] c"../drivers/tty/serial/pch_uart.c\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 1698, i32 23 }
@llvm.compiler.used = appending global [144 x ptr] [ptr @__UNIQUE_ID_default_baud260, ptr @__UNIQUE_ID_default_baudtype259, ptr @__UNIQUE_ID_description258, ptr @__UNIQUE_ID_file256, ptr @__UNIQUE_ID_license257, ptr @__UNIQUE_ID_user_uartclk262, ptr @__UNIQUE_ID_user_uartclktype261, ptr @__exitcall_pch_uart_module_exit, ptr @__initcall__kmod_pch_uart__255_1951_pch_uart_module_init6, ptr @__param_default_baud, ptr @__param_user_uartclk, ptr @dma_handle_tx._entry, ptr @dma_handle_tx._entry.56, ptr @dma_handle_tx._entry.59, ptr @dma_handle_tx._entry.62, ptr @dma_handle_tx._entry_ptr, ptr @dma_handle_tx._entry_ptr.58, ptr @dma_handle_tx._entry_ptr.61, ptr @dma_handle_tx._entry_ptr.64, ptr @dma_push_rx._entry, ptr @dma_push_rx._entry_ptr, ptr @handle_tx._entry, ptr @handle_tx._entry_ptr, ptr @pch_request_dma._entry, ptr @pch_request_dma._entry.72, ptr @pch_request_dma._entry_ptr, ptr @pch_request_dma._entry_ptr.74, ptr @pch_uart_err_ir._entry, ptr @pch_uart_err_ir._entry_ptr, ptr @pch_uart_hal_fifo_reset._entry, ptr @pch_uart_hal_fifo_reset._entry_ptr, ptr @pch_uart_hal_set_fifo._entry, ptr @pch_uart_hal_set_fifo._entry.34, ptr @pch_uart_hal_set_fifo._entry.37, ptr @pch_uart_hal_set_fifo._entry_ptr, ptr @pch_uart_hal_set_fifo._entry_ptr.36, ptr @pch_uart_hal_set_fifo._entry_ptr.39, ptr @pch_uart_hal_set_line._entry, ptr @pch_uart_hal_set_line._entry.22, ptr @pch_uart_hal_set_line._entry.25, ptr @pch_uart_hal_set_line._entry.28, ptr @pch_uart_hal_set_line._entry_ptr, ptr @pch_uart_hal_set_line._entry_ptr.24, ptr @pch_uart_hal_set_line._entry_ptr.27, ptr @pch_uart_hal_set_line._entry_ptr.30, ptr @pch_uart_init_port._entry, ptr @pch_uart_init_port._entry_ptr, ptr @pch_uart_interrupt._entry, ptr @pch_uart_interrupt._entry_ptr, ptr @pch_uart_module_exit, ptr @pch_uart_shutdown._entry, ptr @pch_uart_shutdown._entry_ptr, ptr @pch_uart_verify_port._entry, ptr @pch_uart_verify_port._entry.81, ptr @pch_uart_verify_port._entry_ptr, ptr @pch_uart_verify_port._entry_ptr.83, ptr @pch_uart_pci_driver, ptr @pch_uart_driver, ptr @default_baud, ptr @user_uartclk, ptr @.str, ptr @pch_uart_pci_id, ptr @pch_uart_pci_pm_ops, ptr @drv_dat, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @pch_uart_init_port.__key, ptr @.str.6, ptr @pch_uart_ops, ptr @.str.7, ptr @pch_uart_init_port.__key.8, ptr @.str.9, ptr @.str.10, ptr @pch_uart_ports, ptr @.str.11, ptr @port_regs_ops, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @trigger_level_256, ptr @trigger_level_64, ptr @trigger_level_16, ptr @trigger_level_1, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @pch_console], section "llvm.metadata"
@0 = internal global [110 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_uart_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_uart_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_baud to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @user_uartclk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_uart_pci_id to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_uart_pci_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv_dat to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_uart_init_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_uart_init_port.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_uart_ops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_uart_init_port.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_uart_ports to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_regs_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_uart_hal_set_line._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_uart_hal_set_line._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_uart_hal_set_line._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_uart_hal_set_line._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_uart_hal_set_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_uart_hal_set_fifo._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_uart_hal_set_fifo._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger_level_256 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger_level_64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger_level_16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger_level_1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_uart_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_uart_err_ir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_push_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_handle_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_handle_tx._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_handle_tx._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_handle_tx._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_request_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_request_dma._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_uart_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_uart_hal_fifo_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_uart_verify_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_uart_verify_port._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_console to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_uart_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @uart_register_driver(ptr noundef nonnull @pch_uart_driver) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @pch_uart_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @uart_unregister_driver(ptr noundef nonnull @pch_uart_driver) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pch_uart_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @pci_unregister_driver(ptr noundef nonnull @pch_uart_pci_driver) #13
  tail call void @uart_unregister_driver(ptr noundef nonnull @pch_uart_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_uart_pci_probe(ptr noundef %pdev, ptr nocapture noundef readonly %id) #3 align 64 {
entry:
  %name.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name.i) #13
  %driver_data.i = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = call ptr @memset(ptr %name.i, i32 255, i32 32)
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_data.i, align 4
  %arrayidx.i = getelementptr [11 x %struct.pch_uart_driver_data], ptr @drv_dat, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 596) #16
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %if.end.if.then2_crit_edge, label %if.end.i

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then2

if.end.i:                                         ; preds = %if.end
  %call2.i = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #13
  %6 = inttoptr i32 %call2.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i.init_port_free_txbuf.i_crit_edge, label %if.end4.i

if.end.i.init_port_free_txbuf.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %init_port_free_txbuf.i

if.end4.i:                                        ; preds = %if.end.i
  %7 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %do.end.i [
    i32 44, label %if.end4.i.sw.epilog.i_crit_edge
    i32 45, label %sw.bb5.i
  ]

if.end4.i.sw.epilog.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.1, i32 noundef %4) #17
  br label %init_port_hal_free.i

sw.epilog.i:                                      ; preds = %sw.bb5.i, %if.end4.i.sw.epilog.i_crit_edge
  %fifosize.0.i = phi i32 [ 64, %sw.bb5.i ], [ 256, %if.end4.i.sw.epilog.i_crit_edge ]
  %call6.i = tail call i32 @pci_enable_msi(ptr noundef %pdev) #13
  tail call void @pci_set_master(ptr noundef %pdev) #13
  %lock.i = getelementptr inbounds %struct.eg20t_port, ptr %call7.i.i.i, i32 0, i32 32
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @pch_uart_init_port.__key, i16 noundef signext 3) #13
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %8 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %resource.i, align 8
  %arrayidx13.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %10 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx13.i, align 8
  %mapbase15.i = getelementptr inbounds %struct.eg20t_port, ptr %call7.i.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %mapbase15.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %mapbase15.i, align 8
  %iobase16.i = getelementptr inbounds %struct.eg20t_port, ptr %call7.i.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %iobase16.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %9, ptr %iobase16.i, align 4
  %pdev17.i = getelementptr inbounds %struct.eg20t_port, ptr %call7.i.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %pdev17.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %pdev, ptr %pdev17.i, align 8
  %tx_empty.i = getelementptr inbounds %struct.eg20t_port, ptr %call7.i.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %tx_empty.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %tx_empty.i, align 4
  %rxbuf18.i = getelementptr inbounds %struct.eg20t_port, ptr %call7.i.i.i, i32 0, i32 13
  %16 = ptrtoint ptr %rxbuf18.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %6, ptr %rxbuf18.i, align 8
  %size.i = getelementptr inbounds %struct.eg20t_port, ptr %call7.i.i.i, i32 0, i32 13, i32 1
  %17 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4096, ptr %size.i, align 4
  %fifo_size.i = getelementptr inbounds %struct.eg20t_port, ptr %call7.i.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %fifo_size.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %fifosize.0.i, ptr %fifo_size.i, align 4
  %19 = load i32, ptr @user_uartclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i = icmp eq i32 %19, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 1843200, i32 %19
  %uartclk.i = getelementptr inbounds %struct.eg20t_port, ptr %call7.i.i.i, i32 0, i32 7
  %20 = ptrtoint ptr %uartclk.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %spec.select.i.i, ptr %uartclk.i, align 8
  %port_type21.i = getelementptr inbounds %struct.eg20t_port, ptr %call7.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %port_type21.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %4, ptr %port_type21.i, align 8
  %dev22.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %dev23.i = getelementptr inbounds %struct.uart_port, ptr %call7.i.i.i, i32 0, i32 45
  %22 = ptrtoint ptr %dev23.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev22.i, ptr %dev23.i, align 8
  %iobase25.i = getelementptr inbounds %struct.uart_port, ptr %call7.i.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %iobase25.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %9, ptr %iobase25.i, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %call7.i.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %membase.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %membase.i, align 8
  %mapbase28.i = getelementptr inbounds %struct.uart_port, ptr %call7.i.i.i, i32 0, i32 43
  %25 = ptrtoint ptr %mapbase28.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %11, ptr %mapbase28.i, align 8
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %26 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq.i, align 4
  %irq30.i = getelementptr inbounds %struct.uart_port, ptr %call7.i.i.i, i32 0, i32 20
  %28 = ptrtoint ptr %irq30.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %irq30.i, align 8
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %call7.i.i.i, i32 0, i32 26
  %29 = ptrtoint ptr %iotype.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %iotype.i, align 2
  %ops.i = getelementptr inbounds %struct.uart_port, ptr %call7.i.i.i, i32 0, i32 39
  %30 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @pch_uart_ops, ptr %ops.i, align 8
  %flags.i = getelementptr inbounds %struct.uart_port, ptr %call7.i.i.i, i32 0, i32 33
  %31 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 268435456, ptr %flags.i, align 8
  %fifosize35.i = getelementptr inbounds %struct.uart_port, ptr %call7.i.i.i, i32 0, i32 23
  %32 = ptrtoint ptr %fifosize35.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %fifosize.0.i, ptr %fifosize35.i, align 4
  %line_no.i = getelementptr [11 x %struct.pch_uart_driver_data], ptr @drv_dat, i32 0, i32 %2, i32 1
  %33 = ptrtoint ptr %line_no.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %line_no.i, align 4
  %line.i = getelementptr inbounds %struct.uart_port, ptr %call7.i.i.i, i32 0, i32 41
  %35 = ptrtoint ptr %line.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %line.i, align 8
  %has_sysrq.i = getelementptr inbounds %struct.uart_port, ptr %call7.i.i.i, i32 0, i32 48
  %36 = ptrtoint ptr %has_sysrq.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %has_sysrq.i, align 4
  %trigger.i = getelementptr inbounds %struct.eg20t_port, ptr %call7.i.i.i, i32 0, i32 11
  %37 = ptrtoint ptr %trigger.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 128, ptr %trigger.i, align 8
  %irq_name.i = getelementptr inbounds %struct.eg20t_port, ptr %call7.i.i.i, i32 0, i32 31
  %call40.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %irq_name.i, i32 noundef 17, ptr noundef nonnull @.str.7, i32 noundef %34) #13
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @pch_uart_init_port.__key.8, i16 noundef signext 3) #13
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %38 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i.i, ptr %driver_data.i.i.i, align 4
  %trigger_level.i = getelementptr inbounds %struct.eg20t_port, ptr %call7.i.i.i, i32 0, i32 12
  %39 = ptrtoint ptr %trigger_level.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %trigger_level.i, align 4
  %fcr.i = getelementptr inbounds %struct.eg20t_port, ptr %call7.i.i.i, i32 0, i32 15
  %40 = ptrtoint ptr %fcr.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %fcr.i, align 4
  %of_node.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 27
  %41 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %of_node.i, align 8
  %tobool48.not.i = icmp eq ptr %42, null
  br i1 %tobool48.not.i, label %sw.epilog.i.if.end53.i_crit_edge, label %if.then49.i

sw.epilog.i.if.end53.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53.i

if.then49.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %42, ptr noundef nonnull @.str.10, ptr noundef nonnull @user_uartclk, i32 noundef 1, i32 noundef 0) #13
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then49.i, %sw.epilog.i.if.end53.i_crit_edge
  %arrayidx55.i = getelementptr [4 x ptr], ptr @pch_uart_ports, i32 0, i32 %34
  %43 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call7.i.i.i, ptr %arrayidx55.i, align 4
  %call57.i = tail call i32 @uart_add_one_port(ptr noundef nonnull @pch_uart_driver, ptr noundef nonnull %call7.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %cmp58.i = icmp slt i32 %call57.i, 0
  br i1 %cmp58.i, label %if.end53.i.init_port_hal_free.i_crit_edge, label %if.end3

if.end53.i.init_port_hal_free.i_crit_edge:        ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %init_port_hal_free.i

init_port_hal_free.i:                             ; preds = %if.end53.i.init_port_hal_free.i_crit_edge, %do.end.i
  %line_no67.i = getelementptr [11 x %struct.pch_uart_driver_data], ptr @drv_dat, i32 0, i32 %2, i32 1
  %44 = ptrtoint ptr %line_no67.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %line_no67.i, align 4
  %arrayidx68.i = getelementptr [4 x ptr], ptr @pch_uart_ports, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %arrayidx68.i, align 4
  tail call void @free_pages(i32 noundef %call2.i, i32 noundef 0) #13
  br label %init_port_free_txbuf.i

init_port_free_txbuf.i:                           ; preds = %init_port_hal_free.i, %if.end.i.init_port_free_txbuf.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #13
  br label %if.then2

if.then2:                                         ; preds = %init_port_free_txbuf.i, %if.end.if.then2_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name.i) #13
  tail call void @pci_disable_msi(ptr noundef %pdev) #13
  tail call void @pci_disable_device(ptr noundef %pdev) #13
  br label %cleanup

if.end3:                                          ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #15
  %47 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %line.i, align 8
  %call64.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 32, ptr noundef nonnull @.str.11, i32 noundef %48) #13
  %call66.i = call ptr @debugfs_create_file(ptr noundef nonnull %name.i, i16 noundef zeroext -32476, ptr noundef null, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @port_regs_ops) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name.i) #13
  %49 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call7.i.i.i, ptr %driver_data.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ %call, %entry.cleanup_crit_edge ], [ -16, %if.then2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_uart_pci_remove(ptr noundef %pdev) #3 align 64 {
entry:
  %name.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @pci_disable_msi(ptr noundef %pdev) #13
  %line = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %line, align 4
  %arrayidx = getelementptr [4 x ptr], ptr @pch_uart_ports, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name.i) #13
  %5 = call ptr @memset(ptr %name.i, i32 255, i32 32)
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 32, ptr noundef nonnull @.str.11, i32 noundef %3) #13
  %call2.i = call ptr @debugfs_lookup(ptr noundef nonnull %name.i, ptr noundef null) #13
  call void @debugfs_remove(ptr noundef %call2.i) #13
  %call4.i = call i32 @uart_remove_one_port(ptr noundef nonnull @pch_uart_driver, ptr noundef %1) #13
  %rxbuf.i = getelementptr inbounds %struct.eg20t_port, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %rxbuf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rxbuf.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @free_pages(i32 noundef %8, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name.i) #13
  call void @pci_disable_device(ptr noundef %pdev) #13
  call void @kfree(ptr noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pch_uart_tx_empty(ptr nocapture noundef readonly %port) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_empty = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 10
  %0 = ptrtoint ptr %tx_empty to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_empty, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp ne i32 %1, 0
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_uart_set_mctrl(ptr nocapture noundef readonly %port, i32 noundef %mctrl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mctrl)
  %tobool17.not = icmp eq i32 %mctrl, 0
  br i1 %tobool17.not, label %entry.if.end20_crit_edge, label %if.then18

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %and6 = lshr i32 %mctrl, 11
  %0 = and i32 %and6, 16
  %and1 = lshr i32 %mctrl, 1
  %1 = and i32 %and1, 3
  %2 = or i32 %1, %0
  %mcr11 = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 16
  %3 = ptrtoint ptr %mcr11 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mcr11, align 4
  %and12 = and i32 %4, 32
  %5 = or i32 %2, %and12
  %conv = trunc i32 %5 to i8
  %membase = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 2
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %add.ptr19 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr19, i8 %conv) #13, !srcloc !250
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %entry.if.end20_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_uart_get_mctrl(ptr nocapture noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 6
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %3 = and i8 %2, 15
  %and.i = zext i8 %3 to i32
  %dmsr.i = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 14
  %4 = ptrtoint ptr %dmsr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and.i, ptr %dmsr.i, align 4
  %conv = zext i8 %2 to i32
  %and = lshr i32 %conv, 1
  %5 = and i32 %and, 64
  %and2 = shl nuw nsw i32 %conv, 1
  %6 = and i32 %and2, 128
  %7 = or i32 %6, %5
  %and8 = shl nuw nsw i32 %conv, 3
  %8 = and i32 %and8, 256
  %9 = or i32 %7, %8
  %10 = and i32 %and2, 32
  %11 = or i32 %9, %10
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @pch_uart_stop_tx(ptr nocapture noundef writeonly %port) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %start_tx = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 8
  %0 = ptrtoint ptr %start_tx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %start_tx, align 4
  %tx_dma_use = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 28
  %1 = ptrtoint ptr %tx_dma_use to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %tx_dma_use, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_uart_start_tx(ptr nocapture noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %use_dma = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 17
  %0 = ptrtoint ptr %use_dma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %use_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then:                                          ; preds = %entry
  %tx_dma_use = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 28
  %2 = ptrtoint ptr %tx_dma_use to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_dma_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.then.if.end10_crit_edge, label %do.body

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_uart_start_tx.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_uart_start_tx, %if.then7)) #13
          to label %cleanup [label %if.then7], !srcloc !253

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_uart_start_tx.__UNIQUE_ID_ddebug254, ptr noundef %5, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18) #13
  br label %cleanup

if.end10:                                         ; preds = %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  %start_tx = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 8
  %6 = ptrtoint ptr %start_tx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %start_tx, align 4
  %membase.i = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 2
  %7 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 1
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %conv1.i = or i8 %9, 2
  %10 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %11, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i, i8 %conv1.i) #13, !srcloc !250
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then7, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_uart_stop_rx(ptr nocapture noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %start_rx = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 9
  %0 = ptrtoint ptr %start_rx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %start_rx, align 4
  %membase.i = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 2
  %1 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 1
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %conv2.i = and i8 %3, -6
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %5, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 %conv2.i) #13, !srcloc !250
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_uart_enable_ms(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %conv1.i = or i8 %2, 8
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %4, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i, i8 %conv1.i) #13, !srcloc !250
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_uart_break_ctl(ptr noundef %port, i32 noundef %ctl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 32
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %membase.i = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 3
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ctl)
  %tobool.not.i = icmp eq i32 %ctl, 0
  %and.i = and i8 %2, -65
  %masksel.i = select i1 %tobool.not.i, i8 0, i8 64
  %lcr.0.i = or i8 %and.i, %masksel.i
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %4, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i, i8 %lcr.0.i) #13, !srcloc !250
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_uart_startup(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_empty = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 10
  %0 = ptrtoint ptr %tx_empty to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %tx_empty, align 4
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %1 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %uartclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %uartclk3 = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 7
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %uartclk3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %uartclk3, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %uartclk3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %uartclk3, align 4
  %6 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %uartclk, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %membase.i = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 2
  %7 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 1
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %conv2.i = and i8 %9, -16
  %10 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %11, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 %conv2.i) #13, !srcloc !250
  %12 = load i32, ptr @default_baud, align 4
  %call = tail call fastcc i32 @pch_uart_hal_set_line(ptr noundef %port, i32 noundef %12, i32 noundef 0, i32 noundef 3, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %fifo_size8 = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 6
  %13 = ptrtoint ptr %fifo_size8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fifo_size8, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %14, label %sw.default [
    i32 256, label %if.end7.sw.epilog_crit_edge
    i32 64, label %if.end7.sw.epilog_crit_edge75
    i32 16, label %sw.bb10
  ]

if.end7.sw.epilog_crit_edge75:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.default:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb10, %if.end7.sw.epilog_crit_edge, %if.end7.sw.epilog_crit_edge75
  %fifo_size.0 = phi i32 [ 0, %sw.default ], [ 1, %sw.bb10 ], [ 33, %if.end7.sw.epilog_crit_edge ], [ 33, %if.end7.sw.epilog_crit_edge75 ]
  %trigger = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 11
  %16 = ptrtoint ptr %trigger to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %trigger, align 4
  %18 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 26)
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %18, label %sw.default19 [
    i32 0, label %sw.epilog.sw.epilog23_crit_edge
    i32 1, label %sw.bb13
    i32 2, label %sw.bb15
  ]

sw.epilog.sw.epilog23_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog23

sw.bb13:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %div = sdiv i32 %14, 4
  br label %sw.epilog23

sw.bb15:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %div17 = sdiv i32 %14, 2
  br label %sw.epilog23

sw.default19:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %div22.neg = sdiv i32 %14, -8
  %sub = add i32 %div22.neg, %14
  br label %sw.epilog23

sw.epilog23:                                      ; preds = %sw.default19, %sw.bb15, %sw.bb13, %sw.epilog.sw.epilog23_crit_edge
  %trigger_level.0 = phi i32 [ %sub, %sw.default19 ], [ %div17, %sw.bb15 ], [ %div, %sw.bb13 ], [ 1, %sw.epilog.sw.epilog23_crit_edge ]
  %trigger_level24 = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 12
  %20 = ptrtoint ptr %trigger_level24 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %trigger_level.0, ptr %trigger_level24, align 4
  %and10.i = and i32 %17, -193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end18.i, label %pch_uart_hal_set_fifo.exit.thread

pch_uart_hal_set_fifo.exit.thread:                ; preds = %sw.epilog23
  call void @__sanitizer_cov_trace_pc() #15
  %dev17.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %21 = ptrtoint ptr %dev17.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev17.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.33, i32 noundef %17) #17
  br label %cleanup

if.end18.i:                                       ; preds = %sw.epilog23
  %23 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %14, label %sw.default.i [
    i32 256, label %if.end18.i.if.end28_crit_edge
    i32 64, label %sw.bb20.i
    i32 16, label %sw.bb24.i
  ]

if.end18.i.if.end28_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

sw.bb20.i:                                        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

sw.bb24.i:                                        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

sw.default.i:                                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.end28:                                         ; preds = %sw.default.i, %sw.bb24.i, %sw.bb20.i, %if.end18.i.if.end28_crit_edge
  %trigger_level_1.sink.i = phi ptr [ @trigger_level_1, %sw.default.i ], [ @trigger_level_16, %sw.bb24.i ], [ @trigger_level_64, %sw.bb20.i ], [ @trigger_level_256, %if.end18.i.if.end28_crit_edge ]
  %shr28.i = lshr i32 %17, 6
  %arrayidx29.i = getelementptr [4 x i32], ptr %trigger_level_1.sink.i, i32 0, i32 %shr28.i
  %24 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx29.i, align 4
  %26 = ptrtoint ptr %trigger_level24 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %trigger_level24, align 4
  %or31.i = or i32 %17, %fifo_size.0
  %27 = trunc i32 %or31.i to i8
  %conv.i = or i8 %27, 6
  %28 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase.i, align 4
  %add.ptr.i70 = getelementptr i8, ptr %29, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i70, i8 1) #13, !srcloc !250
  %30 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase.i, align 4
  %add.ptr35.i = getelementptr i8, ptr %31, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr35.i, i8 7) #13, !srcloc !250
  %32 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase.i, align 4
  %add.ptr37.i = getelementptr i8, ptr %33, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr37.i, i8 %conv.i) #13, !srcloc !250
  %conv38.i = zext i8 %conv.i to i32
  %fcr39.i = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 15
  %34 = ptrtoint ptr %fcr39.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv38.i, ptr %fcr39.i, align 4
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %35 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq, align 4
  %irq_name = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 31
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %36, ptr noundef nonnull @pch_uart_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %irq_name, ptr noundef %port) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp31 = icmp slt i32 %call.i, 0
  br i1 %cmp31, label %if.end28.cleanup_crit_edge, label %if.end33

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  %use_dma = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 17
  %37 = ptrtoint ptr %use_dma to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %use_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool34.not = icmp eq i32 %38, 0
  br i1 %tobool34.not, label %if.end33.if.end36_crit_edge, label %if.then35

if.end33.if.end36_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @pch_request_dma(ptr noundef %port)
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end33.if.end36_crit_edge
  %start_rx = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 9
  %39 = ptrtoint ptr %start_rx to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %start_rx, align 4
  %40 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %membase.i, align 4
  %add.ptr.i72 = getelementptr i8, ptr %41, i32 1
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i72) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %conv1.i = or i8 %42, 5
  %43 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %44, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i, i8 %conv1.i) #13, !srcloc !250
  %45 = load i32, ptr @default_baud, align 4
  tail call void @uart_update_timeout(ptr noundef %port, i32 noundef 48, i32 noundef %45) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end28.cleanup_crit_edge, %pch_uart_hal_set_fifo.exit.thread, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end36 ], [ %call, %if.end.cleanup_crit_edge ], [ %call.i, %if.end28.cleanup_crit_edge ], [ -22, %pch_uart_hal_set_fifo.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_uart_shutdown(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %conv2.i = and i8 %2, -16
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %4, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 %conv2.i) #13, !srcloc !250
  %fcr.i = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 15
  %5 = ptrtoint ptr %fcr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fcr.i, align 4
  %7 = trunc i32 %6 to i8
  %conv.i = or i8 %7, 1
  %8 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %9, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i13, i8 %conv.i) #13, !srcloc !250
  %10 = ptrtoint ptr %fcr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fcr.i, align 4
  %12 = trunc i32 %11 to i8
  %conv4.i = or i8 %12, 7
  %13 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %14, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i, i8 %conv4.i) #13, !srcloc !250
  %15 = ptrtoint ptr %fcr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fcr.i, align 4
  %conv8.i = trunc i32 %16 to i8
  %17 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %18, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10.i, i8 %conv8.i) #13, !srcloc !250
  %fifo_size19.i = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 6
  %19 = ptrtoint ptr %fifo_size19.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fifo_size19.i, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %20, label %sw.default.i [
    i32 256, label %entry.if.end_crit_edge
    i32 64, label %sw.bb20.i
    i32 16, label %sw.bb24.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

sw.bb20.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

sw.bb24.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %sw.default.i, %sw.bb24.i, %sw.bb20.i, %entry.if.end_crit_edge
  %trigger_level_1.sink.i = phi ptr [ @trigger_level_1, %sw.default.i ], [ @trigger_level_16, %sw.bb24.i ], [ @trigger_level_64, %sw.bb20.i ], [ @trigger_level_256, %entry.if.end_crit_edge ]
  %22 = ptrtoint ptr %trigger_level_1.sink.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %trigger_level_1.sink.i, align 4
  %trigger_level30.i = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 12
  %24 = ptrtoint ptr %trigger_level30.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %trigger_level30.i, align 4
  %25 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %26, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i15, i8 1) #13, !srcloc !250
  %27 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase.i, align 4
  %add.ptr35.i = getelementptr i8, ptr %28, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr35.i, i8 7) #13, !srcloc !250
  %29 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase.i, align 4
  %add.ptr37.i = getelementptr i8, ptr %30, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr37.i, i8 6) #13, !srcloc !250
  %31 = ptrtoint ptr %fcr.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 6, ptr %fcr.i, align 4
  %chan_tx.i = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 22
  %32 = ptrtoint ptr %chan_tx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chan_tx.i, align 4
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dma_release_channel(ptr noundef nonnull %33) #13
  %34 = ptrtoint ptr %chan_tx.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %chan_tx.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %chan_rx.i = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 23
  %35 = ptrtoint ptr %chan_rx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chan_rx.i, align 4
  %tobool3.not.i = icmp eq ptr %36, null
  br i1 %tobool3.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then4.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dma_release_channel(ptr noundef nonnull %36) #13
  %37 = ptrtoint ptr %chan_rx.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %chan_rx.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %if.end.i.if.end7.i_crit_edge
  %rx_buf_dma.i = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 30
  %38 = ptrtoint ptr %rx_buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_buf_dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool8.not.i = icmp eq i32 %39, 0
  br i1 %tobool8.not.i, label %if.end7.i.pch_free_dma.exit_crit_edge, label %if.then9.i

if.end7.i.pch_free_dma.exit_crit_edge:            ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pch_free_dma.exit

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 4
  %fifosize.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 23
  %42 = ptrtoint ptr %fifosize.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fifosize.i, align 4
  %rx_buf_virt.i = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 29
  %44 = ptrtoint ptr %rx_buf_virt.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rx_buf_virt.i, align 4
  tail call void @dma_free_attrs(ptr noundef %41, i32 noundef %43, ptr noundef %45, i32 noundef %39, i32 noundef 0) #13
  %46 = ptrtoint ptr %rx_buf_virt.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %rx_buf_virt.i, align 4
  %47 = ptrtoint ptr %rx_buf_dma.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %rx_buf_dma.i, align 4
  br label %pch_free_dma.exit

pch_free_dma.exit:                                ; preds = %if.then9.i, %if.end7.i.pch_free_dma.exit_crit_edge
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %48 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %irq, align 4
  %call4 = tail call ptr @free_irq(i32 noundef %49, ptr noundef %port) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_uart_set_termios(ptr noundef %port, ptr noundef %termios, ptr noundef %old) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %0 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_cflag, align 4
  %and = and i32 %1, 48
  %2 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %and, label %sw.default [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 16, label %sw.bb1
    i32 32, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %bits.0 = phi i32 [ 3, %sw.default ], [ 2, %sw.bb2 ], [ 1, %sw.bb1 ], [ %and, %entry.sw.epilog_crit_edge ]
  %and4 = lshr i32 %1, 4
  %3 = and i32 %and4, 4
  %and6 = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %and10 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %.73 = select i1 %tobool11.not, i32 24, i32 8
  %parity.0 = select i1 %tobool7.not, i32 0, i32 %.73
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %tobool19.not = icmp sgt i32 %1, -1
  br i1 %tobool19.not, label %sw.epilog.if.else21_crit_edge, label %land.lhs.true

sw.epilog.if.else21_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else21

land.lhs.true:                                    ; preds = %sw.epilog
  %fifo_size = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 6
  %4 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fifo_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %5)
  %cmp = icmp eq i32 %5, 256
  br i1 %cmp, label %if.then20, label %land.lhs.true.if.else21_crit_edge

land.lhs.true.if.else21_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else21

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %mcr = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 16
  %6 = ptrtoint ptr %mcr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mcr, align 4
  %or = or i32 %7, 32
  store i32 %or, ptr %mcr, align 4
  br label %if.end24

if.else21:                                        ; preds = %land.lhs.true.if.else21_crit_edge, %sw.epilog.if.else21_crit_edge
  %mcr22 = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 16
  %8 = ptrtoint ptr %mcr22 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mcr22, align 4
  %and23 = and i32 %9, -33
  store i32 %and23, ptr %mcr22, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else21, %if.then20
  %10 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %c_cflag, align 4
  %and26 = and i32 %11, -1073741825
  store i32 %and26, ptr %c_cflag, align 4
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %12 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %uartclk, align 4
  %div72 = lshr i32 %13, 4
  %call = tail call i32 @uart_get_baud_rate(ptr noundef %port, ptr noundef %termios, ptr noundef %old, i32 noundef 0, i32 noundef %div72) #13
  %lock = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 32
  %call31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  tail call void @_raw_spin_lock(ptr noundef %port) #13
  %14 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %c_cflag, align 4
  tail call void @uart_update_timeout(ptr noundef %port, i32 noundef %15, i32 noundef %call) #13
  %call36 = tail call fastcc i32 @pch_uart_hal_set_line(ptr noundef %port, i32 noundef %call, i32 noundef %parity.0, i32 noundef %bits.0, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end24.out_crit_edge

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end39:                                         ; preds = %if.end24
  %mctrl = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 36
  %16 = ptrtoint ptr %mctrl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mctrl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool17.not.i = icmp eq i32 %17, 0
  br i1 %tobool17.not.i, label %if.end39.pch_uart_set_mctrl.exit_crit_edge, label %if.then18.i

if.end39.pch_uart_set_mctrl.exit_crit_edge:       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %pch_uart_set_mctrl.exit

if.then18.i:                                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  %and6.i = lshr i32 %17, 11
  %18 = and i32 %and6.i, 16
  %and1.i = lshr i32 %17, 1
  %19 = and i32 %and1.i, 3
  %20 = or i32 %19, %18
  %mcr11.i = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 16
  %21 = ptrtoint ptr %mcr11.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mcr11.i, align 4
  %and12.i = and i32 %22, 32
  %23 = or i32 %20, %and12.i
  %conv.i = trunc i32 %23 to i8
  %membase.i = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 2
  %24 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %25, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr19.i, i8 %conv.i) #13, !srcloc !250
  br label %pch_uart_set_mctrl.exit

pch_uart_set_mctrl.exit:                          ; preds = %if.then18.i, %if.end39.pch_uart_set_mctrl.exit_crit_edge
  %call42 = tail call i32 @tty_termios_baud_rate(ptr noundef %termios) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %pch_uart_set_mctrl.exit.out_crit_edge, label %if.then44

pch_uart_set_mctrl.exit.out_crit_edge:            ; preds = %pch_uart_set_mctrl.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then44:                                        ; preds = %pch_uart_set_mctrl.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @tty_termios_encode_baud_rate(ptr noundef %termios, i32 noundef %call, i32 noundef %call) #13
  br label %out

out:                                              ; preds = %if.then44, %pch_uart_set_mctrl.exit.out_crit_edge, %if.end24.out_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %port) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call31) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @pch_uart_type(ptr nocapture noundef readnone %port) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_uart_release_port(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 5
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %membase = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 4
  tail call void @pci_iounmap(ptr noundef %1, ptr noundef %3) #13
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  tail call void @pci_release_regions(ptr noundef %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_uart_request_port(ptr nocapture noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 5
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %call = tail call i32 @pci_request_regions(ptr noundef %1, ptr noundef nonnull @.str) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %call2 = tail call ptr @pci_iomap(ptr noundef %3, i32 noundef 1, i32 noundef 0) #13
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  tail call void @pci_release_regions(ptr noundef %5) #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %membase6 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %6 = ptrtoint ptr %membase6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2, ptr %membase6, align 4
  %membase7 = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 2
  %7 = ptrtoint ptr %membase7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2, ptr %membase7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -16, %if.then3 ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_uart_config_port(ptr nocapture noundef %port, i32 noundef %type) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %port_type = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %port_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port_type, align 4
  %type1 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %2 = ptrtoint ptr %type1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %type1, align 4
  %pdev.i = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 5
  %3 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev.i, align 4
  %call.i = tail call i32 @pci_request_regions(ptr noundef %4, ptr noundef nonnull @.str) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %5 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev.i, align 4
  %call2.i = tail call ptr @pci_iomap(ptr noundef %6, i32 noundef 1, i32 noundef 0) #13
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.then3.i, label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev.i, align 4
  tail call void @pci_release_regions(ptr noundef %8) #13
  br label %if.end

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %membase6.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %9 = ptrtoint ptr %membase6.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call2.i, ptr %membase6.i, align 4
  %membase7.i = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 2
  %10 = ptrtoint ptr %membase7.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call2.i, ptr %membase7.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end5.i, %if.then3.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_uart_verify_port(ptr noundef %port, ptr nocapture noundef %serinfo) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.serial_struct, ptr %serinfo, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.79) #17
  %use_dma = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 17
  %4 = ptrtoint ptr %use_dma to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %use_dma, align 4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and3 = and i32 %6, -8193
  store i32 %and3, ptr %flags, align 4
  br label %if.end18

if.else:                                          ; preds = %entry
  %use_dma4 = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 17
  %7 = ptrtoint ptr %use_dma4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %use_dma4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %if.then6, label %if.else.do.end13_crit_edge

if.else.do.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end13

if.then6:                                         ; preds = %if.else
  tail call fastcc void @pch_request_dma(ptr noundef %port)
  %chan_rx = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 23
  %9 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chan_rx, align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.then6.do.end13_crit_edge, label %if.then8

if.then6.do.end13_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end13

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %use_dma4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %use_dma4, align 4
  br label %do.end13

do.end13:                                         ; preds = %if.then8, %if.then6.do.end13_crit_edge, %if.else.do.end13_crit_edge
  %dev15 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %12 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev15, align 4
  %14 = ptrtoint ptr %use_dma4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %use_dma4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool17.not = icmp eq i32 %15, 0
  %cond = select i1 %tobool17.not, ptr @.str.85, ptr @.str.84
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.82, ptr noundef nonnull %cond) #17
  br label %if.end18

if.end18:                                         ; preds = %do.end13, %do.end
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_uart_put_poll_char(ptr nocapture noundef readonly %port, i8 noundef zeroext %c) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 1
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %3 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 1
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %conv2.i = and i8 %5, -16
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %add.ptr4.i = getelementptr i8, ptr %7, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 %conv2.i) #13, !srcloc !250
  %8 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase, align 4
  %add.ptr28.i = getelementptr i8, ptr %9, i32 5
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr28.i) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %11 = and i8 %10, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp31.i.not = icmp eq i8 %11, 0
  br i1 %cmp31.i.not, label %entry.if.end.i_crit_edge, label %entry.for.end.i_crit_edge

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  br label %if.end.i

if.end.i:                                         ; preds = %if.end5.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %tmout.032.i = phi i32 [ %dec.i, %if.end5.i.if.end.i_crit_edge ], [ 10000, %entry.if.end.i_crit_edge ]
  %dec.i = add nsw i32 %tmout.032.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp2.i = icmp eq i32 %dec.i, 0
  br i1 %cmp2.i, label %if.end.i.for.end.i_crit_edge, label %if.end5.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

if.end5.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #13
  %13 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase, align 4
  %add.ptr.i13 = getelementptr i8, ptr %14, i32 5
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i13) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %16 = and i8 %15, 32
  %cmp.i.not = icmp eq i8 %16, 0
  br i1 %cmp.i.not, label %if.end5.i.if.end.i_crit_edge, label %if.end5.i.for.end.i_crit_edge

if.end5.i.for.end.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

if.end5.i.if.end.i_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

for.end.i:                                        ; preds = %if.end5.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %flags.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 4
  %and6.i = and i32 %18, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool.not.i, label %for.end.i.wait_for_xmitr.exit_crit_edge, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  br label %for.body.i

for.end.i.wait_for_xmitr.exit_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %wait_for_xmitr.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.end.i.for.body.i_crit_edge
  %tmout8.033.i = phi i32 [ %dec19.i, %for.inc.i.for.body.i_crit_edge ], [ 1000000, %for.end.i.for.body.i_crit_edge ]
  %19 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase, align 4
  %add.ptr12.i = getelementptr i8, ptr %20, i32 6
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr12.i) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %22 = and i8 %21, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool16.not.i = icmp eq i8 %22, 0
  br i1 %tobool16.not.i, label %for.inc.i, label %for.body.i.wait_for_xmitr.exit_crit_edge

for.body.i.wait_for_xmitr.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %wait_for_xmitr.exit

for.inc.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #13
  tail call void @touch_softlockup_watchdog() #13
  %dec19.i = add nsw i32 %tmout8.033.i, -1
  %tobool10.not.i = icmp eq i32 %dec19.i, 0
  br i1 %tobool10.not.i, label %for.inc.i.wait_for_xmitr.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.wait_for_xmitr.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %wait_for_xmitr.exit

wait_for_xmitr.exit:                              ; preds = %for.inc.i.wait_for_xmitr.exit_crit_edge, %for.body.i.wait_for_xmitr.exit_crit_edge, %for.end.i.wait_for_xmitr.exit_crit_edge
  %24 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %25, i8 %c) #13, !srcloc !250
  %26 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase, align 4
  %add.ptr28.i15 = getelementptr i8, ptr %27, i32 5
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr28.i15) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %29 = and i8 %28, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %29)
  %cmp31.i18 = icmp eq i8 %29, 96
  br i1 %cmp31.i18, label %wait_for_xmitr.exit.for.end.i31_crit_edge, label %wait_for_xmitr.exit.if.end.i22_crit_edge

wait_for_xmitr.exit.if.end.i22_crit_edge:         ; preds = %wait_for_xmitr.exit
  br label %if.end.i22

wait_for_xmitr.exit.for.end.i31_crit_edge:        ; preds = %wait_for_xmitr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i31

if.end.i22:                                       ; preds = %if.end5.i27.if.end.i22_crit_edge, %wait_for_xmitr.exit.if.end.i22_crit_edge
  %tmout.032.i19 = phi i32 [ %dec.i20, %if.end5.i27.if.end.i22_crit_edge ], [ 10000, %wait_for_xmitr.exit.if.end.i22_crit_edge ]
  %dec.i20 = add nsw i32 %tmout.032.i19, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i20)
  %cmp2.i21 = icmp eq i32 %dec.i20, 0
  br i1 %cmp2.i21, label %if.end.i22.for.end.i31_crit_edge, label %if.end5.i27

if.end.i22.for.end.i31_crit_edge:                 ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i31

if.end5.i27:                                      ; preds = %if.end.i22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #13
  %31 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %membase, align 4
  %add.ptr.i23 = getelementptr i8, ptr %32, i32 5
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i23) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %34 = and i8 %33, 96
  %cmp.i26 = icmp eq i8 %34, 96
  br i1 %cmp.i26, label %if.end5.i27.for.end.i31_crit_edge, label %if.end5.i27.if.end.i22_crit_edge

if.end5.i27.if.end.i22_crit_edge:                 ; preds = %if.end5.i27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i22

if.end5.i27.for.end.i31_crit_edge:                ; preds = %if.end5.i27
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i31

for.end.i31:                                      ; preds = %if.end5.i27.for.end.i31_crit_edge, %if.end.i22.for.end.i31_crit_edge, %wait_for_xmitr.exit.for.end.i31_crit_edge
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i, align 4
  %and6.i29 = and i32 %36, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i29)
  %tobool.not.i30 = icmp eq i32 %and6.i29, 0
  br i1 %tobool.not.i30, label %for.end.i31.wait_for_xmitr.exit39_crit_edge, label %for.end.i31.for.body.i35_crit_edge

for.end.i31.for.body.i35_crit_edge:               ; preds = %for.end.i31
  br label %for.body.i35

for.end.i31.wait_for_xmitr.exit39_crit_edge:      ; preds = %for.end.i31
  call void @__sanitizer_cov_trace_pc() #15
  br label %wait_for_xmitr.exit39

for.body.i35:                                     ; preds = %for.inc.i38.for.body.i35_crit_edge, %for.end.i31.for.body.i35_crit_edge
  %tmout8.033.i32 = phi i32 [ %dec19.i36, %for.inc.i38.for.body.i35_crit_edge ], [ 1000000, %for.end.i31.for.body.i35_crit_edge ]
  %37 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %membase, align 4
  %add.ptr12.i33 = getelementptr i8, ptr %38, i32 6
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr12.i33) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %40 = and i8 %39, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool16.not.i34 = icmp eq i8 %40, 0
  br i1 %tobool16.not.i34, label %for.inc.i38, label %for.body.i35.wait_for_xmitr.exit39_crit_edge

for.body.i35.wait_for_xmitr.exit39_crit_edge:     ; preds = %for.body.i35
  call void @__sanitizer_cov_trace_pc() #15
  br label %wait_for_xmitr.exit39

for.inc.i38:                                      ; preds = %for.body.i35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748) #13
  tail call void @touch_softlockup_watchdog() #13
  %dec19.i36 = add nsw i32 %tmout8.033.i32, -1
  %tobool10.not.i37 = icmp eq i32 %dec19.i36, 0
  br i1 %tobool10.not.i37, label %for.inc.i38.wait_for_xmitr.exit39_crit_edge, label %for.inc.i38.for.body.i35_crit_edge

for.inc.i38.for.body.i35_crit_edge:               ; preds = %for.inc.i38
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i35

for.inc.i38.wait_for_xmitr.exit39_crit_edge:      ; preds = %for.inc.i38
  call void @__sanitizer_cov_trace_pc() #15
  br label %wait_for_xmitr.exit39

wait_for_xmitr.exit39:                            ; preds = %for.inc.i38.wait_for_xmitr.exit39_crit_edge, %for.body.i35.wait_for_xmitr.exit39_crit_edge, %for.end.i31.wait_for_xmitr.exit39_crit_edge
  %42 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %membase, align 4
  %add.ptr6 = getelementptr i8, ptr %43, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6, i8 %2) #13, !srcloc !250
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_uart_get_poll_char(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 5
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %conv5 = zext i8 %6 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv5, %if.end ], [ 16711680, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pch_uart_hal_set_line(ptr nocapture noundef readonly %priv, i32 noundef %baud, i32 noundef %parity, i32 noundef %bits, i32 noundef %stb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %uartclk = getelementptr inbounds %struct.eg20t_port, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %uartclk, align 4
  %div180 = lshr i32 %1, 4
  %div281 = lshr i32 %baud, 1
  %add = add nuw i32 %div180, %div281
  %div3 = udiv i32 %add, %baud
  call void @__sanitizer_cov_trace_const_cmp4(i32 65534, i32 %div3)
  %2 = icmp ugt i32 %div3, 65534
  br i1 %2, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.uart_port, ptr %priv, i32 0, i32 45
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.20, i32 noundef %div3) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr = lshr i32 %div3, 8
  %and6 = and i32 %parity, -57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %if.end13, label %do.end10

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %dev12 = getelementptr inbounds %struct.uart_port, ptr %priv, i32 0, i32 45
  %5 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.23, i32 noundef %parity) #17
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %bits)
  %tobool15.not = icmp ult i32 %bits, 4
  br i1 %tobool15.not, label %if.end22, label %do.end19

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %dev21 = getelementptr inbounds %struct.uart_port, ptr %priv, i32 0, i32 45
  %7 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.26, i32 noundef %bits) #17
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  %and23 = and i32 %stb, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end31, label %do.end28

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  %dev30 = getelementptr inbounds %struct.uart_port, ptr %priv, i32 0, i32 45
  %9 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.29, i32 noundef %stb) #17
  br label %cleanup

if.end31:                                         ; preds = %if.end22
  %or = or i32 %bits, %parity
  %or32 = or i32 %or, %stb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_uart_hal_set_line.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_uart_hal_set_line, %if.then38)) #13
          to label %do.end43 [label %if.then38], !srcloc !253

if.then38:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  %dev40 = getelementptr inbounds %struct.uart_port, ptr %priv, i32 0, i32 45
  %11 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev40, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_uart_hal_set_line.__UNIQUE_ID_ddebug238, ptr noundef %12, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.21, i32 noundef %baud, i32 noundef %div3, i32 noundef %or32, i32 noundef %13) #13
  br label %do.end43

do.end43:                                         ; preds = %if.then38, %if.end31
  %membase = getelementptr inbounds %struct.eg20t_port, ptr %priv, i32 0, i32 2
  %14 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -128) #13, !srcloc !250
  %conv = trunc i32 %div3 to i8
  %16 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %17, i8 %conv) #13, !srcloc !250
  %conv46 = trunc i32 %shr to i8
  %18 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase, align 4
  %add.ptr48 = getelementptr i8, ptr %19, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr48, i8 %conv46) #13, !srcloc !250
  %conv49 = trunc i32 %or32 to i8
  %20 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase, align 4
  %add.ptr51 = getelementptr i8, ptr %21, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr51, i8 %conv49) #13, !srcloc !250
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %do.end28, %do.end19, %do.end10, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end10 ], [ -22, %do.end19 ], [ -22, %do.end28 ], [ 0, %do.end43 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_uart_interrupt(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  %error_msg.i = alloca [5 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.eg20t_port, ptr %dev_id, i32 0, i32 32
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %membase.i = getelementptr inbounds %struct.eg20t_port, ptr %dev_id, i32 0, i32 2
  %dmsr.i = getelementptr inbounds %struct.eg20t_port, ptr %dev_id, i32 0, i32 14
  %use_dma29 = getelementptr inbounds %struct.eg20t_port, ptr %dev_id, i32 0, i32 17
  %sg_rx.i = getelementptr inbounds %struct.eg20t_port, ptr %dev_id, i32 0, i32 27
  %trigger_level.i = getelementptr inbounds %struct.eg20t_port, ptr %dev_id, i32 0, i32 12
  %dma_length.i = getelementptr inbounds %struct.eg20t_port, ptr %dev_id, i32 0, i32 27, i32 4
  %rx_buf_virt.i = getelementptr inbounds %struct.eg20t_port, ptr %dev_id, i32 0, i32 29
  %offset1.i.i = getelementptr inbounds %struct.eg20t_port, ptr %dev_id, i32 0, i32 27, i32 1
  %length.i.i = getelementptr inbounds %struct.eg20t_port, ptr %dev_id, i32 0, i32 27, i32 2
  %rx_buf_dma.i = getelementptr inbounds %struct.eg20t_port, ptr %dev_id, i32 0, i32 30
  %dma_address.i = getelementptr inbounds %struct.eg20t_port, ptr %dev_id, i32 0, i32 27, i32 3
  %chan_rx.i = getelementptr inbounds %struct.eg20t_port, ptr %dev_id, i32 0, i32 23
  %desc_rx.i = getelementptr inbounds %struct.eg20t_port, ptr %dev_id, i32 0, i32 19
  %state.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 30
  %frame.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 6
  %parity.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 8
  %overrun.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 7
  %pdev.i = getelementptr inbounds %struct.eg20t_port, ptr %dev_id, i32 0, i32 5
  %dev = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 45
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i120 = getelementptr i8, ptr %1, i32 2
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i120) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %3 = and i8 %2, 15
  %conv6121 = zext i8 %3 to i32
  %and122 = and i32 %conv6121, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool7.not123 = icmp eq i32 %and122, 0
  br i1 %tobool7.not123, label %entry.if.end_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %sw.epilog.if.end_crit_edge, %entry.if.end_crit_edge
  %conv6126 = phi i32 [ %conv6, %sw.epilog.if.end_crit_edge ], [ %conv6121, %entry.if.end_crit_edge ]
  %handled.089125 = phi i32 [ %or48, %sw.epilog.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %ret.090124 = phi i32 [ %ret.1, %sw.epilog.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %4 = tail call i32 @llvm.fshl.i32(i32 %conv6126, i32 %conv6126, i32 31)
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %4, label %do.end46 [
    i32 3, label %sw.bb
    i32 2, label %sw.bb16
    i32 6, label %sw.bb26
    i32 1, label %sw.bb28
    i32 0, label %sw.bb36
  ]

sw.bb:                                            ; preds = %if.end
  %6 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i, align 4
  %add.ptr.i73 = getelementptr i8, ptr %7, i32 5
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i73) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %conv10 = zext i8 %8 to i32
  %and11 = and i32 %conv10, 142
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %sw.bb.sw.epilog_crit_edge, label %if.then13

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then13:                                        ; preds = %sw.bb
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %state.i, align 4
  %call.i = tail call ptr @tty_port_tty_get(ptr noundef %10) #13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %error_msg.i) #13
  %11 = call ptr @memset(ptr %error_msg.i, i32 0, i32 20)
  %and.i = and i32 %conv10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then13.if.end.i_crit_edge, label %if.then.i

if.then13.if.end.i_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %error_msg.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.42, ptr %error_msg.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then13.if.end.i_crit_edge
  %i.0.i = phi i32 [ 1, %if.then.i ], [ 0, %if.then13.if.end.i_crit_edge ]
  %and3.i = and i32 %conv10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.then5.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %frame.i, align 4
  %inc6.i = add i32 %14, 1
  store i32 %inc6.i, ptr %frame.i, align 4
  %inc7.i = add nuw nsw i32 %i.0.i, 1
  %arrayidx8.i = getelementptr [5 x ptr], ptr %error_msg.i, i32 0, i32 %i.0.i
  %15 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.43, ptr %arrayidx8.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then5.i, %if.end.i.if.end9.i_crit_edge
  %i.1.i = phi i32 [ %inc7.i, %if.then5.i ], [ %i.0.i, %if.end.i.if.end9.i_crit_edge ]
  %and10.i = and i32 %conv10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end9.i.if.end17.i_crit_edge, label %if.then12.i

if.end9.i.if.end17.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %parity.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %parity.i, align 4
  %inc14.i = add i32 %17, 1
  store i32 %inc14.i, ptr %parity.i, align 4
  %inc15.i = add nuw nsw i32 %i.1.i, 1
  %arrayidx16.i = getelementptr [5 x ptr], ptr %error_msg.i, i32 0, i32 %i.1.i
  %18 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.44, ptr %arrayidx16.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then12.i, %if.end9.i.if.end17.i_crit_edge
  %i.2.i = phi i32 [ %inc15.i, %if.then12.i ], [ %i.1.i, %if.end9.i.if.end17.i_crit_edge ]
  %and18.i = and i32 %conv10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end17.i.if.end25.i_crit_edge, label %if.then20.i

if.end17.i.if.end25.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25.i

if.then20.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %overrun.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %overrun.i, align 4
  %inc22.i = add i32 %20, 1
  store i32 %inc22.i, ptr %overrun.i, align 4
  %arrayidx24.i = getelementptr [5 x ptr], ptr %error_msg.i, i32 0, i32 %i.2.i
  %21 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.45, ptr %arrayidx24.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then20.i, %if.end17.i.if.end25.i_crit_edge
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %for.cond.preheader.i, label %if.else.i

for.cond.preheader.i:                             ; preds = %if.end25.i
  %22 = ptrtoint ptr %error_msg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %error_msg.i, align 4
  %cmp28.not48.i = icmp eq ptr %23, null
  br i1 %cmp28.not48.i, label %for.cond.preheader.i.pch_uart_err_ir.exit_crit_edge, label %for.cond.preheader.i.do.end.i_crit_edge

for.cond.preheader.i.do.end.i_crit_edge:          ; preds = %for.cond.preheader.i
  br label %do.end.i

for.cond.preheader.i.pch_uart_err_ir.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pch_uart_err_ir.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %for.cond.preheader.i.do.end.i_crit_edge
  %24 = phi ptr [ %28, %do.end.i.do.end.i_crit_edge ], [ %23, %for.cond.preheader.i.do.end.i_crit_edge ]
  %i.349.i = phi i32 [ %inc32.i, %do.end.i.do.end.i_crit_edge ], [ 0, %for.cond.preheader.i.do.end.i_crit_edge ]
  %25 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull %24) #17
  %inc32.i = add i32 %i.349.i, 1
  %arrayidx27.i = getelementptr [5 x ptr], ptr %error_msg.i, i32 0, i32 %inc32.i
  %27 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx27.i, align 4
  %cmp28.not.i = icmp eq ptr %28, null
  br i1 %cmp28.not.i, label %do.end.i.pch_uart_err_ir.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

do.end.i.pch_uart_err_ir.exit_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pch_uart_err_ir.exit

if.else.i:                                        ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @tty_kref_put(ptr noundef nonnull %call.i) #13
  br label %pch_uart_err_ir.exit

pch_uart_err_ir.exit:                             ; preds = %if.else.i, %do.end.i.pch_uart_err_ir.exit_crit_edge, %for.cond.preheader.i.pch_uart_err_ir.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %error_msg.i) #13
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  %29 = ptrtoint ptr %use_dma29 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %use_dma29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool17.not = icmp eq i32 %30, 0
  br i1 %tobool17.not, label %if.else23, label %if.then18

if.then18:                                        ; preds = %sw.bb16
  %31 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %membase.i, align 4
  %add.ptr.i75 = getelementptr i8, ptr %32, i32 1
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i75) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %conv2.i = and i8 %33, -6
  %34 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %35, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 %conv2.i) #13, !srcloc !250
  tail call void @sg_init_table(ptr noundef %sg_rx.i, i32 noundef 1) #13
  %36 = ptrtoint ptr %trigger_level.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %trigger_level.i, align 4
  %38 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %dma_length.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %39 = load ptr, ptr @mem_map, align 4
  %40 = ptrtoint ptr %rx_buf_virt.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rx_buf_virt.i, align 4
  %42 = ptrtoint ptr %41 to i32
  %sub.i = add i32 %42, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr5.i = getelementptr %struct.page, ptr %39, i32 %shr.i
  %and.i76 = and i32 %42, 4095
  %43 = ptrtoint ptr %sg_rx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sg_rx.i, align 4
  %45 = ptrtoint ptr %add.ptr5.i to i32
  %and2.i.i.i = and i32 %45, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !254

do.body5.i.i.i:                                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #13, !srcloc !255
  unreachable

do.body11.i.i.i:                                  ; preds = %if.then18
  %and.i.i.i.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_page.exit.i, label %do.body19.i.i.i, !prof !254

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #13, !srcloc !256
  unreachable

sg_set_page.exit.i:                               ; preds = %do.body11.i.i.i
  %and.i.i.i = and i32 %44, 3
  %or.i.i.i = or i32 %and.i.i.i, %45
  %46 = ptrtoint ptr %sg_rx.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or.i.i.i, ptr %sg_rx.i, align 4
  %47 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and.i76, ptr %offset1.i.i, align 4
  %48 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %37, ptr %length.i.i, align 4
  %49 = ptrtoint ptr %rx_buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_buf_dma.i, align 4
  %51 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %dma_address.i, align 4
  %52 = ptrtoint ptr %chan_rx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chan_rx.i, align 4
  %tobool.not.i.i = icmp eq ptr %53, null
  br i1 %tobool.not.i.i, label %sg_set_page.exit.i.if.then21_crit_edge, label %lor.lhs.false.i.i

sg_set_page.exit.i.if.then21_crit_edge:           ; preds = %sg_set_page.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then21

lor.lhs.false.i.i:                                ; preds = %sg_set_page.exit.i
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %tobool1.not.i.i = icmp eq ptr %55, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.if.then21_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.if.then21_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then21

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %55, i32 0, i32 39
  %56 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %57, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.if.then21_crit_edge, label %dmaengine_prep_slave_sg.exit.i

lor.lhs.false2.i.i.if.then21_crit_edge:           ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then21

dmaengine_prep_slave_sg.exit.i:                   ; preds = %lor.lhs.false2.i.i
  %call.i.i = tail call ptr %57(ptr noundef nonnull %53, ptr noundef %sg_rx.i, i32 noundef 1, i32 noundef 2, i32 noundef 3, ptr noundef null) #13
  %tobool.not.i77 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i77, label %dmaengine_prep_slave_sg.exit.i.if.then21_crit_edge, label %dma_handle_rx.exit

dmaengine_prep_slave_sg.exit.i.if.then21_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then21

dma_handle_rx.exit:                               ; preds = %dmaengine_prep_slave_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %58 = ptrtoint ptr %desc_rx.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i.i, ptr %desc_rx.i, align 4
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 6
  %59 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @pch_dma_rx_complete, ptr %callback.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 8
  %60 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %dev_id, ptr %callback_param.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 4
  %61 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tx_submit.i, align 4
  %call8.i = tail call i32 %62(ptr noundef nonnull %call.i.i) #13
  %63 = ptrtoint ptr %chan_rx.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %chan_rx.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %66, i32 0, i32 50
  %67 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %device_issue_pending.i.i, align 4
  tail call void %68(ptr noundef %64) #13
  br label %sw.epilog

if.then21:                                        ; preds = %dmaengine_prep_slave_sg.exit.i.if.then21_crit_edge, %lor.lhs.false2.i.i.if.then21_crit_edge, %lor.lhs.false.i.i.if.then21_crit_edge, %sg_set_page.exit.i.if.then21_crit_edge
  %69 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %membase.i, align 4
  %add.ptr.i80 = getelementptr i8, ptr %70, i32 1
  %71 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i80) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %conv1.i = or i8 %71, 5
  %72 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %membase.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %73, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i, i8 %conv1.i) #13, !srcloc !250
  br label %sw.epilog

if.else23:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #15
  %call.i81 = tail call fastcc i32 @handle_rx_to(ptr noundef %dev_id) #13
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call27 = tail call fastcc i32 @handle_rx_to(ptr noundef %dev_id)
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end
  %74 = ptrtoint ptr %use_dma29 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %use_dma29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool30.not = icmp eq i32 %75, 0
  br i1 %tobool30.not, label %if.else33, label %if.then31

if.then31:                                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #15
  %call32 = tail call fastcc i32 @dma_handle_tx(ptr noundef %dev_id)
  br label %sw.epilog

if.else33:                                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #15
  %call34 = tail call fastcc i32 @handle_tx(ptr noundef %dev_id)
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %76 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %membase.i, align 4
  %add.ptr.i83 = getelementptr i8, ptr %77, i32 6
  %78 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i83) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %79 = and i8 %78, 15
  %and.i84 = zext i8 %79 to i32
  %80 = ptrtoint ptr %dmsr.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %and.i84, ptr %dmsr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %cmp40 = icmp eq i8 %79, 0
  %or = or i32 %ret.090124, 256
  %spec.select = select i1 %cmp40, i32 %ret.090124, i32 %or
  br label %sw.epilog.thread

do.end46:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %81 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %83 = load volatile i32, ptr @jiffies, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef %conv6126, i32 noundef %83) #17
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %do.end46, %sw.bb36
  %ret.1.ph = phi i32 [ %spec.select, %sw.bb36 ], [ -1, %do.end46 ]
  %or4893 = or i32 %ret.1.ph, %handled.089125
  br label %while.end

sw.epilog:                                        ; preds = %if.else33, %if.then31, %sw.bb26, %if.else23, %if.then21, %dma_handle_rx.exit, %pch_uart_err_ir.exit, %sw.bb.sw.epilog_crit_edge
  %ret.1 = phi i32 [ %call32, %if.then31 ], [ %call34, %if.else33 ], [ %call27, %sw.bb26 ], [ 1, %dma_handle_rx.exit ], [ 0, %if.then21 ], [ %call.i81, %if.else23 ], [ 16, %pch_uart_err_ir.exit ], [ 1024, %sw.bb.sw.epilog_crit_edge ]
  %or48 = or i32 %ret.1, %handled.089125
  %84 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %85, i32 2
  %86 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %87 = and i8 %86, 15
  %conv6 = zext i8 %87 to i32
  %and = and i32 %conv6, 1
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %sw.epilog.if.end_crit_edge, label %sw.epilog.while.end_crit_edge

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %sw.epilog.thread, %entry.while.end_crit_edge
  %handled.0.lcssa = phi i32 [ %or4893, %sw.epilog.thread ], [ 0, %entry.while.end_crit_edge ], [ %or48, %sw.epilog.while.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.0.lcssa)
  %tobool50.not = icmp ne i32 %handled.0.lcssa, 0
  %cond = zext i1 %tobool50.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_request_dma(ptr noundef %port) unnamed_addr #3 align 64 {
entry:
  %mask = alloca %struct.dma_cap_mask_t, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #13
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %mask, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %mask) #13
  %pdev = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 5
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 4
  %bus = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus, align 8
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 6
  %5 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %devfn, align 4
  %and = and i32 %6, 248
  %call = call ptr @pci_get_slot(ptr noundef %4, i32 noundef %and) #13
  %param_tx = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 20
  %dev = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 44
  %7 = ptrtoint ptr %param_tx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %param_tx, align 4
  %line = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %8 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %line, align 4
  %mul = shl i32 %9, 1
  %chan_id = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 20, i32 1
  %10 = ptrtoint ptr %chan_id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul, ptr %chan_id, align 4
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %11 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mapbase, align 4
  %tx_reg = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 20, i32 2
  %13 = ptrtoint ptr %tx_reg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %tx_reg, align 4
  %call5 = call ptr @__dma_request_channel(ptr noundef nonnull %mask, ptr noundef nonnull @filter, ptr noundef %param_tx, ptr noundef null) #13
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev7 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %14 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %chan_tx = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 22
  %16 = ptrtoint ptr %chan_tx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call5, ptr %chan_tx, align 4
  %param_rx = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 21
  %17 = ptrtoint ptr %param_rx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %param_rx, align 4
  %18 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %line, align 4
  %mul12 = shl i32 %19, 1
  %add13 = or i32 %mul12, 1
  %chan_id14 = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 21, i32 1
  %20 = ptrtoint ptr %chan_id14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add13, ptr %chan_id14, align 4
  %21 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mapbase, align 4
  %rx_reg = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 21, i32 3
  %23 = ptrtoint ptr %rx_reg to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %rx_reg, align 4
  %call17 = call ptr @__dma_request_channel(ptr noundef nonnull %mask, ptr noundef nonnull @filter, ptr noundef %param_rx, ptr noundef null) #13
  %tobool18.not = icmp eq ptr %call17, null
  %dev24 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %24 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev24, align 4
  br i1 %tobool18.not, label %do.end22, label %if.end27

do.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.71) #17
  %26 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chan_tx, align 4
  call void @dma_release_channel(ptr noundef %27) #13
  %28 = ptrtoint ptr %chan_tx to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %chan_tx, align 4
  br label %cleanup

if.end27:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 23
  %29 = ptrtoint ptr %fifosize to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fifosize, align 4
  %rx_buf_dma = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 30
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %25, i32 noundef %30, ptr noundef %rx_buf_dma, i32 noundef 3264, i32 noundef 0) #13
  %rx_buf_virt = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 29
  %31 = ptrtoint ptr %rx_buf_virt to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %rx_buf_virt, align 4
  %chan_rx = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 23
  %32 = ptrtoint ptr %chan_rx to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call17, ptr %chan_rx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end22, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @handle_rx_to(ptr noundef %priv) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %start_rx = getelementptr inbounds %struct.eg20t_port, ptr %priv, i32 0, i32 9
  %0 = ptrtoint ptr %start_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start_rx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %membase.i = getelementptr inbounds %struct.eg20t_port, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %conv2.i = and i8 %4, -6
  %5 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %6, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 %conv2.i) #13, !srcloc !250
  br label %cleanup

if.end:                                           ; preds = %entry
  %rxbuf = getelementptr inbounds %struct.eg20t_port, ptr %priv, i32 0, i32 13
  %size = getelementptr inbounds %struct.eg20t_port, ptr %priv, i32 0, i32 13, i32 1
  %membase.i18 = getelementptr inbounds %struct.eg20t_port, ptr %priv, i32 0, i32 2
  %brk.i = getelementptr inbounds %struct.uart_port, ptr %priv, i32 0, i32 31, i32 9
  %state1.i.i = getelementptr inbounds %struct.uart_port, ptr %priv, i32 0, i32 30
  %handle_break.i.i = getelementptr inbounds %struct.uart_port, ptr %priv, i32 0, i32 17
  %has_sysrq.i.i = getelementptr inbounds %struct.uart_port, ptr %priv, i32 0, i32 48
  %cons.i.i = getelementptr inbounds %struct.uart_port, ptr %priv, i32 0, i32 32
  %line.i.i = getelementptr inbounds %struct.uart_port, ptr %priv, i32 0, i32 41
  %sysrq.i.i = getelementptr inbounds %struct.uart_port, ptr %priv, i32 0, i32 46
  %flags.i.i = getelementptr inbounds %struct.uart_port, ptr %priv, i32 0, i32 33
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load i32, ptr %size, align 4
  br label %do.body

do.body:                                          ; preds = %pch_uart_hal_read.exit.do.body_crit_edge, %if.end
  %8 = phi i32 [ %57, %pch_uart_hal_read.exit.do.body_crit_edge ], [ %.pr, %if.end ]
  %9 = ptrtoint ptr %rxbuf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rxbuf, align 4
  %11 = ptrtoint ptr %membase.i18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i18, align 4
  %add.ptr.i19 = getelementptr i8, ptr %12, i32 5
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %14 = ptrtoint ptr %membase.i18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i18, align 4
  %add.ptr3.i = getelementptr i8, ptr %15, i32 5
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp51.i = icmp sgt i32 %8, 0
  br i1 %cmp51.i, label %do.body.land.rhs.i_crit_edge, label %do.body.pch_uart_hal_read.exit_crit_edge

do.body.pch_uart_hal_read.exit_crit_edge:         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %pch_uart_hal_read.exit

do.body.land.rhs.i_crit_edge:                     ; preds = %do.body
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %do.body.land.rhs.i_crit_edge
  %lsr.055.i = phi i8 [ %51, %for.inc.i.land.rhs.i_crit_edge ], [ %16, %do.body.land.rhs.i_crit_edge ]
  %i.052.i = phi i32 [ %i.1.i, %for.inc.i.land.rhs.i_crit_edge ], [ 0, %do.body.land.rhs.i_crit_edge ]
  %conv.i = zext i8 %lsr.055.i to i32
  %and.i = and i32 %conv.i, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.rhs.i.pch_uart_hal_read.exit_crit_edge, label %for.body.i

land.rhs.i.pch_uart_hal_read.exit_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pch_uart_hal_read.exit

for.body.i:                                       ; preds = %land.rhs.i
  %17 = ptrtoint ptr %membase.i18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase.i18, align 4
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %18) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %and9.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %for.body.i.if.end14.i_crit_edge, label %if.then.i

for.body.i.if.end14.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.i

if.then.i:                                        ; preds = %for.body.i
  %20 = ptrtoint ptr %brk.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %brk.i, align 4
  %inc.i = add i32 %21, 1
  store i32 %inc.i, ptr %brk.i, align 4
  %22 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %state1.i.i, align 4
  %24 = ptrtoint ptr %handle_break.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %handle_break.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %25(ptr noundef %priv) #13
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %26 = ptrtoint ptr %has_sysrq.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %has_sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool3.not.i.i = icmp eq i8 %27, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end15.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.if.end15.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %28 = ptrtoint ptr %cons.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cons.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %29, null
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.if.end15.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.if.end15.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %index.i.i = getelementptr inbounds %struct.console, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %index.i.i, align 2
  %conv7.i.i = sext i16 %31 to i32
  %32 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %line.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv7.i.i)
  %cmp.i.i = icmp eq i32 %33, %conv7.i.i
  br i1 %cmp.i.i, label %if.then9.i.i, label %land.lhs.true5.i.i.if.end15.i.i_crit_edge

land.lhs.true5.i.i.if.end15.i.i_crit_edge:        ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.i.i

if.then9.i.i:                                     ; preds = %land.lhs.true5.i.i
  %34 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool10.not.i.i = icmp eq i32 %35, 0
  br i1 %tobool10.not.i.i, label %uart_handle_break.exit.i, label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.end13.i.i, %land.lhs.true5.i.i.if.end15.i.i_crit_edge, %land.lhs.true.i.i.if.end15.i.i_crit_edge, %if.end.i.i.if.end15.i.i_crit_edge
  %37 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool16.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end15.i.i.if.end14.i_crit_edge, label %if.then17.i.i

if.end15.i.i.if.end14.i_crit_edge:                ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.i

if.then17.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %tty.i.i = getelementptr inbounds %struct.tty_port, ptr %23, i32 0, i32 1
  %39 = ptrtoint ptr %tty.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tty.i.i, align 4
  tail call void @do_SAK(ptr noundef %40) #13
  br label %if.end14.i

uart_handle_break.exit.i:                         ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %41, 500
  %42 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add.i.i, ptr %sysrq.i.i, align 4
  br label %for.inc.i

if.end14.i:                                       ; preds = %if.then17.i.i, %if.end15.i.i.if.end14.i_crit_edge, %for.body.i.if.end14.i_crit_edge
  %conv15.i = zext i8 %19 to i32
  %43 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i35.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i35.i, label %if.end14.i.if.end19.i_crit_edge, label %if.end.i36.i

if.end14.i.if.end19.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.i

if.end.i36.i:                                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool1.not.i.i = icmp eq i8 %19, 0
  br i1 %tobool1.not.i.i, label %if.end.i36.i.uart_handle_sysrq_char.exit.thread48.i_crit_edge, label %land.lhs.true.i38.i

if.end.i36.i.uart_handle_sysrq_char.exit.thread48.i_crit_edge: ; preds = %if.end.i36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %uart_handle_sysrq_char.exit.thread48.i

land.lhs.true.i38.i:                              ; preds = %if.end.i36.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %45, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i37.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i37.i, label %if.then3.i.i, label %land.lhs.true.i38.i.uart_handle_sysrq_char.exit.thread48.i_crit_edge

land.lhs.true.i38.i.uart_handle_sysrq_char.exit.thread48.i_crit_edge: ; preds = %land.lhs.true.i38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %uart_handle_sysrq_char.exit.thread48.i

if.then3.i.i:                                     ; preds = %land.lhs.true.i38.i
  %call.i.i = tail call i32 @sysrq_mask() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i39.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i39.i, label %if.end7.i.i, label %uart_handle_sysrq_char.exit.i

if.end7.i.i:                                      ; preds = %if.then3.i.i
  %call8.i.i = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %priv, i32 noundef %conv15.i) #13
  br i1 %call8.i.i, label %if.end7.i.i.for.inc.i_crit_edge, label %if.end7.i.i.uart_handle_sysrq_char.exit.thread48.i_crit_edge

if.end7.i.i.uart_handle_sysrq_char.exit.thread48.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %uart_handle_sysrq_char.exit.thread48.i

if.end7.i.i.for.inc.i_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

uart_handle_sysrq_char.exit.thread48.i:           ; preds = %if.end7.i.i.uart_handle_sysrq_char.exit.thread48.i_crit_edge, %land.lhs.true.i38.i.uart_handle_sysrq_char.exit.thread48.i_crit_edge, %if.end.i36.i.uart_handle_sysrq_char.exit.thread48.i_crit_edge
  %46 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %if.end19.i

uart_handle_sysrq_char.exit.i:                    ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @handle_sysrq(i32 noundef %conv15.i) #13
  %47 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %for.inc.i

if.end19.i:                                       ; preds = %uart_handle_sysrq_char.exit.thread48.i, %if.end14.i.if.end19.i_crit_edge
  %inc20.i = add nsw i32 %i.052.i, 1
  %arrayidx.i = getelementptr i8, ptr %10, i32 %i.052.i
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %19, ptr %arrayidx.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end19.i, %uart_handle_sysrq_char.exit.i, %if.end7.i.i.for.inc.i_crit_edge, %uart_handle_break.exit.i
  %i.1.i = phi i32 [ %i.052.i, %uart_handle_break.exit.i ], [ %i.052.i, %uart_handle_sysrq_char.exit.i ], [ %inc20.i, %if.end19.i ], [ %i.052.i, %if.end7.i.i.for.inc.i_crit_edge ]
  %49 = ptrtoint ptr %membase.i18 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %membase.i18, align 4
  %add.ptr22.i = getelementptr i8, ptr %50, i32 5
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr22.i) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %cmp.i = icmp slt i32 %i.1.i, %8
  br i1 %cmp.i, label %for.inc.i.land.rhs.i_crit_edge, label %for.inc.i.pch_uart_hal_read.exit_crit_edge

for.inc.i.pch_uart_hal_read.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pch_uart_hal_read.exit

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i

pch_uart_hal_read.exit:                           ; preds = %for.inc.i.pch_uart_hal_read.exit_crit_edge, %land.rhs.i.pch_uart_hal_read.exit_crit_edge, %do.body.pch_uart_hal_read.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %do.body.pch_uart_hal_read.exit_crit_edge ], [ %i.052.i, %land.rhs.i.pch_uart_hal_read.exit_crit_edge ], [ %i.1.i, %for.inc.i.pch_uart_hal_read.exit_crit_edge ]
  %52 = ptrtoint ptr %rxbuf to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rxbuf, align 4
  %54 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %state1.i.i, align 4
  %call.i.i20 = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %55, ptr noundef %53, i8 noundef zeroext 0, i32 noundef %i.0.lcssa.i) #13
  tail call void @tty_flip_buffer_push(ptr noundef %55) #13
  %56 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %size, align 4
  %cmp = icmp eq i32 %i.0.lcssa.i, %57
  br i1 %cmp, label %pch_uart_hal_read.exit.do.body_crit_edge, label %pch_uart_hal_read.exit.cleanup_crit_edge

pch_uart_hal_read.exit.cleanup_crit_edge:         ; preds = %pch_uart_hal_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

pch_uart_hal_read.exit.do.body_crit_edge:         ; preds = %pch_uart_hal_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

cleanup:                                          ; preds = %pch_uart_hal_read.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %pch_uart_hal_read.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dma_handle_tx(ptr noundef %priv) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %priv, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %xmit2 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2
  %start_tx = getelementptr inbounds %struct.eg20t_port, ptr %priv, i32 0, i32 8
  %2 = ptrtoint ptr %start_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.uart_port, ptr %priv, i32 0, i32 45
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, i32 noundef %6) #17
  %membase.i = getelementptr inbounds %struct.eg20t_port, ptr %priv, i32 0, i32 2
  %7 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 1
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %conv2.i = and i8 %9, -3
  %10 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %11, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 %conv2.i) #13, !srcloc !250
  %tx_empty = getelementptr inbounds %struct.eg20t_port, ptr %priv, i32 0, i32 10
  %12 = ptrtoint ptr %tx_empty to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %tx_empty, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_dma_use = getelementptr inbounds %struct.eg20t_port, ptr %priv, i32 0, i32 28
  %13 = ptrtoint ptr %tx_dma_use to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_dma_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.not = icmp eq i32 %14, 0
  br i1 %tobool4.not, label %if.end17, label %do.body6

do.body6:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dma_handle_tx.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dma_handle_tx, %if.then10)) #13
          to label %do.end15 [label %if.then10], !srcloc !253

if.then10:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #15
  %dev12 = getelementptr inbounds %struct.uart_port, ptr %priv, i32 0, i32 45
  %15 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev12, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dma_handle_tx.__UNIQUE_ID_ddebug247, ptr noundef %16, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.51, i32 noundef %17) #13
  br label %do.end15

do.end15:                                         ; preds = %if.then10, %do.body6
  %membase.i279 = getelementptr inbounds %struct.eg20t_port, ptr %priv, i32 0, i32 2
  %18 = ptrtoint ptr %membase.i279 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i279, align 4
  %add.ptr.i280 = getelementptr i8, ptr %19, i32 1
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i280) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %conv2.i281 = and i8 %20, -3
  %21 = ptrtoint ptr %membase.i279 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase.i279, align 4
  %add.ptr4.i282 = getelementptr i8, ptr %22, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i282, i8 %conv2.i281) #13, !srcloc !250
  %tx_empty16 = getelementptr inbounds %struct.eg20t_port, ptr %priv, i32 0, i32 10
  %23 = ptrtoint ptr %tx_empty16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %tx_empty16, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %fifo_size18 = getelementptr inbounds %struct.eg20t_port, ptr %priv, i32 0, i32 6
  %24 = ptrtoint ptr %fifo_size18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fifo_size18, align 4
  %26 = tail call i32 @llvm.smax.i32(i32 %25, i32 1)
  %27 = ptrtoint ptr %xmit2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %xmit2, align 4
  %x_char.i = getelementptr inbounds %struct.uart_port, ptr %priv, i32 0, i32 24
  %29 = ptrtoint ptr %x_char.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %x_char.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i, label %if.end17.if.end24_crit_edge, label %do.body.i

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

do.body.i:                                        ; preds = %if.end17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pop_tx_x.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dma_handle_tx, %if.then5.i)) #13
          to label %if.then22 [label %if.then5.i], !srcloc !253

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %priv, i32 0, i32 45
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  %33 = ptrtoint ptr %x_char.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %x_char.i, align 4
  %conv.i = zext i8 %34 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pop_tx_x.__UNIQUE_ID_ddebug239, ptr noundef %32, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.65, i32 noundef %conv.i, i32 noundef %35) #13
  br label %if.then22

if.then22:                                        ; preds = %if.then5.i, %do.body.i
  %36 = ptrtoint ptr %x_char.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %x_char.i, align 4
  %38 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %28, align 1
  store i8 0, ptr %x_char.i, align 4
  %39 = ptrtoint ptr %xmit2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %xmit2, align 4
  %membase.i283 = getelementptr inbounds %struct.eg20t_port, ptr %priv, i32 0, i32 2
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 1
  %43 = ptrtoint ptr %membase.i283 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase.i283, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %44, i8 %42) #13, !srcloc !250
  %tx = getelementptr inbounds %struct.uart_port, ptr %priv, i32 0, i32 31, i32 5
  %45 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx, align 4
  %inc = add i32 %46, 1
  store i32 %inc, ptr %tx, align 4
  %dec = add nsw i32 %26, -1
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end17.if.end24_crit_edge
  %fifo_size.0 = phi i32 [ %dec, %if.then22 ], [ %26, %if.end17.if.end24_crit_edge ]
  %head = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %47 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %49 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tail, align 4
  %sub = sub i32 %48, %50
  %and = and i32 %sub, 4095
  %sub26 = sub i32 4096, %50
  %add = add i32 %sub26, %48
  %and28 = and i32 %add, 4095
  %51 = tail call i32 @llvm.smin.i32(i32 %and28, i32 %sub26)
  %52 = tail call i32 @llvm.smin.i32(i32 %and, i32 %51)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool41.not = icmp eq i32 %52, 0
  br i1 %tobool41.not, label %do.body43, label %if.end61

do.body43:                                        ; preds = %if.end24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dma_handle_tx.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dma_handle_tx, %if.then55)) #13
          to label %do.end60 [label %if.then55], !srcloc !253

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #15
  %dev57 = getelementptr inbounds %struct.uart_port, ptr %priv, i32 0, i32 45
  %53 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev57, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dma_handle_tx.__UNIQUE_ID_ddebug252, ptr noundef %54, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.51) #13
  br label %do.end60

do.end60:                                         ; preds = %if.then55, %do.body43
  %membase.i284 = getelementptr inbounds %struct.eg20t_port, ptr %priv, i32 0, i32 2
  %55 = ptrtoint ptr %membase.i284 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %membase.i284, align 4
  %add.ptr.i285 = getelementptr i8, ptr %56, i32 1
  %57 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i285) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %conv2.i286 = and i8 %57, -3
  %58 = ptrtoint ptr %membase.i284 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %membase.i284, align 4
  %add.ptr4.i287 = getelementptr i8, ptr %59, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i287, i8 %conv2.i286) #13, !srcloc !250
  tail call void @uart_write_wakeup(ptr noundef %priv) #13
  br label %cleanup

if.end61:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %fifo_size.0)
  %cmp62 = icmp sgt i32 %52, %fifo_size.0
  br i1 %cmp62, label %if.then63, label %if.end61.do.body67_crit_edge

if.end61.do.body67_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body67

if.then63:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  %.frozen = freeze i32 %52
  %fifo_size.0.frozen = freeze i32 %fifo_size.0
  %div = sdiv i32 %.frozen, %fifo_size.0.frozen
  %add64 = add nsw i32 %div, 1
  %60 = mul i32 %div, %fifo_size.0.frozen
  %rem65.decomposed = sub i32 %.frozen, %60
  br label %do.body67

do.body67:                                        ; preds = %if.then63, %if.end61.do.body67_crit_edge
  %size.0 = phi i32 [ %fifo_size.0, %if.then63 ], [ %52, %if.end61.do.body67_crit_edge ]
  %rem.0 = phi i32 [ %rem65.decomposed, %if.then63 ], [ %52, %if.end61.do.body67_crit_edge ]
  %num.0 = phi i32 [ %add64, %if.then63 ], [ 1, %if.end61.do.body67_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dma_handle_tx.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dma_handle_tx, %if.then79)) #13
          to label %do.end84 [label %if.then79], !srcloc !253

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #15
  %dev81 = getelementptr inbounds %struct.uart_port, ptr %priv, i32 0, i32 45
  %61 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev81, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dma_handle_tx.__UNIQUE_ID_ddebug253, ptr noundef %62, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.51, i32 noundef %num.0, i32 noundef %size.0, i32 noundef %rem.0) #13
  br label %do.end84

do.end84:                                         ; preds = %if.then79, %do.body67
  %63 = ptrtoint ptr %tx_dma_use to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %tx_dma_use, align 4
  %64 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num.0, i32 20) #13
  %65 = extractvalue { i32, i1 } %64, 1
  br i1 %65, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !257

kmalloc_array.exit.thread:                        ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #15
  %sg_tx_p311 = getelementptr inbounds %struct.eg20t_port, ptr %priv, i32 0, i32 24
  %66 = ptrtoint ptr %sg_tx_p311 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %sg_tx_p311, align 4
  br label %do.end92

if.end7.i:                                        ; preds = %do.end84
  %67 = extractvalue { i32, i1 } %64, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %67, i32 noundef 2592) #18
  %sg_tx_p = getelementptr inbounds %struct.eg20t_port, ptr %priv, i32 0, i32 24
  %68 = ptrtoint ptr %sg_tx_p to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call8.i, ptr %sg_tx_p, align 4
  %tobool88.not = icmp eq ptr %call8.i, null
  br i1 %tobool88.not, label %if.end7.i.do.end92_crit_edge, label %if.end95

if.end7.i.do.end92_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end92

do.end92:                                         ; preds = %if.end7.i.do.end92_crit_edge, %kmalloc_array.exit.thread
  %dev94 = getelementptr inbounds %struct.uart_port, ptr %priv, i32 0, i32 45
  %69 = ptrtoint ptr %dev94 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev94, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.51) #17
  br label %cleanup

if.end95:                                         ; preds = %if.end7.i
  tail call void @sg_init_table(ptr noundef nonnull %call8.i, i32 noundef %num.0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.0)
  %cmp98321.not = icmp eq i32 %num.0, 0
  br i1 %cmp98321.not, label %if.end95.for.end_crit_edge, label %for.body.lr.ph

if.end95.for.end_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end95
  %71 = ptrtoint ptr %sg_tx_p to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %sg_tx_p, align 4
  %sub99 = add nsw i32 %num.0, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %sg.0324 = phi ptr [ %72, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %i.0322 = phi i32 [ 0, %for.body.lr.ph ], [ %inc115, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0322, i32 %sub99)
  %cmp100 = icmp eq i32 %i.0322, %sub99
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %73 = load ptr, ptr @mem_map, align 4
  %74 = ptrtoint ptr %xmit2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %xmit2, align 4
  %76 = ptrtoint ptr %75 to i32
  %sub103 = add i32 %76, 1073741824
  %shr = lshr i32 %sub103, 12
  %add.ptr = getelementptr %struct.page, ptr %73, i32 %shr
  %77 = ptrtoint ptr %add.ptr to i32
  %and2.i.i = and i32 %77, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %cmp100, label %if.then101, label %if.else106

if.then101:                                       ; preds = %for.body
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !254

do.body5.i.i:                                     ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #13, !srcloc !255
  unreachable

do.body11.i.i:                                    ; preds = %if.then101
  %78 = ptrtoint ptr %sg.0324 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %sg.0324, align 4
  %and.i.i.i = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %do.body11.i.i.for.inc_crit_edge, label %do.body19.i.i, !prof !254

do.body11.i.i.for.inc_crit_edge:                  ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #13, !srcloc !256
  unreachable

if.else106:                                       ; preds = %for.body
  br i1 %tobool.not.i.i, label %do.body11.i.i295, label %do.body5.i.i292, !prof !254

do.body5.i.i292:                                  ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #13, !srcloc !255
  unreachable

do.body11.i.i295:                                 ; preds = %if.else106
  %80 = ptrtoint ptr %sg.0324 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %sg.0324, align 4
  %and.i.i.i293 = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i293)
  %tobool.i.not.i.i294 = icmp eq i32 %and.i.i.i293, 0
  br i1 %tobool.i.not.i.i294, label %do.body11.i.i295.for.inc_crit_edge, label %do.body19.i.i296, !prof !254

do.body11.i.i295.for.inc_crit_edge:               ; preds = %do.body11.i.i295
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.body19.i.i296:                                 ; preds = %do.body11.i.i295
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #13, !srcloc !256
  unreachable

for.inc:                                          ; preds = %do.body11.i.i295.for.inc_crit_edge, %do.body11.i.i.for.inc_crit_edge
  %.sink331 = phi i32 [ %79, %do.body11.i.i.for.inc_crit_edge ], [ %81, %do.body11.i.i295.for.inc_crit_edge ]
  %sub99.pn = phi i32 [ %sub99, %do.body11.i.i.for.inc_crit_edge ], [ %i.0322, %do.body11.i.i295.for.inc_crit_edge ]
  %rem.0.sink = phi i32 [ %rem.0, %do.body11.i.i.for.inc_crit_edge ], [ %size.0, %do.body11.i.i295.for.inc_crit_edge ]
  %mul.sink = mul i32 %sub99.pn, %fifo_size.0
  %and.i.i = and i32 %.sink331, 3
  %or.i.i = or i32 %and.i.i, %77
  %82 = ptrtoint ptr %sg.0324 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %or.i.i, ptr %sg.0324, align 4
  %offset1.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0324, i32 0, i32 1
  %83 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %mul.sink, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0324, i32 0, i32 2
  %84 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %rem.0.sink, ptr %length.i, align 4
  %inc115 = add nuw nsw i32 %i.0322, 1
  %incdec.ptr = getelementptr %struct.scatterlist, ptr %sg.0324, i32 1
  %exitcond.not = icmp eq i32 %inc115, %num.0
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end95.for.end_crit_edge
  %85 = ptrtoint ptr %sg_tx_p to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %sg_tx_p, align 4
  %dev117 = getelementptr inbounds %struct.uart_port, ptr %priv, i32 0, i32 45
  %87 = ptrtoint ptr %dev117 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev117, align 4
  %call118 = tail call i32 @dma_map_sg_attrs(ptr noundef %88, ptr noundef %86, i32 noundef %num.0, i32 noundef 1, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %do.end123, label %if.end126

do.end123:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %89 = ptrtoint ptr %dev117 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev117, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.51) #17
  br label %cleanup

if.end126:                                        ; preds = %for.end
  %orig_nent = getelementptr inbounds %struct.eg20t_port, ptr %priv, i32 0, i32 26
  %91 = ptrtoint ptr %orig_nent to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %num.0, ptr %orig_nent, align 4
  %nent127 = getelementptr inbounds %struct.eg20t_port, ptr %priv, i32 0, i32 25
  %92 = ptrtoint ptr %nent127 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %call118, ptr %nent127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %cmp129326 = icmp sgt i32 %call118, 0
  br i1 %cmp129326, label %for.body130.lr.ph, label %if.end126.for.end148_crit_edge

if.end126.for.end148_crit_edge:                   ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end148

for.body130.lr.ph:                                ; preds = %if.end126
  %sub139 = add nsw i32 %call118, -1
  br label %for.body130

for.body130:                                      ; preds = %for.body130.for.body130_crit_edge, %for.body130.lr.ph
  %sg.1328 = phi ptr [ %86, %for.body130.lr.ph ], [ %incdec.ptr147, %for.body130.for.body130_crit_edge ]
  %i.1327 = phi i32 [ 0, %for.body130.lr.ph ], [ %inc146, %for.body130.for.body130_crit_edge ]
  %93 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %tail, align 4
  %and132 = and i32 %94, 4095
  %mul133 = mul i32 %i.1327, %fifo_size.0
  %add134 = add i32 %and132, %mul133
  %offset = getelementptr inbounds %struct.scatterlist, ptr %sg.1328, i32 0, i32 1
  %95 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %add134, ptr %offset, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.1328, i32 0, i32 3
  %96 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dma_address, align 4
  %and135 = and i32 %97, -4096
  %add137 = add i32 %and135, %add134
  store i32 %add137, ptr %dma_address, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1327, i32 %sub139)
  %cmp140 = icmp eq i32 %i.1327, %sub139
  %spec.select = select i1 %cmp140, i32 %rem.0, i32 %size.0
  %98 = getelementptr inbounds %struct.scatterlist, ptr %sg.1328, i32 0, i32 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %spec.select, ptr %98, align 4
  %inc146 = add nuw nsw i32 %i.1327, 1
  %incdec.ptr147 = getelementptr %struct.scatterlist, ptr %sg.1328, i32 1
  %exitcond330.not = icmp eq i32 %inc146, %call118
  br i1 %exitcond330.not, label %for.body130.for.end148_crit_edge, label %for.body130.for.body130_crit_edge

for.body130.for.body130_crit_edge:                ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body130

for.body130.for.end148_crit_edge:                 ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end148

for.end148:                                       ; preds = %for.body130.for.end148_crit_edge, %if.end126.for.end148_crit_edge
  %chan_tx = getelementptr inbounds %struct.eg20t_port, ptr %priv, i32 0, i32 22
  %100 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %chan_tx, align 4
  %102 = ptrtoint ptr %sg_tx_p to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %sg_tx_p, align 4
  %tobool.not.i302 = icmp eq ptr %101, null
  br i1 %tobool.not.i302, label %for.end148.do.end155_crit_edge, label %lor.lhs.false.i

for.end148.do.end155_crit_edge:                   ; preds = %for.end148
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end155

lor.lhs.false.i:                                  ; preds = %for.end148
  %104 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %101, align 4
  %tobool1.not.i = icmp eq ptr %105, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.end155_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.do.end155_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end155

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %105, i32 0, i32 39
  %106 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %107, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.do.end155_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.do.end155_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end155

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i = tail call ptr %107(ptr noundef nonnull %101, ptr noundef %103, i32 noundef %call118, i32 noundef 1, i32 noundef 3, ptr noundef null) #13
  %tobool151.not = icmp eq ptr %call.i, null
  br i1 %tobool151.not, label %dmaengine_prep_slave_sg.exit.do.end155_crit_edge, label %if.end158

dmaengine_prep_slave_sg.exit.do.end155_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end155

do.end155:                                        ; preds = %dmaengine_prep_slave_sg.exit.do.end155_crit_edge, %lor.lhs.false2.i.do.end155_crit_edge, %lor.lhs.false.i.do.end155_crit_edge, %for.end148.do.end155_crit_edge
  %108 = ptrtoint ptr %dev117 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev117, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.51) #17
  br label %cleanup

if.end158:                                        ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #15
  %110 = ptrtoint ptr %dev117 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev117, align 4
  %112 = ptrtoint ptr %sg_tx_p to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %sg_tx_p, align 4
  tail call void @dma_sync_sg_for_device(ptr noundef %111, ptr noundef %113, i32 noundef %call118, i32 noundef 1) #13
  %desc_tx = getelementptr inbounds %struct.eg20t_port, ptr %priv, i32 0, i32 18
  %114 = ptrtoint ptr %desc_tx to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call.i, ptr %desc_tx, align 4
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 6
  %115 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @pch_dma_tx_complete, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 8
  %116 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %priv, ptr %callback_param, align 4
  %tx_submit = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %117 = ptrtoint ptr %tx_submit to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %tx_submit, align 4
  %call161 = tail call i32 %118(ptr noundef nonnull %call.i) #13
  %119 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %chan_tx, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %120, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %122, i32 0, i32 50
  %123 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %124(ptr noundef %120) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end158, %do.end155, %do.end123, %do.end92, %do.end60, %do.end15, %do.end
  %retval.0 = phi i32 [ 0, %do.end15 ], [ 4, %if.end158 ], [ 0, %do.end155 ], [ 0, %do.end123 ], [ 0, %do.end92 ], [ 0, %do.end60 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @handle_tx(ptr noundef %priv) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %priv, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %xmit2 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2
  %start_tx = getelementptr inbounds %struct.eg20t_port, ptr %priv, i32 0, i32 8
  %2 = ptrtoint ptr %start_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.uart_port, ptr %priv, i32 0, i32 45
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.67, i32 noundef %6) #17
  %membase.i = getelementptr inbounds %struct.eg20t_port, ptr %priv, i32 0, i32 2
  %7 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 1
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %conv2.i = and i8 %9, -3
  %10 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %11, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 %conv2.i) #13, !srcloc !250
  %tx_empty4 = getelementptr inbounds %struct.eg20t_port, ptr %priv, i32 0, i32 10
  %12 = ptrtoint ptr %tx_empty4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %tx_empty4, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %fifo_size5 = getelementptr inbounds %struct.eg20t_port, ptr %priv, i32 0, i32 6
  %13 = ptrtoint ptr %fifo_size5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fifo_size5, align 4
  %15 = tail call i32 @llvm.smax.i32(i32 %14, i32 1)
  %16 = ptrtoint ptr %xmit2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xmit2, align 4
  %x_char.i = getelementptr inbounds %struct.uart_port, ptr %priv, i32 0, i32 24
  %18 = ptrtoint ptr %x_char.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %x_char.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %if.end.if.end9_crit_edge, label %do.body.i

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

do.body.i:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pop_tx_x.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_tx, %if.then5.i)) #13
          to label %if.then7 [label %if.then5.i], !srcloc !253

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %priv, i32 0, i32 45
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %22 = ptrtoint ptr %x_char.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %x_char.i, align 4
  %conv.i = zext i8 %23 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pop_tx_x.__UNIQUE_ID_ddebug239, ptr noundef %21, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.65, i32 noundef %conv.i, i32 noundef %24) #13
  br label %if.then7

if.then7:                                         ; preds = %if.then5.i, %do.body.i
  %25 = ptrtoint ptr %x_char.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %x_char.i, align 4
  %27 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %17, align 1
  store i8 0, ptr %x_char.i, align 4
  %28 = ptrtoint ptr %xmit2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %xmit2, align 4
  %membase.i59 = getelementptr inbounds %struct.eg20t_port, ptr %priv, i32 0, i32 2
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 1
  %32 = ptrtoint ptr %membase.i59 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase.i59, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %33, i8 %31) #13, !srcloc !250
  %tx = getelementptr inbounds %struct.uart_port, ptr %priv, i32 0, i32 31, i32 5
  %34 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx, align 4
  %inc = add i32 %35, 1
  store i32 %inc, ptr %tx, align 4
  %dec = add nsw i32 %15, -1
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %fifo_size.0 = phi i32 [ %dec, %if.then7 ], [ %15, %if.end.if.end9_crit_edge ]
  %tx_empty.0 = phi i32 [ 0, %if.then7 ], [ 1, %if.end.if.end9_crit_edge ]
  %head = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %38 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tail, align 4
  %sub = sub i32 %37, %39
  %40 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %fifo_size.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp16 = icmp slt i32 %40, 0
  %size.0 = select i1 %cmp16, i32 %fifo_size.0, i32 %40
  %call19 = tail call fastcc i32 @pop_tx(ptr noundef %priv, i32 noundef %size.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp sgt i32 %call19, 0
  br i1 %cmp20, label %if.end24.thread, label %if.end24

if.end24.thread:                                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %tx23 = getelementptr inbounds %struct.uart_port, ptr %priv, i32 0, i32 31, i32 5
  %41 = ptrtoint ptr %tx23 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx23, align 4
  %add = add i32 %42, %call19
  store i32 %add, ptr %tx23, align 4
  %tx_empty2567 = getelementptr inbounds %struct.eg20t_port, ptr %priv, i32 0, i32 10
  %43 = ptrtoint ptr %tx_empty2567 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %tx_empty2567, align 4
  br label %cleanup

if.end24:                                         ; preds = %if.end9
  %tx_empty25 = getelementptr inbounds %struct.eg20t_port, ptr %priv, i32 0, i32 10
  %44 = ptrtoint ptr %tx_empty25 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %tx_empty.0, ptr %tx_empty25, align 4
  br i1 %tobool.not.i, label %if.then27, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  %membase.i60 = getelementptr inbounds %struct.eg20t_port, ptr %priv, i32 0, i32 2
  %45 = ptrtoint ptr %membase.i60 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %membase.i60, align 4
  %add.ptr.i61 = getelementptr i8, ptr %46, i32 1
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i61) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %conv2.i62 = and i8 %47, -3
  %48 = ptrtoint ptr %membase.i60 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %membase.i60, align 4
  %add.ptr4.i63 = getelementptr i8, ptr %49, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i63, i8 %conv2.i62) #13, !srcloc !250
  tail call void @uart_write_wakeup(ptr noundef %priv) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end24.cleanup_crit_edge, %if.end24.thread, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 4, %if.then27 ], [ 4, %if.end24.cleanup_crit_edge ], [ 4, %if.end24.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_tty_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_dma_rx_complete(ptr noundef %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %arg, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %sg_rx = getelementptr inbounds %struct.eg20t_port, ptr %arg, i32 0, i32 27
  tail call void @dma_sync_sg_for_cpu(ptr noundef %1, ptr noundef %sg_rx, i32 noundef 1, i32 noundef 2) #13
  %trigger_level = getelementptr inbounds %struct.eg20t_port, ptr %arg, i32 0, i32 12
  %2 = ptrtoint ptr %trigger_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %trigger_level, align 4
  %state.i = getelementptr inbounds %struct.uart_port, ptr %arg, i32 0, i32 30
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state.i, align 4
  %call.i = tail call i32 @tty_buffer_request_room(ptr noundef %5, i32 noundef %3) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %call.i)
  %cmp.i = icmp sgt i32 %3, %call.i
  br i1 %cmp.i, label %do.end.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %sub.i = sub i32 %3, %call.i
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.47, i32 noundef %sub.i) #17
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %if.end4.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end4.i:                                        ; preds = %if.end.i
  %8 = ptrtoint ptr %sg_rx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sg_rx, align 4
  %and.i.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %if.then, label %do.body2.i.i.i, !prof !254

do.body2.i.i.i:                                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #13, !srcloc !258
  unreachable

if.then:                                          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  %and.i.i.i = and i32 %9, -4
  %10 = inttoptr i32 %and.i.i.i to ptr
  %call1.i.i = tail call ptr @page_address(ptr noundef %10) #13
  %offset.i.i = getelementptr inbounds %struct.eg20t_port, ptr %arg, i32 0, i32 27, i32 1
  %11 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %12
  %call.i.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %5, ptr noundef %add.ptr.i.i, i8 noundef zeroext 0, i32 noundef %3) #13
  %rx.i = getelementptr inbounds %struct.uart_port, ptr %arg, i32 0, i32 31, i32 4
  %13 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx.i, align 4
  %add.i = add i32 %14, %call.i
  store i32 %add.i, ptr %rx.i, align 4
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %state.i, align 4
  tail call void @tty_flip_buffer_push(ptr noundef %16) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %if.end.i.if.end_crit_edge
  %desc_rx = getelementptr inbounds %struct.eg20t_port, ptr %arg, i32 0, i32 19
  %17 = ptrtoint ptr %desc_rx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %desc_rx, align 4
  %flags.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %20, 2
  store i32 %or.i, ptr %flags.i, align 4
  %membase.i = getelementptr inbounds %struct.eg20t_port, ptr %arg, i32 0, i32 2
  %21 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 1
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %conv1.i = or i8 %23, 5
  %24 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %25, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i, i8 %conv1.i) #13, !srcloc !250
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_cpu(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_buffer_request_room(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_SAK(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_device(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_dma_tx_complete(ptr nocapture noundef %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %arg, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %sg_tx_p = getelementptr inbounds %struct.eg20t_port, ptr %arg, i32 0, i32 24
  %2 = ptrtoint ptr %sg_tx_p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sg_tx_p, align 4
  %nent = getelementptr inbounds %struct.eg20t_port, ptr %arg, i32 0, i32 25
  %4 = ptrtoint ptr %nent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp25 = icmp sgt i32 %5, 0
  br i1 %cmp25, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %tx = getelementptr inbounds %struct.uart_port, ptr %arg, i32 0, i32 31, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %sg.026 = phi ptr [ %3, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.026, i32 0, i32 4
  %6 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_length, align 4
  %8 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tail, align 4
  %add = add i32 %9, %7
  store i32 %add, ptr %tail, align 4
  %10 = load i32, ptr %dma_length, align 4
  %11 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx, align 4
  %add4 = add i32 %12, %10
  store i32 %add4, ptr %tx, align 4
  %inc = add nuw nsw i32 %i.027, 1
  %incdec.ptr = getelementptr %struct.scatterlist, ptr %sg.026, i32 1
  %13 = ptrtoint ptr %nent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nent, align 4
  %cmp = icmp slt i32 %inc, %14
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %sg.0.lcssa = phi ptr [ %3, %entry.for.end_crit_edge ], [ %incdec.ptr, %for.body.for.end_crit_edge ]
  %tail5 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %tail5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tail5, align 4
  %and = and i32 %16, 4095
  store i32 %and, ptr %tail5, align 4
  %desc_tx = getelementptr inbounds %struct.eg20t_port, ptr %arg, i32 0, i32 18
  %17 = ptrtoint ptr %desc_tx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %desc_tx, align 4
  %flags.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %20, 2
  store i32 %or.i, ptr %flags.i, align 4
  %dev = getelementptr inbounds %struct.uart_port, ptr %arg, i32 0, i32 45
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %orig_nent = getelementptr inbounds %struct.eg20t_port, ptr %arg, i32 0, i32 26
  %23 = ptrtoint ptr %orig_nent to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %orig_nent, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %22, ptr noundef %sg.0.lcssa, i32 noundef %24, i32 noundef 1, i32 noundef 0) #13
  %tx_dma_use = getelementptr inbounds %struct.eg20t_port, ptr %arg, i32 0, i32 28
  %25 = ptrtoint ptr %tx_dma_use to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %tx_dma_use, align 4
  %26 = ptrtoint ptr %nent to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %nent, align 4
  %27 = ptrtoint ptr %orig_nent to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %orig_nent, align 4
  %28 = ptrtoint ptr %sg_tx_p to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sg_tx_p, align 4
  tail call void @kfree(ptr noundef %29) #13
  %membase.i = getelementptr inbounds %struct.eg20t_port, ptr %arg, i32 0, i32 2
  %30 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %31, i32 1
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %conv1.i = or i8 %32, 2
  %33 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %34, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i, i8 %conv1.i) #13, !srcloc !250
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pop_tx(ptr nocapture noundef readonly %priv, i32 noundef %size) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %priv, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %xmit2 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2
  %tty2.i = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %tty2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tty2.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i

entry.uart_tx_stopped.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %uart_tx_stopped.exit

land.lhs.true.i:                                  ; preds = %entry
  %stopped.i = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 19, i32 1
  %4 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %stopped.i, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not.i = icmp eq i8 %5, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i.do.body25_crit_edge

land.lhs.true.i.do.body25_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body25

land.lhs.true.i.uart_tx_stopped.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %uart_tx_stopped.exit

uart_tx_stopped.exit:                             ; preds = %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, %entry.uart_tx_stopped.exit_crit_edge
  %hw_stopped.i = getelementptr inbounds %struct.uart_port, ptr %priv, i32 0, i32 35
  %6 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw_stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not.i.not = icmp eq i32 %7, 0
  br i1 %tobool4.not.i.not, label %lor.lhs.false, label %uart_tx_stopped.exit.do.body25_crit_edge

uart_tx_stopped.exit.do.body25_crit_edge:         ; preds = %uart_tx_stopped.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body25

lor.lhs.false:                                    ; preds = %uart_tx_stopped.exit
  %head = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp = icmp eq i32 %9, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %size)
  %cmp4 = icmp slt i32 %size, 1
  %or.cond = or i1 %cmp4, %cmp
  br i1 %or.cond, label %lor.lhs.false.do.body25_crit_edge, label %do.body.preheader

lor.lhs.false.do.body25_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body25

do.body.preheader:                                ; preds = %lor.lhs.false
  %membase.i = getelementptr inbounds %struct.eg20t_port, ptr %priv, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %pch_uart_hal_write.exit.do.body_crit_edge, %do.body.preheader
  %count.0 = phi i32 [ %add20, %pch_uart_hal_write.exit.do.body_crit_edge ], [ 0, %do.body.preheader ]
  %12 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tail, align 4
  %sub = sub i32 4096, %13
  %14 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %head, align 4
  %add = add i32 %15, %sub
  %and = and i32 %add, 4095
  %16 = tail call i32 @llvm.smin.i32(i32 %and, i32 %sub)
  %sub8 = sub i32 %size, %count.0
  %17 = tail call i32 @llvm.smin.i32(i32 %sub8, i32 %16)
  %18 = ptrtoint ptr %xmit2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xmit2, align 4
  %arrayidx = getelementptr i8, ptr %19, i32 %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp3.i = icmp sgt i32 %17, 0
  br i1 %cmp3.i, label %do.body.for.body.i_crit_edge, label %do.body.pch_uart_hal_write.exit_crit_edge

do.body.pch_uart_hal_write.exit_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %pch_uart_hal_write.exit

do.body.for.body.i_crit_edge:                     ; preds = %do.body
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.body.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.body.for.body.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %arrayidx.i = getelementptr i8, ptr %arrayidx, i32 %i.04.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i, align 1
  %22 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %23, i8 %21) #13, !srcloc !250
  %exitcond.not.i = icmp eq i32 %inc.i, %17
  br i1 %exitcond.not.i, label %for.body.i.pch_uart_hal_write.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.pch_uart_hal_write.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pch_uart_hal_write.exit

pch_uart_hal_write.exit:                          ; preds = %for.body.i.pch_uart_hal_write.exit_crit_edge, %do.body.pch_uart_hal_write.exit_crit_edge
  %24 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tail, align 4
  %add17 = add i32 %25, %17
  %and18 = and i32 %add17, 4095
  store i32 %and18, ptr %tail, align 4
  %add20 = add i32 %17, %count.0
  %26 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %head, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %and18)
  %cmp23 = icmp ne i32 %27, %and18
  call void @__sanitizer_cov_trace_cmp4(i32 %add20, i32 %size)
  %cmp24 = icmp slt i32 %add20, %size
  %or.cond65 = select i1 %cmp23, i1 %cmp24, i1 false
  br i1 %or.cond65, label %pch_uart_hal_write.exit.do.body_crit_edge, label %pch_uart_hal_write.exit.do.body25_crit_edge

pch_uart_hal_write.exit.do.body25_crit_edge:      ; preds = %pch_uart_hal_write.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body25

pch_uart_hal_write.exit.do.body_crit_edge:        ; preds = %pch_uart_hal_write.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.body25:                                        ; preds = %pch_uart_hal_write.exit.do.body25_crit_edge, %lor.lhs.false.do.body25_crit_edge, %uart_tx_stopped.exit.do.body25_crit_edge, %land.lhs.true.i.do.body25_crit_edge
  %count.1 = phi i32 [ 0, %uart_tx_stopped.exit.do.body25_crit_edge ], [ 0, %lor.lhs.false.do.body25_crit_edge ], [ 0, %land.lhs.true.i.do.body25_crit_edge ], [ %add20, %pch_uart_hal_write.exit.do.body25_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pop_tx.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pop_tx, %if.then31)) #13
          to label %do.end36 [label %if.then31], !srcloc !253

if.then31:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.uart_port, ptr %priv, i32 0, i32 45
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %sub33 = sub i32 %size, %count.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pop_tx.__UNIQUE_ID_ddebug242, ptr noundef %29, ptr noundef nonnull @.str.69, i32 noundef %count.1, i32 noundef %sub33, i32 noundef %30) #13
  br label %do.end36

do.end36:                                         ; preds = %if.then31, %do.body25
  ret i32 %count.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_slot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @filter(ptr nocapture noundef %chan, ptr noundef %slave) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_id = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 4
  %0 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan_id, align 4
  %chan_id1 = getelementptr inbounds %struct.pch_dma_slave, ptr %slave, i32 0, i32 1
  %2 = ptrtoint ptr %chan_id1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan_id1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave, align 4
  %6 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %cmp2 = icmp eq ptr %5, %9
  br i1 %cmp2, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %private = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 14
  %10 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %slave, ptr %private, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.then ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_softlockup_watchdog() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port_show_regs(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1024) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %line = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 41
  %3 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %line, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i, i32 noundef 1024, ptr noundef nonnull @.str.86, i32 noundef %4) #13
  %add.ptr2 = getelementptr i8, ptr %call7.i.i, i32 %call1
  %sub3 = sub i32 1024, %call1
  %call4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub3, ptr noundef nonnull @.str.87) #13
  %add5 = add i32 %call4, %call1
  %add.ptr6 = getelementptr i8, ptr %call7.i.i, i32 %add5
  %sub7 = sub i32 1024, %add5
  %membase = getelementptr inbounds %struct.eg20t_port, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase, align 4
  %add.ptr8 = getelementptr i8, ptr %6, i32 1
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr8) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %conv = zext i8 %7 to i32
  %call10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr6, i32 noundef %sub7, ptr noundef nonnull @.str.88, i32 noundef %conv) #13
  %add11 = add i32 %call10, %add5
  %add.ptr12 = getelementptr i8, ptr %call7.i.i, i32 %add11
  %sub13 = sub i32 1024, %add11
  %8 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase, align 4
  %add.ptr15 = getelementptr i8, ptr %9, i32 2
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr15) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %conv17 = zext i8 %10 to i32
  %call18 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr12, i32 noundef %sub13, ptr noundef nonnull @.str.89, i32 noundef %conv17) #13
  %add19 = add i32 %call18, %add11
  %add.ptr20 = getelementptr i8, ptr %call7.i.i, i32 %add19
  %sub21 = sub i32 1024, %add19
  %11 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase, align 4
  %add.ptr23 = getelementptr i8, ptr %12, i32 3
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr23) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %conv25 = zext i8 %13 to i32
  %call26 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr20, i32 noundef %sub21, ptr noundef nonnull @.str.90, i32 noundef %conv25) #13
  %add27 = add i32 %call26, %add19
  %add.ptr28 = getelementptr i8, ptr %call7.i.i, i32 %add27
  %sub29 = sub i32 1024, %add27
  %14 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase, align 4
  %add.ptr31 = getelementptr i8, ptr %15, i32 4
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr31) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %conv33 = zext i8 %16 to i32
  %call34 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr28, i32 noundef %sub29, ptr noundef nonnull @.str.91, i32 noundef %conv33) #13
  %add35 = add i32 %call34, %add27
  %add.ptr36 = getelementptr i8, ptr %call7.i.i, i32 %add35
  %sub37 = sub i32 1024, %add35
  %17 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase, align 4
  %add.ptr39 = getelementptr i8, ptr %18, i32 5
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr39) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %conv41 = zext i8 %19 to i32
  %call42 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr36, i32 noundef %sub37, ptr noundef nonnull @.str.92, i32 noundef %conv41) #13
  %add43 = add i32 %call42, %add35
  %add.ptr44 = getelementptr i8, ptr %call7.i.i, i32 %add43
  %sub45 = sub i32 1024, %add43
  %20 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase, align 4
  %add.ptr47 = getelementptr i8, ptr %21, i32 6
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr47) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %conv49 = zext i8 %22 to i32
  %call50 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr44, i32 noundef %sub45, ptr noundef nonnull @.str.93, i32 noundef %conv49) #13
  %add51 = add i32 %call50, %add43
  %add.ptr52 = getelementptr i8, ptr %call7.i.i, i32 %add51
  %sub53 = sub i32 1024, %add51
  %23 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase, align 4
  %add.ptr55 = getelementptr i8, ptr %24, i32 14
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr55) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %conv57 = zext i8 %25 to i32
  %call58 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr52, i32 noundef %sub53, ptr noundef nonnull @.str.94, i32 noundef %conv57) #13
  %add59 = add i32 %call58, %add51
  %26 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase, align 4
  %add.ptr61 = getelementptr i8, ptr %27, i32 3
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr61) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %29 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase, align 4
  %add.ptr64 = getelementptr i8, ptr %30, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr64, i8 -128) #13, !srcloc !250
  %add.ptr65 = getelementptr i8, ptr %call7.i.i, i32 %add59
  %sub66 = sub i32 1024, %add59
  %31 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %membase, align 4
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %32) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %conv70 = zext i8 %33 to i32
  %call71 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr65, i32 noundef %sub66, ptr noundef nonnull @.str.95, i32 noundef %conv70) #13
  %add72 = add i32 %call71, %add59
  %add.ptr73 = getelementptr i8, ptr %call7.i.i, i32 %add72
  %sub74 = sub i32 1024, %add72
  %34 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase, align 4
  %add.ptr76 = getelementptr i8, ptr %35, i32 1
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr76) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %conv78 = zext i8 %36 to i32
  %call79 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr73, i32 noundef %sub74, ptr noundef nonnull @.str.96, i32 noundef %conv78) #13
  %add80 = add i32 %call79, %add72
  %37 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %membase, align 4
  %add.ptr82 = getelementptr i8, ptr %38, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr82, i8 %28) #13, !srcloc !250
  %39 = tail call i32 @llvm.umin.i32(i32 %add80, i32 1024)
  %call86 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %39) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call86, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_uart_pci_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @uart_suspend_port(ptr noundef nonnull @pch_uart_driver, ptr noundef %1) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_uart_pci_resume(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @uart_resume_port(ptr noundef nonnull @pch_uart_driver, ptr noundef %1) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_suspend_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_resume_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_console_write(ptr nocapture noundef readonly %co, ptr noundef %s, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index, align 2
  %idxprom = sext i16 %1 to i32
  %arrayidx = getelementptr [4 x ptr], ptr @pch_uart_ports, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @touch_softlockup_watchdog() #13
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !260
  %and.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_off() #13
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry.do.end11_crit_edge
  %sysrq = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 46
  %5 = ptrtoint ptr %sysrq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sysrq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool12.not = icmp eq i32 %6, 0
  br i1 %tobool12.not, label %if.else, label %do.end11.if.end25_crit_edge

do.end11.if.end25_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.else:                                          ; preds = %do.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %7 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool14.not = icmp eq i32 %7, 0
  %lock21 = getelementptr inbounds %struct.eg20t_port, ptr %3, i32 0, i32 32
  br i1 %tobool14.not, label %if.else20, label %if.then15

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %lock21) #13
  %call.i83 = tail call i32 @_raw_spin_trylock(ptr noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %phi.cmp = icmp eq i32 %call.i83, 0
  br label %if.end25

if.else20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_lock(ptr noundef %lock21) #13
  tail call void @_raw_spin_lock(ptr noundef %3) #13
  br label %if.end25

if.end25:                                         ; preds = %if.else20, %if.then15, %do.end11.if.end25_crit_edge
  %port_locked.0 = phi i1 [ %phi.cmp, %if.then15 ], [ false, %if.else20 ], [ true, %do.end11.if.end25_crit_edge ]
  %priv_locked.0 = phi i32 [ %call.i, %if.then15 ], [ 1, %if.else20 ], [ 0, %do.end11.if.end25_crit_edge ]
  %membase = getelementptr inbounds %struct.eg20t_port, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 1
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %11 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 1
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %conv2.i = and i8 %13, -16
  %14 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase, align 4
  %add.ptr4.i = getelementptr i8, ptr %15, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 %conv2.i) #13, !srcloc !250
  tail call void @uart_console_write(ptr noundef %3, ptr noundef %s, i32 noundef %count, ptr noundef nonnull @pch_console_putchar) #13
  %16 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase, align 4
  %add.ptr28.i = getelementptr i8, ptr %17, i32 5
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr28.i) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %19 = and i8 %18, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %19)
  %cmp31.i = icmp eq i8 %19, 96
  br i1 %cmp31.i, label %if.end25.for.end.i_crit_edge, label %if.end25.if.end.i_crit_edge

if.end25.if.end.i_crit_edge:                      ; preds = %if.end25
  br label %if.end.i

if.end25.for.end.i_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

if.end.i:                                         ; preds = %if.end5.i.if.end.i_crit_edge, %if.end25.if.end.i_crit_edge
  %tmout.032.i = phi i32 [ %dec.i, %if.end5.i.if.end.i_crit_edge ], [ 10000, %if.end25.if.end.i_crit_edge ]
  %dec.i = add nsw i32 %tmout.032.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp2.i = icmp eq i32 %dec.i, 0
  br i1 %cmp2.i, label %if.end.i.for.end.i_crit_edge, label %if.end5.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

if.end5.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #13
  %21 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase, align 4
  %add.ptr.i85 = getelementptr i8, ptr %22, i32 5
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i85) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %24 = and i8 %23, 96
  %cmp.i = icmp eq i8 %24, 96
  br i1 %cmp.i, label %if.end5.i.for.end.i_crit_edge, label %if.end5.i.if.end.i_crit_edge

if.end5.i.if.end.i_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end5.i.for.end.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %if.end5.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge, %if.end25.for.end.i_crit_edge
  %flags.i = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 33
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags.i, align 4
  %and6.i = and i32 %26, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool.not.i, label %for.end.i.wait_for_xmitr.exit_crit_edge, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  br label %for.body.i

for.end.i.wait_for_xmitr.exit_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %wait_for_xmitr.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.end.i.for.body.i_crit_edge
  %tmout8.033.i = phi i32 [ %dec19.i, %for.inc.i.for.body.i_crit_edge ], [ 1000000, %for.end.i.for.body.i_crit_edge ]
  %27 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase, align 4
  %add.ptr12.i = getelementptr i8, ptr %28, i32 6
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr12.i) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %30 = and i8 %29, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool16.not.i = icmp eq i8 %30, 0
  br i1 %tobool16.not.i, label %for.inc.i, label %for.body.i.wait_for_xmitr.exit_crit_edge

for.body.i.wait_for_xmitr.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %wait_for_xmitr.exit

for.inc.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748) #13
  tail call void @touch_softlockup_watchdog() #13
  %dec19.i = add nsw i32 %tmout8.033.i, -1
  %tobool10.not.i = icmp eq i32 %dec19.i, 0
  br i1 %tobool10.not.i, label %for.inc.i.wait_for_xmitr.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.wait_for_xmitr.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %wait_for_xmitr.exit

wait_for_xmitr.exit:                              ; preds = %for.inc.i.wait_for_xmitr.exit_crit_edge, %for.body.i.wait_for_xmitr.exit_crit_edge, %for.end.i.wait_for_xmitr.exit_crit_edge
  %32 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase, align 4
  %add.ptr29 = getelementptr i8, ptr %33, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr29, i8 %10) #13, !srcloc !250
  br i1 %port_locked.0, label %wait_for_xmitr.exit.if.end34_crit_edge, label %if.then31

wait_for_xmitr.exit.if.end34_crit_edge:           ; preds = %wait_for_xmitr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then31:                                        ; preds = %wait_for_xmitr.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef %3) #13
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %wait_for_xmitr.exit.if.end34_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %priv_locked.0)
  %tobool35.not = icmp eq i32 %priv_locked.0, 0
  br i1 %tobool35.not, label %if.end34.do.body39_crit_edge, label %if.then36

if.end34.do.body39_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body39

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  %lock37 = getelementptr inbounds %struct.eg20t_port, ptr %3, i32 0, i32 32
  tail call void @_raw_spin_unlock(ptr noundef %lock37) #13
  br label %do.body39

do.body39:                                        ; preds = %if.then36, %if.end34.do.body39_crit_edge
  br i1 %tobool.not, label %if.then48, label %do.body39.do.body50_crit_edge

do.body39.do.body50_crit_edge:                    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body50

if.then48:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_on() #13
  br label %do.body50

do.body50:                                        ; preds = %if.then48, %do.body39.do.body50_crit_edge
  %34 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !261
  %and.i.i = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool58.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool58.not, label %if.then62, label %do.body50.do.end65_crit_edge, !prof !257

do.body50.do.end65_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end65

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end65

do.end65:                                         ; preds = %if.then62, %do.body50.do.end65_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #13, !srcloc !262
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_console_setup(ptr noundef %co, ptr noundef %options) #0 section ".init.text" align 64 {
entry:
  %baud = alloca i32, align 4
  %bits = alloca i32, align 4
  %parity = alloca i32, align 4
  %flow = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %baud) #13
  %0 = load i32, ptr @default_baud, align 4
  %1 = ptrtoint ptr %baud to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %baud, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits) #13
  %2 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8, ptr %bits, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parity) #13
  %3 = ptrtoint ptr %parity to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 110, ptr %parity, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flow) #13
  %4 = ptrtoint ptr %flow to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 110, ptr %flow, align 4
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %index, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %6)
  %cmp = icmp sgt i16 %6, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %index, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %index, align 2
  %idxprom = sext i16 %9 to i32
  %arrayidx = getelementptr [4 x ptr], ptr @pch_uart_ports, i32 0, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %iobase = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iobase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not = icmp eq i32 %13, 0
  br i1 %tobool5.not, label %land.lhs.true, label %lor.lhs.false.if.end8_crit_edge

lor.lhs.false.if.end8_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

land.lhs.true:                                    ; preds = %lor.lhs.false
  %membase = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase, align 4
  %tobool6.not = icmp eq ptr %15, null
  br i1 %tobool6.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %lor.lhs.false.if.end8_crit_edge
  %16 = load i32, ptr @user_uartclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  %spec.select.i = select i1 %tobool.not.i, i32 1843200, i32 %16
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 22
  %17 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.select.i, ptr %uartclk, align 4
  %tobool9.not = icmp eq ptr %options, null
  br i1 %tobool9.not, label %if.end8.if.end11_crit_edge, label %if.then10

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  call void @uart_parse_options(ptr noundef nonnull %options, ptr noundef nonnull %baud, ptr noundef nonnull %parity, ptr noundef nonnull %bits, ptr noundef nonnull %flow) #13
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8.if.end11_crit_edge
  %18 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %baud, align 4
  %20 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %parity, align 4
  %22 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bits, align 4
  %24 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flow, align 4
  %call12 = call i32 @uart_set_options(ptr noundef nonnull %11, ptr noundef %co, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end11 ], [ -19, %land.lhs.true.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flow) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parity) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %baud) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_console_putchar(ptr nocapture noundef readonly %port, i32 noundef %ch) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.eg20t_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr28.i = getelementptr i8, ptr %1, i32 5
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr28.i) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %3 = and i8 %2, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp31.i.not = icmp eq i8 %3, 0
  br i1 %cmp31.i.not, label %entry.if.end.i_crit_edge, label %entry.for.end.i_crit_edge

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  br label %if.end.i

if.end.i:                                         ; preds = %if.end5.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %tmout.032.i = phi i32 [ %dec.i, %if.end5.i.if.end.i_crit_edge ], [ 10000, %entry.if.end.i_crit_edge ]
  %dec.i = add nsw i32 %tmout.032.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp2.i = icmp eq i32 %dec.i, 0
  br i1 %cmp2.i, label %if.end.i.for.end.i_crit_edge, label %if.end5.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

if.end5.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #13
  %5 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 5
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %8 = and i8 %7, 32
  %cmp.i.not = icmp eq i8 %8, 0
  br i1 %cmp.i.not, label %if.end5.i.if.end.i_crit_edge, label %if.end5.i.for.end.i_crit_edge

if.end5.i.for.end.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

if.end5.i.if.end.i_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

for.end.i:                                        ; preds = %if.end5.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %flags.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i, align 4
  %and6.i = and i32 %10, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool.not.i, label %for.end.i.wait_for_xmitr.exit_crit_edge, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  br label %for.body.i

for.end.i.wait_for_xmitr.exit_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %wait_for_xmitr.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.end.i.for.body.i_crit_edge
  %tmout8.033.i = phi i32 [ %dec19.i, %for.inc.i.for.body.i_crit_edge ], [ 1000000, %for.end.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %12, i32 6
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr12.i) #13, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !252
  %14 = and i8 %13, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool16.not.i = icmp eq i8 %14, 0
  br i1 %tobool16.not.i, label %for.inc.i, label %for.body.i.wait_for_xmitr.exit_crit_edge

for.body.i.wait_for_xmitr.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %wait_for_xmitr.exit

for.inc.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #13
  tail call void @touch_softlockup_watchdog() #13
  %dec19.i = add nsw i32 %tmout8.033.i, -1
  %tobool10.not.i = icmp eq i32 %dec19.i, 0
  br i1 %tobool10.not.i, label %for.inc.i.wait_for_xmitr.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.wait_for_xmitr.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %wait_for_xmitr.exit

wait_for_xmitr.exit:                              ; preds = %for.inc.i.wait_for_xmitr.exit_crit_edge, %for.body.i.wait_for_xmitr.exit_crit_edge, %for.end.i.wait_for_xmitr.exit_crit_edge
  %conv = trunc i32 %ch to i8
  %16 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %17, i8 %conv) #13, !srcloc !250
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 110)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 110)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !17, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !33, !35, !36, !38, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !104, !106, !108, !110, !111, !112, !113, !115, !117, !119, !121, !123, !124, !125, !127, !128, !129, !130, !131, !133, !134, !135, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !175, !177, !178, !179, !181, !182, !183, !184, !186, !187, !188, !189, !191, !192, !193, !194, !196, !197, !198, !199, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !235, !237, !238}
!llvm.module.flags = !{!240, !241, !242, !243, !244, !245, !246, !247}
!llvm.ident = !{!248}

!0 = !{ptr @__initcall__kmod_pch_uart__255_1951_pch_uart_module_init6, !1, !"__initcall__kmod_pch_uart__255_1951_pch_uart_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/pch_uart.c", i32 1951, i32 1}
!2 = !{ptr @__exitcall_pch_uart_module_exit, !3, !"__exitcall_pch_uart_module_exit", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/pch_uart.c", i32 1958, i32 1}
!4 = !{ptr @__UNIQUE_ID_file256, !5, !"__UNIQUE_ID_file256", i1 false, i1 false}
!5 = !{!"../drivers/tty/serial/pch_uart.c", i32 1960, i32 1}
!6 = !{ptr @__UNIQUE_ID_license257, !5, !"__UNIQUE_ID_license257", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description258, !8, !"__UNIQUE_ID_description258", i1 false, i1 false}
!8 = !{!"../drivers/tty/serial/pch_uart.c", i32 1961, i32 1}
!9 = !{ptr @__param_default_baud, !10, !"__param_default_baud", i1 false, i1 false}
!10 = !{!"../drivers/tty/serial/pch_uart.c", i32 1964, i32 1}
!11 = !{ptr @__UNIQUE_ID_default_baudtype259, !10, !"__UNIQUE_ID_default_baudtype259", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_default_baud260, !13, !"__UNIQUE_ID_default_baud260", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/pch_uart.c", i32 1965, i32 1}
!14 = !{ptr @__param_user_uartclk, !15, !"__param_user_uartclk", i1 false, i1 false}
!15 = !{!"../drivers/tty/serial/pch_uart.c", i32 1967, i32 1}
!16 = !{ptr @__UNIQUE_ID_user_uartclktype261, !15, !"__UNIQUE_ID_user_uartclktype261", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_user_uartclk262, !18, !"__UNIQUE_ID_user_uartclk262", i1 false, i1 false}
!18 = !{!"../drivers/tty/serial/pch_uart.c", i32 1968, i32 1}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/tty/serial/pch_uart.c", i32 1945, i32 8}
!21 = !{ptr @pch_uart_pci_driver, !22, !"pch_uart_pci_driver", i1 false, i1 false}
!22 = !{!"../drivers/tty/serial/pch_uart.c", i32 1927, i32 26}
!23 = !{ptr @pch_uart_pci_id, !24, !"pch_uart_pci_id", i1 false, i1 false}
!24 = !{!"../drivers/tty/serial/pch_uart.c", i32 1871, i32 35}
!25 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/tty/serial/pch_uart.c", i32 1755, i32 3}
!27 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @pch_uart_init_port._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @pch_uart_init_port._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @pch_uart_init_port.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/tty/serial/pch_uart.c", i32 1762, i32 2}
!35 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/tty/serial/pch_uart.c", i32 1790, i32 4}
!38 = !{ptr @pch_uart_init_port.__key.8, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/tty/serial/pch_uart.c", i32 1793, i32 2}
!40 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/tty/serial/pch_uart.c", i32 1800, i32 43}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/tty/serial/pch_uart.c", i32 1810, i32 31}
!45 = !{ptr @drv_dat, !46, !"drv_dat", i1 false, i1 false}
!46 = !{!"../drivers/tty/serial/pch_uart.c", i32 270, i32 36}
!47 = distinct !{null, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/tty/serial/pch_uart.c", i32 356, i32 12}
!49 = distinct !{null, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/tty/serial/pch_uart.c", i32 363, i32 12}
!51 = distinct !{null, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/tty/serial/pch_uart.c", i32 370, i32 12}
!53 = distinct !{null, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/tty/serial/pch_uart.c", i32 377, i32 12}
!55 = distinct !{null, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/tty/serial/pch_uart.c", i32 384, i32 12}
!57 = distinct !{null, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/tty/serial/pch_uart.c", i32 391, i32 12}
!59 = distinct !{null, !60, !"pch_uart_dmi_table", i1 false, i1 false}
!60 = !{!"../drivers/tty/serial/pch_uart.c", i32 354, i32 35}
!61 = !{ptr @pch_uart_ops, !62, !"pch_uart_ops", i1 false, i1 false}
!62 = !{!"../drivers/tty/serial/pch_uart.c", i32 1577, i32 30}
!63 = !{ptr @.str.18, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/tty/serial/pch_uart.c", i32 1219, i32 4}
!65 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @pch_uart_start_tx.__UNIQUE_ID_ddebug254, !64, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!67 = !{ptr @.str.20, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/tty/serial/pch_uart.c", i32 440, i32 3}
!69 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @pch_uart_hal_set_line._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @pch_uart_hal_set_line._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/tty/serial/pch_uart.c", i32 448, i32 3}
!74 = !{ptr @pch_uart_hal_set_line._entry.22, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @pch_uart_hal_set_line._entry_ptr.24, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/tty/serial/pch_uart.c", i32 453, i32 3}
!78 = !{ptr @pch_uart_hal_set_line._entry.25, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @pch_uart_hal_set_line._entry_ptr.27, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/tty/serial/pch_uart.c", i32 458, i32 3}
!82 = !{ptr @pch_uart_hal_set_line._entry.28, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @pch_uart_hal_set_line._entry_ptr.30, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/tty/serial/pch_uart.c", i32 466, i32 2}
!86 = !{ptr @pch_uart_hal_set_line.__UNIQUE_ID_ddebug238, !85, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!87 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/tty/serial/pch_uart.c", i32 500, i32 3}
!89 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @pch_uart_hal_set_fifo._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @pch_uart_hal_set_fifo._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/tty/serial/pch_uart.c", i32 506, i32 3}
!94 = !{ptr @pch_uart_hal_set_fifo._entry.34, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @pch_uart_hal_set_fifo._entry_ptr.36, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/tty/serial/pch_uart.c", i32 512, i32 3}
!98 = !{ptr @pch_uart_hal_set_fifo._entry.37, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @pch_uart_hal_set_fifo._entry_ptr.39, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @trigger_level_256, !101, !"trigger_level_256", i1 false, i1 false}
!101 = !{!"../drivers/tty/serial/pch_uart.c", i32 289, i32 18}
!102 = !{ptr @trigger_level_64, !103, !"trigger_level_64", i1 false, i1 false}
!103 = !{!"../drivers/tty/serial/pch_uart.c", i32 290, i32 18}
!104 = !{ptr @trigger_level_16, !105, !"trigger_level_16", i1 false, i1 false}
!105 = !{!"../drivers/tty/serial/pch_uart.c", i32 291, i32 18}
!106 = !{ptr @trigger_level_1, !107, !"trigger_level_1", i1 false, i1 false}
!107 = !{!"../drivers/tty/serial/pch_uart.c", i32 292, i32 18}
!108 = !{ptr @.str.40, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/tty/serial/pch_uart.c", i32 1133, i32 4}
!110 = !{ptr @.str.41, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @pch_uart_interrupt._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @pch_uart_interrupt._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.42, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/tty/serial/pch_uart.c", i32 1046, i32 20}
!115 = !{ptr @.str.43, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/tty/serial/pch_uart.c", i32 1050, i32 20}
!117 = !{ptr @.str.44, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/tty/serial/pch_uart.c", i32 1055, i32 20}
!119 = !{ptr @.str.45, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/tty/serial/pch_uart.c", i32 1060, i32 20}
!121 = !{ptr @.str.46, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/tty/serial/pch_uart.c", i32 1065, i32 4}
!123 = !{ptr @pch_uart_err_ir._entry, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @pch_uart_err_ir._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.47, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/tty/serial/pch_uart.c", i32 652, i32 3}
!127 = !{ptr @.str.48, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.49, !126, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @dma_push_rx._entry, !126, !"_entry", i1 false, i1 false}
!130 = !{ptr @dma_push_rx._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.50, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/tty/serial/pch_uart.c", i32 933, i32 3}
!133 = !{ptr @.str.51, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.52, !132, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @dma_handle_tx._entry, !132, !"_entry", i1 false, i1 false}
!136 = !{ptr @dma_handle_tx._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.53, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/tty/serial/pch_uart.c", i32 941, i32 3}
!139 = !{ptr @dma_handle_tx.__UNIQUE_ID_ddebug247, !138, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!140 = !{ptr @.str.54, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/tty/serial/pch_uart.c", i32 959, i32 3}
!142 = !{ptr @dma_handle_tx.__UNIQUE_ID_ddebug252, !141, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!143 = !{ptr @.str.55, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/tty/serial/pch_uart.c", i32 975, i32 2}
!145 = !{ptr @dma_handle_tx.__UNIQUE_ID_ddebug253, !144, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!146 = !{ptr @.str.57, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/tty/serial/pch_uart.c", i32 982, i32 3}
!148 = !{ptr @dma_handle_tx._entry.56, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @dma_handle_tx._entry_ptr.58, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.60, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/tty/serial/pch_uart.c", i32 1001, i32 3}
!152 = !{ptr @dma_handle_tx._entry.59, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @dma_handle_tx._entry_ptr.61, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.63, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/tty/serial/pch_uart.c", i32 1022, i32 3}
!156 = !{ptr @dma_handle_tx._entry.62, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @dma_handle_tx._entry_ptr.64, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.65, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/tty/serial/pch_uart.c", i32 633, i32 3}
!160 = !{ptr @.str.66, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @pop_tx_x.__UNIQUE_ID_ddebug239, !159, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!162 = !{ptr @.str.67, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/tty/serial/pch_uart.c", i32 883, i32 3}
!164 = !{ptr @handle_tx._entry, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @handle_tx._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.68, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/tty/serial/pch_uart.c", i32 807, i32 2}
!168 = !{ptr @.str.69, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @pop_tx.__UNIQUE_ID_ddebug242, !167, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!170 = !{ptr @.str.70, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/tty/serial/pch_uart.c", i32 724, i32 3}
!172 = !{ptr @.str.71, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @pch_request_dma._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @pch_request_dma._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.73, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/tty/serial/pch_uart.c", i32 738, i32 3}
!177 = !{ptr @pch_request_dma._entry.72, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @pch_request_dma._entry_ptr.74, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.75, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/tty/serial/pch_uart.c", i32 1346, i32 3}
!181 = !{ptr @.str.76, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @pch_uart_shutdown._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @pch_uart_shutdown._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.77, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/tty/serial/pch_uart.c", i32 480, i32 3}
!186 = !{ptr @.str.78, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @pch_uart_hal_fifo_reset._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @pch_uart_hal_fifo_reset._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.79, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/tty/serial/pch_uart.c", i32 1475, i32 3}
!191 = !{ptr @.str.80, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @pch_uart_verify_port._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @pch_uart_verify_port._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.82, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/tty/serial/pch_uart.c", i32 1490, i32 3}
!196 = !{ptr @pch_uart_verify_port._entry.81, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @pch_uart_verify_port._entry_ptr.83, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.84, !195, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @.str.85, !195, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @pch_uart_ports, !201, !"pch_uart_ports", i1 false, i1 false}
!201 = !{!"../drivers/tty/serial/pch_uart.c", i32 285, i32 27}
!202 = !{ptr @port_regs_ops, !203, !"port_regs_ops", i1 false, i1 false}
!203 = !{!"../drivers/tty/serial/pch_uart.c", i32 347, i32 37}
!204 = !{ptr @.str.86, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/tty/serial/pch_uart.c", i32 311, i32 4}
!206 = !{ptr @.str.87, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/tty/serial/pch_uart.c", i32 314, i32 4}
!208 = !{ptr @.str.88, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/tty/serial/pch_uart.c", i32 316, i32 4}
!210 = !{ptr @.str.89, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/tty/serial/pch_uart.c", i32 318, i32 4}
!212 = !{ptr @.str.90, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/tty/serial/pch_uart.c", i32 320, i32 4}
!214 = !{ptr @.str.91, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/tty/serial/pch_uart.c", i32 322, i32 4}
!216 = !{ptr @.str.92, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/tty/serial/pch_uart.c", i32 324, i32 4}
!218 = !{ptr @.str.93, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/tty/serial/pch_uart.c", i32 326, i32 4}
!220 = !{ptr @.str.94, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/tty/serial/pch_uart.c", i32 328, i32 4}
!222 = !{ptr @.str.95, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/tty/serial/pch_uart.c", i32 334, i32 4}
!224 = !{ptr @.str.96, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/tty/serial/pch_uart.c", i32 336, i32 4}
!226 = !{ptr @pch_uart_pci_pm_ops, !227, !"pch_uart_pci_pm_ops", i1 false, i1 false}
!227 = !{!"../drivers/tty/serial/pch_uart.c", i32 1923, i32 8}
!228 = !{ptr @.str.97, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/tty/serial/pch_uart.c", i32 1716, i32 14}
!230 = !{ptr @pch_uart_driver, !231, !"pch_uart_driver", i1 false, i1 false}
!231 = !{!"../drivers/tty/serial/pch_uart.c", i32 1713, i32 27}
!232 = !{ptr @pch_console, !233, !"pch_console", i1 false, i1 false}
!233 = !{!"../drivers/tty/serial/pch_uart.c", i32 1698, i32 23}
!234 = !{ptr @__param_str_default_baud, !10, !"__param_str_default_baud", i1 false, i1 false}
!235 = !{ptr @default_baud, !236, !"default_baud", i1 false, i1 false}
!236 = !{!"../drivers/tty/serial/pch_uart.c", i32 287, i32 21}
!237 = !{ptr @__param_str_user_uartclk, !15, !"__param_str_user_uartclk", i1 false, i1 false}
!238 = !{ptr @user_uartclk, !239, !"user_uartclk", i1 false, i1 false}
!239 = !{!"../drivers/tty/serial/pch_uart.c", i32 288, i32 21}
!240 = !{i32 1, !"wchar_size", i32 2}
!241 = !{i32 1, !"min_enum_size", i32 4}
!242 = !{i32 8, !"branch-target-enforcement", i32 0}
!243 = !{i32 8, !"sign-return-address", i32 0}
!244 = !{i32 8, !"sign-return-address-all", i32 0}
!245 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!246 = !{i32 7, !"uwtable", i32 1}
!247 = !{i32 7, !"frame-pointer", i32 2}
!248 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!249 = !{i64 2152976904}
!250 = !{i64 5435559}
!251 = !{i64 5435954}
!252 = !{i64 2152975299}
!253 = !{i64 2148739691, i64 2148739696, i64 2148739709, i64 2148739753, i64 2148739787, i64 2148739808}
!254 = !{!"branch_weights", i32 2000, i32 1}
!255 = !{i64 2154416448, i64 2154416940, i64 2154416485, i64 2154416541, i64 2154416575, i64 2154416599, i64 2154416640, i64 2154416661, i64 2154416689, i64 2154416723}
!256 = !{i64 2154418058, i64 2154418550, i64 2154418095, i64 2154418151, i64 2154418185, i64 2154418209, i64 2154418250, i64 2154418271, i64 2154418299, i64 2154418333}
!257 = !{!"branch_weights", i32 1, i32 2000}
!258 = !{i64 2154420006, i64 2154420498, i64 2154420043, i64 2154420099, i64 2154420133, i64 2154420157, i64 2154420198, i64 2154420219, i64 2154420247, i64 2154420281}
!259 = !{i8 0, i8 2}
!260 = !{i64 650357, i64 650418}
!261 = !{i64 653089}
!262 = !{i64 653374}
