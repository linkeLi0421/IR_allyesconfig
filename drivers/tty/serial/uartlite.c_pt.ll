; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/uartlite.c_pt.bc'
source_filename = "../drivers/tty/serial/uartlite.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.uartlite_reg_ops = type { ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.earlycon_device = type { ptr, %struct.uart_port, [16 x i8], i32 }
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
%struct.uartlite_data = type { ptr, ptr, i32, i32 }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.35, %struct.anon.36, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.35 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.36 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }

@__UNIQUE_ID___earlycon_uartlite230 = internal constant %struct.earlycon_id { [15 x i8] c"uartlite\00\00\00\00\00\00\00", i8 0, [128 x i8] zeroinitializer, ptr @early_uartlite_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_uartlite_b231 = internal constant %struct.earlycon_id { [15 x i8] c"uartlite_b\00\00\00\00\00", i8 0, [128 x i8] c"xlnx,opb-uartlite-1.00.b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @early_uartlite_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_uartlite_a232 = internal constant %struct.earlycon_id { [15 x i8] c"uartlite_a\00\00\00\00\00", i8 0, [128 x i8] c"xlnx,xps-uartlite-1.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @early_uartlite_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID_alias234 = internal constant [33 x i8] c"uartlite.alias=platform:uartlite\00", section ".modinfo", align 1
@ulite_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ulite_probe, ptr @ulite_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ulite_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ulite_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@ulite_uart_driver = internal global { %struct.uart_driver, [60 x i8] } { %struct.uart_driver { ptr null, ptr @.str, ptr @.str.20, i32 204, i32 187, i32 1, ptr @ulite_console, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_uartlite__236_943_ulite_init6 = internal global ptr @ulite_init, section ".initcall6.init", align 4
@__exitcall_ulite_exit = internal global ptr @ulite_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [52 x i8] c"uartlite.author=Peter Korsgaard <jacmet@sunsite.dk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [51 x i8] c"uartlite.description=Xilinx uartlite serial driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [42 x i8] c"uartlite.file=drivers/tty/serial/uartlite\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [21 x i8] c"uartlite.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uartlite\00", [23 x i8] zeroinitializer }, align 32
@ulite_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,opb-uartlite-1.00.b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,xps-uartlite-1.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@ulite_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ulite_suspend, ptr @ulite_resume, ptr @ulite_suspend, ptr @ulite_resume, ptr @ulite_suspend, ptr @ulite_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ulite_runtime_suspend, ptr @ulite_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"port-number\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"could not read %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"current-speed\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xlnx,use-parity\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xlnx,odd-parity\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xlnx,data-bits\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bad data bits %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"s_axi_aclk\00", [21 x i8] zeroinitializer }, align 32
@ulite_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 871, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to prepare clock\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ulite_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/tty/serial/uartlite.c\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ulite_probe._entry_ptr = internal global ptr @ulite_probe._entry, section ".printk_index", align 4
@ulite_probe.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.11, ptr @.str.14, i8 0, i8 -36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"uartlite: calling uart_register_driver()\0A\00", [54 x i8] zeroinitializer }, align 32
@ulite_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.11, i32 884, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to register driver\0A\00", [37 x i8] zeroinitializer }, align 32
@ulite_probe._entry_ptr.17 = internal global ptr @ulite_probe._entry.15, section ".printk_index", align 4
@ulite_ports = internal global { [1 x %struct.uart_port], [88 x i8] } zeroinitializer, align 32
@ulite_assign._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.11, i32 642, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s%i too large\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ulite_assign\00", [19 x i8] zeroinitializer }, align 32
@ulite_assign._entry_ptr = internal global ptr @ulite_assign._entry, section ".printk_index", align 4
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ttyUL\00", [26 x i8] zeroinitializer }, align 32
@ulite_assign._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.11, i32 648, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"cannot assign to %s%i; it is already in use\0A\00", [51 x i8] zeroinitializer }, align 32
@ulite_assign._entry_ptr.23 = internal global ptr @ulite_assign._entry.21, section ".printk_index", align 4
@ulite_assign.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&port->lock\00", [20 x i8] zeroinitializer }, align 32
@ulite_ops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @ulite_tx_empty, ptr @ulite_set_mctrl, ptr @ulite_get_mctrl, ptr @ulite_stop_tx, ptr @ulite_start_tx, ptr null, ptr null, ptr null, ptr @ulite_stop_rx, ptr null, ptr @ulite_break_ctl, ptr @ulite_startup, ptr @ulite_shutdown, ptr null, ptr @ulite_set_termios, ptr null, ptr @ulite_pm, ptr @ulite_type, ptr @ulite_release_port, ptr @ulite_request_port, ptr @ulite_config_port, ptr @ulite_verify_port, ptr null, ptr null, ptr @ulite_put_poll_char, ptr @ulite_get_poll_char }, [56 x i8] zeroinitializer }, align 32
@ulite_assign._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.19, ptr @.str.11, i32 674, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"uart_add_one_port() failed; err=%i\0A\00", [60 x i8] zeroinitializer }, align 32
@ulite_assign._entry_ptr.27 = internal global ptr @ulite_assign._entry.25, section ".printk_index", align 4
@ulite_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.11, i32 291, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ulite_startup\00", [18 x i8] zeroinitializer }, align 32
@ulite_startup._entry_ptr = internal global ptr @ulite_startup._entry, section ".printk_index", align 4
@ulite_pm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.11, i32 417, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to enable clocks\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ulite_pm\00", [23 x i8] zeroinitializer }, align 32
@ulite_pm._entry_ptr = internal global ptr @ulite_pm._entry, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@ulite_request_port.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.11, ptr @.str.33, i8 0, i8 93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ulite_request_port\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ulite console: port=%p; port->mapbase=%llx\0A\00", [52 x i8] zeroinitializer }, align 32
@ulite_request_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.11, i32 375, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Memory region busy\0A\00", [44 x i8] zeroinitializer }, align 32
@ulite_request_port._entry_ptr = internal global ptr @ulite_request_port._entry, section ".printk_index", align 4
@ulite_request_port._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.32, ptr @.str.11, i32 381, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to map registers\0A\00", [39 x i8] zeroinitializer }, align 32
@ulite_request_port._entry_ptr.37 = internal global ptr @ulite_request_port._entry.35, section ".printk_index", align 4
@uartlite_be = internal constant { %struct.uartlite_reg_ops, [24 x i8] } { %struct.uartlite_reg_ops { ptr @uartlite_inbe32, ptr @uartlite_outbe32 }, [24 x i8] zeroinitializer }, align 32
@uartlite_le = internal constant { %struct.uartlite_reg_ops, [24 x i8] } { %struct.uartlite_reg_ops { ptr @uartlite_inle32, ptr @uartlite_outle32 }, [24 x i8] zeroinitializer }, align 32
@ulite_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.11, i32 750, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Cannot enable clock.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ulite_runtime_resume\00", [43 x i8] zeroinitializer }, align 32
@ulite_runtime_resume._entry_ptr = internal global ptr @ulite_runtime_resume._entry, section ".printk_index", align 4
@ulite_console = internal global { %struct.console, [60 x i8] } { %struct.console { [16 x i8] c"ttyUL\00\00\00\00\00\00\00\00\00\00\00", ptr @ulite_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @ulite_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @ulite_uart_driver, ptr null }, [60 x i8] zeroinitializer }, align 32
@console_port = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@ulite_console_wait_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.11, i32 482, ptr @.str.42, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"timeout waiting for TX buffer empty\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ulite_console_wait_tx\00", [42 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ulite_console_wait_tx._entry_ptr = internal global ptr @ulite_console_wait_tx._entry, section ".printk_index", align 4
@ulite_console_setup.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.11, ptr @.str.44, i8 0, i8 -123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ulite_console_setup\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"console on ttyUL%i not present\0A\00", [32 x i8] zeroinitializer }, align 32
@ulite_init.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.11, ptr @.str.46, i8 0, i8 -23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ulite_init\00", [21 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"uartlite: calling platform_driver_register()\0A\00", [50 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.49 = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 6, i64 7, i64 8]
@___asan_gen_.50 = private unnamed_addr constant [22 x i8] c"ulite_platform_driver\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 915, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant [18 x i8] c"ulite_uart_driver\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 603, i32 27 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 919, i32 12 }
@___asan_gen_.59 = private unnamed_addr constant [15 x i8] c"ulite_of_match\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 768, i32 34 }
@___asan_gen_.62 = private unnamed_addr constant [13 x i8] c"ulite_pm_ops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 760, i32 32 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 793, i32 10 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 798, i32 11 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 800, i32 10 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 805, i32 10 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 811, i32 11 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 822, i32 10 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 842, i32 11 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 857, i32 40 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 871, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 881, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 884, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant [12 x i8] c"ulite_ports\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 130, i32 25 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 642, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 647, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 654, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [10 x i8] c"ulite_ops\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 443, i32 30 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 674, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 291, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 417, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 371, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 375, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 381, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant [12 x i8] c"uartlite_be\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 96, i32 38 }
@___asan_gen_.191 = private unnamed_addr constant [12 x i8] c"uartlite_le\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 111, i32 38 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 750, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant [14 x i8] c"ulite_console\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 551, i32 23 }
@___asan_gen_.206 = private unnamed_addr constant [13 x i8] c"console_port\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 64, i32 26 }
@___asan_gen_.209 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 481, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 533, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.231 = private constant [33 x i8] c"../drivers/tty/serial/uartlite.c\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 932, i32 2 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @__UNIQUE_ID___earlycon_uartlite230, ptr @__UNIQUE_ID___earlycon_uartlite_a232, ptr @__UNIQUE_ID___earlycon_uartlite_b231, ptr @__UNIQUE_ID_alias234, ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_ulite_exit, ptr @__initcall__kmod_uartlite__236_943_ulite_init6, ptr @ulite_assign._entry, ptr @ulite_assign._entry.21, ptr @ulite_assign._entry.25, ptr @ulite_assign._entry_ptr, ptr @ulite_assign._entry_ptr.23, ptr @ulite_assign._entry_ptr.27, ptr @ulite_console_wait_tx._entry, ptr @ulite_console_wait_tx._entry_ptr, ptr @ulite_exit, ptr @ulite_pm._entry, ptr @ulite_pm._entry_ptr, ptr @ulite_probe._entry, ptr @ulite_probe._entry.15, ptr @ulite_probe._entry_ptr, ptr @ulite_probe._entry_ptr.17, ptr @ulite_request_port._entry, ptr @ulite_request_port._entry.35, ptr @ulite_request_port._entry_ptr, ptr @ulite_request_port._entry_ptr.37, ptr @ulite_runtime_resume._entry, ptr @ulite_runtime_resume._entry_ptr, ptr @ulite_startup._entry, ptr @ulite_startup._entry_ptr, ptr @ulite_platform_driver, ptr @ulite_uart_driver, ptr @.str, ptr @ulite_of_match, ptr @ulite_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @ulite_ports, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @ulite_assign.__key, ptr @.str.24, ptr @ulite_ops, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @uartlite_be, ptr @uartlite_le, ptr @.str.38, ptr @.str.39, ptr @ulite_console, ptr @console_port, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulite_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulite_uart_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulite_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulite_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulite_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulite_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulite_ports to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulite_assign._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulite_assign._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulite_assign.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulite_ops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulite_assign._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulite_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulite_pm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulite_request_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulite_request_port._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uartlite_be to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uartlite_le to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulite_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulite_console to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @console_port to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulite_console_wait_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @early_uartlite_setup(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %options) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %write = getelementptr inbounds %struct.console, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @early_uartlite_write, ptr %write, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ulite_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @ulite_platform_driver) #10
  %0 = load ptr, ptr getelementptr inbounds (%struct.uart_driver, ptr @ulite_uart_driver, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @uart_unregister_driver(ptr noundef nonnull @ulite_uart_driver) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ulite_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ulite_init.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ulite_init, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !139

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ulite_init.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.46) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ulite_platform_driver, ptr noundef null) #10
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @early_uartlite_write(ptr nocapture noundef readonly %console, ptr noundef %s, i32 noundef %n) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.console, ptr %console, i32 0, i32 13
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %port = getelementptr inbounds %struct.earlycon_device, ptr %1, i32 0, i32 1
  tail call void @uart_console_write(ptr noundef %port, ptr noundef %s, i32 noundef %n, ptr noundef nonnull @early_uartlite_putc) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @early_uartlite_putc(ptr nocapture noundef readonly %port, i32 noundef %c) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %entry
  %retries.0 = phi i32 [ 1000000, %entry ], [ %dec, %land.rhs.while.cond_crit_edge ]
  %dec = add nsw i32 %retries.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.cond.if.end_crit_edge, label %land.rhs

while.cond.if.end_crit_edge:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %while.cond
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !141
  %3 = and i32 %2, 134217728
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %do.body.critedge, label %land.rhs.while.cond_crit_edge

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

do.body.critedge:                                 ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !142
  tail call void @arm_heavy_mb() #10
  %and4 = shl i32 %c, 24
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %and4) #10, !srcloc !143
  br label %if.end

if.end:                                           ; preds = %do.body.critedge, %while.cond.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ulite_probe(ptr noundef %pdev) #3 align 64 {
entry:
  %id = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #10
  %id1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %0 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id1, align 4
  %2 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %id, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup112_crit_edge, label %if.end

entry.cleanup112_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup112

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %val, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef nonnull %id, i32 noundef 1, i32 noundef 0) #10
  %6 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #10
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %if.end.of_err_crit_edge [
    i32 0, label %if.end.if.end8_crit_edge
    i32 -22, label %if.end.if.end8_crit_edge194
  ]

if.end.if.end8_crit_edge194:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end.of_err_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %of_err

of_err:                                           ; preds = %if.end30.of_err_crit_edge, %if.then20.of_err_crit_edge, %if.end12.of_err_crit_edge, %if.end8.of_err_crit_edge, %if.end.of_err_crit_edge
  %ret.0 = phi i32 [ %8, %if.end8.of_err_crit_edge ], [ %13, %if.then20.of_err_crit_edge ], [ %6, %if.end.of_err_crit_edge ], [ %9, %if.end12.of_err_crit_edge ], [ %21, %if.end30.of_err_crit_edge ]
  %prop.0 = phi ptr [ @.str.3, %if.end8.of_err_crit_edge ], [ @.str.5, %if.then20.of_err_crit_edge ], [ @.str.1, %if.end.of_err_crit_edge ], [ @.str.4, %if.end12.of_err_crit_edge ], [ @.str.6, %if.end30.of_err_crit_edge ]
  %call7 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %ret.0, ptr noundef nonnull @.str.2, ptr noundef nonnull %prop.0) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end.if.end8_crit_edge, %if.end.if.end8_crit_edge194
  %baud = getelementptr inbounds %struct.uartlite_data, ptr %call.i, i32 0, i32 2
  %call.i.i174 = call i32 @of_property_read_variable_u32_array(ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef %baud, i32 noundef 1, i32 noundef 0) #10
  %8 = call i32 @llvm.smin.i32(i32 %call.i.i174, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i174)
  %tobool10.not = icmp sgt i32 %call.i.i174, -1
  br i1 %tobool10.not, label %if.end12, label %if.end8.of_err_crit_edge

if.end8.of_err_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %of_err

if.end12:                                         ; preds = %if.end8
  %call.i.i175 = call i32 @of_property_read_variable_u32_array(ptr noundef %4, ptr noundef nonnull @.str.4, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #10
  %9 = call i32 @llvm.smin.i32(i32 %call.i.i175, i32 0) #10
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %9, label %if.end12.of_err_crit_edge [
    i32 0, label %if.end12.if.end18_crit_edge
    i32 -22, label %if.end12.if.end18_crit_edge195
  ]

if.end12.if.end18_crit_edge195:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.end12.of_err_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %of_err

if.end18:                                         ; preds = %if.end12.if.end18_crit_edge, %if.end12.if.end18_crit_edge195
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool19.not = icmp eq i32 %12, 0
  br i1 %tobool19.not, label %if.end18.if.end30_crit_edge, label %if.then20

if.end18.if.end30_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then20:                                        ; preds = %if.end18
  %call.i.i176 = call i32 @of_property_read_variable_u32_array(ptr noundef %4, ptr noundef nonnull @.str.5, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #10
  %13 = call i32 @llvm.smin.i32(i32 %call.i.i176, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i176)
  %tobool22.not = icmp sgt i32 %call.i.i176, -1
  br i1 %tobool22.not, label %if.end24, label %if.then20.of_err_crit_edge

if.then20.of_err_crit_edge:                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %of_err

if.end24:                                         ; preds = %if.then20
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool25.not = icmp eq i32 %15, 0
  br i1 %tobool25.not, label %if.end24.if.end27_crit_edge, label %if.then26

if.end24.if.end27_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %cflags = getelementptr inbounds %struct.uartlite_data, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %cflags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cflags, align 4
  %or = or i32 %17, 512
  store i32 %or, ptr %cflags, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end24.if.end27_crit_edge
  %cflags28 = getelementptr inbounds %struct.uartlite_data, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %cflags28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cflags28, align 4
  %or29 = or i32 %19, 256
  store i32 %or29, ptr %cflags28, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end27, %if.end18.if.end30_crit_edge
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8, ptr %val, align 4
  %call.i.i177 = call i32 @of_property_read_variable_u32_array(ptr noundef %4, ptr noundef nonnull @.str.6, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #10
  %21 = call i32 @llvm.smin.i32(i32 %call.i.i177, i32 0) #10
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %21, label %if.end30.of_err_crit_edge [
    i32 0, label %if.end30.if.end36_crit_edge
    i32 -22, label %if.end30.if.end36_crit_edge196
  ]

if.end30.if.end36_crit_edge196:                   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.end30.of_err_crit_edge:                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %of_err

if.end36:                                         ; preds = %if.end30.if.end36_crit_edge, %if.end30.if.end36_crit_edge196
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %24, label %sw.default [
    i32 5, label %if.end36.cleanup.cont_crit_edge
    i32 6, label %if.end36.cleanup.cont.sink.split_crit_edge
    i32 7, label %sw.bb42
    i32 8, label %sw.bb45
  ]

if.end36.cleanup.cont.sink.split_crit_edge:       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.cont.sink.split

if.end36.cleanup.cont_crit_edge:                  ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.cont

sw.bb42:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.cont.sink.split

sw.bb45:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.cont.sink.split

sw.default:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %call49 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef -22, ptr noundef nonnull @.str.7, i32 noundef %24) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %of_err
  %retval.0 = phi i32 [ %call49, %sw.default ], [ %call7, %of_err ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  br label %cleanup112

cleanup.cont.sink.split:                          ; preds = %sw.bb45, %sw.bb42, %if.end36.cleanup.cont.sink.split_crit_edge
  %.sink192 = phi i32 [ 48, %sw.bb45 ], [ 32, %sw.bb42 ], [ 16, %if.end36.cleanup.cont.sink.split_crit_edge ]
  %cflags40 = getelementptr inbounds %struct.uartlite_data, ptr %call.i, i32 0, i32 3
  %26 = ptrtoint ptr %cflags40 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cflags40, align 4
  %or47 = or i32 %27, %.sink192
  store i32 %or47, ptr %cflags40, align 4
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %cleanup.cont.sink.split, %if.end36.cleanup.cont_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  %call52 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %tobool53.not = icmp eq ptr %call52, null
  br i1 %tobool53.not, label %cleanup.cont.cleanup112_crit_edge, label %if.end55

cleanup.cont.cleanup112_crit_edge:                ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup112

if.end55:                                         ; preds = %cleanup.cont
  %call56 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.end55.cleanup112_crit_edge, label %if.end59

if.end55.cleanup112_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup112

if.end59:                                         ; preds = %if.end55
  %call61 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.8) #10
  %clk = getelementptr inbounds %struct.uartlite_data, ptr %call.i, i32 0, i32 1
  %28 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call61, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then64, label %if.end59.if.end73_crit_edge

if.end59.if.end73_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.then64:                                        ; preds = %if.end59
  %29 = ptrtoint ptr %call61 to i32
  %cmp67.not = icmp eq ptr %call61, inttoptr (i32 -2 to ptr)
  br i1 %cmp67.not, label %if.end71, label %if.then64.cleanup112_crit_edge

if.then64.cleanup112_crit_edge:                   ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup112

if.end71:                                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %clk, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.end71, %if.end59.if.end73_crit_edge
  %31 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk, align 4
  %call.i178 = call i32 @clk_prepare(ptr noundef %32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i178)
  %tobool.not.i = icmp eq i32 %call.i178, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end73.do.end_crit_edge

if.end73.do.end_crit_edge:                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i:                                         ; preds = %if.end73
  %call1.i = call i32 @clk_enable(ptr noundef %32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end79, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @clk_unprepare(ptr noundef %32) #10
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.end73.do.end_crit_edge
  %retval.0.i179.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i178, %if.end73.do.end_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #13
  br label %cleanup112

if.end79:                                         ; preds = %if.end.i
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #10
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 3000) #10
  %call.i180 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #10
  call void @pm_runtime_enable(ptr noundef %dev) #10
  %33 = load ptr, ptr getelementptr inbounds (%struct.uart_driver, ptr @ulite_uart_driver, i32 0, i32 7), align 4
  %tobool85.not = icmp eq ptr %33, null
  br i1 %tobool85.not, label %do.body87, label %if.end79.if.end106_crit_edge

if.end79.if.end106_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

do.body87:                                        ; preds = %if.end79
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ulite_probe.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ulite_probe, %if.then92)) #10
          to label %do.end96 [label %if.then92], !srcloc !139

if.then92:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ulite_probe.__UNIQUE_ID_ddebug233, ptr noundef %dev, ptr noundef nonnull @.str.14) #10
  br label %do.end96

do.end96:                                         ; preds = %if.then92, %do.body87
  %call97 = call i32 @uart_register_driver(ptr noundef nonnull @ulite_uart_driver) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %do.end102, label %do.end96.if.end106_crit_edge

do.end96.if.end106_crit_edge:                     ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

do.end102:                                        ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #13
  %34 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %35) #10
  call void @clk_unprepare(ptr noundef %35) #10
  br label %cleanup112

if.end106:                                        ; preds = %do.end96.if.end106_crit_edge, %if.end79.if.end106_crit_edge
  %36 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %id, align 4
  %38 = ptrtoint ptr %call52 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %call52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i181 = icmp slt i32 %37, 0
  br i1 %cmp.i181, label %for.body.i, label %lor.lhs.false.i

for.body.i:                                       ; preds = %if.end106
  %40 = load i32, ptr getelementptr inbounds ([1 x %struct.uart_port], ptr @ulite_ports, i32 0, i32 0, i32 43), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp2.i = icmp eq i32 %40, 0
  br i1 %cmp2.i, label %for.body.i.if.end8.i_crit_edge, label %for.body.i.do.end.i_crit_edge

for.body.i.do.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

for.body.i.if.end8.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

lor.lhs.false.i:                                  ; preds = %if.end106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp6.not.i = icmp eq i32 %37, 0
  br i1 %cmp6.not.i, label %lor.lhs.false.i.if.end8.i_crit_edge, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

lor.lhs.false.i.if.end8.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %for.body.i.do.end.i_crit_edge
  %id.addr.173.i = phi i32 [ %37, %lor.lhs.false.i.do.end.i_crit_edge ], [ 1, %for.body.i.do.end.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.20, i32 noundef %id.addr.173.i) #13
  br label %ulite_assign.exit

if.end8.i:                                        ; preds = %lor.lhs.false.i.if.end8.i_crit_edge, %for.body.i.if.end8.i_crit_edge
  %41 = load i32, ptr getelementptr inbounds ([1 x %struct.uart_port], ptr @ulite_ports, i32 0, i32 0, i32 43), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i182 = icmp eq i32 %41, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %39)
  %cmp13.not.i = icmp eq i32 %41, %39
  %or.cond.i = or i1 %tobool.not.i182, %cmp13.not.i
  br i1 %or.cond.i, label %if.end18.i, label %do.end17.i

do.end17.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20, i32 noundef 0) #13
  br label %ulite_assign.exit

if.end18.i:                                       ; preds = %if.end8.i
  call void @__raw_spin_lock_init(ptr noundef nonnull @ulite_ports, ptr noundef nonnull @.str.24, ptr noundef nonnull @ulite_assign.__key, i16 noundef signext 3) #10
  store i32 16, ptr getelementptr inbounds ([1 x %struct.uart_port], ptr @ulite_ports, i32 0, i32 0, i32 23), align 4
  store i8 2, ptr getelementptr inbounds ([1 x %struct.uart_port], ptr @ulite_ports, i32 0, i32 0, i32 25), align 1
  store i8 2, ptr getelementptr inbounds ([1 x %struct.uart_port], ptr @ulite_ports, i32 0, i32 0, i32 26), align 2
  store i32 1, ptr getelementptr inbounds ([1 x %struct.uart_port], ptr @ulite_ports, i32 0, i32 0, i32 1), align 4
  store i32 %39, ptr getelementptr inbounds ([1 x %struct.uart_port], ptr @ulite_ports, i32 0, i32 0, i32 43), align 4
  store ptr null, ptr getelementptr inbounds ([1 x %struct.uart_port], ptr @ulite_ports, i32 0, i32 0, i32 2), align 4
  store ptr @ulite_ops, ptr getelementptr inbounds ([1 x %struct.uart_port], ptr @ulite_ports, i32 0, i32 0, i32 39), align 4
  store i32 %call56, ptr getelementptr inbounds ([1 x %struct.uart_port], ptr @ulite_ports, i32 0, i32 0, i32 20), align 4
  store i32 268435456, ptr getelementptr inbounds ([1 x %struct.uart_port], ptr @ulite_ports, i32 0, i32 0, i32 33), align 4
  store ptr %dev, ptr getelementptr inbounds ([1 x %struct.uart_port], ptr @ulite_ports, i32 0, i32 0, i32 45), align 4
  store i32 0, ptr getelementptr inbounds ([1 x %struct.uart_port], ptr @ulite_ports, i32 0, i32 0, i32 38), align 4
  store i32 0, ptr getelementptr inbounds ([1 x %struct.uart_port], ptr @ulite_ports, i32 0, i32 0, i32 41), align 4
  store ptr %call.i, ptr getelementptr inbounds ([1 x %struct.uart_port], ptr @ulite_ports, i32 0, i32 0, i32 59), align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %42 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @ulite_ports, ptr %driver_data.i.i, align 4
  %call26.i = call i32 @uart_add_one_port(ptr noundef nonnull @ulite_uart_driver, ptr noundef nonnull @ulite_ports) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end18.i.ulite_assign.exit_crit_edge, label %do.end31.i

if.end18.i.ulite_assign.exit_crit_edge:           ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ulite_assign.exit

do.end31.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %call26.i) #13
  store i32 0, ptr getelementptr inbounds ([1 x %struct.uart_port], ptr @ulite_ports, i32 0, i32 0, i32 43), align 4
  %43 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %ulite_assign.exit

ulite_assign.exit:                                ; preds = %do.end31.i, %if.end18.i.ulite_assign.exit_crit_edge, %do.end17.i, %do.end.i
  %retval.0.i183 = phi i32 [ -22, %do.end.i ], [ -16, %do.end17.i ], [ %call26.i, %do.end31.i ], [ 0, %if.end18.i.ulite_assign.exit_crit_edge ]
  %call.i184 = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 22
  %44 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store volatile i64 %call.i184, ptr %last_busy.i, align 8
  %call.i185 = call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #10
  br label %cleanup112

cleanup112:                                       ; preds = %ulite_assign.exit, %do.end102, %do.end, %if.then64.cleanup112_crit_edge, %if.end55.cleanup112_crit_edge, %cleanup.cont.cleanup112_crit_edge, %cleanup, %entry.cleanup112_crit_edge
  %retval.1 = phi i32 [ %retval.0.i179.ph, %do.end ], [ %retval.0.i183, %ulite_assign.exit ], [ %call97, %do.end102 ], [ %retval.0, %cleanup ], [ -12, %entry.cleanup112_crit_edge ], [ -19, %cleanup.cont.cleanup112_crit_edge ], [ %call56, %if.end55.cleanup112_crit_edge ], [ %29, %if.then64.cleanup112_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #10
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ulite_remove(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 59
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %clk = getelementptr inbounds %struct.uartlite_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #10
  tail call void @clk_unprepare(ptr noundef %5) #10
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.ulite_release.exit_crit_edge, label %if.then.i

entry.ulite_release.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ulite_release.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call i32 @uart_remove_one_port(ptr noundef nonnull @ulite_uart_driver, ptr noundef nonnull %7) #10
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %driver_data.i, align 4
  %mapbase.i = getelementptr inbounds %struct.uart_port, ptr %7, i32 0, i32 43
  %9 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %mapbase.i, align 4
  br label %ulite_release.exit

ulite_release.exit:                               ; preds = %if.then.i, %entry.ulite_release.exit_crit_edge
  %rc.0.i = phi i32 [ %call1.i, %if.then.i ], [ 0, %entry.ulite_release.exit_crit_edge ]
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #10
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #10
  ret i32 %rc.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ulite_tx_empty(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #10
  %private_data.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %6 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 8
  %call.i = tail call i32 %5(ptr noundef %add.ptr.i) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call2) #10
  %and = lshr i32 %call.i, 2
  %and.lobit = and i32 %and, 1
  ret i32 %and.lobit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ulite_set_mctrl(ptr nocapture noundef %port, i32 noundef %mctrl) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ulite_get_mctrl(ptr nocapture noundef readnone %port) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 352
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ulite_stop_tx(ptr nocapture noundef %port) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ulite_start_tx(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %6 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 8
  %call.i = tail call i32 %5(ptr noundef %add.ptr.i) #10
  %call1 = tail call fastcc i32 @ulite_transmit(ptr noundef %port, i32 noundef %call.i)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @ulite_stop_rx(ptr nocapture noundef writeonly %port) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ignore_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 29
  %0 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 225, ptr %ignore_status_mask, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ulite_break_ctl(ptr nocapture noundef %port, i32 noundef %ctl) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ulite_startup(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %clk = getelementptr inbounds %struct.uartlite_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_enable(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.28) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %7, ptr noundef nonnull @ulite_isr, ptr noundef null, i32 noundef 129, ptr noundef nonnull @.str, ptr noundef %port) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %out.i = getelementptr inbounds %struct.uartlite_reg_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %out.i, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %14 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 12
  tail call void %13(i32 noundef 3, ptr noundef %add.ptr.i) #10
  %16 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %private_data, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %out.i15 = getelementptr inbounds %struct.uartlite_reg_ops, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %out.i15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %out.i15, align 4
  %22 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %23, i32 12
  tail call void %21(i32 noundef 16, ptr noundef %add.ptr.i17) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.end4 ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ulite_shutdown(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %out.i = getelementptr inbounds %struct.uartlite_reg_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %out.i, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %6 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 12
  tail call void %5(i32 noundef 0, ptr noundef %add.ptr.i) #10
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %15, i32 12
  %call.i = tail call i32 %13(ptr noundef %add.ptr.i8) #10
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %17, ptr noundef %port) #10
  %clk = getelementptr inbounds %struct.uartlite_data, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %19) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ulite_set_termios(ptr noundef %port, ptr noundef %termios, ptr nocapture noundef readnone %old) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %2 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c_cflag, align 4
  %and = and i32 %3, -883
  store i32 %and, ptr %c_cflag, align 4
  %cflags = getelementptr inbounds %struct.uartlite_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %cflags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cflags, align 4
  %and1 = and i32 %5, 816
  %or = or i32 %and1, %and
  store i32 %or, ptr %c_cflag, align 4
  %baud = getelementptr inbounds %struct.uartlite_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %baud, align 4
  tail call void @tty_termios_encode_baud_rate(ptr noundef %termios, i32 noundef %7, i32 noundef %7) #10
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #10
  %read_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 28
  %8 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 41, ptr %read_status_mask, align 4
  %9 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %termios, align 4
  %and8 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  %spec.store.select = select i1 %tobool.not, i32 41, i32 233
  %11 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.store.select, ptr %read_status_mask, align 4
  %ignore_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 29
  %12 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %ignore_status_mask, align 4
  %13 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %termios, align 4
  %and12 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %spec.store.select46 = select i1 %tobool13.not, i32 0, i32 224
  %15 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.store.select46, ptr %ignore_status_mask, align 4
  %16 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %c_cflag, align 4
  %and19 = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %cmp20 = icmp eq i32 %and19, 0
  %spec.store.select47 = select i1 %cmp20, i32 225, i32 %spec.store.select46
  %18 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.store.select47, ptr %ignore_status_mask, align 4
  %19 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %c_cflag, align 4
  %21 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %baud, align 4
  tail call void @uart_update_timeout(ptr noundef %port, i32 noundef %20, i32 noundef %22) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call5) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ulite_pm(ptr nocapture noundef readonly %port, i32 noundef %state, i32 noundef %oldstate) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.30) #13
  br label %if.end6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i10 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 22
  %4 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store volatile i64 %call.i10, ptr %last_busy.i, align 8
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %call.i11 = tail call i32 @__pm_runtime_suspend(ptr noundef %6, i32 noundef 13) #10
  br label %if.end6

if.end6:                                          ; preds = %if.else, %do.end, %if.then.if.end6_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ulite_type(ptr nocapture noundef readonly %port) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 74, i32 %1)
  %cmp = icmp eq i32 %1, 74
  %cond = select i1 %cmp, ptr @.str, ptr null
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ulite_release_port(ptr nocapture noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %0 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mapbase, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %1, i32 noundef 16) #10
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 4
  tail call void @iounmap(ptr noundef %3) #10
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %membase, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ulite_request_port(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ulite_request_port.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ulite_request_port, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !139

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %2 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mapbase, align 4
  %conv = zext i32 %3 to i64
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ulite_request_port.__UNIQUE_ID_ddebug228, ptr noundef nonnull @.str.33, ptr noundef %port, i64 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mapbase3 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %4 = ptrtoint ptr %mapbase3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mapbase3, align 4
  %call4 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %5, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef 0) #10
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end9, label %if.end10

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.34) #13
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %8 = ptrtoint ptr %mapbase3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mapbase3, align 4
  %call12 = tail call ptr @ioremap(i32 noundef %9, i32 noundef 16) #10
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %10 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call12, ptr %membase, align 4
  %tobool14.not = icmp eq ptr %call12, null
  br i1 %tobool14.not, label %do.end18, label %if.end21

do.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %dev19 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %11 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.36) #13
  %13 = ptrtoint ptr %mapbase3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mapbase3, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %14, i32 noundef 16) #10
  br label %cleanup

if.end21:                                         ; preds = %if.end10
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @uartlite_be, ptr %1, align 4
  %16 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %private_data, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %22 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 12
  %call.i = tail call i32 %21(ptr noundef %add.ptr.i) #10
  %24 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %private_data, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %out.i = getelementptr inbounds %struct.uartlite_reg_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %out.i, align 4
  %30 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase, align 4
  %add.ptr.i44 = getelementptr i8, ptr %31, i32 12
  tail call void %29(i32 noundef 1, ptr noundef %add.ptr.i44) #10
  %32 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %private_data, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %38 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %membase, align 4
  %add.ptr.i47 = getelementptr i8, ptr %39, i32 8
  %call.i48 = tail call i32 %37(ptr noundef %add.ptr.i47) #10
  %and = and i32 %call.i48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not.not = icmp eq i32 %and, 0
  br i1 %cmp.not.not, label %if.then25, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @uartlite_le, ptr %1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end21.cleanup_crit_edge, %do.end18, %do.end9
  %retval.0 = phi i32 [ -16, %do.end18 ], [ -16, %do.end9 ], [ 0, %if.then25 ], [ 0, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ulite_config_port(ptr noundef %port, i32 noundef %flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ulite_request_port(ptr noundef %port)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 74, ptr %type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ulite_verify_port(ptr nocapture noundef readnone %port, ptr nocapture noundef readnone %ser) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ulite_put_poll_char(ptr nocapture noundef readonly %port, i8 noundef zeroext %ch) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %7, i32 8
  %call.i10 = tail call i32 %5(ptr noundef %add.ptr.i9) #10
  %and11 = and i32 %call.i10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool.not12 = icmp eq i32 %and11, 0
  br i1 %tobool.not12, label %entry.while.end_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !144
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !145
  %8 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 8
  %call.i = tail call i32 %13(ptr noundef %add.ptr.i) #10
  %and = and i32 %call.i, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  %conv = zext i8 %ch to i32
  %16 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %private_data.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %out.i = getelementptr inbounds %struct.uartlite_reg_ops, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %out.i, align 4
  %22 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %23, i32 4
  tail call void %21(i32 noundef %conv, ptr noundef %add.ptr.i8) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ulite_get_poll_char(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %6 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 8
  %call.i = tail call i32 %5(ptr noundef %add.ptr.i) #10
  %and = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i, align 4
  %call.i5 = tail call i32 %13(ptr noundef %15) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call.i5, %if.end ], [ 16711680, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ulite_transmit(ptr noundef %port, i32 noundef %stat) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %xmit1 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2
  %and = and i32 %stat, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %x_char = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 24
  %2 = ptrtoint ptr %x_char to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %x_char, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %3 to i32
  %private_data.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %out.i = getelementptr inbounds %struct.uartlite_reg_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %out.i, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %10 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 4
  tail call void %9(i32 noundef %conv, ptr noundef %add.ptr.i) #10
  %12 = ptrtoint ptr %x_char to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %x_char, align 4
  %tx = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 5
  %13 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %tx, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %head = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp = icmp eq i32 %16, %18
  br i1 %cmp, label %if.end6.cleanup_crit_edge, label %lor.lhs.false

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end6
  %tty2.i = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %tty2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tty2.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %lor.lhs.false.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i

lor.lhs.false.uart_tx_stopped.exit_crit_edge:     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_tx_stopped.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false
  %stopped.i = getelementptr inbounds %struct.tty_struct, ptr %20, i32 0, i32 19, i32 1
  %21 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %stopped.i, align 4, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool3.not.i = icmp eq i8 %22, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i.uart_tx_stopped.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_tx_stopped.exit

uart_tx_stopped.exit:                             ; preds = %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, %lor.lhs.false.uart_tx_stopped.exit_crit_edge
  %hw_stopped.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 35
  %23 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hw_stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool4.not.i.not = icmp eq i32 %24, 0
  br i1 %tobool4.not.i.not, label %if.end10, label %uart_tx_stopped.exit.cleanup_crit_edge

uart_tx_stopped.exit.cleanup_crit_edge:           ; preds = %uart_tx_stopped.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %uart_tx_stopped.exit
  %25 = ptrtoint ptr %xmit1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %xmit1, align 4
  %arrayidx = getelementptr i8, ptr %26, i32 %18
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx, align 1
  %conv12 = zext i8 %28 to i32
  %private_data.i42 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %29 = ptrtoint ptr %private_data.i42 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %private_data.i42, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %out.i43 = getelementptr inbounds %struct.uartlite_reg_ops, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %out.i43 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %out.i43, align 4
  %membase.i44 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %35 = ptrtoint ptr %membase.i44 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase.i44, align 4
  %add.ptr.i45 = getelementptr i8, ptr %36, i32 4
  tail call void %34(i32 noundef %conv12, ptr noundef %add.ptr.i45) #10
  %37 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tail, align 4
  %add = add i32 %38, 1
  %and14 = and i32 %add, 4095
  store i32 %and14, ptr %tail, align 4
  %tx17 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 5
  %39 = ptrtoint ptr %tx17 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx17, align 4
  %inc18 = add i32 %40, 1
  store i32 %inc18, ptr %tx17, align 4
  %41 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %head, align 4
  %43 = load i32, ptr %tail, align 4
  %sub = sub i32 %42, %43
  %and21 = and i32 %sub, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %cmp22 = icmp eq i32 %and21, 0
  br i1 %cmp22, label %if.then24, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then24:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @uart_write_wakeup(ptr noundef %port) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end10.cleanup_crit_edge, %uart_tx_stopped.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then3 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %uart_tx_stopped.exit.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ 1, %if.then24 ], [ 1, %if.end10.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ulite_isr(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 59
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 2
  %state.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 30
  %rx.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 4
  %parity.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 8
  %overrun.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 7
  %frame.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 6
  %ignore_status_mask.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 29
  %read_status_mask.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 28
  br label %do.body

do.body:                                          ; preds = %ulite_receive.exit.do.body_crit_edge, %entry
  %n.0 = phi i32 [ 0, %entry ], [ %inc, %ulite_receive.exit.do.body_crit_edge ]
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_id) #10
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 8
  %call.i = tail call i32 %5(ptr noundef %add.ptr.i) #10
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state.i, align 4
  %and.i = and i32 %call.i, 97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %do.body.ulite_receive.exit_crit_edge, label %if.end.i

do.body.ulite_receive.exit_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %ulite_receive.exit

if.end.i:                                         ; preds = %do.body
  %and2.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then3.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then3.i:                                       ; preds = %if.end.i
  %10 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx.i, align 4
  %inc.i = add i32 %11, 1
  store i32 %inc.i, ptr %rx.i, align 4
  %12 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %18 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i, align 4
  %call.i.i = tail call i32 %17(ptr noundef %19) #10
  %conv.i = trunc i32 %call.i.i to i8
  %and4.i = and i32 %call.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.then3.i.if.end10.i_crit_edge, label %if.then6.i

if.then3.i.if.end10.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then6.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %parity.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %parity.i, align 4
  %inc8.i = add i32 %21, 1
  store i32 %inc8.i, ptr %parity.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then6.i, %if.then3.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  %ch.0.i = phi i8 [ %conv.i, %if.then6.i ], [ %conv.i, %if.then3.i.if.end10.i_crit_edge ], [ 0, %if.end.i.if.end10.i_crit_edge ]
  %and11.i = and i32 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.end16.i_crit_edge, label %if.then13.i

if.end10.i.if.end16.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %overrun.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %overrun.i, align 4
  %inc15.i = add i32 %23, 1
  store i32 %inc15.i, ptr %overrun.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then13.i, %if.end10.i.if.end16.i_crit_edge
  %and17.i = and i32 %call.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end16.i.if.end22.i_crit_edge, label %if.then19.i

if.end16.i.if.end22.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %frame.i, align 4
  %inc21.i = add i32 %25, 1
  store i32 %inc21.i, ptr %frame.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then19.i, %if.end16.i.if.end22.i_crit_edge
  %26 = ptrtoint ptr %ignore_status_mask.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ignore_status_mask.i, align 4
  %and23.i = and i32 %call.i, 128
  %and24.i = and i32 %and23.i, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  %and27.i = and i32 %call.i, -2
  %spec.select.i = select i1 %tobool25.not.i, i32 %call.i, i32 %and27.i
  %28 = ptrtoint ptr %read_status_mask.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %read_status_mask.i, align 4
  %and29.i = and i32 %spec.select.i, %29
  %and30.i = and i32 %and29.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  %flag.0.i = select i1 %tobool31.not.i, i8 0, i8 3
  %neg.i = xor i32 %27, -1
  %and35.i = and i32 %and29.i, %neg.i
  %and36.i = and i32 %and35.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.end22.i.if.end40.i_crit_edge, label %if.then38.i

if.end22.i.if.end40.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.i

if.then38.i:                                      ; preds = %if.end22.i
  %tail.i.i = getelementptr inbounds %struct.tty_bufhead, ptr %9, i32 0, i32 8
  %30 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tail.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.tty_buffer, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %34 = or i1 %tobool31.not.i, %tobool.not.i.i
  br i1 %34, label %land.lhs.true.i.i, label %if.then38.i.if.end12.i.i_crit_edge

if.then38.i.if.end12.i.i_crit_edge:               ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i.i

land.lhs.true.i.i:                                ; preds = %if.then38.i
  %used.i.i = getelementptr inbounds %struct.tty_buffer, ptr %31, i32 0, i32 1
  %35 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %used.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.tty_buffer, ptr %31, i32 0, i32 2
  %37 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp3.i.i = icmp slt i32 %36, %38
  br i1 %cmp3.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.end12.i.i_crit_edge

land.lhs.true.i.i.if.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  br i1 %tobool.not.i.i, label %if.then8.i.i, label %if.then.i.i.if.end.i.i_crit_edge

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then8.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %31, i32 0, i32 6
  %add.ptr.i.i.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %36
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %38
  %39 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %flag.0.i, ptr %add.ptr.i.i.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then8.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %40 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %used.i.i, align 4
  %inc.i.i = add i32 %41, 1
  store i32 %inc.i.i, ptr %used.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %31, i32 0, i32 6
  %add.ptr.i1.i.i = getelementptr i8, ptr %data.i.i.i, i32 %41
  %42 = ptrtoint ptr %add.ptr.i1.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %ch.0.i, ptr %add.ptr.i1.i.i, align 1
  br label %if.end40.i

if.end12.i.i:                                     ; preds = %land.lhs.true.i.i.if.end12.i.i_crit_edge, %if.then38.i.if.end12.i.i_crit_edge
  %call13.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %9, i8 noundef zeroext %ch.0.i, i8 noundef zeroext %flag.0.i) #10
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.end12.i.i, %if.end.i.i, %if.end22.i.if.end40.i_crit_edge
  %and41.i = and i32 %and35.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %if.end40.i.if.end45.i_crit_edge, label %if.then43.i

if.end40.i.if.end45.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45.i

if.then43.i:                                      ; preds = %if.end40.i
  %tail.i75.i = getelementptr inbounds %struct.tty_bufhead, ptr %9, i32 0, i32 8
  %43 = ptrtoint ptr %tail.i75.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tail.i75.i, align 4
  %flags.i76.i = getelementptr inbounds %struct.tty_buffer, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %flags.i76.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags.i76.i, align 4
  %and.i77.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i77.i)
  %tobool.not.i78.i = icmp eq i32 %and.i77.i, 0
  br i1 %tobool.not.i78.i, label %land.lhs.true.i82.i, label %if.then43.i.if.end12.i93.i_crit_edge

if.then43.i.if.end12.i93.i_crit_edge:             ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i93.i

land.lhs.true.i82.i:                              ; preds = %if.then43.i
  %used.i79.i = getelementptr inbounds %struct.tty_buffer, ptr %44, i32 0, i32 1
  %47 = ptrtoint ptr %used.i79.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %used.i79.i, align 4
  %size.i80.i = getelementptr inbounds %struct.tty_buffer, ptr %44, i32 0, i32 2
  %49 = ptrtoint ptr %size.i80.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %size.i80.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp3.i81.i = icmp slt i32 %48, %50
  br i1 %cmp3.i81.i, label %if.end.i91.i, label %land.lhs.true.i82.i.if.end12.i93.i_crit_edge

land.lhs.true.i82.i.if.end12.i93.i_crit_edge:     ; preds = %land.lhs.true.i82.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i93.i

if.end.i91.i:                                     ; preds = %land.lhs.true.i82.i
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i.i84.i = getelementptr inbounds %struct.tty_buffer, ptr %44, i32 0, i32 6
  %add.ptr.i.i.i85.i = getelementptr i8, ptr %data.i.i.i84.i, i32 %48
  %add.ptr.i.i86.i = getelementptr i8, ptr %add.ptr.i.i.i85.i, i32 %50
  %51 = ptrtoint ptr %add.ptr.i.i86.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 2, ptr %add.ptr.i.i86.i, align 1
  %52 = ptrtoint ptr %used.i79.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %used.i79.i, align 4
  %inc.i88.i = add i32 %53, 1
  store i32 %inc.i88.i, ptr %used.i79.i, align 4
  %add.ptr.i1.i90.i = getelementptr i8, ptr %data.i.i.i84.i, i32 %53
  %54 = ptrtoint ptr %add.ptr.i1.i90.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %add.ptr.i1.i90.i, align 1
  br label %if.end45.i

if.end12.i93.i:                                   ; preds = %land.lhs.true.i82.i.if.end12.i93.i_crit_edge, %if.then43.i.if.end12.i93.i_crit_edge
  %call13.i92.i = tail call i32 @__tty_insert_flip_char(ptr noundef %9, i8 noundef zeroext 0, i8 noundef zeroext 2) #10
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.end12.i93.i, %if.end.i91.i, %if.end40.i.if.end45.i_crit_edge
  %and46.i = and i32 %and35.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %if.end45.i.ulite_receive.exit_crit_edge, label %if.then48.i

if.end45.i.ulite_receive.exit_crit_edge:          ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ulite_receive.exit

if.then48.i:                                      ; preds = %if.end45.i
  %tail.i95.i = getelementptr inbounds %struct.tty_bufhead, ptr %9, i32 0, i32 8
  %55 = ptrtoint ptr %tail.i95.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tail.i95.i, align 4
  %flags.i96.i = getelementptr inbounds %struct.tty_buffer, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %flags.i96.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags.i96.i, align 4
  %and.i97.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i97.i)
  %tobool.not.i98.i = icmp eq i32 %and.i97.i, 0
  br i1 %tobool.not.i98.i, label %land.lhs.true.i102.i, label %if.then48.i.if.end12.i113.i_crit_edge

if.then48.i.if.end12.i113.i_crit_edge:            ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i113.i

land.lhs.true.i102.i:                             ; preds = %if.then48.i
  %used.i99.i = getelementptr inbounds %struct.tty_buffer, ptr %56, i32 0, i32 1
  %59 = ptrtoint ptr %used.i99.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %used.i99.i, align 4
  %size.i100.i = getelementptr inbounds %struct.tty_buffer, ptr %56, i32 0, i32 2
  %61 = ptrtoint ptr %size.i100.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %size.i100.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp3.i101.i = icmp slt i32 %60, %62
  br i1 %cmp3.i101.i, label %if.end.i111.i, label %land.lhs.true.i102.i.if.end12.i113.i_crit_edge

land.lhs.true.i102.i.if.end12.i113.i_crit_edge:   ; preds = %land.lhs.true.i102.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i113.i

if.end.i111.i:                                    ; preds = %land.lhs.true.i102.i
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i.i104.i = getelementptr inbounds %struct.tty_buffer, ptr %56, i32 0, i32 6
  %add.ptr.i.i.i105.i = getelementptr i8, ptr %data.i.i.i104.i, i32 %60
  %add.ptr.i.i106.i = getelementptr i8, ptr %add.ptr.i.i.i105.i, i32 %62
  %63 = ptrtoint ptr %add.ptr.i.i106.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 4, ptr %add.ptr.i.i106.i, align 1
  %64 = ptrtoint ptr %used.i99.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %used.i99.i, align 4
  %inc.i108.i = add i32 %65, 1
  store i32 %inc.i108.i, ptr %used.i99.i, align 4
  %add.ptr.i1.i110.i = getelementptr i8, ptr %data.i.i.i104.i, i32 %65
  %66 = ptrtoint ptr %add.ptr.i1.i110.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %add.ptr.i1.i110.i, align 1
  br label %ulite_receive.exit

if.end12.i113.i:                                  ; preds = %land.lhs.true.i102.i.if.end12.i113.i_crit_edge, %if.then48.i.if.end12.i113.i_crit_edge
  %call13.i112.i = tail call i32 @__tty_insert_flip_char(ptr noundef %9, i8 noundef zeroext 0, i8 noundef zeroext 4) #10
  br label %ulite_receive.exit

ulite_receive.exit:                               ; preds = %if.end12.i113.i, %if.end.i111.i, %if.end45.i.ulite_receive.exit_crit_edge, %do.body.ulite_receive.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.body.ulite_receive.exit_crit_edge ], [ 1, %if.end45.i.ulite_receive.exit_crit_edge ], [ 1, %if.end.i111.i ], [ 1, %if.end12.i113.i ]
  %call8 = tail call fastcc i32 @ulite_transmit(ptr noundef %dev_id, i32 noundef %call.i)
  %or = or i32 %call8, %retval.0.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_id, i32 noundef %call3) #10
  %inc = add i32 %n.0, 1
  %tobool.not = icmp eq i32 %or, 0
  br i1 %tobool.not, label %do.end11, label %ulite_receive.exit.do.body_crit_edge

ulite_receive.exit.do.body_crit_edge:             ; preds = %ulite_receive.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end11:                                         ; preds = %ulite_receive.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc)
  %cmp12 = icmp sgt i32 %inc, 1
  br i1 %cmp12, label %if.then, label %do.end11.cleanup_crit_edge

do.end11.cleanup_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %state.i, align 4
  tail call void @tty_flip_buffer_push(ptr noundef %68) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then, %do.end11.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %do.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uartlite_inbe32(ptr noundef %addr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #10, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !147
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uartlite_outbe32(i32 noundef %val, ptr noundef %addr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !148
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %val) #10, !srcloc !143
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uartlite_inle32(ptr noundef %addr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #10, !srcloc !140
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uartlite_outle32(i32 noundef %val, ptr noundef %addr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !150
  tail call void @arm_heavy_mb() #10
  %0 = tail call i32 @llvm.bswap.i32(i32 %val) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #10, !srcloc !143
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ulite_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @uart_suspend_port(ptr noundef nonnull @ulite_uart_driver, ptr noundef nonnull %1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ulite_resume(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @uart_resume_port(ptr noundef nonnull @ulite_uart_driver, ptr noundef nonnull %1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ulite_runtime_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 59
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %clk = getelementptr inbounds %struct.uartlite_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ulite_runtime_resume(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 59
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %clk = getelementptr inbounds %struct.uartlite_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_suspend_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_resume_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ulite_console_write(ptr nocapture noundef readnone %co, ptr noundef %s, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @console_port, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %1 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body51, label %do.body1

do.body1:                                         ; preds = %entry
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !151
  %and.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not = icmp eq i32 %and.i, 0
  br i1 %tobool10.not, label %do.end13, label %do.end13.thread

do.end13:                                         ; preds = %do.body1
  tail call void @trace_hardirqs_off() #10
  %call16 = tail call i32 @_raw_spin_trylock(ptr noundef %0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then27, label %do.end13.if.end64_crit_edge

do.end13.if.end64_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

do.end13.thread:                                  ; preds = %do.body1
  %call1693 = tail call i32 @_raw_spin_trylock(ptr noundef %0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1693)
  %tobool17.not94 = icmp eq i32 %call1693, 0
  br i1 %tobool17.not94, label %do.end13.thread.do.body29_crit_edge, label %do.end13.thread.if.end64_crit_edge

do.end13.thread.if.end64_crit_edge:               ; preds = %do.end13.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

do.end13.thread.do.body29_crit_edge:              ; preds = %do.end13.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body29

if.then27:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_on() #10
  br label %do.body29

do.body29:                                        ; preds = %if.then27, %do.end13.thread.do.body29_crit_edge
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !152
  %and.i.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool37.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool37.not, label %if.then41, label %do.body29.do.end44_crit_edge, !prof !153

do.body29.do.end44_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end44

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %do.body29.do.end44_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #10, !srcloc !154
  br label %if.end64

do.body51:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call59 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #10
  br label %if.end64

if.end64:                                         ; preds = %do.body51, %do.end44, %do.end13.thread.if.end64_crit_edge, %do.end13.if.end64_crit_edge
  %tobool69.not = phi i1 [ false, %do.end13.thread.if.end64_crit_edge ], [ true, %do.end44 ], [ false, %do.end13.if.end64_crit_edge ], [ false, %do.body51 ]
  %flags.0 = phi i32 [ %2, %do.end13.thread.if.end64_crit_edge ], [ %2, %do.end44 ], [ %2, %do.end13.if.end64_crit_edge ], [ %call59, %do.body51 ]
  %private_data.i = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %10 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 8
  %call.i = tail call i32 %9(ptr noundef %add.ptr.i) #10
  %and = and i32 %call.i, 16
  %12 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %out.i = getelementptr inbounds %struct.uartlite_reg_ops, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %out.i, align 4
  %18 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i, align 4
  %add.ptr.i86 = getelementptr i8, ptr %19, i32 12
  tail call void %17(i32 noundef 0, ptr noundef %add.ptr.i86) #10
  tail call void @uart_console_write(ptr noundef %0, ptr noundef %s, i32 noundef %count, ptr noundef nonnull @ulite_console_putchar) #10
  %call.i87 = tail call i64 @ktime_get() #10
  %add.i.i = add i64 %call.i87, 1000000000
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %if.end64
  %20 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %private_data.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %26 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 8
  %call.i.i = tail call i32 %25(ptr noundef %add.ptr.i.i) #10
  %and.i88 = and i32 %call.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i88)
  %tobool.not.i = icmp eq i32 %and.i88, 0
  br i1 %tobool.not.i, label %for.cond.i.ulite_console_wait_tx.exit_crit_edge, label %land.lhs.true.i

for.cond.i.ulite_console_wait_tx.exit_crit_edge:  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ulite_console_wait_tx.exit

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call5.i = tail call i64 @ktime_get() #10
  %cmp3.i.i = icmp sgt i64 %call5.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %28 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %private_data.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %34 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase.i, align 4
  %add.ptr.i36.i = getelementptr i8, ptr %35, i32 8
  %call.i37.i = tail call i32 %33(ptr noundef %add.ptr.i36.i) #10
  %.pre.i = and i32 %call.i37.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre.i)
  %phi.cmp.i = icmp eq i32 %.pre.i, 0
  br i1 %phi.cmp.i, label %for.end.i.ulite_console_wait_tx.exit_crit_edge, label %do.end.i

for.end.i.ulite_console_wait_tx.exit_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ulite_console_wait_tx.exit

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %37, ptr noundef nonnull @.str.40) #13
  br label %ulite_console_wait_tx.exit

ulite_console_wait_tx.exit:                       ; preds = %do.end.i, %for.end.i.ulite_console_wait_tx.exit_crit_edge, %for.cond.i.ulite_console_wait_tx.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool66.not = icmp eq i32 %and, 0
  br i1 %tobool66.not, label %ulite_console_wait_tx.exit.if.end68_crit_edge, label %if.then67

ulite_console_wait_tx.exit.if.end68_crit_edge:    ; preds = %ulite_console_wait_tx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then67:                                        ; preds = %ulite_console_wait_tx.exit
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %private_data.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %out.i90 = getelementptr inbounds %struct.uartlite_reg_ops, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %out.i90 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %out.i90, align 4
  %44 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %membase.i, align 4
  %add.ptr.i92 = getelementptr i8, ptr %45, i32 12
  tail call void %43(i32 noundef 16, ptr noundef %add.ptr.i92) #10
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %ulite_console_wait_tx.exit.if.end68_crit_edge
  br i1 %tobool69.not, label %if.end68.if.end72_crit_edge, label %if.then70

if.end68.if.end72_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.then70:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %flags.0) #10
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.end68.if.end72_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ulite_console_setup(ptr noundef %co, ptr noundef %options) #3 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp4 = icmp eq i16 %5, 0
  %spec.select43 = select i1 %cmp4, ptr @ulite_ports, ptr null
  br i1 %cmp4, label %lor.lhs.false, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, ptr getelementptr inbounds ([1 x %struct.uart_port], ptr @ulite_ports, i32 0, i32 0, i32 43), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool8.not = icmp eq i32 %6, 0
  br i1 %tobool8.not, label %lor.lhs.false.do.body_crit_edge, label %if.end17

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ulite_console_setup.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ulite_console_setup, %if.then13)) #10
          to label %cleanup [label %if.then13], !srcloc !139

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %index, align 2
  %conv15 = sext i16 %8 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ulite_console_setup.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.44, i32 noundef %conv15) #10
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false
  store ptr %spec.select43, ptr @console_port, align 4
  %9 = load ptr, ptr getelementptr inbounds ([1 x %struct.uart_port], ptr @ulite_ports, i32 0, i32 0, i32 2), align 4
  %tobool18.not = icmp eq ptr %9, null
  br i1 %tobool18.not, label %if.then19, label %if.end17.if.end24_crit_edge

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then19:                                        ; preds = %if.end17
  %call20 = tail call i32 @ulite_request_port(ptr noundef %spec.select43)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then19.if.end24_crit_edge, label %if.then19.cleanup_crit_edge

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then19.if.end24_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.end24:                                         ; preds = %if.then19.if.end24_crit_edge, %if.end17.if.end24_crit_edge
  %tobool25.not = icmp eq ptr %options, null
  br i1 %tobool25.not, label %if.end24.if.end27_crit_edge, label %if.then26

if.end24.if.end27_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  call void @uart_parse_options(ptr noundef nonnull %options, ptr noundef nonnull %baud, ptr noundef nonnull %parity, ptr noundef nonnull %bits, ptr noundef nonnull %flow) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end24.if.end27_crit_edge
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
  %call28 = call i32 @uart_set_options(ptr noundef %spec.select43, ptr noundef %co, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then19.cleanup_crit_edge, %if.then13, %do.body
  %retval.0 = phi i32 [ %call28, %if.end27 ], [ -19, %if.then13 ], [ -19, %if.then19.cleanup_crit_edge ], [ -19, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flow) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parity) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %baud) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ulite_console_putchar(ptr nocapture noundef readonly %port, i32 noundef %ch) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get() #10
  %add.i.i = add i64 %call.i, 1000000000
  %private_data.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %entry
  %0 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 8
  %call.i.i = tail call i32 %5(ptr noundef %add.ptr.i.i) #10
  %and.i = and i32 %call.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.cond.i.ulite_console_wait_tx.exit_crit_edge, label %land.lhs.true.i

for.cond.i.ulite_console_wait_tx.exit_crit_edge:  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ulite_console_wait_tx.exit

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call5.i = tail call i64 @ktime_get() #10
  %cmp3.i.i = icmp sgt i64 %call5.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %8 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i36.i = getelementptr i8, ptr %15, i32 8
  %call.i37.i = tail call i32 %13(ptr noundef %add.ptr.i36.i) #10
  %.pre.i = and i32 %call.i37.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre.i)
  %phi.cmp.i = icmp eq i32 %.pre.i, 0
  br i1 %phi.cmp.i, label %for.end.i.ulite_console_wait_tx.exit_crit_edge, label %do.end.i

for.end.i.ulite_console_wait_tx.exit_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ulite_console_wait_tx.exit

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.40) #13
  br label %ulite_console_wait_tx.exit

ulite_console_wait_tx.exit:                       ; preds = %do.end.i, %for.end.i.ulite_console_wait_tx.exit_crit_edge, %for.cond.i.ulite_console_wait_tx.exit_crit_edge
  %18 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private_data.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %out.i = getelementptr inbounds %struct.uartlite_reg_ops, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %out.i, align 4
  %24 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 4
  tail call void %23(i32 noundef %ch, ptr noundef %add.ptr.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43, !44, !45, !46, !47, !49, !50, !52, !53, !54, !56, !57, !58, !59, !60, !62, !63, !64, !66, !67, !69, !70, !71, !73, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !101, !103, !105, !107, !108, !109, !110, !112, !114, !116, !118, !119, !120, !121, !122, !124, !125, !126, !128, !129}
!llvm.module.flags = !{!130, !131, !132, !133, !134, !135, !136, !137}
!llvm.ident = !{!138}

!0 = !{ptr @__UNIQUE_ID___earlycon_uartlite230, !1, !"__UNIQUE_ID___earlycon_uartlite230", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/uartlite.c", i32 597, i32 1}
!2 = !{ptr @__UNIQUE_ID___earlycon_uartlite_b231, !3, !"__UNIQUE_ID___earlycon_uartlite_b231", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/uartlite.c", i32 598, i32 1}
!4 = !{ptr @__UNIQUE_ID___earlycon_uartlite_a232, !5, !"__UNIQUE_ID___earlycon_uartlite_a232", i1 false, i1 false}
!5 = !{!"../drivers/tty/serial/uartlite.c", i32 599, i32 1}
!6 = !{ptr @__UNIQUE_ID_alias234, !7, !"__UNIQUE_ID_alias234", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/uartlite.c", i32 913, i32 1}
!8 = !{ptr @__initcall__kmod_uartlite__236_943_ulite_init6, !9, !"__initcall__kmod_uartlite__236_943_ulite_init6", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/uartlite.c", i32 943, i32 1}
!10 = !{ptr @__exitcall_ulite_exit, !11, !"__exitcall_ulite_exit", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/uartlite.c", i32 944, i32 1}
!12 = !{ptr @__UNIQUE_ID_author237, !13, !"__UNIQUE_ID_author237", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/uartlite.c", i32 946, i32 1}
!14 = !{ptr @__UNIQUE_ID_description238, !15, !"__UNIQUE_ID_description238", i1 false, i1 false}
!15 = !{!"../drivers/tty/serial/uartlite.c", i32 947, i32 1}
!16 = !{ptr @__UNIQUE_ID_file239, !17, !"__UNIQUE_ID_file239", i1 false, i1 false}
!17 = !{!"../drivers/tty/serial/uartlite.c", i32 948, i32 1}
!18 = !{ptr @__UNIQUE_ID_license240, !17, !"__UNIQUE_ID_license240", i1 false, i1 false}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/tty/serial/uartlite.c", i32 919, i32 12}
!21 = !{ptr @ulite_platform_driver, !22, !"ulite_platform_driver", i1 false, i1 false}
!22 = !{!"../drivers/tty/serial/uartlite.c", i32 915, i32 31}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/tty/serial/uartlite.c", i32 793, i32 10}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/tty/serial/uartlite.c", i32 798, i32 11}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/tty/serial/uartlite.c", i32 800, i32 10}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/tty/serial/uartlite.c", i32 805, i32 10}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/tty/serial/uartlite.c", i32 811, i32 11}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/tty/serial/uartlite.c", i32 822, i32 10}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/tty/serial/uartlite.c", i32 842, i32 11}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/tty/serial/uartlite.c", i32 857, i32 40}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/tty/serial/uartlite.c", i32 871, i32 3}
!41 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ulite_probe._entry, !40, !"_entry", i1 false, i1 false}
!46 = !{ptr @ulite_probe._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/tty/serial/uartlite.c", i32 881, i32 3}
!49 = !{ptr @ulite_probe.__UNIQUE_ID_ddebug233, !48, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/tty/serial/uartlite.c", i32 884, i32 4}
!52 = !{ptr @ulite_probe._entry.15, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ulite_probe._entry_ptr.17, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/tty/serial/uartlite.c", i32 642, i32 3}
!56 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ulite_assign._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @ulite_assign._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/tty/serial/uartlite.c", i32 647, i32 3}
!62 = !{ptr @ulite_assign._entry.21, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @ulite_assign._entry_ptr.23, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @ulite_assign.__key, !65, !"__key", i1 false, i1 false}
!65 = !{!"../drivers/tty/serial/uartlite.c", i32 654, i32 2}
!66 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/tty/serial/uartlite.c", i32 674, i32 3}
!69 = !{ptr @ulite_assign._entry.25, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @ulite_assign._entry_ptr.27, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @ulite_ports, !72, !"ulite_ports", i1 false, i1 false}
!72 = !{!"../drivers/tty/serial/uartlite.c", i32 130, i32 25}
!73 = !{ptr @ulite_ops, !74, !"ulite_ops", i1 false, i1 false}
!74 = !{!"../drivers/tty/serial/uartlite.c", i32 443, i32 30}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/tty/serial/uartlite.c", i32 291, i32 3}
!77 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @ulite_startup._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @ulite_startup._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/tty/serial/uartlite.c", i32 417, i32 4}
!82 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @ulite_pm._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @ulite_pm._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/tty/serial/uartlite.c", i32 371, i32 2}
!87 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @ulite_request_port.__UNIQUE_ID_ddebug228, !86, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!89 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/tty/serial/uartlite.c", i32 375, i32 3}
!91 = !{ptr @ulite_request_port._entry, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @ulite_request_port._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.36, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/tty/serial/uartlite.c", i32 381, i32 3}
!95 = !{ptr @ulite_request_port._entry.35, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @ulite_request_port._entry_ptr.37, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @uartlite_be, !98, !"uartlite_be", i1 false, i1 false}
!98 = !{!"../drivers/tty/serial/uartlite.c", i32 96, i32 38}
!99 = !{ptr @uartlite_le, !100, !"uartlite_le", i1 false, i1 false}
!100 = !{!"../drivers/tty/serial/uartlite.c", i32 111, i32 38}
!101 = !{ptr @ulite_of_match, !102, !"ulite_of_match", i1 false, i1 false}
!102 = !{!"../drivers/tty/serial/uartlite.c", i32 768, i32 34}
!103 = !{ptr @ulite_pm_ops, !104, !"ulite_pm_ops", i1 false, i1 false}
!104 = !{!"../drivers/tty/serial/uartlite.c", i32 760, i32 32}
!105 = !{ptr @.str.38, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/tty/serial/uartlite.c", i32 750, i32 3}
!107 = !{ptr @.str.39, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @ulite_runtime_resume._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @ulite_runtime_resume._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @ulite_uart_driver, !111, !"ulite_uart_driver", i1 false, i1 false}
!111 = !{!"../drivers/tty/serial/uartlite.c", i32 603, i32 27}
!112 = !{ptr @ulite_console, !113, !"ulite_console", i1 false, i1 false}
!113 = !{!"../drivers/tty/serial/uartlite.c", i32 551, i32 23}
!114 = !{ptr @console_port, !115, !"console_port", i1 false, i1 false}
!115 = !{!"../drivers/tty/serial/uartlite.c", i32 64, i32 26}
!116 = !{ptr @.str.40, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/tty/serial/uartlite.c", i32 481, i32 3}
!118 = !{ptr @.str.41, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.42, !117, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @ulite_console_wait_tx._entry, !117, !"_entry", i1 false, i1 false}
!121 = !{ptr @ulite_console_wait_tx._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.43, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/tty/serial/uartlite.c", i32 533, i32 3}
!124 = !{ptr @.str.44, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @ulite_console_setup.__UNIQUE_ID_ddebug229, !123, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!126 = !{ptr @.str.45, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/tty/serial/uartlite.c", i32 932, i32 2}
!128 = !{ptr @.str.46, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @ulite_init.__UNIQUE_ID_ddebug235, !127, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!130 = !{i32 1, !"wchar_size", i32 2}
!131 = !{i32 1, !"min_enum_size", i32 4}
!132 = !{i32 8, !"branch-target-enforcement", i32 0}
!133 = !{i32 8, !"sign-return-address", i32 0}
!134 = !{i32 8, !"sign-return-address-all", i32 0}
!135 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!136 = !{i32 7, !"uwtable", i32 1}
!137 = !{i32 7, !"frame-pointer", i32 2}
!138 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!139 = !{i64 2148310798, i64 2148310803, i64 2148310816, i64 2148310860, i64 2148310894, i64 2148310915}
!140 = !{i64 4955213}
!141 = !{i64 2154268634}
!142 = !{i64 2154268866}
!143 = !{i64 4954795}
!144 = !{i64 2154260057}
!145 = !{i64 2154259899}
!146 = !{i8 0, i8 2}
!147 = !{i64 2154248069}
!148 = !{i64 2154248297}
!149 = !{i64 2152495562}
!150 = !{i64 2152496917}
!151 = !{i64 891663, i64 891724}
!152 = !{i64 894395}
!153 = !{!"branch_weights", i32 1, i32 2000}
!154 = !{i64 894680}
